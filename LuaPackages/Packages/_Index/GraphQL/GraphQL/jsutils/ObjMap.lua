--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/ObjMap.js
export type ObjMap<T> = { [string]: T }
export type ObjMapLike<T> = ObjMap<T> | { [string]: T }

export type ReadOnlyObjMap<T> = { [string]: T }
export type ReadOnlyObjMapLike<T> = ReadOnlyObjMap<T> | { [string]: T }

return {}
