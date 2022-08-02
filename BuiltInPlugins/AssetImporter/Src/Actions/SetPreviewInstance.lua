local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

export type Props = {
	previewInstance: Instance
}

return Framework.Util.Action(script.Name, function(previewInstance: Instance)
	return {
		previewInstance = previewInstance,
	}
end)
