--!nonstrict
return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")
	local GuiService = game:GetService("GuiService")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox
	local Cryo = require(CorePackages.Packages.Cryo)

	local InGameMenu = script.Parent.Parent
	local Flags = InGameMenu.Flags
	local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)
	local Constants = require(InGameMenu.Resources.Constants)
	local FocusHandlerContextProvider = require(script.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
	local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents


	local ConfirmationDialog = require(script.Parent.ConfirmationDialog)

	local dummyDialogProps = {
		bodyText = "Hello world!",
		cancelText = "Cancel",
		confirmText = "Confirm",
		titleText = "Title",

		bindReturnToConfirm = false,

		onCancel = function()
			print("cancel")
		end,
		onConfirm = function()
			print("confirm")
		end,
		blurBackground = false,
		visible = true,
	}

	local getMountableComponent = function(props)
		props = props or {}

		return Roact.createElement(UIBlox.Core.Style.Provider, {}, {
			FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(FocusHandlerContextProvider, {}, {
				ConfirmationDialog = Roact.createElement(
					ConfirmationDialog,
					Cryo.Dictionary.join(dummyDialogProps, props)
				)
			}) or nil,
			ConfirmationDialog = not GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(
				ConfirmationDialog,
				Cryo.Dictionary.join(dummyDialogProps, props)
			) or nil
		})
	end

	describe("Mounting and destroying", function()
		it("should create and destroy without errors", function()
			local element = getMountableComponent()

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should be portaled into CoreGui", function()
			local element = getMountableComponent()

			local instance = Roact.mount(element)
			expect(CoreGui:FindFirstChild("InGameMenuConfirmationDialog")).never.toBeNil()
			Roact.unmount(instance)
		end)
	end)

	describe("Focus management", function()
		it("Should not gain focus when gamepad is not the last used device", function()
			local element = getMountableComponent({ visible = false, inputType = Constants.InputType.MouseAndKeyboard })
			local tree = Roact.mount(element)

			Roact.update(tree, getMountableComponent({ visible = true }))
			expect(GuiService.SelectedCoreObject).toBeNil()

			Roact.unmount(tree)
		end)
		it("Should focus on the confirm button when it becomes visible and gamepad + FFlagInGameMenuController are enabled",
			function()
				local element = getMountableComponent({ visible = false, inputType = Constants.InputType.MouseAndKeyboard })
				local tree = Roact.mount(element)
				-- Nothing is focused as we open the dialog with mouse/keyboard
				expect(GuiService.SelectedCoreObject).toBeNil()

				waitForEvents()

				Roact.update(tree, getMountableComponent({ visible = true, inputType = Constants.InputType.Gamepad }))
				expect(tostring(GuiService.SelectedCoreObject)).toBe("ConfirmButton")

				Roact.unmount(tree)
				GuiService.SelectedCoreObject = nil
		end)
	end)
end
