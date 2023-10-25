local ProfilerData = require(script.Parent.ProfilerDataFormatV2)

local ProfilerUtil = {}

function ProfilerUtil.getDurations(_data: any, nodeId: number, usingV2FormatFlag: boolean)
    if usingV2FormatFlag then
        local data = _data :: ProfilerData.RootDataFormat
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
    else
        return _data.TotalDuration, _data.Duration
    end
end

function ProfilerUtil.getSourceName(data, func: ProfilerData.Function?, usingV2FormatFlag: boolean): string?
    if usingV2FormatFlag then
        if func then
            return func.Source
        else
            return nil
        end
    else
        return data.Source
    end
end

function ProfilerUtil.getLine(data, func: ProfilerData.Function?, usingV2FormatFlag: boolean): number?
    if usingV2FormatFlag then
        if func then
            return func.Line
        else
            return nil
        end
    else
        return data.Line
    end
end

function ProfilerUtil.getNativeFlag(data, func: ProfilerData.Function?, usingV2FormatFlag: boolean): boolean
    if usingV2FormatFlag then
        if func then
            return func.IsNative or false
        else
            return false
        end
    else
        return data.IsNative or false
    end
end

function ProfilerUtil.standardizeChildren(data, node: ProfilerData.Node?, usingV2FormatFlag: boolean): any
    local childData = {}
    if usingV2FormatFlag then
        return node and node.Children
    else
        local children = data.Children
        if children then
            for k, v in pairs(children) do
                childData["k" .. k] = v
            end
        end
        for i, v in ipairs(data) do
            childData["i" .. i] = v
        end
    end
    return childData
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