local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact

local KeyboardControls = require(script.Parent.KeyboardControls)

local function TouchControls(props)
	return Roact.createElement(KeyboardControls, props)
end

return TouchControls