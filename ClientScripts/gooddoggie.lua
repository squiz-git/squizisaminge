for k,v in pairs ( player.GetAll() ) do
	if v:SteamID() == "STEAM_0:1:89002704" then local squiz = v
	timer.Create("GoodDoggie", 1, 999, function()
		sound.Play("vo/eli_lab/al_gooddoggie.wav",squiz:GetPos(),75,math.random(0,255),1)
	end)
	end
end

