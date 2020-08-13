local CorePackages = game:GetService("CorePackages")

local t = require(CorePackages.Packages.t)

local Types = {}

Types.IMessage = t.strictInterface({
	id = t.string,
	name = t.string,
	text = t.string,
	userId = t.string,
	timestamp = t.number,

	-- Optionally the adornee of the BillboardGui can be specified. This is used
	-- in conjunction with the Chat() method so we can easily associate an NPC
	-- with a message.
	--
	-- It's trivial to get a Player's Character from the userId included in the
	-- message, so we only use this when we need to specifically supply the
	-- character to use.
	adornee = t.optional(t.union(t.instanceIsA("BasePart"), t.instanceOf("Model"))),
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

return Types
