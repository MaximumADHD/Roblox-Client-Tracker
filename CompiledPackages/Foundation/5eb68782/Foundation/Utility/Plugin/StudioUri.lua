-- Note: This is vendored from StudioPlugins. It doesn't seem like there's a
-- common Rotriever package, as lots of plugins are just vendoring it.

-- Do not expose as a public API in any way. StudioUri will probably change or
-- go away in the future, we don't want to tie Studio team's hands.

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local join = Dash.join

type FIXME<T = any> = T

export type StudioUri = {
	Category: string?,
	DataModel: string?,
	ItemId: string?,
	PluginId: string?,
	PluginType: string?,
}

local EMPTY: any = {}
local StudioUri = {}

function StudioUri.equals(uri: StudioUri, other: StudioUri)
	-- Early-out if they're identical table addresses
	if rawequal(uri, other) then
		return true
	end
	return uri.DataModel == other.DataModel
		and uri.PluginType == other.PluginType
		and uri.PluginId == other.PluginId
		and uri.Category == other.Category
		and uri.ItemId == other.ItemId
end

StudioUri.RESTRICTED_Mt = table.freeze({
	__eq = function(a: StudioUri, b: StudioUri)
		return StudioUri.equals(a, b)
	end,
})

-- Applies the metatable to a StudioUri object and freezes it
function StudioUri.wrap(uri: StudioUri): StudioUri
	-- If already frozen and has the correct metatable, return it to avoid cloning
	if table.isfrozen(uri) and getmetatable(uri :: FIXME) == StudioUri.RESTRICTED_Mt then
		return uri
	end
	-- Clone if frozen and not the correct metatable
	if table.isfrozen(uri) then
		uri = table.clone(uri)
	end
	return table.freeze(setmetatable(uri :: FIXME, StudioUri.RESTRICTED_Mt))
end

function StudioUri.join(uri: StudioUri, other: StudioUri): StudioUri
	return StudioUri.wrap(join(uri, other))
end

function StudioUri.toString(uri: StudioUri?)
	local entries = table.create(5)

	local currentUri = uri or EMPTY

	if not currentUri then
		return ""
	end

	if currentUri.DataModel then
		table.insert(entries, `DataModel:{currentUri.DataModel}`)
	end
	if currentUri.PluginType then
		table.insert(entries, `PluginType:{currentUri.PluginType}`)
	end
	if currentUri.PluginId then
		table.insert(entries, `PluginId:{currentUri.PluginId}`)
	end
	if currentUri.Category then
		table.insert(entries, `Category:{currentUri.Category}`)
	end
	if currentUri.ItemId then
		table.insert(entries, `ItemId:{currentUri.ItemId}`)
	end

	return table.concat(entries, ", ")
end

function StudioUri.child(uri: StudioUri, childId: string)
	return StudioUri.join(uri, {
		ItemId = if uri.ItemId then `{uri.ItemId}/{childId}` else childId,
	})
end

function StudioUri.isNull(uri: StudioUri)
	return uri.DataModel == "Null"
end

function StudioUri.isValid(uri: any)
	return type(uri) == "table"
end

function StudioUri.fromAction(pluginId: string, itemId: string): StudioUri
	return StudioUri.wrap({
		DataModel = "Standalone",
		PluginId = pluginId,
		Category = "Actions",
		ItemId = itemId,
	})
end

function StudioUri.fromSetting(pluginId: string, itemId: string): StudioUri
	return StudioUri.wrap({
		DataModel = "Standalone",
		PluginId = pluginId,
		Category = "Settings",
		ItemId = itemId,
	})
end

function StudioUri.fromWidget(pluginId: string, itemId: string): StudioUri
	return StudioUri.wrap({
		DataModel = "Standalone",
		PluginId = pluginId,
		Category = "Widgets",
		ItemId = itemId,
	})
end

function StudioUri.fromPanel(pluginId: string, itemId: string): StudioUri
	return StudioUri.wrap({
		DataModel = "Standalone",
		PluginId = pluginId,
		Category = "Panels",
		ItemId = itemId,
	})
end

return StudioUri
