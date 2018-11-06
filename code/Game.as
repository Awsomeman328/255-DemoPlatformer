package code {

	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.geom.Point;

	/**
	 * This is our Game Object. It runs everything in this application.
	 */
	public class Game extends MovieClip {

		/** This static array keeps track of all platforms in a level. */
		static public var platforms: Array = new Array();

		/**
		 * This is our constructor code for our game. It holds everything we hold dear.
		 */
		public function Game() {
			// constructor code
			//trace("I work");
			KeyboardInput.setup(stage);
			addEventListener(Event.ENTER_FRAME, gameLoop);
		} // end constructor
		/**
		 * This event handler is called every frame so that our game can run.
		 * @param e The event that is passed in. It should be an ENTER_FRAME event.
		 */
		private function gameLoop(e: Event): void {
			//trace("gameTick");
			Time.update();
			player.update();

			doCollisionDetection();

			KeyboardInput.update();
		} // ends gameLoop()

		/**
		 * This is where we do all of our AABB collision decetction. It loops through all of our walls and checks if
		 * the player is colliding with any of them.
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