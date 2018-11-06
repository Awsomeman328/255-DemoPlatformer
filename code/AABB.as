package code  {
	import flash.geom.Point;
	
	/**
	 * This is our AABB Object. We give this Object to other classes that are boxes and need to collide with other boxes.
	 */
	public class AABB {
		
		/** The distance between the center of the box and the left and right sides of the box. */
		private var halfWidth:Number;
		/** The distance between the center of the box and the top and bottom sides of the box. */
		private var halfHeight:Number;
		
		/** The left edge of the box. */
		public var xMin:Number;
		/** The right edge of the box. */
		public var xMax:Number;
		/** The top edge of the box. */
		public var yMin:Number;
		/** The bottom edge of the box. */
		public var yMax:Number;

		/**
		 * When we make this Object, we need to know it's halfWidth and halfHeight to know how big our box is.
		 * @param halfWidth Half of the width of the box we want to make.
		 * @param halfHeight Half of the height of the box we want to make.
		 */
		public function AABB(halfWidth:Number, halfHeight:Number) {
			// constructor code
			setSize(halfWidth, halfHeight);
		} // end constructor
		/**
		 * This function saves the halfWidth and halfHeight this Object was instantiated with and keeps it for us
		 * to use to calculate stuff later.
		 * @param halfWidth Half of the width of the box we want to save.
		 * @param halfHeight Half of the height of the box we want to save.
		 */
		public function setSize(halfWidth:Number, halfHeight:Number):void {
			this.halfWidth = halfWidth;
			this.halfHeight = halfHeight;
			// recalculate edges!!!
			calcEdges((xMin + xMax/2),(yMin + yMax)/2);
		} // end setSize()
		/**
		 * Calculate the position of the 4 edges from the center (x,y) position.
		 * @param x 
		 * @param y 
		 */
		public function calcEdges(x:Number, y:Number):void {
			xMin = x - halfWidth;
			xMax = x + halfWidth;
			yMin = y - halfHeight;
			yMax = y + halfHeight;
		} // end calcEdges
		/**
		 * This function checks to see if this AABB is overlapping another AABB
		 * @param other The other AABB to check this AABB against.
		 * @return Whether or not they are overlapping. If true, they are overlapping.
		 */
		public function checkOverlap(other:AABB):Boolean {
			
			if(this.xMax < other.xMin) return false; // gap to the right
			if(this.xMin > other.xMax) return false; // gap to the left
			if(this.yMax < other.yMin) return false; // gap to the below
			if(this.yMin > other.yMax) return false; // gap to the above
			
			return true;
		} // end chackOverlap()
		/**
		 * This function colculates how far to move THIS box so that it no longer intersects another AABB.
		 * @param other The other AABB.
		 * @return The "fix" vector - hoe far to move this box.
		 */
		public function findOverlapFix(other:AABB):Point {
			
			var moveL:Number = other.xMin - this.xMax;
			var moveR:Number = other.xMax - this.xMin;
			var moveU:Number = other.yMin - this.yMax;
			var moveD:Number = other.yMax - this.yMin;
			
			var fix:Point = new Point();
			// if moving this obect to the left would be a shorter distance than moving it right, 
			// then set our fix to the left. Otherwise, set our fix to the right. Do the same with up and down.
			fix.x = (Math.abs(moveL) < Math.abs(moveR)) ? moveL : moveR;
			fix.y = (Math.abs(moveU) < Math.abs(moveD)) ? moveU : moveD;
			// because we only want to return an x or a y, never both, compare the two and set the larger to 0.
			if(Math.abs(fix.x) < Math.abs(fix.y)) fix.y = 0;
			else fix.x = 0;
			
			return fix;
		} // end findOverlapFix
	} // end class AABB
} // end package