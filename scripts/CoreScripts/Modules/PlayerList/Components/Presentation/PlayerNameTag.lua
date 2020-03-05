local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local FFlagPlayerListDesignUpdate = settings():GetFFlag("PlayerListDesignUpdate")
local FFlagRenameDisplayNameToPlatformName = settings():GetFFlag("RenameDisplayNameToPlatformName")

local PlayerNameTag = Roact.PureComponent:extend("PlayerNameTag")

if FFlagPlayerListDesignUpdate then
	PlayerNameTag.validateProps = t.strictInterface({
		player = t.instanceIsA("Player"),
		isTitleEntry = t.boolean,
		isHovered = t.boolean,
		layoutOrder = t.integer,

		textStyle = t.strictInterface({
			Color = t.Color3,
			Transparency = t.number,
			StrokeColor = t.optional(t.Color3),
			StrokeTransparency = t.optional(t.number),
		}),
		textFont = t.strictInterface({
			Size = t.number,
			Font = t.enum(Enum.Font),
		}),
	})
else
	PlayerNameTag.validateProps = t.strictInterface({
		player = t.instanceIsA("Player"),
		isTitleEntry = t.boolean,
		isHovered = t.boolean,
		layoutOrder = t.integer,

		textStyle = t.strictInterface({
			Color = t.Color3,
			StrokeTransparency = t.number,
			StrokeColor = t.Color3,
		})
	})
end

function PlayerNameTag:render()
	return WithLayoutValues(function(layoutValues)
		local iconColor = layoutValues.IconUnSelectedColor
		if self.props.isHovered then
			iconColor = layoutValues.IconSelectedColor
		end

		local playerNameFont
		if FFlagPlayerListDesignUpdate then
			playerNameFont = self.props.textFont.Font
		else
			playerNameFont = layoutValues.PlayerEntryFont
			if self.props.isTitleEntry then
				playerNameFont = layoutValues.TitlePlayerEntryFont
			end
		end

		local textSize
		if FFlagPlayerListDesignUpdate then
			textSize = self.props.textFont.Size
		else
			textSize = layoutValues.PlayerNameTextSize
		end

		local playerNameChildren = {}
		local platformName
		if FFlagRenameDisplayNameToPlatformName then
			platformName = self.props.player.PlatformName
		else
			platformName = self.props.player.DisplayName
		end

		if layoutValues.IsTenFoot and platformName ~= "" then
			playerNameChildren["VerticalLayout"] = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, 10),
			})

			playerNameChildren["PlayerPlatformName"] = Roact.createElement("TextLabel", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 0.35, 0),
				TextXAlignment = Enum.TextXAlignment.Left,
				Font = Enum.Font.SourceSans,
				TextSize = textSize,
				TextColor3 = self.props.textStyle.Color,
				TextTransparency = self.props.textStyle.Transparency,
				TextStrokeColor3 = self.props.textStyle.StrokeColor,
				TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
				BackgroundTransparency = 1,
				Text = platformName,
				LayoutOrder = 2,
			})

			playerNameChildren["RobloxNameFrame"] = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0.45, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, 6),
				}),

				RobloxIcon = Roact.createElement("ImageButton", {
					Size = UDim2.new(0, 24, 0, 24),
					Image = layoutValues.RobloxIconImage,
					BackgroundTransparency = 1,
					Selectable = false,
					ImageColor3 = iconColor,
					LayoutOrder = 1,
				}),

				PlayerName = Roact.createElement("TextLabel", {
					Size = UDim2.new(1, -30, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Font = playerNameFont,
					TextSize = textSize,
					TextColor3 = self.props.textStyle.Color,
					TextTransparency = self.props.textStyle.Transparency,
					TextStrokeColor3 = self.props.textStyle.StrokeColor,
					TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
					BackgroundTransparency = 1,
					Text = self.props.player.Name,
					ClipsDescendants = false,
					LayoutOrder = 2,
				})
			})
		else
			playerNameChildren["PlayerName"] = Roact.createElement("TextLabel", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				TextXAlignment = Enum.TextXAlignment.Left,
				Font = playerNameFont,
				TextSize = textSize,
				TextColor3 = self.props.textStyle.Color,
				TextTransparency = self.props.textStyle.Transparency,
				TextStrokeColor3 = self.props.textStyle.StrokeColor,
				TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
				BackgroundTransparency = 1,
				Text = self.props.player.Name,
				TextTruncate = Enum.TextTruncate.AtEnd,
			})
		end

		return Roact.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			Size = layoutValues.PlayerNameSize,
			BackgroundTransparency = 1,
		}, playerNameChildren)
	end)
end

return PlayerNameTag
