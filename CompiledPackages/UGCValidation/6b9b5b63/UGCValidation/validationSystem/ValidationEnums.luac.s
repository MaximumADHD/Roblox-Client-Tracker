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
        7 DUPTABLE                         R3 K16 [{"ExpectedRootSchema", "SingleInstanceSelected", "NoExtraTags", "HeadIsDynamic", "MeasureCageMeshDistanceHead", "NoFACSOverrideData", "FacsHeadConsistency", "HrdBonesFollowSchema", "HrdPropertiesSensible", "BoneCFramesInBounds", "JointRotationAttachmentsLimited", "MoveableAttachmentsExist", "FacsNotDrivingSchema", "BodySkinnedToSchema"}]
        8 LOADK                            R4 K2 ["ExpectedRootSchema"]
        9 SETTABLEKS                       R4 R3 K2 ["ExpectedRootSchema"]
       11 LOADK                            R4 K3 ["SingleInstanceSelected"]
       12 SETTABLEKS                       R4 R3 K3 ["SingleInstanceSelected"]
       14 LOADK                            R4 K4 ["NoExtraTags"]
       15 SETTABLEKS                       R4 R3 K4 ["NoExtraTags"]
       17 LOADK                            R4 K5 ["HeadIsDynamic"]
       18 SETTABLEKS                       R4 R3 K5 ["HeadIsDynamic"]
       20 LOADK                            R4 K6 ["MeasureCageMeshDistanceHead"]
       21 SETTABLEKS                       R4 R3 K6 ["MeasureCageMeshDistanceHead"]
       23 LOADK                            R4 K7 ["NoFACSOverrideData"]
       24 SETTABLEKS                       R4 R3 K7 ["NoFACSOverrideData"]
       26 LOADK                            R4 K8 ["FacsHeadConsistency"]
       27 SETTABLEKS                       R4 R3 K8 ["FacsHeadConsistency"]
       29 LOADK                            R4 K9 ["HrdBonesFollowSchema"]
       30 SETTABLEKS                       R4 R3 K9 ["HrdBonesFollowSchema"]
       32 LOADK                            R4 K10 ["HrdPropertiesSensible"]
       33 SETTABLEKS                       R4 R3 K10 ["HrdPropertiesSensible"]
       35 LOADK                            R4 K11 ["BoneCFramesInBounds"]
       36 SETTABLEKS                       R4 R3 K11 ["BoneCFramesInBounds"]
       38 LOADK                            R4 K12 ["JointRotationAttachmentsLimited"]
       39 SETTABLEKS                       R4 R3 K12 ["JointRotationAttachmentsLimited"]
       41 LOADK                            R4 K13 ["MoveableAttachmentsExist"]
       42 SETTABLEKS                       R4 R3 K13 ["MoveableAttachmentsExist"]
       44 LOADK                            R4 K14 ["FacsNotDrivingSchema"]
       45 SETTABLEKS                       R4 R3 K14 ["FacsNotDrivingSchema"]
       47 LOADK                            R4 K15 ["BodySkinnedToSchema"]
       48 SETTABLEKS                       R4 R3 K15 ["BodySkinnedToSchema"]
       50 SETTABLEKS                       R3 R0 K17 ["ValidationModule"]
       52 MOVE                             R3 R2
       53 LOADK                            R4 K17 ["ValidationModule"]
       54 CALL                             R3 1 0
       55 DUPTABLE                         R3 K30 [{"jobId", "entrypointInput", "rootInstance", "uploadCategory", "uploadEnum", "consumerConfig", "aqsFetchMetrics", "aqsSummaryData", "renderMeshesData", "innerCagesData", "outerCagesData", "meshTextures"}]
       56 LOADK                            R4 K18 ["jobId"]
       57 SETTABLEKS                       R4 R3 K18 ["jobId"]
       59 LOADK                            R4 K19 ["entrypointInput"]
       60 SETTABLEKS                       R4 R3 K19 ["entrypointInput"]
       62 LOADK                            R4 K20 ["rootInstance"]
       63 SETTABLEKS                       R4 R3 K20 ["rootInstance"]
       65 LOADK                            R4 K21 ["uploadCategory"]
       66 SETTABLEKS                       R4 R3 K21 ["uploadCategory"]
       68 LOADK                            R4 K22 ["uploadEnum"]
       69 SETTABLEKS                       R4 R3 K22 ["uploadEnum"]
       71 LOADK                            R4 K23 ["consumerConfig"]
       72 SETTABLEKS                       R4 R3 K23 ["consumerConfig"]
       74 LOADK                            R4 K24 ["aqsFetchMetrics"]
       75 SETTABLEKS                       R4 R3 K24 ["aqsFetchMetrics"]
       77 LOADK                            R4 K25 ["aqsSummaryData"]
       78 SETTABLEKS                       R4 R3 K25 ["aqsSummaryData"]
       80 LOADK                            R4 K26 ["renderMeshesData"]
       81 SETTABLEKS                       R4 R3 K26 ["renderMeshesData"]
       83 LOADK                            R4 K27 ["innerCagesData"]
       84 SETTABLEKS                       R4 R3 K27 ["innerCagesData"]
       86 LOADK                            R4 K28 ["outerCagesData"]
       87 SETTABLEKS                       R4 R3 K28 ["outerCagesData"]
       89 LOADK                            R4 K29 ["meshTextures"]
       90 SETTABLEKS                       R4 R3 K29 ["meshTextures"]
       92 SETTABLEKS                       R3 R0 K31 ["SharedDataMember"]
       94 MOVE                             R3 R2
       95 LOADK                            R4 K31 ["SharedDataMember"]
       96 CALL                             R3 1 0
       97 DUPTABLE                         R3 K42 [{"categories", "fflag", "shadowFlag", "prereqTests", "requiredData", "conditionalData", "expectedAqsData", "knownAqsUserErrors", "expectedFailures", "run"}]
       98 LOADK                            R4 K32 ["categories"]
       99 SETTABLEKS                       R4 R3 K32 ["categories"]
      101 LOADK                            R4 K33 ["fflag"]
      102 SETTABLEKS                       R4 R3 K33 ["fflag"]
      104 LOADK                            R4 K34 ["shadowFlag"]
      105 SETTABLEKS                       R4 R3 K34 ["shadowFlag"]
      107 LOADK                            R4 K35 ["prereqTests"]
      108 SETTABLEKS                       R4 R3 K35 ["prereqTests"]
      110 LOADK                            R4 K36 ["requiredData"]
      111 SETTABLEKS                       R4 R3 K36 ["requiredData"]
      113 LOADK                            R4 K37 ["conditionalData"]
      114 SETTABLEKS                       R4 R3 K37 ["conditionalData"]
      116 LOADK                            R4 K38 ["expectedAqsData"]
      117 SETTABLEKS                       R4 R3 K38 ["expectedAqsData"]
      119 LOADK                            R4 K39 ["knownAqsUserErrors"]
      120 SETTABLEKS                       R4 R3 K39 ["knownAqsUserErrors"]
      122 LOADK                            R4 K40 ["expectedFailures"]
      123 SETTABLEKS                       R4 R3 K40 ["expectedFailures"]
      125 LOADK                            R4 K41 ["run"]
      126 SETTABLEKS                       R4 R3 K41 ["run"]
      128 SETTABLEKS                       R3 R0 K43 ["ValidationConfig"]
      130 MOVE                             R3 R2
      131 LOADK                            R4 K43 ["ValidationConfig"]
      132 CALL                             R3 1 0
      133 DUPTABLE                         R3 K49 [{"CANNOT_START", "TIMEOUT", "ERROR", "FAIL", "PASS"}]
      134 LOADK                            R4 K44 ["CANNOT_START"]
      135 SETTABLEKS                       R4 R3 K44 ["CANNOT_START"]
      137 LOADK                            R4 K45 ["TIMEOUT"]
      138 SETTABLEKS                       R4 R3 K45 ["TIMEOUT"]
      140 LOADK                            R4 K46 ["ERROR"]
      141 SETTABLEKS                       R4 R3 K46 ["ERROR"]
      143 LOADK                            R4 K47 ["FAIL"]
      144 SETTABLEKS                       R4 R3 K47 ["FAIL"]
      146 LOADK                            R4 K48 ["PASS"]
      147 SETTABLEKS                       R4 R3 K48 ["PASS"]
      149 SETTABLEKS                       R3 R0 K50 ["Status"]
      151 MOVE                             R3 R2
      152 LOADK                            R4 K50 ["Status"]
      153 CALL                             R3 1 0
      154 DUPTABLE                         R3 K59 [{"TORSO_AND_LIMBS", "DYNAMIC_HEAD", "LAYERED_CLOTHING", "RIGID_ACCESSORY", "EMOTE_ANIMATION", "MAKEUP", "FULL_BODY", "BOTH_SHOES"}]
      155 LOADK                            R4 K51 ["TORSO_AND_LIMBS"]
      156 SETTABLEKS                       R4 R3 K51 ["TORSO_AND_LIMBS"]
      158 LOADK                            R4 K52 ["DYNAMIC_HEAD"]
      159 SETTABLEKS                       R4 R3 K52 ["DYNAMIC_HEAD"]
      161 LOADK                            R4 K53 ["LAYERED_CLOTHING"]
      162 SETTABLEKS                       R4 R3 K53 ["LAYERED_CLOTHING"]
      164 LOADK                            R4 K54 ["RIGID_ACCESSORY"]
      165 SETTABLEKS                       R4 R3 K54 ["RIGID_ACCESSORY"]
      167 LOADK                            R4 K55 ["EMOTE_ANIMATION"]
      168 SETTABLEKS                       R4 R3 K55 ["EMOTE_ANIMATION"]
      170 LOADK                            R4 K56 ["MAKEUP"]
      171 SETTABLEKS                       R4 R3 K56 ["MAKEUP"]
      173 LOADK                            R4 K57 ["FULL_BODY"]
      174 SETTABLEKS                       R4 R3 K57 ["FULL_BODY"]
      176 LOADK                            R4 K58 ["BOTH_SHOES"]
      177 SETTABLEKS                       R4 R3 K58 ["BOTH_SHOES"]
      179 SETTABLEKS                       R3 R0 K60 ["UploadCategory"]
      181 MOVE                             R3 R2
      182 LOADK                            R4 K60 ["UploadCategory"]
      183 CALL                             R3 1 0
      184 RETURN                           R0 1
