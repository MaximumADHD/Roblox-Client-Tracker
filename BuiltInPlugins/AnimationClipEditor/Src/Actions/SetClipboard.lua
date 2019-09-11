--[[
	Used to set the current Clipboard.
	Accepts a table of keyframes, or an
	empty table to clear the clipboard.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(clipboard, clipboardType)
	return {
		clipboard = clipboard,
		clipboardType = clipboardType,
	}
end)