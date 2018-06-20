local Immutable = require(script.Parent.Parent.Immutable)
local Constants = require(script.Parent.Parent.Constants)
local Config = require(script.Parent.Parent.Config)

local SetDevConsoleVisibility = require(script.Parent.Parent.Actions.SetDevConsoleVisibility)
local SetDevConsoleMinimized = require(script.Parent.Parent.Actions.SetDevConsoleMinimized)
local ChangeDevConsoleSize = require(script.Parent.Parent.Actions.ChangeDevConsoleSize)

return function(DisplayOptions, action)
	local displayOptions = DisplayOptions or {
		platform = Constants.Platform.Desktop, -- masterrace
		isVisible = false,
		isMinimized = false, -- false means windowed, otherwise shows up as a minimized bar
		position = Config.MainWindowElement.Position,
		size = Config.MainWindowElement.Size
	}

	if action.type == SetDevConsoleVisibility.name then
		local update = {
			isVisible = action.isVisible
		}
		if not update.isVisible then
			update.isMinimized = false
		end
		return Immutable.JoinDictionaries(displayOptions, update)

	elseif action.type == SetDevConsoleMinimized.name then
		return Immutable.Set(displayOptions, "isMinimized", action.isMinimized)

	elseif action.type == ChangeDevConsoleSize.name then
		-- Desktop should be the only one that can changes the devconsole Size
		if displayOptions.platform == Constants.Platform.Desktop then
			return Immutable.Set(displayOptions, "size", action.newSize)
		end
	end

	return displayOptions
end