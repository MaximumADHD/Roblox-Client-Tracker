local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)
local FitFrame = require(Packages.FitFrame)

local App = Packages.UIBlox.App
local TextButton = require(App.Button.TextButton)

local Core = Packages.UIBlox.Core
local ControlState = require(Core.Control.Enum.ControlState)

local function createTextButtonWithFontStyle(props)
	return Roact.createElement(TextButton, {
		text = props.text or props.fontStyle,
		richText = props.richText,
		fontStyle = props.fontStyle,
		isDisabled = props.isDisabled,
		hoverBackgroundEnabled = props.hoverBackgroundEnabled,
		userInteractionEnabled = props.userInteractionEnabled,
		layoutOrder = props.layoutOrder,
		onActivated = function()
			print("Text Button Clicked!")
		end,
		onStateChanged = function(oldState, newState)
			if oldState ~= ControlState.Initialize then
				print("state changed \n oldState:", oldState, " newState:", newState)
			end
		end,
	})
end

return {
	name = "Text Button",
	summary = "App.Button.TextButton",
	controls = {
		disabled = false,
		userInteractionEnabled = true,
	},
	stories = {
		fontStyleDemo = {
			name = "Font Style Demonstration",
			summary = "prop = fontStyle: string",
			story = function(props)
				local isDisabled = props.controls.isDisabled
				local userInteractionEnabled = props.controls.userInteractionEnabled

				return Roact.createElement(FitFrame.FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					margin = {
						top = 0,
						bottom = 0,
						right = 0,
						left = 24,
					},
					contentPadding = UDim.new(0, 12),
					LayoutOrder = 2,
				}, {
					header1 = createTextButtonWithFontStyle({
						fontStyle = "Header1",
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 1,
					}),
					header2 = createTextButtonWithFontStyle({
						fontStyle = "Header2",
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 2,
					}),
					body = createTextButtonWithFontStyle({
						fontStyle = "Body",
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 3,
					}),
					captionHeader = createTextButtonWithFontStyle({
						fontStyle = "CaptionHeader",
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 4,
					}),
				})
			end,
		},
		minimumWidthDemo = {
			name = "Minimum Width Demonstration",
			summary = "Red area shows the interactable bounding box of the buttons.",
			story = function(props)
				local isDisabled = props.controls.isDisabled
				local userInteractionEnabled = props.controls.userInteractionEnabled

				return Roact.createElement(FitFrame.FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					margin = {
						top = 0,
						bottom = 0,
						right = 0,
						left = 24,
					},
					LayoutOrder = 2,
					contentPadding = UDim.new(0, 12),
				}, {
					longBoundingBox = Roact.createElement(FitFrame.FitFrameOnAxis, {
						BackgroundColor3 = Color3.fromRGB(255, 150, 150),
						axis = FitFrame.FitFrameOnAxis.Axis.Both,
					}, {
						button = createTextButtonWithFontStyle({
							text = string.rep("long text button", 3),
							isDisabled = isDisabled,
							userInteractionEnabled = userInteractionEnabled,
						}),
					}),
					shortBoundingBox = Roact.createElement(FitFrame.FitFrameOnAxis, {
						BackgroundColor3 = Color3.fromRGB(255, 150, 150),
						axis = FitFrame.FitFrameOnAxis.Axis.Both,
					}, {
						button = createTextButtonWithFontStyle({
							text = "short text button",
							isDisabled = isDisabled,
							userInteractionEnabled = userInteractionEnabled,
						}),
					}),
				})
			end,
		},
		hoverBackgroundDemo = {
			name = "Hover Background Demonstration",
			summary = "Variants of TextButton, like LinkButton, may require custom hover states.",
			showDivider = true,
			story = function(props)
				local isDisabled = props.controls.isDisabled
				local userInteractionEnabled = props.controls.userInteractionEnabled

				return Roact.createElement(FitFrame.FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					margin = {
						top = 0,
						bottom = 0,
						right = 0,
						left = 24,
					},
					LayoutOrder = 2,
					contentPadding = UDim.new(0, 12),
				}, {
					withoutBackground = createTextButtonWithFontStyle({
						text = "I have no hover background!",
						hoverBackgroundEnabled = false,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
					}),
					withBackground = createTextButtonWithFontStyle({
						text = "I have a hover background!",
						hoverBackgroundEnabled = true,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
					}),
				})
			end,
		},
		richTextDemo = {
			name = "Rich Text Demonstration",
			summary = "RichText enabled by setting the richText prop to true.",
			story = function(props)
				local isDisabled = props.controls.isDisabled
				local userInteractionEnabled = props.controls.userInteractionEnabled

				return Roact.createElement(FitFrame.FitFrameVertical, {
					BackgroundTransparency = 1,
					width = UDim.new(1, 0),
					margin = {
						top = 0,
						bottom = 0,
						right = 0,
						left = 24,
					},
					LayoutOrder = 2,
					contentPadding = UDim.new(0, 12),
				}, {
					withoutBackground = createTextButtonWithFontStyle({
						text = "<u><b><i>Rich Text Disabled</i></b></u>",
						richText = false,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
					}),
					withBackground = createTextButtonWithFontStyle({
						text = "<u><b><i>Rich Text Enabled</i></b></u>",
						richText = true,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
					}),
				})
			end,
		},
	},
}
