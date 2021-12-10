if not plugin then
	return
end

require(script.Parent.defineLuaFlags)

local main = script.Parent.Parent

local getFFlagEnableAssetImporter = require(main.Src.Flags.getFFlagEnableAssetImporter)
if not getFFlagEnableAssetImporter() then
	return
end

local commonInit = require(script.Parent.commonInit)
commonInit()

local Roact = require(main.Packages.Roact)
local Rodux = require(main.Packages.Rodux)
local Framework = require(main.Packages.Framework)

local MainReducer = require(main.Src.Reducers.MainReducer)

local createContextItems = require(script.Parent.createContextItems)

local MainPlugin = require(main.Src.MainPlugin)
local handle

-- Allows connecton to the Developer Inspector for internal engineers
local inspector = Framework.DeveloperTools.forPlugin(main.Name, plugin)

local function init()
	plugin.Name = main.Name

	local store = Rodux.Store.new(MainReducer, nil, {
		Rodux.thunkMiddleware,
	})

	local contextItems = createContextItems(plugin, store)

	local mainPlugin = Roact.createElement(MainPlugin, contextItems)

	handle = Roact.mount(mainPlugin)
end

plugin.Unloading:Connect(function()
	if inspector then
		inspector:destroy()
	end

	if handle then
		Roact.unmount(handle)
		handle = nil
	end
end)

init()
