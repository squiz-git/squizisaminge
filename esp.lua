--[[-----------------------------

            Squiz ESP
             5/11/17 
     Coded by Squiz (STEAM_0:1:89002704)

--]]-----------------------------

LocalPlayer():ChatPrint("| Squiz's ESP Initialized | \nCoded by Squiz (STEAM_0:1:89002704)")

hook.Add( "HUDPaint", "SquizSP", function()
    -- Paint Players
    for k,v in pairs ( player.GetAll() ) do 
        if v == LocalPlayer() then else
            local Position = ( v:GetPos() + Vector( 0,0,70 ) ):ToScreen()
            local Dist = math.ceil(v:GetPos():Distance(LocalPlayer():GetPos()))
            -- Name
            draw.DrawText( v:Name(), "DermaLarge", Position.x, Position.y, Color( 255, 255, 255, 255 ), 1 )
            draw.DrawText( Dist, "DermaDefault", Position.x, Position.y+50, Color( (Dist/20)*2, (Dist/20)*2, (Dist/20)*2, 255 ), 1 )
            print((Dist/20)*2)
        end
    end
    for k,v in pairs ( ents.FindByClass("player*") ) do
        v:SetMaterial("models/debug/debugwhite",true)
        v:SetColor(Color(255,0,0,150))
        v:SetRenderMode( RENDERMODE_TRANSALPHA )
    end
    -- Paint Props
    for k,v in pairs ( ents.FindByClass("prop_physics") ) do 
        local PositionOfProp = ( v:GetPos() + Vector( 0,0,70 ) ):ToScreen()
        local DistOfProp = math.ceil(v:GetPos():Distance(LocalPlayer():GetPos()))
        --draw.DrawText( DistOfProp, "DermaDefault", PositionOfProp.x, PositionOfProp.y+50, Color( 0, 0, 255, 255 ), 1 )
        v:SetMaterial("models/debug/debugwhite")    
        v:SetColor(Color(0,255,0,100))
        v:SetRenderMode( RENDERMODE_TRANSALPHA )
    end
    -- Halo Wallhack & Prop Draw
    hook.Add( "PreDrawHalos", "DrawSquizHalos", function()
        halo.Add( ents.FindByClass( "prop_physics*" ), Color( 0, 255, 0, 150 ), 5, 5, 2,1,true )
        halo.Add( ents.FindByClass( "player" ), Color( 255, 0, 0, 255 ), 5, 5, 2,1,true )
    end )
end )


