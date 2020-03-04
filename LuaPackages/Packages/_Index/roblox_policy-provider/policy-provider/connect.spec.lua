return function()
	local Packages = script.Parent.Parent
	local Roact = require(Packages.Roact)
	local tutils = require(Packages.tutils)
	local Mock = require(Packages.Mock)
	local MagicMock = Mock.MagicMock

	local fromMemStorageService = require(script.Parent.getPolicyImplementations.fromMemStorageService)

	local Provider = require(script.Parent.Provider)
	local providerInstance = Provider()

	local function checkForPropsAfterMounting(params)
		assert(params.expectedProps)
		assert(params.mapper)
		assert(params.policyProp)
		assert(params.connect)
		assert(params.provider)

		params.shouldCheckPropsIf = params.shouldCheckPropsIf or function()
			return true
		end

		local hasBaseComponentEverRendered = false
		local hasPropsEverBeenChecked = false

		local baseComponent = function(props)
			hasBaseComponentEverRendered = true

			if params.shouldCheckPropsIf() then
				hasPropsEverBeenChecked = true
				for propName, propValue in pairs(params.expectedProps) do
					if props[propName] ~= propValue then
						fail(string.format(
							"Expected baseComponent to have prop `%s` = `%s`." .. " " ..
							"Got: `%s` instead." .. " " ..
							"(Check the `mapper` function is correctly formatted)",
							propName,
							tostring(propValue),
							tostring(props[propName])
						))
					end
				end
			end

			return Roact.createElement("Folder")
		end

		local wrappedComponent = params.connect(params.mapper)(baseComponent)

		local tree = Roact.createElement(params.provider, {
			policy = params.policyProp,
			policyData = params.policyDataProp,
		}, {
			wrappedComponent = Roact.createElement(wrappedComponent)
		})

		local instance = Roact.mount(tree)
		if params.funcAfterMounting then
			params.funcAfterMounting()
		end
		Roact.unmount(instance)

		expect(hasBaseComponentEverRendered).to.equal(true)
		expect(hasPropsEverBeenChecked).to.equal(true)
	end

	describe("WHEN required", function()
		local connect = require(script.Parent.connect)
		it("SHOULD return a function", function()
			expect(connect).to.be.a("function")
		end)

		describe("GIVEN a fromMemStorageServiceWithBehavior", function()
			local behavior = "mockBehavior"

			describe("GIVEN empty dependencies", function()
				local getPolicyImpl = fromMemStorageService({
					HttpService = MagicMock.new(),
					MemStorageService = MagicMock.new(),
				})(behavior)
				local connectInstance = connect(getPolicyImpl)

				it("SHOULD return a function", function()
					expect(connectInstance).to.be.a("function")
				end)

				describe("GIVEN a static mapper function", function()
					local mapper = function()
						return {
							foo = "bar",
						}
					end
					local mappedConnection = connectInstance(mapper)

					it("SHOULD return a function", function()
						expect(mappedConnection).to.be.a("function")
					end)

					describe("GIVEN a component", function()
						local baseComponent = function()
							return Roact.createElement("Folder")
						end
						local wrappedComponent = mappedConnection(baseComponent)

						it("SHOULD return a new component", function()
							expect(baseComponent).to.never.equal(wrappedComponent)
						end)

						describe("GIVEN a Roact tree without a Provider", function()
							local tree = Roact.createElement(wrappedComponent)

							it("SHOULD throw", function()
								expect(function()
									Roact.mount(tree)
								end).to.throw()
							end)
						end)

						describe("GIVEN a Roact tree with a Provider", function()
							describe("GIVEN a nil policy prop", function()
								local tree = Roact.createElement(providerInstance, {
									policy = nil,
								}, {
									wrappedComponent = Roact.createElement(wrappedComponent)
								})

								it("SHOULD throw", function()
									expect(function()
										Roact.mount(tree)
									end).to.throw()
								end)
							end)

							describe("GIVEN an empty policy prop", function()
								local tree = Roact.createElement(providerInstance, {
									policy = {},
								}, {
									wrappedComponent = Roact.createElement(wrappedComponent)
								})

								it("SHOULD mount and unmount successfully", function()
									local instance = Roact.mount(tree)
									Roact.unmount(instance)
								end)
							end)

							describe("GIVEN policy prop with a single (static) definition", function()
								local mockPolicy1 = function(_)
									return {
										isFeatureEnabled = "mockPolicy1Enabled",
									}
								end

								it("SHOULD allow mapper to create props for base component", function()
									checkForPropsAfterMounting({
										connect = connectInstance,
										provider = providerInstance,
										policyProp = { mockPolicy1 },
										mapper = function(policy)
											return {
												isPolicy1FeatureEnabled = policy.isFeatureEnabled,
											}
										end,
										expectedProps = {
											isPolicy1FeatureEnabled = "mockPolicy1Enabled"
										},
									})
								end)
							end)

							describe("GIVEN policy prop with a multiple (static) definitions", function()
								local mockPolicy1 = function(_)
									return {
										isFeature1Enabled = 100,
									}
								end

								local mockPolicy2 = function(_)
									return {
										isFeature2Enabled = 200,
									}
								end

								it("SHOULD allow mapper to create props for base component", function()
									checkForPropsAfterMounting({
										connect = connectInstance,
										provider = providerInstance,
										policyProp = { mockPolicy1, mockPolicy2 },
										mapper = function(policy)
											return {
												isPolicy1FeatureEnabled = policy.isFeature1Enabled,
												isPolicy2FeatureEnabled = policy.isFeature2Enabled,
											}
										end,
										expectedProps = {
											isPolicy1FeatureEnabled = 100,
											isPolicy2FeatureEnabled = 200,
										},
									})
								end)
							end)
						end)
					end)
				end)
			end)

			describe("GIVEN MemStorageService can retrieve a string and HttpService can decode it", function()
				local mockHttpService = MagicMock.new()
				mockHttpService.JSONDecode = function(str)
					return {
						foo = "bar",
					}
				end

				local mockMemStorageService = MagicMock.new()
				mockMemStorageService.GetItem = function()
					return "mockStorageData"
				end

				local getPolicyImpl = fromMemStorageService({
					HttpService = mockHttpService,
					MemStorageService = mockMemStorageService,
				})(behavior)

				local connectInstance = connect(getPolicyImpl)

				describe("GIVEN policy prop with a single dynamic definition (read from MemStorageService)", function()
					local mockPolicy1 = function(policy)
						return {
							isFeatureEnabled = policy.foo,
						}
					end

					it("SHOULD allow mapper to create props for base component", function()
						checkForPropsAfterMounting({
							connect = connectInstance,
							provider = providerInstance,
							policyProp = { mockPolicy1 },
							mapper = function(policy)
								return {
									isPolicy1FeatureEnabled = policy.isFeatureEnabled,
								}
							end,
							expectedProps = {
								-- bar is the result from HttpService's JSONDecode
								-- (mocking the pull from MemStorageService)
								isPolicy1FeatureEnabled = "bar"
							},
						})
					end)
				end)
			end)

			describe("GIVEN MemStorageService cannot retrieve a string", function()
				local mockHttpService = MagicMock.new()

				local mockMemStorageService = MagicMock.new()
				mockMemStorageService.GetItem = function()
					return nil
				end

				local getPolicyImpl = fromMemStorageService({
					HttpService = mockHttpService,
					MemStorageService = mockMemStorageService,
				})(behavior)

				local connectInstance = connect(getPolicyImpl)

				describe("GIVEN policy prop with a single dynamic definition (read from MemStorageService)", function()
					it("SHOULD allow mapper to create props for base component", function()
						local wasMockPolicy1EverCalled = false
						local mockPolicy1 = function(policy)
							wasMockPolicy1EverCalled = true

							-- policy should be an empty table because
							-- MemStorageService is providing invalid values
							expect(tutils.shallowEqual(policy, {})).to.equal(true)
							return {
								isFeatureEnabled = policy and policy.foo,
							}
						end

						checkForPropsAfterMounting({
							connect = connectInstance,
							provider = providerInstance,
							policyProp = { mockPolicy1 },
							mapper = function(policy)
								return {
									isPolicy1FeatureEnabled = policy.isFeatureEnabled,
								}
							end,
							expectedProps = {},
						})

						expect(wasMockPolicy1EverCalled).to.equal(true)
					end)
				end)
			end)

			describe("GIVEN MemStorageService updates with a new string", function()
				local mockHttpService = MagicMock.new()
				mockHttpService.JSONDecode = function(_, jsonString)
					if jsonString == "mockJsonString" then
						return {
							isFeatureEnabled = "hello.world",
						}
					end

					return nil
				end

				local mockMemStorageService = MagicMock.new()
				mockMemStorageService.GetItem = function()
					return nil
				end

				local updateMemStorageService = Instance.new("BindableEvent")
				mockMemStorageService.BindAndFire = function(_, _, func)
					return updateMemStorageService.Event:Connect(function(value, a)
						func(value)
					end)
				end

				local getPolicyImpl = fromMemStorageService({
					HttpService = mockHttpService,
					MemStorageService = mockMemStorageService,
				})(behavior)

				local connectInstance = connect(getPolicyImpl)

				describe("GIVEN policy prop with a single dynamic definition (read from MemStorageService)", function()
					it("SHOULD allow mapper to create props for base component", function()
						local numberOfTimesMockPolicy1EverCalled = 0
						local mockPolicy1 = function(policy)
							numberOfTimesMockPolicy1EverCalled = numberOfTimesMockPolicy1EverCalled + 1

							return {
								isFeatureEnabled = policy and policy.isFeatureEnabled,
							}
						end

						checkForPropsAfterMounting({
							funcAfterMounting = function()
								updateMemStorageService:Fire("mockJsonString")
							end,
							connect = connectInstance,
							provider = providerInstance,
							policyProp = { mockPolicy1 },
							mapper = function(policy)
								return {
									isPolicy1FeatureEnabled = policy.isFeatureEnabled,
								}
							end,
							shouldCheckPropsIf = function()
								return numberOfTimesMockPolicy1EverCalled > 1
							end,
							expectedProps = {
								isPolicy1FeatureEnabled = "hello.world",
							},
						})

						expect(numberOfTimesMockPolicy1EverCalled).to.equal(2)
					end)
				end)
			end)

			describe("GIVEN MemStorageService updates with a nil value", function()
				local mockHttpService = MagicMock.new()
				mockHttpService.JSONDecode = function(_, jsonString)
					if jsonString == "mockJsonString" then
						return {
							isFeatureEnabled = "hello.world",
						}
					end

					return nil
				end

				local mockMemStorageService = MagicMock.new()
				mockMemStorageService.GetItem = function()
					return nil
				end

				local updateMemStorageService = Instance.new("BindableEvent")
				mockMemStorageService.BindAndFire = function(_, _, func)
					return updateMemStorageService.Event:Connect(function(value, a)
						func(value)
					end)
				end

				local getPolicyImpl = fromMemStorageService({
					HttpService = mockHttpService,
					MemStorageService = mockMemStorageService,
				})(behavior)

				local connectInstance = connect(getPolicyImpl)

				describe("GIVEN policy prop with a single dynamic definition (read from MemStorageService)", function()
					it("SHOULD allow mapper to create props for base component", function()
						local numberOfTimesMockPolicy1EverCalled = 0
						local mockPolicy1 = function(policy)
							numberOfTimesMockPolicy1EverCalled = numberOfTimesMockPolicy1EverCalled + 1

							return {
								isFeatureEnabled = policy and policy.isFeatureEnabled,
							}
						end

						checkForPropsAfterMounting({
							funcAfterMounting = function()
								updateMemStorageService:Fire("mockJsonString")
							end,
							connect = connectInstance,
							provider = providerInstance,
							policyProp = { mockPolicy1 },
							mapper = function(policy)
								return {
									isPolicy1FeatureEnabled = policy.isFeatureEnabled,
								}
							end,
							shouldCheckPropsIf = function()
								return numberOfTimesMockPolicy1EverCalled > 1
							end,
							expectedProps = {
								isPolicy1FeatureEnabled = "hello.world",
							},
						})

						expect(numberOfTimesMockPolicy1EverCalled).to.equal(2)
					end)
				end)
			end)

			describe("GIVEN a policyData prop", function()
				local mockHttpService = MagicMock.new()
				local mockMemStorageService = MagicMock.new()

				local getPolicyImpl = fromMemStorageService({
					HttpService = mockHttpService,
					MemStorageService = mockMemStorageService,
				})(behavior)

				local connectInstance = connect(getPolicyImpl)
				local mockPolicy1 = function(policy)
					return {
						isFeatureEnabled = policy.mockIsFeatureEnabled,
					}
				end

				it("SHOULD return policyData and not call MemStorageService", function()
					checkForPropsAfterMounting({
						connect = connectInstance,
						provider = providerInstance,
						policyProp = { mockPolicy1 },
						policyDataProp = {
							mockIsFeatureEnabled = "hello.world",
						},
						mapper = function(policy)
							return {
								isPolicy1FeatureEnabled = policy.isFeatureEnabled,
							}
						end,
						expectedProps = {
							isPolicy1FeatureEnabled = "hello.world",
						},
					})

					local callsGetItem = Mock.getCalls(mockMemStorageService.GetItem)
					expect(#callsGetItem).to.equal(0)

					local callsBindAndFire = Mock.getCalls(mockMemStorageService.BindAndFire)
					expect(#callsBindAndFire).to.equal(0)
				end)
			end)
		end)

		describe("GIVEN a policy prop that reads `foo`", function()
			local mockPolicy1 = function(policy)
				return {
					isFeatureEnabled = policy.foo,
				}
			end

			describe("GIVEN getPolicyImpl with a static response", function()
				local getPolicyImpl = MagicMock.new()
				getPolicyImpl.read = function()
					return {
						foo = "bar",
					}
				end

				local connectInstance = connect(getPolicyImpl)

				it("SHOULD pass props to the lower component from the Promise resolution", function()
					checkForPropsAfterMounting({
						connect = connectInstance,
						provider = providerInstance,
						policyProp = { mockPolicy1 },
						mapper = function(policy)
							return {
								isPolicy1FeatureEnabled = policy.isFeatureEnabled,
								hasProblemsFetching = (policy.isFeatureEnabled == nil),
							}
						end,
						expectedProps = {
							isPolicy1FeatureEnabled = "bar",
							hasProblemsFetching = false,
						},
					})
				end)
			end)

			describe("GIVEN getPolicyImpl with a nil response", function()
				local getPolicyImpl = MagicMock.new()
				getPolicyImpl.read = function()
					return nil
				end

				local connectInstance = connect(getPolicyImpl)

				it("SHOULD not be able to define `isPolicy1FeatureEnabled`", function()
					checkForPropsAfterMounting({
						connect = connectInstance,
						provider = providerInstance,
						policyProp = { mockPolicy1 },
						mapper = function(policy)
							return {
								isPolicy1FeatureEnabled = policy.isFeatureEnabled,
								hasProblemsFetching = (policy.isFeatureEnabled == nil)
							}
						end,
						expectedProps = {
							isPolicy1FeatureEnabled = nil,
							hasProblemsFetching = true,
						},
					})
				end)
			end)
		end)
	end)
end
