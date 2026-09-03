--!strict
--[[
	useMenu is a hook that creates a QWidgetPluginGui corresponding to a dropdown menu.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)
local ReactRoblox = require(Framework.Util.ReactRoblox)

local Types = require(Framework.Types)
type Attachment = Types.Attachment
type Controls = Types.Controls
type StudioUri = Types.StudioUri
local StudioUri = require(Framework.Util.StudioUri)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local ContextServices = require(Framework.ContextServices)
local Design = ContextServices.Design
local Localization = ContextServices.Localization
local Plugin = ContextServices.Plugin

local ContextItem = ContextServices.ContextItem
local MenuContext = ContextItem:createSimple("Menu")

-- TODO: jbousellam - automatic size is not calculating the size properly, this is hackery and this is bad
local POPUP_PADDING = 16
local MAX_SIZE = 3000

type Menu = {
	panel: QWidgetPluginGui,
	uri: StudioUri,
	root: ReactRoblox.RootType,
	open: boolean,
	Panels: any,
}

local menus = {} :: { Menu }

local openCount = 0

local function closeMenus(depth: number?)
	for i, menu in menus do
		if depth ~= nil and i <= depth then
			continue
		end
		menu.open = false
		menu.panel.Enabled = false
		menu.root:render(nil)
		task.spawn(function()
			-- Reset panel to 0x0 to reduce flicker on re-open
			menu.Panels:SetSizeAsync(menu.uri, Vector2.new(0, 0))
		end)
	end
end

local function getMenu(plugin: Plugin, depth: number)
	if menus[depth] then
		return menus[depth]
	end
	local id = `Menus/{depth}`
	local panel = plugin:CreateQWidgetPluginGui(id, {
		Id = id,
		InitialEnabled = false,
		MinSize = Vector2.new(100, 100),
		Modal = false,
		Popup = {
			PassesThroughMouseEvents = true,
		},
		Resizable = true,
		Size = Vector2.new(100, 100),
		Title = id,
	})
	panel.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	local root = ReactRoblox.createRoot(panel)
	local menu: Menu = {
		depth = #menus + 1,
		uri = join(plugin:GetUri(), {
			Category = "Panels",
			ItemId = id,
		}),
		panel = panel,
		root = root,
		open = false,
		Panels = plugin:GetPluginComponent("Panels"),
	}
	menus[depth] = menu
	-- Panel is a ScreenGui in tests
	if panel:IsA("PluginGui") then
		panel:BindToClose(function()
			-- Only close menus when the outermost menu loses focus
			local lastOpenMenu
			for i = #menus, 1, -1 do
				if menus[i].open then
					lastOpenMenu = menus[i]
					break
				end
			end
			if menu == lastOpenMenu then
				closeMenus()
			end
		end)
	end
	return menu
end

export type MenuViewProps = {
	WidgetUri: StudioUri,
	LayoutOrder: number?,
	Plugin: Plugin,
	Controls: Controls,
	OnResize: ((instance: Frame) -> ())?,
	ShowMore: boolean?,
}
export type MenuView = (props: MenuViewProps) -> React.ReactElement

local function useMenu(view: MenuView): (
	(controls: Controls, widgetUri: StudioUri, attachment: Attachment?, menuOnLeft: boolean?) -> (),
	(number) -> (),
	any
)
	local pluginContext = Plugin.use()
	local designContext = Design.use()
	local menuContext = MenuContext.use()
	local localizationContext = Localization.use()
	local menuData = if menuContext.get then menuContext:get() else { depth = 0, menuOnLeft = false }

	local function openMenu(controls: Controls, widgetUri: StudioUri, attachment: Attachment?, menuOnLeft: boolean?)
		openCount += 1

		local depth = menuData.depth + 1
		local plugin = pluginContext:get()
		local pluginUri = plugin:GetUri()
		local menuId = `Menus/{depth}`
		local panelUri = join(pluginUri, {
			Category = "Panels",
			ItemId = menuId,
		})
		local menu = getMenu(plugin, depth)
		local Panels = plugin:GetPluginComponent("Panels")

		-- Draw the React UI for the menu
		menu.root:render(ContextServices.provide({
			designContext,
			localizationContext,
			pluginContext,
			MenuContext.new({ depth = depth, menuOnLeft = menuOnLeft or menuData.menuOnLeft }),
		}, {
			Main = React.createElement("Frame", {
				[React.Tag] = "Role-Surface100 X-Fill X-PadTabMenu",
			}, {
				Menu = React.createElement(
					view,
					{
						WidgetUri = widgetUri,
						Plugin = plugin,
						Controls = controls,
						OnResize = function(instance: Frame)
							local x = math.ceil(math.min(MAX_SIZE, instance.AbsoluteSize.X + POPUP_PADDING))
							local y = math.ceil(math.min(MAX_SIZE, instance.AbsoluteSize.Y + POPUP_PADDING))
							Panels:SetSizeAsync(panelUri, Vector2.new(x, y))
						end,
						[React.Tag] = "X-RowSpace150 X-Top X-Fit",
					} :: any
				),
				StyleLink = React.createElement("StyleLink", {
					StyleSheet = designContext:get(),
				}),
			}),
		}))
		-- Position the menu to the right of the widget by default
		local options = join({
			TargetWidgetUri = widgetUri,
			TargetAnchorPoint = Vector2.new(0, 1),
			SubjectAnchorPoint = Vector2.new(0, 0),
			Offset = Vector2.new(0, 0),
		}, attachment)
		Panels:SetAttachmentAsync(panelUri, options)
		menu.panel.Enabled = true
		menu.open = true

		-- Report navigation telemetry
		task.defer(function()
			pcall(function()
				local InteractionTelemetry = plugin:GetPluginComponent("InteractionTelemetry")
				InteractionTelemetry:ReportInteractionAsync({
					functionType = "Navigation",
					sourceType = "Widget",
					sourceData = StudioUri.toString(widgetUri),
				})
			end)
		end)
	end

	return openMenu, closeMenus, menuData
end

return useMenu
