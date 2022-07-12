return function()	
	local Packages = script:FindFirstAncestor("Packages")
	local jest = require(Packages.Dev.JestRoblox).Globals
	local expect = jest.expect

	local DeveloperTools = require(Packages.DeveloperTools)
	local Roact17Worker = require(Packages.DeveloperTools.Roact17.Classes.Roact17Worker)

	local insert = table.insert

	local worker,
		mockBridge,
		mockAgent,
		mockRenderer,
		mockHook

	local rootInstance = {
		Name = "Root",
		__TEST_ID = 1,
	}

	local instance6 = {
		Name = "Instance7",
		__TEST_ID = 6,
	}

	local listeners, messages

	local mockNodes = {
		{
			id = 1,
			key = "Child",
			displayName = "Root",
			children = {2},
			type = 1,
		},
		{
			id = 2,
			key = "Child",
			displayName = "Test",
			children = {3},
			parentID = 1,
			type = 1,
		},
		{
			id = 3,
			key = "Child",
			displayName = "Frame",
			children = {4, 5},
			parentID = 2,
			type = 7 -- host node,
		},
		{
			id = 4,
			key = "Child",
			displayName = "ChildA",
			children = {6},
			parentID = 3,
			type = 1
		},
		{
			id = 5,
			key = "Child",
			displayName = "ChildB",
			children = {},
			parentID = 3,
			type = 7 -- host node,
		},
		{
			id = 6,
			key = "Child",
			displayName = "Grandchild",
			children = {},
			parentID = 4,
			type = 7 -- host node,
		}
	}

	beforeEach(function()
		local inspector = DeveloperTools.forLibrary("TestLibrary", {})
		mockBridge = {}
		mockAgent = {}
		mockRenderer = {}
		function mockRenderer:findNativeNodesForFiberID()
			return rootInstance
		end
		function mockRenderer.getFiberIDForNative(instance)
			return instance.__TEST_ID
		end
		mockHook = {
			rendererInterfaces = {mockRenderer}
		}
		function mockBridge:addListener(name, handler)
			listeners[name] = handler
		end
		
		function mockAgent:inspectElement(id: number) end
		local mockStore = {}
		function mockStore:getElementByID(nodeId: number)
			return mockNodes[nodeId]
		end
		function mockStore:getRendererIDForElement()
			return 1
		end
		messages = {}
		listeners = {}
		worker = Roact17Worker.new(inspector, "", "", {
			bridge = mockBridge,
			agent = mockAgent,
			store = mockStore,
			hook = mockHook,
		}, 1)
		function worker:showProfileData(data)
			self.testData = data
		end
		function worker:send(message)
			insert(messages, message)
		end
	end)

	afterEach(function()
		worker:destroy()
	end)

	describe("Roact17Profiler", function()
		it('can get node children', function()
			worker:showChildren({})
			expect(messages[1]).toEqual({
				eventName = "RoactInspector.ShowChildren",
				children = {
					["1.2.3"] = {
						Icon = "Branch",
						Name = "Frame",
						Path = {"1.2.3"},
						Children = {
							["4.6"] = {
								Icon = "Branch",
								Name = "Child: Grandchild",
								Path = {"1.2.3", "4.6"},
							},
							["5"] = {
								Icon = "Branch",
								Name = "Child: ChildB",
								Path = {"1.2.3", "5"},
							}
						}
					}
				},
				path = {},
			})
			worker:showChildren({"1.2.3"})
			expect(messages[2]).toEqual({
				eventName = "RoactInspector.ShowChildren",
				children = {
					["4.6"] = {
						Icon = "Branch",
						Name = "Child: Grandchild",
						Path = {"1.2.3", "4.6"},
						Children = {},
					},
					["5"] = {
						Icon = "Branch",
						Name = "Child: ChildB",
						Path = {"1.2.3", "5"},
						Children = {},
					}
				},
				path = {"1.2.3"},
			})
			worker:showChildren({"1.2.3", "4.6"})
			expect(messages[3]).toEqual({
				eventName = "RoactInspector.ShowChildren",
				children = {},
				path = {"1.2.3", "4.6"},
			})
		end)
		it('can get a path', function()
			expect(worker:getPath(instance6)).toEqual({"1.2.3", "4.6"})

		end)
		it('can get a branch', function()
			worker:showBranch({"1.2.3"})
			expect(messages[1]).toEqual({
				eventName = "RoactInspector.ShowBranch",
				branch = {
					{
						Icon = "Branch",
						Name = "Child: Root",
						Link = "",
						Source = "",
					},
					{
						Icon = "Branch",
						Name = "Child: Test",
						Link = "",
						Source = "",
					},
					{
						Icon = "Branch",
						Name = "Child: Frame",
						Link = "",
						Source = "",
					}
				},
				path = {"1.2.3"},
			})
			worker:showBranch({"1.2.3", "4.6"})
			expect(messages[2]).toEqual({
				eventName = "RoactInspector.ShowBranch",
				branch = {
					{
						Icon = "Branch",
						Name = "Child: ChildA",
						Link = "",
						Source = "",
					},
					{
						Icon = "Branch",
						Name = "Child: Grandchild",
						Link = "",
						Source = "",
					},
				},
				path = {"1.2.3", "4.6"},
			})
		end)
		it('can open a node at a path', function()
			worker:openPath({"1.2.3", "4.6"})
			expect(messages[1]).toEqual({
				eventName = "RoactInspector.ShowChildren",
				children = {
					["4.6"] = {
						Icon = "Branch",
						Name = "Child: Grandchild",
						Path = {"1.2.3", "4.6"},
						Children = {},
					},
					["5"] = {
						Icon = "Branch",
						Name = "Child: ChildB",
						Path = {"1.2.3", "5"},
						Children = {},
					}
				},
				path = {"1.2.3"},
			})
			expect(messages[2]).toEqual({
				eventName = "RoactInspector.ShowChildren",
				children = {},
				path = {"1.2.3", "4.6"},
			})
			expect(messages[3]).toEqual({
				eventName = "RoactInspector.PickInstance",
				path = {"1.2.3", "4.6"},
			})
			expect(messages[4]).toEqual({
				eventName = "RoactInspector.ShowBranch",
				branch = {
					{
						Icon = "Branch",
						Name = "Child: ChildA",
						Link = "",
						Source = "",
					},
					{
						Icon = "Branch",
						Name = "Child: Grandchild",
						Link = "",
						Source = "",
					},
				},
				path = {"1.2.3", "4.6"},
			})
		end)
		it('can show the fields for a node and broadcast when changed', function()
			worker.currentPath = {"1.2.3", "4.6"}
			worker.currentNodeIndex = 1
			worker:showFields({"props"})
			local cheese = {
				Size = 5
			}
			listeners.inspectedElement({
				type = "full-data",
				value = {
					props = {
						data = {
							Cheese = cheese
						}
					}
				}
			})
			expect(messages[1]).toEqual({
				eventName = "RoactInspector.ShowFields",
				fieldPath = {"props"},
				fields = {
					["Cheese"] = {
						Name = "Cheese",
						Summary = [[{Size = 5}]],
						Children = {
							Size = {
								Name = "Size",
								Summary = "5",
								Path = {"props", "Cheese", "Size"},
								Children = {},
							}
						},
						Path = {"props", "Cheese"}
					},
				},
				nodeIndex = 1,
				path = {"1.2.3", "4.6"},
			})
			listeners.inspectedElement({
				type = "full-data",
				value = {
					props = {
						data = {
							Cheese = cheese
						}
					}
				}
			})
			expect(#messages).toBe(1)
			listeners.inspectedElement({
				type = "full-data",
				value = {
					props = {
						data = {
							Cheese = {
								Size = 6
							}
						}
					}
				}
			})
			expect(messages[2]).toEqual({
				eventName = "RoactInspector.ShowFields",
				fieldPath = {"props"},
				fields = {
					["Cheese"] = {
						Name = "Cheese",
						Summary = [[{Size = 6}]],
						Children = {
							Size = {
								Name = "Size",
								Summary = "6",
								Path = {"props", "Cheese", "Size"},
								Children = {},
							}
						},
						Path = {"props", "Cheese"}
					},
				},
				nodeIndex = 1,
				path = {"1.2.3", "4.6"},
			})
		end)
	end)
end
