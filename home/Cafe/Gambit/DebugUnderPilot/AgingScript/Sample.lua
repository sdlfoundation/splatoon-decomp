-- この2文字で始まる行はコメント

--[[
まとめてコメントアウト

]]

-- frameだけ待つ処理
function wait_frame(frame)
	while frame > 0 do
		-- luaからゲームに処理を戻す（次フレームに再開）
		coroutine.yield();
		frame = frame - 1;
	end
end

function main()

	-- while文 テスト
	count = 0;
	while true do

		print( "lua count ["..count.."]" );
		-- ６０フレーム間隔で処理する
		count = count + 1;
		wait_frame(60);
	end

end


main();
-- 終了

