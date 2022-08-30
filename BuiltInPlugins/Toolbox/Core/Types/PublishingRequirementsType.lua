--!strict
local PublishingRequirements = {}

export type PublishingRequirements = {
	publishing: {
		restrictions: { string },
		allowedSubTypes: { string },
		isAllowed: boolean,
	},
	verification: {
		isVerified: boolean,
		status: string,
		supportedTypes: { string },
	},
}

return PublishingRequirements
