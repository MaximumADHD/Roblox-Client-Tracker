return function()
	local root = script.Parent
	local RequestBuilder = require(root.RequestBuilder)
	local tutils = require(root.tutils)

	local baseUrl = "https://example.com"
	describe("RequestBuilder basics", function()
		it("builder functions should return self", function()
			local builder = RequestBuilder:new()

			expect(builder).to.equal(builder:path("test"))
			expect(builder).to.equal(builder:id("test"))
			expect(builder).to.equal(builder:queryArgs({ "test" }))
			expect(builder).to.equal(builder:body({ "test" }))
		end)

		it("should be constructible from base URL", function()

			local builder = RequestBuilder:new(baseUrl)
			expect(builder).to.be.ok()
			expect(builder:makeUrl()).to.equal(baseUrl)
		end)

		it("should be constructible from successive path calls", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:path("some"):path("element")
			expect(builder:makeUrl()).to.equal(baseUrl .. "/some/element")
			expect(tutils.shallowEqual(builder:getIds(), {})).to.equal(true)
		end)

		it("should allow building query args", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:queryArgs({
				arg = "value"
			})
			expect(builder:makeUrl()).to.equal(baseUrl .. "?arg=value")
			expect(tutils.shallowEqual(builder:getIds(), {})).to.equal(true)
		end)

		it("should allow building multiple query args", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:queryArgs({
				arg = "value"
			})
			builder:queryArgs({
				arg2 = "value2"
			})
			expect(builder:makeUrl()).to.equal(baseUrl .. "?arg2=value2&arg=value")
			expect(tutils.shallowEqual(builder:getIds(), {})).to.equal(true)
		end)
	end)

	describe("RequestBuilder path ids", function()
		it("should be constructible from path and single id", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:path("some/element"):id(123)

			local expectedUrl = baseUrl .. "/some/element/123"
			expect(builder:makeUrl()).to.equal(expectedUrl)

			expect(builder:makeKeyMapper()).to.be.ok()
			expect(builder:makeKeyMapper()()).to.equal(expectedUrl)

			expect(tutils.shallowEqual(builder:getIds(), {123})).to.equal(true)
		end)

		it("should be constructible from path and ids array", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:path("some/element"):id({123, 321})

			local staticUrlPart = baseUrl .. "/some/element/"
			expect(builder:makeUrl()).to.equal(staticUrlPart .. "123;321")

			expect(builder:makeKeyMapper()(123)).to.equal(staticUrlPart .. "123")
			expect(builder:makeKeyMapper()(321)).to.equal(staticUrlPart .. "321")
		end)

		it("should allow swapping ids in makeUrl call", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:path("some/element"):id({})
			expect(builder:makeUrl({567, 789})).to.equal(baseUrl .. "/some/element/567;789")
		end)

		it("should allow swapping ids in makeUrl call, but only for last ids group", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:path("some/element"):id(123):path("other"):id({})

			local staticUrlPart = baseUrl .. "/some/element/123/other"
			expect(builder:makeUrl(567)).to.equal(staticUrlPart .. "/567")
			expect(builder:makeUrl({567})).to.equal(staticUrlPart .. "/567")
			expect(builder:makeUrl({567, 789})).to.equal(staticUrlPart .. "/567;789")

			expect(builder:makeKeyMapper()(567)).to.equal(staticUrlPart .. "/567")
			expect(builder:makeKeyMapper()(789)).to.equal(staticUrlPart .. "/789")
		end)

		it("should map previous path segment to id", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:path("pathexample"):id(444)
			local namedIds = builder:getNamedIds()
			expect(namedIds["pathexample"]).to.be.ok()
			expect(namedIds["pathexample"]).to.equal(444)
		end)

		it("should map previous path segment to id with multiple path segments and ids", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:path("firstpathexample"):id(444):path("anotherpathexample"):path("yetanotherpathexample"):id(555)
			local namedIds = builder:getNamedIds()
			expect(namedIds["firstpathexample"]).to.be.ok()
			expect(namedIds["anotherpathexample"]).to.never.be.ok()
			expect(namedIds["yetanotherpathexample"]).to.be.ok()

			expect(namedIds["firstpathexample"]).to.equal(444)
			expect(namedIds["yetanotherpathexample"]).to.equal(555)
		end)

		it("should map previous path segment to id with multiple path segments and ids, with multiple ids given to function", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:path("firstpathexample"):id({ 333, 444 }):path("anotherpathexample"):path("yetanotherpathexample"):id(555)
			local namedIds = builder:getNamedIds()
			expect(namedIds["firstpathexample"]).to.be.ok()
			expect(namedIds["anotherpathexample"]).to.never.be.ok()
			expect(namedIds["yetanotherpathexample"]).to.be.ok()

			expect(tutils.deepEqual(namedIds["firstpathexample"], { 333, 444 })).to.equal(true)
			expect(namedIds["yetanotherpathexample"]).to.equal(555)
		end)

		it("should allow one to override the default key", function()
			local builder = RequestBuilder:new(baseUrl)
			local KEY1 = "KEY1"
			builder:path("firstpathexample"):id({ 333, 444 }, KEY1):path("anotherpathexample"):path("yetanotherpathexample"):id(555)
			local namedIds = builder:getNamedIds()
			expect(namedIds["firstpathexample"]).to.never.be.ok()
			expect(namedIds["anotherpathexample"]).to.never.be.ok()
			expect(namedIds["yetanotherpathexample"]).to.be.ok()

			expect(tutils.deepEqual(namedIds[KEY1], { 333, 444 })).to.equal(true)
			expect(namedIds["yetanotherpathexample"]).to.equal(555)
		end)
	end)

	describe("RequestBuilder query args and ids", function()
		it("should allow swapping query argument ids in makeUrl call", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:queryArgWithIds("arg", {123})
			expect(builder:makeUrl()).to.equal(baseUrl .. "?arg=123")
		end)

		it("should allow swapping multiple query argument ids in makeUrl call", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:queryArgWithIds("arg", {})
			expect(builder:makeUrl(123)).to.equal(baseUrl .. "?arg=123")
			expect(builder:makeUrl({345, 456})).to.equal(baseUrl .. "?arg=345;456")

			expect(builder:makeKeyMapper()(567)).to.equal(baseUrl .. "?arg=567")
			expect(builder:makeKeyMapper()({567, 321})).to.equal(baseUrl .. "?arg=567;321")
		end)

		it("should allow swapping query argument ids in makeUrl call and not affect path ids", function()
			local builder = RequestBuilder:new(baseUrl)
			builder:path("some/element"):id(999):queryArgWithIds("arg", {})
			expect(builder:makeUrl(123)).to.equal(baseUrl .. "/some/element/999?arg=123")
			expect(builder:makeUrl({345, 456})).to.equal(baseUrl .. "/some/element/999?arg=345;456")
		end)
	end)

	describe("RequestBuilder body", function()
		it("should replace postBody", function()
			local myBody = { hi = "there" }
			local builder = RequestBuilder:new(baseUrl):body(myBody)

			expect(builder:makeOptions()).to.be.ok()
			expect(builder:makeOptions().postBody.hi).to.equal("there")
		end)
	end)
end
