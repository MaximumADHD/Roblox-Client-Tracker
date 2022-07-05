local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

export type Props = {
	assetImportSession: Instance
}

return Framework.Util.Action(script.Name, function(assetImportSession: Instance)
	return {
		assetImportSession = assetImportSession,
	}
end)
