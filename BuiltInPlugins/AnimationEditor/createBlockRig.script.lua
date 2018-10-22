local rigCreator = require(script.Parent.RigCreator)

local toolbar = plugin:CreateToolbar("Animations")
local button = toolbar:CreateButton(
	"", -- The text next to the icon. Leave this blank if the icon is sufficient.
	"Create Block Rig", -- hover text
	"http://www.roblox.com/asset/?id=142301446" -- The icon file's name
)

button.Click:connect(function()
	if (_G["AnimationEdit"] == true) then
		print("Cannot create rig while in edit mode.")
		return
	end
	--
	local rig = rigCreator.CreateR6Rig()	
	rig:MoveTo(Vector3.new(0, 5.2, 0))
end)