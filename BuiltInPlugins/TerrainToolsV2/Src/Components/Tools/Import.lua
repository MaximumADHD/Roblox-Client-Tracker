--[[
	Displays panels associated with the import tool
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local withLocalization = UILibrary.Localizing.withLocalization
local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme

local ToolParts = script.Parent.ToolParts
local AssetIdSelector = require(ToolParts.AssetIdSelector)
local ButtonGroup = require(ToolParts.ButtonGroup)
local ImportProgressFrame = require(Plugin.Src.Components.ImportProgressFrame)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local MapSettings = require(ToolParts.MapSettings)
local Panel = require(ToolParts.Panel)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SetUseColorMap = require(Actions.SetUseColorMap)

local TerrainInterface = require(Plugin.Src.ContextServices.TerrainInterface)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)

local REDUCER_KEY = "ImportTool"

local Import = Roact.PureComponent:extend(script.Name)

function Import:init()
	self.terrainImporter = TerrainInterface.getTerrainImporter(self)
	assert(self.terrainImporter, "Import component requires a TerrainImporter from context")

	self.state = {
		validatedMapSettings = true,
		validatedHeightMap = nil,
		validatedColorMap = nil,

		-- If we open the import tool and there's an import in progress
		-- Then we want to initialize with that state
		isImporting = self.terrainImporter:isImporting(),
		importProgress = self.terrainImporter:getImportProgress(),
	}

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

	self.updateImportProps = function()
		self.terrainImporter:updateSettings({
			size = Vector3.new(self.props.Size.X, self.props.Size.Y, self.props.Size.Z),
			position = Vector3.new(self.props.Position.X, self.props.Position.Y, self.props.Position.Z),
			useColorMap = self.props.UseColorMap,

			heightMapUrl = self.state.validatedHeightMap,
			colorMapUrl = self.state.validatedColorMap,
		})
	end

	self.mapSettingsValidated = function(validatedMapSettings)
		self:setState({
			validatedMapSettings = validatedMapSettings
		})
	end

	self.heightMapValidated = function(validatedAssetId)
		self:setState({
			validatedHeightMap = validatedAssetId
		})
	end

	self.colorMapValidated = function(validatedAssetId)
		self:setState({
			validatedColorMap = validatedAssetId
		})
	end

	self.toggleUseColorMap = function()
		if self.props.dispatchSetUseColorMap then
			self.props.dispatchSetUseColorMap(not self.props.UseColorMap)
		end
	end

	self.onImportButtonClicked = function()
		self.terrainImporter:startImport()
	end

	self.onImportingStateChangedConnnection = self.terrainImporter:subscribeToImportingStateChanged(function(importing)
		self:setState({
			isImporting = importing,
		})
	end)

	self.onImportProgressChangedConnection = self.terrainImporter:subscribeToImportProgressChanged(function(progress)
		self:setState({
			importProgress = progress,
		})
	end)
end

function Import:didUpdate()
	self.updateImportProps()
end

function Import:didMount()
	self.updateImportProps()
end

function Import:willUnmount()
	if self.onImportingStateChangedConnnection then
		self.onImportingStateChangedConnnection:Disconnect()
		self.onImportingStateChangedConnnection = nil
	end

	if self.onImportProgressChangedConnection then
		self.onImportProgressChangedConnection:Disconnect()
		self.onImportProgressChangedConnection = nil
	end
end

function Import:render()
	local size = self.props.Size
	local position = self.props.Position
	local useColorMap = self.props.UseColorMap

	local importInProgress = self.state.isImporting
	local importProgress = self.state.importProgress

	local importIsActive = not importInProgress
		and self.state.validatedMapSettings
		and self.state.validatedHeightMap
		-- Either don't care about color map being validated cause we're not using it
		-- Or we are using it and it has to be valid
		and (not useColorMap or self.state.validatedColorMap)

	local hideColorMapAssetSelector = not useColorMap

	return withTheme(function(theme)
		return withLocalization(function(localization)
			local toggleOn = theme.toggleTheme.toggleOnImage
			local toggleOff = theme.toggleTheme.toggleOffImage

			return Roact.createFragment({
				MapSettings = Roact.createElement(MapSettings, {
					LayoutOrder = 1,

					Position = position,
					Size = size,

					OnPositionChanged = self.onPositionChanged,
					OnSizeChanged = self.onSizeChanged,
					SetMapSettingsValid = self.mapSettingsValidated,
					HeightMapValidation = self.heightMapValidated,
				}),

				MaterialSettings = Roact.createElement(Panel, {
					Title = localization:getText("MaterialSettings", "MaterialSettings"),
					LayoutOrder = 2,
				}, {
					UseColorMapToggle = Roact.createElement(LabeledElementPair, {
						Size = UDim2.new(1, 0, 0, 60),
						LayoutOrder = 1,
						Text = localization:getText("MaterialSettings", "UseColorMap"),
						SizeToContent = true,
					}, {
						Content = Roact.createElement("ImageButton", {
							Size = UDim2.new(0, 27, 0, 16),
							Image = useColorMap and toggleOn or toggleOff,
							BackgroundTransparency = 1,
							[Roact.Event.Activated] = self.toggleUseColorMap,
						}),
					}),

					ColorMapAssetSelector = Roact.createElement(AssetIdSelector, {
						Size = UDim2.new(1, 0, 0, 60),
						LayoutOrder = 2,
						Label = "",

						OnAssetIdValidated = self.colorMapValidated,
						Disabled = hideColorMapAssetSelector,
					}),
				}),

				ImportButtonFrame = Roact.createElement(ButtonGroup, {
					LayoutOrder = 4,
					Buttons = {
						{
							Key = "Import",
							Name = localization:getText("ToolName", "Import"),
							Active = importIsActive,
							OnClicked = self.onImportButtonClicked,
						}
					}
				}),

				ImportProgressFrame = importInProgress and Roact.createElement(ImportProgressFrame, {
					ImportProgress = importProgress,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.Import,
		Position = state[REDUCER_KEY].position,
		Size = state[REDUCER_KEY].size,
		UseColorMap = state[REDUCER_KEY].useColorMap,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToImport = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangePosition = function(position)
			dispatchToImport(ChangePosition(position))
		end,
		dispatchChangeSize = function(size)
			dispatchToImport(ChangeSize(size))
		end,
		dispatchSetUseColorMap = function(useColorMap)
			dispatchToImport(SetUseColorMap(useColorMap))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Import)
