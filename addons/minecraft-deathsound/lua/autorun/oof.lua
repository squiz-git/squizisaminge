CreateClientConVar( "death_sound", 'oof.mp3', true, false, "Sound that should play when a player dies." )
local death_sound = GetConVar( "death_sound" )

function OverrideDeathSound()
    return true
end

function playerDies(player)
    player:EmitSound( death_sound:GetString() )
end

hook.Add("PlayerDeathSound", "OverrideDeathSound", OverrideDeathSound)
hook.Add("PlayerDeath", "playerDies", playerDies)


