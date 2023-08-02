--[[
	These are chat settings that are the default in legacy BubbleChat but are no longer customizable in TextChatService's BubbleChat.
]]

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")

local Flags = ExperienceChat.Flags
local getEnableChatInputBarConfigurationStyleCustomizations =
	require(Flags.getEnableChatInputBarConfigurationStyleCustomizations)

return {
	-- The amount of messages to be displayed, before old ones disappear
	-- immediately when a new message comes in.
	MaxBubbles = 3,
	BackgroundTransparency = getEnableChatInputBarConfigurationStyleCustomizations() and 0.1 or nil,
	Transparency = 0.1,
	TailVisible = true,
	Padding = 8, -- in pixels
	MaxWidth = 300, --in pixels
	BubbleDuration = 15,
	AdorneeName = "HumanoidRootPart",
	MaxDistance = 100,
	MinimizeDistance = 50,
	FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json"),

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
