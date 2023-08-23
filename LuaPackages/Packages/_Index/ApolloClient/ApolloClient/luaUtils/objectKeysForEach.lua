--[[
 * Copyright (c) Roblox Corporation
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
return function<T, U>(obj: { [T]: U }, callback: (T) -> ())
	for key, _ in obj do
		callback(key)
	end
end
