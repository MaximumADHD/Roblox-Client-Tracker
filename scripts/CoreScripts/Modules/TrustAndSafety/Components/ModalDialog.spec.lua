return function()
	local CorePackages = game:GetService("CorePackages")

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)
	local UIBlox = require(CorePackages.UIBlox)

	local ModalDialog = require(script.Parent.ModalDialog)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	describe("mount & unmount", function()
		it("empty page", function()
			local element = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				ModalDialog = Roact.createElement(ModalDialog, {
					visible = true,
					screenSize = Vector2.new(480, 320),	-- iPhone 4s
					onDismiss = function() end,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("empty page with close button", function()
			local element = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				ModalDialog = Roact.createElement(ModalDialog, {
					visible = true,
					screenSize = Vector2.new(568, 320),	-- iPhone 5
					titleText = "Title",
					showCloseButton = true,
					headerBar = nil,
					contents = nil,
					actionButtons = nil,
					onDismiss = function() end,
					onBackButtonActivated = nil,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("empty page with back button", function()
			local element = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				ModalDialog = Roact.createElement(ModalDialog, {
					visible = true,
					screenSize = Vector2.new(667, 375),	-- iPhone 6
					titleText = "Title",
					showCloseButton = false,
					headerBar = nil,
					contents = nil,
					actionButtons = nil,
					onDismiss = function() end,
					onBackButtonActivated = function() end,
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
