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
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["slotCreated"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["selected"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["completeRequest"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"viewType"}]
        2 SETTABLEKS                       R0 R3 K0 ["viewType"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isValidRequest"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADB                            R1 0
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K3 [table.clone]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K3 [table.clone]
       14 GETTABLEKS                       R3 R0 K4 ["anchorWidgetUri"]
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K4 ["anchorWidgetUri"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K5 ["activeRequest"]
       22 JUMPIFNOT                        R2 ; [+5]
       23 GETUPVAL                         R2 1
       24 LOADK                            R4 K6 ["cancelled"]
       25 NAMECALL                         R2 R2 K7 ["completeRequest"]
       27 CALL                             R2 2 0
       28 GETUPVAL                         R2 1
       29 SETTABLEKS                       R1 R2 K5 ["activeRequest"]
       31 GETUPVAL                         R2 1
       32 DUPTABLE                         R4 K9 [{"request"}]
       33 SETTABLEKS                       R1 R4 K8 ["request"]
       35 NAMECALL                         R2 R2 K10 ["setState"]
       37 CALL                             R2 2 0
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K11 ["props"]
       41 GETTABLEKS                       R2 R2 K12 ["onRequestOpened"]
       43 CALL                             R2 0 0
       44 LOADB                            R2 1
       45 RETURN                           R2 1

PROTO_6:
        0 DUPTABLE                         R4 K6 [{[1] = 0, ["request"] = False, ["viewType"] = "grid"}]
        1 NAMECALL                         R2 R0 K7 ["setState"]
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K8 ["new"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K9 ["MATERIAL_PICKER_CPC_ID"]
       10 GETTABLEKS                       R4 R1 K10 ["hostService"]
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R0 K11 ["communication"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K8 ["new"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K12 ["CPC_ID"]
       21 GETTABLEKS                       R4 R1 K10 ["hostService"]
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R0 K13 ["catalogCommunication"]
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 SETTABLEKS                       R2 R0 K14 ["onCatalogChanged"]
       31 NEWCLOSURE                       R2 P1
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R2 R0 K15 ["onSlotCreated"]
       35 NEWCLOSURE                       R2 P2
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R2 R0 K16 ["onSlotSelected"]
       39 NEWCLOSURE                       R2 P3
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R2 R0 K17 ["onPressedOutside"]
       43 NEWCLOSURE                       R2 P4
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R2 R0 K18 ["onViewTypeChanged"]
       47 GETTABLEKS                       R2 R0 K11 ["communication"]
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R4 R4 K19 ["CPC_CALLBACKS"]
       52 GETTABLEKS                       R4 R4 K20 ["OPEN_MATERIAL_PICKER"]
       54 NEWCLOSURE                       R5 P5
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R0
       57 NAMECALL                         R2 R2 K21 ["OnInvoke"]
       59 CALL                             R2 3 0
       60 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["communication"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K1 ["CPC_EVENTS"]
        5 GETTABLEKS                       R6 R6 K2 ["MATERIAL_PICKER_RESPONSE"]
        7 DUPTABLE                         R7 K6 [{"requestId", "outcome", "slotIndex"}]
        8 GETTABLEKS                       R8 R1 K3 ["requestId"]
       10 SETTABLEKS                       R8 R7 K3 ["requestId"]
       12 SETTABLEKS                       R2 R7 K4 ["outcome"]
       14 SETTABLEKS                       R3 R7 K5 ["slotIndex"]
       16 NAMECALL                         R4 R4 K7 ["Fire"]
       18 CALL                             R4 3 0
       19 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"refreshKey", "request"}]
        1 GETTABLEKS                       R3 R0 K0 ["refreshKey"]
        3 ADDK                             R2 R3 K3 [1]
        4 SETTABLEKS                       R2 R1 K0 ["refreshKey"]
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R2 R1 K1 ["request"]
        9 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["activeRequest"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R3 K3 [table.clone]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 SETTABLEKS                       R1 R3 K4 ["selectedSlotIndex"]
       11 SETTABLEKS                       R3 R0 K0 ["activeRequest"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R3
       15 NAMECALL                         R4 R0 K5 ["setState"]
       17 CALL                             R4 2 0
       18 MOVE                             R6 R2
       19 LOADK                            R7 K6 ["slotCreated"]
       20 MOVE                             R8 R1
       21 NAMECALL                         R4 R0 K7 ["fireResponse"]
       23 CALL                             R4 4 0
       24 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 LOADK                            R3 K0 ["cancelled"]
        1 NAMECALL                         R1 R0 K1 ["completeRequest"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["activeRequest"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_13:
        0 DUPTABLE                         R1 K1 [{"refreshKey"}]
        1 GETTABLEKS                       R3 R0 K0 ["refreshKey"]
        3 ADDK                             R2 R3 K2 [1]
        4 SETTABLEKS                       R2 R1 K0 ["refreshKey"]
        6 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["activeRequest"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 DUPCLOSURE                       R3 K1 [PROTO_13]
        4 NAMECALL                         R1 R0 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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
       79 DUPTABLE                         R16 K40 [{"hostService", "onCatalogChanged", "onSlotCreated", "onSlotSelected", "onViewTypeChanged", "refreshKey", "request", "viewType"}]
       80 GETTABLEKS                       R17 R0 K4 ["props"]
       82 GETTABLEKS                       R17 R17 K33 ["hostService"]
       84 SETTABLEKS                       R17 R16 K33 ["hostService"]
       86 GETTABLEKS                       R17 R0 K34 ["onCatalogChanged"]
       88 SETTABLEKS                       R17 R16 K34 ["onCatalogChanged"]
       90 GETTABLEKS                       R17 R0 K35 ["onSlotCreated"]
       92 SETTABLEKS                       R17 R16 K35 ["onSlotCreated"]
       94 GETTABLEKS                       R17 R0 K36 ["onSlotSelected"]
       96 SETTABLEKS                       R17 R16 K36 ["onSlotSelected"]
       98 GETTABLEKS                       R17 R0 K37 ["onViewTypeChanged"]
      100 SETTABLEKS                       R17 R16 K37 ["onViewTypeChanged"]
      102 GETTABLEKS                       R17 R0 K0 ["state"]
      104 GETTABLEKS                       R17 R17 K38 ["refreshKey"]
      106 SETTABLEKS                       R17 R16 K38 ["refreshKey"]
      108 SETTABLEKS                       R1 R16 K1 ["request"]
      110 GETTABLEKS                       R17 R0 K0 ["state"]
      112 GETTABLEKS                       R17 R17 K39 ["viewType"]
      114 SETTABLEKS                       R17 R16 K39 ["viewType"]
      116 CALL                             R14 2 1
      117 SETTABLEKS                       R14 R13 K11 ["Content"]
      119 CALL                             R10 3 1
      120 SETTABLEKS                       R10 R9 K25 ["Picker"]
      122 CALL                             R6 3 1
      123 SETTABLEKS                       R6 R5 K11 ["Content"]
      125 CALL                             R2 3 -1
      126 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["TerrainPalette"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K11 ["Popover"]
       37 GETTABLEKS                       R6 R1 K12 ["Enums"]
       39 GETTABLEKS                       R6 R6 K13 ["PopoverAlign"]
       41 GETTABLEKS                       R7 R1 K12 ["Enums"]
       43 GETTABLEKS                       R7 R7 K14 ["PopoverSide"]
       45 GETTABLEKS                       R8 R1 K15 ["View"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R0 K6 ["Packages"]
       51 GETTABLEKS                       R10 R10 K16 ["SharedPluginConstants"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R9 R9 K17 ["TERRAIN"]
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K18 ["Src"]
       60 GETTABLEKS                       R11 R11 K19 ["Components"]
       62 GETTABLEKS                       R11 R11 K20 ["TerrainMaterialPickerContent"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K18 ["Src"]
       69 GETTABLEKS                       R12 R12 K21 ["Types"]
       71 CALL                             R11 1 1
       72 GETTABLEKS                       R12 R2 K22 ["Util"]
       74 GETTABLEKS                       R12 R12 K23 ["CrossPluginCommunication"]
       76 GETTABLEKS                       R13 R4 K24 ["TerrainMaterialPickerProtocol"]
       78 GETTABLEKS                       R14 R3 K25 ["PureComponent"]
       80 LOADK                            R16 K26 ["TerrainMaterialPickerController"]
       81 NAMECALL                         R14 R14 K27 ["extend"]
       83 CALL                             R14 2 1
       84 DUPCLOSURE                       R15 K28 [PROTO_6]
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R13
       88 SETTABLEKS                       R15 R14 K29 ["init"]
       90 DUPCLOSURE                       R15 K30 [PROTO_7]
       91 CAPTURE                          VAL R9
       92 SETTABLEKS                       R15 R14 K31 ["fireResponse"]
       94 DUPCLOSURE                       R15 K32 [PROTO_9]
       95 SETTABLEKS                       R15 R14 K33 ["slotCreated"]
       97 DUPCLOSURE                       R15 K34 [PROTO_10]
       98 SETTABLEKS                       R15 R14 K35 ["completeRequest"]
      100 DUPCLOSURE                       R15 K36 [PROTO_11]
      101 SETTABLEKS                       R15 R14 K37 ["cancel"]
      103 DUPCLOSURE                       R15 K38 [PROTO_12]
      104 SETTABLEKS                       R15 R14 K39 ["hasActiveRequest"]
      106 DUPCLOSURE                       R15 K40 [PROTO_14]
      107 SETTABLEKS                       R15 R14 K41 ["refresh"]
      109 DUPCLOSURE                       R15 K42 [PROTO_15]
      110 SETTABLEKS                       R15 R14 K43 ["willUnmount"]
      112 DUPCLOSURE                       R15 K44 [PROTO_16]
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R10
      119 SETTABLEKS                       R15 R14 K45 ["render"]
      121 RETURN                           R14 1
