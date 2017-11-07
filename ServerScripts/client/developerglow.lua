/* Developer Glow By Squiz ~ 28/10/17 */

function developerglow()
  local staff = {}

    for k, v in pairs( player.GetAll() ) do
        if v:SteamID() == "STEAM_0:1:89002704" then
            table.insert( staff, v )
        end
    end
    halo.Add( staff, Color(math.Clamp((math.sin(CurTime()/8)+1)*127.5,0,255), math.Clamp((math.sin(CurTime()/4)+1)*127.5,0,255) ,math.Clamp((math.sin(CurTime()/2)+1)*127.5,0,255),255), 5, 5, 2, true, false )
end

hook.Add("PlayerConnect","SendDevGlow",function()
    hook.Add( "PreDrawHalos", "AddHalos", developerglow)
end)

hook.Add( "PreDrawHalos", "AddHalos", developerglow)