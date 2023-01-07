local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local initify = require(CorePackages.initify)
initify(CorePackages)
initify(Modules)

local HttpService = game:GetService("HttpService")
HttpService.HttpEnabled = true

local UIBlox = require(CorePackages.Packages.UIBlox)
UIBlox.init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))

local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local createPromiseRejectionHandler = UnitTestHelpers.createPromiseRejectionHandler
local RejectionHandler = createPromiseRejectionHandler()
RejectionHandler.inject()

local TestEZ = require(CorePackages.JestGlobals).TestEZ
local TestBootstrap = TestEZ.TestBootstrap
local TextReporterQuiet = TestEZ.Reporters.TextReporterQuiet
local TeamCityReporter = TestEZ.Reporters.TeamCityReporter
local reporter = _G["TEAMCITY"] and TeamCityReporter or TextReporterQuiet

TestBootstrap:run(
	{
		CorePackages.Workspace.Packages._Workspace.GraphQLServer,
	},
	reporter,
	{
		testNamePattern = _G["TESTEZ_TEST_NAME_PATTERN"],
	}
)

RejectionHandler.reportRejections()
