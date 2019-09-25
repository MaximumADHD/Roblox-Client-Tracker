
local CodeCoverage = script.Parent
local LineScanner = require(CodeCoverage.LineScanner)

return function(fileLinesArray)
    local scanner = LineScanner:new()

    local excludedLines = {}
    local excludedIfNotHitLines = {}
    for _, line in ipairs(fileLinesArray) do
        local excluded, excludedIfNotHit = scanner:consume(line)
        table.insert(excludedLines, excluded)
        table.insert(excludedIfNotHitLines, excludedIfNotHit)
    end

    return excludedLines, excludedIfNotHitLines
end
