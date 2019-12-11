return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local UIBlox = InGameMenuDependencies.UIBlox

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

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

	it("should create and destroy without errors", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			ConfirmationDialog = Roact.createElement(ConfirmationDialog, dummyDialogProps),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should be portaled into CoreGui", function()
		local element = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = appStyle,
		}, {
			ConfirmationDialog = Roact.createElement(ConfirmationDialog, dummyDialogProps),
		})

		local instance = Roact.mount(element)
		expect(CoreGui:FindFirstChild("InGameMenuConfirmationDialog")).to.never.equal(nil)
		Roact.unmount(instance)
	end)
end