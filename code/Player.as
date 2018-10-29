package code {
	
	import flash.display.MovieClip;
	import flash.geom.Point;
	import flash.ui.Keyboard;
	
	/**
	 * This is our Player Object class, the Object that the user will have direct controller over during runtime.
	 */
	public class Player extends MovieClip {
		
		/** How fast this Player Object will accelerate up to it's maximum speed when input is given. Also controls jump height. */
		private var acceleration:Point = new Point(800, 6000);
		/** The constant downward force applyed to this Object. If the x is given a value other than 0, then the Player will experience horizontal gravity. */
		private var gravity:Point = new Point(0,200);
		/** The fastest our character can move so that he doesn't accelerate off into infinity, getting faster and faster along the way. */
		private var maxSpeed:Number = 400;
		/** The current velocity (speed) of this object. */
		private var velocity:Point = new Point(1,5);
		/** The value at which this Object will decelrate when no input is detected. */
		private const DECELERATION:Number = 800;
		/** The current number of jumps the Player Object has performed */
		private var numJumps:int = 0;
		/** The maximum number of jumps the Player Objects can perform before needing to touch the ground again. By default, this value is set to 2. */
		private var maxJumps:int = 2;
		
		//DONE: MAKE THE PLAYER JUMP HIGHER THE LONGER THE JUMP BUTTON IS PRESSED (VARIABLE JUMP HEIGHT)
		//DONE: GIVE THEM THE ABILITY TO DOUBLE JUMP
		
		/**
		 * The constructor code for this Player Object.
		 */
		public function Player() {
			// constructor code
		} // ends constructor
		/**
		 * This funciton gets called from the current Game or Scene every frame and allows this Object to function. It should only be called once per frame.
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
		 * This function handles all of our physics for this Object. It applies gravity to velocity, clamps velocity to our maxSpeed and applies velocity to position.
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
		 * This function determines if this Object has touched the ground or not. If it does, it stops our vertical movement, velocity and resets our number of jumps.
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