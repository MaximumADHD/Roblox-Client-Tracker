
local CorePackages = game:GetService("CorePackages")
local LineScanner = require(CorePackages.CodeCoverage.LineScanner)
local LcovReporter = require(CorePackages.CodeCoverage.LcovReporter)
local TestService = game:GetService("TestService")

local ScriptContext = game:GetService("ScriptContext")
local CoreScriptSyncService = game:GetService("CoreScriptSyncService")

local Reporter = {}
Reporter.__index = Reporter

function Reporter.processCoverageStats()
    local stats = ScriptContext:GetCoverageStats()

    local files = {}
    for _, scriptStats in ipairs(stats) do
        local aScript = scriptStats.Script;

        local source = aScript.Source

        local scanner = LineScanner:new()

        local hits = scriptStats.Hits
        local lineHit = 0
        local lineMissed = 0
        local lines = {}
        local lineNumber = 1
        for line in source:gmatch('(.-)\n') do
            local excluded, excludedIfNotHit = scanner:consume(line)

            local ignored = excluded

            if not excluded then
                if hits[lineNumber] and hits[lineNumber] > 0 then
                    lineHit = lineHit + 1
                else
                    if excludedIfNotHit then
                        ignored = true
                    else
                        lineMissed = lineMissed + 1
                    end
                end
            end

            lines[lineNumber] = {
                source = line,
                ignored = ignored,
                hits = hits[lineNumber] or 0
            }

            lineNumber = lineNumber + 1
        end

        table.insert( files, {
            script = aScript,
            path = CoreScriptSyncService:GetScriptFilePath(aScript),
            lines = lines,
            hits = lineHit,
            misses = lineMissed,
        })
    end

    return files
end


function Reporter.generateReport(path)
    local report = LcovReporter.generate(Reporter.processCoverageStats(), function(file)
        local isTest = file.script.Name:match(".spec$")
            or file.script:IsDescendantOf(CorePackages.TestEZ)
            or file.script:IsDescendantOf(CorePackages.CodeCoverage)
        return not isTest and file.path and file.path:len() > 0
    end)
    local success, message = pcall(function()
        TestService:writeToFileIfContentIsDifferent(path, report)
    end)
    if not success then
        warn("Failed to save report at path: " .. path .. "\nError: " .. message)
    end
end

return Reporter
