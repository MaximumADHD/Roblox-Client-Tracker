-- ROBLOX upstream: https://github.com/testing-library/dom-testing-library/blob/v8.14.0/src/queries/index.ts
local Packages = script.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local exports = {}

-- Object.assign(exports, require(script["label-text"]))
Object.assign(exports, require(script["placeholder-text"]))
Object.assign(exports, require(script.text))
Object.assign(exports, require(script["display-value"]))
-- Object.assign(exports, require(script["alt-text"]))
-- Object.assign(exports, require(script.title))
-- Object.assign(exports, require(script.role))
Object.assign(exports, require(script["test-id"]))

return exports
