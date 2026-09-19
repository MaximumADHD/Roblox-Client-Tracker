local Framework = script.Parent.Parent

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local Flags = require((script.Parent :: any).Flags_stubbed)

local constructor = Flags.new

function Flags.new(featuresMap, config)
	return constructor(
		featuresMap,
		join(config, {
			shouldFetchLiveValues = false,
		})
	)
end

return Flags
