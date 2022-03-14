local Style = script.Parent
local Core = Style.Parent
local UIBlox = Core.Parent

-- This was a vestigial part of a style refactor which encountered some issues,
-- and was never properly enabled. To minimize import changes, we re-export the
-- original StyleConsumer implementation.
return require(UIBlox.Style.StyleConsumer)
