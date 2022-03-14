local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local FitFrame = require(Packages.FitFrame)
local FitTextLabel = FitFrame.FitTextLabel

local App = Packages.UIBlox.App
local TextButton = require(App.Button.TextButton)
local IconButton = require(App.Button.IconButton)
local Images = require(App.ImageSet.Images)

local Core = Packages.UIBlox.Core
local ControlState = require(Core.Control.Enum.ControlState)

local withStyle = require(Packages.UIBlox.Style.withStyle)

local function noOpt() end

local function TitleLabel(props)
	return withStyle(function(style)
		return Roact.createElement(FitTextLabel, {
			TextColor3 = style.Theme.TextDefault.Color,
			TextTransparency = style.Theme.TextDefault.Transparency,
			width = FitTextLabel.Width.FitToText,
			BackgroundTransparency = 1,
			Text = props.Text:upper(),
			Font = Enum.Font.GothamBold,
			LayoutOrder = props.LayoutOrder,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextSize = 10,
		})
	end)
end

local function TextButtonDemo(props)
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 150, 0, 100),
		LayoutOrder = props.LayoutOrder,
	}, {
		demo = Roact.createElement(TextButton, {
			text = "Title Case",

			anchorPoint = Vector2.new(0, 0.5),
			position = UDim2.fromScale(0, 0.5),
			size = UDim2.fromScale(0, 0),
			onActivated = noOpt,
			userInteractionEnabled = false,
			[TextButton.debugProps.controlState] = props.controlState,
		}),
	})
end

local function IconButtonDemo(props)
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 150, 0, 100),
		LayoutOrder = props.LayoutOrder,
	}, {
		demo = Roact.createElement(IconButton, {
			icon = Images["icons/common/notificationOff"],

			anchorPoint = Vector2.new(0, 0.5),
			position = UDim2.fromScale(0, 0.5),
			onActivated = noOpt,
			layoutOrder = props.LayoutOrder,
			userInteractionEnabled = false,
			[IconButton.debugProps.controlState] = props.controlState,
		}),
	})
end

local function Table(props)
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(250, 500),
	}, {
		layout = Roact.createElement("UITableLayout", {
			MajorAxis = Enum.TableMajorAxis.ColumnMajor,
			Padding = UDim2.fromOffset(12, 12),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		titleCol = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 1,
		}, {
			spacer = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 0,
			}),
			default = Roact.createElement(TitleLabel, {
				Text = "Default",
				LayoutOrder = 1,
			}),
			onHover = Roact.createElement(TitleLabel, {
				Text = "On Hover",
				LayoutOrder = 2,
			}),
			onPress = Roact.createElement(TitleLabel, {
				Text = "On Press",
				LayoutOrder = 3,
			}),
			disabled = Roact.createElement(TitleLabel, {
				Text = "Disabled",
				LayoutOrder = 4,
			}),
		}),

		textButtonCol = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			title = Roact.createElement(TitleLabel, {
				Text = "Text Button",
				LayoutOrder = 1,
			}),
			default = Roact.createElement(TextButtonDemo, {
				controlState = ControlState.Default,
				LayoutOrder = 2,
			}),
			onHover = Roact.createElement(TextButtonDemo, {
				controlState = ControlState.Hover,
				LayoutOrder = 3,
			}),
			onPress = Roact.createElement(TextButtonDemo, {
				controlState = ControlState.Pressed,
				LayoutOrder = 4,
			}),
			disabled = Roact.createElement(TextButtonDemo, {
				controlState = ControlState.Disabled,
				LayoutOrder = 5,
			}),
		}),

		iconButtonCol = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 3,
		}, {
			title = Roact.createElement(TitleLabel, {
				Text = "Icon Button",
				LayoutOrder = 1,
			}),
			default = Roact.createElement(IconButtonDemo, {
				controlState = ControlState.Default,
				LayoutOrder = 2,
			}),
			onHover = Roact.createElement(IconButtonDemo, {
				controlState = ControlState.Hover,
				LayoutOrder = 3,
			}),
			onPress = Roact.createElement(IconButtonDemo, {
				controlState = ControlState.Pressed,
				LayoutOrder = 4,
			}),
			disabled = Roact.createElement(IconButtonDemo, {
				controlState = ControlState.Disabled,
				LayoutOrder = 5,
			}),
		}),
	})
end

return Table
