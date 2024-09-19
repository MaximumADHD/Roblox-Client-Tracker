local ModalRoot = script.Parent.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local enumerate = require(Packages.enumerate)

return enumerate("CloseButtonIcon", {
	"Close",
	"Back",
})
