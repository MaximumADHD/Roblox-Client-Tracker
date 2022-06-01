local CorePackages = game:GetService("CorePackages")

local t = require(CorePackages.Packages.t)

local Types = {}

Types.IMessage = t.strictInterface({
	id = t.string,
	name = t.string,
	text = t.string,
	userId = t.string,
	timestamp = t.number,
	adornee = t.union(t.instanceIsA("BasePart"), t.instanceOf("Model")),
})

-- This is the data we expect from developer-land. When a message is sent, the
-- server creates a MessageData object which gets sent to the various events we
-- have by default. However, since a developer has free reign to change the
-- MessageData object, we need to ensure we get all the values we expect.
Types.IMessageData = t.interface({
	ID = t.number,
	SpeakerUserId = t.number,
	FromSpeaker = t.string,
	Time = t.number,

	Message = t.optional(t.string),
})

-- Type for the settings object. Keep backward compatibility in mind when modifying
-- this: any change might break calls to Chat:SetBubbleChatSettings (see type
-- assertion in PlayerBillboards.lua)
local chatSettings = {
	BubbleDuration = t.optional(t.number),
	MaxBubbles = t.optional(t.number),

	BackgroundColor3 = t.optional(t.Color3),
	TextColor3 = t.optional(t.Color3),
	TextSize = t.optional(t.number),
	Font = t.optional(t.enum(Enum.Font)),
	Transparency = t.optional(t.number),
	CornerEnabled = t.optional(t.boolean),
	CornerRadius = t.optional(t.UDim),
	TailVisible = t.optional(t.boolean),
	Padding = t.optional(t.number),
	MaxWidth = t.optional(t.number),

	BackgroundImage = t.optional(t.strictInterface({
		Image = t.optional(t.string),
		ImageColor3 = t.optional(t.Color3),
		ImageRectOffset = t.optional(t.Vector2),
		ImageRectSize = t.optional(t.Vector2),
		ScaleType = t.optional(t.enum(Enum.ScaleType)),
		SliceCenter = t.optional(t.Rect),
		SliceScale = t.optional(t.number),
		TileSize = t.optional(t.UDim2),
	})),

	BackgroundGradient = t.optional(t.strictInterface({
		Enabled = t.optional(t.boolean),
		Color = t.optional(t.ColorSequence),
		Offset = t.optional(t.Vector2),
		Rotation = t.optional(t.number),
		Transparency = t.optional(t.NumberSequence),
	})),

	SizeAnimation = t.optional(t.strictInterface({
		Enabled = t.optional(t.boolean),
		SpringDampingRatio = t.optional(t.number),
		SpringFrequency = t.optional(t.number),
	})),
	TransparencyAnimation = t.optional(t.strictInterface({
		Enabled = t.optional(t.boolean),
		SpringDampingRatio = t.optional(t.number),
		SpringFrequency = t.optional(t.number),
	})),

	VerticalStudsOffset = t.optional(t.number),
	LocalPlayerStudsOffset = t.optional(t.Vector3),

	BubblesSpacing = t.optional(t.number),

	MinimizeDistance = t.optional(t.number),
	MaxDistance = t.optional(t.number),

	AdorneeName = t.optional(t.string),

	Voice = t.optional(t.strictInterface({
		ShowIndicator = t.optional(t.boolean),
	})),
}

-- chatSettings.UserSpecificSettings is a table that associates userIds (as strings) to a settings table
local settings = {}
for key, value in pairs(chatSettings) do
	settings[key] = value
end
chatSettings.UserSpecificSettings = t.optional(t.map(t.string, t.strictInterface(settings)))

Types.IChatSettings = t.strictInterface(chatSettings)

return Types
