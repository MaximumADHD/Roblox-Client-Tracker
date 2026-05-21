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

type NotificationButton = {
    Text: string,
    ButtonType: Enum.NotificationButtonType,
    OnActivated: () -> any
}

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
    ApplyDeviceBlock: boolean?,
    UserIds: {number}
}

type UnbanConfigType = {
    UserIds: {number},
    ApplyToUniverse: boolean
}

type CaptureParams = {
    UICaptureMode: Enum.UICaptureMode
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

type ReflectionParameter = {
  Name: string,
  Type: ReflectionType,
  DefaultValue: any?
}

type ReflectedProperty = {
  Name: string,
  Serialized: boolean,
  Owner: string?,
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

type ReflectedMethod = {
  Name: string,
  Owner: string,
  Parameters: { ReflectionParameter },
  ReturnType: ReflectionType,
  CanYield: boolean,

  Display: {
    Category: string,
    DeprecationMessage: string?,
    LayoutOrder: number,
  }?,
  Permits: {
    Call: SecurityCapabilities?,
    CallParallel: SecurityCapabilities?,
  },
}

type ReflectedEvent = {
  Name: string,
  Owner: string,
  Parameters: { ReflectionParameter },

  Display: {
    Category: string,
    DeprecationMessage: string?,
    LayoutOrder: number,
  }?,
  Permits: {
    Listen: SecurityCapabilities?,
  },
}

type ReflectedClass = {
  Name: string,
  Serialized: boolean?,
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

type RecommendationItemStats = {
    Impressions: {
        ImpressionType: Enum.RecommendationImpressionType,
        Counts: number -- Number of total impressions.
    }?,
    Actions: {
        ActionType: Enum.RecommendationActionType,
        ReactionType: string?, -- Only set when ActionType = AddReaction or RemoveReaction.

        Counts: number -- Number of total actions.
    }?
}

type RecommendationItem = {
    ItemId: string,
    ReferenceId: string,
    TracingId: string,
    Creator: Creator?,
    Attributes: { RecommendationItemContentAttribute }?,
    CustomTags: { string }?,
    Stats: RecommendationItemStats?
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

type PriceLevelInfo = {
    UserId: number,
    PriceLevel: number
}

type VideoSamplerOptions = {
    Size: Enum.VideoSampleSize,
}

type StudioScreenshotOptions = {
    Position: Vector2?,
    CaptureSize: Vector2?,
    OutputSize: Vector2?,
    Format: Enum.StudioCaptureScreenshotFormat?,
    UICaptureMode: Enum.UICaptureMode?,
    ResampleMode: Enum.ResamplerMode?
}

type ScriptBreakpoint = {
    Line: number,
    Enabled: boolean?,
    Condition: string?,
    LogMessage: string?,
    ContinueExecution: boolean?
}

type ScriptBreakpointResult = {
    Verified: boolean,
    Line: number,
    Message: string?
}

type ScriptEvaluateResult = {
    Result: string,
    Type: string,
    VariablesReference: number
}

type ScriptResumeAction = {
    steppedType: Enum.DebuggerResumeType,
    threadId: number?
}

type DebugStackFrame = {
    Id: number,
    Name: string,
    ScriptPath: string,
    Line: number
}

type DebugStackTraceResult = {
    Frames: { DebugStackFrame },
    TotalFrames: number?
}

type ScriptDebugStopped = {
    Reason: Enum.ScriptStoppedReason,
    ThreadIds: { number },
    ExceptionText: string?
}

type ScriptDebugThread = {
    Id: number,
    Name: string
}

type ScriptVariable = {
    Name: string,
    Value: string,
    Type: string,
    Scope: Enum.ScriptVariableScope,
    VariablesReference: number
}

type VideoSample = {
    Time: number,
    Image: Content
}

type TelemetryConfig = {
  eventName: string,
  backends: { Enum.TelemetryBackend | string },
  throttlingPercentage: number?,
  lastUpdated: { number }?,
  description: string?,
  links: string?
}

type TelemetryData = {
  customFields: { [string]: any }?,
  standardizedFields: { Enum.TelemetryStandardizedField | string }?,
  eventContext: string?,
  legacyOverrideTargetForEventIngest: string?,
}

type AutoSetupAccessory = {
	AccessoryType: Enum.AccessoryType,
	IsLayered: boolean,
	Instance: Model,
}

type AutoSetupParams = {
	Body: Model?,
	Accessories: { AutoSetupAccessory },
}

type ProductIdentifier = {
    Id: number,
    InfoType: Enum.InfoType
}

type RankedItem = {
    ProductIdentifier: ProductIdentifier,
    ProductInfo: { [string]: any }
}

type GenerateModelInputs = {
    TextPrompt: string,
    Size: Vector3?,
    MaxTriangles: number?,
    ShouldGenerateTextures: boolean?,
}

type GenerateModelSchema = {
    PredefinedSchema: string,
}

type AccessoriesInfo = {
    AccessoryType : Enum.AccessoryType,
    AssetId : number,
    IsLayered : boolean?,

    Order : number?,
    Puffiness : number?,

    Position : Vector3?,
    Rotation : Vector3?,
    Scale : Vector3?,
}

type TerrainMergeConfig = {
    SolidOp : Enum.TerrainSolidMergeOperation,
    LiquidOp : Enum.TerrainLiquidMergeOperation,
    Magnitude : number?,
}

type GetCampaignEligibilityResult = { IsEligible: boolean }

type UniversalAppAdsEligibilityResult = { IsEligible: boolean }

type GetAdAvailabilityNowResult = {
    AdAvailabilityResult: Enum.AdAvailabilityResult,
}

type GetAdAvailabilityNowForUniverseResult = {
    AdAvailabilityResult: Enum.AdAvailabilityResult,
    ProductId: string?,
    ProductName: string?,
    ProductImageAssetId: string?,
    ExperimentVariantData: string?,
}

type InstanceCompositionResult = {
    Name: string,
    Size: number,
    Children: { { Name: string, Size: number, Children: { { Name: string, Size: number } } } },
}

type ScriptMemoryResult = {
    Name: string,
    Size: number,
    Children: { { Name: string, Size: number, Children: { { Name: string, Size: number, Children: { { Name: string, Size: number } } } } } },
}

type UnparentedInstancesResult = {
    Name: string,
    Size: number,
    Children: { { Name: string, Size: number, Children: { { Name: string, Size: number } } } },
}

type TriangleCompositionResult = {
    Name: string,
    Sizes: { [string]: number },
    Children: { { Name: string, Sizes: { [string]: number } } },
}

type AnimationMemoryResult = {
    Name: string,
    Size: number,
    Children: { { Name: string, Size: number, AssetId: string?, Owners: { { Name: string, ClassName: string } }?, Children: { any }? } },
}

type AudioMemoryResult = {
    Name: string,
    Size: number,
    Children: { { Name: string, Size: number, AssetId: string?, Owners: { { Name: string, ClassName: string } }?, Children: { any }? } },
}

type VirtualInputPointerAction = {
    Wheel: number?,
    Pan: Vector2?,
    Pinch: number?,
}


-- SECTION END: Reflection Adjacent
