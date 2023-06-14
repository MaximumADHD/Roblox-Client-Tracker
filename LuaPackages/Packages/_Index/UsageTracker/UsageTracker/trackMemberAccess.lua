--!strict
local Packages = script:FindFirstAncestor("UsageTracker").Parent
local Cryo = require(Packages.Cryo)

local isReactComponent = require(script.Parent.isReactComponent)
local UsageGraph = require(script.Parent.UsageGraph)

type Object = { [any]: any }
type UsageGraph = UsageGraph.UsageGraph

local function trackMemberAccess(name: string, object: Object, shouldTrack: nil | (any) -> boolean)
	local usageGraph: UsageGraph = {}
	local seen = {}

	local shouldTrackMember = shouldTrack or isReactComponent

	local function wrap(name: string, inputTable: { [any]: any })
		local members = {}
		local innerTable = {}

		for key, value in inputTable do
			-- beware of metatables, non-string keys
			if key == "__index" or typeof(key) ~= "string" then
				continue
			end
			local memberKey = name .. "." .. key
			if shouldTrackMember(value) then
				usageGraph[memberKey] = {}
				members[key] = value
			elseif typeof(value) == "table" and not seen[value] then
				innerTable[key] = wrap(memberKey, value)
			else
				innerTable[key] = value
			end
			-- some tables have cyclic references, like the object returned from
			-- React.createContext()
			seen[value] = true
		end

		return setmetatable(innerTable, {
			__index = function(self, key)
				local component = members[key]
				if not component then
					return rawget(innerTable, key)
				end
				local componentKey = name .. "." .. key
				local consumerScriptPath, lineNumber = debug.info(2, "sl")
				usageGraph[componentKey] = Cryo.List.join(usageGraph[componentKey], {
					{
						dmPath = consumerScriptPath,
						lineNumber = lineNumber,
					},
				})
				return component
			end,
		})
	end

	local result = wrap(name, object)
	result[UsageGraph.UsageGraphKey] = usageGraph

	return result
end

return trackMemberAccess
