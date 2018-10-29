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
		/** */
		private var numJumps:int = 0;
		/** */
		private var maxJumps:int = 2;
		
		//DONE: MAKE THE PLAYER JUMP HIGHER THE LONGER THE JUMP BUTTON IS PRESSED (VARIABLE JUMP HEIGHT)
		//TODO: GIVE THEM THE ABILITY TO DOUBLE JUMP
		
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
			// move left
			if(KeyboardInput.isKeyDown(Keyboard.A)) velocity.x -= acceleration.x * Time.dtScaled;
			// move right
			if(KeyboardInput.isKeyDown(Keyboard.D)) velocity.x += acceleration.x * Time.dtScaled;
			// jump
			if(KeyboardInput.onKeyDown(Keyboard.SPACE)) {
				if(numJumps < maxJumps){
					numJumps++;
					gravity.y= 100;
					velocity.y -= acceleration.y * Time.dtScaled;
				}
			}
			// if space is released, or the character starts moving down, return gravity to normal
			if(!KeyboardInput.isKeyDown(Keyboard.SPACE) || velocity.y > 0) gravity.y = 200;
			
			// slow down
			if(!KeyboardInput.isKeyDown(Keyboard.A) && !KeyboardInput.isKeyDown(Keyboard.D)){
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
				numJumps = 0;
			}
		} // ends detectGround()
	} // ends class Player
} // ends package code