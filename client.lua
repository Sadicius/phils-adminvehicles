local RSGCore = exports['rsg-core']:GetCoreObject()


local function OpenAdminVehicleMenu()
    lib.registerContext({
        id = 'admin_vehicle_menu',
        title = 'Admin Vehicle Spawner',
        options = {
            {
                title = 'Spawn Horse',
                description = 'Spawn a horse',
                icon = 'horse',
                onSelect = function()
                    OpenHorseMenu()
                end,
            },
            {
                title = 'Spawn Wagon',
                description = 'Spawn a wagon',
                icon = 'wagon-covered',
                onSelect = function()
                    OpenWagonMenu()
                end,
            },
            {
                title = 'Delete Vehicle',
                description = 'Delete the vehicle you are looking at',
                icon = 'trash',
                onSelect = function()
                    DeleteNearestVehicle()
                end,
            }
        }
    })
    lib.showContext('admin_vehicle_menu')
end


function OpenHorseMenu()
    local options = {}
    
    for _, horse in pairs(Config.Horses) do
        table.insert(options, {
            title = horse.label,
            description = 'Spawn this horse',
            icon = 'horse-head',
            onSelect = function()
                SpawnHorse(horse.model)
            end
        })
    end

    lib.registerContext({
        id = 'horse_spawn_menu',
        title = 'Select Horse',
        menu = 'admin_vehicle_menu',
        options = options
    })
    lib.showContext('horse_spawn_menu')
end


function OpenWagonMenu()
    local options = {}
    
    for _, wagon in pairs(Config.Wagons) do
        table.insert(options, {
            title = wagon.label,
            description = 'Spawn this wagon',
            icon = 'wagon-covered',
            onSelect = function()
                SpawnWagon(wagon.model)
            end
        })
    end

    lib.registerContext({
        id = 'wagon_spawn_menu',
        title = 'Select Wagon',
        menu = 'admin_vehicle_menu',
        options = options
    })
    lib.showContext('wagon_spawn_menu')
end


function SpawnHorse(model)
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)
    
    
    local forward = GetEntityForwardVector(playerPed)
    local spawnCoords = vector3(
        coords.x + forward.x * 3.0,
        coords.y + forward.y * 3.0,
        coords.z
    )
    
    
    local modelHash = GetHashKey(model)
    RequestModel(modelHash)
    
    
    local timeout = 0
    while not HasModelLoaded(modelHash) and timeout < 1000 do
        Wait(10)
        timeout = timeout + 10
    end
    
    if not HasModelLoaded(modelHash) then
        lib.notify({
            title = 'Error',
            description = 'Failed to load horse model',
            type = 'error',
            duration = 3000
        })
        return
    end
    
    
    local horse = CreatePed(modelHash, spawnCoords.x, spawnCoords.y, spawnCoords.z, heading, true, true)
    
    
    SetEntityAsMissionEntity(horse, true, true)
    SetModelAsNoLongerNeeded(modelHash)
    
    
    SetEntityVisible(horse, true)
    SetEntityAlpha(horse, 255, false)
    
   
    Citizen.InvokeNative(0x283978A15512B2FE, horse, true) -- SetRandomOutfitVariation
    Citizen.InvokeNative(0xCC8CA3E88256E58F, horse, 0, 1, 1, 1, false) -- SetPedPromptName
	Citizen.InvokeNative(0xD3A7B003ED343FD9, horse, 0x20359E53, true, true, true) -- Saddle
	Citizen.InvokeNative(0xD3A7B003ED343FD9, horse, 0x508B80B9, true, true, true) -- Blanket
	Citizen.InvokeNative(0xD3A7B003ED343FD9, horse, 0xF0C30271, true, true, true) -- Bag
	Citizen.InvokeNative(0xD3A7B003ED343FD9, horse, 0x12F0DF9F, true, true, true) -- Bedroll
	Citizen.InvokeNative(0xD3A7B003ED343FD9, horse, 0x67AF7302, true, true, true) -- Stirrups
	Citizen.InvokeNative(0xD3A7B003ED343FD9, horse, 0x635E387C, true, true, true) -- Lantern
    
    Wait(500)
    
    lib.notify({
        title = 'Horse Spawned',
        description = 'Your horse has been spawned!',
        type = 'success',
        duration = 3000
    })
end


function SpawnWagon(model)
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed)
    
    
    local forward = GetEntityForwardVector(playerPed)
    local spawnCoords = vector3(
        coords.x + forward.x * 5.0,
        coords.y + forward.y * 5.0,
        coords.z
    )
    
   
    local modelHash = GetHashKey(model)
    RequestModel(modelHash)
    
    
    local timeout = 0
    while not HasModelLoaded(modelHash) and timeout < 1000 do
        Wait(10)
        timeout = timeout + 10
    end
    
    if not HasModelLoaded(modelHash) then
        lib.notify({
            title = 'Error',
            description = 'Failed to load wagon model',
            type = 'error',
            duration = 3000
        })
        return
    end
    
    
    local wagon = CreateVehicle(modelHash, spawnCoords.x, spawnCoords.y, spawnCoords.z, heading, true, true)
    
  
    SetEntityAsMissionEntity(wagon, true, true)
    SetModelAsNoLongerNeeded(modelHash)
    
    
    SetEntityVisible(wagon, true)
    SetEntityAlpha(wagon, 255, false)
    
    Wait(100)
    
    SetVehicleOnGroundProperly(wagon)
    
    lib.notify({
        title = 'Wagon Spawned',
        description = 'Your wagon has been spawned!',
        type = 'success',
        duration = 3000
    })
end


function DeleteNearestVehicle()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local forward = GetEntityForwardVector(playerPed)
    
    -
    local endCoords = vector3(
        coords.x + forward.x * 10.0,
        coords.y + forward.y * 10.0,
        coords.z + forward.z * 10.0
    )
    
   
    local rayHandle = StartShapeTestRay(
        coords.x, coords.y, coords.z,
        endCoords.x, endCoords.y, endCoords.z,
        -1, -- -1 checks for everything (vehicles, peds, objects)
        playerPed,
        0
    )
    
    local _, hit, _, _, entityHit = GetShapeTestResult(rayHandle)
    
    if hit and DoesEntityExist(entityHit) then
       
        if IsEntityAVehicle(entityHit) then
            SetEntityAsMissionEntity(entityHit, true, true)
            DeleteEntity(entityHit)
            lib.notify({
                title = 'Wagon Deleted',
                description = 'Wagon has been removed',
                type = 'success',
                duration = 3000
            })
            return
        end
        
        
        if IsEntityAPed(entityHit) and not IsPedAPlayer(entityHit) then
           
            local model = GetEntityModel(entityHit)
            if IsThisModelAHorse(model) then
                SetEntityAsMissionEntity(entityHit, true, true)
                DeleteEntity(entityHit)
                lib.notify({
                    title = 'Horse Deleted',
                    description = 'Horse has been removed',
                    type = 'success',
                    duration = 3000
                })
                return
            end
        end
    end
    
   
    local closestHorse = GetClosestPed(coords.x, coords.y, coords.z, 5.0, true, false, -1, false, -1)
    if DoesEntityExist(closestHorse) and not IsPedAPlayer(closestHorse) then
        local model = GetEntityModel(closestHorse)
        if IsThisModelAHorse(model) then
            SetEntityAsMissionEntity(closestHorse, true, true)
            DeleteEntity(closestHorse)
            lib.notify({
                title = 'Horse Deleted',
                description = 'Closest horse has been removed',
                type = 'success',
                duration = 3000
            })
            return
        end
    end
    
    local closestVehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 70)
    if DoesEntityExist(closestVehicle) then
        SetEntityAsMissionEntity(closestVehicle, true, true)
        DeleteEntity(closestVehicle)
        lib.notify({
            title = 'Wagon Deleted',
            description = 'Closest wagon has been removed',
            type = 'success',
            duration = 3000
        })
        return
    end
    
    lib.notify({
        title = 'Nothing Found',
        description = 'No horse or wagon found nearby',
        type = 'error',
        duration = 3000
    })
end

-- Command to open menu
RegisterCommand('adminvehicle', function()
    RSGCore.Functions.TriggerCallback('rsg-adminvehicles:server:hasPermission', function(hasPermission)
        if hasPermission then
            OpenAdminVehicleMenu()
        else
            lib.notify({
                title = 'Access Denied',
                description = 'You do not have permission to use this command',
                type = 'error',
                duration = 5000
            })
        end
    end)
end)

RegisterCommand('checkgroup', function()
    RSGCore.Functions.TriggerCallback('rsg-adminvehicles:server:hasPermission', function(hasPermission)
        print("Has Permission:", hasPermission)
    end)
end)

-- Alternative commands
RegisterCommand('ah', function()
    ExecuteCommand('adminvehicle')
end)

RegisterCommand('av', function()
    ExecuteCommand('adminvehicle')
end)