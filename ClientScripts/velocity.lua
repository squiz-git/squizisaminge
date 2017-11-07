-- Made by Squiz
-- "pk is not bhop" -iced coffee

hook.Add( "HUDPaint", "HUDVelocityBar", function()
    local Vel = math.Round(LocalPlayer():GetVelocity():Length()/2)
    surface.SetDrawColor( 0, 0, 0, 150 )
    surface.DrawRect( ScrW()/120, ScrH()/90, math.Clamp((Vel/2)+25,0,ScrW()-50), 32 )
end)

hook.Add("HUDPaint","HUDVelocityNumber",function()
    local Vel = math.Round(LocalPlayer():GetVelocity():Length())
    draw.Text({
    text=Vel,
    font="Trebuchet24",
    pos={ScrW()/90,ScrH()/70},
    xalign=0,
    yalign=0,
    color=Color(math.Clamp((math.sin(CurTime()/8)+1)*127.5,0,255), math.Clamp((math.sin(CurTime()/4)+1)*127.5,0,255) ,math.Clamp((math.sin(CurTime()/2)+1)*127.5,0,255),255)})
end)


