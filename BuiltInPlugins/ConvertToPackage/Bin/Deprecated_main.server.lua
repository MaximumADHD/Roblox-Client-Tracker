if game:GetFastFlag("ImprovePluginSpeed_ConvertToPackage") then
	return
end

local main = require(script.Parent.main)
main(plugin)
