if Config.EnableDebugMode then
    print("[DEBUG] server/server.lua loaded")
    if Config.Framework == 'qb' then
        print('[DEBUG] QBCore Detected')
    elseif Config.Framework == 'qbx' then 
        print('[DEBUG] QBox Detected')
    else
        print('[DEBUG] No Framework Detected')
    end
end

local QBCore = nil

if Config.Framework == 'qb' or Config.Framework == 'qbx' then 
    QBCore = exports['qb-core']:GetCoreObject()
else
    print('[ERROR] NO FRAMEWORK DETECTED')
end


------------------------------
-- FUNCTIONS
------------------------------

local function hasAdminPermissions(src)
    local admin_role = Config.AdminGroup
    local admin_status = IsPlayerAceAllowed(src, admin_role)
    return admin_status or IsPlayerAceAllowed(src, 'command')
end

------------------------------
--CALLBACKS
------------------------------