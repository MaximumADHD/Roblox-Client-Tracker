--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)
local Cryo = require(CorePackages.Packages.Cryo)

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
local SetGamepadNavigationDialogOpen = require(Actions.SetGamepadNavigationDialogOpen)

local FFlagRemoveTopBarInputTypeRodux = require(script.Parent.Parent.Flags.GetFFlagRemoveTopBarInputTypeRodux)()
local FFlagGamepadNavigationDialogABTest = require(script.Parent.Parent.Flags.FFlagGamepadNavigationDialogABTest)

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeMenuOpen = CoreGuiCommon.Flags.FFlagTopBarSignalizeMenuOpen

local Constants = require(TopBar.Constants)
local InputType = Constants.InputType

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeKeepOutAreas = CoreGuiCommon.Flags.FFlagTopBarSignalizeKeepOutAreas

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local initialDisplayOptions = {
	menuOpen = false,
	inspectMenuOpen = false,
	topbarEnabled = true, --If the top bar is enabled from the SetCore API
	isSmallTouchDevice = false,
	screenSize = Vector2.new(0, 0),
	inputType = if FFlagRemoveTopBarInputTypeRodux then nil else InputType.MouseAndKeyBoard,
	isGamepadMenuOpen = false,
	isGamepadNavigationDialogOpen = if FFlagGamepadNavigationDialogABTest then false else nil,
	keepOutAreas = {},
}

local DisplayOptions = Rodux.createReducer(initialDisplayOptions, {
	[if FFlagTopBarSignalizeMenuOpen then "" else SetMenuOpen.name] = if FFlagTopBarSignalizeMenuOpen then nil else function(state, action)
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

	[SetInputType.name] = if not FFlagRemoveTopBarInputTypeRodux then 
		function(state, action)
			return Cryo.Dictionary.join(state, {
				inputType = action.inputType,
			}) 
		end
	else nil,

	[if FFlagTopBarSignalizeMenuOpen then "" else SetInspectMenuOpen.name] = if FFlagTopBarSignalizeMenuOpen then nil else function(state, action)
		return Cryo.Dictionary.join(state, {
			inspectMenuOpen = action.inspectMenuOpen,
		})
	end,

	[SetGamepadMenuOpen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isGamepadMenuOpen = action.open,
			isGamepadNavigationDialogOpen = if FFlagGamepadNavigationDialogABTest then false else nil,
		})
	end,

	[SetGamepadNavigationDialogOpen.name] = if FFlagGamepadNavigationDialogABTest
		then function(state, action)
			return Cryo.Dictionary.join(state, {
				isGamepadNavigationDialogOpen = action.open,
			})
		end
		else nil,

	[if FFlagTopBarSignalizeKeepOutAreas then "" else SetKeepOutArea.name] = if FFlagTopBarSignalizeKeepOutAreas then nil else function(state, action)
		local keepOutAreas = table.clone(state.keepOutAreas)
		keepOutAreas[action.id] = {
			size = action.size,
			position = action.position,
		}

		return Cryo.Dictionary.join(state, {
			keepOutAreas = keepOutAreas,
		})
	end,

	[if FFlagTopBarSignalizeKeepOutAreas then "" else RemoveKeepOutArea.name] = if FFlagTopBarSignalizeKeepOutAreas then nil else function(state, action)
		local keepOutAreas = table.clone(state.keepOutAreas)
		keepOutAreas[action.id] = nil

		return Cryo.Dictionary.join(state, {
			keepOutAreas = keepOutAreas,
		})
	end,
})

return DisplayOptions
