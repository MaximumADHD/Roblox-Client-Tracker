--!strict
local root = script.Parent.Parent
local Constants = require(root.Constants)

return function(instance: Instance): boolean
	if not instance:GetAttribute(Constants.ProxyWrapAttributeName) then
		return false
	end

	if not instance:IsA("MeshPart") then
		return false
	end

	if not instance.Parent or (not instance.Parent:IsA("WrapTarget") and not instance.Parent:IsA("WrapLayer")) then
		return false
	end

	local descendants = instance:GetDescendants()
	if #descendants ~= 0 then
		return false
	end

	local cageMeshContent = (instance :: MeshPart).MeshContent
	if not cageMeshContent then
		return false
	end

	local contentObject = cageMeshContent.Object
	if not contentObject or not contentObject:IsA("EditableMesh") then
		return false
	end

	return true
end
