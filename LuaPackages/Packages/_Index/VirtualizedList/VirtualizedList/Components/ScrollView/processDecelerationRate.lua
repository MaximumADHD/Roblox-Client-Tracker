-- ROBLOX upstream: https://github.com/facebook/react-native/blob/v0.68.0-rc.2/Libraries/Components/ScrollView/processDecelerationRate.js
--[[*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @format
 * 
 ]]

--[[ ROBLOX deviation start: We are not using platform in Roblox
	upstream:
 	import Platform from '../../Utilities/Platform';
]]
local function processDecelerationRate(decelerationRate: number | "normal" | "fast")
	if decelerationRate == "normal" then
		--[[ upstream:
			return Platform.select({
				ios: 0.998,
				android: 0.985,
			});
		]]
		return 0.985
	elseif decelerationRate == "fast" then
		--[[ upstream:
			return Platform.select({
      ios: 0.99,
      android: 0.9,
    });
		]]
		return 0.9
	end

	return decelerationRate :: number
end
-- ROBLOX deviation end

return processDecelerationRate
