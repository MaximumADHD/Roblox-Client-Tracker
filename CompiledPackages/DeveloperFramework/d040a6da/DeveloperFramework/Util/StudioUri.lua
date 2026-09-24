-- DEPRECATED: Please use StudioFoundation.Util.StudioUri instead
--!strict
local Framework = script.Parent.Parent
local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local Types = require(Framework.Types)
type StudioUri = Types.StudioUri

local StudioUri = {}

function StudioUri.toString(uri: StudioUri)
	local entries = table.create(5)

	if uri.DataModel then
		table.insert(entries, `DataModel:{uri.DataModel}`)
	end
	if uri.PluginType then
		table.insert(entries, `PluginType:{uri.PluginType}`)
	end
	if uri.PluginId then
		table.insert(entries, `PluginId:{uri.PluginId}`)
	end
	if uri.Category then
		table.insert(entries, `Category:{uri.Category}`)
	end
	if uri.ItemId then
		table.insert(entries, `ItemId:{uri.ItemId}`)
	end

	return table.concat(entries, ", ")
end

function StudioUri.equals(uri: StudioUri, other: StudioUri)
	return uri.DataModel == other.DataModel
		and uri.PluginType == other.PluginType
		and uri.PluginId == other.PluginId
		and uri.Category == other.Category
		and uri.ItemId == other.ItemId
end

function StudioUri.child(uri: StudioUri, childId: string)
	return join(uri, {
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
	return {
		DataModel = "Standalone",
		PluginId = pluginId,
		Category = "Actions",
		ItemId = itemId,
	}
end

function StudioUri.fromSetting(pluginId: string, itemId: string): StudioUri
	return {
		DataModel = "Standalone",
		PluginId = pluginId,
		Category = "Settings",
		ItemId = itemId,
	}
end

return StudioUri
