--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/00d4efea7f5b44088356798afff0317880605f4d/src/utilities/getIntrospectionQuery.js
-- ROBLOX note: resolving the default generic arg TODOs in here will require improved support for recursive generic types in Luau
local rootWorkspace = script.Parent.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
local Object = LuauPolyfill.Object
type Array<T> = LuauPolyfill.Array<T>

local directiveLocationModule = require(script.Parent.Parent.language.directiveLocation)
type DirectiveLocationEnum = directiveLocationModule.DirectiveLocationEnum

export type IntrospectionOptions = {
	-- Whether to include descriptions in the introspection result.
	-- Default: true
	descriptions: boolean?,

	-- Whether to include `specifiedByUrl` in the introspection result.
	-- Default: false
	specifiedByUrl: boolean?,

	-- Whether to include `isRepeatable` field on directives.
	-- Default: false
	directiveIsRepeatable: boolean?,

	-- Whether to include `description` field on schema.
	-- Default: false
	schemaDescription: boolean?,

	-- Whether target GraphQL server support deprecation of input values.
	-- Default: false
	inputValueDeprecation: boolean?,
}

function getIntrospectionQuery(options: IntrospectionOptions?): string
	local optionsWithDefault = Object.assign({
		descriptions = true,
		specifiedByUrl = false,
		directiveIsRepeatable = false,
		schemaDescription = false,
		inputValueDeprecation = false,
	}, options)

	local descriptions = if optionsWithDefault.descriptions then "description" else ""
	local specifiedByUrl = if optionsWithDefault.specifiedByUrl then "specifiedByUrl" else ""
	local directiveIsRepeatable = if optionsWithDefault.directiveIsRepeatable
		then "isRepeatable"
		else ""
	local schemaDescription = if optionsWithDefault.schemaDescription then descriptions else ""

	local function inputDeprecation(str)
		return if optionsWithDefault.inputValueDeprecation then str else ""
	end

	return ([[

    query IntrospectionQuery {
      __schema {
        %s
        queryType { name }
        mutationType { name }
        subscriptionType { name }
        types {
          ...FullType
        }
        directives {
          name
          %s
          %s
          locations
          args%s {
            ...InputValue
          }
        }
      }
    }

    fragment FullType on __Type {
      kind
      name
      %s
      %s
      fields(includeDeprecated: true) {
        name
        %s
        args%s {
          ...InputValue
        }
        type {
          ...TypeRef
        }
        isDeprecated
        deprecationReason
      }
      inputFields%s {
        ...InputValue
      }
      interfaces {
        ...TypeRef
      }
      enumValues(includeDeprecated: true) {
        name
        %s
        isDeprecated
        deprecationReason
      }
      possibleTypes {
        ...TypeRef
      }
    }

    fragment InputValue on __InputValue {
      name
      %s
      type { ...TypeRef }
      defaultValue
      %s
      %s
    }

    fragment TypeRef on __Type {
      kind
      name
      ofType {
        kind
        name
        ofType {
          kind
          name
          ofType {
            kind
            name
            ofType {
              kind
              name
              ofType {
                kind
                name
                ofType {
                  kind
                  name
                  ofType {
                    kind
                    name
                  }
                }
              }
            }
          }
        }
      }
    }
  ]]):format(
		schemaDescription,
		descriptions,
		directiveIsRepeatable,
		inputDeprecation("(includeDeprecated: true)"),
		descriptions,
		specifiedByUrl,
		descriptions,
		inputDeprecation("(includeDeprecated: true)"),
		inputDeprecation("(includeDeprecated: true)"),
		descriptions,
		descriptions,
		inputDeprecation("isDeprecated"),
		inputDeprecation("deprecationReason")
	)
end

export type IntrospectionQuery = {
	__schema: IntrospectionSchema,
}

export type IntrospectionSchema = {
	description: string?,
	queryType: IntrospectionNamedTypeRef<IntrospectionObjectType>,
	mutationType: IntrospectionNamedTypeRef<IntrospectionObjectType>?,
	subscriptionType: IntrospectionNamedTypeRef<IntrospectionObjectType>?,
	types: Array<IntrospectionType>,
	directives: Array<IntrospectionDirective>,
}

export type IntrospectionType =
	IntrospectionScalarType
	| IntrospectionObjectType
	| IntrospectionInterfaceType
	| IntrospectionUnionType
	| IntrospectionEnumType
	| IntrospectionInputObjectType

export type IntrospectionOutputType =
	IntrospectionScalarType
	| IntrospectionObjectType
	| IntrospectionInterfaceType
	| IntrospectionUnionType
	| IntrospectionEnumType

export type IntrospectionInputType =
	IntrospectionScalarType
	| IntrospectionEnumType
	| IntrospectionInputObjectType

export type IntrospectionScalarType = {
	kind: string, -- ROBLOX TODO: Luau doesn't support concrete values as type: 'SCALAR',
	name: string,
	description: string?,
	specifiedByUrl: string?,
}

export type IntrospectionObjectType = {
	kind: string, -- ROBLOX TODO: Luau doesn't support concrete values as type:  'OBJECT',
	name: string,
	description: string?,
	fields: Array<IntrospectionField>,
	interfaces: Array<IntrospectionNamedTypeRef<IntrospectionInterfaceType>>,
}

export type IntrospectionInterfaceType = {
	kind: string, -- ROBLOX TODO: Luau doesn't support concrete values as type:  'INTERFACE',
	name: string,
	description: string?,
	fields: Array<IntrospectionField>,
	interfaces: Array<IntrospectionNamedTypeRef<IntrospectionInterfaceType>>,
	possibleTypes: Array<IntrospectionNamedTypeRef<IntrospectionObjectType>>,
}

export type IntrospectionUnionType = {
	kind: string, -- ROBLOX TODO: Luau doesn't support concrete values as type:  'UNION',
	name: string,
	description: string?,
	possibleTypes: Array<IntrospectionNamedTypeRef<IntrospectionObjectType>>,
}

export type IntrospectionEnumType = {
	kind: string, -- ROBLOX TODO: Luau doesn't support concrete values as type:  'ENUM',
	name: string,
	description: string?,
	enumValues: Array<IntrospectionEnumValue>,
}

export type IntrospectionInputObjectType = {
	kind: string, -- ROBLOX TODO: Luau doesn't support concrete values as type:  'INPUT_OBJECT',
	name: string,
	description: string?,
	inputFields: Array<IntrospectionInputValue>,
}

-- ROBLOX TODO Luau: CLI-53241 using upstream default type introduces Recursive type being used with different parameters
export type IntrospectionListTypeRef<T = any> = {
	kind: string, -- ROBLOX TODO: Luau doesn't support concrete values as type:  'LIST',
	ofType: T,
}

-- ROBLOX TODO Luau: CLI-53241 using upstream default type introduces Recursive type being used with different parameters
export type IntrospectionNonNullTypeRef<T = any> = {
	kind: string, -- ROBLOX TODO: Luau doesn't support concrete values as type: 'NON_NULL',
	ofType: T,
}

export type IntrospectionTypeRef =
	IntrospectionNamedTypeRef
	| IntrospectionListTypeRef
	| IntrospectionNonNullTypeRef<IntrospectionNamedTypeRef | IntrospectionListTypeRef>

export type IntrospectionOutputTypeRef =
	IntrospectionNamedTypeRef<IntrospectionOutputType>
	| IntrospectionListTypeRef<IntrospectionOutputTypeRef>
	| IntrospectionNonNullTypeRef<
		IntrospectionNamedTypeRef<IntrospectionOutputType>
		| IntrospectionListTypeRef<IntrospectionOutputTypeRef>
	>

export type IntrospectionInputTypeRef =
	IntrospectionNamedTypeRef<IntrospectionInputType>
	| IntrospectionListTypeRef<IntrospectionInputTypeRef>
	| IntrospectionNonNullTypeRef<
		IntrospectionNamedTypeRef<IntrospectionInputType>
		| IntrospectionListTypeRef<IntrospectionInputTypeRef>
	>

-- ROBLOX TODO Luau: CLI-53241 using upstream default type introduces Recursive type being used with different parameters
export type IntrospectionNamedTypeRef<T = any> = {
	kind: any, -- ROBLOX deviation: Luau doesn't support this type spec: $PropertyType<T, 'kind'>,
	name: string,
}

export type IntrospectionField = {
	name: string,
	description: string?,
	args: Array<IntrospectionInputValue>,
	type: IntrospectionOutputTypeRef,
	isDeprecated: boolean,
	deprecationReason: string?,
}

export type IntrospectionInputValue = {
	name: string,
	description: string?,
	type: IntrospectionInputTypeRef,
	defaultValue: string?,
	isDeprecated: boolean?,
	deprecationReason: string?,
}

export type IntrospectionEnumValue = {
	name: string,
	description: string?,
	isDeprecated: boolean,
	deprecationReason: string?,
}

export type IntrospectionDirective = {
	name: string,
	description: string?,
	isRepeatable: boolean?,
	locations: Array<DirectiveLocationEnum>,
	args: Array<IntrospectionInputValue>,
}

return {
	getIntrospectionQuery = getIntrospectionQuery,
}
