return function()

	local FFlagStudioFixGroupCreatorInfo3 = game:GetFastFlag("StudioFixGroupCreatorInfo3")

	local SetCachedCreatorInfo = require(script.Parent.SetCachedCreatorInfo)

	if not FFlagStudioFixGroupCreatorInfo3 then
		return
	end

	describe("accepts a table that", function()
		it("is empty", function()
			SetCachedCreatorInfo({})
		end)

		it("has Id, Type and Name defined", function()
			SetCachedCreatorInfo({
				Id = 123,
				Type = Enum.CreatorType.User.Value,
				Name = "foo"
			})
		end)

		it("has Id, Type, Name and foo defined", function()
			SetCachedCreatorInfo({
				Id = 123,
				Type = Enum.CreatorType.User.Value,
				Name = "foo",
				foo = "bar"
			})
		end)
	end)

	describe("does not accept", function()

		it("a table with only Id & Type defined", function()
			expect(function()
				SetCachedCreatorInfo({
					Id = 123,
					Type = Enum.CreatorType.User.Value
				})
			end).to.throw()
		end)

		it("has Id, Type and Name defined but with an incorrect type", function()
			expect(function()
				SetCachedCreatorInfo({
					Id = 123,
					Type = Enum.CreatorType.User.Name, -- Should be Value
					Name = "foo"
				})
			end).to.throw()
		end)

		it("a non-table", function()
			expect(function()
				SetCachedCreatorInfo("foo")
			end).to.throw()
		end)
	end)


end