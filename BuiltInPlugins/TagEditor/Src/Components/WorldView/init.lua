local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local WorldVisual = require(script.WorldVisual)
local WorldProvider = require(script.WorldProvider)

local function WorldView(props)
	if props.enabled then
		return Roact.createElement(WorldProvider, {}, {
			render = function(partsList)
				return Roact.createElement(WorldVisual, {
					partsList = partsList,
					tags = props.tags,
				})
			end,
		})
	else
		return nil
	end
end

local function mapStateToProps(state)
	return {
		enabled = state.WorldView,
		tags = state.TagData,
	}
end

WorldView = RoactRodux.connect(mapStateToProps)(WorldView)

return WorldView
