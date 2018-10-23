package code {
	
	import flash.display.MovieClip;
	import flash.geom.Point;
	import flash.ui.Keyboard;
	
	/**
	 * 
	 */
	public class Player extends MovieClip {
		
		/** */
		private var acceleration:Point = new Point(800, 6000);
		/** */
		private var gravity:Point = new Point(0,200);
		/** */
		private var maxSpeed:Number = 400;
		/** */
		private var velocity:Point = new Point(1,5);
		/** */
		private const DECELERATION:Number = 800;
		
		
		/**
		 * 
		 */
		public function Player() {
			// constructor code
		} // ends constructor
		/**
		 * 
		 */
		public function update():void {
			//trace("playerTick");
			
			handleMovement();
			
			doPhysics();
			
			detectGround();
			
		} // ends update()
		/**
		 * This function looks at the KeyboardInput in order to accelerate the Player left, right, or up.
		 */
		private function handleMovement():void {
			if(KeyboardInput.isKeydown(Keyboard.A)) velocity.x -= acceleration.x * Time.dtScaled;
			if(KeyboardInput.isKeydown(Keyboard.D)) velocity.x += acceleration.x * Time.dtScaled;
			if(KeyboardInput.onKeyDown(Keyboard.SPACE)) velocity.y -= acceleration.y * Time.dtScaled;
			
			if(!KeyboardInput.keyA && !KeyboardInput.keyD){
				// left and right are not being pressed...
				if(velocity.x < 0) {
					// moving left
					velocity.x += DECELERATION * Time.dtScaled; //add a deccelration amount to the right
					if (velocity.x > 0) velocity.x = 0; // clamp at 0
				}
				if(velocity.x > 0){
					// moving right
					velocity.x -= DECELERATION * Time.dtScaled; //add a deccelration amount to the left
					if (velocity.x < 0) velocity.x = 0; // clamp at 0
				}
			}
		} // ends handleMovement()
		/**
		 * 
		 */
		private function doPhysics():void {
			// velocity += gravity * Time.deltaTime;
			// apply gravity to velocity
			velocity.x += gravity.x * Time.dtScaled;
			velocity.y += gravity.y * Time.dtScaled;
			
			// clamp velocity to maxSpeed
			if(velocity.x > maxSpeed) velocity.x = maxSpeed; // clamp going right
			if(velocity.x < -maxSpeed) velocity.x = -maxSpeed; // clamp going left
			
			// apply velocity to position
			x += velocity.x * Time.dtScaled;
			y += velocity.y * Time.dtScaled;
		} // ends doPhysics()
		/**
		 * 
		 */
		private function detectGround():void {
			// look at y position
			var ground:Number = 350;
			if(y > ground) {
				y = ground; // clamp
				velocity.y = 0;
			}
		} // ends detectGround()
	} // ends class Player
} // ends package code