CreateClientConVar( "death_sound", '"oof.mp3"', true, false, "Sound to Play when a player dies." )
local death_sound = GetConVar( "death_sound" )

function OverrideDeathSound()
    return true
end

function playerDies(player)
    player:EmitSound( death_sound:GetString() )
end

hook.Add("PlayerDeath", "playerDies", playerDies)
hook.Add("PlayerDeathSound", "OverrideDeathSound", OverrideDeathSound)


