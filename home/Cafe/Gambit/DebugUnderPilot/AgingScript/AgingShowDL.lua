
require "DebugUnderPilot/AgingScript/Module/Framework"


function main()

	-- while文 テスト
	count = 0;
	while true do

		if Net.IsError() then
			Ctrl.PressButton( 0, Ctrl_A );
			waitFrame( 10 );
		end

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

		-- フレーム間隔で処理する
		waitFrame( 1 );
	end

end

function calcSceneTitleForShow()

	Net.SetEthernetCommunicationEnabledForTest(true);
	Ctrl.PressButton( 0, Ctrl_ZL | Ctrl_ZR );

	waitFrame( 60 );

end


function calcSceneLobbyForShow()

	sceneState = LobbyForShow.GetSceneState();
	if sceneState == LobbyForShowState_Select then
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_A );
	elseif sceneState == LobbyForShowState_Detail then
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_Right );
		waitFrame( 20 );
		Ctrl.PressButton( 0, Ctrl_A );
	end

	waitFrame( 60 );

end

function calcSceneMatchForShow()

	r = math.floor( math.random(1000) );
  --print( r );
	if r <= 1 then
		Net.SetEthernetCommunicationEnabledForTest(false);
	end

	Ctrl.PressButton( 0, Ctrl_A );

	waitFrame( 60 );

end

function calcSceneVersus()

	r=math.floor( math.random(10000) );
  --print( r );
	if r <= 1 then
		Net.SetEthernetCommunicationEnabledForTest( false );
	end
	
	c=math.floor( math.random(10) );
	if c <= 1 then
		Ctrl.PressButton( 0, Ctrl_ZL );
	end

	Ctrl.SetStick( 0 , CtrlLR_L , 0 , 0.5 );
	Ctrl.PressButton( 0, Ctrl_ZR );

end


main();
-- 終了

