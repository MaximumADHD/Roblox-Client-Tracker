local srcWorkspace = script.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local graphQLModule = require(rootWorkspace.GraphQL)
type DocumentNode = graphQLModule.DocumentNode
-- ROBLOX deviation: we're implementing TypedDocumentNode inline instead of importing it from a library
-- original: export { TypedDocumentNode } from '@graphql-typed-document-node/core';
export type TypedDocumentNode<Result = { [string]: any }, Variables = { [string]: any }> = DocumentNode
-- ROBLOX FIXME: intersecting types is forcing the key to be present even if it's optional. removing for now
--[[ *
    * This type is used to ensure that the variables you pass in to the query are assignable to Variables
    * and that the Result is assignable to whatever you pass your result to. The method is never actually
    * implemented, but the type is valid because we list it as optional
]]
-- & { __apiType: ((Variables) -> Result)? }

return {}
