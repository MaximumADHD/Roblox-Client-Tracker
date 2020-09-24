
local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local SelectionUpdaterBound = require(Plugin.Src.RoduxComponents.SelectionUpdaterBound)

local EditingMode = require(Plugin.Src.Utility.EditingMode)

local EditPivotSession = Roact.PureComponent:extend("EditPivotSession")

function EditPivotSession:init()
	assert(self.props.Events, "EditPivotSession missing Events prop")
end

function EditPivotSession:didMount()
	self:_connectEvents()
end

function EditPivotSession:willUnmount()
	self:_disconnectEvents()
end

function EditPivotSession:render()
	return Roact.createElement(Roact.Portal, {
		target = game.Lighting,
	}, {
		SelectionUpdaterBound = Roact.createElement(SelectionUpdaterBound),
		DEBUG_EditPivotMode = Roact.createElement("StringValue", {
			Value = tostring(self.props.editingMode).." - "..self.props.objectName,
		}),
	})
end

function EditPivotSession:_connectEvents()
	local connectionsToBreak = {}
	table.insert(connectionsToBreak, self.props.Events.onClearPivot:Connect(function()
		self:_onClearPivot()
	end))
	table.insert(connectionsToBreak, self.props.Events.onSelectModel:Connect(function()
		self:_onSetPivotToModelCenter()
	end))
	table.insert(connectionsToBreak, self.props.Events.onSelectGeometry:Connect(function()
		self:_onPivotEditingMode(EditingMode.SelectGeometry)
	end))
	table.insert(connectionsToBreak, self.props.Events.onSelectSurface:Connect(function()
		self:_onPivotEditingMode(EditingMode.SelectSurface)
	end))
	table.insert(connectionsToBreak, self.props.Events.onSelectPart:Connect(function()
		self:_onPivotEditingMode(EditingMode.SelectPart)
	end))
	self._connectionsToBreak = connectionsToBreak
end

function EditPivotSession:_disconnectEvents()
	for _, connection in pairs(self._connectionsToBreak) do
		connection:Disconnect()
	end
end

function EditPivotSession:_onClearPivot()
	-- TODO: DEVTOOLS-4096
end

function EditPivotSession:_onSetPivotToModelCenter()
	-- TODO: DEVTOOLS-4100
end

function EditPivotSession:_onPivotEditingMode(editingMode)
	-- TODO: DEVTOOLS-4097 - DEVTOOLS-4099
end

local function mapStateToProps(state, _)
	return {
		editingMode = state.editingMode,
		objectName = tostring(state.targetObject),
	}
end

local function mapDispatchToProps(dispatch)
	return {
		--TODO: Will need to add dispatchers in DEVTOOLS-4096
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(EditPivotSession)