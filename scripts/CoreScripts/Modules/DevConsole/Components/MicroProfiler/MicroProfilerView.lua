local CorePackages = game:GetService("CorePackages")

local Immutable = require(script.Parent.Parent.Parent.Immutable)
local Roact = require(CorePackages.Packages.Roact)

local LocalActionsView = require(script.Parent.LocalActionsView)
local RecentlyCapturedDumpsView = require(script.Parent.RecentlyCapturedDumpsView)
local RecordAndDumpView = require(script.Parent.RecordAndDumpView)

local Column = Roact.Component:extend("Column")
local MicroProfilerView = Roact.Component:extend("MicroProfilerView")

function Column:render()
	local children = self.props[Roact.Children]

	return Roact.createElement(
		"Frame",
		{
			Size = UDim2.new(0, 0, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = self.props.LayoutOrder,
		},
		Immutable.JoinDictionaries({
			UIListLayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 12),
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}),
		}, children)
	)
end

function MicroProfilerView:render()
	return Roact.createElement("Frame", {
		Size = self.props.Size,
		BackgroundTransparency = self.props.BackgroundTransparency,
		LayoutOrder = self.props.LayoutOrder,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 8),
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			HorizontalFlex = Enum.UIFlexAlignment.Fill,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			VerticalFlex = Enum.UIFlexAlignment.Fill,
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 0),
			PaddingBottom = UDim.new(0, 0),
			PaddingLeft = UDim.new(0, 8),
			PaddingRight = UDim.new(0, 8),
		}),
		LeftColumn = Roact.createElement(Column, {
			LayoutOrder = 1,
		}, {
			LocalActionsView = Roact.createElement(LocalActionsView, {
				LayoutOrder = 1,
			}),
			RecordAndDumpView = Roact.createElement(RecordAndDumpView, {
				LayoutOrder = 2,
			}),
		}),
		RightColumn = Roact.createElement(Column, {
			LayoutOrder = 2,
		}, {
			RecentlyCapturedDumpsView = Roact.createElement(RecentlyCapturedDumpsView),
		}),
	})
end

return MicroProfilerView
