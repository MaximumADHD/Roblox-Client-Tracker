--[[
	Displays panels associated with the improved import tool
]]

local FFlagTerrainImportSupportDefaultMaterial = game:GetFastFlag("TerrainImportSupportDefaultMaterial")
local FFlagTerrainImportGreyscale2 = game:GetFastFlag("TerrainImportGreyscale2")
local FFlagTerrainToolsMapSettingsMaxVolume = game:GetFastFlag("TerrainToolsMapSettingsMaxVolume")
local FFlagTerrainDialogPoorColormapImport = game:GetFastFlag("TerrainDialogPoorColormapImport")
local FFlagTerrainImportUseDetailedProgressBar = game:GetFastFlag("TerrainImportUseDetailedProgressBar")
local FFlagTerrainToolsColormapCallout = game:GetFastFlag("TerrainToolsColormapCallout")

local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Cryo = require(Plugin.Packages.Cryo)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local ContextServices = Framework.ContextServices
local ContextItems = require(Plugin.Src.ContextItems)

local InfoDialog = require(Plugin.Src.Components.InfoDialog)

local ToolParts = script.Parent.ToolParts
local ButtonGroup = require(ToolParts.ButtonGroup)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledToggle = require(ToolParts.LabeledToggle)
local LocalImageSelector = require(ToolParts.LocalImageSelector)
local MapSettingsWithPreviewFragment = require(ToolParts.MapSettingsWithPreviewFragment)
local Panel = require(ToolParts.Panel)
local MaterialSelector = require(ToolParts.MaterialSelector)
local ModeSelector = require(ToolParts.ModeSelector)
local ProgressDialog = require(Plugin.Src.Components.ProgressDialog)
local TeachingCallout = require(Plugin.Src.Components.TeachingCallout)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SelectColormap = require(Actions.SelectColormap)
local SetColormapWarningId = require(Actions.SetColormapWarningId)
local SelectHeightmap = require(Actions.SelectHeightmap)
local SetUseColorMap = require(Actions.SetUseColorMap)
local SetDefaultMaterial = require(Actions.SetDefaultMaterial)
local SetImportMaterialMode = require(Actions.SetImportMaterialMode)
local SetSizeChangedByUser = require(Actions.SetSizeChangedByUser)

local Constants = require(Plugin.Src.Util.Constants)
local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ImportMaterialMode = TerrainEnums.ImportMaterialMode

local HeightmapImporterService = game:GetService("HeightmapImporterService")
local BrowserService = game:GetService("BrowserService")

local REDUCER_KEY = "ImportLocalTool"

-- TODO: Tweak these
local ASPECT_RATIO_THRESHOLD = 0.1
local MAX_SCALE_FACTOR = 2

local MAX_VOLUME_VOXELS = 256 * 4096 * 4096
local MAX_VOLUME_STUDS = MAX_VOLUME_VOXELS * Constants.VOXEL_RESOLUTION^3

--[[
	Returns a struct with 3 members: Error, Warning and Info. All either strings or nil
]]
local function getMessagesForImage(image, targetRegion, localization)
	local messages = {}

	if not image or not image.file then
		return messages
	end

	local targetRegionWidth = targetRegion.X
	local targetRegionHeight = targetRegion.Z
	local targetRegionAspectRatio = targetRegionWidth / targetRegionHeight

	local width = image.width
	local height = image.height

	local heightmapAspectRatio = width / height
	local widthScale = (targetRegionWidth / Constants.VOXEL_RESOLUTION) / width
	local heightScale = (targetRegionHeight / Constants.VOXEL_RESOLUTION) / height

	if math.abs(heightmapAspectRatio - targetRegionAspectRatio) > ASPECT_RATIO_THRESHOLD then
		local aspectW = width
		local aspectH = height

		for i = math.min(width, height), 1, -1 do
			local w = width / i
			local h = height / i
			if math.floor(w) == w and math.floor(h) == h then
				aspectW = w
				aspectH = h
				break
			end
		end

		local aspectString = ("%i:%i"):format(aspectW, aspectH)

		messages.Warning = localization:getText("ImportWarning", "AspectRatio",
			aspectString, targetRegionWidth, targetRegionHeight)
	end

	if widthScale > MAX_SCALE_FACTOR or heightScale > MAX_SCALE_FACTOR then
		messages.Warning = localization:getText("ImportWarning", "ImageTooSmall",
			width, height, targetRegionWidth, targetRegionHeight)
	end

	return messages
end

local ImportLocal = Roact.PureComponent:extend(script.Name)

function ImportLocal:init()
	if FFlagTerrainDialogPoorColormapImport then
		self.state = {
			mapSettingsValid = true,

			hasError = false,
			errorMainText = "",
			errorSubText = "",

			hasWarning = false,  -- state to show Warning message after finished terrain import
			warningMainText = "",
			warningSubText = "",
			warningLinkText = "",
		}
	else
		self.state = {
			mapSettingsValid = true,
			hasError = false,
			errorMainText = "",
			errorSubText = "",
		}
	end

	self.onImportButtonClicked = function()
		-- TODO MOD-46, MOD-49: Handle registering asset usage and uploading local files to get real asset ids
		self.props.TerrainImporter:startImport()

		-- This import is "finished", so reset for the next image selection
		self.props.dispatchSetSizeChangedByUser(false)
	end

	self.setMapSettingsValid = function(mapSettingsValid)
		self:setState({
			mapSettingsValid = mapSettingsValid,
		})
	end

	self.onPauseRequested = function()
		self.props.TerrainImporter:togglePause()
	end

	self.onCancelRequested = function()
		self.props.TerrainImporter:cancel()
	end

	self.selectHeightmap = function(file, err)
		if not file then
			warn(("Failed to select heightmap: %s"):format(tostring(err)))
			self.setErrorMessage("FailedToLoadHeightmap", "FailedToSelectFile")
			return
		end

		local id = file:GetTemporaryId()
		local success, status, width, height, channels, bytesPerChannel = HeightmapImporterService:IsValidHeightmap(id)

		if success then
			if FFlagTerrainImportGreyscale2 then
				spawn(function()
					local previewId, channelsWereDiscarded
					local success, err = pcall(function()
						previewId, channelsWereDiscarded = HeightmapImporterService:GetHeightmapPreviewAsync(id)
					end)

					-- If the user changed their selection whilst we were generating a preview, just ignore this
					if not self.props.heightmap.file or id ~= self.props.heightmap.file:GetTemporaryId() then
						return
					end

					if not success then
						warn(("Failed to generate heightmap preview: %s"):format(tostring(err)))
						self.props.dispatchSelectHeightmap(nil)
						self.setErrorMessage("FailedToGenerateHeightmapPreviewTitle", "FailedToGenerateHeightmapPreview")
						return
					end

					if channelsWereDiscarded then
						warn("Only the red channel of imported heightmaps is used, the other channels were discarded.")
					end

					self.props.dispatchSelectHeightmap(Cryo.Dictionary.join(self.props.heightmap, {
						preview = previewId,
						channelsWereDiscarded = channelsWereDiscarded,
					}))
				end)
			end

			self.props.dispatchSelectHeightmap({
				preview = nil,
				channelsWereDiscarded = false,
				file = file,
				width = width,
				height = height,
				channels = channels,
				bytesPerChannel = bytesPerChannel,
			})

			-- We want to set the target region size to match the image that was Selected
			-- But only if the user hasn't already changed the size themselves
			if not self.props.sizeChangedByUser then
				local STUDS_PER_PIXEL = 4

				local newX = math.min(math.max(width * STUDS_PER_PIXEL, Constants.REGION_MIN_SIZE), Constants.REGION_MAX_SIZE)
				local newY = self.props.size.Y
				local newZ = math.min(math.max(height * STUDS_PER_PIXEL, Constants.REGION_MIN_SIZE), Constants.REGION_MAX_SIZE)

				self.props.dispatchChangeSize({
					X = newX,
					Y = newY,
					Z = newZ,
				})
			end
		else
			self.setErrorMessage("FailedToLoadHeightmap", status)
		end
	end

	self.clearHeightmap = function()
		self.props.dispatchSelectHeightmap(nil)
	end

	self.selectColormap = function(file, err)
		if not file then
			warn(("Failed to select heightmap: %s"):format(tostring(err)))
			self.setErrorMessage("FailedToLoadColormap", "FailedToSelectFile")
			return
		end

		local id = file:GetTemporaryId()
		local success, status, width, height, channels = HeightmapImporterService:IsValidColormap(id)

		if success then
			self.props.dispatchSelectColormap({
				preview = id,
				file = file,
				width = width,
				height = height,
				channels = channels,
			})
		else
			self.setErrorMessage("FailedToLoadColormap", status)
		end
	end

	self.clearColormap = function()
		self.props.dispatchSelectColormap(nil)
	end

	self.setErrorMessage = function(errorTitle, errorBody)
		if errorTitle then
			local localization = self.props.Localization:get()

			local mainText = localization:getText("ImportError", errorTitle)
			local subText = localization:getText("ImportError", errorBody)

			warn(("Import error: %s - %s"):format(errorTitle, errorBody))

			self:setState({
				hasError = true,
				errorMainText = mainText,
				errorSubText = subText,
			})
		else
			self:setState({
				hasError = false,
				errorMainText = "",
				errorSubText = "",
			})
		end
	end

	self.clearErrorMessage = function()
		self.setErrorMessage(nil)
	end

	if FFlagTerrainDialogPoorColormapImport then
		self.clearWarningMessage = function()
			self:setState({
				hasWarning = false,
				warningMainText = "",
				warningSubText = "",
				warningLinkText = "",
			})
		end
	end

	self.onUserChangedSize = function(size)
		if tonumber(size.X) ~= self.props.size.X
			or tonumber(size.Y) ~= self.props.size.Y
			or tonumber(size.Z) ~= self.props.size.Z then
			self.props.dispatchChangeSize(size)
			self.props.dispatchSetSizeChangedByUser(true)
		end
	end
end

function ImportLocal:updateImportProps()
	local newSettings = {
		size = Vector3.new(self.props.size.X, self.props.size.Y, self.props.size.Z),
		position = Vector3.new(self.props.position.X, self.props.position.Y, self.props.position.Z),

		heightmap = self.props.heightmap or {},
		colormap = self.props.colormap or {},
	}

	if FFlagTerrainImportSupportDefaultMaterial then
		newSettings.materialMode = self.props.materialMode
		newSettings.defaultMaterial = self.props.defaultMaterial
	else
		newSettings.useColorMap = self.props.useColorMap
	end

	self.props.TerrainImporter:updateSettings(newSettings)
end

function ImportLocal:didMount()
	self:updateImportProps()

	self._onImportErrorConnection = self.props.TerrainImporter:subscribeToErrors(function(message)
		self.setErrorMessage("ImportFailed", message)
	end)

	self._isMounted = true

	if FFlagTerrainDialogPoorColormapImport then
		self._onImportFinishConnection = self.props.TerrainImporter:subscribeToImportFinish(function()
			local localization = self.props.Localization:get()
			if self.props.TerrainImporter:getHasPixelWarning() and self._isMounted then
				self:setState({
					hasWarning = true,
					warningMainText = localization:getText("ImportWarning", "MainTextColormapRGBOutOfRange"),
					warningSubText = localization:getText("ImportWarning", "SubTextColormapRGBOutOfRange"),
					warningLinkText = localization:getText("Action", "LearnMore"),
				})
				self.props.dispatchSetColormapWarningId(self.props.colormap.file and self.props.colormap.file:GetTemporaryId() or nil)
				self.props.TerrainImporter:clearHasPixelWarning()
			end
		end)
	end
end

function ImportLocal:didUpdate()
	self:updateImportProps()
end

function ImportLocal:willUnmount()
	self._isMounted = false
	if self._onImportErrorConnection then
		self._onImportErrorConnection:Disconnect()
		self._onImportErrorConnection = nil
	end
	if FFlagTerrainDialogPoorColormapImport then
		if self._onImportFinishConnection then
			self._onImportFinishConnection:Disconnect()
			self._onImportFinishConnection = nil
		end
	end
end

function ImportLocal:render()
	local localization = self.props.Localization:get()

	local importPaused = self.props.TerrainImporter:isPaused()
	local importInProgress = self.props.TerrainImporter:isImporting()
	local importProgress = importInProgress and self.props.TerrainImporter:getImportProgress() or 0
	local importOperation
	if FFlagTerrainImportUseDetailedProgressBar then
		importOperation = importInProgress and self.props.TerrainImporter:getImportOperation() or ""
	end

	local canImport = not importInProgress
		and self.state.mapSettingsValid
		and self.props.heightmap.file

	if FFlagTerrainImportSupportDefaultMaterial then
		canImport = canImport
			-- If we're using default material then we're fine, else we're using colormap so check we actually have a colormap
			and (self.props.materialMode == ImportMaterialMode.DefaultMaterial or self.props.colormap.file)
	else
		canImport = canImport
			and (not self.props.useColorMap or self.props.colormap.file)
	end

	local showColormapMaterialToggle
	local showUseColormap
	local showColormap
	local showDefaultMaterial

	if FFlagTerrainImportSupportDefaultMaterial then
		showColormapMaterialToggle = true
		showUseColormap = false

		showColormap = self.props.materialMode == ImportMaterialMode.Colormap
		showDefaultMaterial = self.props.materialMode == ImportMaterialMode.DefaultMaterial
	else
		showColormapMaterialToggle = false
		showUseColormap = true

		showColormap = self.props.useColorMap
		showDefaultMaterial = false
	end

	local heightmapMessages = getMessagesForImage(self.props.heightmap, self.props.size, localization)
	local colormapMessages = getMessagesForImage(self.props.colormap, self.props.size, localization)

	local colormapPickerHasRangeWarning = self.props.colormap.file and self.props.colormap.file:GetTemporaryId() == self.props.colormapWarningId
	if (not colormapMessages.Warning and colormapPickerHasRangeWarning) then
		colormapMessages.Warning = localization:getText("ImportWarning", "ColorMapOutOfRangeIconTooltip")
	end

	if FFlagTerrainImportGreyscale2 and canImport and self.props.heightmap.channelsWereDiscarded then
		heightmapMessages.Info = localization:getText("ImportInfo", "ChannelsWereDiscarded")
	end

	local progressBarSubtext

	if FFlagTerrainImportUseDetailedProgressBar then
		-- The import operation string comes directly from hardcoded cpp, be sure that any changes get replicated to the localization keys
		progressBarSubtext = localization:getText("Generate", importOperation)
	else
		progressBarSubtext = localization:getText("Generate", "GenerateVoxels")
	end

	local errorMainText = self.state.errorMainText
	local errorSubText = self.state.errorSubText

	local warningMainText = ""
	local warningSubText = ""
	local warningLinkText = ""

	if FFlagTerrainDialogPoorColormapImport then
		warningMainText = self.state.warningMainText
		warningSubText = self.state.warningSubText
		warningLinkText = self.state.warningLinkText
	end

	return Roact.createFragment({
		MapSettings = Roact.createElement(Panel, {
			LayoutOrder = 1,
			Title = localization:getText("MapSettings", "MapSettings"),
			Padding = UDim.new(0, 12),
		}, {
			Heightmap = Roact.createElement(LabeledElementPair, {
				Text = localization:getText("Import", "Heightmap"),
				Size = UDim2.new(1, 0, 0, 60),
				LayoutOrder = 1,
				SizeToContent = true,

				ErrorMessage = heightmapMessages.Error,
				WarningMessage = heightmapMessages.Warning,
				InfoMessage = heightmapMessages.Info,
			}, {
				LocalImageSelector = Roact.createElement(LocalImageSelector, {
					CurrentFile = self.props.heightmap,
					SelectFile = self.selectHeightmap,
					ClearSelection = self.clearHeightmap,
					PreviewTitle = localization:getText("Import", "HeightmapPreview"),
				}),
			}),

			MapSettingsWithPreview = Roact.createElement(MapSettingsWithPreviewFragment, {
				toolName = self.props.toolName,
				InitialLayoutOrder = 2,

				Position = self.props.position,
				Size = self.props.size,
				MaxVolume = FFlagTerrainToolsMapSettingsMaxVolume and MAX_VOLUME_STUDS or nil,
				PreviewOffset = Vector3.new(0, 0.5, 0),

				OnPositionChanged = self.props.dispatchChangePosition,
				OnSizeChanged = self.onUserChangedSize,
				SetMapSettingsValid = self.setMapSettingsValid,
			}),
		}),

		MaterialSettings = Roact.createElement(Panel, {
			Title = localization:getText("MaterialSettings", "MaterialSettings"),
			LayoutOrder = 2,
		}, {
			UseColorMapToggle = showUseColormap and Roact.createElement(LabeledToggle, {
				LayoutOrder = 1,
				Text = localization:getText("Import", "UseColormap"),
				IsOn = self.props.useColorMap,
				SetIsOn = self.props.dispatchSetUseColorMap,
			}),

			MaterialColorToggle = showColormapMaterialToggle and Roact.createElement(ModeSelector, {
				LayoutOrder = 1,
				Selected = self.props.materialMode,
				Select = self.props.dispatchSetImportMaterialMode,

				Options = {
					{
						Text = localization:getText("ImportMaterialMode", "DefaultMaterial"),
						Data = ImportMaterialMode.DefaultMaterial,
					}, {
						Text = localization:getText("ImportMaterialMode", "Colormap"),
						Data = ImportMaterialMode.Colormap,
					},
				},
			}),

			DefaultMaterialSelector = showDefaultMaterial and Roact.createElement(MaterialSelector, {
				LayoutOrder = 2,

				AllowAir = false,
				Label = localization:getText("Import", "DefaultMaterial"),
				material = self.props.defaultMaterial,
				setMaterial = self.props.dispatchSetDefaultMaterial,
			}),

			Colormap = showColormap and Roact.createElement(LabeledElementPair, {
				LayoutOrder = 2,
				-- When flag is off, use empty string so this looks like it's part of the toggle above
				Text = FFlagTerrainImportSupportDefaultMaterial
					and localization:getText("Import", "Colormap")
					or "",
				Size = UDim2.new(1, 0, 0, 60),
				SizeToContent = true,

				ErrorMessage = colormapMessages.Error,
				WarningMessage = colormapMessages.Warning,
				InfoMessage = colormapMessages.Info,
			}, {
				LocalImageSelector = Roact.createElement(LocalImageSelector, {
					CurrentFile = self.props.colormap,
					SelectFile = self.selectColormap,
					ClearSelection = self.clearColormap,
					PreviewTitle = localization:getText("Import", "ColormapPreview"),
				}),

				CalloutContainer = FFlagTerrainToolsColormapCallout and Roact.createElement("Frame", {
					-- Same width as the image preview above so we center the callout
					Size = UDim2.new(0, 88, 0, 0),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}, {
					TeachingCallout = Roact.createElement(TeachingCallout, {
						DefinitionId = "TerrainToolsColormapCallout",
						LocationId = "TerrainImportColormapSelector",
					}),
				}) or nil,
			}),
		}),

		ImportButtonFrame = Roact.createElement(ButtonGroup, {
			LayoutOrder = 4,
			Buttons = {
				{
					Key = "Import",
					Name = localization:getText("Import", "ButtonImport"),
					Active = canImport,
					OnClicked = self.onImportButtonClicked,
				}
			}
		}),

		ProgressDialog = importInProgress
			and Roact.createElement(ProgressDialog, {
			Title = localization:getText("Generate", "GenerateProgressTitle"),
			SubText = progressBarSubtext,

			Progress = importProgress,
			IsPaused = importPaused,

			OnPauseButtonClicked = self.onPauseRequested,
			OnCancelButtonClicked = self.onCancelRequested,
		}),

		ErrorDialog = self.state.hasError and Roact.createElement(InfoDialog, {
			Title = "Roblox Studio",
			MainText = errorMainText,
			SubText = errorSubText,
			Image = "rbxasset://textures/ui/ErrorIcon.png",
			OnClose = self.clearErrorMessage,
		}),

		WarningDialog = (FFlagTerrainDialogPoorColormapImport and self.state.hasWarning and not self.state.hasError) and Roact.createElement(InfoDialog, {
			Title = "Roblox Studio",
			MainText = warningMainText,
			SubText = warningSubText,
			Image = "rbxasset://textures/ui/WarningIcon.png",
			OnClose = self.clearWarningMessage,
			LinkInfo = {
				Text = warningLinkText,
				OnClick = function()
					BrowserService:OpenBrowserWindow("https://developer.roblox.com/en-us/articles/importing-terrain-data")
				end
			},
		}),
	})
end

ContextServices.mapToProps(ImportLocal, {
	Localization = ContextItems.UILibraryLocalization,
	TerrainImporter = ContextItems.TerrainImporter,
})

local function mapStateToProps(state, props)
	return {
		toolName = TerrainEnums.ToolId.ImportLocal,
		position = state[REDUCER_KEY].position,
		size = state[REDUCER_KEY].size,

		heightmap = state[REDUCER_KEY].heightmap or {},
		colormap = state[REDUCER_KEY].colormap or {},
		colormapWarningId = state[REDUCER_KEY].colormapWarningId or nil,

		-- TODO: Remove useColorMap when removing FFlagTerrainImportSupportDefaultMaterial
		useColorMap = state[REDUCER_KEY].useColorMap,

		materialMode = state[REDUCER_KEY].materialMode,
		defaultMaterial = state[REDUCER_KEY].defaultMaterial,

		sizeChangedByUser = state[REDUCER_KEY].sizeChangedByUser,
	}
end

local function mapDispatchToProps(dispatch)
	local dispatchToImportLocal = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangePosition = function(position)
			dispatchToImportLocal(ChangePosition(position))
		end,
		dispatchChangeSize = function(size)
			dispatchToImportLocal(ChangeSize(size))
		end,
		dispatchSelectHeightmap = function(heightmap)
			dispatchToImportLocal(SelectHeightmap(heightmap))
		end,
		dispatchSelectColormap = function(colormap)
			dispatchToImportLocal(SelectColormap(colormap))
		end,
		dispatchSetColormapWarningId = function(colormapWarningId)
			dispatchToImportLocal(SetColormapWarningId(colormapWarningId))
		end,
		-- TODO: Remove dispatchSetUseColorMap when removing FFlagTerrainImportSupportDefaultMaterial
		dispatchSetUseColorMap = function(useColorMap)
			dispatchToImportLocal(SetUseColorMap(useColorMap))
		end,
		dispatchSetImportMaterialMode = function(materialMode)
			dispatchToImportLocal(SetImportMaterialMode(materialMode))
		end,
		dispatchSetDefaultMaterial = function(defaultMaterial)
			dispatchToImportLocal(SetDefaultMaterial(defaultMaterial))
		end,
		dispatchSetSizeChangedByUser = function(sizeChangedByUser)
			dispatchToImportLocal(SetSizeChangedByUser(sizeChangedByUser))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ImportLocal)
