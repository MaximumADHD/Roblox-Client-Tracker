export type UserModel = {
    id: string,
    username: string,
    displayName: string,
    hasVerifiedBadge: boolean,
}

export type Reducer = {
    byUserId: {[string]: { UserModel } },
    byUsername: { [string]: string },
}

return {}
