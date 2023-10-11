--[[
	Indicator bubble that accepts an icon and an onActivated function.

	This is shown when a user's device has given Roblox camera or microphone permissions.
]]
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local React = require(CorePackages.Packages.React)

local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local success, migratedImageSetLabel = pcall(function()
	return UIBlox.Core.ImageSet.ImageSetLabel
end)
local ImageSetLabel = success and migratedImageSetLabel or UIBlox.Core.ImageSet.Label

local getVoiceIndicatorAssetName = require(script.Parent.Parent.Helpers.getVoiceIndicatorAssetName)

local Modules = CoreGui.RobloxGui.Modules
local getFFlagEnableShimmeringIconLegacyChatService = require(Modules.Flags.getFFlagEnableShimmeringIconLegacyChatService)

local SHIMMER_TRANSPARENCY = 0.6
local FFlagEnableDarkerShimmerTransparencyLegacyChatService = game:DefineFastFlag("EnableDarkerShimmerTransparencyLegacyChatService", false)

if FFlagEnableDarkerShimmerTransparencyLegacyChatService then
	SHIMMER_TRANSPARENCY = 0.4
end
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

local function createTweenShimmeringEffect(shimmerGradientRef: any)
	local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Circular, Enum.EasingDirection.Out, -1)
	local offset = { Offset = Vector2.new(1, 0) }
	local shimmer = TweenService:Create(shimmerGradientRef:getValue(), tweenInfo, offset)

	return shimmer
end

return function(props: propArgs)
	local microphoneLevel, setMicrophoneLevel = React.useState(0)
	local imageButtonRef = React.useRef(nil :: Instance?)
	local shimmerGradientRef = React.useRef(nil :: UIGradient?)

	if getFFlagEnableShimmeringIconLegacyChatService() then
		imageButtonRef = React.useRef(nil :: Instance?)
		shimmerGradientRef = React.useRef(nil :: UIGradient?)
		React.useEffect(function()
			if imageButtonRef.current then
				local shimmerGradient = imageButtonRef.current:FindFirstChildWhichIsA("UIGradient", true)
				if shimmerGradient then
					shimmerGradientRef.current = shimmerGradient
				end
			end
		end, { imageButtonRef })
	end

	React.useEffect(function()
		if props.voiceState and props.voiceState == "Talking" and props.renderStepName then
			RunService:BindToRenderStep(props.renderStepName, 1, function()
				setMicrophoneLevel(math.random())
			end)

			return function()
				RunService:UnbindFromRenderStep(props.renderStepName)
			end
		elseif getFFlagEnableShimmeringIconLegacyChatService()
			and props.voiceState
			and props.voiceState == "Connecting"
			and shimmerGradientRef
		then
			local shimmer = createTweenShimmeringEffect(shimmerGradientRef)
			shimmer:Play()

			return function()
				shimmer:Cancel()
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
		ref = getFFlagEnableShimmeringIconLegacyChatService() and imageButtonRef,
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
			}, {
				ShimmerGradient = getFFlagEnableShimmeringIconLegacyChatService() and React.createElement("UIGradient", {
					Color = ColorSequence.new({
						ColorSequenceKeypoint.new(
							0,
							Color3.new(SHIMMER_TRANSPARENCY, SHIMMER_TRANSPARENCY, SHIMMER_TRANSPARENCY)
						),
						ColorSequenceKeypoint.new(0.5, Color3.new(0.8, 0.8, 0.8)),
						ColorSequenceKeypoint.new(
							1,
							Color3.new(SHIMMER_TRANSPARENCY, SHIMMER_TRANSPARENCY, SHIMMER_TRANSPARENCY)
						),
					}),
					Enabled = props.voiceState == "Connecting",
					Rotation = -45,
					Offset = Vector2.new(-1, 0),
				}),
			}),
		}),
	})
end
