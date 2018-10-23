package code {
	
	import flash.utils.getTimer;
	
	/**
	 * This is our ABSTRACT Time object that keeps track of how much time has passed between every frame.
	 */
	public class Time {
		
		/** How many real life seconds goes by per frame. */
		public static var dt:Number = 0;
		/** Our delta-Time value using our scale value to either speed up or slow down the game. Most of our objects should use this version of dt.  */
		public static var dtScaled:Number = 0;
		/** The total amount of time the application has been running since start up in Milliseconds. */
		public static var time:Number = 0;
		/** How much we want to scale our dt. This will allow us to fast forward or slow down time. */
		public static var timeScale:Number = 1;
		/** The cache of the previous time in Milliseconds */
		private static var timePrev:Number = 0;
		
		/**
		 * This is our update function for this class. It should be called at the start of every frame in order
		 * to calculate how much time has passed since the previous frame.
		 */
		public static function update():void {
			time = getTimer();
			dt = (time - timePrev) / 1000;
			dtScaled = dt * timeScale;
			timePrev = time; // cache for next frame
		} // ends update
	} // ends class Time
} // ends package code