local root = script.Parent.Parent

-- load fast flags
require(root.Bin.defineLuaFlags)

local FFlagAvatarImporterDeduplicatePackages = game:GetFastFlag("AvatarImporterDeduplicatePackages")

-- constants
local Constants = require(root.src.Constants)

-- globals
local Globals = require(root.src.Globals)
Globals.plugin = plugin
Globals.toolbar = Globals.plugin:CreateToolbar(Constants.TOOLBAR_NAME)

-- imports
local Roact = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Roact) else require(root.Packages._Old.lib.Roact)
local Rodux = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Rodux) else require(root.Packages._Old.lib.Rodux)
local RoactRodux = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.RoactRodux) else require(root.Packages._Old.lib.RoactRodux)

local Assets = require(root.src.Assets)
local AvatarImporter = require(root.src.components.AvatarImporter)
local RootReducer = require(root.src.reducers)
local ClosePlugin = require(root.src.actions.ClosePlugin)
local TogglePlugin = require(root.src.actions.TogglePlugin)

-- store
local store = Rodux.Store.new(RootReducer, nil, { Rodux.thunkMiddleware })

-- pluginGui
local pluginGui = Globals.plugin:CreateQWidgetPluginGui(Constants.NAME, {
	Enabled = false,
	Title = Constants.TITLE,
	Name = Constants.NAME,
	Modal = true,
	Size = Vector2.new(Constants.BACKGROUND_WIDTH, Constants.BACKGROUND_HEIGHT),
})

pluginGui.Name = Constants.NAME

pluginGui:BindToClose(function()
	store:dispatch(ClosePlugin())
end)

local function createHandle()
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = store
	}, {
		AvatarImporter = Roact.createElement(AvatarImporter, {
			pluginGui = pluginGui
		})
	})
end

local handle = Roact.mount(createHandle(), pluginGui)

local importAvatarButton = Globals.toolbar:CreateButton(Constants.BUTTON_NAME, Constants.BUTTON_TOOLTIP, Assets.BUTTON_ICON)

importAvatarButton.Click:Connect(function()
	store:dispatch(TogglePlugin())
end)

store.changed:connect(function(state)
	local enabled = state.plugin.enabled
	importAvatarButton:SetActive(enabled)
	pluginGui.Enabled = enabled
end)

settings().Studio.ThemeChanged:Connect(function()
	Roact.update(handle, createHandle())
end)

return nil
