local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local LoadingIndicator = require(Framework.UI.Components.LoadingIndicator)

return Roact.createElement(LoadingIndicator)
