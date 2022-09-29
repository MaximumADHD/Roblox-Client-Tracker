local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local withStyle = UIBlox.Core.Style.withStyle
local Interactable = UIBlox.Core.Control.Interactable
local ControlState = UIBlox.Core.Control.Enum.ControlState
local Images = UIBlox.App.ImageSet.Images

local IconButton = Roact.PureComponent:extend("IconButton")

local BACKGROUND_SIZE = 32

local OVERLAY_ASSET = Images["component_assets/circle_17"]

IconButton.validateProps = t.strictInterface({
	icon = t.union(t.string, t.table),
	iconSize = t.integer,

	onActivated = t.callback,
	onHover = t.optional(t.callback),
})

function IconButton:init()
	self:setState({
		controlState = ControlState.Default,
	})

	self.controlStateUpdated = function(oldControlState, newControlState)
		if self.props.onHover and newControlState == ControlState.Hover then
			self.props.onHover()
		end
		self:setState({
			controlState = newControlState,
		})
	end
end

function IconButton:render()
	return withStyle(function(style)
		local overlayTheme = {
			Color = Color3.new(1, 1, 1),
			Transparency = 1,
		}

		if self.state.controlState == ControlState.Pressed then
			overlayTheme = style.Theme.BackgroundOnPress
		elseif self.state.controlState == ControlState.Hover then
			overlayTheme = style.Theme.BackgroundOnHover
		end

		return Roact.createElement(Interactable, {
			onStateChanged = self.controlStateUpdated,

			ZIndex = 1,
			BackgroundTransparency = 1,
			Position = UDim2.fromScale(0, 1),
			AnchorPoint = Vector2.new(0, 1),
			Size = UDim2.fromOffset(BACKGROUND_SIZE, BACKGROUND_SIZE),
			Image = "rbxasset://textures/ui/TopBar/iconBase.png",

			[Roact.Event.Activated] = self.props.onActivated,
		}, {
			Icon = Roact.createElement(ImageSetLabel, {
				Size = UDim2.fromOffset(self.props.iconSize, self.props.iconSize),
				Position = UDim2.fromScale(0.5, 0.5),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = self.props.icon,
				ImageColor3 = style.Theme.IconEmphasis.Color,
				ImageTransparency = style.Theme.IconEmphasis.Transparency,
				ZIndex = 1,
			}),

			StateOverlay = Roact.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,

				Image = OVERLAY_ASSET,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter =  Rect.new(8, 8, 8, 8),

				ImageColor3 = overlayTheme.Color,
				ImageTransparency = overlayTheme.Transparency,
				Size = UDim2.fromScale(1, 1),
				ZIndex = 2,
			}),
		})
	end)
end

return IconButton
