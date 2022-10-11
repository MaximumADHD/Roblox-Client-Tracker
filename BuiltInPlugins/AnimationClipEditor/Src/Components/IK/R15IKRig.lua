--[[
	Creates constraint instances for R15 that need default IK rigs. Temporary,
	only exist as long as editor is open and IK is enabled.

	Props:
		Instance RootInstance = instance currently being animated in the editor.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local Constants = require(Plugin.Src.Util.Constants)

local Workspace = game:GetService("Workspace")

local R15IKRig = Roact.PureComponent:extend("R15IKRig")

function R15IKRig:buildConstraints()
	local constraintProps = RigUtils.buildR15Constraints(self.props.RootInstance)
	local instances = {}
	for name, data in pairs(constraintProps) do
		instances[name] = Roact.createElement(data.Type, data.Props)
	end
	return instances
end

function R15IKRig:init()
	local previousData = Workspace:FindFirstChild(Constants.TEMPORARY_CONSTRAINTS)
	if previousData then
		previousData:Destroy()
	end
end

function R15IKRig:render()
	return Roact.createElement(Roact.Portal, {
		target = Workspace,
	}, {
		[Constants.TEMPORARY_CONSTRAINTS] = Roact.createElement("Folder", {}, self:buildConstraints()),
	})
end

return R15IKRig
