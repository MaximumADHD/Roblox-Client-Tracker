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

local CloseMenuButton = require(script.CloseMenuButton)

local validateProps = t.strictInterface({
	open = t.boolean,
	closeMenu = t.callback,
})

local function SideNavigation(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			BackgroundColor3 = style.Theme.BackgroundUIContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundUIContrast.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(0, 100, 1, 0),
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
	}
end)(SideNavigation)