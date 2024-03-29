/**
 * ===================================
 * Author:	iDzeir					
 * Email:	qiyanlong@wozine.com	
 * Company:	http://www.acfun.tv		
 * Created:	Jun 16, 2015 10:34:51 AM			
 * ===================================
 */

package com.idzeir.acfun.utils
{
	import com.idzeir.acfun.vo.BulletVo;
	import com.idzeir.acfun.vo.Node;
	
	/**
	 * node转换弹幕数据工具
	 */	
	public class NodeUtil
	{
		public static function get(node:Node):BulletVo
		{
			return node.content as BulletVo;
		}
	}
}