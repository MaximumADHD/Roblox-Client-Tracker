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
    -- Note: the server is not yet populating this.
	universeId: number?,
}

export type GenerateLinkRequest = {
	linkType: string,
}

export type GenerateLinkResponse = {
	linkId: string,
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
