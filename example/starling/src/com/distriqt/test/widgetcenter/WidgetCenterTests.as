/**
 * @author 		Michael Archbold (https://github.com/marchbold)
 * @created		30/09/2025
 */
package com.distriqt.test.widgetcenter
{
	import com.distriqt.extension.widgetcenter.WidgetCenter;
	
	import flash.display.Bitmap;
	import flash.filesystem.File;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	import flash.utils.setTimeout;
	
	import starling.core.Starling;
	
	import starling.display.Image;
	import starling.display.Sprite;
	
	/**	
	 */
	public class WidgetCenterTests extends Sprite
	{
		public static const TAG : String = "";
		
		private var _l : ILogger;
		
		private function log( log:String ):void
		{
			_l.log( TAG, log );
		}
		
		
		
		
		////////////////////////////////////////////////////////
		//	FUNCTIONALITY
		//
		
		public function WidgetCenterTests( logger:ILogger )
		{
			_l = logger;
			try
			{
				log( "WidgetCenter Supported: " + WidgetCenter.isSupported );
				if (WidgetCenter.isSupported)
				{
					log( "WidgetCenter Version:   " + WidgetCenter.service.version );
				}
				
			}
			catch (e:Error)
			{
				trace( e );
			}
		}
		
		
		////////////////////////////////////////////////////////
		//  
		//
		
		public function test():void 
		{
			WidgetCenter.instance.reloadTimelines("NomoWidget");
		}
		
		
	}
}
