local Plugin = script.Parent.Parent
local getFFlagEnableAlignmentToolPlugin = require(Plugin.Src.Flags.getFFlagEnableAlignmentToolPlugin)

if not getFFlagEnableAlignmentToolPlugin() then
	return
end

local getFFlagEnableAlignToolStylizer = require(Plugin.Src.Flags.getFFlagEnableAlignToolStylizer)
local RefactorFlags = require(Plugin.Packages.Framework.Util.RefactorFlags)
RefactorFlags.THEME_REFACTOR = getFFlagEnableAlignToolStylizer()

local Roact = require(Plugin.Packages.Roact)
local Rodux = require(Plugin.Packages.Rodux)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization
local Mouse = ContextServices.Mouse
local Store = ContextServices.Store
local Theme = ContextServices.Theme

local AlignmentToolPlugin = require(Plugin.Src.Components.AlignmentToolPlugin)

local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local MakeTheme = require(Plugin.Src.Resources.MakeTheme)
local analyticsHandlers = require(Plugin.Src.Resources.AnalyticsHandlers)

local TranslationDevelopmentTable = Plugin.Src.Resources.Localization.TranslationDevelopmentTable
local TranslationReferenceTable = Plugin.Src.Resources.Localization.TranslationReferenceTable

local localization = Localization.new({
	pluginName = "AlignmentTool",
	stringResourceTable = TranslationDevelopmentTable,
	translationResourceTable = TranslationReferenceTable,
})

local store = Rodux.Store.new(MainReducer, nil, { Rodux.thunkMiddleware })

local function main()
	local pluginHandle = nil

	local function onPluginUnloading()
		if pluginHandle then
			Roact.unmount(pluginHandle)
			pluginHandle = nil
		end
	end

	local pluginGui = ContextServices.provide({
		ContextServices.Plugin.new(plugin),
		localization,
		MakeTheme(),
		Mouse.new(plugin:GetMouse()),
		Store.new(store),
		Analytics.new(analyticsHandlers),
	}, {
		AlignTool = Roact.createElement(AlignmentToolPlugin),
	})

	pluginHandle = Roact.mount(pluginGui)

	plugin.Unloading:Connect(onPluginUnloading)
end

main()
