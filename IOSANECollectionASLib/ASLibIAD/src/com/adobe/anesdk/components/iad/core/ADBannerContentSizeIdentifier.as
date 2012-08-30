/*******************************************************************
 * Copyright (C) 2012 CHENGUANG LIU
 *
 * Permission is hereby granted, free of charge, 
 * to any person obtaining a copy of this software 
 * and associated documentation files (the "Software"), 
 * to deal in the Software without restriction, 
 * including without limitation the rights to use, 
 * copy, modify, merge, publish, distribute, sublicense, 
 * and/or sell copies of the Software, and to permit 
 * persons to whom the Software is furnished to do so, 
 * subject to the following conditions:
 * 
 * The above copyright notice and this permission notice 
 * shall be included in all copies or substantial portions 
 * of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY 
 * OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT 
 * LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS 
 * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, 
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 ********************************************************************/

package com.adobe.anesdk.components.iad.core
{
	public class ADBannerContentSizeIdentifier
	{
		static public const Portrait:ADBannerContentSizeIdentifier = new ADBannerContentSizeIdentifier("protrait");
		static public const Landscape:ADBannerContentSizeIdentifier = new ADBannerContentSizeIdentifier("landscape");
		static public const NULL:ADBannerContentSizeIdentifier = new ADBannerContentSizeIdentifier("null");
		
		private var _value:String;
		
		static public function getADBannerContentSizeIdentifierByValue(value:String):ADBannerContentSizeIdentifier
		{
			switch(value)
			{
				case "protrait":
					return Portrait;
				case "landscape":
					return Landscape;
				case "null":
					return NULL;
				default:
					break;
			}
			return null;
		}
		
		public function ADBannerContentSizeIdentifier(value:String)
		{
			_value = value;
		}
		
		public function get value():String
		{
			return _value;
		}
	}
}