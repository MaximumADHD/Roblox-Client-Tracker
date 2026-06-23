--Creates and provides access to the PlayerListController.
--In the future we want to avoid so many different places using this,
--so avoid adding more dependancies if possible.

local PlayerListController = require(script.Parent.PlayerListController)

return PlayerListController.new()
