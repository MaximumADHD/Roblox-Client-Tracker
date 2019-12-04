--[[
	A component used for a link text with an animated search icon,
	that appears when the user hovers over the link text.

	Props:
		function OnClick = A callback for when the link is clicked.

	Optional Props:
		number TweenTime = The time in seconds to play the hover animation.
]]

local TweenService = game:GetService("TweenService")
local DEFAULT_TWEEN_TIME = 0.2

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local withTheme = ContextHelper.withTheme

local SearchLinkText = Roact.PureComponent:extend("SearchLinkText")

function SearchLinkText:init(props)
	assert(type(props.OnClick) == "function", "SearchLinkText expects an 'OnClick' function.")
	self.tweenInfo = TweenInfo.new(props.TweenTime or DEFAULT_TWEEN_TIME)

	self.textRef = Roact.createRef()
	self.iconRef = Roact.createRef()
	self.tweens = {}

	self.mouseEnter = function()
		if self.tweens.TextEnter then
			self.tweens.TextEnter:Play()
		end
		if self.tweens.IconEnter then
			self.tweens.IconEnter:Play()
		end
	end

	self.mouseLeave = function()
		if self.tweens.TextLeave then
			self.tweens.TextLeave:Play()
		end
		if self.tweens.IconLeave then
			self.tweens.IconLeave:Play()
		end
	end
end

function SearchLinkText:didMount()
	local text = self.textRef:getValue()
	local icon = self.iconRef:getValue()
	self.tweens.TextEnter = TweenService:Create(text, self.tweenInfo, {
		Position = UDim2.fromScale(0, 0.5),
		AnchorPoint = Vector2.new(0, 0.5),
	})
	self.tweens.TextLeave = TweenService:Create(text, self.tweenInfo, {
		Position = UDim2.fromScale(1, 0.5),
		AnchorPoint = Vector2.new(1, 0.5),
	})
	self.tweens.IconEnter = TweenService:Create(icon, self.tweenInfo, {
		ImageTransparency = 0,
		AnchorPoint = Vector2.new(1, 0.5),
	})
	self.tweens.IconLeave = TweenService:Create(icon, self.tweenInfo, {
		ImageTransparency = 1,
		AnchorPoint = Vector2.new(0, 0.5),
	})
end

function SearchLinkText:willUnmount()
	for _, tween in pairs(self.tweens) do
		tween:Cancel()
		tween:Destroy()
	end
end

function SearchLinkText:render()
	return withTheme(function(theme)
		local props = self.props
		local text = props.Text
		local position = props.Position
		local anchorPoint = props.AnchorPoint

		local descriptionTheme = theme.assetPreview.descriptions

		local textDimensions
		local textExtents = Constants.getTextSize(text, Constants.FONT_SIZE_LARGE)
		textDimensions = UDim2.fromOffset(textExtents.X, textExtents.Y)

		local fullWidth = textExtents.X + Constants.SEARCH_BAR_BUTTON_ICON_SIZE
			+ Constants.MAIN_VIEW_PADDING

		return Roact.createElement("TextButton", {
			Size = UDim2.new(0, fullWidth, 1, 0),
			Position = position,
			AnchorPoint = anchorPoint,
			BackgroundTransparency = 1,

			Text = "",
			[Roact.Event.Activated] = props.OnClick,
			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,
		}, {
			Text = Roact.createElement("TextLabel", {
				Size = textDimensions,
				Position = UDim2.fromScale(1, 0.5),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1,

				Text = text,
				Font = Constants.FONT,
				TextColor3 = descriptionTheme.rightTextColor,
				TextSize = Constants.FONT_SIZE_LARGE,
				[Roact.Ref] = self.textRef,
			}),

			SearchIcon = Roact.createElement("ImageLabel", {
				Size = UDim2.new(0, Constants.SEARCH_BAR_BUTTON_ICON_SIZE,
					0, Constants.SEARCH_BAR_BUTTON_ICON_SIZE),
				Position = UDim2.fromScale(1, 0.5),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				ImageTransparency = 1,

				ImageColor3 = descriptionTheme.rightTextColor,
				Image = Images.SEARCH_ICON,
				[Roact.Ref] = self.iconRef,
			}),
		})
	end)
end

return SearchLinkText
