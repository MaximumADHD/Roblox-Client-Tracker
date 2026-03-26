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
        7 DUPTABLE                         R3 K10 [{"ExpectedRootSchema", "SingleInstanceSelected", "NoExtraTags", "HeadIsDynamic", "NoFACSOverrideData", "FacsHeadConsistency", "BodySkinnedToSchema", "FacsNotDrivingSchema"}]
        8 LOADK                            R4 K2 ["ExpectedRootSchema"]
        9 SETTABLEKS                       R4 R3 K2 ["ExpectedRootSchema"]
       11 LOADK                            R4 K3 ["SingleInstanceSelected"]
       12 SETTABLEKS                       R4 R3 K3 ["SingleInstanceSelected"]
       14 LOADK                            R4 K4 ["NoExtraTags"]
       15 SETTABLEKS                       R4 R3 K4 ["NoExtraTags"]
       17 LOADK                            R4 K5 ["HeadIsDynamic"]
       18 SETTABLEKS                       R4 R3 K5 ["HeadIsDynamic"]
       20 LOADK                            R4 K6 ["NoFACSOverrideData"]
       21 SETTABLEKS                       R4 R3 K6 ["NoFACSOverrideData"]
       23 LOADK                            R4 K7 ["FacsHeadConsistency"]
       24 SETTABLEKS                       R4 R3 K7 ["FacsHeadConsistency"]
       26 LOADK                            R4 K8 ["BodySkinnedToSchema"]
       27 SETTABLEKS                       R4 R3 K8 ["BodySkinnedToSchema"]
       29 LOADK                            R4 K9 ["FacsNotDrivingSchema"]
       30 SETTABLEKS                       R4 R3 K9 ["FacsNotDrivingSchema"]
       32 SETTABLEKS                       R3 R0 K11 ["ValidationModule"]
       34 MOVE                             R3 R2
       35 LOADK                            R4 K11 ["ValidationModule"]
       36 CALL                             R3 1 0
       37 DUPTABLE                         R3 K24 [{"jobId", "entrypointInput", "rootInstance", "uploadCategory", "uploadEnum", "consumerConfig", "aqsFetchMetrics", "aqsSummaryData", "renderMeshesData", "innerCagesData", "outerCagesData", "meshTextures"}]
       38 LOADK                            R4 K12 ["jobId"]
       39 SETTABLEKS                       R4 R3 K12 ["jobId"]
       41 LOADK                            R4 K13 ["entrypointInput"]
       42 SETTABLEKS                       R4 R3 K13 ["entrypointInput"]
       44 LOADK                            R4 K14 ["rootInstance"]
       45 SETTABLEKS                       R4 R3 K14 ["rootInstance"]
       47 LOADK                            R4 K15 ["uploadCategory"]
       48 SETTABLEKS                       R4 R3 K15 ["uploadCategory"]
       50 LOADK                            R4 K16 ["uploadEnum"]
       51 SETTABLEKS                       R4 R3 K16 ["uploadEnum"]
       53 LOADK                            R4 K17 ["consumerConfig"]
       54 SETTABLEKS                       R4 R3 K17 ["consumerConfig"]
       56 LOADK                            R4 K18 ["aqsFetchMetrics"]
       57 SETTABLEKS                       R4 R3 K18 ["aqsFetchMetrics"]
       59 LOADK                            R4 K19 ["aqsSummaryData"]
       60 SETTABLEKS                       R4 R3 K19 ["aqsSummaryData"]
       62 LOADK                            R4 K20 ["renderMeshesData"]
       63 SETTABLEKS                       R4 R3 K20 ["renderMeshesData"]
       65 LOADK                            R4 K21 ["innerCagesData"]
       66 SETTABLEKS                       R4 R3 K21 ["innerCagesData"]
       68 LOADK                            R4 K22 ["outerCagesData"]
       69 SETTABLEKS                       R4 R3 K22 ["outerCagesData"]
       71 LOADK                            R4 K23 ["meshTextures"]
       72 SETTABLEKS                       R4 R3 K23 ["meshTextures"]
       74 SETTABLEKS                       R3 R0 K25 ["SharedDataMember"]
       76 MOVE                             R3 R2
       77 LOADK                            R4 K25 ["SharedDataMember"]
       78 CALL                             R3 1 0
       79 DUPTABLE                         R3 K36 [{"categories", "fflag", "shadowFlag", "prereqTests", "requiredData", "conditionalData", "expectedAqsData", "knownAqsUserErrors", "expectedFailures", "run"}]
       80 LOADK                            R4 K26 ["categories"]
       81 SETTABLEKS                       R4 R3 K26 ["categories"]
       83 LOADK                            R4 K27 ["fflag"]
       84 SETTABLEKS                       R4 R3 K27 ["fflag"]
       86 LOADK                            R4 K28 ["shadowFlag"]
       87 SETTABLEKS                       R4 R3 K28 ["shadowFlag"]
       89 LOADK                            R4 K29 ["prereqTests"]
       90 SETTABLEKS                       R4 R3 K29 ["prereqTests"]
       92 LOADK                            R4 K30 ["requiredData"]
       93 SETTABLEKS                       R4 R3 K30 ["requiredData"]
       95 LOADK                            R4 K31 ["conditionalData"]
       96 SETTABLEKS                       R4 R3 K31 ["conditionalData"]
       98 LOADK                            R4 K32 ["expectedAqsData"]
       99 SETTABLEKS                       R4 R3 K32 ["expectedAqsData"]
      101 LOADK                            R4 K33 ["knownAqsUserErrors"]
      102 SETTABLEKS                       R4 R3 K33 ["knownAqsUserErrors"]
      104 LOADK                            R4 K34 ["expectedFailures"]
      105 SETTABLEKS                       R4 R3 K34 ["expectedFailures"]
      107 LOADK                            R4 K35 ["run"]
      108 SETTABLEKS                       R4 R3 K35 ["run"]
      110 SETTABLEKS                       R3 R0 K37 ["ValidationConfig"]
      112 MOVE                             R3 R2
      113 LOADK                            R4 K37 ["ValidationConfig"]
      114 CALL                             R3 1 0
      115 DUPTABLE                         R3 K43 [{"CANNOT_START", "TIMEOUT", "ERROR", "FAIL", "PASS"}]
      116 LOADK                            R4 K38 ["CANNOT_START"]
      117 SETTABLEKS                       R4 R3 K38 ["CANNOT_START"]
      119 LOADK                            R4 K39 ["TIMEOUT"]
      120 SETTABLEKS                       R4 R3 K39 ["TIMEOUT"]
      122 LOADK                            R4 K40 ["ERROR"]
      123 SETTABLEKS                       R4 R3 K40 ["ERROR"]
      125 LOADK                            R4 K41 ["FAIL"]
      126 SETTABLEKS                       R4 R3 K41 ["FAIL"]
      128 LOADK                            R4 K42 ["PASS"]
      129 SETTABLEKS                       R4 R3 K42 ["PASS"]
      131 SETTABLEKS                       R3 R0 K44 ["Status"]
      133 MOVE                             R3 R2
      134 LOADK                            R4 K44 ["Status"]
      135 CALL                             R3 1 0
      136 DUPTABLE                         R3 K53 [{"TORSO_AND_LIMBS", "DYNAMIC_HEAD", "LAYERED_CLOTHING", "RIGID_ACCESSORY", "EMOTE_ANIMATION", "MAKEUP", "FULL_BODY", "BOTH_SHOES"}]
      137 LOADK                            R4 K45 ["TORSO_AND_LIMBS"]
      138 SETTABLEKS                       R4 R3 K45 ["TORSO_AND_LIMBS"]
      140 LOADK                            R4 K46 ["DYNAMIC_HEAD"]
      141 SETTABLEKS                       R4 R3 K46 ["DYNAMIC_HEAD"]
      143 LOADK                            R4 K47 ["LAYERED_CLOTHING"]
      144 SETTABLEKS                       R4 R3 K47 ["LAYERED_CLOTHING"]
      146 LOADK                            R4 K48 ["RIGID_ACCESSORY"]
      147 SETTABLEKS                       R4 R3 K48 ["RIGID_ACCESSORY"]
      149 LOADK                            R4 K49 ["EMOTE_ANIMATION"]
      150 SETTABLEKS                       R4 R3 K49 ["EMOTE_ANIMATION"]
      152 LOADK                            R4 K50 ["MAKEUP"]
      153 SETTABLEKS                       R4 R3 K50 ["MAKEUP"]
      155 LOADK                            R4 K51 ["FULL_BODY"]
      156 SETTABLEKS                       R4 R3 K51 ["FULL_BODY"]
      158 LOADK                            R4 K52 ["BOTH_SHOES"]
      159 SETTABLEKS                       R4 R3 K52 ["BOTH_SHOES"]
      161 SETTABLEKS                       R3 R0 K54 ["UploadCategory"]
      163 MOVE                             R3 R2
      164 LOADK                            R4 K54 ["UploadCategory"]
      165 CALL                             R3 1 0
      166 RETURN                           R0 1
