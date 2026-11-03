-- The rules a profile configures, collected by a Builder: the default rules first, then each
-- extension's extendAdapter in list order. A later rule for a kind replaces an earlier one, as a
-- later node renderer does in CommonMark.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local AdapterTypes = require(script.Parent.AdapterTypes)
local CommonMark = require(Packages.CommonMark)

type AdapterExtension = AdapterTypes.AdapterExtension
type Attributes = AdapterTypes.Attributes
type BlockInTextPolicy = AdapterTypes.BlockInTextPolicy
type BlockRule = AdapterTypes.BlockRule
type Builder = AdapterTypes.Builder
type Extension = AdapterTypes.Extension
type Fallback = AdapterTypes.Fallback
type Handler = AdapterTypes.Handler
type InlineRule = AdapterTypes.InlineRule
type ParserNode = CommonMark.Node
type PassName = AdapterTypes.PassName

export type Form = "children" | "drop" | "handler" | "style" | "text" | "as"

-- A rule in one shape, whatever form it was registered in
export type Rule = {
	form: Form,
	handler: Handler?,
	style: string?,
	text: ((node: ParserNode) -> string)?,
	as: string?,
	attributes: ((node: ParserNode) -> Attributes?)?,
}

export type Registry = {
	inline: { [string]: Rule },
	block: { [string]: Rule },
	unknownInline: Rule,
	unknownBlock: Rule,
	blockInText: BlockInTextPolicy,
	passes: Passes,
}

export type Passes = {
	mergeText: boolean,
	dropEmpty: boolean,
}

-- AdapterTypes.AsName: the blocks whose content is the node's adapted children
local AS_NAMES = table.freeze({
	PARAGRAPH = true,
	HEADING = true,
	QUOTE = true,
})

local STYLES = table.freeze({
	BOLD = true,
	BOLD_2 = true,
	ITALIC = true,
	ITALIC_2 = true,
	UNDERLINE = true,
	STRIKE = true,
	INLINE_CODE = true,
})

local CHILDREN: Rule = table.freeze({ form = "children" :: Form })
local DROP: Rule = table.freeze({ form = "drop" :: Form })

local function policyRule(policy: string, what: string): Rule
	if policy == "children" then
		return CHILDREN
	elseif policy == "drop" then
		return DROP
	end
	error(`{what} must be "children" or "drop", not {policy}`)
end

local function commonRule(kind: string, rule: any): Rule?
	if rule == "children" then
		return CHILDREN
	elseif rule == "drop" then
		return DROP
	elseif type(rule) == "function" then
		return table.freeze({ form = "handler" :: Form, handler = rule })
	elseif type(rule) ~= "table" then
		error(`The rule for {kind} must be "children", "drop", a function or a table`)
	end
	return nil
end

local function inlineRule(kind: string, rule: InlineRule): Rule
	local spec: any = rule
	local common = commonRule(kind, spec)
	if common ~= nil then
		return common
	elseif spec.style ~= nil then
		if not STYLES[spec.style] then
			error(`The rule for {kind} has an unknown style {spec.style}`)
		end
		return table.freeze({ form = "style" :: Form, style = spec.style })
	elseif type(spec.text) == "function" then
		return table.freeze({ form = "text" :: Form, text = spec.text })
	end
	error(`The inline rule for {kind} needs a style or a text function`)
end

local function blockRule(kind: string, rule: BlockRule): Rule
	local spec: any = rule
	local common = commonRule(kind, spec)
	if common ~= nil then
		return common
	elseif not AS_NAMES[spec.as] then
		error(
			`The block rule for {kind} needs \`as\` a renderer block name that holds its children (PARAGRAPH, HEADING or QUOTE), not {spec.as}`
		)
	elseif spec.attributes ~= nil and type(spec.attributes) ~= "function" then
		error(`The block rule for {kind} has attributes that aren't a function`)
	end
	return table.freeze({ form = "as" :: Form, as = spec.as, attributes = spec.attributes })
end

local RegistryBuilder = {}
RegistryBuilder.__index = RegistryBuilder

type RegistryBuilderFields = {
	_registry: Registry,
	inline: (self: RegistryBuilder, kind: string, rule: InlineRule) -> (),
	block: (self: RegistryBuilder, kind: string, rule: BlockRule) -> (),
	fallback: (self: RegistryBuilder, fallback: Fallback) -> (),
	pass: (self: RegistryBuilder, name: PassName, enabled: boolean) -> (),
}

type RegistryBuilder = typeof(setmetatable({} :: RegistryBuilderFields, RegistryBuilder))

function RegistryBuilder.new(): RegistryBuilder
	local registry: Registry = {
		inline = {},
		block = {},
		unknownInline = CHILDREN,
		unknownBlock = CHILDREN,
		blockInText = "flatten",
		passes = { mergeText = true, dropEmpty = true },
	}
	return setmetatable({ _registry = registry }, RegistryBuilder) :: any
end

function RegistryBuilder.inline(self: RegistryBuilder, kind: string, rule: InlineRule)
	self._registry.inline[kind] = inlineRule(kind, rule)
end

function RegistryBuilder.block(self: RegistryBuilder, kind: string, rule: BlockRule)
	self._registry.block[kind] = blockRule(kind, rule)
end

function RegistryBuilder.fallback(self: RegistryBuilder, fallback: Fallback)
	local registry = self._registry
	if fallback.unknownInline ~= nil then
		registry.unknownInline = policyRule(fallback.unknownInline, "unknownInline")
	end
	if fallback.unknownBlock ~= nil then
		registry.unknownBlock = policyRule(fallback.unknownBlock, "unknownBlock")
	end
	local blockInText = fallback.blockInText
	if blockInText ~= nil then
		if blockInText ~= "flatten" and blockInText ~= "drop" then
			error(`blockInText must be "flatten" or "drop", not {blockInText}`)
		end
		registry.blockInText = blockInText
	end
end

function RegistryBuilder.pass(self: RegistryBuilder, name: PassName, enabled: boolean)
	local passes = self._registry.passes
	if name == "mergeText" then
		passes.mergeText = enabled
	elseif name == "dropEmpty" then
		passes.dropEmpty = enabled
	else
		error(`Unknown adapter pass {name}`)
	end
end

local Registry = {}

-- `defaults` registers the profile-independent rules before any extension's.
function Registry.build(defaults: (builder: Builder) -> (), extensions: { Extension }): Registry
	local registryBuilder = RegistryBuilder.new()
	local builder: Builder = registryBuilder :: any
	defaults(builder)
	for _, extension in extensions do
		local extendAdapter = (extension :: AdapterExtension).extendAdapter
		if extendAdapter ~= nil then
			extendAdapter(builder)
		end
	end
	local registry = registryBuilder._registry
	table.freeze(registry.inline)
	table.freeze(registry.block)
	table.freeze(registry.passes)
	return table.freeze(registry)
end

return Registry
