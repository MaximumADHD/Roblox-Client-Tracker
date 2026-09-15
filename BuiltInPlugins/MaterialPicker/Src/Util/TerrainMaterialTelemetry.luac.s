PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["slotIndex"]
        6 JUMPIFNOTEQ                      R7 R1 ; [+2]
        8 RETURN                           R6 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADNIL                          R2
       12 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["logEvent"]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 CALL                             R3 2 0
        5 GETIMPORT                        R3 K3 [table.clone]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 1
        9 NEWTABLE                         R4 0 1
       11 LOADK                            R5 K4 ["RobloxTelemetryCounter"]
       12 SETLIST                          R4 R5 1 [1]
       14 SETTABLEKS                       R4 R3 K5 ["backends"]
       16 GETTABLEKS                       R4 R0 K6 ["logCounter"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["variantName"]
        7 JUMPIFEQKS                       R7 K1 [""] ; [+2]
        9 ADDK                             R1 R1 K2 [1]
       10 FORGLOOP                         R2 2 ; [-6]
       12 DUPTABLE                         R2 K5 [{"catalogSize", "variantSlotCount"}]
       13 LENGTH                           R3 R0
       14 SETTABLEKS                       R3 R2 K3 ["catalogSize"]
       16 SETTABLEKS                       R1 R2 K4 ["variantSlotCount"]
       18 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R2 K16 [{[1], ["activeRequest"] = , ["catalog"], ["requestStartTime"] = 0, ["creationCount"] = 0, ["searchUsed"] = False, ["searchNoResults"] = False, ["catalogReadFailed"] = False, ["quickAddCatalogSizeBefore"] = 0, ["sortType"] = "slotNumber", ["viewType"] = "grid"}]
        1 SETTABLEKS                       R0 R2 K0 ["telemetry"]
        3 GETIMPORT                        R3 K19 [table.freeze]
        5 NEWTABLE                         R4 0 0
        7 CALL                             R3 1 1
        8 SETTABLEKS                       R3 R2 K3 ["catalog"]
       10 GETUPVAL                         R3 0
       11 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       13 GETIMPORT                        R1 K21 [setmetatable]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["activeRequest"]
        2 SETTABLEKS                       R2 R0 K1 ["catalog"]
        4 GETIMPORT                        R5 K4 [os.clock]
        6 CALL                             R5 0 1
        7 SETTABLEKS                       R5 R0 K5 ["requestStartTime"]
        9 LOADN                            R5 0
       10 SETTABLEKS                       R5 R0 K6 ["creationCount"]
       12 LOADB                            R5 0
       13 SETTABLEKS                       R5 R0 K7 ["searchUsed"]
       15 LOADB                            R5 0
       16 SETTABLEKS                       R5 R0 K8 ["searchNoResults"]
       18 LOADB                            R5 0
       19 SETTABLEKS                       R5 R0 K9 ["catalogReadFailed"]
       21 SETTABLEKS                       R3 R0 K10 ["viewType"]
       23 SETTABLEKS                       R4 R0 K11 ["sortType"]
       25 RETURN                           R0 0

PROTO_5:
        0 SETTABLEKS                       R1 R0 K0 ["catalog"]
        2 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["catalogReadFailed"]
        3 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["searchUsed"]
        3 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["searchNoResults"]
        3 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["creationCount"]
        2 ADDK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["creationCount"]
        5 RETURN                           R0 0

PROTO_10:
        0 SETTABLEKS                       R1 R0 K0 ["sortType"]
        2 RETURN                           R0 0

PROTO_11:
        0 SETTABLEKS                       R1 R0 K0 ["viewType"]
        2 RETURN                           R0 0

PROTO_12:
        0 SETTABLEKS                       R1 R0 K0 ["quickAddCatalogSizeBefore"]
        2 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R7 R0 K0 ["activeRequest"]
        2 JUMPIFNOTEQKNIL                  R7 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R8 0
        6 GETTABLEKS                       R9 R0 K1 ["telemetry"]
        8 GETUPVAL                         R10 1
        9 DUPTABLE                         R11 K10 [{"pickerId", "outcome", "catalogSizeBefore", "nameModified", "colorModified", "baseMaterial", "isVariant", "slotIndex"}]
       10 GETTABLEKS                       R12 R7 K11 ["anchorWidgetUri"]
       12 GETTABLEKS                       R12 R12 K12 ["ItemId"]
       14 SETTABLEKS                       R12 R11 K2 ["pickerId"]
       16 SETTABLEKS                       R1 R11 K3 ["outcome"]
       18 GETTABLEKS                       R12 R0 K13 ["quickAddCatalogSizeBefore"]
       20 SETTABLEKS                       R12 R11 K4 ["catalogSizeBefore"]
       22 SETTABLEKS                       R2 R11 K5 ["nameModified"]
       24 SETTABLEKS                       R3 R11 K6 ["colorModified"]
       26 JUMPIFNOT                        R4 ; [+3]
       27 GETTABLEKS                       R12 R4 K14 ["Name"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R12
       31 SETTABLEKS                       R12 R11 K7 ["baseMaterial"]
       33 SETTABLEKS                       R5 R11 K8 ["isVariant"]
       35 SETTABLEKS                       R6 R11 K9 ["slotIndex"]
       37 CALL                             R8 3 0
       38 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["activeRequest"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R5 R0 K1 ["catalog"]
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R5 R3 K2 ["anchorWidgetUri"]
       11 GETTABLEKS                       R5 R5 K3 ["ItemId"]
       13 SETTABLEKS                       R5 R4 K4 ["pickerId"]
       15 GETTABLEKS                       R5 R3 K2 ["anchorWidgetUri"]
       17 GETTABLEKS                       R5 R5 K5 ["PluginId"]
       19 SETTABLEKS                       R5 R4 K6 ["callerPluginId"]
       21 SETTABLEKS                       R1 R4 K7 ["outcome"]
       23 LOADN                            R6 0
       24 GETIMPORT                        R10 K11 [os.clock]
       26 CALL                             R10 0 1
       27 GETTABLEKS                       R11 R0 K12 ["requestStartTime"]
       29 SUB                              R9 R10 R11
       30 MULK                             R8 R9 K8 [1000]
       31 FASTCALL1                        MATH_ROUND R8 ; [+2]
       32 GETIMPORT                        R7 K15 [math.round]
       34 CALL                             R7 1 1
       35 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       37 GETIMPORT                        R5 K17 [math.max]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K18 ["durationMs"]
       42 GETTABLEKS                       R5 R0 K19 ["creationCount"]
       44 SETTABLEKS                       R5 R4 K19 ["creationCount"]
       46 GETTABLEKS                       R5 R0 K20 ["searchUsed"]
       48 SETTABLEKS                       R5 R4 K20 ["searchUsed"]
       50 GETTABLEKS                       R5 R0 K21 ["searchNoResults"]
       52 SETTABLEKS                       R5 R4 K21 ["searchNoResults"]
       54 GETTABLEKS                       R5 R0 K22 ["catalogReadFailed"]
       56 SETTABLEKS                       R5 R4 K22 ["catalogReadFailed"]
       58 GETTABLEKS                       R5 R0 K23 ["viewType"]
       60 SETTABLEKS                       R5 R4 K23 ["viewType"]
       62 GETTABLEKS                       R5 R0 K24 ["sortType"]
       64 SETTABLEKS                       R5 R4 K24 ["sortType"]
       66 SETTABLEKS                       R2 R4 K25 ["slotIndex"]
       68 JUMPIFEQKNIL                     R2 ; [+40]
       70 GETTABLEKS                       R6 R0 K1 ["catalog"]
       72 MOVE                             R7 R6
       73 LOADNIL                          R8
       74 LOADNIL                          R9
       75 FORGPREP                         R7
       76 GETTABLEKS                       R12 R11 K25 ["slotIndex"]
       78 JUMPIFNOTEQ                      R12 R2 ; [+3]
       80 MOVE                             R5 R11
       81 JUMP                             ; [+3]
       82 FORGLOOP                         R7 2 ; [-7]
       84 LOADNIL                          R5
       85 JUMPIFEQKNIL                     R5 ; [+23]
       87 GETTABLEKS                       R6 R5 K26 ["baseMaterial"]
       89 GETTABLEKS                       R6 R6 K27 ["Name"]
       91 SETTABLEKS                       R6 R4 K26 ["baseMaterial"]
       93 GETTABLEKS                       R7 R5 K28 ["variantName"]
       95 JUMPIFNOTEQKS                    R7 K29 [""] ; [+2]
       97 LOADB                            R6 0 +1
       98 LOADB                            R6 1
       99 SETTABLEKS                       R6 R4 K30 ["isVariant"]
      101 GETTABLEKS                       R7 R5 K31 ["resolvedVariant"]
      103 JUMPIFNOTEQKNIL                  R7 ; [+2]
      105 LOADB                            R6 0 +1
      106 LOADB                            R6 1
      107 SETTABLEKS                       R6 R4 K32 ["variantResolved"]
      109 GETUPVAL                         R5 1
      110 GETTABLEKS                       R6 R0 K33 ["telemetry"]
      112 GETUPVAL                         R7 2
      113 MOVE                             R8 R4
      114 CALL                             R5 3 0
      115 LOADNIL                          R5
      116 SETTABLEKS                       R5 R0 K0 ["activeRequest"]
      118 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["telemetry"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K3 [{["outcome"] = "invalidProtocol"}]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["TerrainPalette"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R0 K9 ["Src"]
       30 GETTABLEKS                       R4 R4 K11 ["Util"]
       32 GETTABLEKS                       R4 R4 K12 ["Telemetry"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R4 K13 ["TerrainMaterialPickerResponse"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R4 K14 ["TerrainMaterialQuickAddResult"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K15 [PROTO_0]
       45 NEWTABLE                         R8 16 0
       47 SETTABLEKS                       R8 R8 K16 ["__index"]
       49 DUPCLOSURE                       R9 K17 [PROTO_1]
       50 DUPCLOSURE                       R10 K18 [PROTO_2]
       51 DUPCLOSURE                       R11 K19 [PROTO_3]
       52 CAPTURE                          VAL R8
       53 SETTABLEKS                       R11 R8 K20 ["new"]
       55 DUPCLOSURE                       R11 K21 [PROTO_4]
       56 SETTABLEKS                       R11 R8 K22 ["beginRequest"]
       58 DUPCLOSURE                       R11 K23 [PROTO_5]
       59 SETTABLEKS                       R11 R8 K24 ["updateCatalog"]
       61 DUPCLOSURE                       R11 K25 [PROTO_6]
       62 SETTABLEKS                       R11 R8 K26 ["recordCatalogReadFailure"]
       64 DUPCLOSURE                       R11 K27 [PROTO_7]
       65 SETTABLEKS                       R11 R8 K28 ["recordSearchUsed"]
       67 DUPCLOSURE                       R11 K29 [PROTO_8]
       68 SETTABLEKS                       R11 R8 K30 ["recordSearchNoResults"]
       70 DUPCLOSURE                       R11 K31 [PROTO_9]
       71 SETTABLEKS                       R11 R8 K32 ["recordSlotCreated"]
       73 DUPCLOSURE                       R11 K33 [PROTO_10]
       74 SETTABLEKS                       R11 R8 K34 ["setSortType"]
       76 DUPCLOSURE                       R11 K35 [PROTO_11]
       77 SETTABLEKS                       R11 R8 K36 ["setViewType"]
       79 DUPCLOSURE                       R11 K37 [PROTO_12]
       80 SETTABLEKS                       R11 R8 K38 ["beginQuickAdd"]
       82 DUPCLOSURE                       R11 K39 [PROTO_13]
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R6
       85 SETTABLEKS                       R11 R8 K40 ["reportQuickAddResult"]
       87 DUPCLOSURE                       R11 K41 [PROTO_14]
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R5
       91 SETTABLEKS                       R11 R8 K42 ["reportResponse"]
       93 DUPCLOSURE                       R11 K43 [PROTO_15]
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R11 R8 K44 ["reportInvalidRequest"]
       98 RETURN                           R8 1
