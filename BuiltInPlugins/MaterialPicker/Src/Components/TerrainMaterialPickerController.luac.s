PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["catalogCommunication"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CPC_EVENTS"]
        6 GETTABLEKS                       R2 R2 K2 ["CATALOG_CHANGED"]
        8 NAMECALL                         R0 R0 K3 ["Fire"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["activeCatalog"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["telemetry"]
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K2 ["updateCatalog"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 DUPTABLE                         R3 K4 [{"catalog"}]
       12 SETTABLEKS                       R0 R3 K3 ["catalog"]
       14 NAMECALL                         R1 R1 K5 ["setState"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["telemetry"]
        3 NAMECALL                         R0 R0 K1 ["recordCatalogReadFailure"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["telemetry"]
        3 NAMECALL                         R0 R0 K1 ["recordSearchUsed"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["telemetry"]
        3 NAMECALL                         R0 R0 K1 ["recordSearchNoResults"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["telemetry"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["beginQuickAdd"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["telemetry"]
        3 MOVE                             R7 R0
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R10 R1 K1 ["material"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R10
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETTABLEKS                       R12 R1 K2 ["variantName"]
       14 JUMPIFNOTEQKNIL                  R12 ; [+2]
       16 LOADB                            R11 0 +1
       17 LOADB                            R11 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R11
       20 MOVE                             R12 R4
       21 NAMECALL                         R5 R5 K3 ["reportQuickAddResult"]
       23 CALL                             R5 7 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["slotCreated"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["activeRequest"]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K1 ["cancel"]
        6 CALL                             R2 1 0
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["onEditSlot"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["selected"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["completeRequest"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["telemetry"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["setSortType"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"sortType"}]
        9 SETTABLEKS                       R0 R3 K2 ["sortType"]
       11 NAMECALL                         R1 R1 K4 ["setState"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["telemetry"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["setViewType"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K3 [{"viewType"}]
        9 SETTABLEKS                       R0 R3 K2 ["viewType"]
       11 NAMECALL                         R1 R1 K4 ["setState"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TerrainMaterialCatalog"]
        3 GETTABLEKS                       R0 R0 K1 ["read"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isValidRequest"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+8]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["telemetry"]
        9 NAMECALL                         R1 R1 K2 ["reportInvalidRequest"]
       11 CALL                             R1 1 0
       12 LOADB                            R1 0
       13 RETURN                           R1 1
       14 GETIMPORT                        R1 K5 [table.clone]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [table.clone]
       20 GETTABLEKS                       R3 R0 K6 ["anchorWidgetUri"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K6 ["anchorWidgetUri"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K7 ["activeRequest"]
       28 JUMPIFNOT                        R2 ; [+5]
       29 GETUPVAL                         R2 1
       30 LOADK                            R4 K8 ["cancelled"]
       31 NAMECALL                         R2 R2 K9 ["completeRequest"]
       33 CALL                             R2 2 0
       34 GETIMPORT                        R2 K11 [workspace]
       36 GETTABLEKS                       R2 R2 K12 ["Terrain"]
       38 JUMPIFNOTEQKNIL                  R2 ; [+2]
       40 LOADB                            R4 0 +1
       41 LOADB                            R4 1
       42 FASTCALL2K                       ASSERT R4 K13 ; [+4]
       44 LOADK                            R5 K13 ["Workspace must contain Terrain"]
       45 GETIMPORT                        R3 K15 [assert]
       47 CALL                             R3 2 0
       48 GETIMPORT                        R3 K17 [pcall]
       50 NEWCLOSURE                       R4 P0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R2
       53 CALL                             R3 1 2
       54 JUMPIF                           R3 ; [+6]
       55 GETIMPORT                        R5 K19 [table.freeze]
       57 NEWTABLE                         R6 0 0
       59 CALL                             R5 1 1
       60 MOVE                             R4 R5
       61 GETUPVAL                         R5 1
       62 SETTABLEKS                       R1 R5 K7 ["activeRequest"]
       64 GETUPVAL                         R5 1
       65 SETTABLEKS                       R4 R5 K20 ["activeCatalog"]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K1 ["telemetry"]
       70 MOVE                             R7 R1
       71 MOVE                             R8 R4
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R9 R9 K21 ["state"]
       75 GETTABLEKS                       R9 R9 K22 ["viewType"]
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R10 R10 K21 ["state"]
       80 GETTABLEKS                       R10 R10 K23 ["sortType"]
       82 NAMECALL                         R5 R5 K24 ["beginRequest"]
       84 CALL                             R5 5 0
       85 JUMPIF                           R3 ; [+6]
       86 GETUPVAL                         R5 1
       87 GETTABLEKS                       R5 R5 K1 ["telemetry"]
       89 NAMECALL                         R5 R5 K25 ["recordCatalogReadFailure"]
       91 CALL                             R5 1 0
       92 GETUPVAL                         R5 1
       93 DUPTABLE                         R7 K28 [{"catalog", "request"}]
       94 SETTABLEKS                       R4 R7 K26 ["catalog"]
       96 SETTABLEKS                       R1 R7 K27 ["request"]
       98 NAMECALL                         R5 R5 K29 ["setState"]
      100 CALL                             R5 2 0
      101 GETUPVAL                         R5 1
      102 GETTABLEKS                       R5 R5 K30 ["props"]
      104 GETTABLEKS                       R5 R5 K31 ["onRequestOpened"]
      106 CALL                             R5 0 0
      107 LOADB                            R5 1
      108 RETURN                           R5 1

PROTO_15:
        0 DUPTABLE                         R4 K9 [{[1], ["refreshKey"] = 0, ["request"] = False, ["sortType"] = "slotNumber", ["viewType"] = "grid"}]
        1 GETIMPORT                        R5 K12 [table.freeze]
        3 NEWTABLE                         R6 0 0
        5 CALL                             R5 1 1
        6 SETTABLEKS                       R5 R4 K0 ["catalog"]
        8 NAMECALL                         R2 R0 K13 ["setState"]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K14 ["new"]
       14 GETTABLEKS                       R3 R1 K15 ["telemetry"]
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R0 K15 ["telemetry"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K14 ["new"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K16 ["MATERIAL_PICKER_CPC_ID"]
       25 GETTABLEKS                       R4 R1 K17 ["hostService"]
       27 CALL                             R2 2 1
       28 SETTABLEKS                       R2 R0 K18 ["communication"]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K14 ["new"]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R3 R3 K19 ["CPC_ID"]
       36 GETTABLEKS                       R4 R1 K17 ["hostService"]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R0 K20 ["catalogCommunication"]
       41 NEWCLOSURE                       R2 P0
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U2
       44 SETTABLEKS                       R2 R0 K21 ["onCatalogChanged"]
       46 NEWCLOSURE                       R2 P1
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R2 R0 K22 ["onCatalogRead"]
       50 NEWCLOSURE                       R2 P2
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R2 R0 K23 ["onCatalogReadFailed"]
       54 NEWCLOSURE                       R2 P3
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R2 R0 K24 ["onSearchUsed"]
       58 NEWCLOSURE                       R2 P4
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R2 R0 K25 ["onSearchNoResults"]
       62 NEWCLOSURE                       R2 P5
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R2 R0 K26 ["onQuickAddOpened"]
       66 NEWCLOSURE                       R2 P6
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R2 R0 K27 ["onQuickAddResult"]
       70 NEWCLOSURE                       R2 P7
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R2 R0 K28 ["onSlotCreated"]
       74 NEWCLOSURE                       R2 P8
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R2 R0 K29 ["onEditSlot"]
       79 NEWCLOSURE                       R2 P9
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R2 R0 K30 ["onSlotSelected"]
       83 NEWCLOSURE                       R2 P10
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R2 R0 K31 ["onPressedOutside"]
       87 NEWCLOSURE                       R2 P11
       88 CAPTURE                          VAL R0
       89 SETTABLEKS                       R2 R0 K32 ["onSortTypeChanged"]
       91 NEWCLOSURE                       R2 P12
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R2 R0 K33 ["onViewTypeChanged"]
       95 GETTABLEKS                       R2 R0 K18 ["communication"]
       97 GETUPVAL                         R4 2
       98 GETTABLEKS                       R4 R4 K34 ["CPC_CALLBACKS"]
      100 GETTABLEKS                       R4 R4 K35 ["OPEN_MATERIAL_PICKER"]
      102 NEWCLOSURE                       R5 P13
      103 CAPTURE                          UPVAL U3
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U4
      106 NAMECALL                         R2 R2 K36 ["OnInvoke"]
      108 CALL                             R2 3 0
      109 RETURN                           R0 0

PROTO_16:
        0 JUMPIFEQKS                       R2 K0 ["slotCreated"] ; [+8]
        2 GETTABLEKS                       R4 R0 K1 ["telemetry"]
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 NAMECALL                         R4 R4 K2 ["reportResponse"]
        8 CALL                             R4 3 0
        9 GETTABLEKS                       R4 R0 K3 ["communication"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K4 ["CPC_EVENTS"]
       14 GETTABLEKS                       R6 R6 K5 ["MATERIAL_PICKER_RESPONSE"]
       16 DUPTABLE                         R7 K9 [{"requestId", "outcome", "slotIndex"}]
       17 GETTABLEKS                       R8 R1 K6 ["requestId"]
       19 SETTABLEKS                       R8 R7 K6 ["requestId"]
       21 SETTABLEKS                       R2 R7 K7 ["outcome"]
       23 SETTABLEKS                       R3 R7 K8 ["slotIndex"]
       25 NAMECALL                         R4 R4 K10 ["Fire"]
       27 CALL                             R4 3 0
       28 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K2 [{"refreshKey", "request"}]
        1 GETTABLEKS                       R3 R0 K0 ["refreshKey"]
        3 ADDK                             R2 R3 K3 [1]
        4 SETTABLEKS                       R2 R1 K0 ["refreshKey"]
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R2 R1 K1 ["request"]
        9 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["activeRequest"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R3 K3 [table.clone]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R1 R3 K4 ["selectedSlotIndex"]
       11 SETTABLEKS                       R3 R0 K0 ["activeRequest"]
       13 GETTABLEKS                       R4 R0 K5 ["telemetry"]
       15 NAMECALL                         R4 R4 K6 ["recordSlotCreated"]
       17 CALL                             R4 1 0
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R3
       20 NAMECALL                         R4 R0 K7 ["setState"]
       22 CALL                             R4 2 0
       23 MOVE                             R6 R2
       24 LOADK                            R7 K8 ["slotCreated"]
       25 MOVE                             R8 R1
       26 NAMECALL                         R4 R0 K9 ["fireResponse"]
       28 CALL                             R4 4 0
       29 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R3 R0 K0 ["activeRequest"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 RETURN                           R0 0
        5 LOADNIL                          R4
        6 SETTABLEKS                       R4 R0 K0 ["activeRequest"]
        8 DUPTABLE                         R6 K3 [{["request"] = False}]
        9 NAMECALL                         R4 R0 K4 ["setState"]
       11 CALL                             R4 2 0
       12 MOVE                             R6 R3
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 NAMECALL                         R4 R0 K5 ["fireResponse"]
       17 CALL                             R4 4 0
       18 GETTABLEKS                       R4 R0 K6 ["props"]
       20 GETTABLEKS                       R4 R4 K7 ["onRequestCompleted"]
       22 CALL                             R4 0 0
       23 RETURN                           R0 0

PROTO_20:
        0 LOADK                            R3 K0 ["cancelled"]
        1 NAMECALL                         R1 R0 K1 ["completeRequest"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["activeRequest"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_22:
        0 DUPTABLE                         R1 K1 [{"refreshKey"}]
        1 GETTABLEKS                       R3 R0 K0 ["refreshKey"]
        3 ADDK                             R2 R3 K2 [1]
        4 SETTABLEKS                       R2 R1 K0 ["refreshKey"]
        6 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["activeRequest"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 DUPCLOSURE                       R3 K1 [PROTO_22]
        4 NAMECALL                         R1 R0 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["activeRequest"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K0 ["activeRequest"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R0 K0 ["activeRequest"]
        8 MOVE                             R4 R1
        9 LOADK                            R5 K1 ["cancelled"]
       10 NAMECALL                         R2 R0 K2 ["fireResponse"]
       12 CALL                             R2 3 0
       13 GETTABLEKS                       R1 R0 K3 ["communication"]
       15 NAMECALL                         R1 R1 K4 ["cleanup"]
       17 CALL                             R1 1 0
       18 GETTABLEKS                       R1 R0 K5 ["catalogCommunication"]
       20 NAMECALL                         R1 R1 K4 ["cleanup"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["request"]
        4 JUMPIF                           R1 ; [+13]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["Fragment"]
       11 LOADNIL                          R4
       12 GETTABLEKS                       R5 R0 K4 ["props"]
       14 GETTABLEKS                       R5 R5 K5 ["children"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K2 ["createElement"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K6 ["Root"]
       24 DUPTABLE                         R4 K9 [{["isOpen"] = True}]
       25 DUPTABLE                         R5 K12 [{"Anchor", "Content"}]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K2 ["createElement"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K10 ["Anchor"]
       32 DUPTABLE                         R8 K14 [{"anchorRef"}]
       33 GETTABLEKS                       R9 R1 K15 ["anchorWidgetUri"]
       35 SETTABLEKS                       R9 R8 K13 ["anchorRef"]
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K10 ["Anchor"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K2 ["createElement"]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K11 ["Content"]
       46 DUPTABLE                         R8 K22 [{["align"], ["hasArrow"] = False, ["isFocusable"] = True, ["onPressedOutside"], ["side"]}]
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R9 R9 K23 ["Start"]
       50 SETTABLEKS                       R9 R8 K16 ["align"]
       52 GETTABLEKS                       R9 R0 K20 ["onPressedOutside"]
       54 SETTABLEKS                       R9 R8 K20 ["onPressedOutside"]
       56 GETUPVAL                         R9 3
       57 GETTABLEKS                       R9 R9 K24 ["Bottom"]
       59 SETTABLEKS                       R9 R8 K21 ["side"]
       61 DUPTABLE                         R9 K26 [{"Picker"}]
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R10 R10 K2 ["createElement"]
       65 GETUPVAL                         R11 4
       66 DUPTABLE                         R12 K28 [{"Size"}]
       67 GETIMPORT                        R13 K31 [UDim2.fromOffset]
       69 LOADN                            R14 272
       70 LOADN                            R15 340
       71 CALL                             R13 2 1
       72 SETTABLEKS                       R13 R12 K27 ["Size"]
       74 DUPTABLE                         R13 K32 [{"Content"}]
       75 GETUPVAL                         R14 0
       76 GETTABLEKS                       R14 R14 K2 ["createElement"]
       78 GETUPVAL                         R15 5
       79 DUPTABLE                         R16 K50 [{"hostService", "initialCatalog", "onCatalogRead", "onCatalogReadFailed", "onCatalogChanged", "onEditSlot", "onQuickAddOpened", "onQuickAddResult", "onSlotCreated", "onSlotSelected", "onSearchNoResults", "onSearchUsed", "onSortTypeChanged", "onViewTypeChanged", "refreshKey", "request", "sortType", "viewType"}]
       80 GETTABLEKS                       R17 R0 K4 ["props"]
       82 GETTABLEKS                       R17 R17 K33 ["hostService"]
       84 SETTABLEKS                       R17 R16 K33 ["hostService"]
       86 GETTABLEKS                       R17 R0 K0 ["state"]
       88 GETTABLEKS                       R17 R17 K51 ["catalog"]
       90 SETTABLEKS                       R17 R16 K34 ["initialCatalog"]
       92 GETTABLEKS                       R17 R0 K35 ["onCatalogRead"]
       94 SETTABLEKS                       R17 R16 K35 ["onCatalogRead"]
       96 GETTABLEKS                       R17 R0 K36 ["onCatalogReadFailed"]
       98 SETTABLEKS                       R17 R16 K36 ["onCatalogReadFailed"]
      100 GETTABLEKS                       R17 R0 K37 ["onCatalogChanged"]
      102 SETTABLEKS                       R17 R16 K37 ["onCatalogChanged"]
      104 GETTABLEKS                       R17 R0 K38 ["onEditSlot"]
      106 SETTABLEKS                       R17 R16 K38 ["onEditSlot"]
      108 GETTABLEKS                       R17 R0 K39 ["onQuickAddOpened"]
      110 SETTABLEKS                       R17 R16 K39 ["onQuickAddOpened"]
      112 GETTABLEKS                       R17 R0 K40 ["onQuickAddResult"]
      114 SETTABLEKS                       R17 R16 K40 ["onQuickAddResult"]
      116 GETTABLEKS                       R17 R0 K41 ["onSlotCreated"]
      118 SETTABLEKS                       R17 R16 K41 ["onSlotCreated"]
      120 GETTABLEKS                       R17 R0 K42 ["onSlotSelected"]
      122 SETTABLEKS                       R17 R16 K42 ["onSlotSelected"]
      124 GETTABLEKS                       R17 R0 K43 ["onSearchNoResults"]
      126 SETTABLEKS                       R17 R16 K43 ["onSearchNoResults"]
      128 GETTABLEKS                       R17 R0 K44 ["onSearchUsed"]
      130 SETTABLEKS                       R17 R16 K44 ["onSearchUsed"]
      132 GETTABLEKS                       R17 R0 K45 ["onSortTypeChanged"]
      134 SETTABLEKS                       R17 R16 K45 ["onSortTypeChanged"]
      136 GETTABLEKS                       R17 R0 K46 ["onViewTypeChanged"]
      138 SETTABLEKS                       R17 R16 K46 ["onViewTypeChanged"]
      140 GETTABLEKS                       R17 R0 K0 ["state"]
      142 GETTABLEKS                       R17 R17 K47 ["refreshKey"]
      144 SETTABLEKS                       R17 R16 K47 ["refreshKey"]
      146 SETTABLEKS                       R1 R16 K1 ["request"]
      148 GETTABLEKS                       R17 R0 K0 ["state"]
      150 GETTABLEKS                       R17 R17 K48 ["sortType"]
      152 SETTABLEKS                       R17 R16 K48 ["sortType"]
      154 GETTABLEKS                       R17 R0 K0 ["state"]
      156 GETTABLEKS                       R17 R17 K49 ["viewType"]
      158 SETTABLEKS                       R17 R16 K49 ["viewType"]
      160 CALL                             R14 2 1
      161 SETTABLEKS                       R14 R13 K11 ["Content"]
      163 CALL                             R10 3 1
      164 SETTABLEKS                       R10 R9 K25 ["Picker"]
      166 CALL                             R6 3 1
      167 SETTABLEKS                       R6 R5 K11 ["Content"]
      169 CALL                             R2 3 -1
      170 RETURN                           R2 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["TerrainPalette"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K12 ["Popover"]
       44 GETTABLEKS                       R7 R2 K13 ["Enums"]
       46 GETTABLEKS                       R7 R7 K14 ["PopoverAlign"]
       48 GETTABLEKS                       R8 R2 K13 ["Enums"]
       50 GETTABLEKS                       R8 R8 K15 ["PopoverSide"]
       52 GETTABLEKS                       R9 R2 K16 ["View"]
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K6 ["Packages"]
       58 GETTABLEKS                       R11 R11 K17 ["SharedPluginConstants"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R10 R10 K18 ["TERRAIN"]
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R0 K19 ["Src"]
       67 GETTABLEKS                       R12 R12 K20 ["Components"]
       69 GETTABLEKS                       R12 R12 K21 ["TerrainMaterialPickerContent"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R13 R0 K19 ["Src"]
       76 GETTABLEKS                       R13 R13 K22 ["Types"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R0 K19 ["Src"]
       83 GETTABLEKS                       R14 R14 K23 ["Util"]
       85 GETTABLEKS                       R14 R14 K24 ["TerrainMaterialTelemetry"]
       87 CALL                             R13 1 1
       88 GETTABLEKS                       R14 R3 K23 ["Util"]
       90 GETTABLEKS                       R14 R14 K25 ["CrossPluginCommunication"]
       92 GETTABLEKS                       R15 R5 K26 ["TerrainMaterialPickerProtocol"]
       94 GETTABLEKS                       R16 R4 K27 ["PureComponent"]
       96 LOADK                            R18 K28 ["TerrainMaterialPickerController"]
       97 NAMECALL                         R16 R16 K29 ["extend"]
       99 CALL                             R16 2 1
      100 DUPCLOSURE                       R17 K30 [PROTO_15]
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R5
      106 SETTABLEKS                       R17 R16 K31 ["init"]
      108 DUPCLOSURE                       R17 K32 [PROTO_16]
      109 CAPTURE                          VAL R10
      110 SETTABLEKS                       R17 R16 K33 ["fireResponse"]
      112 DUPCLOSURE                       R17 K34 [PROTO_18]
      113 SETTABLEKS                       R17 R16 K35 ["slotCreated"]
      115 DUPCLOSURE                       R17 K36 [PROTO_19]
      116 SETTABLEKS                       R17 R16 K37 ["completeRequest"]
      118 DUPCLOSURE                       R17 K38 [PROTO_20]
      119 SETTABLEKS                       R17 R16 K39 ["cancel"]
      121 DUPCLOSURE                       R17 K40 [PROTO_21]
      122 SETTABLEKS                       R17 R16 K41 ["hasActiveRequest"]
      124 DUPCLOSURE                       R17 K42 [PROTO_23]
      125 SETTABLEKS                       R17 R16 K43 ["refresh"]
      127 DUPCLOSURE                       R17 K44 [PROTO_24]
      128 SETTABLEKS                       R17 R16 K45 ["willUnmount"]
      130 DUPCLOSURE                       R17 K46 [PROTO_25]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R11
      137 SETTABLEKS                       R17 R16 K47 ["render"]
      139 RETURN                           R16 1
