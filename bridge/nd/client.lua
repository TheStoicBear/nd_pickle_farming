if GetResourceState('ND_Core') ~= 'started' then return end

function ShowNotification(text)
    lib.notify({
        description = text,
        type = 'inform'
    })
end

function ShowHelpNotification(text)
    AddTextEntry('qbHelpNotification', text)
    BeginTextCommandDisplayHelp('qbHelpNotification')
    EndTextCommandDisplayHelp(0, false, false, -1)
end

function ServerCallback(name, delay, cb, ...)
    lib.callback(name, delay, cb, ...)
end

RegisterNetEvent(GetCurrentResourceName() .. ":showNotification", function(text)
    ShowNotification(text)
end)
