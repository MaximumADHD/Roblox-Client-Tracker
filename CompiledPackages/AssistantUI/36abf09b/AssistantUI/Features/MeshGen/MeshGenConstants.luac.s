MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MeshGen"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["MeshGenTypes"]
       11 CALL                             R1 1 1
       12 DUPTABLE                         R2 K16 [{["GeneratingMesh"] = "GeneratingMesh", ["GeneratingTexture"] = "GeneratingTexture", ["GenerationFailed"] = "GenerationFailed", ["Generated"] = "Generated", ["Publishing"] = "Publishing", ["PublishFailed"] = "PublishFailed", ["Published"] = "Published", ["Inserting"] = "Inserting", ["InsertFailed"] = "InsertFailed"}]
       13 DUPTABLE                         R3 K20 [{["GenerationFailed"] = "GenerationFailed", ["GenerationModerated"] = "GenerationModerated", ["GenerationCanceled"] = "GenerationCanceled", ["PublishFailed"] = "PublishFailed", ["AssetPermissionCreationFailed"] = "AssetPermissionCreationFailed", ["InsertFailed"] = "InsertFailed"}]
       14 NEWTABLE                         R4 8 0
       16 GETTABLEKS                       R5 R3 K9 ["GenerationFailed"]
       18 GETTABLEKS                       R6 R2 K9 ["GenerationFailed"]
       20 SETTABLE                         R6 R4 R5
       21 GETTABLEKS                       R5 R3 K17 ["GenerationModerated"]
       23 GETTABLEKS                       R6 R2 K9 ["GenerationFailed"]
       25 SETTABLE                         R6 R4 R5
       26 GETTABLEKS                       R5 R3 K18 ["GenerationCanceled"]
       28 GETTABLEKS                       R6 R2 K9 ["GenerationFailed"]
       30 SETTABLE                         R6 R4 R5
       31 GETTABLEKS                       R5 R3 K12 ["PublishFailed"]
       33 GETTABLEKS                       R6 R2 K12 ["PublishFailed"]
       35 SETTABLE                         R6 R4 R5
       36 GETTABLEKS                       R5 R3 K19 ["AssetPermissionCreationFailed"]
       38 GETTABLEKS                       R6 R2 K12 ["PublishFailed"]
       40 SETTABLE                         R6 R4 R5
       41 GETTABLEKS                       R5 R3 K15 ["InsertFailed"]
       43 GETTABLEKS                       R6 R2 K15 ["InsertFailed"]
       45 SETTABLE                         R6 R4 R5
       46 DUPTABLE                         R5 K23 [{["Car5"] = "Car5", ["Body1"] = "Body1"}]
       47 DUPTABLE                         R6 K25 [{["Initialized"] = "Initialized", ["Generated"] = "Generated", ["Published"] = "Published"}]
       48 DUPTABLE                         R7 K65 [{["Enums"], ["PLACEHOLDER_IMAGE"] = "rbxasset://textures/ui/GuiImagePlaceholder.png", ["PREVIEW_CAMERA_DISTANCE_MULTIPLIER"] = 0.5, ["PREVIEW_GENERATION_DELAY_TIME"] = 0.5, ["PREVIEW_HEIGHT"] = 225, ["PREVIEW_IMAGE_COUNT"] = 4, ["PREVIEW_IMAGE_COUNT_CAROUSEL"] = 48, ["PREVIEW_SIZE_PX"] = 225, ["BOUNDING_BOX_GHOST_NAME"] = "AssistantMeshGenBoundingBoxGhost", ["VIEWPORT_BOUNDING_BOX_NAME"] = "AssistantMeshGenBoundingBox", ["VIEWPORT_BOUNDING_BOX_TAG"] = "AssistantMeshGenBoundingBox", ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"] = "AssistantMeshGenBoundingBoxRequest_", ["ATTRIBUTE_AI_GENERATED"] = "RBX_AI_GENERATED", ["ATTRIBUTE_AI_GENERATION_TYPE"] = "RBX_AI_GENERATION_TYPE", ["ATTRIBUTE_AI_GENERATION_ID"] = "RBX_AI_GENERATION_ID", ["GENERATE_MESH_COMMAND"] = "GenerateMesh", ["MIN_SCALE_SIZE"] = 4, ["MAX_TRIANGLES_LOWER_BOUND"] = 12, ["MAX_TRIANGLES_UPPER_BOUND"] = 20000, ["NO_SELECTION_ERROR_MESSAGE"] = "No instance found with the provided uniqueId", ["INVALID_SELECTION_ERROR_MESSAGE"] = "Selected instance is not a valid bounding box. Please select a Part to use for generation.", ["BOUNDING_BOX_INSTANCE_TYPE"] = "BasePart"}]
       49 DUPTABLE                         R8 K71 [{"PreviewState", "FailureReason", "FailureReasonToPreviewStateMap", "PredefinedSchema", "GenerationMetaType"}]
       50 SETTABLEKS                       R2 R8 K66 ["PreviewState"]
       52 SETTABLEKS                       R3 R8 K67 ["FailureReason"]
       54 SETTABLEKS                       R4 R8 K68 ["FailureReasonToPreviewStateMap"]
       56 SETTABLEKS                       R5 R8 K69 ["PredefinedSchema"]
       58 SETTABLEKS                       R6 R8 K70 ["GenerationMetaType"]
       60 SETTABLEKS                       R8 R7 K26 ["Enums"]
       62 RETURN                           R7 1
