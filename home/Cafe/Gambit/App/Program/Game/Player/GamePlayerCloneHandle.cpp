#include "GamePlayer.h"

namespace Game {
	void Game::PlayerCloneHandle::unpackStateEvent(Player *player,PlayerStateCloneEvent *event,uint *unk) {
  		byte eventId;
  
  		if (unk == (uint *)0x0) {
    		(**(code **)(MainMgr::sInstance->vtable + 300))();
    		eventId = event->eventId;
  		}
  		else {
    		(**(code **)(MainMgr::sInstance->vtable + 0x16c))(MainMgr::sInstance,*unk);
    		eventId = event->eventId;
  		}

		switch (eventId) {
			case 0:
				player->receiveDie_Net();
				break;
			case 1:
				player->receiveAirFall_Net();
				break;
			case 2:
				player->receiveWaterFall_Net();
				break;
			case 3:
				player->receiveRevival_Net();
				break;
			case 4:
				player->receiveUnk_Net();
				break;
			case 5:
				player->receiveStartDokanWarp_Net();
				break;
			case 6:
				player->receiveUnk2_Net();
				break;
			case 7:
				player->receiveEndDokanWarp_Net();
				break;
			case 8:
				break;
			case 9:
				break;
			case 10:
				break;
			case 11:
				break;
			case 12:
				break;
			case 13:
				break;
			case 14:
				break;
			case 15:
				break;
			case 16:
				break;
			case 17:
				break;
			case 18:
				break;
			case 19:
				break;
			case 20:
				break;
			case 21:
				break;
			case 22:
				break;
			case 23:
				break;
			case 24:
				break;
			case 25:
				break;
			default:
				return;
		}
	}
}
