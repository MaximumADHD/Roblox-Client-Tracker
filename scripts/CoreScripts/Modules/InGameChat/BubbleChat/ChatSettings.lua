--[[
	These are developer-facing settings for BubbleChat that can be configured
	through the SetBubbleChatSettings API.

	Every value in this table is the default, which can be overriden by
	developers at runtime.

	Usage:

	    game.Chat:SetBubbleChatSettings({
	        BubbleDuration = 10,
	        MaxBubbles = 5,
	    })
]]

return {
	-- The amount of time, in seconds, to wait before a bubble fades out.
	BubbleDuration = 15,

	-- The amount of messages to be displayed, before old ones disappear
	-- immediately when a new message comes in.
	MaxBubbles = 3,

	-- Styling for the bubbles. These settings will change various visual aspects.
	BackgroundColor3 = Color3.fromRGB(250, 250, 250),
	TextColor3 = Color3.fromRGB(57, 59, 61),
	TextSize = 16,
	Font = Enum.Font.GothamSemibold,
	Transparency = .1,
	CornerRadius = UDim.new(0, 12),
	TailVisible = true,
	Padding = 8, -- in pixels
	MaxWidth = 300, --in pixels

	-- Extra space between the head and the billboard (useful if you want to
	-- leave some space for other character billboard UIs)
	VerticalStudsOffset = 0,

	-- Space in pixels between two bubbles
	BubblesSpacing = 6,

	-- The distance (from the camera) that bubbles turn into a single bubble
	-- with ellipses (...) to indicate chatter.
	MinimizeDistance = 40,
	-- The max distance (from the camera) that bubbles are shown at
	MaxDistance = 100,
}
