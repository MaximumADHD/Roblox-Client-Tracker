PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["ValidationModule"]
        9 MOVE                             R6 R5
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 FORGPREP                         R6
       13 JUMPIFEQ                         R9 R10 ; [+2]
       15 LOADB                            R12 0 +1
       16 LOADB                            R12 1
       17 FASTCALL1                        ASSERT R12 ; [+2]
       18 GETIMPORT                        R11 K2 [assert]
       20 CALL                             R11 1 0
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R11 R12 K3 ["getValidationModule"]
       24 MOVE                             R12 R10
       25 CALL                             R11 1 1
       26 GETTABLEKS                       R12 R11 K4 ["categories"]
       28 GETIMPORT                        R13 K7 [table.find]
       30 MOVE                             R14 R12
       31 MOVE                             R15 R0
       32 CALL                             R13 2 1
       33 JUMPIFNOT                        R13 ; [+76]
       34 GETTABLEKS                       R13 R11 K8 ["fflag"]
       36 CALL                             R13 0 1
       37 JUMPIF                           R13 ; [+4]
       38 GETTABLEKS                       R13 R11 K9 ["shadowFlag"]
       40 CALL                             R13 0 1
       41 JUMPIFNOT                        R13 ; [+68]
       42 GETTABLEKS                       R13 R11 K9 ["shadowFlag"]
       44 CALL                             R13 0 1
       45 JUMPIFNOT                        R13 ; [+4]
       46 GETTABLEKS                       R14 R11 K8 ["fflag"]
       48 CALL                             R14 0 1
       49 NOT                              R13 R14
       50 GETTABLEKS                       R14 R11 K10 ["requiredData"]
       52 LOADNIL                          R15
       53 LOADNIL                          R16
       54 FORGPREP                         R14
       55 LOADB                            R19 1
       56 SETTABLE                         R19 R4 R18
       57 FORGLOOP                         R14 2 ; [-3]
       59 GETTABLEKS                       R14 R11 K11 ["conditionalData"]
       61 LOADNIL                          R15
       62 LOADNIL                          R16
       63 FORGPREP                         R14
       64 LOADB                            R19 1
       65 SETTABLE                         R19 R4 R18
       66 FORGLOOP                         R14 2 ; [-3]
       68 GETIMPORT                        R15 K13 [next]
       70 GETTABLEKS                       R16 R11 K14 ["expectedAqsData"]
       72 CALL                             R15 1 1
       73 JUMPIFNOTEQKNIL                  R15 ; [+2]
       75 LOADB                            R14 0 +1
       76 LOADB                            R14 1
       77 JUMPIFNOT                        R14 ; [+7]
       78 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       80 MOVE                             R16 R2
       81 MOVE                             R17 R10
       82 GETIMPORT                        R15 K16 [table.insert]
       84 CALL                             R15 2 0
       85 NEWTABLE                         R15 0 0
       87 GETTABLEKS                       R16 R11 K17 ["prereqTests"]
       89 LOADNIL                          R17
       90 LOADNIL                          R18
       91 FORGPREP                         R16
       92 LOADB                            R21 1
       93 SETTABLE                         R21 R15 R20
       94 FORGLOOP                         R16 2 ; [-3]
       96 DUPTABLE                         R16 K23 [{"name", "prereqs", "postreqs", "isQuality", "isShadow"}]
       97 SETTABLEKS                       R10 R16 K18 ["name"]
       99 SETTABLEKS                       R15 R16 K19 ["prereqs"]
      101 NEWTABLE                         R17 0 0
      103 SETTABLEKS                       R17 R16 K20 ["postreqs"]
      105 SETTABLEKS                       R14 R16 K21 ["isQuality"]
      107 SETTABLEKS                       R13 R16 K22 ["isShadow"]
      109 SETTABLE                         R16 R3 R10
      110 FORGLOOP                         R6 2 ; [-98]
      112 MOVE                             R6 R3
      113 LOADNIL                          R7
      114 LOADNIL                          R8
      115 FORGPREP                         R6
      116 GETTABLEKS                       R11 R10 K19 ["prereqs"]
      118 LOADNIL                          R12
      119 LOADNIL                          R13
      120 FORGPREP                         R11
      121 GETTABLE                         R16 R3 R14
      122 JUMPIFNOTEQKNIL                  R16 ; [+10]
      124 GETIMPORT                        R16 K25 [error]
      126 GETIMPORT                        R17 K28 [string.format]
      128 LOADK                            R18 K29 ["%s is needed for %s to run, but is not an included test"]
      129 MOVE                             R19 R14
      130 MOVE                             R20 R9
      131 CALL                             R17 3 -1
      132 CALL                             R16 -1 0
      133 GETTABLE                         R18 R3 R14
      134 GETTABLEKS                       R17 R18 K20 ["postreqs"]
      136 FASTCALL2                        TABLE_INSERT R17 R9 ; [+4]
      138 MOVE                             R18 R9
      139 GETIMPORT                        R16 K16 [table.insert]
      141 CALL                             R16 2 0
      142 FORGLOOP                         R11 2 ; [-22]
      144 FORGLOOP                         R6 2 ; [-29]
      146 RETURN                           R2 3

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["GenerateAssetQualityGltfFromInstanceAsync"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["aqsFetchMetrics"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["fetchAttemptCount"]
        6 GETIMPORT                        R0 K4 [os.clock]
        8 CALL                             R0 0 1
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 3
       11 GETUPVAL                         R4 4
       12 NAMECALL                         R1 R1 K5 ["FetchAssetQualitySummaryFromGltfAsync"]
       14 CALL                             R1 3 1
       15 LOADN                            R3 232
       16 GETIMPORT                        R5 K4 [os.clock]
       18 CALL                             R5 0 1
       19 SUB                              R4 R5 R0
       20 MUL                              R2 R3 R4
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["aqsFetchMetrics"]
       24 GETTABLEKS                       R4 R1 K6 ["visualizationUrl"]
       26 SETTABLEKS                       R4 R3 K6 ["visualizationUrl"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K0 ["aqsFetchMetrics"]
       31 SETTABLEKS                       R2 R3 K7 ["fetchTimeMs"]
       33 GETUPVAL                         R3 5
       34 CALL                             R3 0 1
       35 JUMPIFNOT                        R3 ; [+10]
       36 GETUPVAL                         R3 0
       37 GETUPVAL                         R4 6
       38 GETTABLEKS                       R6 R1 K8 ["rawJson"]
       40 NAMECALL                         R4 R4 K9 ["JSONDecode"]
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K10 ["aqsSummaryData"]
       45 RETURN                           R0 0
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R3 R4 K0 ["aqsFetchMetrics"]
       49 GETTABLEKS                       R4 R1 K11 ["version"]
       51 SETTABLEKS                       R4 R3 K12 ["returnVersion"]
       53 GETUPVAL                         R3 0
       54 SETTABLEKS                       R1 R3 K10 ["aqsSummaryData"]
       56 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 GETUPVAL                         R2 1
        4 JUMPIF                           R2 ; [+11]
        5 GETTABLEKS                       R2 R0 K0 ["aqsFetchMetrics"]
        7 LOADK                            R3 K1 ["assetQualityFetchFailure"]
        8 SETTABLEKS                       R3 R2 K2 ["fetchStatus"]
       10 GETTABLEKS                       R2 R0 K0 ["aqsFetchMetrics"]
       12 LOADK                            R3 K3 ["Not enabled"]
       13 SETTABLEKS                       R3 R2 K4 ["fetchFailureReason"]
       15 RETURN                           R0 0
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K5 ["createModelForGltfExport"]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 GETIMPORT                        R6 K7 [pcall]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          REF R5
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R2
       30 CALL                             R6 1 2
       31 MOVE                             R3 R6
       32 MOVE                             R4 R7
       33 JUMPIFNOT                        R3 ; [+22]
       34 LOADN                            R8 1
       35 LOADN                            R9 1
       36 GETUPVAL                         R10 3
       37 CALL                             R10 0 1
       38 ADD                              R6 R9 R10
       39 LOADN                            R7 1
       40 FORNPREP                         R6
       41 GETIMPORT                        R9 K7 [pcall]
       43 NEWCLOSURE                       R10 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R8
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          REF R5
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CALL                             R9 1 2
       52 MOVE                             R3 R9
       53 MOVE                             R4 R10
       54 JUMPIF                           R3 ; [+1]
       55 FORNLOOP                         R6
       56 JUMPIFNOT                        R3 ; [+6]
       57 GETTABLEKS                       R6 R0 K0 ["aqsFetchMetrics"]
       59 LOADK                            R7 K8 ["assetQualityFetchSuccess"]
       60 SETTABLEKS                       R7 R6 K2 ["fetchStatus"]
       62 JUMP                             ; [+22]
       63 GETTABLEKS                       R6 R0 K0 ["aqsFetchMetrics"]
       65 SETTABLEKS                       R4 R6 K4 ["fetchFailureReason"]
       67 GETUPVAL                         R7 6
       68 GETTABLEKS                       R6 R7 K9 ["DATA_FETCH_FAILURE"]
       70 SETTABLEKS                       R6 R0 K10 ["aqsSummaryData"]
       72 GETTABLEKS                       R6 R0 K0 ["aqsFetchMetrics"]
       74 LOADK                            R7 K1 ["assetQualityFetchFailure"]
       75 SETTABLEKS                       R7 R6 K2 ["fetchStatus"]
       77 GETUPVAL                         R6 7
       78 CALL                             R6 0 1
       79 JUMPIFNOT                        R6 ; [+5]
       80 GETIMPORT                        R6 K12 [print]
       82 LOADK                            R7 K13 ["Logged AQS fetch failure:"]
       83 MOVE                             R8 R4
       84 CALL                             R6 2 0
       85 NAMECALL                         R6 R2 K14 ["Destroy"]
       87 CALL                             R6 1 0
       88 CLOSEUPVALS                      R5
       89 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETIMPORT                        R8 K1 [next]
        8 GETTABLEKS                       R9 R7 K2 ["prereqs"]
       10 CALL                             R8 1 1
       11 JUMPIFNOTEQKNIL                  R8 ; [+12]
       13 JUMPIF                           R1 ; [+3]
       14 GETTABLEKS                       R8 R7 K3 ["isQuality"]
       16 JUMPIF                           R8 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       19 MOVE                             R9 R2
       20 MOVE                             R10 R6
       21 GETIMPORT                        R8 K6 [table.insert]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 ; [-19]
       26 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R5 R1 K0 ["aqsFetchMetrics"]
        2 GETTABLEKS                       R4 R5 K1 ["fetchStatus"]
        4 JUMPIFNOTEQKS                    R4 K2 ["assetQualityFetchNA"] ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 DUPTABLE                         R4 K20 [{"validationJobId", "bundleJobId", "rootInstanceId", "studioSid", "clientId", "placeId", "validationSource", "assetType", "bundleType", "numFailures", "passed", "durationMs", "uploadCategory", "aqFetchStatus", "aqFetchAttemptCount", "aqFetchTimeMs", "aqFetchFailureReason"}]
        9 GETTABLEKS                       R5 R1 K21 ["jobId"]
       11 SETTABLEKS                       R5 R4 K3 ["validationJobId"]
       13 GETTABLEKS                       R6 R1 K22 ["consumerConfig"]
       15 GETTABLEKS                       R5 R6 K23 ["telemetryBundleId"]
       17 SETTABLEKS                       R5 R4 K4 ["bundleJobId"]
       19 GETTABLEKS                       R6 R1 K22 ["consumerConfig"]
       21 GETTABLEKS                       R5 R6 K24 ["telemetryRootId"]
       23 SETTABLEKS                       R5 R4 K5 ["rootInstanceId"]
       25 GETUPVAL                         R5 0
       26 NAMECALL                         R5 R5 K25 ["GetSessionId"]
       28 CALL                             R5 1 1
       29 SETTABLEKS                       R5 R4 K6 ["studioSid"]
       31 GETUPVAL                         R5 0
       32 NAMECALL                         R5 R5 K26 ["GetClientId"]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R4 K7 ["clientId"]
       37 GETIMPORT                        R6 K28 [game]
       39 GETTABLEKS                       R5 R6 K29 ["PlaceId"]
       41 SETTABLEKS                       R5 R4 K8 ["placeId"]
       43 GETTABLEKS                       R6 R1 K22 ["consumerConfig"]
       45 GETTABLEKS                       R5 R6 K30 ["source"]
       47 SETTABLEKS                       R5 R4 K9 ["validationSource"]
       49 GETTABLEKS                       R7 R1 K31 ["uploadEnum"]
       51 GETTABLEKS                       R6 R7 K10 ["assetType"]
       53 JUMPIFNOT                        R6 ; [+7]
       54 GETTABLEKS                       R7 R1 K31 ["uploadEnum"]
       56 GETTABLEKS                       R6 R7 K10 ["assetType"]
       58 GETTABLEKS                       R5 R6 K32 ["Value"]
       60 JUMPIF                           R5 ; [+1]
       61 LOADN                            R5 0
       62 SETTABLEKS                       R5 R4 K10 ["assetType"]
       64 GETTABLEKS                       R7 R1 K31 ["uploadEnum"]
       66 GETTABLEKS                       R6 R7 K11 ["bundleType"]
       68 JUMPIFNOT                        R6 ; [+7]
       69 GETTABLEKS                       R7 R1 K31 ["uploadEnum"]
       71 GETTABLEKS                       R6 R7 K11 ["bundleType"]
       73 GETTABLEKS                       R5 R6 K32 ["Value"]
       75 JUMPIF                           R5 ; [+1]
       76 LOADN                            R5 0
       77 SETTABLEKS                       R5 R4 K11 ["bundleType"]
       79 GETTABLEKS                       R5 R0 K12 ["numFailures"]
       81 SETTABLEKS                       R5 R4 K12 ["numFailures"]
       83 GETTABLEKS                       R5 R0 K33 ["pass"]
       85 SETTABLEKS                       R5 R4 K13 ["passed"]
       87 SETTABLEKS                       R2 R4 K14 ["durationMs"]
       89 GETTABLEKS                       R5 R1 K15 ["uploadCategory"]
       91 SETTABLEKS                       R5 R4 K15 ["uploadCategory"]
       93 GETTABLEKS                       R6 R1 K0 ["aqsFetchMetrics"]
       95 GETTABLEKS                       R5 R6 K1 ["fetchStatus"]
       97 SETTABLEKS                       R5 R4 K16 ["aqFetchStatus"]
       99 JUMPIFNOT                        R3 ; [+5]
      100 GETTABLEKS                       R6 R1 K0 ["aqsFetchMetrics"]
      102 GETTABLEKS                       R5 R6 K34 ["fetchAttemptCount"]
      104 JUMPIF                           R5 ; [+1]
      105 LOADN                            R5 0
      106 SETTABLEKS                       R5 R4 K17 ["aqFetchAttemptCount"]
      108 JUMPIFNOT                        R3 ; [+5]
      109 GETTABLEKS                       R6 R1 K0 ["aqsFetchMetrics"]
      111 GETTABLEKS                       R5 R6 K35 ["fetchTimeMs"]
      113 JUMPIF                           R5 ; [+1]
      114 LOADN                            R5 0
      115 SETTABLEKS                       R5 R4 K18 ["aqFetchTimeMs"]
      117 JUMPIFNOT                        R3 ; [+5]
      118 GETTABLEKS                       R6 R1 K0 ["aqsFetchMetrics"]
      120 GETTABLEKS                       R5 R6 K36 ["fetchFailureReason"]
      122 JUMPIF                           R5 ; [+1]
      123 LOADK                            R5 K37 [""]
      124 SETTABLEKS                       R5 R4 K19 ["aqFetchFailureReason"]
      126 GETUPVAL                         R5 1
      127 GETUPVAL                         R7 2
      128 DUPTABLE                         R8 K39 [{"customFields"}]
      129 SETTABLEKS                       R4 R8 K38 ["customFields"]
      131 NAMECALL                         R5 R5 K40 ["LogEvent"]
      133 CALL                             R5 3 0
      134 GETUPVAL                         R5 3
      135 CALL                             R5 0 1
      136 JUMPIFNOT                        R5 ; [+4]
      137 GETIMPORT                        R5 K42 [print]
      139 MOVE                             R6 R0
      140 CALL                             R5 1 0
      141 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R5 R2 K0 ["validationEnum"]
        2 JUMPIF                           R4 ; [+4]
        3 GETTABLE                         R7 R1 R5
        4 GETTABLEKS                       R6 R7 K1 ["isShadow"]
        6 JUMPIF                           R6 ; [+83]
        7 GETTABLEKS                       R6 R0 K2 ["states"]
        9 GETTABLEKS                       R7 R2 K3 ["status"]
       11 SETTABLE                         R7 R6 R5
       12 GETTABLEKS                       R6 R0 K4 ["internalData"]
       14 GETTABLEKS                       R7 R2 K4 ["internalData"]
       16 SETTABLE                         R7 R6 R5
       17 GETTABLEKS                       R7 R2 K5 ["errorTranslationContexts"]
       19 LENGTH                           R6 R7
       20 LOADN                            R7 0
       21 JUMPIFNOTLT                      R7 R6 ; [+16]
       23 GETIMPORT                        R6 K8 [table.move]
       25 GETTABLEKS                       R7 R2 K5 ["errorTranslationContexts"]
       27 LOADN                            R8 1
       28 GETTABLEKS                       R10 R2 K5 ["errorTranslationContexts"]
       30 LENGTH                           R9 R10
       31 GETTABLEKS                       R12 R0 K5 ["errorTranslationContexts"]
       33 LENGTH                           R11 R12
       34 ADDK                             R10 R11 K9 [1]
       35 GETTABLEKS                       R11 R0 K5 ["errorTranslationContexts"]
       37 CALL                             R6 5 0
       38 GETTABLEKS                       R6 R2 K3 ["status"]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R8 R9 K10 ["Status"]
       43 GETTABLEKS                       R7 R8 K11 ["PASS"]
       45 JUMPIFEQ                         R6 R7 ; [+44]
       47 LOADB                            R6 0
       48 SETTABLEKS                       R6 R0 K12 ["pass"]
       50 GETTABLEKS                       R6 R0 K13 ["numFailures"]
       52 ADDK                             R6 R6 K9 [1]
       53 SETTABLEKS                       R6 R0 K13 ["numFailures"]
       55 GETTABLEKS                       R6 R2 K3 ["status"]
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R8 R9 K10 ["Status"]
       60 GETTABLEKS                       R7 R8 K14 ["ERROR"]
       62 JUMPIFNOTEQ                      R6 R7 ; [+27]
       64 GETTABLEKS                       R6 R0 K15 ["ranIntoInternalError"]
       66 JUMPIF                           R6 ; [+23]
       67 LOADB                            R6 1
       68 SETTABLEKS                       R6 R0 K15 ["ranIntoInternalError"]
       70 GETTABLEKS                       R7 R0 K5 ["errorTranslationContexts"]
       72 DUPTABLE                         R8 K18 [{"key", "params"}]
       73 GETUPVAL                         R11 1
       74 GETTABLEKS                       R10 R11 K19 ["Keys"]
       76 GETTABLEKS                       R9 R10 K20 ["InternalError"]
       78 SETTABLEKS                       R9 R8 K16 ["key"]
       80 DUPTABLE                         R9 K22 [{"ValidationJobId"}]
       81 SETTABLEKS                       R3 R9 K21 ["ValidationJobId"]
       83 SETTABLEKS                       R9 R8 K17 ["params"]
       85 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       87 GETIMPORT                        R6 K24 [table.insert]
       89 CALL                             R6 2 0
       90 GETTABLE                         R9 R1 R5
       91 GETTABLEKS                       R6 R9 K25 ["postreqs"]
       93 LOADNIL                          R7
       94 LOADNIL                          R8
       95 FORGPREP                         R6
       96 GETTABLE                         R12 R1 R10
       97 GETTABLEKS                       R11 R12 K26 ["prereqs"]
       99 LOADNIL                          R12
      100 SETTABLE                         R12 R11 R5
      101 FORGLOOP                         R6 2 ; [-6]
      103 LOADNIL                          R6
      104 SETTABLE                         R6 R1 R5
      105 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R1 K3 ["enforceR15FolderStructure"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+4]
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K3 ["enforceR15FolderStructure"]
       11 GETTABLEKS                       R2 R1 K4 ["enforceShadowValidations"]
       13 JUMPIFNOTEQKNIL                  R2 ; [+4]
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R1 K4 ["enforceShadowValidations"]
       18 GETTABLEKS                       R3 R1 K6 ["telemetryBundleId"]
       20 ORK                              R2 R3 K5 [""]
       21 SETTABLEKS                       R2 R1 K6 ["telemetryBundleId"]
       23 GETTABLEKS                       R3 R1 K7 ["telemetryRootId"]
       25 ORK                              R2 R3 K5 [""]
       26 SETTABLEKS                       R2 R1 K7 ["telemetryRootId"]
       28 GETTABLEKS                       R2 R1 K8 ["preloadedEditableMeshes"]
       30 JUMPIF                           R2 ; [+2]
       31 NEWTABLE                         R2 0 0
       33 SETTABLEKS                       R2 R1 K8 ["preloadedEditableMeshes"]
       35 GETTABLEKS                       R2 R1 K9 ["preloadedEditableImages"]
       37 JUMPIF                           R2 ; [+2]
       38 NEWTABLE                         R2 0 0
       40 SETTABLEKS                       R2 R1 K9 ["preloadedEditableImages"]
       42 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R2 R0 K3 ["rootInstance"]
        5 GETTABLEKS                       R6 R0 K4 ["uploadEnum"]
        7 GETTABLEKS                       R3 R6 K5 ["assetType"]
        9 GETTABLEKS                       R6 R0 K4 ["uploadEnum"]
       11 GETTABLEKS                       R4 R6 K6 ["bundleType"]
       13 GETTABLEKS                       R5 R0 K7 ["consumerConfig"]
       15 DUPTABLE                         R6 K14 [{"pass", "numFailures", "states", "errorTranslationContexts", "internalData", "ranIntoInternalError"}]
       16 LOADB                            R7 1
       17 SETTABLEKS                       R7 R6 K8 ["pass"]
       19 LOADN                            R7 0
       20 SETTABLEKS                       R7 R6 K9 ["numFailures"]
       22 NEWTABLE                         R7 0 0
       24 SETTABLEKS                       R7 R6 K10 ["states"]
       26 NEWTABLE                         R7 0 0
       28 SETTABLEKS                       R7 R6 K11 ["errorTranslationContexts"]
       30 NEWTABLE                         R7 0 0
       32 SETTABLEKS                       R7 R6 K12 ["internalData"]
       34 LOADB                            R7 0
       35 SETTABLEKS                       R7 R6 K13 ["ranIntoInternalError"]
       37 GETUPVAL                         R7 0
       38 MOVE                             R8 R2
       39 MOVE                             R9 R3
       40 MOVE                             R10 R4
       41 CALL                             R7 3 1
       42 GETUPVAL                         R8 1
       43 MOVE                             R9 R7
       44 MOVE                             R10 R5
       45 CALL                             R8 2 3
       46 SETTABLEKS                       R7 R0 K15 ["uploadCategory"]
       48 DUPTABLE                         R11 K17 [{"fetchStatus"}]
       49 LOADK                            R12 K18 ["assetQualityFetchNA"]
       50 SETTABLEKS                       R12 R11 K16 ["fetchStatus"]
       52 SETTABLEKS                       R11 R0 K19 ["aqsFetchMetrics"]
       54 GETUPVAL                         R11 2
       55 GETUPVAL                         R14 3
       56 GETTABLEKS                       R13 R14 K20 ["ValidationModule"]
       58 GETTABLEKS                       R12 R13 K21 ["ExpectedRootSchema"]
       60 MOVE                             R13 R0
       61 GETTABLEKS                       R14 R6 K10 ["states"]
       63 CALL                             R11 3 1
       64 GETUPVAL                         R12 4
       65 MOVE                             R13 R6
       66 MOVE                             R14 R9
       67 MOVE                             R15 R11
       68 GETTABLEKS                       R16 R0 K22 ["jobId"]
       70 GETTABLEKS                       R17 R5 K23 ["enforceShadowValidations"]
       72 CALL                             R12 5 0
       73 GETTABLEKS                       R13 R6 K10 ["states"]
       75 GETUPVAL                         R16 3
       76 GETTABLEKS                       R15 R16 K20 ["ValidationModule"]
       78 GETTABLEKS                       R14 R15 K21 ["ExpectedRootSchema"]
       80 GETTABLE                         R12 R13 R14
       81 GETUPVAL                         R15 3
       82 GETTABLEKS                       R14 R15 K24 ["Status"]
       84 GETTABLEKS                       R13 R14 K25 ["PASS"]
       86 JUMPIFEQ                         R12 R13 ; [+7]
       88 GETUPVAL                         R12 5
       89 MOVE                             R13 R6
       90 MOVE                             R14 R0
       91 LOADN                            R15 255
       92 CALL                             R12 3 0
       93 RETURN                           R6 1
       94 GETUPVAL                         R13 6
       95 GETTABLEKS                       R12 R13 K26 ["storeDesiredData"]
       97 MOVE                             R13 R0
       98 MOVE                             R14 R10
       99 CALL                             R12 2 0
      100 LENGTH                           R12 R8
      101 LOADN                            R13 0
      102 JUMPIFNOTLT                      R13 R12 ; [+30]
      104 GETTABLEKS                       R12 R0 K19 ["aqsFetchMetrics"]
      106 LOADK                            R13 K27 ["assetQualityFetchInProgress"]
      107 SETTABLEKS                       R13 R12 K16 ["fetchStatus"]
      109 GETUPVAL                         R13 7
      110 GETTABLEKS                       R14 R5 K28 ["source"]
      112 GETTABLE                         R12 R13 R14
      113 JUMPIFNOT                        R12 ; [+13]
      114 GETUPVAL                         R12 8
      115 NAMECALL                         R12 R12 K29 ["Run"]
      117 CALL                             R12 1 0
      118 GETUPVAL                         R12 9
      119 MOVE                             R13 R0
      120 MOVE                             R14 R8
      121 CALL                             R12 2 0
      122 GETUPVAL                         R12 8
      123 NAMECALL                         R12 R12 K30 ["Pause"]
      125 CALL                             R12 1 0
      126 JUMP                             ; [+6]
      127 GETIMPORT                        R12 K33 [task.spawn]
      129 GETUPVAL                         R13 9
      130 MOVE                             R14 R0
      131 MOVE                             R15 R8
      132 CALL                             R12 3 0
      133 GETIMPORT                        R12 K35 [next]
      135 MOVE                             R13 R9
      136 CALL                             R12 1 1
      137 JUMPIFEQKNIL                     R12 ; [+60]
      139 GETTABLEKS                       R14 R0 K19 ["aqsFetchMetrics"]
      141 GETTABLEKS                       R13 R14 K16 ["fetchStatus"]
      143 JUMPIFEQKS                       R13 K27 ["assetQualityFetchInProgress"] ; [+2]
      145 LOADB                            R12 0 +1
      146 LOADB                            R12 1
      147 GETUPVAL                         R13 10
      148 MOVE                             R14 R9
      149 NOT                              R15 R12
      150 CALL                             R13 2 1
      151 LENGTH                           R14 R13
      152 JUMPIFNOTEQKN                    R14 K36 [0] ; [+6]
      154 JUMPIF                           R12 ; [+4]
      155 GETIMPORT                        R14 K38 [error]
      157 LOADK                            R15 K39 ["Impossible to complete all layers"]
      158 CALL                             R14 1 0
      159 MOVE                             R14 R13
      160 LOADNIL                          R15
      161 LOADNIL                          R16
      162 FORGPREP                         R14
      163 GETUPVAL                         R19 2
      164 MOVE                             R20 R18
      165 MOVE                             R21 R0
      166 GETTABLEKS                       R22 R6 K10 ["states"]
      168 CALL                             R19 3 1
      169 GETUPVAL                         R20 4
      170 MOVE                             R21 R6
      171 MOVE                             R22 R9
      172 MOVE                             R23 R19
      173 GETTABLEKS                       R24 R0 K22 ["jobId"]
      175 GETTABLEKS                       R25 R5 K23 ["enforceShadowValidations"]
      177 CALL                             R20 5 0
      178 GETUPVAL                         R21 11
      179 GETTABLEKS                       R22 R5 K28 ["source"]
      181 GETTABLE                         R20 R21 R22
      182 JUMPIFNOT                        R20 ; [+3]
      183 GETIMPORT                        R20 K41 [task.wait]
      185 CALL                             R20 0 0
      186 FORGLOOP                         R14 2 ; [-24]
      188 JUMPIFNOT                        R12 ; [+8]
      189 GETUPVAL                         R15 7
      190 GETTABLEKS                       R16 R5 K28 ["source"]
      192 GETTABLE                         R14 R15 R16
      193 JUMPIF                           R14 ; [+3]
      194 GETIMPORT                        R14 K41 [task.wait]
      196 CALL                             R14 0 0
      197 JUMPBACK                         ; [-65]
      198 GETUPVAL                         R12 5
      199 MOVE                             R13 R6
      200 MOVE                             R14 R0
      201 LOADN                            R16 232
      202 GETIMPORT                        R18 K2 [os.clock]
      204 CALL                             R18 0 1
      205 SUB                              R17 R18 R1
      206 MUL                              R15 R16 R17
      207 CALL                             R12 3 0
      208 RETURN                           R6 1

PROTO_9:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R6 R5 K1 ["Name"]
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K2 ["FOLDER_NAMES"]
       14 GETTABLEKS                       R7 R8 K3 ["R15ArtistIntent"]
       16 JUMPIFNOTEQ                      R6 R7 ; [+2]
       18 RETURN                           R5 1
       19 FORGLOOP                         R1 2 ; [-11]
       21 GETTABLEN                        R1 R0 1
       22 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETIMPORT                        R3 K1 [print]
        5 LOADK                            R5 K2 ["==== %* Validation begin ===="]
        6 GETTABLEKS                       R7 R1 K3 ["Name"]
        8 NAMECALL                         R5 R5 K4 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 CALL                             R3 1 0
       13 DUPTABLE                         R3 K10 [{"jobId", "entrypointInput", "rootInstance", "uploadEnum", "consumerConfig"}]
       14 GETUPVAL                         R4 1
       15 NAMECALL                         R4 R4 K11 ["GenerateGUID"]
       17 CALL                             R4 1 1
       18 SETTABLEKS                       R4 R3 K5 ["jobId"]
       20 SETTABLEKS                       R0 R3 K6 ["entrypointInput"]
       22 LENGTH                           R5 R0
       23 JUMPIFNOTEQKN                    R5 K12 [0] ; [+3]
       25 LOADNIL                          R4
       26 JUMP                             ; [+18]
       27 MOVE                             R5 R0
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 GETTABLEKS                       R10 R9 K3 ["Name"]
       33 GETUPVAL                         R13 2
       34 GETTABLEKS                       R12 R13 K13 ["FOLDER_NAMES"]
       36 GETTABLEKS                       R11 R12 K14 ["R15ArtistIntent"]
       38 JUMPIFNOTEQ                      R10 R11 ; [+3]
       40 MOVE                             R4 R9
       41 JUMP                             ; [+3]
       42 FORGLOOP                         R5 2 ; [-12]
       44 GETTABLEN                        R4 R0 1
       45 SETTABLEKS                       R4 R3 K7 ["rootInstance"]
       47 DUPTABLE                         R4 K16 [{"assetType"}]
       48 SETTABLEKS                       R1 R4 K15 ["assetType"]
       50 SETTABLEKS                       R4 R3 K8 ["uploadEnum"]
       52 GETUPVAL                         R4 3
       53 MOVE                             R5 R2
       54 CALL                             R4 1 1
       55 SETTABLEKS                       R4 R3 K9 ["consumerConfig"]
       57 GETUPVAL                         R4 4
       58 MOVE                             R5 R3
       59 CALL                             R4 1 1
       60 RETURN                           R4 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+10]
        3 GETIMPORT                        R3 K1 [print]
        5 LOADK                            R5 K2 ["==== %* Validation begin ===="]
        6 GETTABLEKS                       R7 R1 K3 ["Name"]
        8 NAMECALL                         R5 R5 K4 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 CALL                             R3 1 0
       13 GETIMPORT                        R3 K7 [Instance.new]
       15 LOADK                            R4 K8 ["Folder"]
       16 CALL                             R3 1 1
       17 MOVE                             R4 R0
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 GETTABLEKS                       R10 R8 K9 ["allSelectedInstances"]
       23 LENGTH                           R11 R10
       24 JUMPIFNOTEQKN                    R11 K10 [0] ; [+3]
       26 LOADNIL                          R9
       27 JUMP                             ; [+18]
       28 MOVE                             R11 R10
       29 LOADNIL                          R12
       30 LOADNIL                          R13
       31 FORGPREP                         R11
       32 GETTABLEKS                       R16 R15 K3 ["Name"]
       34 GETUPVAL                         R19 1
       35 GETTABLEKS                       R18 R19 K11 ["FOLDER_NAMES"]
       37 GETTABLEKS                       R17 R18 K12 ["R15ArtistIntent"]
       39 JUMPIFNOTEQ                      R16 R17 ; [+3]
       41 MOVE                             R9 R15
       42 JUMP                             ; [+3]
       43 FORGLOOP                         R11 2 ; [-12]
       45 GETTABLEN                        R9 R10 1
       46 JUMPIFEQKNIL                     R9 ; [+28]
       48 LOADK                            R12 K8 ["Folder"]
       49 NAMECALL                         R10 R9 K13 ["IsA"]
       51 CALL                             R10 2 1
       52 JUMPIF                           R10 ; [+5]
       53 LOADK                            R12 K14 ["Model"]
       54 NAMECALL                         R10 R9 K13 ["IsA"]
       56 CALL                             R10 2 1
       57 JUMPIFNOT                        R10 ; [+12]
       58 NAMECALL                         R10 R9 K15 ["GetChildren"]
       60 CALL                             R10 1 3
       61 FORGPREP                         R10
       62 NAMECALL                         R15 R14 K16 ["Clone"]
       64 CALL                             R15 1 1
       65 SETTABLEKS                       R3 R15 K17 ["Parent"]
       67 FORGLOOP                         R10 2 ; [-6]
       69 JUMP                             ; [+5]
       70 NAMECALL                         R10 R9 K16 ["Clone"]
       72 CALL                             R10 1 1
       73 SETTABLEKS                       R3 R10 K17 ["Parent"]
       75 FORGLOOP                         R4 2 ; [-55]
       77 DUPTABLE                         R4 K23 [{"jobId", "entrypointInput", "rootInstance", "uploadEnum", "consumerConfig"}]
       78 GETUPVAL                         R5 2
       79 NAMECALL                         R5 R5 K24 ["GenerateGUID"]
       81 CALL                             R5 1 1
       82 SETTABLEKS                       R5 R4 K18 ["jobId"]
       84 SETTABLEKS                       R0 R4 K19 ["entrypointInput"]
       86 SETTABLEKS                       R3 R4 K20 ["rootInstance"]
       88 DUPTABLE                         R5 K26 [{"bundleType"}]
       89 SETTABLEKS                       R1 R5 K25 ["bundleType"]
       91 SETTABLEKS                       R5 R4 K21 ["uploadEnum"]
       93 GETUPVAL                         R5 3
       94 MOVE                             R6 R2
       95 CALL                             R5 1 1
       96 SETTABLEKS                       R5 R4 K22 ["consumerConfig"]
       98 GETUPVAL                         R5 4
       99 MOVE                             R6 R4
      100 CALL                             R5 1 1
      101 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       18 GETTABLEKS                       R3 R4 K8 ["ValidationEnums"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K7 ["validationSystem"]
       25 GETTABLEKS                       R4 R5 K9 ["ValidationModuleLoader"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Constants"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K7 ["validationSystem"]
       37 GETTABLEKS                       R6 R7 K11 ["ValidationTestWrapper"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R9 R0 K7 ["validationSystem"]
       44 GETTABLEKS                       R8 R9 K12 ["dataFetchModules"]
       46 GETTABLEKS                       R7 R8 K13 ["FetchAllDesiredData"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R9 R0 K5 ["util"]
       53 GETTABLEKS                       R8 R9 K14 ["getUploadCategory"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R10 R0 K5 ["util"]
       60 GETTABLEKS                       R9 R10 K15 ["RecreateSceneFromEditables"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R11 R0 K7 ["validationSystem"]
       67 GETTABLEKS                       R10 R11 K16 ["ErrorSourceStrings"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R12 R0 K17 ["flags"]
       74 GETTABLEKS                       R11 R12 K18 ["getEngineFeatureEngineAQSJsonParsingInLua"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K20 [game]
       79 LOADK                            R13 K21 ["HttpService"]
       80 NAMECALL                         R11 R11 K22 ["GetService"]
       82 CALL                             R11 2 1
       83 GETIMPORT                        R12 K20 [game]
       85 LOADK                            R14 K23 ["TelemetryService"]
       86 NAMECALL                         R12 R12 K22 ["GetService"]
       88 CALL                             R12 2 1
       89 GETIMPORT                        R13 K20 [game]
       91 LOADK                            R15 K24 ["RunService"]
       92 NAMECALL                         R13 R13 K22 ["GetService"]
       94 CALL                             R13 2 1
       95 GETIMPORT                        R14 K20 [game]
       97 LOADK                            R16 K25 ["AssetQualityService"]
       98 NAMECALL                         R14 R14 K22 ["GetService"]
      100 CALL                             R14 2 1
      101 GETIMPORT                        R15 K20 [game]
      103 LOADK                            R17 K26 ["FullValidationTelemetryThrottleHundrethsPercent"]
      104 LOADN                            R18 16
      105 NAMECALL                         R15 R15 K27 ["DefineFastInt"]
      107 CALL                             R15 3 0
      108 GETIMPORT                        R15 K20 [game]
      110 LOADK                            R17 K28 ["RbxAnalyticsService"]
      111 NAMECALL                         R15 R15 K22 ["GetService"]
      113 CALL                             R15 2 1
      114 DUPTABLE                         R16 K35 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description", "links"}]
      115 LOADK                            R17 K36 ["UgcFullValidationFinished"]
      116 SETTABLEKS                       R17 R16 K29 ["eventName"]
      118 NEWTABLE                         R17 0 1
      120 LOADK                            R18 K37 ["EventIngest"]
      121 SETLIST                          R17 R18 1 [1]
      123 SETTABLEKS                       R17 R16 K30 ["backends"]
      125 GETIMPORT                        R17 K20 [game]
      127 LOADK                            R19 K26 ["FullValidationTelemetryThrottleHundrethsPercent"]
      128 NAMECALL                         R17 R17 K38 ["GetFastInt"]
      130 CALL                             R17 2 1
      131 SETTABLEKS                       R17 R16 K31 ["throttlingPercentage"]
      133 NEWTABLE                         R17 0 3
      135 LOADN                            R18 25
      136 LOADN                            R19 11
      137 LOADN                            R20 18
      138 SETLIST                          R17 R18 3 [1]
      140 SETTABLEKS                       R17 R16 K32 ["lastUpdated"]
      142 LOADK                            R17 K39 ["Report result of ugc validation suite"]
      143 SETTABLEKS                       R17 R16 K33 ["description"]
      145 LOADK                            R17 K40 ["https://create.roblox.com/docs/art/validation-errors"]
      146 SETTABLEKS                       R17 R16 K34 ["links"]
      148 GETIMPORT                        R17 K4 [require]
      150 GETTABLEKS                       R19 R0 K17 ["flags"]
      152 GETTABLEKS                       R18 R19 K41 ["getFFlagDebugUGCValidationPrintNewStructureResults"]
      154 CALL                             R17 1 1
      155 GETIMPORT                        R18 K4 [require]
      157 GETTABLEKS                       R20 R0 K17 ["flags"]
      159 GETTABLEKS                       R19 R20 K42 ["getEngineFeatureEngineAssetQualityEngineService"]
      161 CALL                             R18 1 1
      162 GETIMPORT                        R19 K4 [require]
      164 GETTABLEKS                       R21 R0 K17 ["flags"]
      166 GETTABLEKS                       R20 R21 K43 ["getFIntUGCValidationFetchQualityMaxRetry"]
      168 CALL                             R19 1 1
      169 NEWTABLE                         R20 2 0
      171 DUPTABLE                         R21 K45 [{"Backend"}]
      172 LOADB                            R22 1
      173 SETTABLEKS                       R22 R21 K44 ["Backend"]
      175 DUPTABLE                         R22 K48 [{"InExpClient", "InExpServer"}]
      176 LOADB                            R23 1
      177 SETTABLEKS                       R23 R22 K46 ["InExpClient"]
      179 LOADB                            R23 1
      180 SETTABLEKS                       R23 R22 K47 ["InExpServer"]
      182 DUPCLOSURE                       R23 K49 [PROTO_0]
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R3
      185 DUPCLOSURE                       R24 K50 [PROTO_3]
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R11
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R17
      194 DUPCLOSURE                       R25 K51 [PROTO_4]
      195 DUPCLOSURE                       R26 K52 [PROTO_5]
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R17
      200 DUPCLOSURE                       R27 K53 [PROTO_6]
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R9
      203 DUPCLOSURE                       R28 K54 [PROTO_7]
      204 DUPCLOSURE                       R29 K55 [PROTO_8]
      205 CAPTURE                          VAL R7
      206 CAPTURE                          VAL R23
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R27
      210 CAPTURE                          VAL R26
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R21
      213 CAPTURE                          VAL R13
      214 CAPTURE                          VAL R24
      215 CAPTURE                          VAL R25
      216 CAPTURE                          VAL R22
      217 DUPCLOSURE                       R30 K56 [PROTO_9]
      218 CAPTURE                          VAL R4
      219 DUPCLOSURE                       R31 K57 [PROTO_10]
      220 CAPTURE                          VAL R17
      221 CAPTURE                          VAL R11
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R28
      224 CAPTURE                          VAL R29
      225 SETTABLEKS                       R31 R20 K58 ["ValidateAsset"]
      227 DUPCLOSURE                       R31 K59 [PROTO_11]
      228 CAPTURE                          VAL R17
      229 CAPTURE                          VAL R4
      230 CAPTURE                          VAL R11
      231 CAPTURE                          VAL R28
      232 CAPTURE                          VAL R29
      233 SETTABLEKS                       R31 R20 K60 ["ValidateFinalizedBundle"]
      235 RETURN                           R20 1
