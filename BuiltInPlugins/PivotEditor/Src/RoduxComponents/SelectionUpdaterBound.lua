local Plugin = script.Parent.Parent.Parent

local RoactRodux = require(Plugin.Packages.RoactRodux)

local SelectObjectForEditing = require(Plugin.Src.Actions.SelectObjectForEditing)
local SelectInvalidSelection = require(Plugin.Src.Actions.SelectInvalidSelection)

local SelectionUpdater = require(Plugin.Src.Components.SelectionUpdater)

local function mapStateToProps(state, _)
	return {
		targetObject = state.targetObject,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		selectObjectForEditing = function(targetObject)
			dispatch(SelectObjectForEditing(targetObject))
		end,
		selectInvalidSelection = function(message)
			dispatch(SelectInvalidSelection(message))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(SelectionUpdater)
