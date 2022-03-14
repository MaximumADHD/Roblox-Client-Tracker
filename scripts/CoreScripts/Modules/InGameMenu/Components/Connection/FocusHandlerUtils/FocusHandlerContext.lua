local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact

return Roact.createContext({
    currentHandlerId = nil,
    candidateHandlerId = nil,
    previousSelections = {},
    requestFocusForHandlerId = function() end,
    forgetLastSelectionForHandlerId = function() end,
    blurCurrentFocusHandler = function() end,
})
