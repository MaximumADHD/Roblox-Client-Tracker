local Constants = {}

Constants.TESTING = true

Constants.UNIMPLEMENTED_WARNING = "Unfortunately this feature is not active yet!"
Constants.OPERATION_SUCCESSFUL = "This operation was successful!"


Constants.INPUT_PANE_LAYOUT = {
    Navigation = 1,
    NameBox = 2,
    View = 3,
    ConfirmationButtons = 5,
}

Constants.RBXEVENT_ORDER =  {
    Warning = 1,
    Namespace = 2,
    Detail = 3,
    DetailType = 4,
}

Constants.MEM_STORAGE_ORDER = {
    Switch = 1,
    Key = 2,
    Value = 3,
}

Constants.VIEW_ORDER = {
    RBXEvent = 1,
    Theme = 2,
    MemStorage = 3,
}

Constants.APP_ORDER = {
    InputPane = 1,
    History = 2,
}

Constants.VIEW_ID = {
    RBXEvent = "RBXEvent",
    -- Theme = "Theme", -- Not Active, here for RIDE-490
    MemStorage = "MemStorage"
}

Constants.ROUTES = {
    MemStorage = {
        GetValue = "Get Value",
		SetValue = "Set Value",
		NewEntry = "New Entry",
    }
}

return Constants