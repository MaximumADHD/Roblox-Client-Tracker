-- This Flag is a descendant of the Common folder instead of Modules/Flags
-- because it needs to be accessible by both Modules/InGameChat and
-- Modules/Server/ClientChat/ChatWindowInstaller.
--
-- Since the server only has access to the Common and Server folders, it's
-- placed here so both parts of the codebase can access it.

game:DefineFastFlag("RoactBubbleChat", false)

return function()
    return game:GetFastFlag("RoactBubbleChat")
end
