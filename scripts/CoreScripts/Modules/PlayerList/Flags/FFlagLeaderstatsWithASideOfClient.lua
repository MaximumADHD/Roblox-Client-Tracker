-- We perform this additional check because DFFlagExposeAttributesEarly must be enabled in order
-- for this change to work. The following stops us accidentally shooting ourselves in the foot
-- and causing the playerlist to break.
if not game:GetEngineFeature("CoreAttributes") then
	return false
end

return game:DefineFastFlag("LeaderstatsWithASideOfClient", false)
