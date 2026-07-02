PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 GETUPVAL                         R6 0
        7 CALL                             R6 0 1
        8 JUMPIFNOT                        R6 ; [+3]
        9 GETTABLEKS                       R5 R1 K0 ["skipModules"]
       11 JUMP                             ; [+2]
       12 NEWTABLE                         R5 0 0
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K1 ["allModules"]
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 FORGPREP                         R6
       20 GETTABLE                         R11 R5 R9
       21 JUMPIF                           R11 ; [+91]
       22 GETTABLEKS                       R11 R10 K2 ["categories"]
       24 GETIMPORT                        R12 K5 [table.find]
       26 MOVE                             R13 R11
       27 MOVE                             R14 R0
       28 CALL                             R12 2 1
       29 JUMPIFNOT                        R12 ; [+83]
       30 GETTABLEKS                       R12 R10 K6 ["fflag"]
       32 CALL                             R12 0 1
       33 JUMPIF                           R12 ; [+4]
       34 GETTABLEKS                       R12 R10 K7 ["shadowFlag"]
       36 CALL                             R12 0 1
       37 JUMPIFNOT                        R12 ; [+75]
       38 GETTABLEKS                       R12 R10 K7 ["shadowFlag"]
       40 CALL                             R12 0 1
       41 JUMPIFNOT                        R12 ; [+4]
       42 GETTABLEKS                       R13 R10 K6 ["fflag"]
       44 CALL                             R13 0 1
       45 NOT                              R12 R13
       46 GETTABLEKS                       R13 R10 K8 ["requiredData"]
       48 LOADNIL                          R14
       49 LOADNIL                          R15
       50 FORGPREP                         R13
       51 LOADB                            R18 1
       52 SETTABLE                         R18 R4 R17
       53 FORGLOOP                         R13 2 ; [-3]
       55 GETTABLEKS                       R13 R10 K9 ["conditionalData"]
       57 LOADNIL                          R14
       58 LOADNIL                          R15
       59 FORGPREP                         R13
       60 LOADB                            R18 1
       61 SETTABLE                         R18 R4 R17
       62 FORGLOOP                         R13 2 ; [-3]
       64 LOADNIL                          R13
       65 GETUPVAL                         R14 2
       66 CALL                             R14 0 1
       67 JUMPIFNOT                        R14 ; [+3]
       68 GETTABLEKS                       R13 R10 K10 ["isAssetQualityModule"]
       70 JUMP                             ; [+9]
       71 GETIMPORT                        R14 K12 [next]
       73 GETTABLEKS                       R15 R10 K13 ["expectedAqsData"]
       75 CALL                             R14 1 1
       76 JUMPIFNOTEQKNIL                  R14 ; [+2]
       78 LOADB                            R13 0 +1
       79 LOADB                            R13 1
       80 JUMPIFNOT                        R13 ; [+7]
       81 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       83 MOVE                             R15 R2
       84 MOVE                             R16 R9
       85 GETIMPORT                        R14 K15 [table.insert]
       87 CALL                             R14 2 0
       88 NEWTABLE                         R14 0 0
       90 GETTABLEKS                       R15 R10 K16 ["prereqTests"]
       92 LOADNIL                          R16
       93 LOADNIL                          R17
       94 FORGPREP                         R15
       95 LOADB                            R20 1
       96 SETTABLE                         R20 R14 R19
       97 FORGLOOP                         R15 2 ; [-3]
       99 DUPTABLE                         R15 K22 [{"name", "prereqs", "postreqs", "isQuality", "isShadow"}]
      100 SETTABLEKS                       R9 R15 K17 ["name"]
      102 SETTABLEKS                       R14 R15 K18 ["prereqs"]
      104 NEWTABLE                         R16 0 0
      106 SETTABLEKS                       R16 R15 K19 ["postreqs"]
      108 SETTABLEKS                       R13 R15 K20 ["isQuality"]
      110 SETTABLEKS                       R12 R15 K21 ["isShadow"]
      112 SETTABLE                         R15 R3 R9
      113 FORGLOOP                         R6 2 ; [-94]
      115 MOVE                             R6 R3
      116 LOADNIL                          R7
      117 LOADNIL                          R8
      118 FORGPREP                         R6
      119 GETTABLEKS                       R11 R10 K18 ["prereqs"]
      121 LOADNIL                          R12
      122 LOADNIL                          R13
      123 FORGPREP                         R11
      124 GETTABLE                         R16 R3 R14
      125 JUMPIFNOTEQKNIL                  R16 ; [+10]
      127 GETIMPORT                        R16 K24 [error]
      129 GETIMPORT                        R17 K27 [string.format]
      131 LOADK                            R18 K28 ["%s is needed for %s to run, but is not an included test"]
      132 MOVE                             R19 R14
      133 MOVE                             R20 R9
      134 CALL                             R17 3 -1
      135 CALL                             R16 -1 0
      136 GETTABLE                         R17 R3 R14
      137 GETTABLEKS                       R17 R17 K19 ["postreqs"]
      139 FASTCALL2                        TABLE_INSERT R17 R9 ; [+4]
      141 MOVE                             R18 R9
      142 GETIMPORT                        R16 K15 [table.insert]
      144 CALL                             R16 2 0
      145 FORGLOOP                         R11 2 ; [-22]
      147 FORGLOOP                         R6 2 ; [-29]
      149 RETURN                           R2 3

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["GenerateAssetQualityGltfFromInstanceAsync"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["aqsFetchMetrics"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["fetchAttemptCount"]
        6 GETIMPORT                        R0 K4 [os.clock]
        8 CALL                             R0 0 1
        9 LOADNIL                          R1
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+19]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K5 ["consumerConfig"]
       16 GETTABLEKS                       R2 R2 K6 ["aqFetchStage"]
       18 JUMPIFNOTEQKS                    R2 K7 ["jobId"] ; [+13]
       20 GETUPVAL                         R2 3
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["consumerConfig"]
       24 GETTABLEKS                       R4 R4 K8 ["aqFetchData"]
       26 GETUPVAL                         R5 4
       27 NAMECALL                         R2 R2 K9 ["FetchAssetQualitySummaryFromJobIdAsync"]
       29 CALL                             R2 3 1
       30 MOVE                             R1 R2
       31 JUMP                             ; [+7]
       32 GETUPVAL                         R2 3
       33 GETUPVAL                         R4 5
       34 GETUPVAL                         R5 4
       35 NAMECALL                         R2 R2 K10 ["FetchAssetQualitySummaryFromGltfAsync"]
       37 CALL                             R2 3 1
       38 MOVE                             R1 R2
       39 LOADN                            R3 1000
       40 GETIMPORT                        R5 K4 [os.clock]
       42 CALL                             R5 0 1
       43 SUB                              R4 R5 R0
       44 MUL                              R2 R3 R4
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K0 ["aqsFetchMetrics"]
       48 GETTABLEKS                       R4 R1 K11 ["visualizationUrl"]
       50 SETTABLEKS                       R4 R3 K11 ["visualizationUrl"]
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K0 ["aqsFetchMetrics"]
       55 SETTABLEKS                       R2 R3 K12 ["fetchTimeMs"]
       57 GETUPVAL                         R3 2
       58 CALL                             R3 0 1
       59 JUMPIFNOT                        R3 ; [+7]
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R3 R3 K0 ["aqsFetchMetrics"]
       63 GETTABLEKS                       R4 R1 K13 ["aqJobId"]
       65 SETTABLEKS                       R4 R3 K13 ["aqJobId"]
       67 GETUPVAL                         R3 6
       68 CALL                             R3 0 1
       69 JUMPIFNOT                        R3 ; [+10]
       70 GETUPVAL                         R3 0
       71 GETUPVAL                         R4 7
       72 GETTABLEKS                       R6 R1 K14 ["rawJson"]
       74 NAMECALL                         R4 R4 K15 ["JSONDecode"]
       76 CALL                             R4 2 1
       77 SETTABLEKS                       R4 R3 K16 ["aqsSummaryData"]
       79 RETURN                           R0 0
       80 GETUPVAL                         R3 0
       81 GETTABLEKS                       R3 R3 K0 ["aqsFetchMetrics"]
       83 GETTABLEKS                       R4 R1 K17 ["version"]
       85 SETTABLEKS                       R4 R3 K18 ["returnVersion"]
       87 GETUPVAL                         R3 0
       88 SETTABLEKS                       R1 R3 K16 ["aqsSummaryData"]
       90 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+2]
        3 GETUPVAL                         R2 1
        4 JUMPIF                           R2 ; [+13]
        5 GETTABLEKS                       R2 R0 K0 ["aqsFetchMetrics"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["assetQualityFetchFailure"]
       10 SETTABLEKS                       R3 R2 K2 ["fetchStatus"]
       12 GETTABLEKS                       R2 R0 K0 ["aqsFetchMetrics"]
       14 LOADK                            R3 K3 ["Not enabled"]
       15 SETTABLEKS                       R3 R2 K4 ["fetchFailureReason"]
       17 RETURN                           R0 0
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 GETUPVAL                         R6 3
       23 CALL                             R6 0 1
       24 JUMPIFNOT                        R6 ; [+18]
       25 GETTABLEKS                       R6 R0 K5 ["consumerConfig"]
       27 GETTABLEKS                       R6 R6 K6 ["aqFetchStage"]
       29 JUMPIFEQKS                       R6 K7 ["scene"] ; [+13]
       31 GETTABLEKS                       R6 R0 K5 ["consumerConfig"]
       33 GETTABLEKS                       R6 R6 K6 ["aqFetchStage"]
       35 JUMPIFNOTEQKS                    R6 K8 ["gltf"] ; [+5]
       37 GETTABLEKS                       R6 R0 K5 ["consumerConfig"]
       39 GETTABLEKS                       R4 R6 K9 ["aqFetchData"]
       41 LOADB                            R2 1
       42 JUMP                             ; [+15]
       43 GETUPVAL                         R6 4
       44 GETTABLEKS                       R6 R6 K10 ["createModelForGltfExport"]
       46 MOVE                             R7 R0
       47 CALL                             R6 1 1
       48 MOVE                             R5 R6
       49 GETIMPORT                        R6 K12 [pcall]
       51 NEWCLOSURE                       R7 P0
       52 CAPTURE                          REF R4
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          REF R5
       55 CALL                             R6 1 2
       56 MOVE                             R2 R6
       57 MOVE                             R3 R7
       58 JUMPIFNOT                        R2 ; [+23]
       59 LOADN                            R8 1
       60 LOADN                            R9 1
       61 GETUPVAL                         R10 5
       62 CALL                             R10 0 1
       63 ADD                              R6 R9 R10
       64 LOADN                            R7 1
       65 FORNPREP                         R6
       66 GETIMPORT                        R9 K12 [pcall]
       68 NEWCLOSURE                       R10 P1
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R8
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          VAL R1
       74 CAPTURE                          REF R4
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          UPVAL U7
       77 CALL                             R9 1 2
       78 MOVE                             R2 R9
       79 MOVE                             R3 R10
       80 JUMPIF                           R2 ; [+1]
       81 FORNLOOP                         R6
       82 JUMPIFNOT                        R2 ; [+38]
       83 GETTABLEKS                       R6 R0 K0 ["aqsFetchMetrics"]
       85 GETUPVAL                         R7 2
       86 GETTABLEKS                       R7 R7 K13 ["assetQualityFetchSuccess"]
       88 SETTABLEKS                       R7 R6 K2 ["fetchStatus"]
       90 GETUPVAL                         R6 8
       91 CALL                             R6 0 1
       92 JUMPIFNOT                        R6 ; [+52]
       93 GETIMPORT                        R6 K15 [print]
       95 GETIMPORT                        R7 K18 [string.format]
       97 LOADK                            R8 K19 ["AQS fetch success: aqJobId=%s attempts=%d fetchTimeMs=%d"]
       98 GETTABLEKS                       R10 R0 K0 ["aqsFetchMetrics"]
      100 GETTABLEKS                       R10 R10 K21 ["aqJobId"]
      102 ORK                              R9 R10 K20 [""]
      103 GETTABLEKS                       R11 R0 K0 ["aqsFetchMetrics"]
      105 GETTABLEKS                       R11 R11 K23 ["fetchAttemptCount"]
      107 ORK                              R10 R11 K22 [0]
      108 GETTABLEKS                       R12 R0 K0 ["aqsFetchMetrics"]
      110 GETTABLEKS                       R12 R12 K24 ["fetchTimeMs"]
      112 ORK                              R11 R12 K22 [0]
      113 CALL                             R7 4 -1
      114 CALL                             R6 -1 0
      115 GETIMPORT                        R6 K15 [print]
      117 GETTABLEKS                       R7 R0 K25 ["aqsSummaryData"]
      119 CALL                             R6 1 0
      120 JUMP                             ; [+24]
      121 GETTABLEKS                       R6 R0 K0 ["aqsFetchMetrics"]
      123 SETTABLEKS                       R3 R6 K4 ["fetchFailureReason"]
      125 GETUPVAL                         R6 9
      126 GETTABLEKS                       R6 R6 K26 ["DATA_FETCH_FAILURE"]
      128 SETTABLEKS                       R6 R0 K25 ["aqsSummaryData"]
      130 GETTABLEKS                       R6 R0 K0 ["aqsFetchMetrics"]
      132 GETUPVAL                         R7 2
      133 GETTABLEKS                       R7 R7 K1 ["assetQualityFetchFailure"]
      135 SETTABLEKS                       R7 R6 K2 ["fetchStatus"]
      137 GETUPVAL                         R6 8
      138 CALL                             R6 0 1
      139 JUMPIFNOT                        R6 ; [+5]
      140 GETIMPORT                        R6 K15 [print]
      142 LOADK                            R7 K27 ["AQS fetch failure:"]
      143 MOVE                             R8 R3
      144 CALL                             R6 2 0
      145 JUMPIFNOT                        R5 ; [+3]
      146 NAMECALL                         R6 R5 K28 ["Destroy"]
      148 CALL                             R6 1 0
      149 CLOSEUPVALS                      R4
      150 RETURN                           R0 0

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
        0 LOADK                            R3 K0 ["."]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 LENGTH                           R3 R1
        5 GETTABLE                         R2 R1 R3
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["Values"]
        9 GETTABLE                         R3 R4 R2
       10 JUMPIFNOT                        R3 ; [+4]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["relevantSourceStrings"]
       14 SETTABLE                         R3 R4 R0
       15 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETTABLEKS                       R2 R0 K0 ["failureMap"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 MOVE                             R7 R6
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 FORGPREP                         R7
       12 GETTABLEKS                       R12 R11 K1 ["failureStringKey"]
       14 LOADK                            R15 K2 ["."]
       15 NAMECALL                         R13 R12 K3 ["split"]
       17 CALL                             R13 2 1
       18 LENGTH                           R15 R13
       19 GETTABLE                         R14 R13 R15
       20 GETUPVAL                         R16 0
       21 GETTABLEKS                       R16 R16 K4 ["Values"]
       23 GETTABLE                         R15 R16 R14
       24 JUMPIFNOT                        R15 ; [+3]
       25 GETTABLEKS                       R16 R0 K5 ["relevantSourceStrings"]
       27 SETTABLE                         R15 R16 R12
       28 FORGLOOP                         R7 2 ; [-17]
       30 FORGLOOP                         R2 2 ; [-23]
       32 GETTABLEKS                       R2 R0 K6 ["warningMap"]
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 MOVE                             R7 R6
       38 LOADNIL                          R8
       39 LOADNIL                          R9
       40 FORGPREP                         R7
       41 GETTABLEKS                       R12 R11 K1 ["failureStringKey"]
       43 LOADK                            R15 K2 ["."]
       44 NAMECALL                         R13 R12 K3 ["split"]
       46 CALL                             R13 2 1
       47 LENGTH                           R15 R13
       48 GETTABLE                         R14 R13 R15
       49 GETUPVAL                         R16 0
       50 GETTABLEKS                       R16 R16 K4 ["Values"]
       52 GETTABLE                         R15 R16 R14
       53 JUMPIFNOT                        R15 ; [+3]
       54 GETTABLEKS                       R16 R0 K5 ["relevantSourceStrings"]
       56 SETTABLE                         R15 R16 R12
       57 FORGLOOP                         R7 2 ; [-17]
       59 FORGLOOP                         R2 2 ; [-23]
       61 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["uploadEnum"]
        2 GETTABLEKS                       R2 R1 K1 ["assetType"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R2 R1 K1 ["assetType"]
        7 GETTABLEKS                       R2 R2 K2 ["Name"]
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R1 K3 ["bundleType"]
       12 JUMPIFNOT                        R2 ; [+5]
       13 GETTABLEKS                       R2 R1 K3 ["bundleType"]
       15 GETTABLEKS                       R2 R2 K2 ["Name"]
       17 RETURN                           R2 1
       18 LOADK                            R2 K4 ["?"]
       19 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R4 R1 K0 ["aqsFetchMetrics"]
        2 GETTABLEKS                       R4 R4 K1 ["fetchStatus"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K2 ["assetQualityFetchNA"]
        7 JUMPIFNOTEQ                      R4 R5 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 DUPTABLE                         R4 K21 [{"validationJobId", "bundleJobId", "rootInstanceId", "studioSid", "clientId", "placeId", "validationSource", "assetType", "bundleType", "numFailures", "passed", "durationMs", "uploadCategory", "aqFetchStatus", "aqFetchAttemptCount", "aqFetchTimeMs", "aqFetchFailureReason", "aqJobId"}]
       12 GETTABLEKS                       R5 R1 K22 ["jobId"]
       14 SETTABLEKS                       R5 R4 K3 ["validationJobId"]
       16 GETTABLEKS                       R5 R1 K23 ["consumerConfig"]
       18 GETTABLEKS                       R5 R5 K24 ["telemetryBundleId"]
       20 SETTABLEKS                       R5 R4 K4 ["bundleJobId"]
       22 GETTABLEKS                       R5 R1 K23 ["consumerConfig"]
       24 GETTABLEKS                       R5 R5 K25 ["telemetryRootId"]
       26 SETTABLEKS                       R5 R4 K5 ["rootInstanceId"]
       28 GETUPVAL                         R5 1
       29 NAMECALL                         R5 R5 K26 ["GetSessionId"]
       31 CALL                             R5 1 1
       32 SETTABLEKS                       R5 R4 K6 ["studioSid"]
       34 GETUPVAL                         R5 1
       35 NAMECALL                         R5 R5 K27 ["GetClientId"]
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R4 K7 ["clientId"]
       40 GETIMPORT                        R5 K29 [game]
       42 GETTABLEKS                       R5 R5 K30 ["PlaceId"]
       44 SETTABLEKS                       R5 R4 K8 ["placeId"]
       46 GETTABLEKS                       R5 R1 K23 ["consumerConfig"]
       48 GETTABLEKS                       R5 R5 K31 ["source"]
       50 SETTABLEKS                       R5 R4 K9 ["validationSource"]
       52 GETTABLEKS                       R6 R1 K32 ["uploadEnum"]
       54 GETTABLEKS                       R6 R6 K10 ["assetType"]
       56 JUMPIFNOT                        R6 ; [+7]
       57 GETTABLEKS                       R5 R1 K32 ["uploadEnum"]
       59 GETTABLEKS                       R5 R5 K10 ["assetType"]
       61 GETTABLEKS                       R5 R5 K33 ["Value"]
       63 JUMPIF                           R5 ; [+1]
       64 LOADN                            R5 0
       65 SETTABLEKS                       R5 R4 K10 ["assetType"]
       67 GETTABLEKS                       R6 R1 K32 ["uploadEnum"]
       69 GETTABLEKS                       R6 R6 K11 ["bundleType"]
       71 JUMPIFNOT                        R6 ; [+7]
       72 GETTABLEKS                       R5 R1 K32 ["uploadEnum"]
       74 GETTABLEKS                       R5 R5 K11 ["bundleType"]
       76 GETTABLEKS                       R5 R5 K33 ["Value"]
       78 JUMPIF                           R5 ; [+1]
       79 LOADN                            R5 0
       80 SETTABLEKS                       R5 R4 K11 ["bundleType"]
       82 GETTABLEKS                       R5 R0 K12 ["numFailures"]
       84 SETTABLEKS                       R5 R4 K12 ["numFailures"]
       86 GETTABLEKS                       R5 R0 K34 ["pass"]
       88 SETTABLEKS                       R5 R4 K13 ["passed"]
       90 SETTABLEKS                       R2 R4 K14 ["durationMs"]
       92 GETTABLEKS                       R5 R1 K15 ["uploadCategory"]
       94 SETTABLEKS                       R5 R4 K15 ["uploadCategory"]
       96 GETTABLEKS                       R5 R1 K0 ["aqsFetchMetrics"]
       98 GETTABLEKS                       R5 R5 K1 ["fetchStatus"]
      100 SETTABLEKS                       R5 R4 K16 ["aqFetchStatus"]
      102 JUMPIFNOT                        R3 ; [+5]
      103 GETTABLEKS                       R5 R1 K0 ["aqsFetchMetrics"]
      105 GETTABLEKS                       R5 R5 K35 ["fetchAttemptCount"]
      107 JUMPIF                           R5 ; [+1]
      108 LOADN                            R5 0
      109 SETTABLEKS                       R5 R4 K17 ["aqFetchAttemptCount"]
      111 JUMPIFNOT                        R3 ; [+5]
      112 GETTABLEKS                       R5 R1 K0 ["aqsFetchMetrics"]
      114 GETTABLEKS                       R5 R5 K36 ["fetchTimeMs"]
      116 JUMPIF                           R5 ; [+1]
      117 LOADN                            R5 0
      118 SETTABLEKS                       R5 R4 K18 ["aqFetchTimeMs"]
      120 JUMPIFNOT                        R3 ; [+5]
      121 GETTABLEKS                       R5 R1 K0 ["aqsFetchMetrics"]
      123 GETTABLEKS                       R5 R5 K37 ["fetchFailureReason"]
      125 JUMPIF                           R5 ; [+1]
      126 LOADK                            R5 K38 [""]
      127 SETTABLEKS                       R5 R4 K19 ["aqFetchFailureReason"]
      129 GETUPVAL                         R6 2
      130 CALL                             R6 0 1
      131 JUMPIFNOT                        R6 ; [+6]
      132 GETTABLEKS                       R6 R1 K0 ["aqsFetchMetrics"]
      134 GETTABLEKS                       R6 R6 K20 ["aqJobId"]
      136 ORK                              R5 R6 K38 [""]
      137 JUMP                             ; [+1]
      138 LOADNIL                          R5
      139 SETTABLEKS                       R5 R4 K20 ["aqJobId"]
      141 GETUPVAL                         R5 3
      142 GETUPVAL                         R7 4
      143 DUPTABLE                         R8 K40 [{"customFields"}]
      144 SETTABLEKS                       R4 R8 K39 ["customFields"]
      146 NAMECALL                         R5 R5 K41 ["LogEvent"]
      148 CALL                             R5 3 0
      149 GETUPVAL                         R5 5
      150 CALL                             R5 0 1
      151 JUMPIFNOT                        R5 ; [+75]
      152 GETUPVAL                         R5 2
      153 CALL                             R5 0 1
      154 JUMPIFNOT                        R5 ; [+68]
      155 GETIMPORT                        R5 K43 [print]
      157 GETIMPORT                        R6 K46 [string.format]
      159 LOADK                            R7 K47 ["==== %s Validation end ==== pass=%s numFailures=%d numWarnings=%d durationMs=%d"]
      160 GETTABLEKS                       R9 R1 K32 ["uploadEnum"]
      162 GETTABLEKS                       R10 R9 K10 ["assetType"]
      164 JUMPIFNOT                        R10 ; [+5]
      165 GETTABLEKS                       R8 R9 K10 ["assetType"]
      167 GETTABLEKS                       R8 R8 K48 ["Name"]
      169 JUMP                             ; [+9]
      170 GETTABLEKS                       R10 R9 K11 ["bundleType"]
      172 JUMPIFNOT                        R10 ; [+5]
      173 GETTABLEKS                       R8 R9 K11 ["bundleType"]
      175 GETTABLEKS                       R8 R8 K48 ["Name"]
      177 JUMP                             ; [+1]
      178 LOADK                            R8 K49 ["?"]
      179 GETTABLEKS                       R10 R0 K34 ["pass"]
      181 FASTCALL1                        TOSTRING R10 ; [+2]
      182 GETIMPORT                        R9 K51 [tostring]
      184 CALL                             R9 1 1
      185 GETTABLEKS                       R10 R0 K12 ["numFailures"]
      187 GETTABLEKS                       R11 R0 K52 ["numWarnings"]
      189 MOVE                             R12 R2
      190 CALL                             R6 6 -1
      191 CALL                             R5 -1 0
      192 GETTABLEKS                       R5 R0 K53 ["failureMap"]
      194 LOADNIL                          R6
      195 LOADNIL                          R7
      196 FORGPREP                         R5
      197 MOVE                             R10 R9
      198 LOADNIL                          R11
      199 LOADNIL                          R12
      200 FORGPREP                         R10
      201 GETIMPORT                        R15 K43 [print]
      203 GETIMPORT                        R16 K46 [string.format]
      205 LOADK                            R17 K54 ["  FAIL %s: %s @ %s"]
      206 MOVE                             R18 R8
      207 GETTABLEKS                       R19 R14 K55 ["failureStringKey"]
      209 GETTABLEKS                       R21 R14 K56 ["instancePath"]
      211 JUMPIFEQKS                       R21 K38 [""] ; [+4]
      213 GETTABLEKS                       R20 R14 K56 ["instancePath"]
      215 JUMP                             ; [+1]
      216 LOADK                            R20 K57 ["<root>"]
      217 CALL                             R16 4 -1
      218 CALL                             R15 -1 0
      219 FORGLOOP                         R10 2 ; [-19]
      221 FORGLOOP                         R5 2 ; [-25]
      223 GETIMPORT                        R5 K43 [print]
      225 MOVE                             R6 R0
      226 CALL                             R5 1 0
      227 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R5 R2 K0 ["validationEnum"]
        2 JUMPIF                           R4 ; [+4]
        3 GETTABLE                         R6 R1 R5
        4 GETTABLEKS                       R6 R6 K1 ["isShadow"]
        6 JUMPIF                           R6 ; [+78]
        7 GETTABLEKS                       R6 R0 K2 ["states"]
        9 GETTABLEKS                       R7 R2 K3 ["status"]
       11 SETTABLE                         R7 R6 R5
       12 GETTABLEKS                       R7 R2 K4 ["errorTranslationContexts"]
       14 LENGTH                           R6 R7
       15 LOADN                            R7 0
       16 JUMPIFNOTLT                      R7 R6 ; [+16]
       18 GETIMPORT                        R6 K7 [table.move]
       20 GETTABLEKS                       R7 R2 K4 ["errorTranslationContexts"]
       22 LOADN                            R8 1
       23 GETTABLEKS                       R10 R2 K4 ["errorTranslationContexts"]
       25 LENGTH                           R9 R10
       26 GETTABLEKS                       R12 R0 K4 ["errorTranslationContexts"]
       28 LENGTH                           R11 R12
       29 ADDK                             R10 R11 K8 [1]
       30 GETTABLEKS                       R11 R0 K4 ["errorTranslationContexts"]
       32 CALL                             R6 5 0
       33 GETTABLEKS                       R6 R2 K3 ["status"]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K9 ["Status"]
       38 GETTABLEKS                       R7 R7 K10 ["PASS"]
       40 JUMPIFEQ                         R6 R7 ; [+44]
       42 LOADB                            R6 0
       43 SETTABLEKS                       R6 R0 K11 ["pass"]
       45 GETTABLEKS                       R6 R0 K12 ["numFailures"]
       47 ADDK                             R6 R6 K8 [1]
       48 SETTABLEKS                       R6 R0 K12 ["numFailures"]
       50 GETTABLEKS                       R6 R2 K3 ["status"]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K9 ["Status"]
       55 GETTABLEKS                       R7 R7 K13 ["ERROR"]
       57 JUMPIFNOTEQ                      R6 R7 ; [+27]
       59 GETTABLEKS                       R6 R0 K14 ["ranIntoInternalError"]
       61 JUMPIF                           R6 ; [+23]
       62 LOADB                            R6 1
       63 SETTABLEKS                       R6 R0 K14 ["ranIntoInternalError"]
       65 GETTABLEKS                       R7 R0 K4 ["errorTranslationContexts"]
       67 DUPTABLE                         R8 K17 [{"key", "params"}]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K18 ["Keys"]
       71 GETTABLEKS                       R9 R9 K19 ["InternalError"]
       73 SETTABLEKS                       R9 R8 K15 ["key"]
       75 DUPTABLE                         R9 K21 [{"ValidationJobId"}]
       76 SETTABLEKS                       R3 R9 K20 ["ValidationJobId"]
       78 SETTABLEKS                       R9 R8 K16 ["params"]
       80 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       82 GETIMPORT                        R6 K23 [table.insert]
       84 CALL                             R6 2 0
       85 GETTABLE                         R6 R1 R5
       86 GETTABLEKS                       R6 R6 K24 ["postreqs"]
       88 LOADNIL                          R7
       89 LOADNIL                          R8
       90 FORGPREP                         R6
       91 GETTABLE                         R11 R1 R10
       92 GETTABLEKS                       R11 R11 K25 ["prereqs"]
       94 LOADNIL                          R12
       95 SETTABLE                         R12 R11 R5
       96 FORGLOOP                         R6 2 ; [-6]
       98 LOADNIL                          R6
       99 SETTABLE                         R6 R1 R5
      100 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R5 R2 K0 ["validationEnum"]
        2 JUMPIF                           R4 ; [+4]
        3 GETTABLE                         R6 R1 R5
        4 GETTABLEKS                       R6 R6 K1 ["isShadow"]
        6 JUMPIF                           R6 ; [+73]
        7 GETTABLEKS                       R6 R0 K2 ["states"]
        9 GETTABLEKS                       R7 R2 K3 ["status"]
       11 SETTABLE                         R7 R6 R5
       12 GETTABLEKS                       R6 R2 K3 ["status"]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K4 ["Status"]
       17 GETTABLEKS                       R7 R7 K5 ["PASS"]
       19 JUMPIFEQ                         R6 R7 ; [+18]
       21 LOADB                            R6 0
       22 SETTABLEKS                       R6 R0 K6 ["pass"]
       24 GETTABLEKS                       R6 R0 K7 ["numFailures"]
       26 LOADN                            R8 1
       27 GETTABLEKS                       R10 R2 K8 ["failures"]
       29 LENGTH                           R9 R10
       30 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       32 GETIMPORT                        R7 K11 [math.max]
       34 CALL                             R7 2 1
       35 ADD                              R6 R6 R7
       36 SETTABLEKS                       R6 R0 K7 ["numFailures"]
       38 GETTABLEKS                       R7 R2 K8 ["failures"]
       40 LENGTH                           R6 R7
       41 LOADN                            R7 0
       42 JUMPIFNOTLT                      R7 R6 ; [+6]
       44 GETTABLEKS                       R6 R0 K12 ["failureMap"]
       46 GETTABLEKS                       R7 R2 K8 ["failures"]
       48 SETTABLE                         R7 R6 R5
       49 GETTABLEKS                       R7 R2 K13 ["warnings"]
       51 LENGTH                           R6 R7
       52 LOADN                            R7 0
       53 JUMPIFNOTLT                      R7 R6 ; [+14]
       55 GETTABLEKS                       R6 R0 K14 ["warningMap"]
       57 GETTABLEKS                       R7 R2 K13 ["warnings"]
       59 SETTABLE                         R7 R6 R5
       60 GETTABLEKS                       R6 R0 K15 ["numWarnings"]
       62 GETTABLEKS                       R8 R2 K13 ["warnings"]
       64 LENGTH                           R7 R8
       65 ADD                              R6 R6 R7
       66 SETTABLEKS                       R6 R0 K15 ["numWarnings"]
       68 GETTABLEKS                       R6 R2 K3 ["status"]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K4 ["Status"]
       73 GETTABLEKS                       R7 R7 K16 ["ERROR"]
       75 JUMPIFNOTEQ                      R6 R7 ; [+4]
       77 LOADB                            R6 1
       78 SETTABLEKS                       R6 R0 K17 ["ranIntoInternalError"]
       80 GETTABLE                         R6 R1 R5
       81 GETTABLEKS                       R6 R6 K18 ["postreqs"]
       83 LOADNIL                          R7
       84 LOADNIL                          R8
       85 FORGPREP                         R6
       86 GETTABLE                         R11 R1 R10
       87 GETTABLEKS                       R11 R11 K19 ["prereqs"]
       89 LOADNIL                          R12
       90 SETTABLE                         R12 R11 R5
       91 FORGLOOP                         R6 2 ; [-6]
       93 LOADNIL                          R6
       94 SETTABLE                         R6 R1 R5
       95 RETURN                           R0 0

PROTO_11:
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
       42 GETTABLEKS                       R2 R1 K10 ["preloadedHsrAssets"]
       44 JUMPIF                           R2 ; [+2]
       45 NEWTABLE                         R2 0 0
       47 SETTABLEKS                       R2 R1 K10 ["preloadedHsrAssets"]
       49 GETTABLEKS                       R2 R1 K11 ["skipModules"]
       51 JUMPIF                           R2 ; [+2]
       52 NEWTABLE                         R2 0 0
       54 SETTABLEKS                       R2 R1 K11 ["skipModules"]
       56 GETUPVAL                         R2 0
       57 CALL                             R2 0 1
       58 JUMPIFNOT                        R2 ; [+42]
       59 GETUPVAL                         R3 1
       60 GETTABLEKS                       R4 R1 K12 ["source"]
       62 GETTABLE                         R2 R3 R4
       63 SETTABLEKS                       R2 R1 K13 ["consumerEnv"]
       65 GETTABLEKS                       R4 R1 K13 ["consumerEnv"]
       67 JUMPIFNOTEQKNIL                  R4 ; [+2]
       69 LOADB                            R3 0 +1
       70 LOADB                            R3 1
       71 LOADK                            R5 K14 ["unknown consumer source: %*"]
       72 GETTABLEKS                       R8 R1 K12 ["source"]
       74 FASTCALL1                        TOSTRING R8 ; [+2]
       75 GETIMPORT                        R7 K16 [tostring]
       77 CALL                             R7 1 1
       78 NAMECALL                         R5 R5 K17 ["format"]
       80 CALL                             R5 2 1
       81 MOVE                             R4 R5
       82 FASTCALL2                        ASSERT R3 R4 ; [+3]
       84 GETIMPORT                        R2 K19 [assert]
       86 CALL                             R2 2 0
       87 GETTABLEKS                       R2 R1 K20 ["backendConfigs"]
       89 JUMPIF                           R2 ; [+2]
       90 NEWTABLE                         R2 0 0
       92 SETTABLEKS                       R2 R1 K20 ["backendConfigs"]
       94 GETTABLEKS                       R2 R1 K21 ["iecConfigs"]
       96 JUMPIF                           R2 ; [+2]
       97 NEWTABLE                         R2 0 0
       99 SETTABLEKS                       R2 R1 K21 ["iecConfigs"]
      101 GETTABLEKS                       R3 R1 K23 ["aqFetchStage"]
      103 ORK                              R2 R3 K22 ["scene"]
      104 SETTABLEKS                       R2 R1 K23 ["aqFetchStage"]
      106 GETTABLEKS                       R3 R1 K24 ["aqFetchData"]
      108 ORK                              R2 R3 K5 [""]
      109 SETTABLEKS                       R2 R1 K24 ["aqFetchData"]
      111 GETTABLEKS                       R5 R1 K23 ["aqFetchStage"]
      113 JUMPIFEQKS                       R5 K22 ["scene"] ; [+2]
      115 LOADB                            R4 0 +1
      116 LOADB                            R4 1
      117 GETTABLEKS                       R6 R1 K24 ["aqFetchData"]
      119 JUMPIFEQKS                       R6 K5 [""] ; [+2]
      121 LOADB                            R5 0 +1
      122 LOADB                            R5 1
      123 JUMPIFEQ                         R4 R5 ; [+2]
      125 LOADB                            R3 0 +1
      126 LOADB                            R3 1
      127 LOADK                            R5 K25 ["aqFetchData must be non-empty iff aqFetchStage is \"gltf\" or \"jobId\" (got stage=\"%*\")"]
      128 GETTABLEKS                       R7 R1 K23 ["aqFetchStage"]
      130 NAMECALL                         R5 R5 K17 ["format"]
      132 CALL                             R5 2 1
      133 MOVE                             R4 R5
      134 FASTCALL2                        ASSERT R3 R4 ; [+3]
      136 GETIMPORT                        R2 K19 [assert]
      138 CALL                             R2 2 0
      139 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R2 R0 K3 ["rootInstance"]
        5 GETTABLEKS                       R3 R0 K4 ["uploadEnum"]
        7 GETTABLEKS                       R3 R3 K5 ["assetType"]
        9 GETTABLEKS                       R4 R0 K4 ["uploadEnum"]
       11 GETTABLEKS                       R4 R4 K6 ["bundleType"]
       13 GETTABLEKS                       R5 R0 K7 ["consumerConfig"]
       15 GETUPVAL                         R6 0
       16 CALL                             R6 0 1
       17 JUMPIFNOT                        R6 ; [+32]
       18 GETIMPORT                        R6 K9 [print]
       20 GETIMPORT                        R7 K12 [string.format]
       22 LOADK                            R8 K13 ["==== %s Validation begin ==== jobId=%s source=%s"]
       23 GETTABLEKS                       R10 R0 K4 ["uploadEnum"]
       25 GETTABLEKS                       R11 R10 K5 ["assetType"]
       27 JUMPIFNOT                        R11 ; [+5]
       28 GETTABLEKS                       R9 R10 K5 ["assetType"]
       30 GETTABLEKS                       R9 R9 K14 ["Name"]
       32 JUMP                             ; [+9]
       33 GETTABLEKS                       R11 R10 K6 ["bundleType"]
       35 JUMPIFNOT                        R11 ; [+5]
       36 GETTABLEKS                       R9 R10 K6 ["bundleType"]
       38 GETTABLEKS                       R9 R9 K14 ["Name"]
       40 JUMP                             ; [+1]
       41 LOADK                            R9 K15 ["?"]
       42 GETTABLEKS                       R10 R0 K16 ["jobId"]
       44 GETTABLEKS                       R11 R0 K7 ["consumerConfig"]
       46 GETTABLEKS                       R11 R11 K17 ["source"]
       48 CALL                             R7 4 -1
       49 CALL                             R6 -1 0
       50 DUPTABLE                         R6 K32 [{["validationJobId"], ["pass"] = True, ["numFailures"] = 0, ["numWarnings"] = 0, ["states"], ["ranIntoInternalError"] = False, ["failureMap"], ["warningMap"], ["relevantSourceStrings"], ["aqJobId"] = ""}]
       51 GETTABLEKS                       R7 R0 K16 ["jobId"]
       53 SETTABLEKS                       R7 R6 K18 ["validationJobId"]
       55 NEWTABLE                         R7 0 0
       57 SETTABLEKS                       R7 R6 K24 ["states"]
       59 NEWTABLE                         R7 0 0
       61 SETTABLEKS                       R7 R6 K27 ["failureMap"]
       63 NEWTABLE                         R7 0 0
       65 SETTABLEKS                       R7 R6 K28 ["warningMap"]
       67 NEWTABLE                         R7 0 0
       69 SETTABLEKS                       R7 R6 K29 ["relevantSourceStrings"]
       71 GETUPVAL                         R7 1
       72 CALL                             R7 0 1
       73 JUMPIF                           R7 ; [+4]
       74 NEWTABLE                         R7 0 0
       76 SETTABLEKS                       R7 R6 K33 ["errorTranslationContexts"]
       78 GETUPVAL                         R7 2
       79 MOVE                             R8 R2
       80 MOVE                             R9 R3
       81 MOVE                             R10 R4
       82 CALL                             R7 3 1
       83 GETUPVAL                         R8 3
       84 MOVE                             R9 R7
       85 MOVE                             R10 R5
       86 CALL                             R8 2 3
       87 SETTABLEKS                       R7 R0 K34 ["uploadCategory"]
       89 DUPTABLE                         R11 K36 [{"fetchStatus", "aqJobId"}]
       90 GETUPVAL                         R12 4
       91 GETTABLEKS                       R12 R12 K37 ["assetQualityFetchNA"]
       93 SETTABLEKS                       R12 R11 K35 ["fetchStatus"]
       95 GETUPVAL                         R13 1
       96 CALL                             R13 0 1
       97 JUMPIFNOT                        R13 ; [+7]
       98 GETTABLEKS                       R13 R5 K38 ["aqFetchStage"]
      100 JUMPIFNOTEQKS                    R13 K16 ["jobId"] ; [+4]
      102 GETTABLEKS                       R12 R5 K39 ["aqFetchData"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R12
      106 SETTABLEKS                       R12 R11 K30 ["aqJobId"]
      108 SETTABLEKS                       R11 R0 K40 ["aqsFetchMetrics"]
      110 GETUPVAL                         R11 5
      111 GETUPVAL                         R12 6
      112 GETTABLEKS                       R12 R12 K41 ["ValidationModule"]
      114 GETTABLEKS                       R12 R12 K42 ["ExpectedRootSchema"]
      116 MOVE                             R13 R0
      117 GETTABLEKS                       R14 R6 K24 ["states"]
      119 CALL                             R11 3 1
      120 GETUPVAL                         R12 1
      121 CALL                             R12 0 1
      122 JUMPIFNOT                        R12 ; [+10]
      123 GETUPVAL                         R12 7
      124 MOVE                             R13 R6
      125 MOVE                             R14 R9
      126 MOVE                             R15 R11
      127 GETTABLEKS                       R16 R0 K16 ["jobId"]
      129 GETTABLEKS                       R17 R5 K43 ["enforceShadowValidations"]
      131 CALL                             R12 5 0
      132 JUMP                             ; [+9]
      133 GETUPVAL                         R12 8
      134 MOVE                             R13 R6
      135 MOVE                             R14 R9
      136 MOVE                             R15 R11
      137 GETTABLEKS                       R16 R0 K16 ["jobId"]
      139 GETTABLEKS                       R17 R5 K43 ["enforceShadowValidations"]
      141 CALL                             R12 5 0
      142 GETTABLEKS                       R13 R6 K24 ["states"]
      144 GETUPVAL                         R14 6
      145 GETTABLEKS                       R14 R14 K41 ["ValidationModule"]
      147 GETTABLEKS                       R14 R14 K42 ["ExpectedRootSchema"]
      149 GETTABLE                         R12 R13 R14
      150 GETUPVAL                         R13 6
      151 GETTABLEKS                       R13 R13 K44 ["Status"]
      153 GETTABLEKS                       R13 R13 K45 ["PASS"]
      155 JUMPIFEQ                         R12 R13 ; [+20]
      157 GETUPVAL                         R12 1
      158 CALL                             R12 0 1
      159 JUMPIFNOT                        R12 ; [+10]
      160 GETUPVAL                         R12 9
      161 MOVE                             R13 R6
      162 CALL                             R12 1 0
      163 GETTABLEKS                       R13 R0 K40 ["aqsFetchMetrics"]
      165 GETTABLEKS                       R13 R13 K30 ["aqJobId"]
      167 ORK                              R12 R13 K31 [""]
      168 SETTABLEKS                       R12 R6 K30 ["aqJobId"]
      170 GETUPVAL                         R12 10
      171 MOVE                             R13 R6
      172 MOVE                             R14 R0
      173 LOADN                            R15 -1
      174 CALL                             R12 3 0
      175 RETURN                           R6 1
      176 GETUPVAL                         R12 11
      177 GETTABLEKS                       R12 R12 K46 ["storeDesiredData"]
      179 MOVE                             R13 R0
      180 MOVE                             R14 R10
      181 CALL                             R12 2 0
      182 LENGTH                           R12 R8
      183 LOADN                            R13 0
      184 JUMPIFNOTLT                      R13 R12 ; [+32]
      186 GETTABLEKS                       R12 R0 K40 ["aqsFetchMetrics"]
      188 GETUPVAL                         R13 4
      189 GETTABLEKS                       R13 R13 K47 ["assetQualityFetchInProgress"]
      191 SETTABLEKS                       R13 R12 K35 ["fetchStatus"]
      193 GETUPVAL                         R13 12
      194 GETTABLEKS                       R14 R5 K17 ["source"]
      196 GETTABLE                         R12 R13 R14
      197 JUMPIFNOT                        R12 ; [+13]
      198 GETUPVAL                         R12 13
      199 NAMECALL                         R12 R12 K48 ["Run"]
      201 CALL                             R12 1 0
      202 GETUPVAL                         R12 14
      203 MOVE                             R13 R0
      204 MOVE                             R14 R8
      205 CALL                             R12 2 0
      206 GETUPVAL                         R12 13
      207 NAMECALL                         R12 R12 K49 ["Pause"]
      209 CALL                             R12 1 0
      210 JUMP                             ; [+6]
      211 GETIMPORT                        R12 K52 [task.spawn]
      213 GETUPVAL                         R13 14
      214 MOVE                             R14 R0
      215 MOVE                             R15 R8
      216 CALL                             R12 3 0
      217 GETIMPORT                        R12 K54 [next]
      219 MOVE                             R13 R9
      220 CALL                             R12 1 1
      221 JUMPIFEQKNIL                     R12 ; [+76]
      223 GETTABLEKS                       R13 R0 K40 ["aqsFetchMetrics"]
      225 GETTABLEKS                       R13 R13 K35 ["fetchStatus"]
      227 GETUPVAL                         R14 4
      228 GETTABLEKS                       R14 R14 K47 ["assetQualityFetchInProgress"]
      230 JUMPIFEQ                         R13 R14 ; [+2]
      232 LOADB                            R12 0 +1
      233 LOADB                            R12 1
      234 GETUPVAL                         R13 15
      235 MOVE                             R14 R9
      236 NOT                              R15 R12
      237 CALL                             R13 2 1
      238 LENGTH                           R14 R13
      239 JUMPIFNOTEQKN                    R14 K22 [0] ; [+6]
      241 JUMPIF                           R12 ; [+4]
      242 GETIMPORT                        R14 K56 [error]
      244 LOADK                            R15 K57 ["Impossible to complete all layers"]
      245 CALL                             R14 1 0
      246 MOVE                             R14 R13
      247 LOADNIL                          R15
      248 LOADNIL                          R16
      249 FORGPREP                         R14
      250 GETUPVAL                         R19 5
      251 MOVE                             R20 R18
      252 MOVE                             R21 R0
      253 GETTABLEKS                       R22 R6 K24 ["states"]
      255 CALL                             R19 3 1
      256 GETUPVAL                         R20 1
      257 CALL                             R20 0 1
      258 JUMPIFNOT                        R20 ; [+10]
      259 GETUPVAL                         R20 7
      260 MOVE                             R21 R6
      261 MOVE                             R22 R9
      262 MOVE                             R23 R19
      263 GETTABLEKS                       R24 R0 K16 ["jobId"]
      265 GETTABLEKS                       R25 R5 K43 ["enforceShadowValidations"]
      267 CALL                             R20 5 0
      268 JUMP                             ; [+9]
      269 GETUPVAL                         R20 8
      270 MOVE                             R21 R6
      271 MOVE                             R22 R9
      272 MOVE                             R23 R19
      273 GETTABLEKS                       R24 R0 K16 ["jobId"]
      275 GETTABLEKS                       R25 R5 K43 ["enforceShadowValidations"]
      277 CALL                             R20 5 0
      278 GETUPVAL                         R21 16
      279 GETTABLEKS                       R22 R5 K17 ["source"]
      281 GETTABLE                         R20 R21 R22
      282 JUMPIFNOT                        R20 ; [+3]
      283 GETIMPORT                        R20 K59 [task.wait]
      285 CALL                             R20 0 0
      286 FORGLOOP                         R14 2 ; [-37]
      288 JUMPIFNOT                        R12 ; [+8]
      289 GETUPVAL                         R15 12
      290 GETTABLEKS                       R16 R5 K17 ["source"]
      292 GETTABLE                         R14 R15 R16
      293 JUMPIF                           R14 ; [+3]
      294 GETIMPORT                        R14 K59 [task.wait]
      296 CALL                             R14 0 0
      297 JUMPBACK                         ; [-81]
      298 GETUPVAL                         R12 1
      299 CALL                             R12 0 1
      300 JUMPIFNOT                        R12 ; [+10]
      301 GETUPVAL                         R12 9
      302 MOVE                             R13 R6
      303 CALL                             R12 1 0
      304 GETTABLEKS                       R13 R0 K40 ["aqsFetchMetrics"]
      306 GETTABLEKS                       R13 R13 K30 ["aqJobId"]
      308 ORK                              R12 R13 K31 [""]
      309 SETTABLEKS                       R12 R6 K30 ["aqJobId"]
      311 GETUPVAL                         R12 10
      312 MOVE                             R13 R6
      313 MOVE                             R14 R0
      314 LOADN                            R16 1000
      315 GETIMPORT                        R18 K2 [os.clock]
      317 CALL                             R18 0 1
      318 SUB                              R17 R18 R1
      319 MUL                              R15 R16 R17
      320 CALL                             R12 3 0
      321 RETURN                           R6 1

PROTO_13:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R6 R5 K1 ["Name"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K2 ["FOLDER_NAMES"]
       14 GETTABLEKS                       R7 R7 K3 ["R15ArtistIntent"]
       16 JUMPIFNOTEQ                      R6 R7 ; [+2]
       18 RETURN                           R5 1
       19 FORGLOOP                         R1 2 ; [-11]
       21 GETTABLEN                        R1 R0 1
       22 RETURN                           R1 1

PROTO_14:
        0 DUPTABLE                         R3 K6 [{"jobId", "entrypointInput", "rootInstance", "uploadEnum", "consumerConfig", "hsrAssets"}]
        1 GETUPVAL                         R4 0
        2 NAMECALL                         R4 R4 K7 ["GenerateGUID"]
        4 CALL                             R4 1 1
        5 SETTABLEKS                       R4 R3 K0 ["jobId"]
        7 SETTABLEKS                       R0 R3 K1 ["entrypointInput"]
        9 LENGTH                           R5 R0
       10 JUMPIFNOTEQKN                    R5 K8 [0] ; [+3]
       12 LOADNIL                          R4
       13 JUMP                             ; [+18]
       14 MOVE                             R5 R0
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 FORGPREP                         R5
       18 GETTABLEKS                       R10 R9 K9 ["Name"]
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R11 R11 K10 ["FOLDER_NAMES"]
       23 GETTABLEKS                       R11 R11 K11 ["R15ArtistIntent"]
       25 JUMPIFNOTEQ                      R10 R11 ; [+3]
       27 MOVE                             R4 R9
       28 JUMP                             ; [+3]
       29 FORGLOOP                         R5 2 ; [-12]
       31 GETTABLEN                        R4 R0 1
       32 SETTABLEKS                       R4 R3 K2 ["rootInstance"]
       34 DUPTABLE                         R4 K13 [{"assetType"}]
       35 SETTABLEKS                       R1 R4 K12 ["assetType"]
       37 SETTABLEKS                       R4 R3 K3 ["uploadEnum"]
       39 GETUPVAL                         R4 2
       40 MOVE                             R5 R2
       41 CALL                             R4 1 1
       42 SETTABLEKS                       R4 R3 K4 ["consumerConfig"]
       44 NEWTABLE                         R4 0 0
       46 SETTABLEKS                       R4 R3 K5 ["hsrAssets"]
       48 GETUPVAL                         R4 3
       49 MOVE                             R5 R3
       50 CALL                             R4 1 1
       51 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+15]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["setIsBackendBundleUpload"]
        6 LOADB                            R4 1
        7 GETTABLEKS                       R5 R2 K1 ["source"]
        9 JUMPIFEQKS                       R5 K2 ["Publish"] ; [+7]
       11 GETTABLEKS                       R5 R2 K1 ["source"]
       13 JUMPIFEQKS                       R5 K3 ["Backend"] ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 CALL                             R3 1 0
       18 LOADNIL                          R3
       19 GETUPVAL                         R4 2
       20 CALL                             R4 0 1
       21 JUMPIFNOT                        R4 ; [+48]
       22 GETIMPORT                        R4 K7 [Enum.BundleType.Animations]
       24 JUMPIFNOTEQ                      R1 R4 ; [+45]
       26 GETIMPORT                        R4 K10 [Instance.new]
       28 LOADK                            R5 K11 ["Model"]
       29 CALL                             R4 1 1
       30 MOVE                             R5 R0
       31 LOADNIL                          R6
       32 LOADNIL                          R7
       33 FORGPREP                         R5
       34 GETTABLEKS                       R11 R9 K12 ["allSelectedInstances"]
       36 LENGTH                           R12 R11
       37 JUMPIFNOTEQKN                    R12 K13 [0] ; [+3]
       39 LOADNIL                          R10
       40 JUMP                             ; [+18]
       41 MOVE                             R12 R11
       42 LOADNIL                          R13
       43 LOADNIL                          R14
       44 FORGPREP                         R12
       45 GETTABLEKS                       R17 R16 K14 ["Name"]
       47 GETUPVAL                         R18 3
       48 GETTABLEKS                       R18 R18 K15 ["FOLDER_NAMES"]
       50 GETTABLEKS                       R18 R18 K16 ["R15ArtistIntent"]
       52 JUMPIFNOTEQ                      R17 R18 ; [+3]
       54 MOVE                             R10 R16
       55 JUMP                             ; [+3]
       56 FORGLOOP                         R12 2 ; [-12]
       58 GETTABLEN                        R10 R11 1
       59 JUMPIFEQKNIL                     R10 ; [+6]
       61 NAMECALL                         R11 R10 K17 ["Clone"]
       63 CALL                             R11 1 1
       64 SETTABLEKS                       R4 R11 K18 ["Parent"]
       66 FORGLOOP                         R5 2 ; [-33]
       68 MOVE                             R3 R4
       69 JUMP                             ; [+65]
       70 GETIMPORT                        R4 K10 [Instance.new]
       72 LOADK                            R5 K19 ["Folder"]
       73 CALL                             R4 1 1
       74 MOVE                             R5 R0
       75 LOADNIL                          R6
       76 LOADNIL                          R7
       77 FORGPREP                         R5
       78 GETTABLEKS                       R11 R9 K12 ["allSelectedInstances"]
       80 LENGTH                           R12 R11
       81 JUMPIFNOTEQKN                    R12 K13 [0] ; [+3]
       83 LOADNIL                          R10
       84 JUMP                             ; [+18]
       85 MOVE                             R12 R11
       86 LOADNIL                          R13
       87 LOADNIL                          R14
       88 FORGPREP                         R12
       89 GETTABLEKS                       R17 R16 K14 ["Name"]
       91 GETUPVAL                         R18 3
       92 GETTABLEKS                       R18 R18 K15 ["FOLDER_NAMES"]
       94 GETTABLEKS                       R18 R18 K16 ["R15ArtistIntent"]
       96 JUMPIFNOTEQ                      R17 R18 ; [+3]
       98 MOVE                             R10 R16
       99 JUMP                             ; [+3]
      100 FORGLOOP                         R12 2 ; [-12]
      102 GETTABLEN                        R10 R11 1
      103 JUMPIFEQKNIL                     R10 ; [+28]
      105 LOADK                            R13 K19 ["Folder"]
      106 NAMECALL                         R11 R10 K20 ["IsA"]
      108 CALL                             R11 2 1
      109 JUMPIF                           R11 ; [+5]
      110 LOADK                            R13 K11 ["Model"]
      111 NAMECALL                         R11 R10 K20 ["IsA"]
      113 CALL                             R11 2 1
      114 JUMPIFNOT                        R11 ; [+12]
      115 NAMECALL                         R11 R10 K21 ["GetChildren"]
      117 CALL                             R11 1 3
      118 FORGPREP                         R11
      119 NAMECALL                         R16 R15 K17 ["Clone"]
      121 CALL                             R16 1 1
      122 SETTABLEKS                       R4 R16 K18 ["Parent"]
      124 FORGLOOP                         R11 2 ; [-6]
      126 JUMP                             ; [+5]
      127 NAMECALL                         R11 R10 K17 ["Clone"]
      129 CALL                             R11 1 1
      130 SETTABLEKS                       R4 R11 K18 ["Parent"]
      132 FORGLOOP                         R5 2 ; [-55]
      134 MOVE                             R3 R4
      135 DUPTABLE                         R4 K28 [{"jobId", "entrypointInput", "rootInstance", "uploadEnum", "consumerConfig", "hsrAssets"}]
      136 GETUPVAL                         R5 4
      137 NAMECALL                         R5 R5 K29 ["GenerateGUID"]
      139 CALL                             R5 1 1
      140 SETTABLEKS                       R5 R4 K22 ["jobId"]
      142 SETTABLEKS                       R0 R4 K23 ["entrypointInput"]
      144 SETTABLEKS                       R3 R4 K24 ["rootInstance"]
      146 DUPTABLE                         R5 K31 [{"bundleType"}]
      147 SETTABLEKS                       R1 R5 K30 ["bundleType"]
      149 SETTABLEKS                       R5 R4 K25 ["uploadEnum"]
      151 GETUPVAL                         R5 5
      152 MOVE                             R6 R2
      153 CALL                             R5 1 1
      154 SETTABLEKS                       R5 R4 K26 ["consumerConfig"]
      156 NEWTABLE                         R5 0 0
      158 SETTABLEKS                       R5 R4 K27 ["hsrAssets"]
      160 GETUPVAL                         R5 6
      161 MOVE                             R6 R4
      162 CALL                             R5 1 1
      163 GETUPVAL                         R6 0
      164 CALL                             R6 0 1
      165 JUMPIFNOT                        R6 ; [+5]
      166 GETUPVAL                         R6 1
      167 GETTABLEKS                       R6 R6 K0 ["setIsBackendBundleUpload"]
      169 LOADB                            R7 0
      170 CALL                             R6 1 0
      171 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       18 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       25 GETTABLEKS                       R4 R4 K9 ["ValidationModuleLoader"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Constants"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K7 ["validationSystem"]
       37 GETTABLEKS                       R6 R6 K11 ["ValidationTestWrapper"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K7 ["validationSystem"]
       44 GETTABLEKS                       R7 R7 K12 ["dataFetchModules"]
       46 GETTABLEKS                       R7 R7 K13 ["FetchAllDesiredData"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R8 R0 K5 ["util"]
       53 GETTABLEKS                       R8 R8 K14 ["getUploadCategory"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R9 R0 K5 ["util"]
       60 GETTABLEKS                       R9 R9 K15 ["RecreateSceneFromEditables"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R0 K7 ["validationSystem"]
       67 GETTABLEKS                       R10 R10 K16 ["ErrorSourceStrings"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K17 ["flags"]
       74 GETTABLEKS                       R11 R11 K18 ["getEngineFeatureEngineAQSJsonParsingInLua"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K4 [require]
       79 GETTABLEKS                       R12 R0 K5 ["util"]
       81 GETTABLEKS                       R12 R12 K19 ["R15plusUtils"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K4 [require]
       86 GETTABLEKS                       R13 R0 K17 ["flags"]
       88 GETTABLEKS                       R13 R13 K20 ["getFFlagDebugAllowHRDUploadOnBundleBackend"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K4 [require]
       93 GETTABLEKS                       R14 R0 K17 ["flags"]
       95 GETTABLEKS                       R14 R14 K21 ["getFFlagUGCValidationAnimationPackSupport"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K4 [require]
      100 GETTABLEKS                       R15 R0 K17 ["flags"]
      102 GETTABLEKS                       R15 R15 K22 ["getFFlagUGCValidateMigrateSchemaProperties"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K24 [game]
      107 LOADK                            R17 K25 ["HttpService"]
      108 NAMECALL                         R15 R15 K26 ["GetService"]
      110 CALL                             R15 2 1
      111 GETIMPORT                        R16 K24 [game]
      113 LOADK                            R18 K27 ["TelemetryService"]
      114 NAMECALL                         R16 R16 K26 ["GetService"]
      116 CALL                             R16 2 1
      117 GETIMPORT                        R17 K24 [game]
      119 LOADK                            R19 K28 ["RunService"]
      120 NAMECALL                         R17 R17 K26 ["GetService"]
      122 CALL                             R17 2 1
      123 GETIMPORT                        R18 K24 [game]
      125 LOADK                            R20 K29 ["AssetQualityService"]
      126 NAMECALL                         R18 R18 K26 ["GetService"]
      128 CALL                             R18 2 1
      129 GETIMPORT                        R19 K24 [game]
      131 LOADK                            R21 K30 ["FullValidationTelemetryThrottleHundrethsPercent"]
      132 LOADN                            R22 10000
      133 NAMECALL                         R19 R19 K31 ["DefineFastInt"]
      135 CALL                             R19 3 0
      136 GETIMPORT                        R19 K24 [game]
      138 LOADK                            R21 K32 ["RbxAnalyticsService"]
      139 NAMECALL                         R19 R19 K26 ["GetService"]
      141 CALL                             R19 2 1
      142 DUPTABLE                         R20 K42 [{["eventName"] = "UgcFullValidationFinished", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Report result of ugc validation suite", ["links"] = "https://create.roblox.com/docs/art/validation-errors"}]
      143 NEWTABLE                         R21 0 1
      145 LOADK                            R22 K43 ["EventIngest"]
      146 SETLIST                          R21 R22 1 [1]
      148 SETTABLEKS                       R21 R20 K35 ["backends"]
      150 GETIMPORT                        R21 K24 [game]
      152 LOADK                            R23 K30 ["FullValidationTelemetryThrottleHundrethsPercent"]
      153 NAMECALL                         R21 R21 K44 ["GetFastInt"]
      155 CALL                             R21 2 1
      156 SETTABLEKS                       R21 R20 K36 ["throttlingPercentage"]
      158 NEWTABLE                         R21 0 3
      160 LOADN                            R22 25
      161 LOADN                            R23 11
      162 LOADN                            R24 18
      163 SETLIST                          R21 R22 3 [1]
      165 SETTABLEKS                       R21 R20 K37 ["lastUpdated"]
      167 GETIMPORT                        R21 K4 [require]
      169 GETTABLEKS                       R22 R0 K17 ["flags"]
      171 GETTABLEKS                       R22 R22 K45 ["getFFlagDebugUGCValidationPrintNewStructureResults"]
      173 CALL                             R21 1 1
      174 GETIMPORT                        R22 K4 [require]
      176 GETTABLEKS                       R23 R0 K17 ["flags"]
      178 GETTABLEKS                       R23 R23 K46 ["getEngineFeatureEngineAssetQualityEngineService"]
      180 CALL                             R22 1 1
      181 GETIMPORT                        R23 K4 [require]
      183 GETTABLEKS                       R24 R0 K17 ["flags"]
      185 GETTABLEKS                       R24 R24 K47 ["getFIntUGCValidationFetchQualityMaxRetry"]
      187 CALL                             R23 1 1
      188 GETIMPORT                        R24 K4 [require]
      190 GETTABLEKS                       R25 R0 K17 ["flags"]
      192 GETTABLEKS                       R25 R25 K48 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
      194 CALL                             R24 1 1
      195 NEWTABLE                         R25 2 0
      197 DUPTABLE                         R26 K53 [{["Publish"] = True, ["Backend"] = True, ["Internal"] = True}]
      198 DUPTABLE                         R27 K56 [{["InExpServer"] = True, ["InExpClient"] = True}]
      199 DUPTABLE                         R28 K59 [{"Toolbox", "AutoSetup", "Publish", "Backend", "Internal", "InExpServer", "InExpClient"}]
      200 GETTABLEKS                       R29 R2 K60 ["ConsumerEnv"]
      202 GETTABLEKS                       R29 R29 K61 ["Studio"]
      204 SETTABLEKS                       R29 R28 K57 ["Toolbox"]
      206 GETTABLEKS                       R29 R2 K60 ["ConsumerEnv"]
      208 GETTABLEKS                       R29 R29 K61 ["Studio"]
      210 SETTABLEKS                       R29 R28 K58 ["AutoSetup"]
      212 GETTABLEKS                       R29 R2 K60 ["ConsumerEnv"]
      214 GETTABLEKS                       R29 R29 K51 ["Backend"]
      216 SETTABLEKS                       R29 R28 K49 ["Publish"]
      218 GETTABLEKS                       R29 R2 K60 ["ConsumerEnv"]
      220 GETTABLEKS                       R29 R29 K51 ["Backend"]
      222 SETTABLEKS                       R29 R28 K51 ["Backend"]
      224 GETTABLEKS                       R29 R2 K60 ["ConsumerEnv"]
      226 GETTABLEKS                       R29 R29 K51 ["Backend"]
      228 SETTABLEKS                       R29 R28 K52 ["Internal"]
      230 GETTABLEKS                       R29 R2 K60 ["ConsumerEnv"]
      232 GETTABLEKS                       R29 R29 K62 ["IEC"]
      234 SETTABLEKS                       R29 R28 K54 ["InExpServer"]
      236 GETTABLEKS                       R29 R2 K60 ["ConsumerEnv"]
      238 GETTABLEKS                       R29 R29 K62 ["IEC"]
      240 SETTABLEKS                       R29 R28 K55 ["InExpClient"]
      242 GETTABLEKS                       R29 R2 K63 ["AssetQualityFetchStatus"]
      244 DUPCLOSURE                       R30 K64 [PROTO_0]
      245 CAPTURE                          VAL R14
      246 CAPTURE                          VAL R3
      247 CAPTURE                          VAL R24
      248 DUPCLOSURE                       R31 K65 [PROTO_3]
      249 CAPTURE                          VAL R22
      250 CAPTURE                          VAL R18
      251 CAPTURE                          VAL R29
      252 CAPTURE                          VAL R24
      253 CAPTURE                          VAL R8
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R10
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R21
      258 CAPTURE                          VAL R6
      259 DUPCLOSURE                       R32 K66 [PROTO_4]
      260 DUPCLOSURE                       R33 K67 [PROTO_6]
      261 CAPTURE                          VAL R9
      262 DUPCLOSURE                       R34 K68 [PROTO_7]
      263 DUPCLOSURE                       R35 K69 [PROTO_8]
      264 CAPTURE                          VAL R29
      265 CAPTURE                          VAL R19
      266 CAPTURE                          VAL R24
      267 CAPTURE                          VAL R16
      268 CAPTURE                          VAL R20
      269 CAPTURE                          VAL R21
      270 DUPCLOSURE                       R36 K70 [PROTO_9]
      271 CAPTURE                          VAL R2
      272 CAPTURE                          VAL R9
      273 DUPCLOSURE                       R37 K71 [PROTO_10]
      274 CAPTURE                          VAL R2
      275 DUPCLOSURE                       R38 K72 [PROTO_11]
      276 CAPTURE                          VAL R14
      277 CAPTURE                          VAL R28
      278 DUPCLOSURE                       R39 K73 [PROTO_12]
      279 CAPTURE                          VAL R21
      280 CAPTURE                          VAL R24
      281 CAPTURE                          VAL R7
      282 CAPTURE                          VAL R30
      283 CAPTURE                          VAL R29
      284 CAPTURE                          VAL R5
      285 CAPTURE                          VAL R2
      286 CAPTURE                          VAL R37
      287 CAPTURE                          VAL R36
      288 CAPTURE                          VAL R33
      289 CAPTURE                          VAL R35
      290 CAPTURE                          VAL R6
      291 CAPTURE                          VAL R26
      292 CAPTURE                          VAL R17
      293 CAPTURE                          VAL R31
      294 CAPTURE                          VAL R32
      295 CAPTURE                          VAL R27
      296 DUPCLOSURE                       R40 K74 [PROTO_13]
      297 CAPTURE                          VAL R4
      298 DUPCLOSURE                       R41 K75 [PROTO_14]
      299 CAPTURE                          VAL R15
      300 CAPTURE                          VAL R4
      301 CAPTURE                          VAL R38
      302 CAPTURE                          VAL R39
      303 SETTABLEKS                       R41 R25 K76 ["ValidateAsset"]
      305 DUPCLOSURE                       R41 K77 [PROTO_15]
      306 CAPTURE                          VAL R12
      307 CAPTURE                          VAL R11
      308 CAPTURE                          VAL R13
      309 CAPTURE                          VAL R4
      310 CAPTURE                          VAL R15
      311 CAPTURE                          VAL R38
      312 CAPTURE                          VAL R39
      313 SETTABLEKS                       R41 R25 K78 ["ValidateFinalizedBundle"]
      315 RETURN                           R25 1
