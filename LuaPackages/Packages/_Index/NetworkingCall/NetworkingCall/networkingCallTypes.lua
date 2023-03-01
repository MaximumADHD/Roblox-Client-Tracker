--!strict
export type Config = {
	roduxNetworking: any,
	useMockedResponse: boolean,
}

export type Call = {
	userId: number,
	status: string,
}

export type GetCallListRequest = {}

export type GetCallListResponse = {
	callList: { [number]: Call },
}

export type RequestThunks = {
	GetCallList: GetCallListRequest,
}

return {}
