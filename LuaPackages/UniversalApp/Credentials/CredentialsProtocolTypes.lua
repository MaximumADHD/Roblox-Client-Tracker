local CorePackages = game:GetService("CorePackages")
local Types = require(CorePackages.Workspace.Packages.MessageBus)

export type CredentialsProtocol = {
    CredentialsTypes: {
        FIDO2: "FIDO2",
    },
    GET_CREDENTIALS_REQUEST_DESCRIPTOR: {
        FIDO2: Types.MessageDescriptor,
    },
    GET_CREDENTIALS_RESPONSE_DESCRIPTOR: {
        FIDO2: Types.MessageDescriptor,
    },
    REGISTER_CREDENTIALS_REQUEST_DESCRIPTOR: {
        FIDO2: Types.MessageDescriptor,
    },
    REGISTER_CREDENTIALS_RESPONSE_DESCRIPTOR: {
        FIDO2: Types.MessageDescriptor,
    },
    IS_AVAILABLE_REQUEST_DESCRIPTOR: Types.MessageDescriptor,
    IS_AVAILABLE_RESPONSE_DESCRIPTOR: Types.MessageDescriptor,

    getCredentials: (CredentialsProtocol, credType: string, data: string, timeoutSeconds: number) -> Types.Promise<string?>,
    registerCredentials: (CredentialsProtocol, credType: string, data: string, timeoutSeconds: number) -> Types.Promise<string?>,
    isAvailable: (CredentialsProtocol, credType: string, timeoutSeconds: number) -> Types.Promise<boolean>,

    subscriber: Types.Subscriber,
    getCredentialsRequestInFlight: boolean,
    registerCredentialsRequestInFlight: boolean,
}

return nil
