local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent
local sideBarWidth = 64
local Constants = require(InGameMenu.Resources.Constants)

local GlobalConfig = require(InGameMenu.GlobalConfig)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)

local VECTOR2_ZERO = Vector2.new(0,0)

local validateProps = t.strictInterface({
	currentPage = t.string,
	open = t.boolean,
	onActivated = t.callback,
	occupiedWidth = t.number,
	screenSize = t.Vector2,
})

local function ViewportOverlay(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	if props.screenSize == VECTOR2_ZERO then
		return nil
	end

	local isInitalPage = props.currentPage == Constants.InitalPageKey

	return withStyle(function(style)
		return Roact.createElement("Frame", {
			BackgroundColor3 = style.Theme.Overlay.Color,
			BackgroundTransparency = style.Theme.Overlay.Transparency,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = not isInitalPage and props.open,
			ZIndex = 0,
		}, {
			InputCapturer = Roact.createElement("TextButton", {
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, 0, 0, 0),
				Size = UDim2.new(1, -props.occupiedWidth, 1, 0),
				Text = "",
				[Roact.Event.Activated] = props.onActivated,
			})
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local occupiedWidth = sideBarWidth + 400

	return {
		currentPage = state.menuPage,
		open = state.isMenuOpen,
		occupiedWidth = occupiedWidth,
		screenSize = state.screenSize,
	}
end, function(dispatch)
	return {
		onActivated = function()
			dispatch(CloseMenu)
		end,
	}
end)(ViewportOverlay)
