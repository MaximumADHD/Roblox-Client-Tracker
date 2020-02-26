local PartConverterUtil = require(script.Parent.PartConverterUtil)

local TerrainEnums = require(script.Parent.TerrainEnums)
local Shape = TerrainEnums.Shape

local getTerrain = require(script.Parent.getTerrain)

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
			part.Parent = parent
			expect(ictt(part)).to.equal(true)
		end)

		it("should not allow terrain", function()
			expect(ictt(getTerrain())).to.equal(false)
		end)

		it("should not allow protected instances", function()
			expect(ictt(game:GetService("CSGDictionaryService"))).to.equal(false)
		end)
	end)

	describe("isConvertibleContainerToTerrain", function()
		local icctt = PartConverterUtil.isConvertibleContainerToTerrain

		it("should handle nil and protected instances", function()
			expect(icctt(nil)).to.equal(false)
			expect(icctt(game:GetService("CSGDictionaryService"))).to.equal(false)
		end)

		it("should find parts inside models", function()
			local m = Instance.new("Model")
			expect(icctt(m)).to.equal(false)

			local p = Instance.new("Part")
			p.Parent = m
			expect(icctt(p)).to.equal(false)
			expect(icctt(m)).to.equal(true)

			p.Parent = nil
			expect(icctt(m)).to.equal(false)
		end)

		it("should find parts nested deep in models", function()
			local m = Instance.new("Model")
			expect(icctt(m)).to.equal(false)

			local m2 = Instance.new("Model", m)
			local m3 = Instance.new("Model", m2)

			expect(icctt(m2)).to.equal(false)
			expect(icctt(m3)).to.equal(false)

			local p = Instance.new("Part")
			p.Parent = m3

			expect(icctt(m)).to.equal(true)
			expect(icctt(m2)).to.equal(true)
			expect(icctt(m3)).to.equal(true)
		end)
	end)

	describe("validInstanceFilter", function()
		local vif = PartConverterUtil.validInstanceFilter

		it("should handle nil and protected instances", function()
			expect(vif(nil)).to.equal(false)
			expect(vif(game:GetService("CSGDictionaryService"))).to.equal(false)
		end)

		it("should not allow terrain", function()
			expect(vif(getTerrain())).to.equal(false)
		end)

		it("should allow valid parts", function()
			expect(vif(Instance.new("Part"))).to.equal(false)
			local parent = Instance.new("Model")
			local part = Instance.new("Part")
			part.Parent = parent
			expect(vif(part)).to.equal(true)
		end)

		it("should allow valid models", function()
			local m = Instance.new("Model")
			expect(vif(m)).to.equal(false)

			local m2 = Instance.new("Model", m)
			local m3 = Instance.new("Model", m2)

			expect(vif(m2)).to.equal(false)
			expect(vif(m3)).to.equal(false)

			local p = Instance.new("Part")
			p.Parent = m3

			expect(vif(m)).to.equal(true)
			expect(vif(m2)).to.equal(true)
			expect(vif(m3)).to.equal(true)
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
			local t = getTerrain()
			local m = Enum.Material.Air
			local s = Shape.Block
			local c = CFrame.new()

			expect(fswt(t, m, s, c, Vector3.new(0, 1, 1))).to.equal(0)
			expect(fswt(t, m, s, c, Vector3.new(3, -5, 2))).to.equal(0)
		end)

		it("should not allow invalid shapes", function()
			local t = getTerrain()
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
