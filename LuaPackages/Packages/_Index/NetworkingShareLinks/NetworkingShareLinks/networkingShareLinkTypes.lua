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

type AvatarItemDetailsData = {
	status: string,
	itemId: string,
	itemType: string
}

export type GenerateLinkRequest = {
	instanceId: string?,
	launchData: string?,
	linkType: string,
	placeId: number?,
	itemType: string?,
	itemId: string?,
	postId: string?,
	postCreatorId: number?
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
	experienceInviteData: ExperienceInviteData?,
	avatarItemDetailsData: AvatarItemDetailsData?,
}

export type RequestThunks = {
	GenerateLink: GenerateLinkRequest,
	ResolveLinkFromLinkId: ResolveLinkRequest,
}

return {}
