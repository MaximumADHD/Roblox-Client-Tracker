-- Automated Dump of all statically declared type annotations injected into Roblox's Luau environment.
-- This does not include anything from stock Luau or Roblox's reflection system.

-- Types here are *not* guaranteed to be stable, bugs may come up that break this scanner.
-- If anything critical does disappear from here, file an issue at this link:
-- https://github.com/MaximumADHD/Roblox-Client-Tracker/issues


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


-- SECTION BEGIN: Reflection Adjacent

type NotificationInfo = {
    Title: string?,
    Text: string?,
    Icon: string?,
    Buttons: {NotificationButton}?,
    OnDisplay: (() -> any)?,
    OnDismiss: (() -> any)?
}

type Instances = { Instance }

type ProjectionParams = {
    Direction : Vector3,
    Position : Vector3,
    Size : Vector3,
    Up : Vector3
}

type BrushConfig = {
    AlphaBlendType : Enum.ImageAlphaType,
    BlendIntensity : number,
    ColorBlendType : Enum.ImageCombineType,
    FadeAngle : number,
    Decal : EditableImage
}

type BanConfigType = {
    Duration: number,
    DisplayReason: string,
    PrivateReason: string,
    ExcludeAltAccounts: boolean?,
    ApplyToUniverse: boolean?,
    UserIds: {number}
}

type UnbanConfigType = {
    UserIds: {number},
    ApplyToUniverse: boolean
}

type CaptureParams = {
    UICaptureMode: Enum.UICaptureMode,
    Metadata: string
}

type Creator = {
    CreatorId: number,
    CreatorType: Enum.CreatorType
}

type ReflectionClassFilter = {
  Security: SecurityCapabilities?, -- default: SecurityCapabilities.fromCurrent()
  IsA: string?, -- default: nil
  ExcludeDisplay: boolean?, -- default: false
}

type ReflectionMemberFilter = {
  Security: SecurityCapabilities?, -- default: SecurityCapabilities.fromCurrent()
  ExcludeInherited: boolean?, -- default: false
  ExcludeDisplay: boolean?, -- default: false
}

type ReflectionType = {
  EngineType: string,
  ScriptType: string?,
  EnumType: string?,
  InstanceType: string?
  -- ContentType: Enum.AssetType?,
}

type ReflectedProperty = {
  Name: string,
  Serialized: boolean,
  -- AliasFor: string?,

  Type: ReflectionType,
  ContentType: Enum.AssetType?,
  -- DefaultValue: any,
  -- MinValue: number?,
  -- MaxValue: number?

  Display: {
    Category: string,
    DeprecationMessage: string?,
    LayoutOrder: number,
  }?,
  Permits: {
    Read: SecurityCapabilities?,
    ReadParallel: SecurityCapabilities?,
    Write: SecurityCapabilities?,
    WriteParallel: SecurityCapabilities?,
  },
}

type ReflectedClass = {
  Name: string,
  Superclass: string?,
  Subclasses: {string},
  Display: {
    Category: string,
    DeprecationMessage: string?,
    LayoutOrder: number,
  }?,
  Permits: {
    GetService: SecurityCapabilities?,
    New: SecurityCapabilities?,
  }
}

type ReflectedProperties = { ReflectedProperty }

type ReflectedClasses = { ReflectedClass }

type ReflectedClassOrNil = ReflectedClass?

type LuauExecutionTaskInput = {
  BinaryInput: buffer?
}

type LuauExecutionTaskOutput = {
  ReturnValues: { any }?,
  BinaryOutput: buffer?
}

type RecommendationImpressionEventDetails = {
    Duration: number?,
    Weight: number?,
    ItemPosition: number?,
    DepartureIntent: Enum.RecommendationDepartureIntent?
}

type RecommendationActionEventDetails = {
    Weight: number?,
    DestinationPlaceId: number?,
    CommentText: string?,
    ReactionType: string?
}

type RecommendationItemContentAttribute = {
    AssetId: number?,
    Text: string?,
    Description: string?,
    SeekStartTime: number?,
    SeekEndTime: number?,
    TrimStartTime: number?,
    TrimEndTime: number?
}

type GenerateRecommendationItemListRequest = {
    ConfigName: string,
    LocationId: string?,
    PageSize: number?,
    BoostCustomTags: {string}?,
    CustomContexts: {[string]: string}?
}

type RecommendationItem = {
    ItemId: string,
    ReferenceId: string,
    TracingId: string,
    Creator: Creator?,
    Attributes: { RecommendationItemContentAttribute }?,
    CustomTags: { string }?
}

type RegisterRecommendationItemRequest = {
    ContentType: Enum.RecommendationItemContentType?,
    ReferenceId: string,
    Duration: number?,
    Attributes: { RecommendationItemContentAttribute }?,
    CustomTags: { string }?,
    Visibility: Enum.RecommendationItemVisibility?
}

type RegisterRecommendationItemResponse = {
    ItemId: string,
    ReferenceId: string
}

type UpdateRecommendationItemRequest = {
    ItemId: string,
    ReferenceId: string?,
    Creator: Creator?,
    Duration: number?,
    Visibility: Enum.RecommendationItemVisibility?,
    Attributes: { RecommendationItemContentAttribute }?,
    CustomTags: { string }?
}

type LinkSharingOptions = {
  FallbackLinkId: string?,
  ExpirationSeconds: number?,
  PreviewTitle: string?,
  PreviewDescription: string?,
  PreviewAssetId: number?,
  LaunchData: string?
}

type ReviewableContentEvent = {
    Id: string,
    Ref: string?,
    State: Enum.ReviewableContentState,
    ModerationResult: {
        Category: Enum.ModerationResultCategory,
        Labels: { Enum.ModerationResultLabel }?
    }?
}

type CreateReviewableContentParams = {
    Id: string?,
    Ref: string?,
    Content: {
        {
            Image: {
                UserId: number,
                ContentKey: string
            }?,
            Video: {
                UserId: number,
                ContentKey: string
            }?
        }
    }
}

type RequestReviewableContentReviewParams = {
    ReviewableContentId: string
}

type NumberArray = { number }

type PriceLevelInfo = {
    UserId: number,
    PriceLevel: number
}

type PriceLevelInfoArray = { PriceLevelInfo }

type VideoSamplerOptions = {
    Size: Enum.VideoSampleSize,
}

type VideoSample = {
    Time: number,
    Image: Content
}

type VideoSampleArray = { VideoSample }

type TelemetryConfig = {
  [string]: any
}

type TelemetryData = {
  [string]: any
}

type TelemetryDataOrNil = TelemetryData?

type AutoSetupAccessory = {
	AccessoryType: Enum.AccessoryType,
	IsLayered: boolean,
	Instance: Model,
}

type AutoSetupParams = {
	Body: Model?,
	Accessories: { AutoSetupAccessory },
}

type InfoTypeArray = { Enum.InfoType }

type ProductIdentifier = {
    Id: number,
    InfoType: Enum.InfoType
}

type ProductIdentifierArray = { ProductIdentifier }

type RankedItem = {
    ProductIdentifier: ProductIdentifier,
    ProductInfo: { [string]: any }
}

type RankedItemArray = { RankedItem }

type GenerateModelInputs = {
    TextPrompt: string,
    Size: Vector3?,
    MaxTriangles: number?,
    ShouldGenerateTextures: boolean?,
}

type GenerateModelSchema = {
    PredefinedSchema: string,
}


-- SECTION END: Reflection Adjacent
