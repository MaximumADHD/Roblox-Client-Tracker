--[[
	Displays panels associated with the Replace tool
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization

local StudioPlugin = require(Plugin.Src.ContextServices.StudioPlugin)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SetSourceMaterial = require(Actions.SetSourceMaterial)
local SetTargetMaterial = require(Actions.SetTargetMaterial)

local ToolParts = script.Parent.ToolParts
local ButtonGroup = require(ToolParts.ButtonGroup)
local Panel = require(ToolParts.Panel)
local MapSettings = require(ToolParts.MapSettings)
local MaterialSelector = require(ToolParts.MaterialSelector)
local ProgressFrame = require(script.Parent.Parent.ProgressFrame)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local LargeVoxelRegionPreview = require(Plugin.Src.TerrainWorldUI.LargeVoxelRegionPreview)

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)

local CoreGui = game:GetService("CoreGui")

local REDUCER_KEY = "ReplaceTool"

local Replace = Roact.PureComponent:extend(script.Name)

function Replace:init()
	local plugin = StudioPlugin.getPlugin(self)
	local mouse = plugin:GetMouse()

	self.preview = LargeVoxelRegionPreview.new(mouse, TerrainInterface.getTerrain(self))
	self.pluginActivationController = TerrainInterface.getPluginActivationController(self)
	self.replace = TerrainInterface.getReplace(self)

	self.state = {
		isReplacing = self.replace:isReplacing(),
		progress = self.replace:getProgress(),
	}

	assert(self.pluginActivationController, "Replace requires a PluginActivationController from context")
	assert(self.replace, "Replace requires Replace function from context")

	self.onPositionChanged = function(_, axis, text, isValid)
		if isValid then
			self.props.dispatchChangePosition(Cryo.Dictionary.join(self.props.Position, {
				[axis] = text,
			}))
		end
	end

	self.onSizeChanged = function(_, axis, text, isValid)
		if isValid then
			self.props.dispatchChangeSize(Cryo.Dictionary.join(self.props.Size, {
				[axis] = text,
			}))
		end
	end

	self.tryGenerateReplace = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)
		self.replace:replaceMaterial(position, size, self.props.Source, self.props.Target)
	end

	self.updatePreview = function()
		local position = Vector3.new(self.props.Position.X,self.props.Position.Y,self.props.Position.Z)
		local size = Vector3.new(self.props.Size.X,self.props.Size.Y,self.props.Size.Z)
		self.preview:setSizeAndPosition(size, position)
	end

	self.cancel = function()
		self.replace:cancel()
	end

	-- When my tool becomes active, we want to run the terrain brush
	self.onToolActivatedConnection = self.pluginActivationController:subscribeToToolActivated(function()
		-- :getActiveTool() returns ToolId.None if no tool is selected, so this works in that case too
		if self.pluginActivationController:getActiveTool() == ToolId.Replace then
			self:updatePreview()
			self.preview:updateVisibility(true)
		end
	end)

	self.onToolDeactivatedConnection = self.pluginActivationController:subscribeToToolDeactivated(function(toolId)
		if toolId == ToolId.Replace then
			self.preview:updateVisibility(false)
		end
	end)
end

function Replace:didUpdate()
	self:updatePreview()
end

function Replace:didMount()
	self._onSizeChangeConnect = self.preview:getOnSizeChanged():Connect(function(size, position)
		-- move values from preview to rodux
		self.props.dispatchChangePosition({X = position.x, Y = position.y, Z = position.z})
		self.props.dispatchChangeSize({X = size.x, Y = size.y, Z = size.z})
	end)

	self.onProgressChanged = self.replace:subscribeToProgressChange(function(progress)
		self:setState({
			progress = progress
		})
	end)

	self.onStateChanged = self.replace:subscribeToStateChange(function(state)
		self:setState({
			isReplacing = state
		})
	end)

	self:updatePreview()
end

function Replace:willUnmount()
	if self._onSizeChangeConnect then
		self._onSizeChangeConnect:Disconnect()
		self._onSizeChangeConnect = nil
	end

	if self.onToolActivatedConnection then
		self.onToolActivatedConnection:Disconnect()
		self.onToolActivatedConnection = nil
	end

	if self.onToolDeactivatedConnection then
		self.onToolDeactivatedConnection:Disconnect()
		self.onToolDeactivatedConnection = nil
	end

	if self.onProgressChanged then
		self.onProgressChanged:Disconnect()
		self.onProgressChanged = nil
	end

	if self.onStateChanged then
		self.onStateChanged:Disconnect()
		self.onStateChanged = nil
	end

	self.preview:destroy()
	self.preview = nil
end

function Replace:render()
	local position = self.props.Position
	local size = self.props.Size
	local progress = self.state.progress

	return withLocalization(function(localization)
		-- same as if the replace is currently active
		local isReplacing = self.state.isReplacing

		return Roact.createFragment({
			MapSettings = Roact.createElement(MapSettings, {
				LayoutOrder = 1,

				Position = position,
				Size = size,

				OnPositionChanged = self.onPositionChanged,
				OnSizeChanged = self.onSizeChanged,
			}),

			MaterialPanel = Roact.createElement(Panel, {
				Title = "Replace Material",
				LayoutOrder = 2,
			}, {
				SourceMaterialSelector = Roact.createElement(MaterialSelector, {
					LayoutOrder = 1,

					AllowAir = true,
					Label = "Source material",
					material = self.props.Source,
					setMaterial = self.props.dispatchSetSourceMaterial,
				}),
				TargetMaterialSelector = Roact.createElement(MaterialSelector, {
					LayoutOrder = 2,

					AllowAir = true,
					Label = "Replace with",
					material = self.props.Target,
					setMaterial = self.props.dispatchSetTargetMaterial,
				})
			}),

			ReplaceButtons = Roact.createElement(ButtonGroup, {
				LayoutOrder = 2,
				Buttons = {
					{
						Key = "Replace",
						Name = "Replace",
						Active = not isReplacing,
						OnClicked = self.tryGenerateReplace
					},
				}
			}),

			ProgressBar = isReplacing and Roact.createElement(Roact.Portal, {
				target = CoreGui,
			}, {
				ReplaceProgressScreenGui = Roact.createElement("ScreenGui", {}, {
					Roact.createElement(ProgressFrame, {
						AnchorPoint = Vector2.new(0.5, 0),
						Position = UDim2.new(0.5, 0, 0, 0),
						Progress = progress,
						OnCancelButtonClicked = self.cancel,
					})
				})
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Replace,

		Position = state[REDUCER_KEY].position,
		Size = state[REDUCER_KEY].size,
		Source = state[REDUCER_KEY].SourceMaterial,
		Target = state[REDUCER_KEY].TargetMaterial,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToReplace = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangePosition = function (position)
			dispatchToReplace(ChangePosition(position))
		end,
		dispatchChangeSize = function(size)
			dispatchToReplace(ChangeSize(size))
		end,
		dispatchSetSourceMaterial = function(SourceMaterial)
			dispatchToReplace(SetSourceMaterial(SourceMaterial))
		end,
		dispatchSetTargetMaterial = function(TargetMaterial)
			dispatchToReplace(SetTargetMaterial(TargetMaterial))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Replace)
