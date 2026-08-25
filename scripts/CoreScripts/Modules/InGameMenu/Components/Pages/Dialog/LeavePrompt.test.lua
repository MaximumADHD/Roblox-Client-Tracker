local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Rodux = InGameMenuDependencies.Rodux
local RoactRodux = InGameMenuDependencies.RoactRodux
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local InGameMenu = script.Parent.Parent.Parent.Parent
local reducer = require(InGameMenu.reducer)
local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

local FocusHandlerContextProvider =
	require(script.Parent.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
local LeavePrompt = require(script.Parent.LeavePrompt)

it("should create and destroy without errors", function()
	local leavePrompt = Roact.createElement(LeavePrompt, {
		titleText = "Title",
		bodyText = "BodyText",
		confirmText = "confirmText",
		cancelText = "cancelText",
		onConfirm = function() end,
		onCancel = function() end,
	})

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory()
					and Roact.createElement(FocusHandlerContextProvider, {}, {
						LeavePrompt = leavePrompt,
					})
				or nil,
			LeavePrompt = not GetFFlagIGMGamepadSelectionHistory() and leavePrompt or nil,
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
