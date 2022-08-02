local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local Cryo = require(VerifiedBadges.Parent.Cryo)
local React = require(VerifiedBadges.Parent.React)
local ReactRoblox = require(VerifiedBadges.Parent.ReactRoblox)
local RoactAppExperiment = require(VerifiedBadges.Parent.RoactAppExperiment)
local constants = require(VerifiedBadges.constants)
local getFStringVerifiedBadgeLayer = require(VerifiedBadges.Flags.getFStringVerifiedBadgeLayer)
local getExperimentValue = require(VerifiedBadges.Experiments.getExperimentValue)

local defaultProps = {
	emoji = constants.PREMIUM_EMOJI,
	color = Color3.fromHex("#fff"),
	font = Enum.Font.Gotham,
	size = UDim2.fromScale(1, 0),
	automaticSize = Enum.AutomaticSize.XY,
}

type DefaultProps = typeof(defaultProps)

export type Props = {
	emoji: string,
	color: Color3?,
	font: Enum.Font?,
	size: UDim2?,
	layoutOrder: number?,
	children: React.ReactElement<any, string>?,

	-- Mocks
	mockIsEnrolled: boolean?,
}

local function EmojiWrapper(props: Props)
	local joinedProps: DefaultProps & Props = Cryo.Dictionary.join(defaultProps, props)

	local isEnrolled = RoactAppExperiment.useUserExperiment({
		getFStringVerifiedBadgeLayer(),
	}, getExperimentValue)

	local shouldRenderEmoji = props.mockIsEnrolled or isEnrolled or props.emoji ~= constants.VERIFIED_EMOJI

	if joinedProps.children then
		assert(React.Children.count(joinedProps.children) <= 1, "EmojiWrapper can only contain one child")
	end

	local emojiSize, setEmojiSize = React.useState(0)

	local onSizeChanged = React.useCallback(function(rbx: Frame)
		local newEmojiSize = rbx.AbsoluteSize.Y
		setEmojiSize(newEmojiSize)
	end, {})

	return React.createElement("Frame", {
		LayoutOrder = joinedProps.layoutOrder,
		Size = joinedProps.size,
		AutomaticSize = joinedProps.automaticSize,
		BackgroundTransparency = 1,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, -emojiSize),
		}),

		ChildrenWrapper = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			[ReactRoblox.Change.AbsoluteSize] = onSizeChanged,
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingRight = UDim.new(0, emojiSize),
			}),

			Children = React.createElement(React.Fragment, nil, joinedProps.children),
		}),

		Emoji = shouldRenderEmoji and React.createElement("TextLabel", {
			LayoutOrder = 2,
			Text = joinedProps.emoji,
			Font = joinedProps.font,
			TextColor3 = joinedProps.color,
			TextSize = emojiSize,
			BackgroundTransparency = 1,
			TextYAlignment = Enum.TextYAlignment.Center,
			TextXAlignment = Enum.TextXAlignment.Center,
			Size = UDim2.fromOffset(emojiSize, emojiSize),
		}),
	})
end

return EmojiWrapper
