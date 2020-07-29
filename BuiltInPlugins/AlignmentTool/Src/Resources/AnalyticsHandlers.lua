local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local function uniqueClassNames(objects)
	local classNameSet = {}
	local classNames = {}
	for _, object in ipairs(objects) do
		local name = object.ClassName
		if not classNameSet[name] then
			classNameSet[name] = true
			table.insert(classNames, name)
		end
	end
	return table.concat(classNames, ",")
end

return function(analyticsService)
	local function sendEvent(eventName, additionalArgs)
		additionalArgs = additionalArgs or {}

		local args = Cryo.Dictionary.join({
			studioSid = analyticsService:GetSessionId(),
			clientId = analyticsService:GetClientId(),
			placeId = game.PlaceId,
			userId = StudioService:GetUserId(),
		}, additionalArgs)

		analyticsService:SendEventDeferred("studio", "Modeling", eventName, args)
	end

	local function reportCounter(counterName, count)
		analyticsService:ReportCounter(counterName, count or 1)
	end

	return {
		alignToolOpen = function()
			sendEvent("AlignToolOpen")
		end,

		alignToolClose = function()
			sendEvent("AlignToolClose")
		end,

		alignToolImpression = function()
			reportCounter("AlignToolImpression")
			sendEvent("AlignToolImpression")
		end,

		useAlignTool = function(eventName, mode, axes, relativeTo, objects)
			local objectTypes = uniqueClassNames(objects)

			local args = {
				mode = mode,
				worldX = axes.WorldX or false,
				worldY = axes.WorldY or false,
				worldZ = axes.WorldZ or false,
				relativeTo = relativeTo,
				objectCount = #objects,
				objectTypes = objectTypes,
			}

			sendEvent("UseAlignTool", args)
		end,
    }
end