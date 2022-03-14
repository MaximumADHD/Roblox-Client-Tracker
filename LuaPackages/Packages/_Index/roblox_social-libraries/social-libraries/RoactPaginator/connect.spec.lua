return function()
	local connect = require(script.Parent.connect)
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact
	local Promise = dependencies.Promise
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect

	local fetchInitSymbol = require(script.Parent.fetchInitSymbol)
	local fetchWithCursorSymbol = require(script.Parent.fetchWithCursorSymbol)
	local loadNextSymbol = require(script.Parent.loadNextSymbol)
	local loadPreviousSymbol = require(script.Parent.loadPreviousSymbol)

	describe("return value is a function", function()
		it("SHOULD be a function", function()
			jestExpect(connect).toEqual(jestExpect.any("function"))
		end)

		describe("GIVEN a function that returns a table of parameters", function()
			local parameters = function()
				return {
					pageSize = 1,
				}
			end
			it("SHOULD return a function", function()
				local result = connect(parameters)

				jestExpect(result).toEqual(jestExpect.any("function"))
			end)

			describe("return value is a function", function()
				describe("GIVEN a Roact component", function()
					local hasEverRendered = false
					local component = function(props)
						hasEverRendered = true

						assert(props[fetchInitSymbol], "Expected component to receive `fetchInitSymbol` when connected")
						assert(props[fetchWithCursorSymbol], "Expected component to receive `fetchWithCursorSymbol` when connected")
						assert(props[loadNextSymbol], "Excepted component to receive `loadNextSymbol` when connected")
						assert(props[loadPreviousSymbol], "Excepted component to receive `loadPreviousSymbol` when connected")

						return Roact.createElement("Folder")
					end
					it("SHOULD return a new Roact component", function()
						local connectedComponent = connect(parameters)(component)

						jestExpect(connectedComponent).never.toBeNil()
						jestExpect(connectedComponent).never.toBe(component)
					end)

					describe("return value is a Roact Component", function()
						describe("GIVEN RoactPaginator Symbol props", function()
							local connectedComponent = connect(parameters)(component)
							local props = {
								[fetchInitSymbol] = function()
									return Promise.resolve()
								end,
								[fetchWithCursorSymbol] = function()
									return Promise.resolve()
								end,
							}
							it("SHOULD be able to mount in a Roact tree", function()
								local instance = Roact.mount(Roact.createElement(connectedComponent, props))
								jestExpect(instance).never.toBeNil()
								Roact.unmount(instance)

								-- since we have assertions in our functional prop
								-- we need to make sure they've been evaluated
								jestExpect(hasEverRendered).toBe(true)
							end)
						end)
					end)
				end)
			end)
		end)
	end)
end
