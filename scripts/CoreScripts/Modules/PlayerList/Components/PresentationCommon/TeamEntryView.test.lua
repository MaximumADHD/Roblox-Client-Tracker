local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Packages.Roact)
local RTL = require(CorePackages.Packages.Dev.ReactTestingLibrary)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local afterEach = JestGlobals.afterEach

local PlayerList = script.Parent.Parent.Parent
local TestProviders = require(PlayerList.TestProviders)
local TeamEntryView = require(script.Parent.TeamEntryView)

local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local FFlagPlayerListContrastingTeamText = PlayerListPackage.Flags.FFlagPlayerListContrastingTeamText

local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local createSignalMap = CoreScriptsRoactCommon.Utilities.createSignalMap

local function channelSum(color: Color3): number
	return color.R + color.G + color.B
end

local function renderTeam(teamName: string, teamColor: Color3, preferredTransparency: number?)
	local gameStats = createSignalMap()
	local teamStats = createSignalMap()
	RTL.render(Roact.createElement(TestProviders, {
		style = if preferredTransparency ~= nil
			then {
				settings = {
					preferredTransparency = preferredTransparency,
				},
			}
			else nil,
	}, {
		TeamEntryView = React.createElement(TeamEntryView, {
			size = UDim2.fromScale(1, 0),
			entrySizeX = 200,
			teamName = React.createBinding(teamName),
			teamColor = teamColor,
			gameStats = gameStats,
			teamStats = teamStats,
			gameStatsCount = 0,
			teamStatsCount = 0,
			isSmallTouchDevice = true,
		}),
	}))
	return RTL.screen.getByText(teamName)
end

describe("legacy TeamEntryView contrasting text", function()
	afterEach(function()
		RTL.cleanup()
	end)

	if FFlagPlayerListContrastingTeamText then
		it("picks dark text for a light team color", function()
			local label = renderTeam("Light Team", Color3.new(1, 1, 1))
			expect(channelSum(label.TextColor3)).toBeLessThan(1.5)
		end)

		it("picks light text for a dark team color", function()
			local label = renderTeam("Dark Team", Color3.new(0, 0, 0))
			expect(channelSum(label.TextColor3)).toBeGreaterThan(1.5)
		end)

		it("keeps the touch team bar at half transparency when preferred transparency is opaque", function()
			local label = renderTeam("Light Team", Color3.new(1, 1, 1), 0)
			expect(label.Parent.BackgroundTransparency).toBe(0.5)
		end)
	else
		it("scales the touch team bar by preferred transparency", function()
			local label = renderTeam("Light Team", Color3.new(1, 1, 1), 0)
			expect(label.Parent.BackgroundTransparency).toBe(0)
		end)
	end
end)
