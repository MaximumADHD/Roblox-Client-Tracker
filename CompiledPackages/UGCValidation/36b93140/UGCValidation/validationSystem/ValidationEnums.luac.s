PROTO_0:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R4 K2 ["Invalid ValidationEnums."]
        3 GETUPVAL                         R5 0
        4 LOADK                            R6 K3 [" enum value: "]
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R8 R1
        7 GETIMPORT                        R7 K5 [tostring]
        9 CALL                             R7 1 1
       10 CONCAT                           R3 R4 R7
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K1 [error]
        2 LOADK                            R4 K2 ["Cannot add new keys to ValidationEnums"]
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K4 [{[1], ["__newindex"], ["__metatable"] = "This metatable is protected"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R2 R1 K0 ["__index"]
        5 DUPCLOSURE                       R2 K5 [PROTO_1]
        6 SETTABLEKS                       R2 R1 K1 ["__newindex"]
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+7]
        4 GETIMPORT                        R1 K1 [error]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K2 [" enum table is not found"]
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 GETUPVAL                         R4 0
       11 GETTABLE                         R1 R4 R0
       12 LOADNIL                          R2
       13 LOADNIL                          R3
       14 FORGPREP                         R1
       15 FASTCALL1                        TYPEOF R4 ; [+3]
       16 MOVE                             R7 R4
       17 GETIMPORT                        R6 K4 [typeof]
       19 CALL                             R6 1 1
       20 JUMPIFEQKS                       R6 K5 ["string"] ; [+13]
       22 GETIMPORT                        R6 K1 [error]
       24 MOVE                             R8 R0
       25 LOADK                            R9 K6 [" enum table has non string key "]
       26 FASTCALL1                        TOSTRING R4 ; [+3]
       27 MOVE                             R11 R4
       28 GETIMPORT                        R10 K8 [tostring]
       30 CALL                             R10 1 1
       31 CONCAT                           R7 R8 R10
       32 CALL                             R6 1 0
       33 JUMP                             ; [+13]
       34 JUMPIFEQ                         R4 R5 ; [+12]
       36 GETIMPORT                        R6 K1 [error]
       38 MOVE                             R8 R0
       39 LOADK                            R9 K9 [" enum table has non-matching key and value for key "]
       40 FASTCALL1                        TOSTRING R4 ; [+3]
       41 MOVE                             R11 R4
       42 GETIMPORT                        R10 K8 [tostring]
       44 CALL                             R10 1 1
       45 CONCAT                           R7 R8 R10
       46 CALL                             R6 1 0
       47 FORGLOOP                         R1 2 ; [-33]
       49 GETUPVAL                         R3 0
       50 GETTABLE                         R2 R3 R0
       51 GETUPVAL                         R3 1
       52 MOVE                             R4 R0
       53 CALL                             R3 1 1
       54 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       56 GETIMPORT                        R1 K11 [setmetatable]
       58 CALL                             R1 2 0
       59 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["flags"]
       11 GETTABLEKS                       R2 R2 K6 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 DUPCLOSURE                       R3 K7 [PROTO_2]
       17 DUPCLOSURE                       R4 K8 [PROTO_3]
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R5 128 0
       22 LOADK                            R6 K9 ["ExpectedRootSchema"]
       23 SETTABLEKS                       R6 R5 K9 ["ExpectedRootSchema"]
       25 LOADK                            R6 K10 ["SingleInstanceSelected"]
       26 SETTABLEKS                       R6 R5 K10 ["SingleInstanceSelected"]
       28 LOADK                            R6 K11 ["NoExtraTags"]
       29 SETTABLEKS                       R6 R5 K11 ["NoExtraTags"]
       31 LOADK                            R6 K12 ["AttributesAllowed"]
       32 SETTABLEKS                       R6 R5 K12 ["AttributesAllowed"]
       34 LOADK                            R6 K13 ["MaterialsAllowed"]
       35 SETTABLEKS                       R6 R5 K13 ["MaterialsAllowed"]
       37 LOADK                            R6 K14 ["PropertyRequirementsValid"]
       38 SETTABLEKS                       R6 R5 K14 ["PropertyRequirementsValid"]
       40 LOADK                            R6 K15 ["PropertiesSensible"]
       41 SETTABLEKS                       R6 R5 K15 ["PropertiesSensible"]
       43 LOADK                            R6 K16 ["InstanceTreeMatchesSchema"]
       44 SETTABLEKS                       R6 R5 K16 ["InstanceTreeMatchesSchema"]
       46 LOADK                            R6 K17 ["DescendantIdsAllowed"]
       47 SETTABLEKS                       R6 R5 K17 ["DescendantIdsAllowed"]
       49 LOADK                            R6 K18 ["ScaleTypeValid"]
       50 SETTABLEKS                       R6 R5 K18 ["ScaleTypeValid"]
       52 LOADK                            R6 K19 ["CollisionFidelityCorrect"]
       53 SETTABLEKS                       R6 R5 K19 ["CollisionFidelityCorrect"]
       55 LOADK                            R6 K20 ["AttachmentBoundsValid"]
       56 SETTABLEKS                       R6 R5 K20 ["AttachmentBoundsValid"]
       58 LOADK                            R6 K21 ["AttachmentOrientationsValid"]
       59 SETTABLEKS                       R6 R5 K21 ["AttachmentOrientationsValid"]
       61 LOADK                            R6 K22 ["HSRAssetStructureValid"]
       62 SETTABLEKS                       R6 R5 K22 ["HSRAssetStructureValid"]
       64 LOADK                            R6 K23 ["HSRMeshIdsMatch"]
       65 SETTABLEKS                       R6 R5 K23 ["HSRMeshIdsMatch"]
       67 LOADK                            R6 K24 ["ThumbnailConfigValid"]
       68 SETTABLEKS                       R6 R5 K24 ["ThumbnailConfigValid"]
       70 LOADK                            R6 K25 ["DescendantIdsNotMissing"]
       71 SETTABLEKS                       R6 R5 K25 ["DescendantIdsNotMissing"]
       73 LOADK                            R6 K26 ["NoFACSOverrideData"]
       74 SETTABLEKS                       R6 R5 K26 ["NoFACSOverrideData"]
       76 LOADK                            R6 K27 ["FacsHeadConsistency"]
       77 SETTABLEKS                       R6 R5 K27 ["FacsHeadConsistency"]
       79 LOADK                            R6 K28 ["DynamicHeadFacsPresent"]
       80 SETTABLEKS                       R6 R5 K28 ["DynamicHeadFacsPresent"]
       82 LOADK                            R6 K29 ["DynamicHeadControlsActive"]
       83 SETTABLEKS                       R6 R5 K29 ["DynamicHeadControlsActive"]
       85 LOADK                            R6 K30 ["FacsJointBoundsValid"]
       86 SETTABLEKS                       R6 R5 K30 ["FacsJointBoundsValid"]
       88 LOADK                            R6 K31 ["HrdBonesFollowSchema"]
       89 SETTABLEKS                       R6 R5 K31 ["HrdBonesFollowSchema"]
       91 LOADK                            R6 K32 ["HrdPropertiesSensible"]
       92 SETTABLEKS                       R6 R5 K32 ["HrdPropertiesSensible"]
       94 LOADK                            R6 K33 ["TposeAdjustmentSensible"]
       95 SETTABLEKS                       R6 R5 K33 ["TposeAdjustmentSensible"]
       97 LOADK                            R6 K34 ["BoneCFramesInBounds"]
       98 SETTABLEKS                       R6 R5 K34 ["BoneCFramesInBounds"]
      100 LOADK                            R6 K35 ["JointRotationAttachmentsLimited"]
      101 SETTABLEKS                       R6 R5 K35 ["JointRotationAttachmentsLimited"]
      103 LOADK                            R6 K36 ["MoveableAttachmentsExist"]
      104 SETTABLEKS                       R6 R5 K36 ["MoveableAttachmentsExist"]
      106 LOADK                            R6 K37 ["FacsNotDrivingSchema"]
      107 SETTABLEKS                       R6 R5 K37 ["FacsNotDrivingSchema"]
      109 LOADK                            R6 K38 ["BodySkinnedToSchema"]
      110 SETTABLEKS                       R6 R5 K38 ["BodySkinnedToSchema"]
      112 LOADK                            R6 K39 ["RigidSkinnedToSchema"]
      113 SETTABLEKS                       R6 R5 K39 ["RigidSkinnedToSchema"]
      115 LOADK                            R6 K40 ["LCSkinnedToSchema"]
      116 SETTABLEKS                       R6 R5 K40 ["LCSkinnedToSchema"]
      118 LOADK                            R6 K41 ["TextureSizeBounded"]
      119 SETTABLEKS                       R6 R5 K41 ["TextureSizeBounded"]
      121 LOADK                            R6 K42 ["SurfaceAppearanceTexturesBounded"]
      122 SETTABLEKS                       R6 R5 K42 ["SurfaceAppearanceTexturesBounded"]
      124 LOADK                            R6 K43 ["AssetOpacityValid"]
      125 SETTABLEKS                       R6 R5 K43 ["AssetOpacityValid"]
      127 LOADK                            R6 K44 ["SurfaceAppearanceOpacityValid"]
      128 SETTABLEKS                       R6 R5 K44 ["SurfaceAppearanceOpacityValid"]
      130 LOADK                            R6 K45 ["MeshBoundsValid"]
      131 SETTABLEKS                       R6 R5 K45 ["MeshBoundsValid"]
      133 LOADK                            R6 K46 ["TriangleCountBounded"]
      134 SETTABLEKS                       R6 R5 K46 ["TriangleCountBounded"]
      136 LOADK                            R6 K47 ["SurfaceAreaBounded"]
      137 SETTABLEKS                       R6 R5 K47 ["SurfaceAreaBounded"]
      139 LOADK                            R6 K48 ["VertexDensityBounded"]
      140 SETTABLEKS                       R6 R5 K48 ["VertexDensityBounded"]
      142 LOADK                            R6 K49 ["TriangleAreaValid"]
      143 SETTABLEKS                       R6 R5 K49 ["TriangleAreaValid"]
      145 LOADK                            R6 K50 ["SurfaceAppearancePresent"]
      146 SETTABLEKS                       R6 R5 K50 ["SurfaceAppearancePresent"]
      148 LOADK                            R6 K51 ["TexturePackConsistent"]
      149 SETTABLEKS                       R6 R5 K51 ["TexturePackConsistent"]
      151 LOADK                            R6 K52 ["VertexColorsOpaque"]
      152 SETTABLEKS                       R6 R5 K52 ["VertexColorsOpaque"]
      154 LOADK                            R6 K53 ["NoCoplanarTriangles"]
      155 SETTABLEKS                       R6 R5 K53 ["NoCoplanarTriangles"]
      157 LOADK                            R6 K54 ["PoseCorrect"]
      158 SETTABLEKS                       R6 R5 K54 ["PoseCorrect"]
      160 LOADK                            R6 K55 ["LegsSeparated"]
      161 SETTABLEKS                       R6 R5 K55 ["LegsSeparated"]
      163 LOADK                            R6 K56 ["BoundingBoxAccurate"]
      164 SETTABLEKS                       R6 R5 K56 ["BoundingBoxAccurate"]
      166 LOADK                            R6 K57 ["BodyBlockingTestsPass"]
      167 SETTABLEKS                       R6 R5 K57 ["BodyBlockingTestsPass"]
      169 LOADK                            R6 K58 ["CageUVCountValid"]
      170 SETTABLEKS                       R6 R5 K58 ["CageUVCountValid"]
      172 LOADK                            R6 K59 ["CageUVValuesCorrect"]
      173 SETTABLEKS                       R6 R5 K59 ["CageUVValuesCorrect"]
      175 LOADK                            R6 K60 ["CageUVAreaValid"]
      176 SETTABLEKS                       R6 R5 K60 ["CageUVAreaValid"]
      178 LOADK                            R6 K61 ["CageUVNoDuplicates"]
      179 SETTABLEKS                       R6 R5 K61 ["CageUVNoDuplicates"]
      181 LOADK                            R6 K62 ["CageModifiedAreaValid"]
      182 SETTABLEKS                       R6 R5 K62 ["CageModifiedAreaValid"]
      184 LOADK                            R6 K63 ["AssetBoundsValid"]
      185 SETTABLEKS                       R6 R5 K63 ["AssetBoundsValid"]
      187 LOADK                            R6 K64 ["BodyMeshSizesConsistent"]
      188 SETTABLEKS                       R6 R5 K64 ["BodyMeshSizesConsistent"]
      190 LOADK                            R6 K65 ["ExtentsWithinParent"]
      191 SETTABLEKS                       R6 R5 K65 ["ExtentsWithinParent"]
      193 LOADK                            R6 K66 ["MeshSizePropertyCorrect"]
      194 SETTABLEKS                       R6 R5 K66 ["MeshSizePropertyCorrect"]
      196 LOADK                            R6 K67 ["LCDeformationWithinBounds"]
      197 SETTABLEKS                       R6 R5 K67 ["LCDeformationWithinBounds"]
      199 LOADK                            R6 K68 ["VerticesNotCoincident"]
      200 SETTABLEKS                       R6 R5 K68 ["VerticesNotCoincident"]
      202 LOADK                            R6 K69 ["CageMeshDistanceBounded"]
      203 SETTABLEKS                       R6 R5 K69 ["CageMeshDistanceBounded"]
      205 LOADK                            R6 K70 ["BodyPartCageDistanceValid"]
      206 SETTABLEKS                       R6 R5 K70 ["BodyPartCageDistanceValid"]
      208 LOADK                            R6 K71 ["LCWithinRenderBounds"]
      209 SETTABLEKS                       R6 R5 K71 ["LCWithinRenderBounds"]
      211 LOADK                            R6 K72 ["WrapTextureValid"]
      212 SETTABLEKS                       R6 R5 K72 ["WrapTextureValid"]
      214 LOADK                            R6 K73 ["MakeupDecalValid"]
      215 SETTABLEKS                       R6 R5 K73 ["MakeupDecalValid"]
      217 LOADK                            R6 K74 ["LeaderSkinnedVertsNearCageIslands"]
      218 SETTABLEKS                       R6 R5 K74 ["LeaderSkinnedVertsNearCageIslands"]
      220 LOADK                            R6 K75 ["CurveAnimDataAvailable"]
      221 SETTABLEKS                       R6 R5 K75 ["CurveAnimDataAvailable"]
      223 LOADK                            R6 K76 ["CurveAnimHierarchyCorrect"]
      224 SETTABLEKS                       R6 R5 K76 ["CurveAnimHierarchyCorrect"]
      226 LOADK                            R6 K77 ["CurveAnimRigDataPresent"]
      227 SETTABLEKS                       R6 R5 K77 ["CurveAnimRigDataPresent"]
      229 LOADK                            R6 K78 ["CurveAnimMarkerCurvesLimited"]
      230 SETTABLEKS                       R6 R5 K78 ["CurveAnimMarkerCurvesLimited"]
      232 LOADK                            R6 K79 ["CurveAnimNoScripts"]
      233 SETTABLEKS                       R6 R5 K79 ["CurveAnimNoScripts"]
      235 LOADK                            R6 K80 ["CurveAnimAllowedTypes"]
      236 SETTABLEKS                       R6 R5 K80 ["CurveAnimAllowedTypes"]
      238 LOADK                            R6 K81 ["CurveAnimNumericalDataValid"]
      239 SETTABLEKS                       R6 R5 K81 ["CurveAnimNumericalDataValid"]
      241 LOADK                            R6 K82 ["CurveAnimTagsValid"]
      242 SETTABLEKS                       R6 R5 K82 ["CurveAnimTagsValid"]
      244 LOADK                            R6 K83 ["CurveAnimJointsManipulated"]
      245 SETTABLEKS                       R6 R5 K83 ["CurveAnimJointsManipulated"]
      247 LOADK                            R6 K84 ["CurveAnimFrameDataSensible"]
      248 SETTABLEKS                       R6 R5 K84 ["CurveAnimFrameDataSensible"]
      250 LOADK                            R6 K85 ["CurveAnimJointsAnimated"]
      251 SETTABLEKS                       R6 R5 K85 ["CurveAnimJointsAnimated"]
      253 LOADK                            R6 K86 ["CurveAnimPositionBounded"]
      254 SETTABLEKS                       R6 R5 K86 ["CurveAnimPositionBounded"]
      256 LOADK                            R6 K87 ["CurveAnimLengthBounded"]
      257 SETTABLEKS                       R6 R5 K87 ["CurveAnimLengthBounded"]
      259 LOADK                            R6 K88 ["CurveAnimBoundsValid"]
      260 SETTABLEKS                       R6 R5 K88 ["CurveAnimBoundsValid"]
      262 LOADK                            R6 K89 ["CurveAnimSpeedBounded"]
      263 SETTABLEKS                       R6 R5 K89 ["CurveAnimSpeedBounded"]
      265 LOADK                            R6 K90 ["CurveAnimRotationBounded"]
      266 SETTABLEKS                       R6 R5 K90 ["CurveAnimRotationBounded"]
      268 LOADK                            R6 K91 ["CurveAnimJointRotationLimited"]
      269 SETTABLEKS                       R6 R5 K91 ["CurveAnimJointRotationLimited"]
      271 LOADK                            R6 K92 ["AnimationWeightPositive"]
      272 SETTABLEKS                       R6 R5 K92 ["AnimationWeightPositive"]
      274 LOADK                            R6 K93 ["CurveAnimBonesAllowed"]
      275 SETTABLEKS                       R6 R5 K93 ["CurveAnimBonesAllowed"]
      277 LOADK                            R6 K94 ["CurveAnimBonesRotationOnly"]
      278 SETTABLEKS                       R6 R5 K94 ["CurveAnimBonesRotationOnly"]
      280 LOADK                            R6 K95 ["CurveAnimBonesHaveValidNames"]
      281 SETTABLEKS                       R6 R5 K95 ["CurveAnimBonesHaveValidNames"]
      283 LOADK                            R6 K96 ["CurveAnimBonesHaveValidParents"]
      284 SETTABLEKS                       R6 R5 K96 ["CurveAnimBonesHaveValidParents"]
      286 LOADK                            R6 K97 ["CurveAnimPartsRotateOnlyIfBones"]
      287 SETTABLEKS                       R6 R5 K97 ["CurveAnimPartsRotateOnlyIfBones"]
      289 LOADK                            R6 K98 ["CurveAnimBoneHierarchyValid"]
      290 SETTABLEKS                       R6 R5 K98 ["CurveAnimBoneHierarchyValid"]
      292 LOADK                            R6 K99 ["CurveAnimLoopingRequired"]
      293 SETTABLEKS                       R6 R5 K99 ["CurveAnimLoopingRequired"]
      295 SETTABLEKS                       R5 R2 K100 ["ValidationModule"]
      297 DUPTABLE                         R5 K118 [{["jobId"] = "jobId", ["entrypointInput"] = "entrypointInput", ["rootInstance"] = "rootInstance", ["uploadCategory"] = "uploadCategory", ["uploadEnum"] = "uploadEnum", ["consumerConfig"] = "consumerConfig", ["aqsFetchMetrics"] = "aqsFetchMetrics", ["aqsSummaryData"] = "aqsSummaryData", ["renderMeshesData"] = "renderMeshesData", ["innerCagesData"] = "innerCagesData", ["outerCagesData"] = "outerCagesData", ["meshTextures"] = "meshTextures", ["curveAnimations"] = "curveAnimations", ["curveAnimComputedFrames"] = "curveAnimComputedFrames", ["contentIds"] = "contentIds", ["hsrAssets"] = "hsrAssets", ["curveAnimBoneData"] = "curveAnimBoneData"}]
      298 SETTABLEKS                       R5 R2 K119 ["SharedDataMember"]
      300 MOVE                             R5 R4
      301 LOADK                            R6 K119 ["SharedDataMember"]
      302 CALL                             R5 1 0
      303 DUPTABLE                         R5 K130 [{["categories"] = "categories", ["fflag"] = "fflag", ["shadowFlag"] = "shadowFlag", ["prereqTests"] = "prereqTests", ["requiredData"] = "requiredData", ["conditionalData"] = "conditionalData", ["expectedAqsData"] = "expectedAqsData", ["knownAqsUserErrors"] = "knownAqsUserErrors", ["expectedFailures"] = "expectedFailures", ["run"] = "run"}]
      304 SETTABLEKS                       R5 R2 K131 ["ValidationConfig"]
      306 MOVE                             R5 R4
      307 LOADK                            R6 K131 ["ValidationConfig"]
      308 CALL                             R5 1 0
      309 DUPTABLE                         R5 K136 [{["assetQualityFetchNA"] = "assetQualityFetchNA", ["assetQualityFetchInProgress"] = "assetQualityFetchInProgress", ["assetQualityFetchSuccess"] = "assetQualityFetchSuccess", ["assetQualityFetchFailure"] = "assetQualityFetchFailure"}]
      310 SETTABLEKS                       R5 R2 K137 ["AssetQualityFetchStatus"]
      312 MOVE                             R5 R4
      313 LOADK                            R6 K137 ["AssetQualityFetchStatus"]
      314 CALL                             R5 1 0
      315 DUPTABLE                         R5 K141 [{["Studio"] = "Studio", ["Backend"] = "Backend", ["IEC"] = "IEC"}]
      316 SETTABLEKS                       R5 R2 K142 ["ConsumerEnv"]
      318 MOVE                             R5 R4
      319 LOADK                            R6 K142 ["ConsumerEnv"]
      320 CALL                             R5 1 0
      321 DUPTABLE                         R5 K149 [{["CANNOT_START"] = "CANNOT_START", ["TIMEOUT"] = "TIMEOUT", ["ERROR"] = "ERROR", ["FAIL"] = "FAIL", ["PASS"] = "PASS", ["IN_PROGRESS"] = "IN_PROGRESS"}]
      322 SETTABLEKS                       R5 R2 K150 ["Status"]
      324 MOVE                             R5 R4
      325 LOADK                            R6 K150 ["Status"]
      326 CALL                             R5 1 0
      327 MOVE                             R5 R1
      328 CALL                             R5 0 1
      329 JUMPIFNOT                        R5 ; [+7]
      330 DUPTABLE                         R5 K167 [{["Measure_Dynamic_Head"] = "Measure_Dynamic_Head", ["Measure_Cage_Distance_Head"] = "Measure_Cage_Distance_Head", ["Measure_Cage_Mesh_Distance"] = "Measure_Cage_Mesh_Distance", ["Measure_Cage_Mesh_Distance_Avatar"] = "Measure_Cage_Mesh_Distance_Avatar", ["Measure_Cage_UV"] = "Measure_Cage_UV", ["Measure_Cage_UV_Avatar"] = "Measure_Cage_UV_Avatar", ["Measure_Cage_Relevancy"] = "Measure_Cage_Relevancy", ["Measure_Mesh_Outside_OuterCage"] = "Measure_Mesh_Outside_OuterCage", ["Measure_Degen_Triangles"] = "Measure_Degen_Triangles", ["Measure_Mesh_Manifold"] = "Measure_Mesh_Manifold", ["Measure_Triangle_Intersection"] = "Measure_Triangle_Intersection", ["Measure_UV_Bound"] = "Measure_UV_Bound", ["Measure_Vertex_Similarity"] = "Measure_Vertex_Similarity", ["Measure_Joint_Number"] = "Measure_Joint_Number", ["Measure_Texture_Complexity"] = "Measure_Texture_Complexity", ["Measure_Texture_Resolution"] = "Measure_Texture_Resolution"}]
      331 SETTABLEKS                       R5 R2 K168 ["AssetQualityCheck"]
      333 MOVE                             R5 R4
      334 LOADK                            R6 K168 ["AssetQualityCheck"]
      335 CALL                             R5 1 0
      336 JUMP                             ; [+10]
      337 GETTABLEKS                       R5 R2 K100 ["ValidationModule"]
      339 LOADK                            R6 K169 ["HeadIsDynamic"]
      340 SETTABLEKS                       R6 R5 K169 ["HeadIsDynamic"]
      342 GETTABLEKS                       R5 R2 K100 ["ValidationModule"]
      344 LOADK                            R6 K170 ["MeasureCageMeshDistanceHead"]
      345 SETTABLEKS                       R6 R5 K170 ["MeasureCageMeshDistanceHead"]
      347 MOVE                             R5 R4
      348 LOADK                            R6 K100 ["ValidationModule"]
      349 CALL                             R5 1 0
      350 DUPTABLE                         R5 K181 [{["TORSO_AND_LIMBS"] = "TORSO_AND_LIMBS", ["DYNAMIC_HEAD"] = "DYNAMIC_HEAD", ["LAYERED_CLOTHING"] = "LAYERED_CLOTHING", ["RIGID_ACCESSORY"] = "RIGID_ACCESSORY", ["EMOTE_ANIMATION"] = "EMOTE_ANIMATION", ["MAKEUP"] = "MAKEUP", ["FULL_BODY"] = "FULL_BODY", ["BOTH_SHOES"] = "BOTH_SHOES", ["ANIMATION_PACK"] = "ANIMATION_PACK", ["ANIMATION"] = "ANIMATION"}]
      351 SETTABLEKS                       R5 R2 K182 ["UploadCategory"]
      353 MOVE                             R5 R4
      354 LOADK                            R6 K182 ["UploadCategory"]
      355 CALL                             R5 1 0
      356 RETURN                           R2 1
