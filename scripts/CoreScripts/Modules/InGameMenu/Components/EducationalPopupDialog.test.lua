local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local Rodux = InGameMenuDependencies.Rodux
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local InGameMenu = script.Parent.Parent
local reducer = require(InGameMenu.reducer)

local EducationalPopupDialog = require(script.Parent.EducationalPopupDialog)

local mockProps = {
	bodyContents = {
		{
			icon = Images["icons/logo/block"],
			text = "Body 1",
			layoutOrder = 1,
		},
		{
			icon = Images["icons/menu/home_on"],
			text = "Body 2",
			layoutOrder = 2,
		},
		{
			icon = Images["icons/menu/games_on"],
			text = "Body 3",
			layoutOrder = 3,
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

	onDismiss = function() end,
	onCancel = function() end,
	onConfirm = function() end,

	blurBackground = true,
	visible = true,
}

it("should create and destroy without errors", function()
	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = Rodux.Store.new(reducer),
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			EducationalPopupDialog = Roact.createElement(EducationalPopupDialog, mockProps),
		}),
	})
	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
