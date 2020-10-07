local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)
local AvatarExperienceDeps = require(CorePackages.AvatarExperienceDeps)
local Text = require(CorePackages.AppTempCommon.Common.Text)

local RoactFitComponents = AvatarExperienceDeps.RoactFitComponents
local FitTextLabel = RoactFitComponents.FitTextLabel
local VerticalScrollView = UIBlox.App.Container.VerticalScrollView
local withStyle = UIBlox.Style.withStyle

local PADDING_BETWEEN = 10
local BULLET_POINT_SYMBOL = "• "

local ItemsList = Roact.PureComponent:extend("ItemsList")

ItemsList.validateProps = t.strictInterface({
	assetNames = t.array(t.string),
})

function ItemsList:init()
	self:setState({
		canvasSizeY = 0
	})

	self.onContentSizeChanged = function(rbx)
		self:setState({
			canvasSizeY = rbx.AbsoluteContentSize.Y
		})
	end
end

function ItemsList:render()
	return withStyle(function(stylePalette)
		local fontInfo = stylePalette.Font
		local theme = stylePalette.Theme

		local font = fontInfo.CaptionBody.Font
		local fontSize = fontInfo.BaseSize * fontInfo.CaptionBody.RelativeSize
		local list = {}

		local bulletPointWidth = Text.GetTextWidth(BULLET_POINT_SYMBOL, font, fontSize)

		list.Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Padding = UDim.new(0, PADDING_BETWEEN),
			SortOrder = Enum.SortOrder.LayoutOrder,

			[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
		})

		for i, assetName in ipairs(self.props.assetNames) do
			list[i] = Roact.createElement(RoactFitComponents.FitFrameVertical, {
				width = UDim.new(1, 0),

				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Top,

				BackgroundTransparency = 1,
				LayoutOrder = i,
			}, {
				Bullet = Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(bulletPointWidth, fontSize),
					Text = BULLET_POINT_SYMBOL,
					Font = font,
					TextSize = fontSize,
					TextColor3 = theme.TextDefault.Color,
					TextTransparency = theme.TextDefault.Transparency,
					TextXAlignment = Enum.TextXAlignment.Left,
					LayoutOrder = 1,
				}),

				Text = Roact.createElement(FitTextLabel, {
					width = UDim.new(1, -bulletPointWidth),

					BackgroundTransparency = 1,
					Text = assetName,
					Font = font,
					TextSize = fontSize,
					TextColor3 = theme.TextDefault.Color,
					TextTransparency = theme.TextDefault.Transparency,
					TextXAlignment = Enum.TextXAlignment.Left,
					LayoutOrder = 2,
				})
			})
		end

		return Roact.createElement(VerticalScrollView, {
			size = UDim2.fromScale(1, 1),
			canvasSizeY = UDim.new(0, self.state.canvasSizeY),
		}, list)
	end)
end

return ItemsList