local function toggleNuiFrame(shouldShow)
  SetNuiFocus(shouldShow, shouldShow)
  SendReactMessage('setVisible', shouldShow)
end

RegisterCommand('show-nui', function()
      toggleNuiFrame(true)
end, false)

RegisterNUICallback('hideFrame', function(_, cb)
  toggleNuiFrame(false)
  SetNuiFocus(false, false)
  SendReactMessage('setVisible', false)
  debugPrint('Hide NUI frame')
  cb({})
end)
