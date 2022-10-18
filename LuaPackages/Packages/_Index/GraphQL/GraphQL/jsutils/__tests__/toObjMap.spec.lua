--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/__tests__/toObjMap-test.js
return function()
	-- local jsutils = script.Parent.Parent

	-- local toObjMap = require(jsutils.toObjMap).toObjMap

	describe("toObjMap", function()
		-- deviation: usage of JavaScript prototype and

		-- it("convert empty object to ObjMap", function()
		-- 	local result = toObjMap({})
		-- 	expect(result).to.deep.equal({})
		-- 	expect(Object.getPrototypeOf(result)).to.equal(nil)
		-- end)

		-- it("convert object with own properties to ObjMap", function()
		-- 	local obj = Object.freeze({foo = "bar"})

		-- 	local result = toObjMap(obj)
		-- 	expect(result).to.deep.equal(obj)
		-- 	expect(Object.getPrototypeOf(result)).to.equal(nil)
		-- end)

		-- it("convert object with __proto__ property to ObjMap", function()
		-- 	local protoObj = Object.freeze({toString = false})
		-- 	local obj = Object.create(nil)

		-- 	obj[__proto__] = protoObj

		-- 	Object.freeze(obj)

		-- 	local result = toObjMap(obj)

		-- 	expect(Object.keys(result)).to.deep.equal({
		-- 		"__proto__",
		-- 	})
		-- 	expect(Object.getPrototypeOf(result)).to.equal(nil)
		-- 	expect(result[__proto__]).to.equal(protoObj)
		-- end)

		-- it("passthrough empty ObjMap", function()
		-- 	local objMap = Object.create(nil)
		-- 	expect(toObjMap(objMap)).to.deep.equal(objMap)
		-- end)

		-- it("passthrough ObjMap with properties", function()
		-- 	local objMap = Object.freeze({
		-- 		__proto__ = nil,
		-- 		foo = "bar",
		-- 	})
		-- 	expect(toObjMap(objMap)).to.deep.equal(objMap)
		-- end)
	end)
end
