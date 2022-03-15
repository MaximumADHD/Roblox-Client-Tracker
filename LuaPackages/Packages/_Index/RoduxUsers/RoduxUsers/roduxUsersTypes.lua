export type UserModel = {
    id: string,
    username: string,
    displayName: string,
}

export type Reducer = {
    byUserId: {[string]: { UserModel } },
    byUsername: { [string]: string },
}

return {}
