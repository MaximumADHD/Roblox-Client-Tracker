--[[
	Checks the sanitization of modules in the DeveloperFramework.
	Consider modules not having tests to be a test failure, and
	consider components not using Typecheck.wrap to be a test failure.
]]

return function()
	local Framework = script.Parent
	local NO_TEST_DIRECTORIES = {
		Framework.StudioUI.StudioFrameworkStyles,
	}

	local ignoredFileNamesSiblingToTests = {
		["example"] = true,
		["renderExample"] = true,
		["style"] = true,
	}

	local function shouldHaveTests(script)
		for _, folder in ipairs(NO_TEST_DIRECTORIES) do
			if script:IsDescendantOf(folder) then
				return false
			end
		end
		return true
	end

	local function fileShouldBeValidated(script)
		return not (ignoredFileNamesSiblingToTests[script.Name] and script.Parent:FindFirstChild("test.spec"))
	end

	local function checkForTests(script, directory)
		local scriptNeedsTests = script:IsA("ModuleScript") and not (script.Name:find(".spec"))
		local innerTestSpec = script:FindFirstChild("test.spec")
		if (scriptNeedsTests or innerTestSpec) and shouldHaveTests(script) then
			local tests
			if innerTestSpec then
				tests = innerTestSpec
			else
				tests = script.Parent:FindFirstChild(script.Name .. ".spec")
			end
			assert(tests, string.format("Module `%s.lua` in %s has no tests!",
				script.Name, directory.Name))
			expect(tests).to.be.ok()
		end
	end

	local function checkForTypecheck(script, directory)
		local value = require(script)
		local isImmutable = getmetatable(value) ~= nil and getmetatable(value).__newindex ~= nil
		local isComponent = type(value) == "table" and not isImmutable and value.render ~= nil
		if isComponent then
			local wraps = value.validateProps ~= nil
			assert(wraps, string.format("Component `%s.lua` in %s does not use Typecheck.wrap!",
				script.Name, directory.Name))
			expect(wraps).to.equal(true)
		end
	end

	local function checkDirectory(directory)
		local source = directory:GetDescendants()
		for _, script in ipairs(source) do
			if fileShouldBeValidated(script) and
				(script:FindFirstChild("test.spec")	or (script:IsA("ModuleScript") and not script.Name:find(".spec")))
			then
				checkForTests(script, directory)
				checkForTypecheck(script, directory)
			end
		end
	end

	it("should check every UI component", function()
		checkDirectory(Framework.UI)
	end)

	it("should check every StudioUI component", function()
		checkDirectory(Framework.StudioUI)
	end)

	it("should check every ContextServices item", function()
		checkDirectory(Framework.ContextServices)
	end)

	it("should check every Util module", function()
		checkDirectory(Framework.Util)
	end)
end
