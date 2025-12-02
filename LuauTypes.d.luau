-- Automated Dump of all statically declared type annotations injected into Roblox's Luau environment.
-- This does not include anything from stock Luau or Roblox's reflection system.

-- Types here are *not* guaranteed to be stable, bugs may come up that break this scanner.
-- If anything critical does disappear from here, file an issue at this link:
-- https://github.com/MaximumADHD/Roblox-Client-Tracker/issues

----------------------------------------------
-- Offset: 7BA4E79
----------------------------------------------

-- SECTION BEGIN: RobloxGlobals


declare function wait(delay: number?): (number, number)
declare Wait: typeof(wait)

declare function delay(delay: number?, callback: () -> ())
declare Delay: typeof(delay)

declare function elapsedTime(): number
declare ElapsedTime: typeof(elapsedTime)

declare function tick(): number
declare function time(): number

declare function version(): string
declare Version: typeof(version)

declare function printidentity(prefix: string?)

declare function collectgarbage(mode: string): number

declare function stats()
declare Stats: typeof(stats)

declare script: any
declare plugin: Plugin
declare game: any
declare Game: any
declare workspace: any
declare Workspace: any
declare shared: any

declare task: {
    synchronize: () -> (),
    desynchronize: () -> (),
    defer: <A..., R...>(threadOrFunction: thread | (A...) -> R..., A...) -> thread,
    spawn: <A..., R...>(threadOrFunction: thread | (A...) -> R..., A...) -> thread,
    delay: <A..., R...>(duration: number?, threadOrFunction: thread | (A...) -> R..., A...) -> thread,
    wait: (duration: number?) -> number,
    cancel: (thread: thread) -> (),
}



-- SECTION END: RobloxGlobals

----------------------------------------------
-- Offset: 7BA52D9
----------------------------------------------

-- SECTION BEGIN: TestEZ


type Expectation = {
	be: Expectation,
	to: Expectation,
	been: Expectation,
	have: Expectation,
	was: Expectation,
	at: Expectation,
	never: Expectation,

	a: (any) -> Expectation,
	ok: () -> Expectation,
	equal: (any) -> Expectation,
	near: (number, number?) -> Expectation,
	throw: (string?) -> Expectation,
}

declare function describe(name: string, callback: () -> ())
declare xdescribe: typeof(describe)
declare describeSKIP: typeof(describe)

declare function it(name: string, callback: () -> ())
declare xit: typeof(it)
declare itSKIP: typeof(it)
declare itFIXME: typeof(it)

declare function SKIP()
declare function HACK_NO_XPCALL()

declare function expect(value: any): Expectation
declare function fail(message: string)

type EachFunction = (any?) -> ()

declare function beforeEach(eachFn: EachFunction)
declare function afterEach(eachFn: EachFunction)
declare function beforeAll(eachFn: EachFunction)
declare function afterAll(eachFn: EachFunction)



-- SECTION END: TestEZ

----------------------------------------------
-- Offset: 7BA56A9
----------------------------------------------

-- SECTION BEGIN: BehaviorScript

    type Behavior = {
        DeclareField: (fieldName: string, {Type: "boolean" | "cframe" | "color3" | "enum" | "number" | "instance" | "random" | "vector2" | "vector3"}) -> (),
        OnStop: (self: Behavior) -> (),

        Delay: (self: Behavior, seconds: number, methodName: string, ...any) -> (),
        SetMaxFrequency: (self: Behavior, frequency: number) -> (),
        Publish: (self: Behavior, topicName: string, ...any) -> (),
        Subscribe: (self: Behavior, topicName: string, functionName: string) -> (),

        [string]: any
    }

    declare Behavior: Behavior


-- SECTION END: BehaviorScript

----------------------------------------------
-- Offset: 7BA58F9
----------------------------------------------
        type Instances = { Instance }
----------------------------------------------
-- Offset: 7BA5919
----------------------------------------------
        type ProjectionParams = {
            Direction : Vector3,
            Position : Vector3,
            Size : Vector3,
            Up : Vector3
        }
----------------------------------------------
-- Offset: 7BA59B9
----------------------------------------------
        type BrushConfig = {
            AlphaBlendType : Enum.ImageAlphaType,
            BlendIntensity : number,
            ColorBlendType : Enum.ImageCombineType,
            FadeAngle : number,
            Decal : EditableImage
        }
----------------------------------------------
-- Offset: 7BA5AA9
----------------------------------------------
        type BanConfigType = {
	        Duration: number,
	        DisplayReason: string,
	        PrivateReason: string,
	        ExcludeAltAccounts: boolean?,
	        ApplyToUniverse: boolean?,
	        UserIds: {number}
        }
----------------------------------------------
-- Offset: 7BA5B89
----------------------------------------------
        type UnbanConfigType = {
	        UserIds: {number},
	        ApplyToUniverse: boolean
        }
----------------------------------------------
-- Offset: 7BA5BE9
----------------------------------------------
        type NotificationButton = {
            Text: string,
            ButtonType: Enum.NotificationButtonType,
            OnActivated: () -> any
        }
----------------------------------------------
-- Offset: 7BA5C89
----------------------------------------------
        type NotificationInfo = {
            Title: string?,
            Text: string?,
            Icon: string?,
            Buttons: {NotificationButton}?,
            OnDisplay: (() -> any)?,
            OnDismiss: (() -> any)?
        }
----------------------------------------------
-- Offset: 7BA5D79
----------------------------------------------
        type CaptureParams = {
            UICaptureMode: Enum.UICaptureMode,
            Metadata: string
        }
----------------------------------------------
-- Offset: 7BA5DE9
----------------------------------------------
        type RecommendationImpressionEventDetails = {
            Duration: number?,
            Weight: number?,
            ItemPosition: number?
        }
----------------------------------------------
-- Offset: 7BA5E89
----------------------------------------------
        type RecommendationActionEventDetails = {
            Weight: number?,
            DestinationPlaceId: number?,
            CommentText: string?,
            ReactionType: string?
        }
----------------------------------------------
-- Offset: 7BA5F49
----------------------------------------------
        type RecommendationItemContentAttribute = {
            AssetId: number?,
            Text: string?,
            Description: string?,
            SeekStartTime: number?,
            SeekEndTime: number?,
            TrimStartTime: number?,
            TrimEndTime: number?
        }
----------------------------------------------
-- Offset: 7BA6069
----------------------------------------------
        type GenerateRecommendationItemListRequest = {
            ConfigName: string,
            LocationId: string?,
            PageSize: number?,
            BoostCustomTags: {string}?,
            CustomContexts: {[string]: string}?
        }
----------------------------------------------
-- Offset: 7BA6159
----------------------------------------------
        type Creator = {
            CreatorId: number,
            CreatorType: Enum.CreatorType
        }
----------------------------------------------
-- Offset: 7BA61B9
----------------------------------------------
        type RecommendationItem = {
            ItemId: string,
            ReferenceId: string,
            TracingId: string,
            Creator: Creator?,
            Attributes: { RecommendationItemContentAttribute }?,
            CustomTags: { string }?
        }
----------------------------------------------
-- Offset: 7BA62C9
----------------------------------------------
        type RegisterRecommendationItemRequest = {
            ReferenceId: string,
            Duration: number?,
            Attributes: { RecommendationItemContentAttribute }?,
            CustomTags: { string }?,
            Visibility: Enum.RecommendationItemVisibility?
        }
----------------------------------------------
-- Offset: 7BA63E9
----------------------------------------------
        type RegisterRecommendationItemResponse = {
            ItemId: string,
            ReferenceId: string
        }
----------------------------------------------
-- Offset: 7BA6459
----------------------------------------------
        type UpdateRecommendationItemRequest = {
            ItemId: string,
            ReferenceId: string?,
            Creator: Creator?,
            Duration: number?,
            Visibility: Enum.RecommendationItemVisibility?,
            Attributes: { RecommendationItemContentAttribute }?,
            CustomTags: { string }?
        }
----------------------------------------------
-- Offset: 7BA65A9
----------------------------------------------
        type LuauExecutionTaskInput = {
            BinaryInput: buffer?
        }
----------------------------------------------
-- Offset: 7BA65F9
----------------------------------------------
        type LuauExecutionTaskOutput = {
            ReturnValues: { any }?,
            BinaryOutput: buffer?
        }
