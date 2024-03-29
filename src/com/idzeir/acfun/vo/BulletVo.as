/**
 * ===================================
 * Author:	iDzeir					
 * Email:	qiyanlong@wozine.com	
 * Company:	http://www.acfun.tv		
 * Created:	Jun 8, 2015 12:45:56 PM			
 * ===================================
 */

package com.idzeir.acfun.vo
{
	import com.idzeir.acfun.utils.Log;
	
	/**
	 * 弹幕数据模型
	 */	
	public class BulletVo
	{
		private var _stime:Number;
		private var _color:int;
		private var _mode:String;
		private var _size:int;
		private var _user:String;
		/**
		 * 
		 */		
		private var _time:int;
		private var _message:String;
		private var _commentId:String;
		
		private var _type:String;
		private var _score:String;
		
		public function BulletVo(value:* = null,type:uint = 1)
		{
			if(value)
			{
				try{
					var cArr:Array = value["c"].split(",");
					_stime = parseFloat(cArr[0]);
					_color = int(cArr[1]);
					_mode = cArr[2];
					_size = int(cArr[3]);
					_user = cArr[4];
					_time = int(cArr[5])*1000;
					_commentId = cArr[6];
				}catch(e:Error){
					Log.warn("弹幕数据不全:type=",type,"数据:value=",JSON.stringify(value));
				}
				_message = value["m"];
				_score = value["score"];
				_type = type.toString();
			}
		}
		
		/**
		 * 发送用户 
		 */
		public function get user():String
		{
			return _user;
		}

		/**
		 * @private
		 */
		public function set user(value:String):void
		{
			_user = value;
		}

		/**
		 * 弹幕模式 
		 */
		public function get mode():String
		{
			return _mode;
		}

		/**
		 * @private
		 */
		public function set mode(value:String):void
		{
			_mode = value;
		}

		/**
		 * 颜色 
		 */
		public function get color():int
		{
			return _color;
		}

		/**
		 * @private
		 */
		public function set color(value:int):void
		{
			_color = value;
		}

		/**
		 * 字体大小 
		 */
		public function get size():int
		{
			return _size;
		}

		/**
		 * @private
		 */
		public function set size(value:int):void
		{
			_size = value;
		}

		/**
		 * 弹幕内容 
		 */
		public function get message():String
		{
			return _message;
		}

		/**
		 * @private
		 */
		public function set message(value:String):void
		{
			_message = value;
		}

		/**
		 * 开始播放时间
		 */
		public function get stime():Number
		{
			return _stime;
		}

		/**
		 * @private
		 */
		public function set stime(value:Number):void
		{
			_stime = value;
		}

		/**
		 * 弹幕id 
		 */
		public function get commentId():String
		{
			return _commentId;
		}

		/**
		 * @private
		 */
		public function set commentId(value:String):void
		{
			_commentId = value;
		}

	}
}