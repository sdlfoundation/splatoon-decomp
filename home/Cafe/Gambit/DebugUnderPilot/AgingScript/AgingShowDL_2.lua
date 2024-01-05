
require "DebugUnderPilot/AgingScript/Module/Framework"


function main()

	-- while文 テスト
	count = 0;
	while true do

		if Scene.IsSceneFaderSleep() then
			if Scene.IsSceneByName( "Boot" ) then
				-- print( "Scene [Boot]" );
			elseif Scene.IsSceneByName( "TitleForShow" ) then
				-- print( "Scene [TitleForShow]" );
				calcSceneTitleForShow();
			elseif Scene.IsSceneByName( "LobbyForShow" ) then
				-- print( "Scene [LobbyForShow]" );
				calcSceneLobbyForShow();
			elseif Scene.IsSceneByName( "Match/ForShow" ) then
				-- print( "Scene [Match/ForShow]" );
				calcSceneMatchForShow();
			elseif Scene.IsSceneByName( "Versus" ) then
				-- print( "Scene [Versus]" );
				calcSceneVersus();
			end
		end

		-- ６０フレーム間隔で処理する
		waitFrame( 60 );
	end

end

function calcSceneTitleForShow()

	Ctrl.PressButton( 0, Ctrl_ZL | Ctrl_ZR );

end


function calcSceneLobbyForShow()
	
	sceneState = LobbyForShow.GetSceneState();
	--print ( sceneState );
	if sceneState == LobbyForShowState_Select then
    r=math.floor( math.random(4) );
		if  r <= 1 then
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_A );
		elseif r <= 2 then;
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_Right );
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_A );
		elseif r <= 3 then;
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_Down );
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_A );
		else	
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_Right );
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_Down );
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_A );
		end

	elseif sceneState == LobbyForShowState_Detail then

		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_Right );
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_A );

	end

end

function calcSceneMatchForShow()

	Ctrl.PressButton( 0, Ctrl_A );

end

function calcSceneVersus()
	r=math.floor( math.random(5) );
  --print(r);
	if r  <= 1 then
  
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 30  );
  	Ctrl.PressButton( 0, Ctrl_ZR );
	  waitFrame( 10  );
    Ctrl.PressButton( 0, Ctrl_ZR );
	  waitFrame( 10 );
    Ctrl.PressButton( 0, Ctrl_ZR );
	  waitFrame( 10 );
    Ctrl.PressButton( 0, Ctrl_ZR );
	  waitFrame( 10 );
    Ctrl.PressButton( 0, Ctrl_ZR );
	  waitFrame( 10 );
    Ctrl.PressButton( 0, Ctrl_ZR );
	elseif  r <= 2 then
		waitFrame( 120  );
    Ctrl.PressButton( 0, Ctrl_B );
    waitFrame( 5  );
		Ctrl.PressButton( 0, Ctrl_R );
  elseif  r <= 3 then
		-- スティック入力がうまく制御できないのでスパジャンにする
    waitFrame( 3 );
 		Ctrl.PressButton( 0, Ctrl_X  );
 	  waitFrame( 10  );
	  Ctrl.PressButton( 0, Ctrl_Down | Ctrl_A  );
 	  waitFrame( 10  );
  elseif r <= 4 then
    print( "stick1" );
		Ctrl.PressButton( 0, Ctrl_LS_Up );
 	  waitFrame( 10  );
	Ctrl.PressButton( 0, Ctrl_LS_Up );
 	  waitFrame( 10  );
	Ctrl.PressButton( 0, Ctrl_LS_Up );
 	  waitFrame( 10  );
	Ctrl.PressButton( 0, Ctrl_LS_Up );
 	  waitFrame( 10  );
	Ctrl.PressButton( 0, Ctrl_LS_Up );
 	  waitFrame( 10  );
	Ctrl.PressButton( 0, Ctrl_LS_Up );
 	  waitFrame( 10  );
  print( "stick2" );
		-- Ctrl.SetStick( 0 , CtrlLR_L, 0.1 , 0.1 );
    Ctrl.SetStick( 0 , CtrlLR_L , 0 , 0.5 );
    waitFrame( 30 );
	else
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_B );
    waitFrame( 30  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
		waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
    waitFrame( 5  );
    Ctrl.PressButton( 0, Ctrl_ZL );
	end
	
end


main();
-- 終了

