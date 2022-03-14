local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)
local FitFrame = require(Packages.FitFrame)

local App = Packages.UIBlox.App
local LinkButton = require(App.Button.LinkButton)

local Core = Packages.UIBlox.Core
local ControlState = require(Core.Control.Enum.ControlState)

local function createLinkButtonWithFontStyle(props)
	return Roact.createElement(LinkButton, {
		text = props.text or props.fontStyle,
		fontStyle = props.fontStyle,
		isDisabled = props.isDisabled,
		underlineAlwaysEnabled = props.underlineAlwaysEnabled,
		hoverBackgroundEnabled = props.hoverBackgroundEnabled,
		userInteractionEnabled = props.userInteractionEnabled,
		layoutOrder = props.layoutOrder,
		onActivated = function()
			print("Link Button Clicked!")
		end,
		onStateChanged = function(oldState, newState)
			if oldState ~= ControlState.Initialize then
				print("state changed \n oldState:", oldState, " newState:", newState)
			end
		end,
	})
end

return {
	name = "Link Button",
	summary = "App.Button.LinkButton",
	controls = {
		disabled = false,
		userInteractionEnabled = true,
	},
	stories = {
		fontStyleDemo = {
			name = "Font Style Demonstration",
			summary = "prop = fontStyle: string",
			story = function(props)
				local controls = props.controls
				local isDisabled = controls.isDisabled
				local userInteractionEnabled = controls.userInteractionEnabled

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
					header1 = createLinkButtonWithFontStyle({
						fontStyle = "Header1",
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 1,
					}),
					body = createLinkButtonWithFontStyle({
						fontStyle = "Body",
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
						layoutOrder = 2,
					}),
				})
			end,
		},

		hoverBackgroundDemo = {
			name = "Hover Background Demonstration",
			summary = "LinkButton does not have a hover background by default, but one can be enabled.",
			story = function(props)
				local controls = props.controls
				local isDisabled = controls.isDisabled
				local userInteractionEnabled = controls.userInteractionEnabled

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
					withoutBackground = createLinkButtonWithFontStyle({
						text = "I have no hover background!",
						hoverBackgroundEnabled = false,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
					}),
					withBackground = createLinkButtonWithFontStyle({
						text = "I have a hover background!",
						hoverBackgroundEnabled = true,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
					}),
				})
			end,
		},

		alwaysUnderlineDemo = {
			name = "Permanent Underline Demonstration",
			summary = "The underline which appears as a hover effect by default can be set as always on.",
			story = function(props)
				local controls = props.controls
				local isDisabled = controls.isDisabled
				local userInteractionEnabled = controls.userInteractionEnabled

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
					withoutPermanentUnderline = createLinkButtonWithFontStyle({
						text = "I am sometimes underlined!",
						underlineAlwaysEnabled = false,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
					}),
					withPermanentUnderline = createLinkButtonWithFontStyle({
						text = "I am aways underlined!",
						underlineAlwaysEnabled = true,
						isDisabled = isDisabled,
						userInteractionEnabled = userInteractionEnabled,
					}),
				})
			end,
		},
	},
}
