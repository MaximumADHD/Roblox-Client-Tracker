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

local Util = LuaMeshEditingModule.Src.Util
local Constants = require(Util.Constants)

local ToolAdornees = {}
ToolAdornees.__index = ToolAdornees

function ToolAdornees.new(context)
	local toolAdorneesObject = setmetatable({}, ToolAdornees)

	-- private variables
	local _folderAncestryChangedConnection
	local _folderChildRemovedConnection
	local _onFolderChanged

	local function folderChangedWrapper()
		if _onFolderChanged then
			_onFolderChanged()
		end
	end

	local function _connect()
		_folderAncestryChangedConnection =
			toolAdorneesObject.controlPointAdornees.ControlPoints.Instance.AncestryChanged:Connect(
				folderChangedWrapper
			)
		_folderChildRemovedConnection =
			toolAdorneesObject.controlPointAdornees.ControlPoints.Instance.ChildRemoved:Connect(
				folderChangedWrapper
			)
	end

	-- public variables
	toolAdorneesObject.controlPointAdornees = {}
	toolAdorneesObject.meshNames = keys(context:getVertexData())
	toolAdorneesObject.context = context

	-- public functions
	function toolAdorneesObject:getAdornee(meshName)
		if
			not self.controlPointAdornees
			or not self.controlPointAdornees.ControlPoints
			or not self.controlPointAdornees.ControlPoints.Children
		then
			error("No Adornees exist.")
			return
		end

		local adornees = self.controlPointAdornees.ControlPoints.Children
		if adornees[meshName] and adornees[meshName].Instance then
			return adornees[meshName].Instance
		end
	end

	function toolAdorneesObject:render(props)
		if props then
			_onFolderChanged = props.FolderChangedCallback
		end
		if
			next(self.controlPointAdornees) == nil
			or self.controlPointAdornees.ControlPoints == nil
			or self.controlPointAdornees.ControlPoints.Instance == nil
		then
			local rootFolder = Instance.new("Folder")
			rootFolder.Parent = game.Workspace
			rootFolder.Name = Constants.ControlPointsFolderName
			rootFolder:GetPropertyChangedSignal("Name"):Connect(function()
				if rootFolder.Name ~= Constants.ControlPointsFolderName then
					rootFolder.Name = Constants.ControlPointsFolderName
				end
			end)
			rootFolder.Archivable = false
			self.controlPointAdornees = {
				ControlPoints = {
					Instance = rootFolder,
					Children = {},
				},
			}
			_connect()
		end

		local rootFolder = self.controlPointAdornees.ControlPoints.Instance
		local adornees = self.controlPointAdornees.ControlPoints.Children
		for _, meshName in pairs(self.meshNames) do
			local meshOrigin = self.context:getMeshOrigin(meshName)
			local adornee = adornees[meshName]
			if not adornee or not adornee.Instance then
				adornee = Instance.new("Part", rootFolder)
				adornee.Name = meshName
				adornee:GetPropertyChangedSignal("Name"):Connect(function()
					if adornee.Name ~= meshName then
						adornee.Name = meshName
					end
				end)
				adornee.CFrame = meshOrigin
				adornee.Transparency = 1
				adornees[meshName] = {
					Instance = adornee,
				}
			end
		end
	end

	function toolAdorneesObject:disconnect()
		if _folderAncestryChangedConnection then
			_folderAncestryChangedConnection:Disconnect()
			_folderAncestryChangedConnection = nil
		end
		if _folderChildRemovedConnection then
			_folderChildRemovedConnection:Disconnect()
			_folderChildRemovedConnection = nil
		end
	end

	function toolAdorneesObject:cleanup()
		self:disconnect()
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
