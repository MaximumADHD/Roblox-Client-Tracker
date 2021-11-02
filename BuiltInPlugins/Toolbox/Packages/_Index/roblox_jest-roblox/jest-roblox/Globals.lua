local Modules = script.Parent.Modules
local jestExpect = require(Modules.Expect)
local jestMock = require(Modules.JestMock)

return {
	expect = jestExpect,
	jest = jestMock.new(),
}