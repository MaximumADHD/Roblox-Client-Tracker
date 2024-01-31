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

function ProfilerUtil.standardizeChildren(data: RootDataFormat, node: Node?): {[FunctionId]: NodeId}?
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

return ProfilerUtil