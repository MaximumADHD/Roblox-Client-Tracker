return {
	-- Max number of NFC normalized codepoints a message can be.
	-- https://confluence.rbx.com/display/PX/Chat+message+length+limits
	--
	-- TODO: Sync this up with the MaximumMessageLength property in
	-- ClientChat/DefaultChatModules/ChatSettings. Use 160 for both. Right now
	-- we're duplicating the value.
	MAX_MESSAGE_LENGTH = 200,

	-- The amount of studs the camera has to move before a rerender occurs.
	CAMERA_CHANGED_EPSILON = 5,
	-- Triggers a billboard rerender when its offset (determined by the character's hitbox size) changes by this amount
	BILLBOARD_OFFSET_EPSILON = .5,
}
