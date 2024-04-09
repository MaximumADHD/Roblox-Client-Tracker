local ProfilerData = require(script.Parent.ProfilerDataFormatV2)

local ProfilerUtil = {}

type FunctionId = ProfilerData.FunctionId
type NodeId = ProfilerData.NodeId
type RootDataFormat = ProfilerData.RootDataFormat
type Node = ProfilerData.Node
type Function = ProfilerData.Function

function ProfilerUtil.getDurations(data: RootDataFormat, nodeId: NodeId)
	if nodeId > 0 then
		local node = data.Nodes[nodeId]
		assert(node ~= nil)

		local totalDuration = node.TotalDuration
		local selfDuration = node.Duration
		return totalDuration, selfDuration
	else
		-- Assume root "node", calculate total duration from category roots
		local totalDuration = 0

		for _, category: ProfilerData.Category in data.Categories do
			totalDuration += data.Nodes[category.NodeId].TotalDuration
		end

		return totalDuration, 0
	end
end

function ProfilerUtil.getName(data: RootDataFormat, func: Function?): string?
	return func and func.Name
end

function ProfilerUtil.getSourceName(data: RootDataFormat, func: Function?): string?
	return func and func.Source
end

function ProfilerUtil.getLine(data: RootDataFormat, func: Function?): number?
	return func and func.Line
end

function ProfilerUtil.getNativeFlag(data: RootDataFormat, func: Function?): boolean
	return (func and func.IsNative) or false
end

function ProfilerUtil.getPluginFlag(data: RootDataFormat, func: ProfilerData.Function?): boolean
	return (func and func.IsPlugin) or false
end

function ProfilerUtil.standardizeChildren(data: RootDataFormat, node: Node?): { [FunctionId]: NodeId }?
	return node and node.Children
end

function ProfilerUtil.formatSessionLength(len: number?): string?
	if len then
		local hours = len / (1000 * 60 * 60)
		local mins = (len / (1000 * 60)) % 60
		local secs = (len / 1000) % 60
		local millis = len % 1000

		return string.format("%02i:%02i:%02i.%04i", hours, mins, secs, millis)
	end

	return nil
end

function ProfilerUtil.formatTimer(secs: number?): string
	if secs ~= nil then
		if secs == 0 then
			return ""
		elseif secs >= 60 then
			return string.format("%dm", secs / 60)
		else
			return string.format("%ds", secs)
		end
	end

	return ""
end

function ProfilerUtil.formatFrequency(freq)
	if freq < 1000 then
		return tostring(freq) .. " Hz"
	else
		return tostring(freq / 1000) .. " KHz"
	end
end

local TOOLTIP_FORMAT = "%s:%s"

function ProfilerUtil.getSourceLocationString(data: RootDataFormat, func: Function, altName: string): string
	local sourceName = ProfilerUtil.getSourceName(data, func)
	local name = if not sourceName or #sourceName == 0 then altName else sourceName

	local result = name
	local lineNumber = ProfilerUtil.getLine(data, func)
	if lineNumber and lineNumber >= 1 then
		result = string.format(TOOLTIP_FORMAT, name, tostring(lineNumber))
	end
	return result
end

return ProfilerUtil
