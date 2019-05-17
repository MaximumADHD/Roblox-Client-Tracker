local LcovReporter = {}
LcovReporter.__index = LcovReporter


function LcovReporter.generate(files, includeFilter)
    local report = {}

    for _, file in ipairs(files) do
        if includeFilter(file) then
            table.insert(report, "TN:")
            table.insert(report, "SF:" .. file.path)
            local foundFirstHit = false
            for lineNumber, line in ipairs(file.lines) do
                if not line.ignored and not foundFirstHit then
                    foundFirstHit = true
                end

                if foundFirstHit and not line.ignored then
                    table.insert(report, ("DA:%d,%d"):format(lineNumber, line.hits))
                end
            end
            table.insert(report, ("LH:%d"):format(file.hits))
            table.insert(report, ("LF:%d"):format(file.hits, file.misses))
            table.insert(report, "end_of_record")
        end
    end

    return table.concat(report, "\n")
end


return LcovReporter