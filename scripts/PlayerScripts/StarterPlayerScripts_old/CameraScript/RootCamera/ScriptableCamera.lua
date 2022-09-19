--!nonstrict

-- When PlayerScripts are loaded, sibling scripts and folders with the same name are merged
local RootCameraCreator = require(script.Parent) :: typeof(require(script.Parent.Parent.RootCamera))

local function CreateScriptableCamera()
	local module = RootCameraCreator()

	function module:Update()
	end

	return module
end

return CreateScriptableCamera
