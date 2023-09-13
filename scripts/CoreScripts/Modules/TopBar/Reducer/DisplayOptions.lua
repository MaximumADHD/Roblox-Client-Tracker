--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local TopBar = script.Parent.Parent
local Actions = TopBar.Actions
local SetMenuOpen = require(Actions.SetMenuOpen)
local SetTopBarEnabled = require(Actions.SetTopBarEnabled)
local SetSmallTouchDevice = require(Actions.SetSmallTouchDevice)
local SetScreenSize = require(Actions.SetScreenSize)
local SetKeepOutArea = require(Actions.SetKeepOutArea)
local RemoveKeepOutArea = require(Actions.RemoveKeepOutArea)
local SetInputType = require(Actions.SetInputType)
local SetInspectMenuOpen = require(Actions.SetInspectMenuOpen)
local SetGamepadMenuOpen = require(Actions.SetGamepadMenuOpen)

local Constants = require(TopBar.Constants)
local InputType = Constants.InputType

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local initialDisplayOptions = {
	menuOpen = false,
	inspectMenuOpen = false,
	topbarEnabled = true, --If the top bar is enabled from the SetCore API
	isSmallTouchDevice = false,
	screenSize = Vector2.new(0, 0),
	inputType = InputType.MouseAndKeyBoard,
	isGamepadMenuOpen = false,
	keepOutAreas = {},
}

local DisplayOptions = Rodux.createReducer(initialDisplayOptions, {
	[SetMenuOpen.name] = function(state, action)
		--when the main menu opens, close the gamepad menu
		local gamepadMenuOpen = state.isGamepadMenuOpen
		if not state.menuOpen and action.menuOpen then
			gamepadMenuOpen = false
		end

		return Cryo.Dictionary.join(state, {
			menuOpen = action.menuOpen,
			isGamepadMenuOpen = gamepadMenuOpen,
		})
	end,

	[SetTopBarEnabled.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			topbarEnabled = action.enabled,
		})
	end,

	[SetSmallTouchDevice.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isSmallTouchDevice = action.isSmallTouchDevice,
		})
	end,

	[SetScreenSize.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			screenSize = action.screenSize,
		})
	end,

	[SetInputType.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			inputType = action.inputType,
		})
	end,

	[SetInspectMenuOpen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			inspectMenuOpen = action.inspectMenuOpen
		})
	end,

	[SetGamepadMenuOpen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isGamepadMenuOpen = action.open,
		})
	end,

	[SetKeepOutArea.name] = function (state, action)
		local keepOutAreas = table.clone(state.keepOutAreas)
		keepOutAreas[action.id] = {
			size = action.size,
			position = action.position,
		}

		return Cryo.Dictionary.join(state, {
			keepOutAreas = keepOutAreas,
		})
	end,

	[RemoveKeepOutArea.name] = function (state, action)
		local keepOutAreas = table.clone(state.keepOutAreas)
		keepOutAreas[action.id] = nil

		return Cryo.Dictionary.join(state, {
			keepOutAreas = keepOutAreas,
		})
	end,
})

return DisplayOptions
