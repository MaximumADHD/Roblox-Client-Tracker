local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Workspace.Packages
local FFlagSduiHostedDependencies = require(Packages.SharedFlags).FFlagSduiHostedDependencies

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local beforeAll = JestGlobals.beforeAll
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

local SduiCoreSystem = require(Packages.SduiCoreSystem)
local SduiProtobufResponseHelpers = require(Packages.SduiSharedUtilities).SduiProtobufResponseHelpers
local CoreScriptsRootProvider = require(Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local GroupPeekPageResponse =
	require(Packages.ServiceContractsProto).apppageplatform.groups.group_peek_page.GroupPeekPageResponse

local initializeSduiForInExperience = require(script.Parent.initializeSduiForInExperience)
local SduiInExperienceHost = require(script.Parent.SduiInExperienceHost)

local SURFACE_KEY = "InExperienceProbe"
local OTHER_SURFACE_KEY = "InExperienceOtherProbe"
local ROBLOX_COMPONENT = "InExperienceProbeCard"
local TITLE = "In-experience SDUI title"

local function probeResponse()
	return {
		hydrationData = {},
		pageEntries = {
			{
				pageEntry = { robloxComponent = ROBLOX_COMPONENT, identifier = "communityAnnouncement" },
				inputData = { communityAnnouncement = { title = TITLE } },
			},
		},
		templates = {
			probe = {
				robloxComponent = ROBLOX_COMPONENT,
				template = {
					view = {
						props = {
							tag = { literal = "size-full-0 auto-y col gap-small" },
							children = {
								componentList = {
									literal = {
										items = {
											{
												identifier = "title",
												inlineComponent = {
													text = {
														props = {
															text = { bindingPath = "title" },
															tag = { literal = "text-title-large content-emphasis" },
														},
														shared = { componentType = "UI_COMPONENT_TYPE_TEXT" },
													},
												},
											},
										},
									},
								},
							},
						},
						shared = { componentType = "UI_COMPONENT_TYPE_VIEW" },
					},
				},
			},
		},
	}
end

local function findTextLabel(root: Instance, text: string): TextLabel?
	for _, descendant in root:GetDescendants() do
		if descendant:IsA("TextLabel") and descendant.Text == text then
			return descendant
		end
	end
	return nil
end

if FFlagSduiHostedDependencies then
	describe("SDUI in-experience integration", function()
		local reportedErrors: { any } = {}
		local screenGui: ScreenGui
		local container: Folder
		local root: any

		beforeAll(function()
			initializeSduiForInExperience()
		end)

		local originalReportError = SduiCoreSystem.SduiLogger.reportError

		beforeEach(function()
			reportedErrors = {}
			SduiCoreSystem.SduiLogger.reportError = function(errorType, details)
				table.insert(reportedErrors, { errorType = errorType, details = details })
			end
			container = Instance.new("Folder")
			screenGui = Instance.new("ScreenGui")
			screenGui.Parent = game:GetService("CoreGui")
			container.Parent = screenGui
			root = ReactRoblox.createRoot(container)
		end)

		afterEach(function()
			ReactRoblox.act(function()
				root:unmount()
			end)
			screenGui:Destroy()
			SduiCoreSystem.SduiLogger.reportError = originalReportError
		end)

		local function renderInRoot(children: { [string]: React.ReactNode })
			ReactRoblox.act(function()
				root:render(React.createElement(CoreScriptsRootProvider, {}, children))
			end)
		end

		it("SHOULD populate tokens, policy, and dependencies from the surrounding root", function()
			renderInRoot({
				Host = React.createElement(SduiInExperienceHost, { surfaceKey = SURFACE_KEY }),
			})

			local tokens = SduiCoreSystem.getSduiTokensStore().getTokens(false, SURFACE_KEY)
			local dependencies = SduiCoreSystem.getSduiServiceDependenciesStore().getDependencies(SURFACE_KEY)

			expect(tokens).never.toBeNil()
			expect(SduiCoreSystem.getSduiPolicyStore().getAppPolicy(false)).never.toBeNil()
			local dataBinderDependencies = SduiCoreSystem.getSduiServiceDependenciesStore()
				.getDependencies("SduiDataBinder")

			expect(dependencies).never.toBeNil()
			expect(dataBinderDependencies).never.toBeNil()
			expect((dataBinderDependencies :: any).localization).never.toBeNil()
			expect(reportedErrors).toEqual({})
		end)

		local function createProbeStore(receivedActions: { any })
			return Rodux.Store.new(function(state, action)
				if action.type == "Probe" then
					table.insert(receivedActions, action)
				end
				return state
			end, {}, { Rodux.thunkMiddleware })
		end

		local function renderHostWithStore(targetRoot: any, store: any, surfaceKey: string)
			ReactRoblox.act(function()
				targetRoot:render(React.createElement(CoreScriptsRootProvider, {}, {
					StoreProvider = React.createElement(RoactRodux.StoreProvider, { store = store }, {
						Host = React.createElement(SduiInExperienceHost, { surfaceKey = surfaceKey }),
					}),
				}))
			end)
		end

		it("SHOULD register dependencies before rendering children", function()
			local reads: { any } = {}
			local function Reader()
				table.insert(reads, SduiCoreSystem.getSduiServiceDependenciesStore().getDependencies(SURFACE_KEY))
				return nil
			end

			renderInRoot({
				Host = React.createElement(SduiInExperienceHost, {
					surfaceKey = SURFACE_KEY,
				}, {
					Reader = React.createElement(Reader),
				}),
			})

			expect(#reads > 0).toBe(true)
			for _, read in reads do
				expect(read).never.toBeNil()
			end
			expect(reportedErrors).toEqual({})
		end)

		it("SHOULD dispatch into the nearest Rodux store in React context", function()
			local receivedActions: { any } = {}
			local store = createProbeStore(receivedActions)
			renderHostWithStore(root, store, SURFACE_KEY)

			local dependencies = SduiCoreSystem.getSduiServiceDependenciesStore().getDependencies(SURFACE_KEY) :: any
			dependencies.dispatch({ type = "Probe" })
			local thunkStore
			dependencies.dispatch(function(innerStore)
				thunkStore = innerStore
			end)

			expect(#receivedActions).toBe(1)
			expect(thunkStore).toBe(store)
		end)

		it("SHOULD scope dispatch to the root that registered each surfaceKey", function()
			local otherContainer = Instance.new("Folder")
			otherContainer.Parent = screenGui
			local otherRoot = ReactRoblox.createRoot(otherContainer)

			local receivedActions: { any } = {}
			local otherReceivedActions: { any } = {}
			renderHostWithStore(root, createProbeStore(receivedActions), SURFACE_KEY)
			renderHostWithStore(otherRoot, createProbeStore(otherReceivedActions), OTHER_SURFACE_KEY)

			local dependenciesStore = SduiCoreSystem.getSduiServiceDependenciesStore();
			(dependenciesStore.getDependencies(SURFACE_KEY) :: any).dispatch({ type = "Probe" })

			expect(#receivedActions).toBe(1)
			expect(#otherReceivedActions).toBe(0)

			ReactRoblox.act(function()
				otherRoot:unmount()
			end)
			local unmountedDependencies = dependenciesStore.getDependencies(OTHER_SURFACE_KEY) :: any
			unmountedDependencies.dispatch({ type = "Probe" })

			expect(unmountedDependencies.localization).never.toBeNil()
			expect(#receivedActions).toBe(1)
			expect(#otherReceivedActions).toBe(0)
			expect(reportedErrors[#reportedErrors].errorType).toBe("RoduxUnavailable")
		end)

		it("SHOULD render a template through the registered View and Text components", function()
			local decodedResponse: any = GroupPeekPageResponse.jsonDecode(probeResponse())
			SduiCoreSystem.getSduiDataBinder()
				.updateDataStores(SduiProtobufResponseHelpers.parseHydrationDataFromResponse(decodedResponse))
			local entry = SduiProtobufResponseHelpers.parsePageEntriesFromResponse(decodedResponse)[1]
			local _, robloxComponentToTemplate =
				SduiProtobufResponseHelpers.parseTemplateEntriesFromResponse(decodedResponse)

			local builderConfig = SduiCoreSystem.createBuilderConfig({
				appPage = SURFACE_KEY,
				debugName = "SduiInExperienceIntegrationTest",
				getTemplateForRobloxComponent = function(robloxComponent)
					return robloxComponentToTemplate[robloxComponent]
				end,
				getLocalizedLiteral = function(_mapKey: string): string?
					return nil
				end,
			})
			local componentConfig = SduiCoreSystem.getSduiClientBindingBuilder().buildConfigForComponent(
				robloxComponentToTemplate[entry.robloxComponentType],
				function()
					return entry.componentInputData or {}
				end :: any,
				builderConfig,
				nil
			)
			expect(componentConfig).never.toBeNil()

			renderInRoot({
				Host = React.createElement(SduiInExperienceHost, { surfaceKey = SURFACE_KEY }),
			})

			local sduiContext = {
				dependencies = SduiCoreSystem.getSduiServiceDependenciesStore().getDependencies(SURFACE_KEY),
				appPage = SURFACE_KEY,
				routeName = SURFACE_KEY,
				appCompositionEnabled = true,
			}

			ReactRoblox.act(function()
				root:render(React.createElement(CoreScriptsRootProvider, {}, {
					Host = React.createElement(SduiInExperienceHost, { surfaceKey = SURFACE_KEY }),
					Probe = React.createElement(SduiCoreSystem.getSduiComponentWrapper(componentConfig), {
						componentConfig = componentConfig,
						debugName = ROBLOX_COMPONENT,
						sduiContext = sduiContext,
					}),
				}))
			end)

			local label = findTextLabel(container, TITLE)
			expect(label).never.toBeNil()
			expect((label :: TextLabel):HasTag("text-title-large")).toBe(true)
			expect(reportedErrors).toEqual({})
		end)
	end)
else
	describe("SDUI in-experience integration", function()
		it("SHOULD be skipped when flag is off", function()
			expect(true).toBe(true)
		end)
	end)
end
