game:DefineFastFlag("UploadMakeupSupport", false)

local GetFFlagSingleUploadMakeupSupport = require(script.Parent.GetFFlagSingleUploadMakeupSupport)

return function()
	return GetFFlagSingleUploadMakeupSupport() and game:GetFastFlag("UploadMakeupSupport")
end
