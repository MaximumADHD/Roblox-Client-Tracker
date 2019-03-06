--Creates and provides access to the PlayerListMaster.
--In the future we want to avoid so many different places using this,
--so avoid adding more dependancies if possible.

local PlayerListMaster = require(script.Parent.PlayerListMaster)

return PlayerListMaster.new()
