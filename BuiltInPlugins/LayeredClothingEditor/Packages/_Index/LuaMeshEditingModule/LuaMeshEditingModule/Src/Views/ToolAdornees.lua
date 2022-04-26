--[[
	Object representing groups of Adornees. Adornees are parts placed in Workspace
	that AdornmentHandles can reference in order to properly display. The
	CFrame of the adornee will also determine what each AdornmentHandle's
	position will be relative to. The Adornees will also serve as parents
	for each ControlPoint part.
]]

local LuaMeshEditingModule = script.Parent.Parent.Parent
local Packages = LuaMeshEditingModule.Packages

local Dash = require(Packages.Dash)
local keys = Dash.keys

local ToolAdornees = {}
ToolAdornees.__index = ToolAdornees

function ToolAdornees.new(context)
	local toolAdorneesObject = setmetatable({}, ToolAdornees)

	-- public variables
	toolAdorneesObject.controlPointAdornees = {}
	toolAdorneesObject.meshNames = keys(context:getVertexData())
	toolAdorneesObject.context = context

	-- public functions
	function toolAdorneesObject:getAdornee(meshName)
		if not self.controlPointAdornees or
			not self.controlPointAdornees.ControlPoints or
			not self.controlPointAdornees.ControlPoints.Children then
			error("No Adornees exist.")
			return
		end

		local adornee = self.controlPointAdornees.ControlPoints.Children
		if adornee[meshName] and adornee[meshName].Instance then
			return adornee[meshName].Instance
		end
	end

	function toolAdorneesObject:render()
		if next(self.controlPointAdornees) == nil or
			self.controlPointAdornees.ControlPoints == nil or
			self.controlPointAdornees.ControlPoints.Instance == nil then
				local rootFolder = Instance.new("Folder", game.Workspace)
				rootFolder.Name = "ControlPoints"
				rootFolder.Archivable = false
				self.controlPointAdornees = {
					ControlPoints = {
						Instance = rootFolder,
						Children = {}
					}
				}
		end

		local rootFolder = self.controlPointAdornees.ControlPoints.Instance
		local adornees = self.controlPointAdornees.ControlPoints.Children
		for _, meshName in pairs(self.meshNames) do
			local meshOrigin = self.context:getMeshOrigin(meshName)
			local adornee = adornees[meshName]
			if not adornee or not adornee.Instance then
				adornee = Instance.new("Part", rootFolder)
				adornee.Name = meshName
				adornee.CFrame = meshOrigin
				adornee.Transparency = 1
				adornees[meshName] = {
					Instance = adornee,
				}
			end
		end
	end

	function toolAdorneesObject:cleanup()
		if self.controlPointAdornees and self.controlPointAdornees.ControlPoints then
			local rootFolder = self.controlPointAdornees.ControlPoints.Instance
			if rootFolder then
				rootFolder:Destroy()
			end
			self.controlPointAdornees = {}
			self.meshNames = {}
			self.context = nil
		end
	end

	return toolAdorneesObject
end

return ToolAdornees
