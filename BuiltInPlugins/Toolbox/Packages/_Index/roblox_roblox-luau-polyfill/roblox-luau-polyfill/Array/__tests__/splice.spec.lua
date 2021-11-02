-- Tests adapted directly from examples at:
-- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/splice
return function()
	local Array = script.Parent.Parent
	local LuauPolyfill = Array.Parent
	local splice = require(Array.splice)

	local Packages = LuauPolyfill.Parent
	local JestRoblox = require(Packages.Dev.JestRoblox)
	local jestExpect = JestRoblox.Globals.expect

	it('Remove 0 (zero) elements before index 3, and insert "drum"', function()
		local myFish = {"angel", "clown", "mandarin", "sturgeon"}
		local removed = splice(myFish, 3, 0, "drum")

		jestExpect(myFish).toEqual({"angel", "clown", "drum", "mandarin", "sturgeon"})
		jestExpect(removed).toEqual({})
	end)

	it('Remove 0 (zero) elements before index 3, and insert "drum" and "guitar"', function()
		local myFish = {"angel", "clown", "mandarin", "sturgeon"}
		local removed = splice(myFish, 3, 0, "drum", "guitar")

		jestExpect(myFish).toEqual({"angel", "clown", "drum", "guitar", "mandarin", "sturgeon"})
		jestExpect(removed).toEqual({})
	end)

	it('Remove 1 element at index 4', function()
		local myFish = {"angel", "clown", "drum", "mandarin", "sturgeon"}
		local removed = splice(myFish, 4, 1)

		jestExpect(myFish).toEqual({"angel", "clown", "drum", "sturgeon"})
		jestExpect(removed).toEqual({"mandarin"})
	end)

	it('Remove 1 element at index 3, and insert "trumpet"', function()
		local myFish = {"angel", "clown", "drum", "sturgeon"}
		local removed = splice(myFish, 3, 1, "trumpet")

		jestExpect(myFish).toEqual({"angel", "clown", "trumpet", "sturgeon"})
		jestExpect(removed).toEqual({"drum"})
	end)

	it('Remove 2 elements from index 1, and insert "parrot", "anemone" and "blue"', function()
		local myFish = {'angel', 'clown', 'trumpet', 'sturgeon'}
		local removed = splice(myFish, 1, 2, 'parrot', 'anemone', 'blue')

		jestExpect(myFish).toEqual({"parrot", "anemone", "blue", "trumpet", "sturgeon"} )
		jestExpect(removed).toEqual({"angel", "clown"})
	end)

	it('Remove 2 elements from index 3', function()
		local myFish = {'parrot', 'anemone', 'blue', 'trumpet', 'sturgeon'}
		local removed = splice(myFish, 3, 2)

		jestExpect(myFish).toEqual({"parrot", "anemone", "sturgeon"} )
		jestExpect(removed).toEqual({"blue", "trumpet"})
	end)

	it('Remove 1 element from index -1', function()
		local myFish = {'angel', 'clown', 'mandarin', 'sturgeon'}
		local removed = splice(myFish, -1, 1)

		jestExpect(myFish).toEqual({"angel", "clown", "sturgeon"} )
		jestExpect(removed).toEqual({"mandarin"})
	end)

	it('Remove all elements from index 3', function()
		local myFish = {'angel', 'clown', 'mandarin', 'sturgeon'}
		local removed = splice(myFish, 3)

		jestExpect(myFish).toEqual({"angel", "clown"})
		jestExpect(removed).toEqual({"mandarin", "sturgeon"})
	end)
end