package code {

	import flash.events.KeyboardEvent;
	import flash.display.Stage;

	/**
	 * This is a singleton keyboard object that keeps track of most of the keys on our keyboard and if they are currently pressed down.
	 */
	public class KeyboardInput {

		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyBackspace: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyTab: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyEnter: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyShift: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyControl: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyCapsLock: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyEsc: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keySpacebar: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyPageUp: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyPageDown: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyEnd: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyHome: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyLeftArrow: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyUpArrow: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyRightArrow: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyDownArrow: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyInsert: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyDelete: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumLock: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyScrLK: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyPauseBreak: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyA: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyB: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyC: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyD: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyE: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyG: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyH: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyI: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyJ: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyK: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyL: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyM: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyN: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyO: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyP: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyQ: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyR: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyS: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyT: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyU: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyV: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyW: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyX: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyY: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyZ: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var key0: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var key1: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var key2: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var key3: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var key4: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var key5: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var key6: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var key7: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var key8: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var key9: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpad0: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpad1: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpad2: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpad3: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpad4: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpad5: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpad6: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpad7: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpad8: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpad9: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpadMultiply: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpadAdd: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpadEnter: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpadSubtract: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpadDecimal: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyNumpadDivide: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF1: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF2: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF3: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF4: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF5: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF6: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF7: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF8: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF9: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		//public static var keyF10: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF11: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF12: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF13: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF14: Boolean = false;
		/**This Boolean keeps track of whether or not this key is currently pressed down. Just read the name, you'll know where to find it. */
		public static var keyF15: Boolean = false;

		/**
		 * So because this object is an ABSTRACT Object, we don't have a constructor, so we run this function instead when we would run a constructor
		 * @param stage A reference to the current stage object.
		 */
		public static function setup(stage: Stage) {
			// constructor code
			stage.addEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, handleKeyUp);
		} // end constructor
		/**
		 * This function is called when we want to update a value of any of our keys.
		 * @param keyCode The key code of whatever key needs to be changed.
		 * @param isDown The value that we set the key value to.
		 */
		private static function updateKey(keyCode: int, isDown: Boolean): void {
			if (keyCode == 8) keyBackspace = isDown;
			if (keyCode == 9) keyTab = isDown;
			if (keyCode == 13) keyEnter = isDown;

			if (keyCode == 13) keyNumpadEnter = isDown;

			if (keyCode == 16) keyShift = isDown;
			if (keyCode == 17) keyControl = isDown;

			if (keyCode == 19) keyPauseBreak = isDown;

			if (keyCode == 20) keyCapsLock = isDown;
			if (keyCode == 27) keyEsc = isDown;
			if (keyCode == 32) keySpacebar = isDown;
			if (keyCode == 33) keyPageUp = isDown;
			if (keyCode == 34) keyPageDown = isDown;
			if (keyCode == 35) keyEnd = isDown;
			if (keyCode == 36) keyHome = isDown;
			if (keyCode == 37) keyLeftArrow = isDown;
			if (keyCode == 38) keyUpArrow = isDown;
			if (keyCode == 39) keyRightArrow = isDown;
			if (keyCode == 40) keyDownArrow = isDown;
			if (keyCode == 45) keyInsert = isDown;
			if (keyCode == 46) keyDelete = isDown;

			if (keyCode == 65) keyA = isDown;
			if (keyCode == 66) keyB = isDown;
			if (keyCode == 67) keyC = isDown;
			if (keyCode == 68) keyD = isDown;
			if (keyCode == 69) keyE = isDown;
			if (keyCode == 70) keyF = isDown;
			if (keyCode == 71) keyG = isDown;
			if (keyCode == 72) keyH = isDown;
			if (keyCode == 73) keyI = isDown;
			if (keyCode == 74) keyJ = isDown;
			if (keyCode == 75) keyK = isDown;
			if (keyCode == 76) keyL = isDown;
			if (keyCode == 77) keyM = isDown;
			if (keyCode == 78) keyN = isDown;
			if (keyCode == 79) keyO = isDown;
			if (keyCode == 80) keyP = isDown;
			if (keyCode == 81) keyQ = isDown;
			if (keyCode == 82) keyR = isDown;
			if (keyCode == 83) keyS = isDown;
			if (keyCode == 84) keyT = isDown;
			if (keyCode == 85) keyU = isDown;
			if (keyCode == 86) keyV = isDown;
			if (keyCode == 87) keyW = isDown;
			if (keyCode == 88) keyX = isDown;
			if (keyCode == 89) keyY = isDown;
			if (keyCode == 90) keyZ = isDown;

			if (keyCode == 96) keyNumpad0 = isDown;
			if (keyCode == 97) keyNumpad1 = isDown;
			if (keyCode == 98) keyNumpad2 = isDown;
			if (keyCode == 99) keyNumpad3 = isDown;
			if (keyCode == 100) keyNumpad4 = isDown;
			if (keyCode == 101) keyNumpad5 = isDown;
			if (keyCode == 102) keyNumpad6 = isDown;
			if (keyCode == 103) keyNumpad7 = isDown;
			if (keyCode == 104) keyNumpad8 = isDown;
			if (keyCode == 105) keyNumpad9 = isDown;
			if (keyCode == 106) keyNumpadMultiply = isDown;
			if (keyCode == 107) keyNumpadAdd = isDown;

			if (keyCode == 109) keyNumpadSubtract = isDown;
			if (keyCode == 110) keyNumpadDecimal = isDown;
			if (keyCode == 111) keyNumpadDivide = isDown;
			if (keyCode == 112) keyF1 = isDown;
			if (keyCode == 113) keyF2 = isDown;
			if (keyCode == 114) keyF3 = isDown;
			if (keyCode == 115) keyF4 = isDown;
			if (keyCode == 116) keyF5 = isDown;
			if (keyCode == 117) keyF6 = isDown;
			if (keyCode == 118) keyF7 = isDown;
			if (keyCode == 119) keyF8 = isDown;
			if (keyCode == 120) keyF9 = isDown;
			if (keyCode == 122) keyF11 = isDown;
			if (keyCode == 123) keyF12 = isDown;
			if (keyCode == 124) keyF13 = isDown;
			if (keyCode == 125) keyF14 = isDown;
			if (keyCode == 126) keyF15 = isDown;

			if (keyCode == 144) keyNumLock = isDown;
			if (keyCode == 145) keyScrLK = isDown;
		} // end updateKey
		/**
		 * This event-handler is called whenever a key is released on the keyboard.
		 * @param e The KeyboardEvent that triggers this function.
		 */
		private static function handleKeyDown(e: KeyboardEvent): void {
			//trace(e.keyCode);
			updateKey(e.keyCode, true);
		} // end handleKeyDown
		/**
		 * This event-handler is called whenever a key is pressed on the keyboard.
		 * @param e The KeyboardEvent that triggers this function.
		 */
		private static function handleKeyUp(e: KeyboardEvent): void {
			updateKey(e.keyCode, false);
		} // end handleKeyUp
	} // end class KeybaordInput
} // end package code