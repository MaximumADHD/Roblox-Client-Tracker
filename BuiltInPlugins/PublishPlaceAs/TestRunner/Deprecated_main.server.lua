if game:GetFastFlag("ImprovePluginSpeed_PublishPlaceAs") then
	return
end

local main = require(script.Parent.Parent.Src.main)
main(plugin)
