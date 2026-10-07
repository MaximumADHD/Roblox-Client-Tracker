--!nonstrict
local CollectionService = game:GetService("CollectionService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local afterAll = JestGlobals.afterAll
local beforeAll = JestGlobals.beforeAll

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local Cryo = require(CorePackages.Packages.Cryo)
local Foundation = require(CorePackages.Packages.Foundation)
local FFlagFoundationFontFaceMigration = Foundation.Utility.Flags.FoundationFontFaceMigration
local foundationTypography = Foundation.Utility.getTokens(Foundation.Enums.ColorMode.Dark).Typography
local Style = require(CorePackages.Workspace.Packages.Style)
local getTextSizeSpy = jest.spyOn(Style, "GetTextSize")

local FOUNDATION_BUTTON_TAG = "data-testid=--foundation-button"

local InGameMenu = script.Parent.Parent
local Flags = InGameMenu.Flags
local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)
local Constants = require(InGameMenu.Resources.Constants)
local FFlagIGMDialogButtonsUseUIBloxButton = require(InGameMenu.Flags.FFlagIGMDialogButtonsUseUIBloxButton)
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

	return UnitTestHelpers.createStyleProvider({
		FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory()
				and Roact.createElement(FocusHandlerContextProvider, {}, {
					ConfirmationDialog = Roact.createElement(
						ConfirmationDialog,
						Cryo.Dictionary.join(dummyDialogProps, props)
					),
				})
			or nil,
		ConfirmationDialog = not GetFFlagIGMGamepadSelectionHistory()
				and Roact.createElement(ConfirmationDialog, Cryo.Dictionary.join(dummyDialogProps, props))
			or nil,
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

	if FFlagFoundationFontFaceMigration then
		it("should measure body text without temporary padding", function()
			jest.clearAllMocks()
			local instance = Roact.mount(getMountableComponent())

			expect(getTextSizeSpy).toHaveBeenCalledWith(
				dummyDialogProps.bodyText,
				expect.anything(),
				foundationTypography.BodyLarge.Font,
				expect.anything(),
				{ addTemporaryPadding = false }
			)

			Roact.unmount(instance)
		end)
	end
end)

if FFlagIGMDialogButtonsUseUIBloxButton then
	describe("Button styling (SVR-1583)", function()
		local originalUseFoundationButton
		beforeAll(function()
			originalUseFoundationButton = UIBlox.Config.useFoundationButton
			UIBlox.Config.useFoundationButton = true
		end)
		afterAll(function()
			UIBlox.Config.useFoundationButton = originalUseFoundationButton
		end)

		it("renders the confirm and cancel buttons via the UIBlox (non-Foundation) path", function()
			local instance = Roact.mount(getMountableComponent())

			local dialog = CoreGui:FindFirstChild("InGameMenuConfirmationDialog")
			expect(dialog).never.toBeNil()
			local confirmButton = dialog:FindFirstChild("ConfirmButton", true)
			local cancelButton = dialog:FindFirstChild("CancelButton", true)
			expect(confirmButton).never.toBeNil()
			expect(cancelButton).never.toBeNil()

			expect(CollectionService:HasTag(confirmButton, FOUNDATION_BUTTON_TAG)).toBe(false)
			expect(CollectionService:HasTag(cancelButton, FOUNDATION_BUTTON_TAG)).toBe(false)

			Roact.unmount(instance)
		end)
	end)
end

describe("Focus management", function()
	it("Should not gain focus when gamepad is not the last used device", function()
		local element = getMountableComponent({ visible = false, inputType = Constants.InputType.MouseAndKeyboard })
		local tree = Roact.mount(element)

		Roact.update(tree, getMountableComponent({ visible = true }))
		expect(GuiService.SelectedCoreObject).toBeNil()

		Roact.unmount(tree)
	end)
	it(
		"Should focus on the confirm button when it becomes visible and gamepad + FFlagInGameMenuController are enabled",
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
		end
	)
end)
