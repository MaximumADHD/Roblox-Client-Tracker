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
        0 DUPTABLE                         R1 K3 [{"__index", "__newindex", "__metatable"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R2 R1 K0 ["__index"]
        5 DUPCLOSURE                       R2 K4 [PROTO_1]
        6 SETTABLEKS                       R2 R1 K1 ["__newindex"]
        8 LOADK                            R2 K5 ["This metatable is protected"]
        9 SETTABLEKS                       R2 R1 K2 ["__metatable"]
       11 RETURN                           R1 1

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
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_2]
        4 DUPCLOSURE                       R2 K1 [PROTO_3]
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 DUPTABLE                         R3 K27 [{"ExpectedRootSchema", "SingleInstanceSelected", "NoExtraTags", "HeadIsDynamic", "MeasureCageMeshDistanceAvatar", "MeasureCageMeshDistance", "MeasureCageUVAvatar", "MeasureCageUV", "MeasureMeshOutsideOuterCage", "MeasureCageRelevancy", "MeasureCageMeshDistanceHead", "NoFACSOverrideData", "FacsHeadConsistency", "HrdBonesFollowSchema", "HrdPropertiesSensible", "TposeAdjustmentSensible", "BoneCFramesInBounds", "JointRotationAttachmentsLimited", "MoveableAttachmentsExist", "FacsNotDrivingSchema", "BodySkinnedToSchema", "RigidSkinnedToSchema", "LCSkinnedToSchema", "LCDeformationWithinBounds", "LeaderSkinnedVertsNearCageIslands"}]
        8 LOADK                            R4 K2 ["ExpectedRootSchema"]
        9 SETTABLEKS                       R4 R3 K2 ["ExpectedRootSchema"]
       11 LOADK                            R4 K3 ["SingleInstanceSelected"]
       12 SETTABLEKS                       R4 R3 K3 ["SingleInstanceSelected"]
       14 LOADK                            R4 K4 ["NoExtraTags"]
       15 SETTABLEKS                       R4 R3 K4 ["NoExtraTags"]
       17 LOADK                            R4 K5 ["HeadIsDynamic"]
       18 SETTABLEKS                       R4 R3 K5 ["HeadIsDynamic"]
       20 LOADK                            R4 K6 ["MeasureCageMeshDistanceAvatar"]
       21 SETTABLEKS                       R4 R3 K6 ["MeasureCageMeshDistanceAvatar"]
       23 LOADK                            R4 K7 ["MeasureCageMeshDistance"]
       24 SETTABLEKS                       R4 R3 K7 ["MeasureCageMeshDistance"]
       26 LOADK                            R4 K8 ["MeasureCageUVAvatar"]
       27 SETTABLEKS                       R4 R3 K8 ["MeasureCageUVAvatar"]
       29 LOADK                            R4 K9 ["MeasureCageUV"]
       30 SETTABLEKS                       R4 R3 K9 ["MeasureCageUV"]
       32 LOADK                            R4 K10 ["MeasureMeshOutsideOuterCage"]
       33 SETTABLEKS                       R4 R3 K10 ["MeasureMeshOutsideOuterCage"]
       35 LOADK                            R4 K11 ["MeasureCageRelevancy"]
       36 SETTABLEKS                       R4 R3 K11 ["MeasureCageRelevancy"]
       38 LOADK                            R4 K12 ["MeasureCageMeshDistanceHead"]
       39 SETTABLEKS                       R4 R3 K12 ["MeasureCageMeshDistanceHead"]
       41 LOADK                            R4 K13 ["NoFACSOverrideData"]
       42 SETTABLEKS                       R4 R3 K13 ["NoFACSOverrideData"]
       44 LOADK                            R4 K14 ["FacsHeadConsistency"]
       45 SETTABLEKS                       R4 R3 K14 ["FacsHeadConsistency"]
       47 LOADK                            R4 K15 ["HrdBonesFollowSchema"]
       48 SETTABLEKS                       R4 R3 K15 ["HrdBonesFollowSchema"]
       50 LOADK                            R4 K16 ["HrdPropertiesSensible"]
       51 SETTABLEKS                       R4 R3 K16 ["HrdPropertiesSensible"]
       53 LOADK                            R4 K17 ["TposeAdjustmentSensible"]
       54 SETTABLEKS                       R4 R3 K17 ["TposeAdjustmentSensible"]
       56 LOADK                            R4 K18 ["BoneCFramesInBounds"]
       57 SETTABLEKS                       R4 R3 K18 ["BoneCFramesInBounds"]
       59 LOADK                            R4 K19 ["JointRotationAttachmentsLimited"]
       60 SETTABLEKS                       R4 R3 K19 ["JointRotationAttachmentsLimited"]
       62 LOADK                            R4 K20 ["MoveableAttachmentsExist"]
       63 SETTABLEKS                       R4 R3 K20 ["MoveableAttachmentsExist"]
       65 LOADK                            R4 K21 ["FacsNotDrivingSchema"]
       66 SETTABLEKS                       R4 R3 K21 ["FacsNotDrivingSchema"]
       68 LOADK                            R4 K22 ["BodySkinnedToSchema"]
       69 SETTABLEKS                       R4 R3 K22 ["BodySkinnedToSchema"]
       71 LOADK                            R4 K23 ["RigidSkinnedToSchema"]
       72 SETTABLEKS                       R4 R3 K23 ["RigidSkinnedToSchema"]
       74 LOADK                            R4 K24 ["LCSkinnedToSchema"]
       75 SETTABLEKS                       R4 R3 K24 ["LCSkinnedToSchema"]
       77 LOADK                            R4 K25 ["LCDeformationWithinBounds"]
       78 SETTABLEKS                       R4 R3 K25 ["LCDeformationWithinBounds"]
       80 LOADK                            R4 K26 ["LeaderSkinnedVertsNearCageIslands"]
       81 SETTABLEKS                       R4 R3 K26 ["LeaderSkinnedVertsNearCageIslands"]
       83 SETTABLEKS                       R3 R0 K28 ["ValidationModule"]
       85 MOVE                             R3 R2
       86 LOADK                            R4 K28 ["ValidationModule"]
       87 CALL                             R3 1 0
       88 DUPTABLE                         R3 K41 [{"jobId", "entrypointInput", "rootInstance", "uploadCategory", "uploadEnum", "consumerConfig", "aqsFetchMetrics", "aqsSummaryData", "renderMeshesData", "innerCagesData", "outerCagesData", "meshTextures"}]
       89 LOADK                            R4 K29 ["jobId"]
       90 SETTABLEKS                       R4 R3 K29 ["jobId"]
       92 LOADK                            R4 K30 ["entrypointInput"]
       93 SETTABLEKS                       R4 R3 K30 ["entrypointInput"]
       95 LOADK                            R4 K31 ["rootInstance"]
       96 SETTABLEKS                       R4 R3 K31 ["rootInstance"]
       98 LOADK                            R4 K32 ["uploadCategory"]
       99 SETTABLEKS                       R4 R3 K32 ["uploadCategory"]
      101 LOADK                            R4 K33 ["uploadEnum"]
      102 SETTABLEKS                       R4 R3 K33 ["uploadEnum"]
      104 LOADK                            R4 K34 ["consumerConfig"]
      105 SETTABLEKS                       R4 R3 K34 ["consumerConfig"]
      107 LOADK                            R4 K35 ["aqsFetchMetrics"]
      108 SETTABLEKS                       R4 R3 K35 ["aqsFetchMetrics"]
      110 LOADK                            R4 K36 ["aqsSummaryData"]
      111 SETTABLEKS                       R4 R3 K36 ["aqsSummaryData"]
      113 LOADK                            R4 K37 ["renderMeshesData"]
      114 SETTABLEKS                       R4 R3 K37 ["renderMeshesData"]
      116 LOADK                            R4 K38 ["innerCagesData"]
      117 SETTABLEKS                       R4 R3 K38 ["innerCagesData"]
      119 LOADK                            R4 K39 ["outerCagesData"]
      120 SETTABLEKS                       R4 R3 K39 ["outerCagesData"]
      122 LOADK                            R4 K40 ["meshTextures"]
      123 SETTABLEKS                       R4 R3 K40 ["meshTextures"]
      125 SETTABLEKS                       R3 R0 K42 ["SharedDataMember"]
      127 MOVE                             R3 R2
      128 LOADK                            R4 K42 ["SharedDataMember"]
      129 CALL                             R3 1 0
      130 DUPTABLE                         R3 K53 [{"categories", "fflag", "shadowFlag", "prereqTests", "requiredData", "conditionalData", "expectedAqsData", "knownAqsUserErrors", "expectedFailures", "run"}]
      131 LOADK                            R4 K43 ["categories"]
      132 SETTABLEKS                       R4 R3 K43 ["categories"]
      134 LOADK                            R4 K44 ["fflag"]
      135 SETTABLEKS                       R4 R3 K44 ["fflag"]
      137 LOADK                            R4 K45 ["shadowFlag"]
      138 SETTABLEKS                       R4 R3 K45 ["shadowFlag"]
      140 LOADK                            R4 K46 ["prereqTests"]
      141 SETTABLEKS                       R4 R3 K46 ["prereqTests"]
      143 LOADK                            R4 K47 ["requiredData"]
      144 SETTABLEKS                       R4 R3 K47 ["requiredData"]
      146 LOADK                            R4 K48 ["conditionalData"]
      147 SETTABLEKS                       R4 R3 K48 ["conditionalData"]
      149 LOADK                            R4 K49 ["expectedAqsData"]
      150 SETTABLEKS                       R4 R3 K49 ["expectedAqsData"]
      152 LOADK                            R4 K50 ["knownAqsUserErrors"]
      153 SETTABLEKS                       R4 R3 K50 ["knownAqsUserErrors"]
      155 LOADK                            R4 K51 ["expectedFailures"]
      156 SETTABLEKS                       R4 R3 K51 ["expectedFailures"]
      158 LOADK                            R4 K52 ["run"]
      159 SETTABLEKS                       R4 R3 K52 ["run"]
      161 SETTABLEKS                       R3 R0 K54 ["ValidationConfig"]
      163 MOVE                             R3 R2
      164 LOADK                            R4 K54 ["ValidationConfig"]
      165 CALL                             R3 1 0
      166 DUPTABLE                         R3 K60 [{"CANNOT_START", "TIMEOUT", "ERROR", "FAIL", "PASS"}]
      167 LOADK                            R4 K55 ["CANNOT_START"]
      168 SETTABLEKS                       R4 R3 K55 ["CANNOT_START"]
      170 LOADK                            R4 K56 ["TIMEOUT"]
      171 SETTABLEKS                       R4 R3 K56 ["TIMEOUT"]
      173 LOADK                            R4 K57 ["ERROR"]
      174 SETTABLEKS                       R4 R3 K57 ["ERROR"]
      176 LOADK                            R4 K58 ["FAIL"]
      177 SETTABLEKS                       R4 R3 K58 ["FAIL"]
      179 LOADK                            R4 K59 ["PASS"]
      180 SETTABLEKS                       R4 R3 K59 ["PASS"]
      182 SETTABLEKS                       R3 R0 K61 ["Status"]
      184 MOVE                             R3 R2
      185 LOADK                            R4 K61 ["Status"]
      186 CALL                             R3 1 0
      187 DUPTABLE                         R3 K70 [{"TORSO_AND_LIMBS", "DYNAMIC_HEAD", "LAYERED_CLOTHING", "RIGID_ACCESSORY", "EMOTE_ANIMATION", "MAKEUP", "FULL_BODY", "BOTH_SHOES"}]
      188 LOADK                            R4 K62 ["TORSO_AND_LIMBS"]
      189 SETTABLEKS                       R4 R3 K62 ["TORSO_AND_LIMBS"]
      191 LOADK                            R4 K63 ["DYNAMIC_HEAD"]
      192 SETTABLEKS                       R4 R3 K63 ["DYNAMIC_HEAD"]
      194 LOADK                            R4 K64 ["LAYERED_CLOTHING"]
      195 SETTABLEKS                       R4 R3 K64 ["LAYERED_CLOTHING"]
      197 LOADK                            R4 K65 ["RIGID_ACCESSORY"]
      198 SETTABLEKS                       R4 R3 K65 ["RIGID_ACCESSORY"]
      200 LOADK                            R4 K66 ["EMOTE_ANIMATION"]
      201 SETTABLEKS                       R4 R3 K66 ["EMOTE_ANIMATION"]
      203 LOADK                            R4 K67 ["MAKEUP"]
      204 SETTABLEKS                       R4 R3 K67 ["MAKEUP"]
      206 LOADK                            R4 K68 ["FULL_BODY"]
      207 SETTABLEKS                       R4 R3 K68 ["FULL_BODY"]
      209 LOADK                            R4 K69 ["BOTH_SHOES"]
      210 SETTABLEKS                       R4 R3 K69 ["BOTH_SHOES"]
      212 SETTABLEKS                       R3 R0 K71 ["UploadCategory"]
      214 MOVE                             R3 R2
      215 LOADK                            R4 K71 ["UploadCategory"]
      216 CALL                             R3 1 0
      217 RETURN                           R0 1
