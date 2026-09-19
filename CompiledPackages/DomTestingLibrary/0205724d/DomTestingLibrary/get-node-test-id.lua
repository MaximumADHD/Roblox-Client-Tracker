-- ROBLOX upstream: no upstream
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local String = LuauPolyfill.String
type Array<T> = LuauPolyfill.Array<T>

local getConfig = require(script.Parent.config).getConfig

local exports = {}

local function getNodeTestId(instance): string?
	local CollectionService = game:GetService("CollectionService")
	-- ROBLOX FIXME Luau: will complain when accessing with an indexed property
	local tags = CollectionService:GetTags(instance)
	if #tags == 0 then
		return nil
	end
	local withTestIdTag = Array.filter(tags, function(tag)
		return String.startsWith(tag, getConfig().testIdAttribute)
	end)
	if #withTestIdTag == 0 then
		return nil
	elseif #withTestIdTag > 1 then
		error("Instance has multiple TestId tags set")
	end
	local splitted = String.split(withTestIdTag[1], getConfig().testIdAttribute .. "=")[2]
	return splitted
end

exports.getNodeTestId = getNodeTestId
return exports
