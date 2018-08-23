local Immutable = require(script.Parent.Parent.Immutable)
local Constants = require(script.Parent.Parent.Constants)

local SetDevConsoleVisibility = require(script.Parent.Parent.Actions.SetDevConsoleVisibility)
local SetDevConsoleMinimized = require(script.Parent.Parent.Actions.SetDevConsoleMinimized)
local ChangeDevConsoleSize = require(script.Parent.Parent.Actions.ChangeDevConsoleSize)
local SetDevConsolePosition = require(script.Parent.Parent.Actions.SetDevConsolePosition)
local SetActiveTab = require(script.Parent.Parent.Actions.SetActiveTab)

return function(DisplayOptions, action)
	local displayOptions = DisplayOptions or {
		formFactor = Constants.FormFactor.Large, -- masterrace
		isVisible = false,
		isMinimized = false, -- false means windowed, otherwise shows up as a minimized bar
		position = Constants.MainWindowInit.Position,
		size = Constants.MainWindowInit.Size
	}

	if action.type == SetDevConsoleVisibility.name then
		local update = {
			isVisible = action.isVisible
		}

		if update.isVisible then
			update.isMinimized = false
		end
		return Immutable.JoinDictionaries(displayOptions, update)

	elseif action.type == SetDevConsolePosition.name then
		return Immutable.Set(displayOptions, "position", action.position)

	elseif action.type == SetDevConsoleMinimized.name then
		return Immutable.Set(displayOptions, "isMinimized", action.isMinimized)

	elseif action.type == ChangeDevConsoleSize.name then
		-- Desktop should be the only one that can changes the devconsole Size
		if displayOptions.formFactor == Constants.FormFactor.Large then
			return Immutable.Set(displayOptions, "size", action.newSize)
		end
	elseif action.type == SetActiveTab.name then
		return Immutable.Set(displayOptions, "isMinimized", false)
	end

	return displayOptions
end