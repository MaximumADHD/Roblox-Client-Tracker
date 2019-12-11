local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.UIBlox)

local withStyle = UIBlox.Style.withStyle

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GameTranslator = require(RobloxGui.Modules.GameTranslator)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerList = Components.Parent
local FormatStatString = require(PlayerList.FormatStatString)

local FFlagPlayerListDesignUpdate = settings():GetFFlag("PlayerListDesignUpdate")

local StatEntry = Roact.PureComponent:extend("StatEntry")

if FFlagPlayerListDesignUpdate then
	StatEntry.validateProps = t.strictInterface({
		statName = t.string,
		statValue = t.optional(t.any),
		isTitleEntry = t.boolean,
		isTeamEntry = t.boolean,
		layoutOrder = t.integer,

		backgroundStyle = t.strictInterface({
			Color = t.Color3,
			Transparency = t.number,
		}),
		overlayStyle = t.strictInterface({
			Color = t.Color3,
			Transparency = t.number,
		}),
		doubleOverlay = t.boolean,
		textStyle = t.strictInterface({
			Color = t.Color3,
			Transparency = t.number,
			StrokeColor = t.optional(t.Color3),
			StrokeTransparency = t.optional(t.number),
		}),

		onActivated = t.optional(t.callback),
		onSelectionGained = t.optional(t.callback),
		onSelectionLost = t.optional(t.callback),
		onMouseEnter = t.optional(t.callback),
		onMouseLeave = t.optional(t.callback),
		onMouseDown = t.optional(t.callback),
		onMouseUp = t.optional(t.callback),
	})
else
	StatEntry.validateProps = t.strictInterface({
		statName = t.string,
		statValue = t.optional(t.any),
		isTitleEntry = t.boolean,
		isTeamEntry = t.boolean,
		layoutOrder = t.integer,

		backgroundStyle = t.strictInterface({
			Color = t.Color3,
			Transparency = t.number,
		}),
		textStyle = t.strictInterface({
			Color = t.Color3,
			StrokeTransparency = t.number,
			StrokeColor = t.Color3,
		})
	})
end

function StatEntry:render()
	return WithLayoutValues(function(layoutValues)
		return withStyle(function(style)
			local statName = GameTranslator:TranslateGameText(CoreGui, self.props.statName)
			local font, textSize
			if FFlagPlayerListDesignUpdate and not layoutValues.IsTenFoot then
				font = style.Font.CaptionSubHeader.Font
				textSize = style.Font.CaptionSubHeader.RelativeSize * style.Font.BaseSize
			else
				textSize = layoutValues.StatTextSize
				font = layoutValues.StatFont
				if self.props.isTitleEntry then
					font = layoutValues.TitleStatFont
				elseif self.props.isTeamEntry then
					font = layoutValues.TeamStatFont
				end
			end

			local statChildren = {}

			if layoutValues.IsTenFoot then
				statChildren["Shadow"] = Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Image = layoutValues.ShadowImage,
					Position = UDim2.new(0, -layoutValues.ShadowSize, 0, 0),
					Size = UDim2.new(1, layoutValues.ShadowSize * 2, 1, layoutValues.ShadowSize),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = layoutValues.ShadowSliceRect,
				})
			end

			statChildren["StatText"] = Roact.createElement("TextLabel", {
				Size = self.props.isTitleEntry and UDim2.new(1, 0, 0.5, 0) or UDim2.new(1, 0, 1, 0),
				Position = self.props.isTitleEntry and UDim2.new(0, 0, 0.5, 0) or UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				Font = font,
				TextSize = textSize,
				TextColor3 = self.props.textStyle.Color,
				TextTransparency = self.props.textStyle.Transparency,
				TextStrokeColor3 = self.props.textStyle.StrokeColor,
				TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
				Text = FormatStatString(self.props.statValue),
				TextTruncate = Enum.TextTruncate.AtEnd,
				Active = true,
			}, {
				FFlagPlayerListDesignUpdate and Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, layoutValues.StatTextPadding/2),
					PaddingRight = UDim.new(0, layoutValues.StatTextPadding/2),
				}) or nil,
			})

			if self.props.isTitleEntry then
				statChildren["StatName"] = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0.5, 0),
					Position = UDim2.new(0, 0, 0, 0),
					BackgroundTransparency = 1,
					Font = layoutValues.StatNameFont,
					TextSize = FFlagPlayerListDesignUpdate and self.props.textStyle.Size or layoutValues.StatTextSize,
					TextColor3 = self.props.textStyle.Color,
					TextTransparency = self.props.textStyle.Transparency,
					TextStrokeColor3 = self.props.textStyle.StrokeColor,
					TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
					Text = statName,
					Active = true,
					ClipsDescendants = true,
				})
			end

			if FFlagPlayerListDesignUpdate then
				return Roact.createElement("TextButton", {
					Text = "",
					LayoutOrder = self.props.layoutOrder,
					Size = UDim2.new(0, layoutValues.StatEntrySizeX, 1, 0),
					BackgroundTransparency = self.props.backgroundStyle.Transparency,
					BackgroundColor3 = self.props.backgroundStyle.Color,
					BorderSizePixel = 0,
					AutoLocalize = false,
					AutoButtonColor = false,

					[Roact.Event.Activated] = self.props.onActivated,
					[Roact.Event.SelectionGained] = self.props.onSelectionGained,
					[Roact.Event.SelectionLost] = self.props.onSelectionLost,
					[Roact.Event.MouseEnter] = self.props.onMouseEnter,
					[Roact.Event.MouseLeave] = self.props.onMouseLeave,
					[Roact.Event.MouseButton1Down] = self.props.onMouseDown,
					[Roact.Event.MouseButton1Up] = self.props.onMouseUp,
				}, {
					DoubleOverLay = Roact.createElement("Frame", {
						ZIndex = 1,
						Visible = self.props.doubleOverlay,
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = self.props.overlayStyle.Transparency,
						BackgroundColor3 = self.props.overlayStyle.Color,
						BorderSizePixel = 0,
					}),

					OverlayFrame = Roact.createElement("Frame", {
						ZIndex = 2,
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = self.props.overlayStyle.Transparency,
						BackgroundColor3 = self.props.overlayStyle.Color,
						BorderSizePixel = 0,
					}, statChildren)
				})
			else
				return Roact.createElement("Frame", {
					LayoutOrder = self.props.layoutOrder,
					Size = UDim2.new(0, layoutValues.StatEntrySizeX, 1, 0),
					BackgroundTransparency = self.props.backgroundStyle.Transparency,
					BackgroundColor3 = self.props.backgroundStyle.Color,
					BorderSizePixel = 0,
					AutoLocalize = false,
				}, statChildren)
			end
		end)
	end)
end

return StatEntry