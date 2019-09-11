local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(uploadSucceeded)
	local errmsg = "uploadSucceeded arg must be a boolean, received %s"
	assert(type(uploadSucceeded) == "boolean", string.format(errmsg, tostring(uploadSucceeded)))
	return {
		uploadSucceeded = uploadSucceeded
	}
end)
