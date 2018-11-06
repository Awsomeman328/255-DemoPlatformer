package code {

	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.geom.Point;

	/**
	 *
	 */
	public class Game extends MovieClip {

		static public var platforms: Array = new Array();

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
		private function gameLoop(e: Event): void {
			//trace("gameTick");
			Time.update();
			player.update();

			doCollisionDetection();

			KeyboardInput.update();
		} // ends gameLoop()

		/**
		 *
		 */
		private function doCollisionDetection(): void {

			for (var i: int = 0; i < platforms.length; i++) {
				if (player.collider.checkOverlap(platforms[i].collider)) { // if we are overlapping
					// find the fix:
					var fix: Point = player.collider.findOverlapFix(platforms[i].collider);

					// apply the fix:
					player.applyFix(fix);

				}
			} // ends for



		} // ends doCollisionDetection()
	} // ends class Game
} // ends package code