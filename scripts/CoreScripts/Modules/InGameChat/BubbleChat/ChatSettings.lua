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
	Font = Enum.Font.GothamMedium,
	Transparency = 0.1,
	CornerEnabled = true, -- In case devs are concerned with UICorner performance issues, they can just disable those
	CornerRadius = UDim.new(0, 12),
	TailVisible = true,
	Padding = 8, -- in pixels
	MaxWidth = 300, --in pixels

	-- Background image settings
	BackgroundImage = {
		Image = "",
		ImageColor3 = Color3.new(1, 1, 1),
		ImageRectOffset = Vector2.new(),
		ImageRectSize = Vector2.new(),
		ScaleType = Enum.ScaleType.Stretch,
		SliceCenter = Rect.new(Vector2.new(), Vector2.new()),
		SliceScale = 1,
		TileSize = UDim2.fromScale(1, 1),
	},

	-- Background gradient settings
	BackgroundGradient = {
		Enabled = false,
		Color = ColorSequence.new(Color3.fromRGB(150, 150, 150), Color3.fromRGB(250, 250, 250)),
		Offset = Vector2.new(),
		Rotation = 0,
		Transparency = NumberSequence.new(0),
	},

	-- Animation settings: enabled/disabled, Otter damping ratio and frequency
	SizeAnimation = {
		Enabled = true,
		SpringDampingRatio = 1,
		SpringFrequency = 2,
	},
	TransparencyAnimation = {
		Enabled = true,
		SpringDampingRatio = 1,
		SpringFrequency = 2,
	},

	-- Extra space between the head and the billboard (useful if you want to
	-- leave some space for other character billboard UIs)
	VerticalStudsOffset = 0,

	-- Gives a different StudsOffset to the local player's billboard UI to prevent
	-- large hats and emotes from colliding with the bubbles
	LocalPlayerStudsOffset = Vector3.new(0, 0, 2),

	-- Space in pixels between two bubbles
	BubblesSpacing = 6,

	-- The distance (from the camera) that bubbles turn into a single bubble
	-- with ellipses (...) to indicate chatter.
	MinimizeDistance = 40,
	-- The max distance (from the camera) that bubbles are shown at
	MaxDistance = 100,

	-- Name of the body part that the billboard GUI will attach itself to.
	-- A popular alternative to "HumanoidRootPart" is "Head", which makes
	-- the chat bubble follow the character's animation at the cost of
	-- readability.
	AdorneeName = "HumanoidRootPart",

	-- Voice chat related settings
	Voice = {
		-- Whether or not to show the voice indicator within bubble chat bubbles.
		ShowIndicator = true,
	},

	-- This is a table where the keys are user IDs and the values are settings tables.
	-- For a given user ID, the associated settings table will override the settings defined above.
	-- Example: UserSpecificSettings = {[12345] = {BackgroundColor3 = Color3.fromRGB(255, 0, 0)}}
	-- This will make only the player with user ID 12345 have his bubbles with a red background.
	-- For NPCs (parts that "talk" using the Chat:Chat(part, message) function), use the full name of the part
	-- that you passed as the first argument to Chat:Chat instead of the user ID. Example:
	-- UserSpecificSettings = {[workspace.NPC.Head:GetFullName()] = {BackgroundColor3 = Color3.fromRGB(255, 0, 0)}}
	UserSpecificSettings = {},
}
