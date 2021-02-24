local Config = {} -- Config Base Table

Config.TimeoutDB = 30 -- In seconds

Config.Map = {
    Areas = {

    }, -- Blips based on radius.
    Blips = {

    }, -- Blips.
    SafeZones = {

    }, -- Zones to protect the civilians.
    InfoPoints = {

    } -- Points of information.
}

Config.Survival = {
    setComma = true -- Set comma status, if it will be on server or not.
}

Config.Roles = {
    [1] = "Jucator", [2] = "Helper", [3] = "Moderator", [4] = "Administrator", [5] = "Fondator" -- Roles in the order of priority.
}

return Config

