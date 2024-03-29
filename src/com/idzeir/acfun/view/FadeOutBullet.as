/**
 * ===================================
 * Author:	iDzeir					
 * Email:	qiyanlong@wozine.com	
 * Company:	http://www.acfun.tv		
 * Created:	Jun 17, 2015 11:23:57 AM			
 * ===================================
 */

package com.idzeir.acfun.view
{
	import com.idzeir.acfun.manage.BulletType;
	import com.idzeir.acfun.vo.BulletVo;
	
	import flash.geom.Point;

	/**
	 * 顶部淡出弹幕
	 */	
	public class FadeOutBullet extends BaseBullet implements IBullet
	{
		/**
		 * 透明度每次递减量 
		 */		
		private const SPEED:Number = .01;
		private const INI_ALPHA:Number = 3;
		
		public function FadeOutBullet()
		{
			super();
		}
		
		override public function update(time:int=0):void
		{
			this.alpha -= SPEED;
			if(this.alpha <= 0)
			{
				this.removeFromParent();
			}
		}
		
		override public function bullet(value:BulletVo, point:Point=null):IBullet
		{
			super.bullet(value);
			this.alpha = INI_ALPHA;
			return this;
		}
		
		override public function get bulletType():String
		{
			return BulletType.FADE_OUT_TOP;
		}
	}
}