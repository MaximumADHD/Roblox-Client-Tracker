--[[
	This stubs the DocParser which accesses the plugin-only Source property on ModuleScripts.
]]
local DocParser = require((script.Parent :: any).DocParser_stubbed)

function DocParser:parse()
	return {
		Props = {},
		Style = {},
		Summary = self.name,
	}
end

return DocParser
