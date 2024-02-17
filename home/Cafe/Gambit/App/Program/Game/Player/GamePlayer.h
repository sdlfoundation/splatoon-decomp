namespace Game {
	struct Player { 
		undefined field0_0x0[44];
		int teamId;
		undefined field2_0x30[36];
		uint field3_0x54;
		int isLocalPlayer;
		undefined field5_0x5c[6];
		short shotBulletsNum;
		undefined field7_0x64[20];
		int weaponId;
		int subWeaponId;
		int specialWeaponid;
		undefined field11_0x84[24];
		int playerId; /* Could be player id. See WarpTargetPosResolver::receiveRedefine */
		undefined field13_0xa0[56];
		short isShooting;
		int isSubWeaponHeld;
		undefined field16_0xde[26];
		int useSubDelayFrm;
		short isSwimming;
		undefined field19_0xfe[190];
		struct Vector3 * shotDir; /* Created by retype action */
		undefined field21_0x1c0[8];
		float * nextShotDir; /* Created by retype action */
		undefined field23_0x1cc[44];
		struct PlayerWeaponShachihoko * playerWeaponShachihoko; /* Created by retype action */
		undefined field25_0x1fc[560];
		int field26_0x42c;
		undefined field27_0x430[164];
		int field28_0x4d4;
		int field29_0x4d8;
		int field30_0x4dc;
		int deathFrm;
		undefined field32_0x4e4[18];
		undefined1 killAllEffect; /* Created by retype action */
		undefined field34_0x4f7[209];
		int jumpframe; /* Created by retype action */
		undefined field36_0x5cc[296];
		int field37_0x6f4;
		undefined field38_0x6f8[16];
		char field39_0x708;
		undefined field40_0x709[87];
		struct PlayerInkAction * playerInkAction;
		undefined1 playerCollision; /* Created by retype action */
		undefined field43_0x765[3];
		struct PlayerModel * playerModel; /* Created by retype action */
		undefined field45_0x76c[4];
		struct PlayerEffect * playerEffect; /* Created by retype action */
		undefined field47_0x774[16];
		struct PlayerNetControl * playerNetControl; /* Created by retype action */
		undefined field49_0x788[44];
		int demoPlaceType; /* Created by retype action */
		undefined field51_0x7b8;
		byte field52_0x7b9;
		undefined field53_0x7ba[62];
		int turfPaint;
		undefined field55_0x7fc[12];
		uint field56_0x808;
		undefined field57_0x80c[128];
		float swimSpeed;
		undefined field59_0x890[64];
		struct PlayerBehindCamera * playerBehindCamera;

		void receiveDie_Net();
		void receiveAirFall_Net();
		void receiveWaterFall_Net();
		void receiveRevival_Net();
		void receiveUnk_Net();
		void receiveStartDokanWarp_Net();
		void receiveUnk2_Net();
		void receiveEndDokanWarp_Net();
	};
}
