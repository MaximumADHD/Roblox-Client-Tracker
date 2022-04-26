--[[
	Wrapper around the API on BaseWrap to get mesh data. Meant to be given
	to MeshEditingContextBase:Init. Created in CageEditingContext.lua.

	All of the following fields are required by MeshEditingContextBase:
	- Instance Instance: the data model instance we are using to get mesh data from
	- function GetVertices: returns array of Vector3
	- function GetTriangleIndexData: returns an array of arrays. Each subarray is a group of three vertex indices making up a triangle.
	- function GetMeshOrigin: returns a CFrame for the origin of the mesh.
]]

local LuaMeshEditingModule = script.Parent.Parent.Parent
local Util = LuaMeshEditingModule.Src.Util
local WrapUtil = require(Util.WrapUtil)

local CageMeshWrapperObject = {}
CageMeshWrapperObject.__index = CageMeshWrapperObject

function CageMeshWrapperObject.new(cageType, wrap)
	local cageMeshWrapperObject = setmetatable({}, CageMeshWrapperObject)
	cageMeshWrapperObject.instance = wrap
	function cageMeshWrapperObject:getVertices()
		return WrapUtil.getVerticesFromWrap(cageType, self.instance)
	end
	function cageMeshWrapperObject:getTriangleIndexData()
		local facesLinearArray = WrapUtil.getFacesForWrap(cageType, self.instance)
		local faces = {}
		for index = 1, #facesLinearArray, 3 do
			table.insert(faces, {
				facesLinearArray[index] + 1,
				facesLinearArray[index + 1] + 1,
				facesLinearArray[index + 2] + 1,
			})
		end
		return faces
	end
	function cageMeshWrapperObject:getMeshOrigin()
		return WrapUtil.getCageOrigin(cageType, self.instance)
	end

	return cageMeshWrapperObject
end

return CageMeshWrapperObject
