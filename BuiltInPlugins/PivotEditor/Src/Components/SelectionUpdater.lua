
local Plugin = script.Parent.Parent.Parent

local Selection = game:GetService("Selection")

local Roact = require(Plugin.Packages.Roact)

local StatusMessage = require(Plugin.Src.Utility.StatusMessage)

local function isValidTarget(instance)
	return instance and instance:IsA("PVInstance") and instance ~= Workspace
		and instance ~= Workspace.Terrain
end

local SelectionUpdater = Roact.PureComponent:extend("SelectionUpdater")

function SelectionUpdater:init()
	assert(self.props.selectObjectForEditing, "selectObjectForEditing is required")
	assert(self.props.selectInvalidSelection, "selectInvalidSelection is required")
end

function SelectionUpdater:didMount()
	self._connection = Selection.SelectionChanged:Connect(function()
		self:_update()
	end)
	self:_update()
end

function SelectionUpdater:willUnmount()
	self._connection:Disconnect()
end

function SelectionUpdater:render()
end

function SelectionUpdater:_update()
	local selection = Selection:Get()
	if #selection == 1 then
		local targetObject = selection[1]
		if self.props.targetObject ~= targetObject then
			if isValidTarget(targetObject) then
				self.props.selectObjectForEditing(targetObject)
			else
				self.props.selectInvalidSelection(StatusMessage.InvalidTarget)
			end
		end
	elseif #selection > 1 then
		self.props.selectInvalidSelection(StatusMessage.MultipleSelection)
	else
		self.props.selectInvalidSelection(StatusMessage.NoSelection)
	end
end

return SelectionUpdater