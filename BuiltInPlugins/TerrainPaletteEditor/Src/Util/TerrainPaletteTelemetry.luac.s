PROTO_0:
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

PROTO_1:
        0 DUPTABLE                         R3 K8 [{[1], ["editorEnabled"], ["catalogSnapshot"] = , ["hasReportedCurrentOpen"] = False, ["pendingSelectionRequestId"] = , ["pendingSelectionEditorAlreadyOpen"] = False}]
        1 SETTABLEKS                       R0 R3 K0 ["telemetry"]
        3 SETTABLEKS                       R1 R3 K1 ["editorEnabled"]
        5 GETUPVAL                         R4 0
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K10 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["editorEnabled"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K1 ["hasReportedCurrentOpen"]
        5 JUMPIF                           R1 ; [+4]
        6 GETTABLEKS                       R1 R0 K2 ["catalogSnapshot"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K2 ["catalogSnapshot"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R3 R0 K3 ["telemetry"]
       16 GETUPVAL                         R4 1
       17 DUPTABLE                         R5 K7 [{"catalogSize", "variantSlotCount", "hasCapacity"}]
       18 GETTABLEKS                       R6 R1 K4 ["catalogSize"]
       20 SETTABLEKS                       R6 R5 K4 ["catalogSize"]
       22 GETTABLEKS                       R6 R1 K5 ["variantSlotCount"]
       24 SETTABLEKS                       R6 R5 K5 ["variantSlotCount"]
       26 GETTABLEKS                       R6 R1 K6 ["hasCapacity"]
       28 SETTABLEKS                       R6 R5 K6 ["hasCapacity"]
       30 CALL                             R2 3 0
       31 LOADB                            R2 1
       32 SETTABLEKS                       R2 R0 K1 ["hasReportedCurrentOpen"]
       34 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R0 K0 ["telemetry"]
        3 GETUPVAL                         R6 1
        4 DUPTABLE                         R7 K4 [{"outcome", "slotIndex", "editorAlreadyOpen"}]
        5 SETTABLEKS                       R1 R7 K1 ["outcome"]
        7 SETTABLEKS                       R2 R7 K2 ["slotIndex"]
        9 SETTABLEKS                       R3 R7 K3 ["editorAlreadyOpen"]
       11 CALL                             R4 3 0
       12 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["invalidIndex"]
        1 LOADNIL                          R4
        2 GETTABLEKS                       R5 R0 K1 ["editorEnabled"]
        4 NAMECALL                         R1 R0 K2 ["reportExternalSelection"]
        6 CALL                             R1 4 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["editorEnabled"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["editorEnabled"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R0 K1 ["hasReportedCurrentOpen"]
       10 NAMECALL                         R2 R0 K2 ["reportEditorOpened"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 SETTABLEKS                       R1 R0 K0 ["pendingSelectionRequestId"]
        2 GETTABLEKS                       R2 R0 K1 ["editorEnabled"]
        4 SETTABLEKS                       R2 R0 K2 ["pendingSelectionEditorAlreadyOpen"]
        6 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["pendingSelectionRequestId"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["pendingSelectionEditorAlreadyOpen"]
        6 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R4 R1 K0 ["kind"]
        2 JUMPIFEQKS                       R4 K1 ["catalogMutation"] ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        8 LOADK                            R4 K2 ["Expected a catalog mutation event"]
        9 GETIMPORT                        R2 K4 [assert]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R1 K5 ["nextEntry"]
       14 JUMPIF                           R2 ; [+2]
       15 GETTABLEKS                       R2 R1 K6 ["previousEntry"]
       17 DUPTABLE                         R3 K17 [{["action"], ["outcome"], ["failureReason"], ["slotIndex"], ["baseMaterial"], ["isVariant"], ["catalogSizeBefore"], ["catalogSizeAfter"], ["source"] = "paletteEditor"}]
       18 GETTABLEKS                       R4 R1 K7 ["action"]
       20 SETTABLEKS                       R4 R3 K7 ["action"]
       22 GETTABLEKS                       R4 R1 K8 ["outcome"]
       24 SETTABLEKS                       R4 R3 K8 ["outcome"]
       26 GETTABLEKS                       R4 R1 K9 ["failureReason"]
       28 SETTABLEKS                       R4 R3 K9 ["failureReason"]
       30 JUMPIFEQKNIL                     R2 ; [+4]
       32 GETTABLEKS                       R4 R2 K10 ["slotIndex"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R4
       36 SETTABLEKS                       R4 R3 K10 ["slotIndex"]
       38 JUMPIFEQKNIL                     R2 ; [+6]
       40 GETTABLEKS                       R4 R2 K18 ["material"]
       42 GETTABLEKS                       R4 R4 K19 ["Name"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R4
       46 SETTABLEKS                       R4 R3 K11 ["baseMaterial"]
       48 JUMPIFEQKNIL                     R2 ; [+8]
       50 GETTABLEKS                       R5 R2 K20 ["variant"]
       52 JUMPIFNOTEQKNIL                  R5 ; [+2]
       54 LOADB                            R4 0 +1
       55 LOADB                            R4 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R4
       58 SETTABLEKS                       R4 R3 K12 ["isVariant"]
       60 GETTABLEKS                       R4 R1 K13 ["catalogSizeBefore"]
       62 SETTABLEKS                       R4 R3 K13 ["catalogSizeBefore"]
       64 GETTABLEKS                       R4 R1 K14 ["catalogSizeAfter"]
       66 SETTABLEKS                       R4 R3 K14 ["catalogSizeAfter"]
       68 GETTABLEKS                       R4 R1 K7 ["action"]
       70 JUMPIFNOTEQKS                    R4 K21 ["update"] ; [+65]
       72 GETTABLEKS                       R4 R1 K6 ["previousEntry"]
       74 JUMPIFEQKNIL                     R4 ; [+61]
       76 GETTABLEKS                       R4 R1 K5 ["nextEntry"]
       78 JUMPIFEQKNIL                     R4 ; [+57]
       80 GETTABLEKS                       R5 R1 K6 ["previousEntry"]
       82 GETTABLEKS                       R5 R5 K18 ["material"]
       84 GETTABLEKS                       R6 R1 K5 ["nextEntry"]
       86 GETTABLEKS                       R6 R6 K18 ["material"]
       88 JUMPIFNOTEQ                      R5 R6 ; [+2]
       90 LOADB                            R4 0 +1
       91 LOADB                            R4 1
       92 SETTABLEKS                       R4 R3 K22 ["changedMaterial"]
       94 GETTABLEKS                       R5 R1 K6 ["previousEntry"]
       96 GETTABLEKS                       R5 R5 K20 ["variant"]
       98 GETTABLEKS                       R6 R1 K5 ["nextEntry"]
      100 GETTABLEKS                       R6 R6 K20 ["variant"]
      102 JUMPIFNOTEQ                      R5 R6 ; [+2]
      104 LOADB                            R4 0 +1
      105 LOADB                            R4 1
      106 SETTABLEKS                       R4 R3 K23 ["changedVariant"]
      108 GETTABLEKS                       R5 R1 K6 ["previousEntry"]
      110 GETTABLEKS                       R5 R5 K24 ["color"]
      112 GETTABLEKS                       R6 R1 K5 ["nextEntry"]
      114 GETTABLEKS                       R6 R6 K24 ["color"]
      116 JUMPIFNOTEQ                      R5 R6 ; [+2]
      118 LOADB                            R4 0 +1
      119 LOADB                            R4 1
      120 SETTABLEKS                       R4 R3 K25 ["changedColor"]
      122 GETTABLEKS                       R5 R1 K6 ["previousEntry"]
      124 GETTABLEKS                       R5 R5 K26 ["name"]
      126 GETTABLEKS                       R6 R1 K5 ["nextEntry"]
      128 GETTABLEKS                       R6 R6 K26 ["name"]
      130 JUMPIFNOTEQ                      R5 R6 ; [+2]
      132 LOADB                            R4 0 +1
      133 LOADB                            R4 1
      134 SETTABLEKS                       R4 R3 K27 ["changedName"]
      136 GETUPVAL                         R4 0
      137 MOVE                             R5 R0
      138 GETUPVAL                         R6 1
      139 MOVE                             R7 R3
      140 CALL                             R4 3 0
      141 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["kind"]
        2 JUMPIFNOTEQKS                    R2 K1 ["catalogSnapshot"] ; [+20]
        4 DUPTABLE                         R2 K5 [{"catalogSize", "variantSlotCount", "hasCapacity"}]
        5 GETTABLEKS                       R3 R1 K2 ["catalogSize"]
        7 SETTABLEKS                       R3 R2 K2 ["catalogSize"]
        9 GETTABLEKS                       R3 R1 K3 ["variantSlotCount"]
       11 SETTABLEKS                       R3 R2 K3 ["variantSlotCount"]
       13 GETTABLEKS                       R3 R1 K4 ["hasCapacity"]
       15 SETTABLEKS                       R3 R2 K4 ["hasCapacity"]
       17 SETTABLEKS                       R2 R0 K1 ["catalogSnapshot"]
       19 NAMECALL                         R2 R0 K6 ["reportEditorOpened"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETTABLEKS                       R2 R1 K0 ["kind"]
       25 JUMPIFNOTEQKS                    R2 K7 ["catalogMutation"] ; [+7]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R3 R0 K8 ["telemetry"]
       30 MOVE                             R4 R1
       31 CALL                             R2 2 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R2 R1 K0 ["kind"]
       35 JUMPIFNOTEQKS                    R2 K9 ["selectionRequestApplied"] ; [+22]
       37 GETTABLEKS                       R2 R0 K10 ["pendingSelectionRequestId"]
       39 GETTABLEKS                       R3 R1 K11 ["requestId"]
       41 JUMPIFEQ                         R2 R3 ; [+2]
       43 RETURN                           R0 0
       44 GETTABLEKS                       R2 R0 K12 ["pendingSelectionEditorAlreadyOpen"]
       46 NAMECALL                         R3 R0 K13 ["clearPendingExternalSelection"]
       48 CALL                             R3 1 0
       49 GETTABLEKS                       R5 R1 K14 ["outcome"]
       51 GETTABLEKS                       R6 R1 K15 ["slotIndex"]
       53 MOVE                             R7 R2
       54 NAMECALL                         R3 R0 K16 ["reportExternalSelection"]
       56 CALL                             R3 4 0
       57 RETURN                           R0 0
       58 GETTABLEKS                       R2 R1 K0 ["kind"]
       60 JUMPIFNOTEQKS                    R2 K17 ["deletePrompt"] ; [+29]
       62 GETUPVAL                         R2 1
       63 GETTABLEKS                       R3 R0 K8 ["telemetry"]
       65 GETUPVAL                         R4 2
       66 DUPTABLE                         R5 K20 [{"outcome", "isVariant", "baseMaterial"}]
       67 GETTABLEKS                       R6 R1 K14 ["outcome"]
       69 SETTABLEKS                       R6 R5 K14 ["outcome"]
       71 GETTABLEKS                       R7 R1 K21 ["entry"]
       73 GETTABLEKS                       R7 R7 K22 ["variant"]
       75 JUMPIFNOTEQKNIL                  R7 ; [+2]
       77 LOADB                            R6 0 +1
       78 LOADB                            R6 1
       79 SETTABLEKS                       R6 R5 K18 ["isVariant"]
       81 GETTABLEKS                       R6 R1 K21 ["entry"]
       83 GETTABLEKS                       R6 R6 K23 ["material"]
       85 GETTABLEKS                       R6 R6 K24 ["Name"]
       87 SETTABLEKS                       R6 R5 K19 ["baseMaterial"]
       89 CALL                             R2 3 0
       90 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPaletteEditor"]
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
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Telemetry"]
       29 GETTABLEKS                       R4 R4 K12 ["TerrainPaletteCatalogMutation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K11 ["Telemetry"]
       40 GETTABLEKS                       R5 R5 K13 ["TerrainPaletteDeletePrompt"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K11 ["Telemetry"]
       51 GETTABLEKS                       R6 R6 K14 ["TerrainPaletteEditorOpened"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K9 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Util"]
       60 GETTABLEKS                       R7 R7 K11 ["Telemetry"]
       62 GETTABLEKS                       R7 R7 K15 ["TerrainPaletteExternalSelection"]
       64 CALL                             R6 1 1
       65 NEWTABLE                         R7 16 0
       67 SETTABLEKS                       R7 R7 K16 ["__index"]
       69 DUPCLOSURE                       R8 K17 [PROTO_0]
       70 DUPCLOSURE                       R9 K18 [PROTO_1]
       71 CAPTURE                          VAL R7
       72 SETTABLEKS                       R9 R7 K19 ["new"]
       74 DUPCLOSURE                       R9 K20 [PROTO_2]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R9 R7 K21 ["reportEditorOpened"]
       79 DUPCLOSURE                       R9 K22 [PROTO_3]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R6
       82 SETTABLEKS                       R9 R7 K23 ["reportExternalSelection"]
       84 DUPCLOSURE                       R9 K24 [PROTO_4]
       85 SETTABLEKS                       R9 R7 K25 ["reportInvalidExternalSelection"]
       87 DUPCLOSURE                       R9 K26 [PROTO_5]
       88 SETTABLEKS                       R9 R7 K27 ["setEditorEnabled"]
       90 DUPCLOSURE                       R9 K28 [PROTO_6]
       91 SETTABLEKS                       R9 R7 K29 ["beginExternalSelection"]
       93 DUPCLOSURE                       R9 K30 [PROTO_7]
       94 SETTABLEKS                       R9 R7 K31 ["clearPendingExternalSelection"]
       96 DUPCLOSURE                       R9 K32 [PROTO_8]
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R3
       99 DUPCLOSURE                       R10 K33 [PROTO_9]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R4
      103 SETTABLEKS                       R10 R7 K34 ["onEvent"]
      105 RETURN                           R7 1
