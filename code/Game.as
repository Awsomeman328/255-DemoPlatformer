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
			
			doCollisionDetection();
			
			KeyboardInput.update();
		} // ends gameLoop()
		
		/**
		 * 
		 */
		private function doCollisionDetection():void {
			
			if(player.collider.checkOverlap(platform.collider)){
				platform.alpha = .5;
			} else {
				platform.alpha = 1;
			}
			
		} // ends doCollisionDetection()
	} // ends class Game
} // ends package code