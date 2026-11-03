--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Parent.Constants)
local VoiceDebugSource = require(script.Parent.VoiceDebugSource)

local SOURCE_IN_EXPERIENCE = VoiceDebugSource.InExperience
local SOURCE_PARTY = VoiceDebugSource.Party

local OPTIONS = {
	{ source = SOURCE_IN_EXPERIENCE, label = "In-experience" },
	{ source = SOURCE_PARTY, label = "Party voice" },
}

local SEGMENT_HEIGHT = 20
local UNDERLINE_HEIGHT = 2
local UNDERLINE_HORIZONTAL_INSET = 8
local SEGMENT_HORIZONTAL_PADDING = UDim.new(0, 8)
local SEGMENT_TEXT_SIZE_DELTA = -2

export type Props = {
	source: string,
	layoutOrder: number?,
	onSourceChanged: (string) -> (),
}

local function resolveActivatedSource(currentSource: string, optionSource: string): string?
	if currentSource == optionSource then
		return nil
	end
	return optionSource
end

local function Segment(option, isSelected: boolean, segmentLayoutOrder: number, onActivated: () -> ())
	local textColor = isSelected and Constants.Color.Text or Constants.Color.BorderGray

	return Roact.createElement("TextButton", {
		Text = option.label,
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.new(0, 0, 0, SEGMENT_HEIGHT),
		LayoutOrder = segmentLayoutOrder,
		Font = Constants.Font.MainWindow,
		TextSize = Constants.DefaultFontSize.MainWindow + SEGMENT_TEXT_SIZE_DELTA,
		TextColor3 = textColor,
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		[Roact.Event.Activated] = onActivated,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = SEGMENT_HORIZONTAL_PADDING,
			PaddingRight = SEGMENT_HORIZONTAL_PADDING,
		}),
		Underline = isSelected and Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 1),
			Position = UDim2.new(0.5, 0, 1, 0),
			Size = UDim2.new(1, -UNDERLINE_HORIZONTAL_INSET, 0, UNDERLINE_HEIGHT),
			BackgroundColor3 = Constants.Color.SelectedBlue,
			BorderSizePixel = 0,
		}) or nil,
	})
end

local function VoiceSourceToggle(props: Props)
	local children = {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}

	for i, option in OPTIONS do
		children[option.source] = Segment(option, props.source == option.source, i, function()
			local nextSource = resolveActivatedSource(props.source, option.source)
			if nextSource then
				props.onSourceChanged(nextSource)
			end
		end)
	end

	return Roact.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.new(0, 0, 0, SEGMENT_HEIGHT),
		BackgroundTransparency = 1,
		LayoutOrder = props.layoutOrder,
	}, children)
end

return VoiceSourceToggle
