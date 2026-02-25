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
        7 DUPTABLE                         R3 K6 [{"ExpectedRootSchema", "SingleInstanceSelected", "NoExtraTags", "HeadIsDynamic"}]
        8 LOADK                            R4 K2 ["ExpectedRootSchema"]
        9 SETTABLEKS                       R4 R3 K2 ["ExpectedRootSchema"]
       11 LOADK                            R4 K3 ["SingleInstanceSelected"]
       12 SETTABLEKS                       R4 R3 K3 ["SingleInstanceSelected"]
       14 LOADK                            R4 K4 ["NoExtraTags"]
       15 SETTABLEKS                       R4 R3 K4 ["NoExtraTags"]
       17 LOADK                            R4 K5 ["HeadIsDynamic"]
       18 SETTABLEKS                       R4 R3 K5 ["HeadIsDynamic"]
       20 SETTABLEKS                       R3 R0 K7 ["ValidationModule"]
       22 MOVE                             R3 R2
       23 LOADK                            R4 K7 ["ValidationModule"]
       24 CALL                             R3 1 0
       25 DUPTABLE                         R3 K20 [{"jobId", "entrypointInput", "rootInstance", "uploadCategory", "uploadEnum", "consumerConfig", "aqsFetchMetrics", "aqsSummaryData", "renderMeshesData", "innerCagesData", "outerCagesData", "meshTextures"}]
       26 LOADK                            R4 K8 ["jobId"]
       27 SETTABLEKS                       R4 R3 K8 ["jobId"]
       29 LOADK                            R4 K9 ["entrypointInput"]
       30 SETTABLEKS                       R4 R3 K9 ["entrypointInput"]
       32 LOADK                            R4 K10 ["rootInstance"]
       33 SETTABLEKS                       R4 R3 K10 ["rootInstance"]
       35 LOADK                            R4 K11 ["uploadCategory"]
       36 SETTABLEKS                       R4 R3 K11 ["uploadCategory"]
       38 LOADK                            R4 K12 ["uploadEnum"]
       39 SETTABLEKS                       R4 R3 K12 ["uploadEnum"]
       41 LOADK                            R4 K13 ["consumerConfig"]
       42 SETTABLEKS                       R4 R3 K13 ["consumerConfig"]
       44 LOADK                            R4 K14 ["aqsFetchMetrics"]
       45 SETTABLEKS                       R4 R3 K14 ["aqsFetchMetrics"]
       47 LOADK                            R4 K15 ["aqsSummaryData"]
       48 SETTABLEKS                       R4 R3 K15 ["aqsSummaryData"]
       50 LOADK                            R4 K16 ["renderMeshesData"]
       51 SETTABLEKS                       R4 R3 K16 ["renderMeshesData"]
       53 LOADK                            R4 K17 ["innerCagesData"]
       54 SETTABLEKS                       R4 R3 K17 ["innerCagesData"]
       56 LOADK                            R4 K18 ["outerCagesData"]
       57 SETTABLEKS                       R4 R3 K18 ["outerCagesData"]
       59 LOADK                            R4 K19 ["meshTextures"]
       60 SETTABLEKS                       R4 R3 K19 ["meshTextures"]
       62 SETTABLEKS                       R3 R0 K21 ["SharedDataMember"]
       64 MOVE                             R3 R2
       65 LOADK                            R4 K21 ["SharedDataMember"]
       66 CALL                             R3 1 0
       67 DUPTABLE                         R3 K32 [{"categories", "fflag", "shadowFlag", "prereqTests", "requiredData", "conditionalData", "expectedAqsData", "knownAqsUserErrors", "expectedFailures", "run"}]
       68 LOADK                            R4 K22 ["categories"]
       69 SETTABLEKS                       R4 R3 K22 ["categories"]
       71 LOADK                            R4 K23 ["fflag"]
       72 SETTABLEKS                       R4 R3 K23 ["fflag"]
       74 LOADK                            R4 K24 ["shadowFlag"]
       75 SETTABLEKS                       R4 R3 K24 ["shadowFlag"]
       77 LOADK                            R4 K25 ["prereqTests"]
       78 SETTABLEKS                       R4 R3 K25 ["prereqTests"]
       80 LOADK                            R4 K26 ["requiredData"]
       81 SETTABLEKS                       R4 R3 K26 ["requiredData"]
       83 LOADK                            R4 K27 ["conditionalData"]
       84 SETTABLEKS                       R4 R3 K27 ["conditionalData"]
       86 LOADK                            R4 K28 ["expectedAqsData"]
       87 SETTABLEKS                       R4 R3 K28 ["expectedAqsData"]
       89 LOADK                            R4 K29 ["knownAqsUserErrors"]
       90 SETTABLEKS                       R4 R3 K29 ["knownAqsUserErrors"]
       92 LOADK                            R4 K30 ["expectedFailures"]
       93 SETTABLEKS                       R4 R3 K30 ["expectedFailures"]
       95 LOADK                            R4 K31 ["run"]
       96 SETTABLEKS                       R4 R3 K31 ["run"]
       98 SETTABLEKS                       R3 R0 K33 ["ValidationConfig"]
      100 MOVE                             R3 R2
      101 LOADK                            R4 K33 ["ValidationConfig"]
      102 CALL                             R3 1 0
      103 DUPTABLE                         R3 K39 [{"CANNOT_START", "TIMEOUT", "ERROR", "FAIL", "PASS"}]
      104 LOADK                            R4 K34 ["CANNOT_START"]
      105 SETTABLEKS                       R4 R3 K34 ["CANNOT_START"]
      107 LOADK                            R4 K35 ["TIMEOUT"]
      108 SETTABLEKS                       R4 R3 K35 ["TIMEOUT"]
      110 LOADK                            R4 K36 ["ERROR"]
      111 SETTABLEKS                       R4 R3 K36 ["ERROR"]
      113 LOADK                            R4 K37 ["FAIL"]
      114 SETTABLEKS                       R4 R3 K37 ["FAIL"]
      116 LOADK                            R4 K38 ["PASS"]
      117 SETTABLEKS                       R4 R3 K38 ["PASS"]
      119 SETTABLEKS                       R3 R0 K40 ["Status"]
      121 MOVE                             R3 R2
      122 LOADK                            R4 K40 ["Status"]
      123 CALL                             R3 1 0
      124 DUPTABLE                         R3 K49 [{"TORSO_AND_LIMBS", "DYNAMIC_HEAD", "LAYERED_CLOTHING", "RIGID_ACCESSORY", "EMOTE_ANIMATION", "MAKEUP", "FULL_BODY", "BOTH_SHOES"}]
      125 LOADK                            R4 K41 ["TORSO_AND_LIMBS"]
      126 SETTABLEKS                       R4 R3 K41 ["TORSO_AND_LIMBS"]
      128 LOADK                            R4 K42 ["DYNAMIC_HEAD"]
      129 SETTABLEKS                       R4 R3 K42 ["DYNAMIC_HEAD"]
      131 LOADK                            R4 K43 ["LAYERED_CLOTHING"]
      132 SETTABLEKS                       R4 R3 K43 ["LAYERED_CLOTHING"]
      134 LOADK                            R4 K44 ["RIGID_ACCESSORY"]
      135 SETTABLEKS                       R4 R3 K44 ["RIGID_ACCESSORY"]
      137 LOADK                            R4 K45 ["EMOTE_ANIMATION"]
      138 SETTABLEKS                       R4 R3 K45 ["EMOTE_ANIMATION"]
      140 LOADK                            R4 K46 ["MAKEUP"]
      141 SETTABLEKS                       R4 R3 K46 ["MAKEUP"]
      143 LOADK                            R4 K47 ["FULL_BODY"]
      144 SETTABLEKS                       R4 R3 K47 ["FULL_BODY"]
      146 LOADK                            R4 K48 ["BOTH_SHOES"]
      147 SETTABLEKS                       R4 R3 K48 ["BOTH_SHOES"]
      149 SETTABLEKS                       R3 R0 K50 ["UploadCategory"]
      151 MOVE                             R3 R2
      152 LOADK                            R4 K50 ["UploadCategory"]
      153 CALL                             R3 1 0
      154 RETURN                           R0 1
