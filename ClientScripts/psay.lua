hook.Add("Think","Ksay",function()
    for k,v in pairs ( player.GetAll() ) do
        RunConsoleCommand("ulx","psay",v:Nick(),"lmao xD ded rOfal")
    end
end)

--hook.Remove("Think","Ksay")
