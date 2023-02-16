-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/merge/src/index.ts
local Packages = script.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object
local exports = {}
-- ROBLOX deviation START: fix exports
-- Object.assign(exports, require(script["merge-resolvers.js"]))
-- Object.assign(exports, require(script["typedefs-mergers"]["index.js"]))
-- Object.assign(exports, require(script["extensions.js"]))
local mergeResolversModule = require(script["merge-resolvers"])
Object.assign(exports, mergeResolversModule)
local typedefsMergersModule = require(script["typedefs-mergers"])
Object.assign(exports, typedefsMergersModule)
local extensionsModule = require(script.extensions)
Object.assign(exports, extensionsModule)
-- ROBLOX deviation END
-- ROBLOX deviation START: fix export types
-- return exports
return exports :: typeof(exports) & typeof(mergeResolversModule) & typeof(extensionsModule) & typeof(typedefsMergersModule)
-- ROBLOX deviation END
