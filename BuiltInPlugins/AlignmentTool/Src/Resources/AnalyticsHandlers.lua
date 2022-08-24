local FFlagAlignToolImprovedAnalytics = game:GetFastFlag("AlignToolImprovedAnalytics")

local HttpService = game:GetService("HttpService")
local StudioService = game:GetService("StudioService") -- TODO: Remove with FFlagAlignToolImprovedAnalytics

local Plugin = script.Parent.Parent.Parent

local Dash = require(Plugin.Packages.Dash)

local DebugFlags = require(Plugin.Src.Utility.DebugFlags)
local Types = require(Plugin.Src.Types)

local join = Dash.join

local pluginAnalyticsContext = if FFlagAlignToolImprovedAnalytics then "AlignTool" else "Modeling"

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

		local args = join({
			studioSid = analyticsService:GetSessionId(),
			clientId = analyticsService:GetClientId(),
			placeId = game.PlaceId,
			userId = if FFlagAlignToolImprovedAnalytics then nil else StudioService:GetUserId(),
		}, additionalArgs)

		if FFlagAlignToolImprovedAnalytics and DebugFlags.LogAnalytics() then
			print(("%s SendEvent eventName=%s args=%s"):format(
				pluginAnalyticsContext, tostring(eventName), HttpService:JSONEncode(args)))
		end

		analyticsService:SendEventDeferred("studio", pluginAnalyticsContext, eventName, args)
	end

	local function reportCounter(counterName, count)
		if FFlagAlignToolImprovedAnalytics then
			count = count or 1
			if DebugFlags.LogAnalytics() then
				print(("%s ReportCounter counterName=%s count=%s"):format(
					pluginAnalyticsContext, tostring(counterName), tostring(count)))
			end
			analyticsService:ReportCounter(counterName, count)
		else
			analyticsService:ReportCounter(counterName, count or 1)
		end
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

		-- TODO: remove with FFlagAlignToolImprovedAnalytics
		DEPRECATED_useAlignTool = function(eventName, mode, axes, relativeTo, objects)
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

		useAlignTool = function(eventName, objects: Types.Array<Instance>, settings: Types.AlignSettings)
			local objectTypes = uniqueClassNames(objects)

			local args = {
				mode = settings.Mode,
				x = settings.Axes.X,
				y = settings.Axes.Y,
				z = settings.Axes.Z,
				coordinateSpace = settings.CoordinateSpace,
				relativeTo = settings.RelativeTo,
				objectCount = #objects,
				objectTypes = objectTypes,
			}

			sendEvent("UseAlignTool", args)
		end,
    }
end