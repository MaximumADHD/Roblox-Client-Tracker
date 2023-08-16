--!nonstrict
return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")
	local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
	local RunService = game:GetService("RunService")

	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)
	local UIBlox = require(CorePackages.UIBlox)
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect
	local act = require(CoreGui.RobloxGui.Modules.act)

	local Components = script.Parent.Parent
	local PlayerList = Components.Parent
	local AddPlayer = require(PlayerList.Actions.AddPlayer)
	local AddPlayerToTeam = require(PlayerList.Actions.AddPlayerToTeam)
	local AddTeam = require(PlayerList.Actions.AddTeam)
	local Reducers = PlayerList.Reducers
	local Reducer = require(Reducers.Reducer)
	local FAKE_NEUTRAL_TEAM = require(PlayerList.GetFakeNeutralTeam)

	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	--Create dummy events:
	local SendNotificationInfo = Instance.new("BindableEvent")
	SendNotificationInfo.Name = "SendNotificationInfo"
	SendNotificationInfo.Parent = RobloxGui

	local NewFollower = Instance.new("RemoteEvent")
	NewFollower.Name = "NewFollower"
	NewFollower.Parent = RobloxReplicatedStorage

	local PlayerListDisplay = require(script.Parent.PlayerListDisplay)


	type FakePlayer = {
		UserId: number,
		Name: string,
		DisplayName: string,
		Team: Team?,
	}

	local function createPlayer(name: string, userId: number, team: Team?): FakePlayer
		return {
			Name = name,
			DisplayName = name .. "+DN",
			UserId = userId,
			Team = team,
		}
	end

	local function createAndMount(sortedPlayers: {FakePlayer})
		local store = Rodux.Store.new(Reducer)

		local knownTeams: {[Team]: boolean} = {}
		local teamColorToPlayerMap = {}
		for _, player in pairs(sortedPlayers) do
			store:dispatch(AddPlayer(player))
			local team = player.Team
			if team and team ~= FAKE_NEUTRAL_TEAM then
				if not knownTeams[team] then
					store:dispatch(AddTeam(team))
					knownTeams[team] = true
				end
				if not teamColorToPlayerMap[team.TeamColor.Number] then
					teamColorToPlayerMap[team.TeamColor.Number] = {}
				end
				table.insert(teamColorToPlayerMap[team.TeamColor.Number], player)
				store:dispatch(AddPlayerToTeam(player, team))
			end
		end
		local sortedTeams: {{team: Team}} = {}
		for team in pairs(knownTeams) do
			table.insert(sortedTeams, {team = team})
		end
		table.sort(sortedTeams, function(a: {team: Team}, b) return a.team.Name < b.team.Name end)
		if #sortedTeams > 0 then
			table.insert(sortedTeams, {
				team = FAKE_NEUTRAL_TEAM
			})
		end

		store:flush()

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(true)
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
					PlayerListDisplay = Roact.createElement(PlayerListDisplay, {
						isVisible = true,
						isMinimized = false,
						isTenFootInterface = false,
						isUsingGamepad = false,
						screenSizeY = 359,
						entrySize = 0,
						sortedPlayers = sortedPlayers,
						sortedTeams = #sortedTeams > 0 and sortedTeams or nil,
						teamColorToPlayerMap = teamColorToPlayerMap,

						playerStats = {},
						gameStats = {},
						teamScores = {},
						playerIconInfo = {
							[1200] = {
								isPlaceOwner = true,
							}
						},
						playerRelationship = {},

						dropDownPlayer = nil,
						dropDownVisible = false,
					}),
				})
			})
		})

		local container = Instance.new("Frame")
		-- Galaxy S7 size
		container.Size = UDim2.fromOffset(472, 269)
		local handle = Roact.mount(element, container, "PlayerListDisplay")

		return container.PlayerListDisplay, handle
	end

	local function validateChildren(scroll: ScrollingFrame, expected: {string})
		local actualChildren: {GuiObject} = {}
		local layoutExists = false
		for _, child in pairs(scroll:GetChildren()) do
			if child:IsA("GuiObject") then
				table.insert(actualChildren, child)
			elseif child:IsA("UIListLayout") then
				jestExpect(layoutExists).toEqual(false)
				layoutExists = true
			else
				error("Unexpected child type: " .. child.ClassName .. " (" .. child.Name .. ")")
			end
		end
		jestExpect(layoutExists).toEqual(false)

		table.sort(actualChildren, function(a: GuiObject, b) return a.AbsolutePosition.Y < b.AbsolutePosition.Y end)
		local nameList = {}
		for _, child in pairs(actualChildren) do
			table.insert(nameList, child.Name)
		end

		jestExpect(table.concat(nameList, ", ")).toEqual(table.concat(expected, ", "))
	end

	it("should create and destroy with fake players without error", function()
		local scroll, handle = createAndMount({
			createPlayer("Apple", 1800), createPlayer("Banana", 1200), createPlayer("Clementine", 1900)
		})

		validateChildren(scroll, {
			"TitlePlayer",
			"TitleBar",
			"Player_1800",
			"Player_1200",
			"Player_1900",
		})

		Roact.unmount(handle)
	end)

	it("should show elements inside the viewport", function()
		local sortedPlayers = {}
		for i = 1, 100 do
			sortedPlayers[i] = createPlayer("Player" .. i, 1199 + i)
		end

		local scroll, handle = createAndMount(sortedPlayers)

		act(function()
			RunService.Heartbeat:Wait()
			RunService.Heartbeat:Wait()
			scroll.CanvasPosition = Vector2.new(0, 2000)
			RunService.Heartbeat:Wait()
			RunService.Heartbeat:Wait()
		end)

		-- The only reason this check would fail is if the canvas size is too small.
		jestExpect(scroll.CanvasPosition).toEqual(Vector2.new(0, 2000))
		jestExpect(scroll.AbsoluteSize).toEqual(Vector2.new(472, 269))

		validateChildren(scroll, {
			"TitlePlayer",
			"TitleBar",
			"Player_1200",
			"Player_1214",
			"Player_1215",
			"Player_1216",
			"Player_1217",
			"Player_1218",
			"Player_1219",
			"Player_1220",
			"Player_1221",
			"Player_1222",
			"Player_1223",
		})

		Roact.unmount(handle)
	end)

	it("should handle teams correctly", function()
		local blue = Instance.new("Team")
		blue.Name = "Blue"
		blue.TeamColor = BrickColor.Blue()

		local red = Instance.new("Team")
		red.Name = "Red"
		red.TeamColor = BrickColor.Red()

		local sortedPlayers = {
			createPlayer("Marisa", 1201, blue),
			createPlayer("Medicine", 1204, blue),
			createPlayer("Yukari", 1207, blue),
			createPlayer("Alice", 1203, red),
			createPlayer("Reimu", 1200, red),
			createPlayer("Yuyuko", 1206, red),
			createPlayer("Sanae", 1202, FAKE_NEUTRAL_TEAM),
			createPlayer("Youmu", 1205, FAKE_NEUTRAL_TEAM),
		}

		local scroll, handle = createAndMount(sortedPlayers)

		act(function()
			RunService.Heartbeat:Wait()
			scroll.CanvasPosition = Vector2.new(0, 600)
			RunService.Heartbeat:Wait()
		end)

		validateChildren(scroll, {
			"TitlePlayer",
			"TitleBar",
			-- Blue team (label occluded)
			"Player_1201",
			"Player_1204",
			"Player_1207",
			-- Red team
			"Team_2",
			"Player_1203",
			"Player_1200",
			"Player_1206",
			-- Neutral
			"Team_3",
			"Player_1202",
		})

		Roact.unmount(handle)
	end)
end
