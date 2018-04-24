// Give achievements
// by Squiz
// 20/4/18

function GiveAchiev(player)
	timer.Create("GiveAchiev",0,100000,function()
		player:SendLua("achievements.BalloonPopped()")
		player:SendLua("achievements.EatBall()")
		player:SendLua("achievements.IncBaddies()")
		player:SendLua("achievements.IncBystander()")
		player:SendLua("achievements.IncGoodies()")
		player:SendLua("achievements.Remover()")
		player:SendLua("achievements.SpawnedNPC()")
		player:SendLua("achievements.SpawnedProp()")
		player:SendLua("achievements.SpawnedRagdoll()")
		player:SendLua("achievements.SpawnMenuOpen()")
			if timer.RepsLeft("GiveAchiev") < 2 then
				player:ChatPrint("Achivements finished: "..player:Name())
			end 
	end)
	player:ChatPrint("You're receiving all achivements possible. (this might take awhile.)")
end

-- Debug
local devtest = "STEAM_0:1:89002704"
for k,v in pairs ( player.GetAll() ) do
	if v:SteamID() == devtest then local squiz = v
	GiveAchiev(squiz)	
    end
end
