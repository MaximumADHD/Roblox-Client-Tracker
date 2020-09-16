-- This Flag is a descendant of the Common folder instead of Modules/Flags
-- because it needs to be accessible by both Modules/Common/LegacyThumbnailUrls and
-- other places like Emotes, InspectAndBuy
--
-- Since the server only has access to the Common and Server folders, it's
-- placed here so both parts of the codebase can access it.

game:DefineFastFlag("UseThumbnailUrl", false)

return function()
    return game:GetFastFlag("UseThumbnailUrl")
end
