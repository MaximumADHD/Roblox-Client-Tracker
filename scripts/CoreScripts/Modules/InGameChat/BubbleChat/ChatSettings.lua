--[[
	These are developer-facing settings for BubbleChat that can be configured
	through the BubbleChatSettings API.

	Every value in this table is the default, which can be overriden by
	developers at runtime.

	Usage:

	    Startergui:SetCore("BubbleChatSettings", {
	        BubbleDuration = 10,
	        Maxbubbles = 5,
	    })
]]

return {
	-- The amount of time, in seconds, to wait before a bubble fades out.
	BubbleDuration = 15,

	-- The amount of messages to be displayed, before old ones disappear
	-- immediately when a new message comes in.
	MaxBubbles = 3,

	-- The distance (from the camera) that bubbles turn into a single bubble
	-- with elipses (...) to indicate chatter.
	MinimizeDistance = 40,

	-- The max distance (from the camera) that bubbles are shown at
	MaxDistance = 100,
}
