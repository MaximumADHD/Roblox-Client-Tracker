return function()
	local CorePackages = game:GetService("CorePackages")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux
	local UIBlox = InGameMenuDependencies.UIBlox
	local Images = UIBlox.App.ImageSet.Images

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local EducationalPopupDialog = require(script.Parent.EducationalPopupDialog)

	local mockProps = {
		bodyContents = {
			{
				icon = Images["icons/logo/block"],
				text = "Body 1",
				layoutOrder = 1
			},
			{
				icon = Images["icons/menu/home_on"],
				text = "Body 2",
				layoutOrder = 2
			},
			{
				icon = Images["icons/menu/games_on"],
				text = "Body 3",
				layoutOrder = 3
			},
		},
		cancelText = "Cancel",
		confirmText = "Confirm",
		titleText = "Title",
		titleBackgroundImageProps = {
			image = "rbxassetid://2610133241",
			imageHeight = 200,
		},
		screenSize = Vector2.new(1920, 1080),

		onDismiss = function()end,
		onCancel = function()end,
		onConfirm = function()end,

		blurBackground = true,
		visible = true,
	}

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				EducationalPopupDialog = Roact.createElement(EducationalPopupDialog, mockProps),
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
