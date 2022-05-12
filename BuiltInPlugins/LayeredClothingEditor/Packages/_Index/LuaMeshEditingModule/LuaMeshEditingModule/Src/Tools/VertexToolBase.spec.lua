local TestHelpers = script.Parent.Parent.Util.TestHelpers
local MeshEditingContextTestHelper = require(TestHelpers.MeshEditingContextTestHelper)
local VertexToolBase = require(script.Parent.Parent.Tools.VertexToolBase)
local CoreGui = game:GetService("CoreGui")
local Constants = require(script.Parent.Parent.Util.Constants)

return function()
	describe("Tool State and Context Management", function()
		it("addContext", function()
			local part, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

			local controlPointLocationData1 = {
				Positions = context:getVertexData(),
				Edges = {},
			}

			local vertexToolBase = VertexToolBase.new()
			vertexToolBase:addContext(context, controlPointLocationData1)

			expect(vertexToolBase:getCurrentContext()).to.equal(nil)

			vertexToolBase:cleanup()
			part:Destroy()
		end)

		it("setCurrentContext", function()
			local part, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

			local controlPointLocationData1 = {
				Positions = context:getVertexData(),
				Edges = {},
			}

			local vertexToolBase = VertexToolBase.new()
			vertexToolBase:addContext(context, controlPointLocationData1)
			vertexToolBase:setCurrentContext(context)

			expect(vertexToolBase:getCurrentContext()).to.equal(context)

			vertexToolBase:cleanup()
			part:Destroy()
		end)

		it("remove current context", function()
			local part, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

			local controlPointLocationData1 = {
				Positions = context:getVertexData(),
				Edges = {},
			}

			local vertexToolBase = VertexToolBase.new()
			vertexToolBase:addContext(context, controlPointLocationData1)
			vertexToolBase:setCurrentContext(context)

			vertexToolBase:removeContext(context)
			expect(vertexToolBase:getCurrentContext()).to.equal(nil)

			vertexToolBase:cleanup()
			part:Destroy()
		end)

		it("remove other context", function()
			local part, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()
			local part2, context2 = MeshEditingContextTestHelper.createContextWithSingleWrapper()

			local controlPointLocationData1 = {
				Positions = context:getVertexData(),
				Edges = {},
			}

			local controlPointLocationData2 = {
				Positions = context2:getVertexData(),
				Edges = {},
			}

			local vertexToolBase = VertexToolBase.new()
			vertexToolBase:addContext(context, controlPointLocationData1)
			vertexToolBase:addContext(context2, controlPointLocationData2)
			vertexToolBase:setCurrentContext(context2)

			vertexToolBase:removeContext(context)
			expect(vertexToolBase:getCurrentContext()).to.equal(context2)

			vertexToolBase:cleanup()
			part:Destroy()
			part2:Destroy()
		end)

		it("switch between two contexts", function()
			local part, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()
			local part2, context2 = MeshEditingContextTestHelper.createContextWithSingleWrapper()

			local controlPointLocationData1 = {
				Positions = context:getVertexData(),
				Edges = {},
			}

			local controlPointLocationData2 = {
				Positions = context2:getVertexData(),
				Edges = {},
			}

			local vertexToolBase = VertexToolBase.new()
			vertexToolBase:addContext(context, controlPointLocationData1)
			vertexToolBase:addContext(context2, controlPointLocationData2)
			vertexToolBase:setCurrentContext(context2)
			vertexToolBase:_setCurrentToolStateData({
				Test = "CONTEXT2",
			})
			vertexToolBase:setCurrentContext(context)
			expect(vertexToolBase:getCurrentContext()).to.equal(context)
			vertexToolBase:_setCurrentToolStateData({
				Test = "CONTEXT",
			})
			vertexToolBase:setCurrentContext(context2)
			expect(vertexToolBase:getCurrentContext()).to.equal(context2)
			expect(vertexToolBase:_getCurrentToolStateData().Test).to.equal("CONTEXT2")

			vertexToolBase:setCurrentContext(context)
			expect(vertexToolBase:getCurrentContext()).to.equal(context)
			expect(vertexToolBase:_getCurrentToolStateData().Test).to.equal("CONTEXT")

			vertexToolBase:cleanup()
			part:Destroy()
			part2:Destroy()
		end)

		it("handle external deletions", function()
			local part, context = MeshEditingContextTestHelper.createContextWithSingleWrapper()

			local controlPointLocationData1 = {
				Positions = context:getVertexData(),
				Edges = {
					["Cube1"] = {
						[1] = {
							Start = 1,
							End = 2,
						},
						[2] = {
							Start = 2,
							End = 4,
						},
						[3] = {
							Start = 1,
							End = 3,
						},
					},
				},
			}

			local vertexToolBase = VertexToolBase.new()
			vertexToolBase:addContext(context, controlPointLocationData1)
			vertexToolBase:setCurrentContext(context)

			-- handle controlpointviewsfolder being deleted
			local controlPointViewsFolder = CoreGui:FindFirstChild("ControlPointViews")
			expect(#controlPointViewsFolder:GetChildren()).to.equal(8)
			controlPointViewsFolder:Destroy()
			controlPointViewsFolder = CoreGui:FindFirstChild("ControlPointViews")
			expect(controlPointViewsFolder).to.be.ok()
			expect(#controlPointViewsFolder:GetChildren()).to.equal(8)
			controlPointViewsFolder:FindFirstChild("SphereHandleAdornment").Parent = nil
			controlPointViewsFolder = CoreGui:FindFirstChild("ControlPointViews")
			expect(controlPointViewsFolder).to.be.ok()
			expect(#controlPointViewsFolder:GetChildren()).to.equal(8)

			local controlPointViewsPartsFolder = game.Workspace:FindFirstChild("ControlPoints")
			expect(controlPointViewsPartsFolder).to.be.ok()
			expect(#controlPointViewsPartsFolder:GetChildren()).to.equal(8)
			controlPointViewsPartsFolder:Destroy()
			controlPointViewsPartsFolder = game.Workspace:FindFirstChild("ControlPoints")
			expect(controlPointViewsPartsFolder).to.be.ok()
			expect(#controlPointViewsPartsFolder:GetChildren()).to.equal(8)
			controlPointViewsPartsFolder:FindFirstChild("1").Parent = nil
			controlPointViewsPartsFolder = game.Workspace:FindFirstChild("ControlPoints")
			expect(controlPointViewsPartsFolder).to.be.ok()
			expect(#controlPointViewsPartsFolder:GetChildren()).to.equal(8)

			-- handle tooladorneesfolder being deleted
			local controlPointsFolder = game.Workspace:FindFirstChild(Constants.ControlPointsFolderName)
			expect(controlPointsFolder).to.be.ok()
			expect(#controlPointsFolder:GetChildren()).to.equal(1)
			controlPointsFolder:Destroy()
			controlPointsFolder = game.Workspace:FindFirstChild(Constants.ControlPointsFolderName)
			expect(controlPointsFolder).to.be.ok()
			expect(#controlPointsFolder:GetChildren()).to.equal(1)

			controlPointsFolder:FindFirstChild("Cube1").Parent = controlPointViewsPartsFolder
			controlPointsFolder = game.Workspace:FindFirstChild(Constants.ControlPointsFolderName)
			expect(controlPointsFolder).to.be.ok()
			expect(#controlPointsFolder:GetChildren()).to.equal(1)
			controlPointViewsPartsFolder = game.Workspace:FindFirstChild("ControlPoints")
			expect(controlPointViewsPartsFolder).to.be.ok()
			expect(#controlPointViewsPartsFolder:GetChildren()).to.equal(8)

			-- handle controledgeviewsfolder being deleted
			local controlEdgeViewsFolder = CoreGui:FindFirstChild("ControlEdgeViews")
			expect(controlEdgeViewsFolder).to.be.ok()
			expect(#controlEdgeViewsFolder:GetChildren()).to.equal(3)
			controlEdgeViewsFolder:Destroy()
			controlEdgeViewsFolder = CoreGui:FindFirstChild("ControlEdgeViews")
			expect(controlEdgeViewsFolder).to.be.ok()
			expect(#controlEdgeViewsFolder:GetChildren()).to.equal(3)

			controlEdgeViewsFolder:FindFirstChild("LineHandleAdornment").Parent = nil
			controlEdgeViewsFolder = CoreGui:FindFirstChild("ControlEdgeViews")
			expect(controlEdgeViewsFolder).to.be.ok()
			expect(#controlEdgeViewsFolder:GetChildren()).to.equal(3)

			--handle wireframefolder being deleted
			local wireframeMeshViewFolder = CoreGui:FindFirstChild("Folder")
			expect(wireframeMeshViewFolder).to.be.ok()
			expect(#wireframeMeshViewFolder:GetChildren()).to.equal(18)
			wireframeMeshViewFolder:Destroy()
			wireframeMeshViewFolder = CoreGui:FindFirstChild("Folder")
			expect(wireframeMeshViewFolder).to.be.ok()
			expect(#wireframeMeshViewFolder:GetChildren()).to.equal(18)

			wireframeMeshViewFolder:FindFirstChild("LineHandleAdornment").Parent = nil
			wireframeMeshViewFolder = CoreGui:FindFirstChild("Folder")
			expect(wireframeMeshViewFolder).to.be.ok()
			expect(#wireframeMeshViewFolder:GetChildren()).to.equal(18)

			vertexToolBase:cleanup()
			part:Destroy()
		end)
	end)
end
