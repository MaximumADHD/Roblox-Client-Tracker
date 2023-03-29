-- ROBLOX upstream: https://github.com/ardatan/graphql-tools/blob/release-1666533990323/packages/utils/src/parse-graphql-json.ts
local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
-- ROBLOX deviation START: not used
-- local Array = LuauPolyfill.Array
-- ROBLOX deviation END
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local exports = {}
local graphqlModule = require(Packages.GraphQL)
local buildClientSchema = graphqlModule.buildClientSchema
-- ROBLOX deviation START: use types
-- local ParseOptions = graphqlModule.ParseOptions
-- local Source = require(script.Parent["loaders.js"]).Source
-- local SchemaPrintOptions = require(script.Parent["types.js"]).SchemaPrintOptions
type ParseOptions = graphqlModule.ParseOptions
local loadersModule = require(script.Parent.loaders)
type Source = loadersModule.Source
local typesModule = require(script.Parent.types)
type SchemaPrintOptions = typesModule.SchemaPrintOptions
-- ROBLOX deviation END
-- ROBLOX deviation START: add additional dependencies
local String = LuauPolyfill.String
local JSON = require(script.Parent.json)
-- ROBLOX deviation END
local function stripBOM(content: string): string
	content = tostring(content) -- Remove byte order marker. This catches EF BB BF (the UTF-8 BOM)
	-- because the buffer-to-string conversion in `fs.readFileSync()`
	-- translates it to FEFF, the UTF-16 BOM.
	-- ROBLOX deviation START: use String.charCodeAt and 1-based indexing
	-- if content:charCodeAt(0) == 0xfeff then
	if String.charCodeAt(content, 1) == 0xfeff then
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use String.slice and 1-based indexing
		-- content = Array.slice(content, 1) --[[ ROBLOX CHECK: check if 'content' is an Array ]]
		content = String.slice(content, 2)
		-- ROBLOX deviation END
	end
	return content
end
local function parseBOM(content: string): any
	return JSON.parse(stripBOM(content))
end
local function parseGraphQLJSON(
	location: string,
	jsonContent: string,
	options: SchemaPrintOptions & ParseOptions
): Source
	local parsedJson = parseBOM(jsonContent)
	if Boolean.toJSBoolean(parsedJson.data) then
		parsedJson = parsedJson.data
	end
	if parsedJson.kind == "Document" then
		return { location = location, document = parsedJson }
	elseif Boolean.toJSBoolean(parsedJson.__schema) then
		local schema = buildClientSchema(parsedJson, options)
		return { location = location, schema = schema }
	elseif typeof(parsedJson) == "string" then
		return { location = location, rawSDL = parsedJson }
	end
	error(Error.new("Not valid JSON content"))
end
exports.parseGraphQLJSON = parseGraphQLJSON
return exports
