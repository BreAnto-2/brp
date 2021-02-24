AddEventHandler("BRP:save",function()
    for indexOf,User in ipairs(BRP.users) do
        User.userData.positionPed = GetEntityCoords(GetPlayerPed(User.sourceId))
    end
end)

AddEventHandler("BRP:playerSpawned", function(userId, sourceId, firstSpawn)
    if not firstSpawn then
        BRPclient.teleport(sourceId, {359.15325927734,-589.62548828125,28.802268981934})
    else
        local userData = BRP.getUserData(userId)
        
        if not userData.survivalPed.comma then
            BRPclient.teleport(sourceId, {userData.positionPed.x,userData.positionPed.y,userData.positionPed.z})
        else
            BRPclient.teleport(sourceId, {359.15325927734,-589.62548828125,28.802268981934})
        end
    end
end)