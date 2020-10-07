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
-- assertion in InGameChat.lua)
Types.IChatSettings = t.strictInterface({
	BubbleDuration = t.optional(t.number),
	MaxBubbles = t.optional(t.number),

	BackgroundColor3 = t.optional(t.Color3),
	TextColor3 = t.optional(t.Color3),
	TextSize = t.optional(t.number),
	Font = t.optional(t.enum(Enum.Font)),
	Transparency = t.optional(t.number),
	CornerRadius = t.optional(t.UDim),
	TailVisible = t.optional(t.boolean),
	Padding = t.optional(t.number),
	MaxWidth = t.optional(t.number),

	VerticalStudsOffset = t.optional(t.number),

	BubblesSpacing = t.optional(t.number),

	MinimizeDistance = t.optional(t.number),
	MaxDistance = t.optional(t.number),
})

return Types
