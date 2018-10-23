package code {
	
	import flash.display.MovieClip;
	import flash.geom.Point;
	
	/**
	 * 
	 */
	public class Player extends MovieClip {
		
		/** */
		private var acceleration:Point = new Point();
		/** */
		private var gravity:Point = new Point(0,100);
		/** */
		private var velocity:Point = new Point(1,5);
		
		
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
			
			doPhysics();
			
			detectGround();
			
		} // ends update()
		/**
		 * 
		 */
		private function doPhysics():void {
			// velocity += gravity * Time.deltaTime;
			// apply gravity to velocity
			velocity.x += gravity.x * Time.dtScaled;
			velocity.y += gravity.y * Time.dtScaled;
			
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