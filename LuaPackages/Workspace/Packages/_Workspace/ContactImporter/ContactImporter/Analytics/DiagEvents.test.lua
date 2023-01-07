local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)

local SocialLuaAnalytics = dependencies.SocialLuaAnalytics

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local test = JestGlobals.test

local validateDiagList = SocialLuaAnalytics.TestingAnalytics.validateDiagList
local DiagEvents = require(script.Parent.DiagEvents)

test("navigationAnalytics", function()
	jestExpect(function()
		validateDiagList(DiagEvents)
	end).never.toThrow()
end)
