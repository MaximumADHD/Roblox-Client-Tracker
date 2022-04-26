local Roact = require(script.Parent.Parent.Parent.Packages.Roact)

local choose = require(script.Parent.Parent.choose)
local UILibrary = require(script.Parent.Parent.Parent.Packages.UILibrary)
local withLocalization = UILibrary.Localizing.withLocalization

local Constants = require(script.Parent.Parent.Constants)

local GroupLabelPadding = require(script.Parent.GroupLabelPadding)
local Padding = require(script.Parent.Padding)

local HeaderRow = Roact.Component:extend("HeaderRow")

function HeaderRow.CalculateRowWidth(groupCount)
	return (Constants.GroupRowHeight * Constants.GroupLabelSize.X.Scale + 1) * groupCount
end

function HeaderRow:render()
	return withLocalization(function(localized)
		return self:renderConsolidated(localized)
	end)
end

function HeaderRow:renderConsolidated(localized)
	local props = self.props

	local headers = {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 1),
		}),
	}

	for index, group in pairs(props.Groups) do
		local text = group.Name
		if text == "Default" then
			text = localized:getText("Groups", "DefaultGroupName")
		end

		headers[group.Name] = Roact.createElement("Frame", {
			Size = Constants.GroupLabelSize + UDim2.new(0, 0, 0, -1),
			SizeConstraint = Enum.SizeConstraint.RelativeYY,
			LayoutOrder = 2 + index,

			BackgroundColor3 = choose(
				settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Dark),
				settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.Titlebar),
				group.Name == props.ColHovered
			),
			BorderColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground),

			ZIndex = 2,
		}, {
			Padding = Roact.createElement(Padding, {Padding = UDim.new(0, 4)}),

			Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Text = text,
				TextWrapped = true,
				TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainText),

				ZIndex = 2,
			}),
		})
	end

	local nonHeaderSpace = (Constants.GroupRowHeight * 3) + (Constants.GroupRowHeight * Constants.GroupLabelSize.X.Scale)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, Constants.GroupRowHeight),
		BackgroundTransparency = 1,
		LayoutOrder = 1,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 1),
		}),

		Spacer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(3, -2, 1, 0),
			SizeConstraint = Enum.SizeConstraint.RelativeYY,
			LayoutOrder = 1,
		}),

		ColumnLabel = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = Constants.GroupLabelSize,
			SizeConstraint = Enum.SizeConstraint.RelativeYY,
			LayoutOrder = 2,
		}, {
			Padding = Roact.createElement(GroupLabelPadding),

			Text = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),

				Text = localized:getText("Headers", "GroupName"),
				TextColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.SubText),
				TextXAlignment = Enum.TextXAlignment.Right,
			}),
		}),

		-- this is ugly, but I can't think of any better way of figuring out
		-- the precise spacings for the things I need to put here... so deal
		Headers = Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(1, -nonHeaderSpace, 0, Constants.GroupRowHeight),
			CanvasSize = UDim2.new(0, self.CalculateRowWidth(#props.Groups), 0, Constants.GroupRowHeight),
			CanvasPosition = Vector2.new(props.ScrollPosition.X, 0),
			ScrollingDirection = Enum.ScrollingDirection.X,
			BackgroundTransparency = 1,
			LayoutOrder = 3,
			ScrollBarThickness = 0,
			ScrollingEnabled = false,
		}, headers)
	})
end

return HeaderRow