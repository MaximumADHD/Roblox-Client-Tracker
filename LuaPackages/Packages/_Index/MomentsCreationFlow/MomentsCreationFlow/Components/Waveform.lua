local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Dash = require(Packages.Dash)
local Foundation = require(Packages.Foundation)
local React = require(Packages.React)

local View = Foundation.View

local useAudioWaveform = require(MomentsCreationFlow.Hooks.useAudioWaveform)
local useTokens = Foundation.Hooks.useTokens

local Constants = require(MomentsCreationFlow.Constants)

local WAVEFORM_WIDTH = Constants.AudioWaveform.WaveformWidth
local WAVEFORM_PADDING = Constants.AudioWaveform.WaveformPadding
local WAVEFORM_MIN_HEIGHT = Constants.AudioWaveform.WaveformMinHeight

type Bindable<T> = Foundation.Bindable<T>

type Props = {
	audioAssetId: number,
	position: Bindable<UDim2>,
	videoDuration: number,
	zIndex: number,
	onWaveformReady: () -> (),
}

local function Waveform(props: Props, ref: React.Ref<GuiObject>?): React.ReactElement
	local tokens = useTokens()
	local waveform = useAudioWaveform(props.audioAssetId, props.videoDuration)

	React.useEffect(function()
		if waveform and #waveform > 0 then
			props.onWaveformReady()
		end
	end, { props.audioAssetId, props.onWaveformReady, waveform })

	return React.createElement(
		View,
		{
			Position = props.position,
			tag = "align-x-left align-y-center anchor-center-left auto-x size-0-full row",
			ZIndex = props.zIndex,
			layout = {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, WAVEFORM_PADDING),
			},
			ref = ref,
		},
		Dash.map(waveform, function(sample, index)
			return React.createElement(View, {
				key = index,
				LayoutOrder = index,
				Size = UDim2.new(0, WAVEFORM_WIDTH, sample, WAVEFORM_MIN_HEIGHT),
				backgroundStyle = tokens.Color.Content.Muted,
				tag = "radius-circle",
			})
		end)
	)
end

return React.forwardRef(Waveform)
