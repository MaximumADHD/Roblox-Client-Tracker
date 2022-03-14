--[[
	Generic component that manages flow of provided screens. Each screen is given callbacks to control
	the flow. By default, the flow will go in linear order of the screens provided, cycling back to the
	first screen if going next from the last screen. If a developer wishes to implement custom behavior,
	they must provide implementations for the three callback props GetNextIndex, GetPreviousIndex, and 
	OnScreenChanged.

	Required Props:
		table Screens: list of Roact components that are rendered in the flow.

	Optional Props:
		callback GetNextIndex: calculates index for the next screen, takes in current index and must return a number.
		callback GetPreviousIndex: calculates index for the previous screen, takes in current index and must return a number
		callback OnScreenChanged: fired whenever the flow has changed screens.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local Util = require(Framework.Util)

local ScreenFlow = Roact.PureComponent:extend("ScreenFlow")

local Typecheck = Util.Typecheck
Typecheck.wrap(ScreenFlow, script)

function ScreenFlow:init()
	self.state = {
		currentScreenIndex = 1
	}

	local useCustomBehavior = self.props.GetNextIndex and self.props.GetPreviousIndex and self.props.OnScreenChanged

	self.OnScreenChangedDefault = function(index)
		self:setState({
			currentScreenIndex = index,
		})
	end

	self.GetNextIndexDefault = function(currentIndex)
		local props = self.props
		local screens = props.Screens
		assert(#screens > 0)

		local newIndex = currentIndex + 1

		newIndex = newIndex % #screens
		return newIndex == 0 and #screens or newIndex
	end

	self.GetPreviousIndexDefault = function(currentIndex)
		local newIndex = currentIndex - 1
		return newIndex
	end

	self.GoToNext = function()
		local currentIndex = self.state.currentScreenIndex
		if useCustomBehavior then
			self.GoTo(self.props.GetNextIndex(currentIndex))
		else
			self.GoTo(self.GetNextIndexDefault(currentIndex))
		end
	end

	self.GoToPrevious = function()
		local currentIndex = self.state.currentScreenIndex
		if useCustomBehavior then
			self.GoTo(self.props.GetPreviousIndex(currentIndex))
		else
			self.GoTo(self.GetPreviousIndexDefault(currentIndex))
		end
	end

	self.GoTo = function(index)
		local props = self.props

		local screens = props.Screens
		assert(#screens > 0)
		index = math.clamp(index, 1, #screens)
		self:setState({
			currentScreenIndex = index,
		})

		if useCustomBehavior then
			self.props.OnScreenChanged(index)
		else
			self.OnScreenChangedDefault(index)
		end
	end
end

function ScreenFlow:render()
	local props = self.props
	local state = self.state

	local screens = props.Screens
	local currentScreenIndex = state.currentScreenIndex
	local currentScreen = screens[currentScreenIndex]
	assert(currentScreen)

	return Roact.createElement(currentScreen, {
		GoToNext = self.GoToNext,
		GoToPrevious = self.GoToPrevious,
	})
end

return ScreenFlow