local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)

local Rodux = dependencies.Rodux
local useContactImporterConfiguration = require(script.Parent.useContactImporterConfiguration)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach

local RODUX_KEY = require(ContactImporter.Common.Constants).RODUX_KEY
local renderHookWithProviders = require(ContactImporter.TestHelpers.renderHookWithProviders)
local IXPVariants = require(ContactImporter.Common.IXPVariants)
local getFStringOffPlatformIXPName = require(ContactImporter.Flags.getFStringOffPlatformIXPName)

local mockConfig

beforeEach(function()
	mockConfig = {
		policyIsEnabled = false,
	}
end)

describe("useContactImporterConfiguration", function()
	it("SHOULD return an false for all values by default", function()
		local testStore = Rodux.Store.new(function()
			return {}
		end, {}, { Rodux.thunkMiddleware })

		local helper = renderHookWithProviders(function()
			return useContactImporterConfiguration(mockConfig)
		end, {
			store = testStore,
		})

		jestExpect(helper.result).toEqual({
			shouldFetchContactImporterData = false,
			shouldShowContactImporter = false,
			shouldShowContactImporterModal = false,
		})
	end)

	describe("WHEN policy is enabled", function()
		local newMockConfig
		beforeEach(function()
			newMockConfig = {
				policyIsEnabled = true,
			}
		end)

		it("SHOULD return an false for all values by default", function()
			local testStore = Rodux.Store.new(function()
				return {}
			end, {}, { Rodux.thunkMiddleware })

			local helper = renderHookWithProviders(function()
				return useContactImporterConfiguration(newMockConfig)
			end, {
				store = testStore,
			})

			jestExpect(helper.result).toEqual({
				shouldFetchContactImporterData = false,
				shouldShowContactImporter = false,
				shouldShowContactImporterModal = false,
			})
		end)

		it("SHOULD return true for shouldFetchContactImporterData if in blended experiment", function()
			local testStore = Rodux.Store.new(function()
				return {}
			end, {}, { Rodux.thunkMiddleware })
			local experiment = {
				OnUserLayerLoadingStatusChanged = {
					Connect = function() end,
					Disconnect = function() end,
				},
				GetUserLayerLoadingStatus = function()
					return true
				end,
				GetUserStatusForLayer = function()
					return
				end,
				GetUserLayerVariables = function()
					return {
						[getFStringOffPlatformIXPName()] = IXPVariants.BLENDED,
					}
				end,
			}

			local helper = renderHookWithProviders(function()
				return useContactImporterConfiguration(newMockConfig)
			end, {
				store = testStore,
				experiment = experiment,
			})

			jestExpect(helper.result).toEqual({
				shouldFetchContactImporterData = true,
				shouldShowContactImporter = false,
				shouldShowContactImporterModal = false,
			})
		end)

		it(
			"SHOULD return true for shouldFetchContactImporterData if in invitesOnly experiment and showContactImporter is true",
			function()
				local testStore = Rodux.Store.new(function()
					return {}
				end, {}, { Rodux.thunkMiddleware })
				local experiment = {
					OnUserLayerLoadingStatusChanged = {
						Connect = function() end,
						Disconnect = function() end,
					},
					GetUserLayerLoadingStatus = function()
						return true
					end,
					GetUserStatusForLayer = function()
						return
					end,
					GetUserLayerVariables = function()
						return {
							[getFStringOffPlatformIXPName()] = IXPVariants.INVITES_ONLY,
						}
					end,
				}

				local helper = renderHookWithProviders(function()
					return useContactImporterConfiguration(newMockConfig)
				end, {
					store = testStore,
					experiment = experiment,
				})

				jestExpect(helper.result).toEqual({
					shouldFetchContactImporterData = true,
					shouldShowContactImporter = false,
					shouldShowContactImporterModal = false,
				})
			end
		)

		it("SHOULD return true for everything if  other than modal if in invitesOnly experiment ", function()
			local testStore = Rodux.Store.new(function()
				return {
					[RODUX_KEY] = {
						ShowContactImporterParams = {
							shouldShowContactImporterFeature = true,
						},
					},
				}
			end, {}, { Rodux.thunkMiddleware })

			local experiment = {
				OnUserLayerLoadingStatusChanged = {
					Connect = function() end,
					Disconnect = function() end,
				},
				GetUserLayerLoadingStatus = function()
					return true
				end,
				GetUserStatusForLayer = function()
					return
				end,
				GetUserLayerVariables = function()
					return {
						[getFStringOffPlatformIXPName()] = IXPVariants.INVITES_ONLY,
					}
				end,
			}

			local helper = renderHookWithProviders(function()
				return useContactImporterConfiguration(newMockConfig)
			end, {
				store = testStore,
				experiment = experiment,
			})

			jestExpect(helper.result).toEqual({
				shouldFetchContactImporterData = true,
				shouldShowContactImporter = true,
				shouldShowContactImporterModal = false,
			})
		end)

		it(
			"SHOULD return true for everything than modal if in invitesOnly experiment and hasnt seen the modal before",
			function()
				local testStore = Rodux.Store.new(function()
					return {
						[RODUX_KEY] = {
							ShowContactImporterParams = {
								shouldShowContactImporterFeature = true,
								shouldShowContactImporterUpsellModal = true,
							},
						},
					}
				end, {}, { Rodux.thunkMiddleware })

				local experiment = {
					OnUserLayerLoadingStatusChanged = {
						Connect = function() end,
						Disconnect = function() end,
					},
					GetUserLayerLoadingStatus = function()
						return true
					end,
					GetUserStatusForLayer = function()
						return
					end,
					GetUserLayerVariables = function()
						return {
							[getFStringOffPlatformIXPName()] = IXPVariants.INVITES_ONLY,
						}
					end,
				}

				local helper = renderHookWithProviders(function()
					return useContactImporterConfiguration(newMockConfig)
				end, {
					store = testStore,
					experiment = experiment,
				})

				jestExpect(helper.result).toEqual({
					shouldFetchContactImporterData = true,
					shouldShowContactImporter = true,
					shouldShowContactImporterModal = true,
				})
			end
		)

		it("SHOULD return false for everything but showContactImporterModal if in control", function()
			local testStore = Rodux.Store.new(function()
				return {}
			end, {}, { Rodux.thunkMiddleware })
			local experiment = {
				OnUserLayerLoadingStatusChanged = {
					Connect = function() end,
					Disconnect = function() end,
				},
				GetUserLayerLoadingStatus = function()
					return true
				end,
				GetUserStatusForLayer = function()
					return
				end,
				GetUserLayerVariables = function()
					return {
						[getFStringOffPlatformIXPName()] = IXPVariants.CONTROL,
					}
				end,
			}

			local helper = renderHookWithProviders(function()
				return useContactImporterConfiguration(newMockConfig)
			end, {
				store = testStore,
				experiment = experiment,
			})

			jestExpect(helper.result).toEqual({
				shouldFetchContactImporterData = false,
				shouldShowContactImporter = false,
				shouldShowContactImporterModal = false,
			})
		end)
	end)

	it("SHOULD return false for everything event if in the experiment when policy is not enabled", function()
		local testStore = Rodux.Store.new(function()
			return {
				[RODUX_KEY] = {
					ShowContactImporterParams = {
						shouldShowContactImporterFeature = true,
						shouldShowContactImporterUpsellModal = true,
					},
				},
			}
		end, {}, { Rodux.thunkMiddleware })

		local experiment = {
			OnUserLayerLoadingStatusChanged = {
				Connect = function() end,
				Disconnect = function() end,
			},
			GetUserLayerLoadingStatus = function()
				return true
			end,
			GetUserLayerVariables = function()
				return {
					[getFStringOffPlatformIXPName()] = IXPVariants.INVITES_ONLY,
				}
			end,
			GetUserStatusForLayer = function()
				return
			end,
		}

		local helper = renderHookWithProviders(function()
			return useContactImporterConfiguration(mockConfig)
		end, {
			store = testStore,
			experiment = experiment,
		})

		jestExpect(helper.result).toEqual({
			shouldFetchContactImporterData = false,
			shouldShowContactImporter = false,
			shouldShowContactImporterModal = false,
		})
	end)

	describe("soothsayers", function()
		it("SHOULD return true for all values except shouldShowContactImporterUpsellModal by default", function()
			local testStore = Rodux.Store.new(function()
				return {
					IsLocalUserSoothsayer = true,
				}
			end, {}, { Rodux.thunkMiddleware })

			local helper = renderHookWithProviders(function()
				return useContactImporterConfiguration(mockConfig)
			end, {
				store = testStore,
			})

			jestExpect(helper.result).toEqual({
				shouldFetchContactImporterData = true,
				shouldShowContactImporter = true,
				shouldShowContactImporterModal = false,
			})
		end)

		it("SHOULD return an true for all values when shouldShowContactImporterUpsellModal is true", function()
			local testStore = Rodux.Store.new(function()
				return {
					IsLocalUserSoothsayer = true,
					[RODUX_KEY] = {
						ShowContactImporterParams = {
							shouldShowContactImporterUpsellModal = true,
						},
					},
				}
			end, {}, { Rodux.thunkMiddleware })

			local helper = renderHookWithProviders(function()
				return useContactImporterConfiguration(mockConfig)
			end, {
				store = testStore,
			})

			jestExpect(helper.result).toEqual({
				shouldFetchContactImporterData = true,
				shouldShowContactImporter = true,
				shouldShowContactImporterModal = true,
			})
		end)
	end)
end)
