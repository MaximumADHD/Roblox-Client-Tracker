MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["MeshGenTypes"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K15 [{["GeneratingMesh"] = "GeneratingMesh", ["GeneratingTexture"] = "GeneratingTexture", ["GenerationFailed"] = "GenerationFailed", ["Generated"] = "Generated", ["Publishing"] = "Publishing", ["PublishFailed"] = "PublishFailed", ["Published"] = "Published", ["Inserting"] = "Inserting", ["InsertFailed"] = "InsertFailed"}]
       11 DUPTABLE                         R2 K19 [{["GenerationFailed"] = "GenerationFailed", ["GenerationModerated"] = "GenerationModerated", ["GenerationCanceled"] = "GenerationCanceled", ["PublishFailed"] = "PublishFailed", ["AssetPermissionCreationFailed"] = "AssetPermissionCreationFailed", ["InsertFailed"] = "InsertFailed"}]
       12 NEWTABLE                         R3 8 0
       14 GETTABLEKS                       R4 R2 K8 ["GenerationFailed"]
       16 GETTABLEKS                       R5 R1 K8 ["GenerationFailed"]
       18 SETTABLE                         R5 R3 R4
       19 GETTABLEKS                       R4 R2 K16 ["GenerationModerated"]
       21 GETTABLEKS                       R5 R1 K8 ["GenerationFailed"]
       23 SETTABLE                         R5 R3 R4
       24 GETTABLEKS                       R4 R2 K17 ["GenerationCanceled"]
       26 GETTABLEKS                       R5 R1 K8 ["GenerationFailed"]
       28 SETTABLE                         R5 R3 R4
       29 GETTABLEKS                       R4 R2 K11 ["PublishFailed"]
       31 GETTABLEKS                       R5 R1 K11 ["PublishFailed"]
       33 SETTABLE                         R5 R3 R4
       34 GETTABLEKS                       R4 R2 K18 ["AssetPermissionCreationFailed"]
       36 GETTABLEKS                       R5 R1 K11 ["PublishFailed"]
       38 SETTABLE                         R5 R3 R4
       39 GETTABLEKS                       R4 R2 K14 ["InsertFailed"]
       41 GETTABLEKS                       R5 R1 K14 ["InsertFailed"]
       43 SETTABLE                         R5 R3 R4
       44 DUPTABLE                         R4 K22 [{["Car5"] = "Car5", ["Body1"] = "Body1"}]
       45 DUPTABLE                         R5 K24 [{["Initialized"] = "Initialized", ["Generated"] = "Generated", ["Published"] = "Published"}]
       46 DUPTABLE                         R6 K64 [{["Enums"], ["PLACEHOLDER_IMAGE"] = "rbxasset://textures/ui/GuiImagePlaceholder.png", ["PREVIEW_CAMERA_DISTANCE_MULTIPLIER"] = 0.5, ["PREVIEW_GENERATION_DELAY_TIME"] = 0.5, ["PREVIEW_HEIGHT"] = 225, ["PREVIEW_IMAGE_COUNT"] = 4, ["PREVIEW_IMAGE_COUNT_CAROUSEL"] = 48, ["PREVIEW_SIZE_PX"] = 225, ["BOUNDING_BOX_GHOST_NAME"] = "AssistantMeshGenBoundingBoxGhost", ["VIEWPORT_BOUNDING_BOX_NAME"] = "AssistantMeshGenBoundingBox", ["VIEWPORT_BOUNDING_BOX_TAG"] = "AssistantMeshGenBoundingBox", ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"] = "AssistantMeshGenBoundingBoxRequest_", ["ATTRIBUTE_AI_GENERATED"] = "RBX_AI_GENERATED", ["ATTRIBUTE_AI_GENERATION_TYPE"] = "RBX_AI_GENERATION_TYPE", ["ATTRIBUTE_AI_GENERATION_ID"] = "RBX_AI_GENERATION_ID", ["GENERATE_MESH_COMMAND"] = "GenerateMesh", ["MIN_SCALE_SIZE"] = 4, ["MAX_TRIANGLES_LOWER_BOUND"] = 12, ["MAX_TRIANGLES_UPPER_BOUND"] = 20000, ["NO_SELECTION_ERROR_MESSAGE"] = "No instance found with the provided uniqueId", ["INVALID_SELECTION_ERROR_MESSAGE"] = "Selected instance is not a valid bounding box. Please select a Part to use for generation.", ["BOUNDING_BOX_INSTANCE_TYPE"] = "BasePart"}]
       47 DUPTABLE                         R7 K70 [{"PreviewState", "FailureReason", "FailureReasonToPreviewStateMap", "PredefinedSchema", "GenerationMetaType"}]
       48 SETTABLEKS                       R1 R7 K65 ["PreviewState"]
       50 SETTABLEKS                       R2 R7 K66 ["FailureReason"]
       52 SETTABLEKS                       R3 R7 K67 ["FailureReasonToPreviewStateMap"]
       54 SETTABLEKS                       R4 R7 K68 ["PredefinedSchema"]
       56 SETTABLEKS                       R5 R7 K69 ["GenerationMetaType"]
       58 SETTABLEKS                       R7 R6 K25 ["Enums"]
       60 RETURN                           R6 1
