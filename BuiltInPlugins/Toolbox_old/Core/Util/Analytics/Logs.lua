local Plugin = script.Parent.Parent.Parent.Parent

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local Logs = { }

local function sendLog(logString)
	print(("[Toolbox Analytics] %s"):format(tostring(logString)))
end

function Logs.logAnalytics(method, target, context, name, args)
	if not DebugFlags.shouldLogAnalytics() then
		return
	end

	method = method or ""
	target = target or ""
	context = context or ""
	name = name or ""
	args = args or {}

	local argStrings = {}
	for k, v in pairs(args) do
		local key = type(k) == "string" and k or "[" .. tostring(v) .. "]"
		local value = type(v) == "string" and "\"" .. v .. "\"" or tostring(v)
		argStrings[#argStrings + 1] = key .. "=" .. value
	end

	local argsString = table.concat(argStrings, ", ")

	sendLog(("%s(target=\"%s\", eventContext=\"%s\", eventName=\"%s\", additionalArgs={%s})"):format(
		tostring(method), tostring(target), tostring(context), tostring(name), argsString))
end

function Logs.logEvent(method, category, action, label, value)
	if not DebugFlags.shouldLogAnalytics() then
		return
	end

	method = method or ""
	category = category or ""
	action = action or ""
	label = label or ""
	value = value or 0

	sendLog(("%s(category=\"%s\", action=\"%s\", label=\"%s\", value=%s)"):format(
		tostring(method), tostring(category), tostring(action), tostring(label), tostring(value)))
end

function Logs.logCounterEvent(method, counter, amount)
	if not DebugFlags.shouldLogAnalytics() then
		return
	end

	method = method or ""
	counter = counter or ""
	amount = amount or 1

	sendLog(("%s(counter=\"%s\", amount=%s)"):format(
		tostring(method), tostring(counter), tostring(amount)))
end

function Logs.logSendReports(userId)
	if not DebugFlags.shouldLogAnalytics() then
		return
	end

	sendLog(("sendReports(userId=%s)"):format(tostring(userId)))
end

function Logs.logReport(counter, amount, reportValue)
	if not DebugFlags.shouldLogAnalytics() then
		return
	end

	sendLog(("sendReports() counter \"%s\" = %s, reporting total %s"):format(
		tostring(counter), tostring(amount), tostring(reportValue)))
end

return Logs
