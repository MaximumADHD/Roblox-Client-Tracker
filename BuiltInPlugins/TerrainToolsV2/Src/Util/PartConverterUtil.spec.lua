local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local DebugFlags = require(Plugin.Src.Util.DebugFlags)

local MockTerrain = require(Plugin.Src.TestHelpers.MockTerrain)
local setEquals = Framework.TestHelpers.setEquals

local TerrainEnums = require(script.Parent.TerrainEnums)
local Shape = TerrainEnums.Shape
local ConvertPartWarning = TerrainEnums.ConvertPartWarning

local getTerrain = require(script.Parent.getTerrain)

local Workspace = game:GetService("Workspace")

local PartConverterUtil = require(script.Parent.PartConverterUtil)

return function()
	describe("isConvertibleToTerrain", function()
		local ictt = PartConverterUtil.isConvertibleToTerrain

		it("should only allow parts", function()
			expect(ictt(nil)).to.equal(false)
			expect(ictt(Instance.new("Model"))).to.equal(false)
		end)

		it("should only allow parts with parents", function()
			expect(ictt(Instance.new("Part"))).to.equal(false)
			local parent = Instance.new("Model")
			local part = Instance.new("Part")
			part.Size = Vector3.new(10, 10, 10)
			part.Parent = parent
			expect(ictt(part)).to.equal(true)
		end)

		it("should not allow terrain", function()
			-- Prefer to use the real terrain if available
			-- But as it doesn't exist in CLI, use a mock
			if DebugFlags.RunningUnderCLI() then
				-- isConvertibleToTerrain returns false if the given instance's Parent is nil
				-- So fake giving it a "Parent" as that's not what we're testing here
				local t = MockTerrain.new()
				t.Parent = Workspace
				expect(ictt(t)).to.equal(false)
			else
				expect(ictt(getTerrain())).to.equal(false)
			end
		end)

		it("should not allow protected instances", function()
			expect(ictt(game:GetService("CSGDictionaryService"))).to.equal(false)
		end)

		it("should not allow mesh parts and union operations", function()
			local parent = Instance.new("Model")
			local meshPart = Instance.new("MeshPart", parent)
			local union = Instance.new("UnionOperation", parent)
			local negate = Instance.new("NegateOperation", parent)

			expect(ictt(meshPart)).to.equal(false)
			expect(ictt(union)).to.equal(false)
			expect(ictt(negate)).to.equal(false)
		end)

		it("should not allow small parts", function()
			local parent = Instance.new("Model")
			local part = Instance.new("Part")
			part.Size = Vector3.new(1, 1, 1)
			part.Parent = parent
			expect(ictt(part)).to.equal(false)
		end)
	end)

	describe("getValidInstancesAndWarnings", function()
		local gviaw = PartConverterUtil.getValidInstancesAndWarnings

		it("should handle selecting parts", function()
			local m = Instance.new("Model")
			local p1 = Instance.new("Part", m)
			local p2 = Instance.new("Part", m)
			p1.Size = Vector3.new(10, 10, 10)
			p2.Size = Vector3.new(10, 10, 10)

			local valid, warnings
			valid, warnings = gviaw({})
			expect(setEquals(valid, {})).to.equal(true)
			expect(setEquals(warnings, {})).to.equal(true)

			valid, warnings = gviaw({p1, p2})
			expect(setEquals(valid, {[p1] = true, [p2] = true})).to.equal(true)
			expect(setEquals(warnings, {})).to.equal(true)
		end)

		it("should handle invalid instances", function()
			local invalidInstance = Instance.new("IntValue")

			local valid, warnings = gviaw({invalidInstance})
			expect(setEquals(valid, {})).to.equal(true)
			expect(setEquals(warnings, {[ConvertPartWarning.HasOtherInstance] = true})).to.equal(true)
		end)

		it("should handle protected instances", function()
			local valid, warnings = gviaw({game:GetService("CSGDictionaryService")})
			expect(setEquals(valid, {})).to.equal(true)
			expect(setEquals(warnings, {[ConvertPartWarning.HasProtected] = true})).to.equal(true)
		end)

		it("should handle models", function()
			local m = Instance.new("Model")

			local valid, warnings
			valid, warnings = gviaw({m})
			expect(setEquals(valid, {})).to.equal(true)
			expect(setEquals(warnings, {})).to.equal(true)

			local p1 = Instance.new("Part", m)
			p1.Size = Vector3.new(10, 10, 10)
			valid, warnings = gviaw({m})
			expect(setEquals(valid, {[p1] = true})).to.equal(true)
			expect(setEquals(warnings, {})).to.equal(true)

			local p2 = Instance.new("Part", m)
			p2.Size = Vector3.new(10, 10, 10)
			valid, warnings = gviaw({m})
			expect(setEquals(valid, {[p1] = true, [p2] = true})).to.equal(true)
			expect(setEquals(warnings, {})).to.equal(true)

			Instance.new("IntValue", m)
			valid, warnings = gviaw({m})
			expect(setEquals(valid, {[p1] = true, [p2] = true})).to.equal(true)
			expect(setEquals(warnings, {[ConvertPartWarning.HasOtherInstance] = true})).to.equal(true)
		end)

		it("should handle nested models", function()
			local m1 = Instance.new("Model")
			local m2 = Instance.new("Model", m1)
			local m3 = Instance.new("Model", m2)
			local m4 = Instance.new("Model", m3)

			local valid, warnings
			valid, warnings = gviaw({m1})
			expect(setEquals(valid, {})).to.equal(true)
			expect(setEquals(warnings, {})).to.equal(true)

			local p1 = Instance.new("Part", m3)
			local p2 = Instance.new("Part", m4)
			p1.Size = Vector3.new(10, 10, 10)
			p2.Size = Vector3.new(10, 10, 10)
			valid, warnings = gviaw({m1})
			expect(setEquals(valid, {[p1] = true, [p2] = true})).to.equal(true)
			expect(setEquals(warnings, {})).to.equal(true)

			Instance.new("IntValue", m2)
			valid, warnings = gviaw({m1})
			expect(setEquals(valid, {[p1] = true, [p2] = true})).to.equal(true)
			expect(setEquals(warnings, {[ConvertPartWarning.HasOtherInstance] = true})).to.equal(true)
		end)
	end)

	describe("getPartRenderedShape", function()
		local gprs = PartConverterUtil.getPartRenderedShape

		local cf = CFrame.new(Vector3.new(63, 2, 8))
		local sz = Vector3.new(6, 16, 8)

		it("should support part.Shape", function()
			local p = Instance.new("Part")
			p.CFrame = cf
			p.Size = sz

			p.Shape = Enum.PartType.Block
			local shape, cframe, size = gprs(p)
			expect(shape).to.equal(Shape.Block)
			expect(cframe).to.equal(cf)
			expect(size).to.equal(sz)

			p.Shape = Enum.PartType.Cylinder
			shape, cframe, size = gprs(p)
			expect(shape).to.equal(Shape.CylinderRotate)
			expect(cframe).to.equal(cf)
			expect(size).to.equal(sz)

			p.Shape = Enum.PartType.Ball
			shape, cframe, size = gprs(p)
			expect(shape).to.equal(Shape.Ball)
			expect(cframe).to.equal(cf)
			-- Ball part type changes sizes
			expect(size).to.equal(Vector3.new(6, 6, 6))
		end)

		it("should support WedgeParts", function()
			local w = Instance.new("WedgePart")
			w.CFrame = cf
			w.Size = sz

			local shape, cframe, size = gprs(w)
			expect(shape).to.equal(Shape.Wedge)
			expect(cframe).to.equal(cf)
			expect(size).to.equal(sz)
		end)

		it("should support DataModelMeshes", function()
			local offset = Vector3.new(4, 8, 2)
			local scale = Vector3.new(7, 6, 3)

			local meshCF = cf + cf:VectorToWorldSpace(offset)
			local meshSz = sz * scale

			local p = Instance.new("Part")
			p.CFrame = cf
			p.Size = sz

			local mesh = Instance.new("SpecialMesh")
			mesh.Offset = offset
			mesh.Scale = scale
			mesh.Parent = p

			mesh.MeshType = Enum.MeshType.Cylinder
			local shape, cframe, size = gprs(p)
			expect(shape).to.equal(Shape.CylinderRotate)
			expect(cframe).to.equal(meshCF)
			expect(size).to.equal(meshSz)

			mesh.MeshType = Enum.MeshType.Head
			shape, cframe, size = gprs(p)
			expect(shape).to.equal(Shape.Cylinder)
			expect(cframe).to.equal(meshCF)
			expect(size).to.equal(meshSz)

			mesh.MeshType = Enum.MeshType.Sphere
			shape, cframe, size = gprs(p)
			expect(shape).to.equal(Shape.Ball)
			expect(cframe).to.equal(meshCF)
			expect(size).to.equal(meshSz)

			mesh.MeshType = Enum.MeshType.Brick
			shape, cframe, size = gprs(p)
			expect(shape).to.equal(Shape.Block)
			expect(cframe).to.equal(meshCF)
			expect(size).to.equal(meshSz)

			mesh:Destroy()

			mesh = Instance.new("CylinderMesh")
			mesh.Offset = offset
			mesh.Scale = scale
			mesh.Parent = p

			shape, cframe, size = gprs(p)
			expect(shape).to.equal(Shape.Cylinder)
			expect(cframe).to.equal(meshCF)
			expect(size).to.equal(meshSz)
		end)

		it("should rotate DataModelMesh offset correctly", function()
			local cf = CFrame.new(Vector3.new(5, 2, 8)) * CFrame.Angles(0, 0, math.rad(90))
			local offset = Vector3.new(2, 1, 3)
			local expectedResult = Vector3.new(4, 4, 11)

			local p = Instance.new("Part")
			p.CFrame = cf
			local mesh = Instance.new("SpecialMesh")
			mesh.Offset = offset
			mesh.Parent = p

			local _, cframe = gprs(p)
			expect(cframe.p.x).to.equal(expectedResult.x)
			expect(cframe.p.y).to.equal(expectedResult.y)
			expect(cframe.p.z).to.equal(expectedResult.z)
		end)

		it("should support unknown types of parts", function()
			-- Truss, CornerWedgePart, CSG, MeshPart
			local p = Instance.new("TrussPart")
			p.CFrame = cf
			p.Size = sz

			local shape, cframe, size = gprs(p)
			expect(shape).to.equal(Shape.Block)
			expect(cframe).to.equal(cf)
			-- Trusses only be not-2 in 1 direction
			expect(size).to.equal(Vector3.new(2, 16, 2))
		end)
	end)

	describe("fillShapeWithTerrain", function()
		local fswt = PartConverterUtil.fillShapeWithTerrain

		it("should require terrain", function()
			expect(function()
				fswt(nil, Enum.Material.Air, Shape.Block, CFrame.new(), Vector3.new())
			end).to.throw()
		end)

		it("should not allow invalid size", function()
			local t = MockTerrain.new()
			local m = Enum.Material.Air
			local s = Shape.Block
			local c = CFrame.new()

			expect(fswt(t, m, s, c, Vector3.new(0, 1, 1))).to.equal(0)
			expect(fswt(t, m, s, c, Vector3.new(3, -5, 2))).to.equal(0)
		end)

		it("should not allow invalid shapes", function()
			local t = MockTerrain.new()
			local m = Enum.Material.Air
			local c = CFrame.new()
			local s = Vector3.new(1, 1, 1)

			expect(fswt(t, m, "Foo", c, s)).to.equal(0)
		end)
	end)

	describe("applyVisualsToInstance", function()
		local avti = PartConverterUtil.applyVisualsToInstance

		it("should work", function()
			local part = Instance.new("Part")
			part.Transparency = 0
			part.Color = Color3.new(0, 0, 0)

			local originalVisuals = avti(part)

			expect(originalVisuals).to.be.ok()

			expect(part.Archivable).to.equal(false)
			expect(part.Transparency).to.never.equal(0)
			expect(part.Color).to.never.equal(Color3.new(0, 0, 0))

			expect(originalVisuals.Archivable).to.equal(true)
			expect(originalVisuals.Transparency).to.equal(0)
			expect(originalVisuals.Color).to.equal(Color3.new(0, 0, 0))
		end)

		it("should not throw with non-BaseParts", function()
			expect(function()
				avti(nil)
			end).to.never.throw()
			expect(function()
				avti(Instance.new("Model"))
			end).to.never.throw()
		end)
	end)

	describe("resetVisualsOnInstance", function()
		local avti = PartConverterUtil.applyVisualsToInstance
		local rvio = PartConverterUtil.resetVisualsOnInstance

		it("should work", function()
			local part = Instance.new("Part")
			part.Transparency = 0
			part.Color = Color3.new(0, 0, 0)

			-- See applyVisualsToInstance test
			local originalVisuals = avti(part)

			rvio(originalVisuals, part)

			expect(part.Archivable).to.equal(true)
			expect(part.Transparency).to.equal(0)
			expect(part.Color).to.equal(Color3.new(0, 0, 0))
		end)

		it("should not throw with non-BaseParts", function()
			expect(function()
				rvio({}, nil)
			end).to.never.throw()
			expect(function()
				rvio({}, Instance.new("Model"))
			end).to.never.throw()
		end)
	end)
end
