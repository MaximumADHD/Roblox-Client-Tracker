local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
local usePlugin = require(Foundation.Providers.Plugin.usePlugin)
local useWidgetRef = require(script.Parent.useWidgetRef)
local useWidgetsContext = require(script.Parent.useWidgetsContext)

--[[
	Returns ref and unique uri for the widget. ref should be passed to the
	element you want to associate the uri with. Unique URIs are generated
	with an id scoped to the WidgetsProvider context.
]]
local function useUniqueWidget(props: { id: string?, forwardRef: React.RefObject<GuiBase2d>? }?)
	local plugin = usePlugin()
	if plugin == nil then
		error("useUniqueWidget must be used within a Plugin context")
	end

	local widgets = useWidgetsContext()
	local pluginUri = React.useMemo(function()
		return StudioUri.wrap(plugin:GetUri())
	end, { plugin })

	local id = React.useRef(nil :: string?)
	if id.current == nil then
		if props and props.id then
			id.current = props.id
		else
			id.current = widgets.nextId()
		end
	end

	local uri = React.useMemo(function()
		return StudioUri.join(pluginUri, {
			Category = "Actions",
			ItemId = id.current,
		})
	end, { pluginUri, id.current } :: { unknown })

	local ref = useWidgetRef(uri, props and props.forwardRef)

	return {
		ref = ref,
		uri = uri,
	}
end

return useUniqueWidget
