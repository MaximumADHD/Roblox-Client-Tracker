local Plugin = script.Parent.Parent.Parent.Parent
-- local Types = require(Plugin.Src.Types) -- Uncomment to access types
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local EditDebugpoint = require(Plugin.Src.Components.Breakpoints.EditDebugpoint)

local EditBreakpoint = Roact.PureComponent:extend("EditBreakpoint")

function EditBreakpoint:render()
	return Roact.createElement(EditDebugpoint)
end

ContextServices.mapToProps(EditBreakpoint, {
	Analytics = Analytics,
	Localization = Localization,
})

return EditBreakpoint
