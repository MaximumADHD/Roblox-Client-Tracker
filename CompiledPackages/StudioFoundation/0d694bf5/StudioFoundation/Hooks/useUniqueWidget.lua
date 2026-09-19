local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)

local Framework = require(Packages.Framework)
local ContextServices: any = Framework.ContextServices
local Plugin = ContextServices.Plugin

local StudioUri = require(Main.Util.StudioUri)
local useWidgetRef = require(Main.Hooks.useWidgetRef)

local globalId = 0
--[=[
	Returns ref and unique uri for the widget. ref should be passed to the element you want to associate the uri with.
	Unique URIs are generated with a global sequential id
]=]
local function useUniqueWidget(props: { id: string? }?)
	local plugin = Plugin:use():get()
	local pluginUri = StudioUri.wrap(plugin:GetUri())
	local id = React.useRef(nil :: string?)
	if id.current == nil then
		if props and props.id then
			id.current = props.id
		else
			id.current = tostring(globalId)
			globalId += 1
		end
	end

	local uri = StudioUri.join(pluginUri, {
		Category = "Actions",
		ItemId = id.current,
	})
	local ref = useWidgetRef(uri)

	return {
		ref = ref,
		uri = uri,
	}
end

return useUniqueWidget
