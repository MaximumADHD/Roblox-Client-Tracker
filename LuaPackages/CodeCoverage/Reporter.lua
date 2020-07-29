local CodeCoverage = script.Parent
local LineScanner = require(CodeCoverage.LineScanner)
local LcovReporter = require(CodeCoverage.LcovReporter)

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

		local hits = scriptStats.Hits
		local lineHit = 0
		local lineMissed = 0
		local lines = {}

		if scriptStats.HitsPrecise then
			local sources = source:split('\n')

			for n,h in ipairs(hits) do
				local ignored = h < 0

				if h > 0 then
					lineHit = lineHit + 1
				elseif h == 0 then
					lineMissed = lineMissed + 1
				end

				lines[n] = {
					source = sources[n],
					ignored = ignored,
					hits = math.max(h, 0)
				}
			end
		else
			local scanner = LineScanner:new()
			local lineNumber = 1

			for line in source:gmatch('([^\r\n]*)[\r\n]?') do
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
		end

		table.insert(files, {
			script = aScript,
			path = CoreScriptSyncService:GetScriptFilePath(aScript),
			lines = lines,
			hits = lineHit,
			misses = lineMissed,
		})
	end

	return files
end

local function matchesAny(str, excludes)
	if not str or str:len() == 0 or not excludes then
		return false
	end

	for _,exclude in ipairs(excludes) do
		if string.find(str, exclude) ~= nil then
			return true
		end
	end
	return false
end

local function dirname(path)
	return path:sub(0, path:find("/[^/]*$"))
end

function Reporter.generateReport(path, excludes)
	local report = LcovReporter.generate(Reporter.processCoverageStats(), function(file)
		local isExcluded = file.script.Name:match(".spec$")
			or file.script:FindFirstAncestor("TestEZ")
			or file.script:IsDescendantOf(CodeCoverage)
			or matchesAny(file.path, excludes)
		local isIncluded = file.path and file.path:len() > 0

		return isIncluded and not isExcluded
	end)
	if report:len() == 0 then
		warn("Generating code coverage report failed. Produced report has zero size.")
		return
	end

	local success, message = pcall(function()
		game:GetService("TestService"):writeToFileIfContentIsDifferent(path, report)
	end)

	if not success then
		success, message = pcall(function() -- Deprecated API
			local fs = game:GetService("FileSystemService")
			fs:MakeParentPath(path)
			fs:writeToFileIfContentIsDifferent(path, report)
		end)
	end
	if not success then
		success, message = pcall(function() -- New API
			local fs = game:GetService("FileSystemService")
			fs:CreateDirectories(dirname(path))
			fs:WriteFile(path, report)
		end)
	end
	if not success then
		warn("Failed to save code coverage report at path: " .. path .. "\nError: " .. message)
	end
end

return Reporter
