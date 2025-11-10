local RSGCore = exports['rsg-core']:GetCoreObject()

RSGCore.Functions.CreateCallback('rsg-adminvehicles:server:hasPermission', function(source, cb)
    local Player = RSGCore.Functions.GetPlayer(source)
    if not Player then 
        cb(false)
        return 
    end
    
   
    local playerGroup = Player.PlayerData.group
    local playerPermission = Player.PlayerData.permission
    
    
    
    
    for _, group in pairs(Config.AdminGroups) do
        if playerGroup == group or playerPermission == group then
            cb(true)
            return
        end
    end
    
   
    if RSGCore.Functions.HasPermission(source, 'admin') or RSGCore.Functions.HasPermission(source, 'god') then
        cb(true)
        return
    end
    
    cb(false)
end)
