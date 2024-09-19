local UserInputService = game:GetService("UserInputService")

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local ReactUtils = require(Packages.ReactUtils)
local ReactOtter = require(Packages.ReactOtter)

local getVisualForKey = require(script.Parent.getVisualForKey)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)
local Text = require(Foundation.Components.Text)
local CircularProgressBar = require(Foundation.Components.CircularProgressBar)

local EventConnection = ReactUtils.EventConnection

type Bindable<T> = Types.Bindable<T>

type HoldBehavior = {
	-- how many seconds the user has to hold the key for activation
	holdTime: number?,
	-- how quickly the bar will empty if the user releases the key before activating
	resetTime: number?,
	-- onEndHold will be invoked when the user releases the key prematurely or when they finish holding it down for `holdTime` seconds
	onEndHold: ((didActivate: boolean) -> any),
	-- onBeginHold will be invoked when the user begins holding down the key
	onBeginHold: (() -> any)?,
}

export type KeyLabelProps = {
	keyCode: Enum.KeyCode,
	holdBehavior: HoldBehavior?,
	Size: Bindable<UDim2>?,
	AnchorPoint: Bindable<Vector2>?,
} & Types.CommonProps

local defaultHoldBehavior = {
	holdTime = 1,
	resetTime = 0.5,
}

local SLICE_CENTER = Rect.new(Vector2.new(10, 9), Vector2.new(25, 25))

local function KeyLabel(props: KeyLabelProps, ref: React.Ref<GuiObject>?)
	local holdBehavior = if props.holdBehavior then withDefaults(props.holdBehavior, defaultHoldBehavior) else nil

	local tokens = useTokens()
	-- inputObject contains the last InputObject containing the matching KeyCode (tracks the current keypress and also allows easily checking whether the key is currently pressed or not)
	local inputObject: InputObject?, setInputObject = React.useState(nil :: InputObject?)
	local progress, setProgress
	progress, setProgress = ReactOtter.useAnimatedBinding(0, function(value: number)
		if holdBehavior and value == 1 and inputObject then
			setProgress(ReactOtter.ease(0, {
				duration = holdBehavior.resetTime,
				easingStyle = Enum.EasingStyle.Linear,
			}))
			setInputObject(nil)
			holdBehavior.onEndHold(true)
		end
	end)

	local keyVisual = getVisualForKey(props.keyCode)

	local isImage = keyVisual.keyVisualType == "Image"
	return React.createElement(
		View,
		withCommonProps(props, {
			Size = props.Size,
		}),
		{
			-- Key label
			Image = React.createElement(Image, {
				Image = if isImage then keyVisual.key else "icons/controls/keys/key_single",
				Size = keyVisual.size,
				ScaleType = if not isImage then Enum.ScaleType.Slice else nil,
				imageStyle = if inputObject then tokens.Color.Content.Emphasis else tokens.Color.Content.Muted,
				slice = if not isImage
					then {
						center = SLICE_CENTER,
					}
					else nil,
				tag = "position-center-center anchor-center-center",
			}, {
				CustomPadding = if not isImage
					then React.createElement("UIPadding", {
						PaddingBottom = UDim.new(0, 3),
					})
					else nil,
				Text = if not isImage
					then React.createElement(Text, {
						Text = keyVisual.key,
						textStyle = if inputObject then tokens.Color.Content.Emphasis else tokens.Color.Content.Muted,
						tag = "text-body-medium auto-xy size-full-full text-align-x-center",
					})
					else nil,
			}),
			-- Progress indicator
			Indicator = if holdBehavior and holdBehavior.holdTime :: number > 0
				then React.createElement(CircularProgressBar, {
					progress = progress,
					tag = "size-full-full",
				}, {})
				else nil,

			-- Event connections
			InputBeganConnection = if holdBehavior
				then React.createElement(EventConnection, {
					event = UserInputService.InputBegan :: RBXScriptSignal,
					callback = function(input: InputObject)
						if inputObject then
							return
						end

						if input.KeyCode == props.keyCode then
							if holdBehavior.onBeginHold then
								holdBehavior.onBeginHold()
							end
							if holdBehavior.holdTime == 0 then
								holdBehavior.onEndHold(true)
								return
							end
							setInputObject(input)
							setProgress(ReactOtter.ease(1, {
								duration = (1 - progress:getValue()) * holdBehavior.holdTime,
								easingStyle = Enum.EasingStyle.Linear,
							}))
						end
					end,
				})
				else nil,

			InputEndedConnection = if holdBehavior
				then React.createElement(EventConnection, {
					event = UserInputService.InputEnded :: RBXScriptSignal,
					callback = function(input: InputObject)
						if input == inputObject then
							if holdBehavior.onEndHold then
								holdBehavior.onEndHold(false)
							end
							setInputObject(nil)
							setProgress(ReactOtter.ease(0, {
								duration = (progress:getValue()) * holdBehavior.resetTime,
								easingStyle = Enum.EasingStyle.Linear,
							}))
						end
					end,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(KeyLabel))
