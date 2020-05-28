local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local StartLeavingGame = require(InGameMenu.Actions.StartLeavingGame)

local CloseMenuButton = require(script.CloseMenuButton)
local HomeButton = require(script.HomeButton)

local GetFFlagInGameHomeIcon = require(InGameMenu.Flags.GetFFlagInGameHomeIcon)

local FFlagInGameMenuSmallerSideBar = require(InGameMenu.Flags.FFlagInGameMenuSmallerSideBar)

local validateProps = t.strictInterface({
	open = t.boolean,
	closeMenu = t.callback,
	goToHomePage = t.callback,
})

local function oldSideNavigation(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withStyle(function(style)
		return Roact.createElement("TextButton", {
			AutoButtonColor = false,
			Text = "",
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(0, FFlagInGameMenuSmallerSideBar and 64 or 100, 1, 0),
			Visible = props.open,
		}, {
			CloseMenuButton = Roact.createElement(CloseMenuButton, {
				onActivated = props.closeMenu,

				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 4),
			})
		})
	end)
end

local function newSideNavigation(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withStyle(function(style)
		return Roact.createElement("TextButton", {
			AutoButtonColor = false,
			Text = "",
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(0, FFlagInGameMenuSmallerSideBar and 64 or 100, 1, 0),
			Visible = props.open,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 4),
			}),
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, 4),
			}),
			CloseMenuButton = Roact.createElement(CloseMenuButton, {
				onActivated = props.closeMenu,
				layoutOrder = 1,
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 4),
			}),
			HomeButton = Roact.createElement(HomeButton, {
				onActivated = props.goToHomePage,
				layoutOrder = 2,
				anchorPoint = Vector2.new(0.5, 0),
				position = UDim2.new(0.5, 0, 0, 8),
			}),
		})
	end)
end

local SideNavigation = function(props)
	if GetFFlagInGameHomeIcon() then
		return newSideNavigation(props)
	end
	return oldSideNavigation(props)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	return {
		open = state.isMenuOpen,
	}
end,
function(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end,
		goToHomePage = function()
			--NOTE: placeholder action that will just exit the game
			dispatch(StartLeavingGame())
		end
	}
end)(SideNavigation)