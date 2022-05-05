--[[
	Uses mesh vertex data to render a wireframe out of LineHandleAdornments.
]]

local ControlEdgeView = require(script.Parent.ControlEdgeView)
local CoreGui = game:GetService("CoreGui")

local WireframeMeshView = {}
WireframeMeshView.__index = WireframeMeshView

local edges = { 2, 3, 1 }

function WireframeMeshView.new()
	local wireframeMeshViewObject = setmetatable({}, WireframeMeshView)

	-- private functions
	local function _renderLinks(self, props)
		local context = props.Context
		local transparency = props.Transparency
		local wireColor = props.WireColor
		local toolAdornees = props.ToolAdornees
		local visible = props.Visible
		assert(toolAdornees ~= nil, "ToolAdornees cannot be nil!")
		assert(context ~= nil, "Context cannot be nil!")

		local triangleIndexData = context:getTriangleIndexData()
		local vertexData = context:getVertexData()

		if triangleIndexData and vertexData then
			for meshName, trianglesPerMesh in pairs(triangleIndexData) do
				if not self.adorns[meshName] then
					self.adorns[meshName] = {}
				end
				local adornee = toolAdornees:getAdornee(meshName)
				for _, triangle in pairs(trianglesPerMesh) do
					for vertexIndex1, vertexIndex2 in ipairs(edges) do
						local lowerPointIndex =
							if triangle[vertexIndex1] < triangle[vertexIndex2] then triangle[vertexIndex1] else triangle[vertexIndex2]
						local higherPointIndex =
							if triangle[vertexIndex1] < triangle[vertexIndex2] then triangle[vertexIndex2] else triangle[vertexIndex1]
						if not self.adorns[meshName][lowerPointIndex] then
							self.adorns[meshName][lowerPointIndex] = {}
						end
						if not self.adorns[meshName][lowerPointIndex][higherPointIndex] then
							self.adorns[meshName][lowerPointIndex][higherPointIndex] = ControlEdgeView.new()
						end
						self.adorns[meshName][lowerPointIndex][higherPointIndex]:render({
							Adornee = adornee,
							StartPoint = vertexData[meshName][lowerPointIndex],
							EndPoint = vertexData[meshName][higherPointIndex],
							Transparency = transparency,
							Color = wireColor,
							Visible = visible,
							Parent = self.folder,
						})
					end
				end
			end
		end
	end

	-- public functions
	function wireframeMeshViewObject:render(props)
		if not self.folder then
			self.folder = Instance.new("Folder")
			self.folder.Archivable = false
			self.folder.Parent = CoreGui
		end

		if not self.adorns then
			self.adorns = {}
		end

		_renderLinks(self, props)
	end

	function wireframeMeshViewObject:cleanup()
		if self.adorns then
			for _, lowerPointIndices in pairs(self.adorns) do
				for _, higherPointIndices in pairs(lowerPointIndices) do
					for _, edge in pairs(higherPointIndices) do
						edge:cleanup()
					end
				end
			end
			self.adorns = nil
		end

		if self.folder then
			self.folder:Destroy()
			self.folder = nil
		end
	end

	return wireframeMeshViewObject
end

return WireframeMeshView
