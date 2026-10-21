MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFIntAssistantMeshGenMaxTrianglesDefault"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K36 [{["MAX_TRIANGLES_LOWER_BOUND"] = 12, ["MAX_TRIANGLES_UPPER_BOUND"] = 20000, ["DEFAULT_MAX_TRIANGLES"], ["MIN_SCALE_SIZE"] = 4, ["BOUNDING_BOX_INSTANCE_TYPE"] = "BasePart", ["VIEWPORT_BOUNDING_BOX_NAME"] = "AssistantMeshGenBoundingBox", ["VIEWPORT_BOUNDING_BOX_TAG"] = "AssistantMeshGenBoundingBox", ["VIEWPORT_BOUNDING_BOX_REQUEST_TAG_PREFIX"] = "AssistantMeshGenBoundingBoxRequest_", ["VIEWPORT_BOUNDING_BOX_SIZE"] = {6, 3, 6}, ["VIEWPORT_BOUNDING_BOX_DISTANCE"] = 10, ["WORLD_CHILD_NAME"] = "world", ["PREDEFINED_SCHEMA_BODY"] = "Body1", ["NO_SELECTION_ERROR_MESSAGE"] = "No instance found with the provided uniqueId", ["INVALID_SELECTION_ERROR_MESSAGE"] = "Selected instance is not a valid bounding box. Please select a Part to use for generation.", ["BOUNDING_BOX_FUZZY_EPSILON"] = 0.01}]
       15 MOVE                             R3 R1
       16 CALL                             R3 0 1
       17 SETTABLEKS                       R3 R2 K12 ["DEFAULT_MAX_TRIANGLES"]
       19 RETURN                           R2 1
