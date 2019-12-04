local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local UILibrary = Plugin.Packages.UILibrary
local RoundTextButton = require(UILibrary.Components.RoundTextButton)
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization
local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local FFlagTerrainToolsRefactorTerrainGeneration = game:GetFastFlag("TerrainToolsRefactorTerrainGeneration")

local Functions = Plugin.Src.Components.Functions
local TerrainGeneration = not FFlagTerrainToolsRefactorTerrainGeneration and require(Functions.TerrainGeneration) or nil
local TerrainInterface = FFlagTerrainToolsRefactorTerrainGeneration
	and require(Plugin.Src.ContextServices.TerrainInterface)

local ToolParts = script.Parent.ToolParts
local BiomeSelector = require(ToolParts.BiomeSelector)
local Panel = require(ToolParts.Panel)
local LabeledElementPair = require(ToolParts.LabeledElementPair)
local LabeledTextInput = require(ToolParts.LabeledTextInput)
local MapSettings = require(ToolParts.MapSettings)
local TTCheckBox = require(ToolParts.TTCheckBox)
local Slider = require(ToolParts.Slider)
local GenerateProgressFrame = require(Plugin.Src.Components.GenerateProgressFrame)

local Actions = Plugin.Src.Actions
local ApplyToolAction = require(Actions.ApplyToolAction)
local SetHaveCaves = require(Actions.SetHaveCaves)
local SetSeed = require(Actions.SetSeed)
local SetBiomeSize = require(Actions.SetBiomeSize)
local ChangePosition = require(Actions.ChangePosition)
local ChangeSize = require(Actions.ChangeSize)
local SetBiomeSelection = require(Actions.SetBiomeSelection)

local FONT = Enum.Font.SourceSans
local FONT_SIZE = 15

local REDUCER_KEY = "GenerateTool"

local Generate = Roact.PureComponent:extend(script.Name)

function Generate:init(initialProps)
	self.layoutRef = Roact.createRef()
	self.mainFrameRef = Roact.createRef()
	self.warnings = {}

	if FFlagTerrainToolsRefactorTerrainGeneration then
		self.terrainGeneration = TerrainInterface.getTerrainGeneration(self)
		assert(self.terrainGeneration, "Generate component requires a TerrainGeneration from context")
	end

	if FFlagTerrainToolsRefactorTerrainGeneration then
		self.state = {
			mapSettingsValid = true,

			-- If we open the generate tool and there's generation in progress
			-- Then we want to initialize with that state
			isGenerating = self.terrainGeneration:isGenerating(),
			generateProgress = self.terrainGeneration:getProgress(),
			generatePaused = self.terrainGeneration:isPaused(),
		}
	else
		self.state = {
			mapSettingsValid = true,
			isGenerationActive = true,
		}
	end

	self.selectBiome = function(biome)
		local biomes = self.props.biomeSelection
		local value = not biomes[biome]

		self.props.dispatchSetBiomeSelection(biome, value)
	end

	-- this function is used to propagate changes back to rodux from the mapsettings
	self.onTextEnter = function(text, container)
		-- warning should be displayed using the
		-- validation funtion in the LabeledTextInput
		if not tonumber(text) then
			self.warnings[container] = true
			return
		else
			self.warnings[container] = false
		end

		if container == "Seed" then
			self.props.dispatchSetSeed(text)
		end

		-- not a pattern we shoulf follow we should factor this into
		-- functions that handle position and size separately rather
		-- than matching keywords in an container-id.
		local field, fieldName
		if string.match(container, "Position") then
			field = self.props.position
			fieldName = "Position"
		elseif string.match(container, "Size") then
			field = self.props.size
			fieldName = "Size"
		end

		local x = string.match(container, "X") and text or field.X
		local y = string.match(container, "Y") and text or field.Y
		local z = string.match(container, "Z") and text or field.Z

		if fieldName == "Position" then
			self.props.dispatchChangePosition({X = x, Y = y, Z = z})
		elseif fieldName == "Size" then
			self.props.dispatchChangeSize({X = x, Y = y, Z = z})
		end
	end

	self.onBiomeSizeChanged = function(text)
		local biomeSize = tonumber(text)
		if biomeSize and biomeSize > 0 then
			self.props.dispatchSetBiomeSize(text)
		end
	end

	self.onContentSizeChanged = function()
		local mainFrame = self.mainFrameRef.current
		local layout = self.layoutRef.current
		if mainFrame and layout then
			mainFrame.Size = UDim2.new(1, 0, 0, layout.AbsoluteContentSize.Y)
		end
	end

	self.updateGenerateProps = function()
		if FFlagTerrainToolsRefactorTerrainGeneration then
			-- Because TerrainGeneration copies the settings into makeTerrainGenerator()
			-- It's safe to update the settings even during a generation
			-- They won't affect the current generation, just the next one
			self.terrainGeneration:updateSettings({
				position = self.props.position,
				size = self.props.size,

				biomeSelection = self.props.biomeSelection,
				biomeSize = self.props.biomeSize,
				haveCaves = self.props.haveCaves,

				seed = self.props.seed,
			})
		else
			if self.state.isGenerationActive then
				TerrainGeneration.ChangeProperties({
					position = self.props.position,
					size = self.props.size,

					biomeSelection = self.props.biomeSelection,
					biomeSize = self.props.biomeSize,
					haveCaves = self.props.haveCaves,

					seed = self.props.seed,
				})
			end
		end
	end

	-- TODO: Remove when removing FFlagTerrainToolsRefactorTerrainGeneration
	self.setGenButtonState = function(isActive)
		self:setState({
			isGenerationActive = isActive
		})
	end

	self.setMapSettingsValidated = function(isValidated)
		self:setState({
			mapSettingsValid = isValidated
		})
	end

	self.tryGenerate = function()
		for key, invalidEntry in pairs(self.warnings) do
			if invalidEntry then
				warn(key .. " is invalid.")
				return
			end
		end

		self.updateGenerateProps()

		if FFlagTerrainToolsRefactorTerrainGeneration then
			self.terrainGeneration:startGeneration()
		else
			TerrainGeneration.OnButtonClick()
		end
	end

	if FFlagTerrainToolsRefactorTerrainGeneration then
		self.onGenerateStartStopConnection = self.terrainGeneration:subscribeToStartStopGeneratingChanged(function(generating)
			if not generating then
				-- If we've stopped generating then also reset the UI
				self:setState({
					isGenerating = generating,
					generateProgress = 0,
					generatePaused = false,
				})
			else
				self:setState({
					isGenerating = generating,
				})
			end
		end)

		self.onProgressChangedConnection = self.terrainGeneration:subscribeToProgressUpdate(function(progress)
			self:setState({
				generateProgress = progress,
			})
		end)

		self.onPausedChangedConnection = self.terrainGeneration:subscribeToPaused(function(isPaused)
			self:setState({
				generatePaused = isPaused,
			})
		end)

		self.onGenerationPauseRequested = function()
			self.terrainGeneration:togglePauseGeneration()
		end

		self.onGenerationCancelRequested = function()
			self.terrainGeneration:cancelGeneration()
		end
	end
end

function Generate:didUpdate()
	self.updateGenerateProps()
end

function Generate:didMount()
	self.updateGenerateProps()
	if not FFlagTerrainToolsRefactorTerrainGeneration then
		TerrainGeneration.SetGenButtonStateFunc(self.setGenButtonState)
	end
end

function Generate:willUnmount()
	if FFlagTerrainToolsRefactorTerrainGeneration then
		if self.onGenerateStartStopConnection then
			self.onGenerateStartStopConnection:disconnect()
			self.onGenerateStartStopConnection = nil
		end

		if self.onProgressChangedConnection then
			self.onProgressChangedConnection:disconnect()
			self.onProgressChangedConnection = nil
		end

		if self.onPausedChangedConnection then
			self.onPausedChangedConnection:disconnect()
			self.onPausedChangedConnection = nil
		end
	else
		TerrainGeneration.SetGenButtonStateFunc(nil)
	end
end

function Generate:render()
	local position = self.props.position
	local size = self.props.size
	local biomeSelection = self.props.biomeSelection
	local biomeSize = self.props.biomeSize
	local haveCaves = self.props.haveCaves
	local seed = self.props.seed
	local selectBiome = self.selectBiome

	local biomeSizeString = tostring(biomeSize)

	local generateInProgress = self.state.isGenerating
	local generateProgress = self.state.generateProgress
	local generatePaused = self.state.generatePaused

	local generateIsActive
	if FFlagTerrainToolsRefactorTerrainGeneration then
		generateIsActive = self.state.mapSettingsValid and not generateInProgress
	else
		generateIsActive = self.state.isGenerationActive and self.state.mapSettingsValid
	end

	return withTheme(function(theme)
		local toggleOn = theme.toggleTheme.toggleOnImage
		local toggleOff = theme.toggleTheme.toggleOffImage
		return withLocalization(function(localization)
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				[Roact.Ref] = self.mainFrameRef,
			}, {
				UIListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					[Roact.Ref] = self.layoutRef,
					[Roact.Change.AbsoluteContentSize] = self.onContentSizeChanged,
				}),

				MapSettings = Roact.createElement(MapSettings, {
					IsImport = false,
					Position = position,
					Size = size,
					OnTextEnter = self.onTextEnter,
					IsMapSettingsValid = self.setMapSettingsValidated,
					LayoutOrder = 1,
				}),

				MaterialSettings = Roact.createElement(Panel, {
					Title = localization:getText("MaterialSettings", "MaterialSettings"),
					LayoutOrder = 2,
				}, {
					BiomeSelectString = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, 24),
						BackgroundTransparency = 1,
						LayoutOrder = 1,
					}, {
						Roact.createElement("TextLabel", {
							Position = UDim2.new(0, 20, 0, 0),
							Size = UDim2.new(1, 0, 1, 0),
							BackgroundTransparency = 1,

							Text = localization:getText("MaterialSettings", "ChooseBiome"),
							Font = FONT,
							TextSize = FONT_SIZE,
							TextColor3 = theme.textColor,
							TextXAlignment = Enum.TextXAlignment.Left
						}),
					}),

					-- Controls biome selection
					BiomeSelect = FFlagTerrainToolsRefactorTerrainGeneration and Roact.createElement(BiomeSelector, {
						theme = theme,
						localization = localization,
						selectBiome = selectBiome,
						biomeSelection = biomeSelection,
					}) or Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, 128),
						BackgroundTransparency = 1,
						LayoutOrder = 2,
					}, {
						Border = Roact.createElement("Frame", {
							Size = UDim2.new(0, 229, 0, 128),
							Position = UDim2.new(0, 20, 0, 0),
							BackgroundColor3 = theme.backgroundColor,
							BorderColor3 = theme.borderColor,
						}, {
							LayoutPadding = Roact.createElement("UIPadding", {
								PaddingTop = UDim.new(0, 9),
								PaddingBottom = UDim.new(0, 9),
								PaddingLeft = UDim.new(0, 9),
								PaddingRight = UDim.new(0, 9),
							}),

							GridLayout = Roact.createElement("UIGridLayout", {
								CellSize = UDim2.new(0, 86, 0, 16),
								CellPadding = UDim2.new(0, 20, 0, 8),
								SortOrder = Enum.SortOrder.LayoutOrder,
							}),

							Roact.createElement(TTCheckBox, {
								Title = localization:getText("Generate", "BiomeWater"),
								Selected = biomeSelection["Water"],
								setButtonBool = selectBiome,
								LayoutOrder = 1,
							}),
							Roact.createElement(TTCheckBox, {
								Title = localization:getText("Generate", "BiomeMarsh"),
								Selected = biomeSelection["Marsh"],
								setButtonBool = selectBiome,
								LayoutOrder = 2,
							}),
							Roact.createElement(TTCheckBox, {
								Title = localization:getText("Generate", "BiomePlains"),
								Selected = biomeSelection["Plains"],
								setButtonBool = selectBiome,
								LayoutOrder = 3,
							}),
							Roact.createElement(TTCheckBox, {
								Title = localization:getText("Generate", "BiomeHills"),
								Selected = biomeSelection["Hills"],
								setButtonBool = selectBiome,
								LayoutOrder = 4,
							}),
							Roact.createElement(TTCheckBox, {
								Title = localization:getText("Generate", "BiomeDunes"),
								Selected = biomeSelection["Dunes"],
								setButtonBool = selectBiome,
								LayoutOrder = 5,
							}),
							Roact.createElement(TTCheckBox, {
								Title = localization:getText("Generate", "BiomeCanyons"),
								Selected = biomeSelection["Canyons"],
								setButtonBool = selectBiome,
								LayoutOrder = 6,
							}),
							Roact.createElement(TTCheckBox, {
								Title = localization:getText("Generate", "BiomeMountains"),
								Selected = biomeSelection["Mountains"],
								setButtonBool = selectBiome,
								LayoutOrder = 7,
							}),
							Roact.createElement(TTCheckBox, {
								Title = localization:getText("Generate", "BiomeLavascape"),
								Selected = biomeSelection["Lavascape"],
								setButtonBool = selectBiome,
								LayoutOrder = 8,
							}),
							Roact.createElement(TTCheckBox, {
								Title = localization:getText("Generate", "BiomeArctic"),
								Selected = biomeSelection["Arctic"],
								setButtonBool = selectBiome,
								LayoutOrder = 9,
							}),
						}),
					}),

					BiomeSize = Roact.createElement(LabeledElementPair, {
						Size = UDim2.new(1, 0, 0, 60),
						LayoutOrder = 3,
						Text = localization:getText("Generate", "BiomeSize"),
						SizeToContent = true,
					}, {
						BiomeSizeSlider = Roact.createElement(Slider, {
							Min = 16,
							Max = 4096,
							SnapIncrement = 4,
							ShowInput = true,
							Value = tonumber(biomeSizeString),
							SetValues = function(val)
								self.onBiomeSizeChanged(tostring(val))
							end,
						}),
					}),

					CavesToggle = Roact.createElement(LabeledElementPair, {
						Size = UDim2.new(1, 0, 0, 60),
						LayoutOrder = 4,
						Text = localization:getText("Generate", "Caves"),
						SizeToContent = true,
					}, {
						Content = Roact.createElement("ImageButton", {
							Size = UDim2.new(0, 27, 0, 16),
							Image = haveCaves and toggleOn or toggleOff,
							BackgroundTransparency = 1,
							[Roact.Event.Activated] = function()
								self.props.dispatchSetHaveCaves(not haveCaves)
							end,
						}),
					}),
				}),

				OtherSettings = Roact.createElement(Panel, {
					Title = localization:getText("Generate", "OtherSettings"),
					LayoutOrder = 3,
				}, {
					Seed = Roact.createElement(LabeledElementPair, {
						Size = UDim2.new(1, 0, 0, 60),
						Text = localization:getText("Generate", "Seed"),
						SizeToContent = true,
					}, {
						SeedTextBox = Roact.createElement(LabeledTextInput, {
							Width = UDim.new(0, 136),
							Text = seed,
							MaxGraphenes = 12,

							OnFocusLost = function(enterPressed, text)
								self.props.dispatchSetSeed(text)
							end,
						}),
					}),
				}),

				GenerateButtonFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0 ,0, 28+24),
					BackgroundTransparency = 1,
					LayoutOrder = 4,
				}, {
					GenerateButton1 = Roact.createElement(RoundTextButton, {
						Size = UDim2.new(0, 200, 0, 28),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),

						Name = localization:getText("Generate", "ButtonGenerate"),

						Active = generateIsActive,
						Style = theme.roundTextButtonTheme.styleSheet,
						TextSize = theme.roundTextButtonTheme.textSize,

						OnClicked = self.tryGenerate,
					}),
				}),

				GenerateProgressFrame = FFlagTerrainToolsRefactorTerrainGeneration
					and generateInProgress
					and Roact.createElement(GenerateProgressFrame, {
					GenerateProgress = generateProgress,
					IsPaused = generatePaused,
					OnPauseRequested = self.onGenerationPauseRequested,
					OnCancelRequested = self.onGenerationCancelRequested,
				})
			})
		end)
	end)
end

local function MapStateToProps (state, props)
	return {
		position = state[REDUCER_KEY].position,
		size = state[REDUCER_KEY].size,

		biomeSelection = state[REDUCER_KEY].biomeSelection,
		biomeSize = state[REDUCER_KEY].biomeSize,
		haveCaves = state[REDUCER_KEY].haveCaves,

		seed = state[REDUCER_KEY].seed,
	}
end

local function MapDispatchToProps (dispatch)
	local dispatchToGenerate = function(action)
		dispatch(ApplyToolAction(REDUCER_KEY, action))
	end

	return {
		dispatchChangePosition = function (position)
			dispatchToGenerate(ChangePosition(position))
		end,
		dispatchChangeSize = function(size)
			dispatchToGenerate(ChangeSize(size))
		end,
		dispatchSetBiomeSelection = function (biome, value)
			dispatchToGenerate(SetBiomeSelection(biome, value))
		end,
		dispatchSetHaveCaves = function (haveCaves)
			dispatchToGenerate(SetHaveCaves(haveCaves))
		end,
		dispatchSetSeed = function(seed)
			dispatchToGenerate(SetSeed(seed))
		end,
		dispatchSetBiomeSize = function(size)
			dispatchToGenerate(SetBiomeSize(size))
		end,
	}
end

return RoactRodux.connect(MapStateToProps, MapDispatchToProps)(Generate)
