--[[
 * Copyright (c) 2019-2021 Ben Newman <ben@eloper.dev>
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX no upstream

local trieModule = require(script.trie)

export type Trie<Data> = trieModule.Trie<Data>

return trieModule
