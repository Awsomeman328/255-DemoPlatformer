package code {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/**
	 * 
	 */
	public class Game extends MovieClip {
		
		/**
		 * 
		 */
		public function Game() {
			// constructor code
			//trace("I work");
			KeyboardInput.setup(stage);
			addEventListener(Event.ENTER_FRAME, gameLoop);
		} // end constructor
		/**
		 * 
		 */
		private function gameLoop(e:Event):void {
			//trace("gameTick");
			Time.update();
			player.update();
		} // ends gameLoop()
	} // ends class Game
} // ends package code