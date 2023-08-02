--!strict
export type Config = {
	roduxNetworking: any,
	useMockedResponse: boolean,
}

type ExperienceInviteData = {
	status: string,
	inviterId: number?,
	placeId: number?,
	instanceId: string?,
	universeId: number?,
}

export type GenerateLinkRequest = {
	instanceId: string?,
	linkType: string,
	placeId: number?,
}

export type GenerateLinkResponse = {
	linkId: string,
	shortUrl: string,
}

export type ResolveLinkRequest = {
	linkId: string,
	linkType: string,
}

export type ResolveLinkResponse = {
	experienceInviteData: ExperienceInviteData,
}

export type RequestThunks = {
	GenerateLink: GenerateLinkRequest,
	ResolveLinkFromLinkId: ResolveLinkRequest,
}

return {}
