game:DefineFastFlag("EnableCameraByDefault", false)

-- When this setting is set to True, if starting the app for first time: default video camera selection is on "System Default"
-- When this setting is set to False, if starting the app for first time: default video camera selection is "OFF"
return function()
    return game:GetFastFlag("EnableCameraByDefault")
end
