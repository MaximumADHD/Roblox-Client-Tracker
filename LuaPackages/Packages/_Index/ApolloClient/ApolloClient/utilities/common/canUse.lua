-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/utilities/common/canUse.ts
-- ROBLOX deviation START: the upstream of this file would always return true in Roblox environment
return {
	canUseWeakMap = true,
	canUseWeakSet = false,
}
-- ROBLOX deviation END
