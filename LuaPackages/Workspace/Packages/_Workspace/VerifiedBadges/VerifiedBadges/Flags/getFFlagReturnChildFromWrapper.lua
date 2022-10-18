game:DefineFastFlag("ReturnChildFromWrapper", false)

--[=[
	The `ReturnChildFromWrapper` flag is used as a mechanism to
	to return just the child passed in to the emoji wrapper when
	the emoji argument is an empty string.

	@within VerifiedBadges
	@tag Fast
	@private
]=]
local function getFFlagReturnChildFromWrapper()
	return game:GetFastFlag("ReturnChildFromWrapper")
end

return getFFlagReturnChildFromWrapper
