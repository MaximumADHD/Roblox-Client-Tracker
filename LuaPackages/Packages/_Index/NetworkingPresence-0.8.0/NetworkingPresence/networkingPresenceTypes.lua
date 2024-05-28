export type Config = {
	roduxNetworking: any,
}

export type UserId = string | number

export type UserIds = { UserId }

export type GetPresencesFromUserIdsRequest = {
	API: (userIds: UserIds) -> any,
	[string]: any,
}

export type RequestThunks = {
	GetPresencesFromUserIds: GetPresencesFromUserIdsRequest,
}

return {}
