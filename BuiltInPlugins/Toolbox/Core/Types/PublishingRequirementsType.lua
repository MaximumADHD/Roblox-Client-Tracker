--!strict
local PublishingRequirements = {}

export type PublishingRequirements = {
	publishing: {
		isAllowed: boolean,
		restrictions: { string },
	},
	verification: {
		isVerified: boolean,
		status: string,
		supportedTypes: { string },
	},
}

return PublishingRequirements
