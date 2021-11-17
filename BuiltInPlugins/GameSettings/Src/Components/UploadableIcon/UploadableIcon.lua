--[[
	Represents some icon. When hovered, it shows a change option.

	Props:
		bool Visible = Whether this icon is currently visible.
		bool Review = Whether this icon is under review by moderation.
		string Image = The full icon image asset to display.
			This prop should never be nil when Visible is true, because a nil Icon should
			trigger a NewUploadableIcon component to render rather than this.
		function OnClick = A callback invoked when this icon is clicked.
]]

local FALLBACK_IMAGE = "rbxasset://textures/GameSettings/ModeratedAsset.jpg"

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework).ContextServices
local withContext = ContextServices.withContext

local DEPRECATED_Constants = require(Plugin.Src.Util.DEPRECATED_Constants)

local UploadableIcon = Roact.PureComponent:extend("UploadableIcon")

function UploadableIcon:init()
	self.state = {
		Hovering = false,
	}
end

function UploadableIcon:mouseHoverChanged(hovering)
	local props = self.props

	-- TODO: change to use HoverArea from Developer Framework
	if hovering then
		props.Mouse:__pushCursor("PointingHand")
	else
		props.Mouse:__resetCursor()
	end

	self:setState({
		Hovering = hovering,
	})
end

function UploadableIcon:render()
	local image = self.props.Image
	local review = self.props.Review or false
	local preview = self.props.Preview or false
	local hover = self.state.Hovering

	local theme = self.props.Theme:get("Plugin")
	local localization = self.props.Localization

	return Roact.createElement("ImageLabel", {
		Visible = self.props.Visible,
		Size = UDim2.new(0, 150, 0, 150),
		BackgroundTransparency = 1,
		ClipsDescendants = true,

		-- We can't check whether the icon has been moderated (or is still in the mod queue), so
		-- always show a fallback icon underneath the real icon. If the real icon fails to load (e.g.
		-- was moderated), the fallback moderation icon appears. If the real icon succeeds in loading,
		-- it will cover the fallback icon. You can see the fallback icon through any transparent
		-- areas on the real icon, but we don't have a better alternative right now.
		Image = FALLBACK_IMAGE,

		[Roact.Ref] = self.buttonRef,

		[Roact.Event.MouseEnter] = function()
			self:mouseHoverChanged(true)
		end,

		[Roact.Event.MouseLeave] = function()
			self:mouseHoverChanged(false)
		end,
	}, {
		Icon = Roact.createElement("ImageLabel", {
			Visible = self.props.Visible,
			BackgroundTransparency = 1,
			Image = image,
			ScaleType = Enum.ScaleType.Crop,
			Size = UDim2.new(1, 0, 1, 0),
		}),

		InfoText = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
			Visible = review or preview,
			BackgroundTransparency = 0.3,
			BorderSizePixel = 0,
			BackgroundColor3 = DEPRECATED_Constants.BLACK,
			TextColor3 = DEPRECATED_Constants.WHITE,
			Size = UDim2.new(1, 0, 0, 30),
			Position = UDim2.new(0, 0, 1, 0),
			AnchorPoint = Vector2.new(0, 1),
			ZIndex = 3,

			Text = preview and localization:getText("General", "ImagePreview") or localization:getText("General", "ImageReview"),
		})),

		Change = Roact.createElement("ImageButton", {
			Visible = hover and not review,

			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1.5, 0),
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, 0),
			Image = DEPRECATED_Constants.GRADIENT_IMAGE,
			ImageRectSize = DEPRECATED_Constants.GRADIENT_RECT_SIZE,
			ImageColor3 = DEPRECATED_Constants.BLACK,
			ZIndex = 4,

			[Roact.Event.Activated] = self.props.OnClick,
		}, {
			Text = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 30),
				Position = UDim2.new(0, 0, 1, -15),
				AnchorPoint = Vector2.new(0, 1),

				Text = localization:getText("General", "GameIconChange"),
				ZIndex = 5,
			})),
		}),
	})
end


UploadableIcon = withContext({
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})(UploadableIcon)



return UploadableIcon
