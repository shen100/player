package com.shen.player.controller {
	
	import com.shen.player.model.PlayerProxy;
	import com.shen.player.model.constant.PlayerState;
	
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
	
	public class ResumeCommand extends SimpleCommand {
		
		override public function execute( note:INotification ) : void {
			var videoProxy:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
			if(videoProxy.playerState == PlayerState.PAUSE) {
				videoProxy.resume();	
			}
		}
		
	}
}