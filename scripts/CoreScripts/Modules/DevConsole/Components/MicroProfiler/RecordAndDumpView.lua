local CorePackages = game:GetService("CorePackages")

local BoxButton = require(script.Parent.Parent.BoxButton)
local Constants = require(script.Parent.Parent.Parent.Constants)
local MicroProfilerPanel = require(script.Parent.MicroProfilerPanel)
local Roact = require(CorePackages.Packages.Roact)

local RecordAndDumpView = Roact.Component:extend("RecordAndDumpView")

local function NumericInputRow(options)
	return {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 8),
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, 4),
			PaddingLeft = UDim.new(0, 10),
			PaddingRight = UDim.new(0, 4),
			PaddingTop = UDim.new(0, 4),
		}),
		OptionLabel = Roact.createElement("TextLabel", {
			Font = Constants.Font.MainWindow,
			Text = options.Text,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Left,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Position = UDim2.fromOffset(8, 0),
			Size = UDim2.fromScale(0, 1),
		}, {
			UIFlexItem = Roact.createElement("UIFlexItem", {
				FlexMode = Enum.UIFlexMode.Fill,
			}),
		}),
		NumberInput = Roact.createElement("TextBox", {
			ClearTextOnFocus = false,
			Font = Constants.Font.Log,
			Text = "1",
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 14,
			BackgroundColor3 = Color3.fromRGB(34, 34, 34),
			BorderColor3 = Color3.fromRGB(255, 255, 255),
			LayoutOrder = 3,
			Size = UDim2.new(0, 72, 1, 0),
		}),
		NumberLimitsHint = Roact.createElement("TextLabel", {
			Font = Constants.Font.Log,
			Text = `({options.Range.Min}-{options.Range.Max})`,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 12,
			TextTransparency = 0.5,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			LayoutOrder = 2,
			Size = UDim2.new(0, 32, 1, 0),
			TextXAlignment = Enum.TextXAlignment.Right,
		}),
	}
end

local function RecordAndDumpRows(options)
	return {
		NumericInputRow({
			Text = "Number of frames to record",
			Range = NumberRange.new(1, 60),
		}),
		NumericInputRow({
			Text = "Seconds to delay",
			Range = NumberRange.new(1, 4),
		}),
		{
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 2),
				PaddingLeft = UDim.new(0, 2),
				PaddingRight = UDim.new(0, 2),
				PaddingTop = UDim.new(0, 2),
			}),
			Button = Roact.createElement(BoxButton, {
				text = options.RecordButtonText,
				size = UDim2.fromScale(1, 1),
				pos = UDim2.new(0, 0, 0, 0),
				onClicked = function() end,
			}),
		},
	} :: { { [string]: any } }
end

function RecordAndDumpView:render()
	return Roact.createElement(MicroProfilerPanel, {
		Title = "Record and dump",
		LayoutOrder = self.props.LayoutOrder,
		Sections = {
			{
				Name = "Client",
				Rows = RecordAndDumpRows({
					RecordButtonText = "Begin client recording",
				}),
			},
			{
				Name = "Server",
				Rows = RecordAndDumpRows({
					RecordButtonText = "Begin server recording",
				}),
			},
		},
	})
end

return RecordAndDumpView
