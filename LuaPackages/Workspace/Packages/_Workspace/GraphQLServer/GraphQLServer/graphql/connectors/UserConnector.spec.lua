local Packages = script:FindFirstAncestor("GraphQLServer").Parent
local jestExpect = require(Packages.Dev.JestGlobals).expect
local RecordPlayback = require(Packages.Dev.RecordPlayback)
local UserConnector = require(script.Parent.UserConnector)
local findUserById = UserConnector.findUserById
local findMe = UserConnector.findMe
local buildFetch = require(Packages.Fetch).buildFetch
local GraphqlHttpArtifacts = require(Packages.Dev.GraphqlHttpArtifacts)

return function()
	local create = nil

	beforeAll(function()
		create = RecordPlayback.createRecordPlayback({
			-- the path must point to the instance in the DataModel used here
			instanceParent = GraphqlHttpArtifacts,
			fileSystemPath = "modules/graphql/http-artifacts/src",
		})
	end)

	it("should fetch a user", function()
		create("users-success"):execute(function(httpService)
			local fetchImpl = buildFetch(httpService)
			local userOne = findUserById("1", fetchImpl):expect()

			jestExpect(userOne).toBeDefined()
			jestExpect(userOne.id).toEqual("1")
			jestExpect(userOne.displayName).toEqual("Roblox")
		end)
	end)

	it("should return an error if the user cannot be found", function()
		create("users-fail"):execute(function(httpService)
			local capturedError
			local fetchImpl = buildFetch(httpService)
			findUserById("notAUser", fetchImpl)
				:catch(function(err)
					capturedError = err
				end)
				:expect()

			jestExpect(capturedError).toBeDefined()
			jestExpect(capturedError.message).toEqual("Failed to find user matching id: notAUser.")
		end)
	end)

	it("should fetch me", function()
		create("me"):execute(function(httpService)
			local fetchImpl = buildFetch(httpService)
			local LocalPlayer = ({ UserId = 1 } :: any) :: Player
			local userMe = findMe(fetchImpl, LocalPlayer):expect()

			jestExpect(userMe).toBeDefined()
			jestExpect(userMe.id).toEqual(tostring(LocalPlayer.UserId))
			jestExpect(userMe.displayName).toEqual("Roblox")
		end)
	end)
end
