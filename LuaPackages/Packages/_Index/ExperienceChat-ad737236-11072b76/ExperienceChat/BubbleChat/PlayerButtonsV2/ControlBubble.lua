--[[
	Indicator bubble that accepts an icon and an onActivated function.

	This is shown when a user's device has given Roblox camera or microphone permissions.
]]
local RunService = game:GetService("RunService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Packages = ExperienceChat.Parent
local React = require(Packages.React)

local UIBlox = require(Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local success, migratedImageSetLabel = pcall(function()
	return UIBlox.Core.ImageSet.ImageSetLabel
end)
local ImageSetLabel = success and migratedImageSetLabel or UIBlox.Core.ImageSet.Label

local Helpers = ExperienceChat.BubbleChat.Helpers
local getVoiceIndicatorAssetName = require(Helpers.getVoiceIndicatorAssetName)
type propArgs = {
	LayoutOrder: number,
	onActivated: (() -> nil)?,
	chatSettings: any?,
	controlBubbleSize: UDim2,
	cornerRadiusOffset: number,
	iconAssetName: string?,
	iconSize: UDim2,
	iconTransparency: number,
	voiceState: string?,
	renderStepName: string?,
	iconStyle: string,
}

return function(props: propArgs)
	local microphoneLevel, setMicrophoneLevel = React.useState(0)
	React.useEffect(function()
		if props.voiceState and props.voiceState == "Talking" and props.renderStepName then
			RunService:BindToRenderStep(props.renderStepName, 1, function()
				setMicrophoneLevel(math.random())
			end)

			return function()
				RunService:UnbindFromRenderStep(props.renderStepName)
			end
		else
			return function()
				if props.renderStepName then
					RunService:UnbindFromRenderStep(props.renderStepName)
				end
			end
		end
	end, { props.voiceState })

	local iconAssetName = props.iconAssetName
		or getVoiceIndicatorAssetName(props.voiceState, microphoneLevel, props.iconStyle)

	return React.createElement("ImageButton", {
		AnchorPoint = Vector2.new(0.5, 1),
		Size = props.controlBubbleSize,
		LayoutOrder = props.LayoutOrder,
		BorderSizePixel = 0,
		Transparency = 1,
		ZIndex = 2,
		[React.Event.Activated] = props.onActivated,
		BackgroundTransparency = 1,
	}, {
		UICorner = React.createElement("UICorner", {
			CornerRadius = UDim.new(0, props.cornerRadiusOffset),
		}),
		Contents = React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0, props.cornerRadiusOffset),
			}),
			Icon = React.createElement(ImageSetLabel, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = props.iconSize,
				BackgroundTransparency = 1,
				ImageTransparency = props.iconTransparency,
				BorderSizePixel = 0,
				Image = Images[iconAssetName],
			}),
		}),
	})
end
