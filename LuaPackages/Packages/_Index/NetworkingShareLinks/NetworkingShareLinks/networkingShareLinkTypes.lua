--!strict
export type Config = {
	roduxNetworking: any,
	useMockedResponse: boolean,
}

type ExperienceInviteLinkMetadata = {
    inviterId: number,
    placeId: number,
    instanceId: string,
}

type ExperienceInviteLinkInfo = {
    linkState: string,
    linkMetadata: ExperienceInviteLinkMetadata,
}

export type GenerateLinkRequest = {
    linkType: string,
}

export type GenerateLinkResponse = {
    linkId: number,
}

export type ResolveLinkRequest = {
    linkId: number,
    linkType: string,
}

type ResolveExperienceInviteLinkResponse = {
    linkStatus: string,
    linkInfo: ExperienceInviteLinkInfo,
}

export type ResolveLinkResponse = ResolveExperienceInviteLinkResponse

export type RequestThunks = {
	ResolveLinkRequest: any,
}

return {}
