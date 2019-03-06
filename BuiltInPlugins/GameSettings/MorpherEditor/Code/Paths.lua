-- Paths.lua - this is passed around the entire codebase, it requires everything in one place,
-- so that the same require paths are not repeated throughout the plugin (meaning, if they are changed, they only need to be changed here),
-- and stops the beginning of scripts getting cluttered with many requires

local fastFlags = require(script.Parent.FastFlags)

local Paths = {}

function Paths.requireAll(roactRoduxPath, pathToWidgets)
	local codePath = script.Parent
	local libraryPath = pathToWidgets

	-- core
	Paths.Roact = require(roactRoduxPath.Roact)
	Paths.Rodux = require(roactRoduxPath.Rodux)
	Paths.RoactRodux = require(roactRoduxPath.RoactRodux)

	-- shared widgets

	-- before including anything from the shared widgets library, set where that library should be using Roact/Rodux from
	if nil ~= libraryPath:FindFirstChild("RoactStudioWidgetsPathSelection") then
		require(libraryPath.RoactStudioWidgetsPathSelection.RoactDevelopmentPathSelection).ThePath = roactRoduxPath
	end
	if fastFlags.isMorphingPanelWidgetsStandardizationOn() then
		local studioWidgetsPath = libraryPath.RoactStudioWidgets
		Paths.StudioWidgetHyperlink = require(studioWidgetsPath.Hyperlink)
		Paths.StudioWidgetToggleButton = require(studioWidgetsPath.ToggleButton)
		Paths.StudioWidgetTitledFrame = require(studioWidgetsPath.TitledFrame)
		Paths.StudioWidgetRoundTextBox = require(studioWidgetsPath.RoundTextBox)
		Paths.StudioWidgetRangeSlider = require(studioWidgetsPath.RangeSlider)
		Paths.StudioWidgetButtonBar = require(studioWidgetsPath.ButtonBar)
		Paths.StudioWidgetRadioButtonSet = require(studioWidgetsPath.RadioButtonSet)
		Paths.StudioWidgetStyledScrollingFrame = require(studioWidgetsPath.StyledScrollingFrame)
	else
		local sharedWidgetsPath = libraryPath.RoactStudioWidgets
		Paths.SharedWidgetButton = require(sharedWidgetsPath.Button_deprecated)
		Paths.SharedWidgetCheckbox = require(sharedWidgetsPath.Checkbox_deprecated)
		Paths.SharedWidgetRadioButton = require(sharedWidgetsPath.RadioButton_deprecated)
		Paths.SharedWidgetSliderRanged = require(sharedWidgetsPath.SliderRanged_deprecated)
	end

	-- other libraries
	local avatarPath = codePath.Avatar
	Paths.Avatar = require(avatarPath.Avatar)
	Paths.AvatarRigManager = require(avatarPath.AvatarRigManager)
	Paths.AvatarWebAPI = require(avatarPath.AvatarWebAPI)

	-- constants
	local constantsPath = codePath.Constants
	Paths.ConstantColors = require(constantsPath.ConstantColors)
	Paths.ConstantFonts = require(constantsPath.ConstantFonts)
	Paths.ConstantLayout = require(constantsPath.ConstantLayout)
	Paths.ConstantScaleBoundaries = require(constantsPath.ConstantScaleBoundaries)
	Paths.ConstantAvatar = require(constantsPath.ConstantAvatar)
	Paths.ConstantTemplate = require(constantsPath.ConstantTemplate)

	-- utility
	local utilityFunctionsPath = codePath.UtilityFunctions
	Paths.UtilityFunctionsTable = require(utilityFunctionsPath.UtilityFunctionsTable)
	Paths.UtilityFunctionsService = require(utilityFunctionsPath.UtilityFunctionsService)
	Paths.UtilityFunctionsAction = require(utilityFunctionsPath.UtilityFunctionsAction)
	Paths.UtilityFunctionsMath = require(utilityFunctionsPath.UtilityFunctionsMath)
	Paths.UtilityFunctionsCreate = require(utilityFunctionsPath.UtilityFunctionsCreate)

	local utilityClassesPath = codePath.UtilityClasses
	Paths.UtilityClassLayoutOrder = require(utilityClassesPath.UtilityClassLayoutOrder)

	-- state interface
	local stateInterfacePath = codePath.StateInterface
	Paths.StateInterfaceTemplates = require(stateInterfacePath.StateInterfaceTemplates)
	Paths.StateInterfaceSettings = require(stateInterfacePath.StateInterfaceSettings)
	Paths.StateInterfaceTheme = require(stateInterfacePath.StateInterfaceTheme)

	-- lifetime managers
	local lifetimeManagersPath = codePath.LifetimeManagers
	Paths.LifetimeManagerGUI = require(lifetimeManagersPath.LifetimeManagerGUI)
	Paths.LifetimeManagerAvatar = require(lifetimeManagersPath.LifetimeManagerAvatar)

	-- internal components
	local componentsPath = codePath.Components
	Paths.ComponentRootApp = require(componentsPath.ComponentRootApp)
	Paths.ComponentRootPanel = require(componentsPath.ComponentRootPanel)
	Paths.ComponentAvatarTypePanel = require(componentsPath.ComponentAvatarTypePanel)
	Paths.ComponentTitleBar = require(componentsPath.ComponentTitleBar)
	if not fastFlags.isMorphingPanelWidgetsStandardizationOn() then
		Paths.ComponentRadioButtonRow = require(componentsPath.ComponentRadioButtonRow)
		Paths.ComponentButtonRow = require(componentsPath.ComponentButtonRow)
		Paths.ComponentSliderRow = require(componentsPath.ComponentSliderRow)
		Paths.ComponentTextInputRow = require(componentsPath.ComponentTextInputRow)
	end
	Paths.ComponentDividerRow = require(componentsPath.ComponentDividerRow)
	Paths.ComponentScalePanel = require(componentsPath.ComponentScalePanel)
	Paths.ComponentAnimationPanel = require(componentsPath.ComponentAnimationPanel)
	Paths.ComponentCollisionPanel = require(componentsPath.ComponentCollisionPanel)
	Paths.ComponentAssetsPanel = require(componentsPath.ComponentAssetsPanel)
	Paths.ComponentPresetsPanel = require(componentsPath.ComponentPresetsPanel)
	Paths.ComponentMorpherTemplate = require(componentsPath.ComponentMorpherTemplate)
	Paths.ComponentMorpherTemplateContainer = require(componentsPath.ComponentMorpherTemplateContainer)
	Paths.ComponentAvatarUpdater = require(componentsPath.ComponentAvatarUpdater)
	if not fastFlags.isMorphingPanelWidgetsStandardizationOn() then
		Paths.ComponentPlayerChoice = require(componentsPath.ComponentPlayerChoice)
	end
	Paths.ComponentRadioButtonSetPanel = require(componentsPath.ComponentRadioButtonSetPanel)
	if fastFlags.isMorphingPanelWidgetsStandardizationOn() then
		Paths.ComponentAssetInput = require(componentsPath.ComponentAssetInput)
		Paths.ComponentPublishingHint = require(componentsPath.ComponentPublishingHint)
	end

	--reducers
	local reducersPath = codePath.Reducers
	Paths.ReducerRoot = require(reducersPath.ReducerRoot)
	Paths.ReducerTemplates = require(reducersPath.ReducerTemplates)
	Paths.ReducerSettings = require(reducersPath.ReducerSettings)
	Paths.ReducerTheme = require(reducersPath.ReducerTheme)

	-- actions
	local actionsPath = codePath.Actions
	Paths.ActionTemplatesAdd = require(actionsPath.ActionTemplatesAdd)
	Paths.ActionTemplatesClobberTemplate = require(actionsPath.ActionTemplatesClobberTemplate)
	Paths.ActionSettingsSetFetchingScaleBoundaries = require(actionsPath.ActionSettingsSetFetchingScaleBoundaries)
	Paths.ActionSettingsSaveScaleBoundaries = require(actionsPath.ActionSettingsSaveScaleBoundaries)

	-- thunks
	local thunksPath = codePath.Thunks
	Paths.ThunkGetScaleBoundaries = require(thunksPath.ThunkGetScaleBoundaries)

	-- state models
	local stateModelPath = codePath.StateModel
	Paths.StateModelTemplate = require(stateModelPath.StateModelTemplate)

	-- globals
	Paths.Globals = require(codePath.Globals)
end

return Paths