local RootCameraCreator = require(script.Parent)

local function CreateScriptableCamera()
	local module = RootCameraCreator()

	function module:Update()
	end
	
	return module
end

return CreateScriptableCamera
