if not plugin then
	return
end

local FFlagStudioConvertToPackageLua = settings():GetFFlag("StudioConvertToPackageLua")

if not FFlagStudioConvertToPackageLua then
	return
end
-- libraries
local Plugin = script.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local UILibrary = require(Plugin.Packages.UILibrary)

local StudioService = game:GetService("StudioService")

-- components
local ServiceWrapper = require(Plugin.Src.Components.ServiceWrapper)

-- data
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

-- theme
local PluginTheme = require(Plugin.Src.Resources.PluginTheme)

-- localization
local TranslationDevelopmentTable = Plugin.Src.Resources.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
local Localization = UILibrary.Studio.Localization

-- Plugin Specific Globals
local dataStore = Rodux.Store.new(MainReducer)
local theme = PluginTheme.new()
local localization = Localization.new({
	stringResourceTable = TranslationDevelopmentTable,
	translationResourceTable = TranslationReferenceTable,
	pluginName = "ConvertToPackage",
})

-- Widget Gui Elements
local pluginHandle
local pluginGui

local function setMainWidgetInteractable(interactable)
	if pluginGui then
		for _, instance in pairs(pluginGui:GetDescendants()) do
			if instance:IsA("GuiObject") then
				instance.Active = interactable
			end
		end
	end
end

local function createServiceWrapper()
 return Roact.createElement(ServiceWrapper, {
		plugin = plugin,
		localization = localization,
		theme = theme,
		store = dataStore,
	}, {
		MainView = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = Color3.new(1, 1, 1),
		}),
	})
end

--Closes and unmounts the plugin window
local function closePluginWindow()
	if pluginHandle then
		Roact.unmount(pluginHandle)
		pluginHandle = nil
	end
end

--Initializes and populates the plugin window
local function openPluginWindow()
	if not pluginHandle then
		-- create the roact tree
		local servicesProvider = createServiceWrapper()
		pluginHandle = Roact.mount(servicesProvider, pluginGui)
	end
end

--Binds a toolbar button
local function main()
	local pluginTitle = localization:getText("Meta", "PluginName")
	plugin.Name = pluginTitle
	-- create the plugin
	pluginGui = plugin:CreateQWidgetPluginGui(plugin.Name, {
		Size = Vector2.new(960, 600),
		MinSize = Vector2.new(960, 600),
		Resizable = true,
		Modal = true,
		InitialEnabled = false,
	})
	pluginGui.Name = plugin.Name
	pluginGui.Title = plugin.Name
	pluginGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	pluginGui:GetPropertyChangedSignal("Enabled"):connect(function()
		if pluginGui.Enabled then
			openPluginWindow()
		else
			closePluginWindow()
		end
	end)
	
	StudioService.OnOpenConvertToPackagePlugin:connect(function()
		pluginGui.Enabled = true
	end)
end

main()