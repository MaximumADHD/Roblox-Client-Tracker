--[[
	BaseWrap API helper functions.
]]

local WrapUtil = {}

function WrapUtil.getCageOrigin(cageType, wrap)
	if cageType == Enum.CageType.Inner and wrap:IsA("WrapLayer") then
		return wrap.ReferenceOrigin * wrap.Parent.CFrame
	elseif cageType == Enum.CageType.Outer and wrap:IsA("BaseWrap") then
		return wrap.CageOrigin * wrap.Parent.CFrame
	end

	return CFrame.new()
end

function WrapUtil.getVerticesFromWrap(cageType, wrap)
	local verts = {}
	local _, err = pcall(function()
		verts = wrap:GetVertices(cageType)
	end)
	if err then
		print(err)
	end
	return verts
end

function WrapUtil.getFacesForWrap(cageType, wrap)
	local faces = {}
	local _, err = pcall(function()
		faces = wrap:GetFaces(cageType)
	end)
	if err then
		print(err)
	end
	return faces
end

return WrapUtil