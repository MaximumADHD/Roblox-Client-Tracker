--!strict
export type MethodType = "GET" | "POST" | "PATCH" | "DELETE" | "PUT" | string
export type ConfigOptions = {
    keyPath: string,
    networkImpl: (string, MethodType, any) -> (any),
    killRequestWithFilteredIds: boolean?,
}

return true
