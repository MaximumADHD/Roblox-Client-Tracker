--TODO (mwang) DEPRECATD, remove with FFlagStudioConvertGameSettingsToDevFramework
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local dialogKey = require(Plugin.Src.Keys.dialogKey)

local DialogProvider = Roact.Component:extend("DialogProvider")

function DialogProvider:init(props)
	local showDialog = props.showDialog

	if showDialog == nil then
		showDialog = function()
			error("No showDialog function was provided.")
		end
	end

	self._context[dialogKey] = showDialog
end

function DialogProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return DialogProvider