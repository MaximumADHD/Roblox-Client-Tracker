PROTO_0:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 GETIMPORT                        R3 K2 [UDim2.new]
        4 LOADN                            R4 0
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K3 ["getRenderedWidth"]
        8 MOVE                             R6 R1
        9 MOVE                             R7 R2
       10 CALL                             R5 2 1
       11 LOADN                            R6 1
       12 LOADN                            R7 0
       13 CALL                             R3 4 -1
       14 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onEvent"]
        3 JUMPIFEQKNIL                     R1 ; [+6]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["onEvent"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 LOADNIL                          R2
        8 FORGPREP                         R0
        9 GETTABLEKS                       R5 R4 K0 ["slotIndex"]
       11 GETUPVAL                         R6 0
       12 JUMPIFNOTEQ                      R5 R6 ; [+2]
       14 RETURN                           R4 1
       15 FORGLOOP                         R0 2 ; [-7]
       17 LOADNIL                          R0
       18 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 LOADK                            R5 K0 ["Plugin"]
        5 LOADK                            R6 K1 ["SlotLabel"]
        6 NAMECALL                         R3 R3 K2 ["getText"]
        8 CALL                             R3 3 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 DUPTABLE                         R1 K5 [{[1] = "catalogSnapshot", ["catalogSize"], ["variantSlotCount"], ["hasCapacity"]}]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K2 ["catalogSize"]
        8 GETUPVAL                         R2 3
        9 SETTABLEKS                       R2 R1 K3 ["variantSlotCount"]
       11 GETUPVAL                         R2 4
       12 SETTABLEKS                       R2 R1 K4 ["hasCapacity"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelectionChanged"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["onSelectionChanged"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionRequest"]
        3 JUMPIFEQKNIL                     R0 ; [+8]
        5 GETTABLEKS                       R1 R0 K1 ["id"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["current"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K3 ["refreshEntries"]
       16 CALL                             R1 0 1
       17 MOVE                             R2 R1
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 GETTABLEKS                       R7 R6 K4 ["slotIndex"]
       23 GETTABLEKS                       R8 R0 K4 ["slotIndex"]
       25 JUMPIFNOTEQ                      R7 R8 ; [+29]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R8 R0 K1 ["id"]
       30 SETTABLEKS                       R8 R7 K2 ["current"]
       32 GETUPVAL                         R7 3
       33 LOADK                            R8 K5 [""]
       34 CALL                             R7 1 0
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R8 R0 K4 ["slotIndex"]
       38 CALL                             R7 1 0
       39 GETUPVAL                         R7 5
       40 GETTABLEKS                       R8 R0 K4 ["slotIndex"]
       42 CALL                             R7 1 0
       43 GETUPVAL                         R7 6
       44 DUPTABLE                         R8 K11 [{["kind"] = "selectionRequestApplied", ["requestId"], ["slotIndex"], ["outcome"] = "accepted"}]
       45 GETTABLEKS                       R9 R0 K1 ["id"]
       47 SETTABLEKS                       R9 R8 K8 ["requestId"]
       49 GETTABLEKS                       R9 R0 K4 ["slotIndex"]
       51 SETTABLEKS                       R9 R8 K4 ["slotIndex"]
       53 CALL                             R7 1 0
       54 RETURN                           R0 0
       55 FORGLOOP                         R2 2 ; [-35]
       57 GETUPVAL                         R2 1
       58 GETTABLEKS                       R3 R0 K1 ["id"]
       60 SETTABLEKS                       R3 R2 K2 ["current"]
       62 GETUPVAL                         R2 6
       63 DUPTABLE                         R3 K13 [{["kind"] = "selectionRequestApplied", ["requestId"], ["slotIndex"], ["outcome"] = "slotMissing"}]
       64 GETTABLEKS                       R4 R0 K1 ["id"]
       66 SETTABLEKS                       R4 R3 K8 ["requestId"]
       68 GETTABLEKS                       R4 R0 K4 ["slotIndex"]
       70 SETTABLEKS                       R4 R3 K4 ["slotIndex"]
       72 CALL                             R2 1 0
       73 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateEntry"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["commitEntryUpdate"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["addSlot"]
        3 DUPTABLE                         R1 K5 [{["color"], ["material"], ["name"] = "NewTerrainSlot"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K6 ["getColor"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 SETTABLEKS                       R2 R1 K1 ["color"]
       11 GETUPVAL                         R2 2
       12 SETTABLEKS                       R2 R1 K2 ["material"]
       14 CALL                             R0 1 1
       15 JUMPIFNOTEQKNIL                  R0 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 3
       19 LOADK                            R2 K7 [""]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 4
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 5
       25 MOVE                             R2 R0
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["duplicateSlot"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 LOADK                            R3 K1 [""]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 3
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["slotIndex"]
        6 JUMPIFNOTEQ                      R6 R0 ; [+5]
        8 GETUPVAL                         R6 1
        9 MOVE                             R7 R5
       10 CALL                             R6 1 0
       11 RETURN                           R0 0
       12 FORGLOOP                         R1 2 ; [-9]
       14 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deleteSlot"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 1
        7 LOADNIL                          R2
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 LOADNIL                          R2
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isDefaultSlotIndex"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+17]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R6 R5 K0 ["slotIndex"]
        9 JUMPIFNOTEQ                      R6 R0 ; [+7]
       11 GETUPVAL                         R6 2
       12 DUPTABLE                         R7 K6 [{["kind"] = "deletePrompt", ["outcome"] = "cancelled", ["entry"]}]
       13 SETTABLEKS                       R5 R7 K5 ["entry"]
       15 CALL                             R6 1 0
       16 JUMP                             ; [+2]
       17 FORGLOOP                         R1 2 ; [-11]
       19 GETUPVAL                         R1 3
       20 LOADNIL                          R2
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K0 ["slotIndex"]
       10 JUMPIFNOTEQ                      R6 R0 ; [+7]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K6 [{["kind"] = "deletePrompt", ["outcome"] = "confirmed", ["entry"]}]
       14 SETTABLEKS                       R5 R7 K5 ["entry"]
       16 CALL                             R6 1 0
       17 JUMP                             ; [+2]
       18 FORGLOOP                         R1 2 ; [-11]
       20 GETUPVAL                         R1 3
       21 LOADNIL                          R2
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 4
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Pressed"]
        3 JUMPIFEQ                         R0 R1 ; [+6]
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K1 ["current"]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 2
       11 NAMECALL                         R1 R1 K2 ["get"]
       13 CALL                             R1 1 1
       14 LOADK                            R4 K3 ["PluginGui"]
       15 NAMECALL                         R2 R1 K4 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 3
       21 NAMECALL                         R3 R1 K5 ["GetRelativeMousePosition"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R3 R3 K6 ["X"]
       26 SETTABLEKS                       R3 R2 K1 ["current"]
       28 GETUPVAL                         R2 4
       29 GETUPVAL                         R3 5
       30 GETTABLEKS                       R3 R3 K7 ["getRenderedWidth"]
       32 GETUPVAL                         R4 6
       33 NAMECALL                         R4 R4 K8 ["getValue"]
       35 CALL                             R4 1 1
       36 GETUPVAL                         R5 7
       37 NAMECALL                         R5 R5 K8 ["getValue"]
       39 CALL                             R5 1 -1
       40 CALL                             R3 -1 1
       41 SETTABLEKS                       R3 R2 K1 ["current"]
       43 GETUPVAL                         R2 1
       44 LOADB                            R3 1
       45 SETTABLEKS                       R3 R2 K1 ["current"]
       47 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K1 ["get"]
        8 CALL                             R0 1 1
        9 LOADK                            R3 K2 ["PluginGui"]
       10 NAMECALL                         R1 R0 K3 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+5]
       14 GETUPVAL                         R1 0
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R1 K0 ["current"]
       18 RETURN                           R0 0
       19 NAMECALL                         R2 R0 K4 ["GetRelativeMousePosition"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R2 R2 K5 ["X"]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K0 ["current"]
       27 SUB                              R1 R2 R3
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R2 R2 K6 ["getResizeBounds"]
       31 GETUPVAL                         R3 4
       32 NAMECALL                         R3 R3 K7 ["getValue"]
       34 CALL                             R3 1 -1
       35 CALL                             R2 -1 2
       36 GETUPVAL                         R4 5
       37 GETUPVAL                         R7 6
       38 GETTABLEKS                       R7 R7 K0 ["current"]
       40 SUB                              R6 R7 R1
       41 FASTCALL3                        MATH_CLAMP R6 R2 R3
       43 MOVE                             R7 R2
       44 MOVE                             R8 R3
       45 GETIMPORT                        R5 K10 [math.clamp]
       47 CALL                             R5 3 1
       48 CALL                             R4 1 0
       49 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Focus"]
       10 GETTABLEKS                       R2 R2 K3 ["use"]
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K4 ["useState"]
       16 LOADNIL                          R4
       17 CALL                             R3 1 2
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K4 ["useState"]
       21 LOADK                            R6 K5 [""]
       22 CALL                             R5 1 2
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K4 ["useState"]
       26 LOADK                            R8 K6 ["grid"]
       27 CALL                             R7 1 2
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K7 ["useBinding"]
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R10 R10 K8 ["DEFAULT_WIDTH"]
       34 CALL                             R9 1 2
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K7 ["useBinding"]
       38 LOADN                            R12 0
       39 CALL                             R11 1 2
       40 GETUPVAL                         R13 0
       41 GETTABLEKS                       R13 R13 K9 ["joinBindings"]
       43 NEWTABLE                         R14 0 2
       45 MOVE                             R15 R9
       46 MOVE                             R16 R11
       47 SETLIST                          R14 R15 2 [1]
       49 CALL                             R13 1 1
       50 DUPCLOSURE                       R15 K10 [PROTO_0]
       51 CAPTURE                          UPVAL U3
       52 NAMECALL                         R13 R13 K11 ["map"]
       54 CALL                             R13 2 1
       55 GETUPVAL                         R14 0
       56 GETTABLEKS                       R14 R14 K4 ["useState"]
       58 LOADNIL                          R15
       59 CALL                             R14 1 2
       60 GETUPVAL                         R16 0
       61 GETTABLEKS                       R16 R16 K4 ["useState"]
       63 LOADNIL                          R17
       64 CALL                             R16 1 2
       65 GETUPVAL                         R18 0
       66 GETTABLEKS                       R18 R18 K12 ["useRef"]
       68 LOADB                            R19 0
       69 CALL                             R18 1 1
       70 GETUPVAL                         R19 0
       71 GETTABLEKS                       R19 R19 K12 ["useRef"]
       73 LOADN                            R20 0
       74 CALL                             R19 1 1
       75 GETUPVAL                         R20 0
       76 GETTABLEKS                       R20 R20 K12 ["useRef"]
       78 GETUPVAL                         R21 3
       79 GETTABLEKS                       R21 R21 K8 ["DEFAULT_WIDTH"]
       81 CALL                             R20 1 1
       82 GETUPVAL                         R21 4
       83 GETTABLEKS                       R21 R21 K13 ["Hooks"]
       85 GETTABLEKS                       R21 R21 K14 ["useTokens"]
       87 CALL                             R21 0 1
       88 GETUPVAL                         R22 5
       89 DUPTABLE                         R23 K21 [{"refreshKey", "historyService", "onEvent", "onCatalogChanged", "slotApi", "terrain"}]
       90 GETTABLEKS                       R24 R0 K15 ["refreshKey"]
       92 SETTABLEKS                       R24 R23 K15 ["refreshKey"]
       94 GETTABLEKS                       R24 R0 K16 ["historyService"]
       96 SETTABLEKS                       R24 R23 K16 ["historyService"]
       98 GETTABLEKS                       R24 R0 K17 ["onEvent"]
      100 SETTABLEKS                       R24 R23 K17 ["onEvent"]
      102 GETTABLEKS                       R24 R0 K18 ["onCatalogChanged"]
      104 SETTABLEKS                       R24 R23 K18 ["onCatalogChanged"]
      106 GETTABLEKS                       R24 R0 K19 ["slotApi"]
      108 SETTABLEKS                       R24 R23 K19 ["slotApi"]
      110 GETTABLEKS                       R24 R0 K20 ["terrain"]
      112 SETTABLEKS                       R24 R23 K20 ["terrain"]
      114 CALL                             R22 1 1
      115 GETTABLEKS                       R23 R22 K22 ["entries"]
      117 LENGTH                           R24 R23
      118 LOADN                            R25 0
      119 MOVE                             R26 R23
      120 LOADNIL                          R27
      121 LOADNIL                          R28
      122 FORGPREP                         R26
      123 GETTABLEKS                       R31 R30 K23 ["variantName"]
      125 JUMPIFEQKNIL                     R31 ; [+6]
      127 GETTABLEKS                       R31 R30 K23 ["variantName"]
      129 JUMPIFEQKS                       R31 K5 [""] ; [+2]
      131 ADDK                             R25 R25 K24 [1]
      132 FORGLOOP                         R26 2 ; [-10]
      134 GETTABLEKS                       R26 R22 K25 ["canAddSlot"]
      136 GETTABLEKS                       R28 R0 K17 ["onEvent"]
      138 JUMPIFNOTEQKNIL                  R28 ; [+2]
      140 LOADB                            R27 0 +1
      141 LOADB                            R27 1
      142 GETUPVAL                         R28 6
      143 NEWCLOSURE                       R29 P1
      144 CAPTURE                          VAL R0
      145 CALL                             R28 1 1
      146 GETUPVAL                         R29 0
      147 GETTABLEKS                       R29 R29 K26 ["useMemo"]
      149 NEWCLOSURE                       R30 P2
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R23
      152 NEWTABLE                         R31 0 2
      154 MOVE                             R32 R3
      155 MOVE                             R33 R23
      156 SETLIST                          R31 R32 2 [1]
      158 CALL                             R29 2 1
      159 GETUPVAL                         R30 0
      160 GETTABLEKS                       R30 R30 K26 ["useMemo"]
      162 NEWCLOSURE                       R31 P3
      163 CAPTURE                          UPVAL U7
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R1
      167 NEWTABLE                         R32 0 3
      169 MOVE                             R33 R1
      170 MOVE                             R34 R5
      171 MOVE                             R35 R23
      172 SETLIST                          R32 R33 3 [1]
      174 CALL                             R30 2 1
      175 GETUPVAL                         R31 0
      176 GETTABLEKS                       R31 R31 K12 ["useRef"]
      178 LOADNIL                          R32
      179 CALL                             R31 1 1
      180 GETUPVAL                         R32 0
      181 GETTABLEKS                       R32 R32 K27 ["useEffect"]
      183 NEWCLOSURE                       R33 P4
      184 CAPTURE                          VAL R27
      185 CAPTURE                          VAL R28
      186 CAPTURE                          VAL R24
      187 CAPTURE                          REF R25
      188 CAPTURE                          VAL R26
      189 NEWTABLE                         R34 0 5
      191 MOVE                             R35 R24
      192 MOVE                             R36 R26
      193 MOVE                             R37 R27
      194 MOVE                             R38 R28
      195 MOVE                             R39 R25
      196 SETLIST                          R34 R35 5 [1]
      198 CALL                             R32 2 0
      199 GETUPVAL                         R32 0
      200 GETTABLEKS                       R32 R32 K27 ["useEffect"]
      202 NEWCLOSURE                       R33 P5
      203 CAPTURE                          VAL R0
      204 CAPTURE                          VAL R3
      205 NEWTABLE                         R34 0 2
      207 GETTABLEKS                       R35 R0 K28 ["onSelectionChanged"]
      209 MOVE                             R36 R3
      210 SETLIST                          R34 R35 2 [1]
      212 CALL                             R32 2 0
      213 GETUPVAL                         R32 0
      214 GETTABLEKS                       R32 R32 K27 ["useEffect"]
      216 NEWCLOSURE                       R33 P6
      217 CAPTURE                          VAL R0
      218 CAPTURE                          VAL R31
      219 CAPTURE                          VAL R22
      220 CAPTURE                          VAL R6
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R15
      223 CAPTURE                          VAL R28
      224 NEWTABLE                         R34 0 3
      226 GETTABLEKS                       R35 R0 K29 ["selectionRequest"]
      228 MOVE                             R36 R28
      229 GETTABLEKS                       R37 R22 K30 ["refreshEntries"]
      231 SETLIST                          R34 R35 3 [1]
      233 CALL                             R32 2 0
      234 GETUPVAL                         R32 6
      235 NEWCLOSURE                       R33 P7
      236 CAPTURE                          VAL R4
      237 CALL                             R32 1 1
      238 GETUPVAL                         R33 6
      239 NEWCLOSURE                       R34 P8
      240 CAPTURE                          VAL R22
      241 CALL                             R33 1 1
      242 GETUPVAL                         R34 6
      243 NEWCLOSURE                       R35 P9
      244 CAPTURE                          VAL R22
      245 CALL                             R34 1 1
      246 GETUPVAL                         R35 6
      247 NEWCLOSURE                       R36 P10
      248 CAPTURE                          VAL R22
      249 CAPTURE                          UPVAL U8
      250 CAPTURE                          UPVAL U9
      251 CAPTURE                          VAL R6
      252 CAPTURE                          VAL R4
      253 CAPTURE                          VAL R15
      254 CALL                             R35 1 1
      255 GETUPVAL                         R36 6
      256 NEWCLOSURE                       R37 P11
      257 CAPTURE                          VAL R4
      258 CALL                             R36 1 1
      259 GETUPVAL                         R37 6
      260 NEWCLOSURE                       R38 P12
      261 CAPTURE                          VAL R22
      262 CAPTURE                          VAL R6
      263 CAPTURE                          VAL R4
      264 CAPTURE                          VAL R15
      265 CALL                             R37 1 1
      266 GETUPVAL                         R38 6
      267 NEWCLOSURE                       R39 P13
      268 CAPTURE                          VAL R29
      269 CAPTURE                          VAL R37
      270 CALL                             R38 1 1
      271 GETUPVAL                         R39 6
      272 NEWCLOSURE                       R40 P14
      273 CAPTURE                          VAL R23
      274 CAPTURE                          VAL R37
      275 CALL                             R39 1 1
      276 GETUPVAL                         R40 6
      277 NEWCLOSURE                       R41 P15
      278 CAPTURE                          VAL R22
      279 CAPTURE                          VAL R4
      280 CAPTURE                          VAL R15
      281 CALL                             R40 1 1
      282 GETUPVAL                         R41 6
      283 NEWCLOSURE                       R42 P16
      284 CAPTURE                          UPVAL U8
      285 CAPTURE                          VAL R17
      286 CAPTURE                          VAL R40
      287 CALL                             R41 1 1
      288 GETUPVAL                         R42 6
      289 NEWCLOSURE                       R43 P17
      290 CAPTURE                          VAL R3
      291 CAPTURE                          VAL R41
      292 CALL                             R42 1 1
      293 GETUPVAL                         R43 6
      294 NEWCLOSURE                       R44 P18
      295 CAPTURE                          VAL R16
      296 CAPTURE                          VAL R23
      297 CAPTURE                          VAL R28
      298 CAPTURE                          VAL R17
      299 CALL                             R43 1 1
      300 GETUPVAL                         R44 6
      301 NEWCLOSURE                       R45 P19
      302 CAPTURE                          VAL R16
      303 CAPTURE                          VAL R23
      304 CAPTURE                          VAL R28
      305 CAPTURE                          VAL R17
      306 CAPTURE                          VAL R40
      307 CALL                             R44 1 1
      308 GETUPVAL                         R45 6
      309 NEWCLOSURE                       R46 P20
      310 CAPTURE                          VAL R6
      311 CALL                             R45 1 1
      312 GETUPVAL                         R46 6
      313 NEWCLOSURE                       R47 P21
      314 CAPTURE                          VAL R8
      315 CALL                             R46 1 1
      316 GETUPVAL                         R47 6
      317 NEWCLOSURE                       R48 P22
      318 CAPTURE                          VAL R15
      319 CALL                             R47 1 1
      320 GETUPVAL                         R48 6
      321 NEWCLOSURE                       R49 P23
      322 CAPTURE                          UPVAL U10
      323 CAPTURE                          VAL R18
      324 CAPTURE                          VAL R2
      325 CAPTURE                          VAL R19
      326 CAPTURE                          VAL R20
      327 CAPTURE                          UPVAL U3
      328 CAPTURE                          VAL R9
      329 CAPTURE                          VAL R11
      330 CALL                             R48 1 1
      331 GETUPVAL                         R49 6
      332 NEWCLOSURE                       R50 P24
      333 CAPTURE                          VAL R12
      334 CALL                             R49 1 1
      335 GETUPVAL                         R50 6
      336 NEWCLOSURE                       R51 P25
      337 CAPTURE                          VAL R18
      338 CAPTURE                          VAL R2
      339 CAPTURE                          VAL R19
      340 CAPTURE                          UPVAL U3
      341 CAPTURE                          VAL R11
      342 CAPTURE                          VAL R10
      343 CAPTURE                          VAL R20
      344 CALL                             R50 1 1
      345 GETUPVAL                         R51 11
      346 GETUPVAL                         R52 12
      347 GETTABLEKS                       R52 R52 K31 ["Heartbeat"]
      349 MOVE                             R53 R50
      350 CALL                             R51 2 0
      351 GETUPVAL                         R51 13
      352 CALL                             R51 0 1
      353 GETUPVAL                         R52 0
      354 GETTABLEKS                       R52 R52 K32 ["createElement"]
      356 GETUPVAL                         R53 14
      357 DUPTABLE                         R54 K35 [{["tag"] = "col gap-medium size-full padding-medium"}]
      358 DUPTABLE                         R55 K39 [{"TopBar", "Body", "DeleteWarning"}]
      359 GETUPVAL                         R56 0
      360 GETTABLEKS                       R56 R56 K32 ["createElement"]
      362 GETUPVAL                         R57 15
      363 DUPTABLE                         R58 K46 [{"layoutOrder", "onAddMaterial", "onSearchChanged", "onViewTypeChanged", "searchText", "viewType"}]
      364 MOVE                             R59 R51
      365 CALL                             R59 0 1
      366 SETTABLEKS                       R59 R58 K40 ["layoutOrder"]
      368 SETTABLEKS                       R35 R58 K41 ["onAddMaterial"]
      370 SETTABLEKS                       R45 R58 K42 ["onSearchChanged"]
      372 SETTABLEKS                       R46 R58 K43 ["onViewTypeChanged"]
      374 SETTABLEKS                       R5 R58 K44 ["searchText"]
      376 SETTABLEKS                       R7 R58 K45 ["viewType"]
      378 CALL                             R56 2 1
      379 SETTABLEKS                       R56 R55 K36 ["TopBar"]
      381 GETUPVAL                         R56 0
      382 GETTABLEKS                       R56 R56 K32 ["createElement"]
      384 GETUPVAL                         R57 14
      385 DUPTABLE                         R58 K50 [{["tag"] = "row grow size-full-0", ["LayoutOrder"], ["onAbsoluteSizeChanged"]}]
      386 MOVE                             R59 R51
      387 CALL                             R59 0 1
      388 SETTABLEKS                       R59 R58 K48 ["LayoutOrder"]
      390 SETTABLEKS                       R49 R58 K49 ["onAbsoluteSizeChanged"]
      392 DUPTABLE                         R59 K54 [{"Grid", "ResizeHandle", "Details"}]
      393 GETUPVAL                         R60 0
      394 GETTABLEKS                       R60 R60 K32 ["createElement"]
      396 GETUPVAL                         R61 14
      397 DUPTABLE                         R62 K56 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      398 MOVE                             R63 R51
      399 CALL                             R63 0 1
      400 SETTABLEKS                       R63 R62 K48 ["LayoutOrder"]
      402 DUPTABLE                         R63 K58 [{"MaterialTileInteractionProvider"}]
      403 GETUPVAL                         R64 0
      404 GETTABLEKS                       R64 R64 K32 ["createElement"]
      406 GETUPVAL                         R65 16
      407 GETTABLEKS                       R65 R65 K59 ["Provider"]
      409 DUPTABLE                         R66 K61 [{"value"}]
      410 JUMPIFNOTEQKNIL                  R16 ; [+2]
      412 LOADB                            R67 0 +1
      413 LOADB                            R67 1
      414 SETTABLEKS                       R67 R66 K60 ["value"]
      416 DUPTABLE                         R67 K63 [{"MaterialGrid"}]
      417 GETUPVAL                         R68 0
      418 GETTABLEKS                       R68 R68 K32 ["createElement"]
      420 GETUPVAL                         R69 17
      421 DUPTABLE                         R70 K72 [{"slotEntries", "selectedSlotIndex", "scrollToSlotIndex", "viewType", "canDuplicate", "onSlotDelete", "onSlotDuplicate", "onSlotSelected", "onScrolledToSlot"}]
      422 SETTABLEKS                       R30 R70 K64 ["slotEntries"]
      424 SETTABLEKS                       R3 R70 K65 ["selectedSlotIndex"]
      426 SETTABLEKS                       R14 R70 K66 ["scrollToSlotIndex"]
      428 SETTABLEKS                       R7 R70 K45 ["viewType"]
      430 GETTABLEKS                       R71 R22 K25 ["canAddSlot"]
      432 SETTABLEKS                       R71 R70 K67 ["canDuplicate"]
      434 SETTABLEKS                       R41 R70 K68 ["onSlotDelete"]
      436 SETTABLEKS                       R39 R70 K69 ["onSlotDuplicate"]
      438 SETTABLEKS                       R32 R70 K70 ["onSlotSelected"]
      440 SETTABLEKS                       R47 R70 K71 ["onScrolledToSlot"]
      442 CALL                             R68 2 1
      443 SETTABLEKS                       R68 R67 K62 ["MaterialGrid"]
      445 CALL                             R64 3 1
      446 SETTABLEKS                       R64 R63 K57 ["MaterialTileInteractionProvider"]
      448 CALL                             R60 3 1
      449 SETTABLEKS                       R60 R59 K51 ["Grid"]
      451 JUMPIFNOT                        R29 ; [+53]
      452 GETUPVAL                         R60 0
      453 GETTABLEKS                       R60 R60 K32 ["createElement"]
      455 GETUPVAL                         R61 14
      456 DUPTABLE                         R62 K77 [{["LayoutOrder"], ["Size"], ["onStateChanged"], ["testId"] = "DetailsResizeHandle"}]
      457 MOVE                             R63 R51
      458 CALL                             R63 0 1
      459 SETTABLEKS                       R63 R62 K48 ["LayoutOrder"]
      461 GETIMPORT                        R63 K80 [UDim2.new]
      463 LOADN                            R64 0
      464 GETUPVAL                         R65 3
      465 GETTABLEKS                       R65 R65 K81 ["RESIZE_HANDLE_WIDTH"]
      467 LOADN                            R66 1
      468 LOADN                            R67 0
      469 CALL                             R63 4 1
      470 SETTABLEKS                       R63 R62 K73 ["Size"]
      472 SETTABLEKS                       R48 R62 K74 ["onStateChanged"]
      474 DUPTABLE                         R63 K83 [{"Divider"}]
      475 GETUPVAL                         R64 0
      476 GETTABLEKS                       R64 R64 K32 ["createElement"]
      478 GETUPVAL                         R65 14
      479 DUPTABLE                         R66 K86 [{["tag"] = "position-top-center anchor-top-center", ["Size"], ["backgroundStyle"]}]
      480 GETIMPORT                        R67 K80 [UDim2.new]
      482 LOADN                            R68 0
      483 GETTABLEKS                       R69 R21 K87 ["Stroke"]
      485 GETTABLEKS                       R69 R69 K88 ["Standard"]
      487 LOADN                            R70 1
      488 LOADN                            R71 0
      489 CALL                             R67 4 1
      490 SETTABLEKS                       R67 R66 K73 ["Size"]
      492 GETTABLEKS                       R67 R21 K89 ["Color"]
      494 GETTABLEKS                       R67 R67 K87 ["Stroke"]
      496 GETTABLEKS                       R67 R67 K90 ["Default"]
      498 SETTABLEKS                       R67 R66 K85 ["backgroundStyle"]
      500 CALL                             R64 2 1
      501 SETTABLEKS                       R64 R63 K82 ["Divider"]
      503 CALL                             R60 3 1
      504 JUMP                             ; [+1]
      505 LOADNIL                          R60
      506 SETTABLEKS                       R60 R59 K52 ["ResizeHandle"]
      508 JUMPIFNOT                        R29 ; [+38]
      509 GETUPVAL                         R60 0
      510 GETTABLEKS                       R60 R60 K32 ["createElement"]
      512 GETUPVAL                         R61 14
      513 DUPTABLE                         R62 K92 [{["tag"] = "no-flex", ["LayoutOrder"], ["Size"]}]
      514 MOVE                             R63 R51
      515 CALL                             R63 0 1
      516 SETTABLEKS                       R63 R62 K48 ["LayoutOrder"]
      518 SETTABLEKS                       R13 R62 K73 ["Size"]
      520 DUPTABLE                         R63 K94 [{"Panel"}]
      521 GETUPVAL                         R64 0
      522 GETTABLEKS                       R64 R64 K32 ["createElement"]
      524 GETUPVAL                         R65 18
      525 DUPTABLE                         R66 K101 [{"canDuplicate", "entry", "onClose", "onDelete", "onDuplicate", "onEntryChangeCommitted", "onEntryChanged"}]
      526 GETTABLEKS                       R67 R22 K25 ["canAddSlot"]
      528 SETTABLEKS                       R67 R66 K67 ["canDuplicate"]
      530 SETTABLEKS                       R29 R66 K95 ["entry"]
      532 SETTABLEKS                       R36 R66 K96 ["onClose"]
      534 SETTABLEKS                       R42 R66 K97 ["onDelete"]
      536 SETTABLEKS                       R38 R66 K98 ["onDuplicate"]
      538 SETTABLEKS                       R34 R66 K99 ["onEntryChangeCommitted"]
      540 SETTABLEKS                       R33 R66 K100 ["onEntryChanged"]
      542 CALL                             R64 2 1
      543 SETTABLEKS                       R64 R63 K93 ["Panel"]
      545 CALL                             R60 3 1
      546 JUMP                             ; [+1]
      547 LOADNIL                          R60
      548 SETTABLEKS                       R60 R59 K53 ["Details"]
      550 CALL                             R56 3 1
      551 SETTABLEKS                       R56 R55 K37 ["Body"]
      553 JUMPIFEQKNIL                     R16 ; [+12]
      555 GETUPVAL                         R56 0
      556 GETTABLEKS                       R56 R56 K32 ["createElement"]
      558 GETUPVAL                         R57 19
      559 DUPTABLE                         R58 K104 [{"onCancel", "onConfirm"}]
      560 SETTABLEKS                       R43 R58 K102 ["onCancel"]
      562 SETTABLEKS                       R44 R58 K103 ["onConfirm"]
      564 CALL                             R56 2 1
      565 JUMP                             ; [+1]
      566 LOADNIL                          R56
      567 SETTABLEKS                       R56 R55 K38 ["DeleteWarning"]
      569 CALL                             R52 3 -1
      570 CLOSEUPVALS                      R25
      571 RETURN                           R52 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["localization"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+4]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 RETURN                           R0 1
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["destroy"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_34:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["slotApi"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["terrain"]
        6 JUMPIF                           R2 ; [+4]
        7 GETIMPORT                        R2 K3 [workspace]
        9 GETTABLEKS                       R2 R2 K4 ["Terrain"]
       11 JUMPIFNOTEQKNIL                  R2 ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       17 LOADK                            R5 K5 ["Workspace must contain Terrain"]
       18 GETIMPORT                        R3 K7 [assert]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K8 ["useMemo"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 NEWTABLE                         R5 0 1
       29 GETTABLEKS                       R6 R0 K9 ["localization"]
       31 SETLIST                          R5 R6 1 [1]
       33 CALL                             R3 2 1
       34 GETTABLEKS                       R5 R0 K9 ["localization"]
       36 OR                               R4 R5 R3
       37 JUMPIFNOTEQKNIL                  R4 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       43 LOADK                            R7 K10 ["TerrainPaletteApp must have localization"]
       44 GETIMPORT                        R5 K7 [assert]
       46 CALL                             R5 2 0
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K8 ["useMemo"]
       50 DUPCLOSURE                       R6 K11 [PROTO_29]
       51 CAPTURE                          UPVAL U3
       52 NEWTABLE                         R7 0 0
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       58 DUPCLOSURE                       R7 K12 [PROTO_30]
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U6
       62 NEWTABLE                         R8 0 0
       64 CALL                             R6 2 1
       65 GETUPVAL                         R7 1
       66 GETTABLEKS                       R7 R7 K13 ["useEffect"]
       68 NEWCLOSURE                       R8 P3
       69 CAPTURE                          VAL R5
       70 NEWTABLE                         R9 0 1
       72 MOVE                             R10 R5
       73 SETLIST                          R9 R10 1 [1]
       75 CALL                             R7 2 0
       76 GETUPVAL                         R7 1
       77 GETTABLEKS                       R7 R7 K13 ["useEffect"]
       79 NEWCLOSURE                       R8 P4
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R9 0 1
       83 MOVE                             R10 R3
       84 SETLIST                          R9 R10 1 [1]
       86 CALL                             R7 2 0
       87 GETUPVAL                         R7 1
       88 GETTABLEKS                       R7 R7 K14 ["createElement"]
       90 GETUPVAL                         R8 7
       91 GETTABLEKS                       R8 R8 K15 ["Provider"]
       93 DUPTABLE                         R9 K16 [{"localization"}]
       94 SETTABLEKS                       R4 R9 K9 ["localization"]
       96 DUPTABLE                         R10 K18 [{"Content"}]
       97 GETUPVAL                         R11 8
       98 GETTABLEKS                       R11 R11 K19 ["provide"]
      100 NEWTABLE                         R12 0 2
      102 MOVE                             R13 R5
      103 MOVE                             R14 R6
      104 SETLIST                          R12 R13 2 [1]
      106 DUPTABLE                         R13 K21 [{"FoundationProvider"}]
      107 GETUPVAL                         R14 1
      108 GETTABLEKS                       R14 R14 K14 ["createElement"]
      110 GETUPVAL                         R15 9
      111 DUPTABLE                         R16 K25 [{"onStyleSheetChange", "overlayGui", "plugin"}]
      112 GETTABLEKS                       R17 R0 K22 ["onStyleSheetChange"]
      114 SETTABLEKS                       R17 R16 K22 ["onStyleSheetChange"]
      116 GETTABLEKS                       R17 R0 K23 ["overlayGui"]
      118 SETTABLEKS                       R17 R16 K23 ["overlayGui"]
      120 GETTABLEKS                       R17 R0 K24 ["plugin"]
      122 SETTABLEKS                       R17 R16 K24 ["plugin"]
      124 DUPTABLE                         R17 K18 [{"Content"}]
      125 GETUPVAL                         R18 1
      126 GETTABLEKS                       R18 R18 K14 ["createElement"]
      128 GETUPVAL                         R19 10
      129 DUPTABLE                         R20 K32 [{"refreshKey", "selectionRequest", "historyService", "onEvent", "onCatalogChanged", "onSelectionChanged", "slotApi", "terrain"}]
      130 GETTABLEKS                       R21 R0 K26 ["refreshKey"]
      132 SETTABLEKS                       R21 R20 K26 ["refreshKey"]
      134 GETTABLEKS                       R21 R0 K27 ["selectionRequest"]
      136 SETTABLEKS                       R21 R20 K27 ["selectionRequest"]
      138 GETTABLEKS                       R21 R0 K28 ["historyService"]
      140 SETTABLEKS                       R21 R20 K28 ["historyService"]
      142 GETTABLEKS                       R21 R0 K29 ["onEvent"]
      144 SETTABLEKS                       R21 R20 K29 ["onEvent"]
      146 GETTABLEKS                       R21 R0 K30 ["onCatalogChanged"]
      148 SETTABLEKS                       R21 R20 K30 ["onCatalogChanged"]
      150 GETTABLEKS                       R21 R0 K31 ["onSelectionChanged"]
      152 SETTABLEKS                       R21 R20 K31 ["onSelectionChanged"]
      154 SETTABLEKS                       R1 R20 K0 ["slotApi"]
      156 SETTABLEKS                       R2 R20 K1 ["terrain"]
      158 CALL                             R18 2 1
      159 SETTABLEKS                       R18 R17 K17 ["Content"]
      161 CALL                             R14 3 1
      162 SETTABLEKS                       R14 R13 K20 ["FoundationProvider"]
      164 CALL                             R11 2 1
      165 SETTABLEKS                       R11 R10 K17 ["Content"]
      167 CALL                             R7 3 -1
      168 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["DeleteWarningDialog"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Components"]
       24 GETTABLEKS                       R4 R4 K12 ["DetailsPanel"]
       26 GETTABLEKS                       R4 R4 K12 ["DetailsPanel"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K13 ["Parent"]
       33 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K13 ["Parent"]
       40 GETTABLEKS                       R6 R6 K15 ["Framework"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K13 ["Parent"]
       47 GETTABLEKS                       R7 R7 K16 ["MaterialFramework"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Components"]
       54 GETTABLEKS                       R8 R8 K17 ["MaterialDisplay"]
       56 GETTABLEKS                       R8 R8 K18 ["MaterialGrid"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K19 ["Contexts"]
       63 GETTABLEKS                       R9 R9 K20 ["MaterialTileInteractionContext"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K13 ["Parent"]
       70 GETTABLEKS                       R10 R10 K21 ["React"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K13 ["Parent"]
       77 GETTABLEKS                       R11 R11 K22 ["ReactUtils"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R0 K13 ["Parent"]
       84 GETTABLEKS                       R12 R12 K23 ["StudioFoundation"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETIMPORT                        R13 K1 [script]
       91 GETTABLEKS                       R13 R13 K13 ["Parent"]
       93 GETTABLEKS                       R13 R13 K24 ["DetailsPanelSizing"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K9 [require]
       98 GETTABLEKS                       R14 R0 K25 ["Libraries"]
      100 GETTABLEKS                       R14 R14 K26 ["TerrainSlotApi"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K9 [require]
      105 GETTABLEKS                       R15 R0 K27 ["Domain"]
      107 GETTABLEKS                       R15 R15 K28 ["TerrainMaterialTypes"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K9 [require]
      112 GETTABLEKS                       R16 R0 K27 ["Domain"]
      114 GETTABLEKS                       R16 R16 K29 ["TerrainMaterials"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K9 [require]
      119 GETTABLEKS                       R17 R0 K30 ["Types"]
      121 CALL                             R16 1 1
      122 GETIMPORT                        R17 K9 [require]
      124 GETIMPORT                        R18 K1 [script]
      126 GETTABLEKS                       R18 R18 K13 ["Parent"]
      128 GETTABLEKS                       R18 R18 K13 ["Parent"]
      130 GETTABLEKS                       R18 R18 K31 ["TopBar"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K9 [require]
      135 GETTABLEKS                       R19 R0 K32 ["Resources"]
      137 GETTABLEKS                       R19 R19 K33 ["Localization"]
      139 GETTABLEKS                       R19 R19 K34 ["createLocalization"]
      141 CALL                             R18 1 1
      142 GETIMPORT                        R19 K9 [require]
      144 GETTABLEKS                       R20 R0 K35 ["Util"]
      146 GETTABLEKS                       R20 R20 K36 ["filterEntries"]
      148 CALL                             R19 1 1
      149 GETIMPORT                        R20 K9 [require]
      151 GETTABLEKS                       R21 R0 K37 ["Hooks"]
      153 GETTABLEKS                       R21 R21 K38 ["useTerrainSlots"]
      155 CALL                             R20 1 1
      156 GETTABLEKS                       R21 R4 K39 ["View"]
      158 GETTABLEKS                       R22 R4 K40 ["Enums"]
      160 GETTABLEKS                       R22 R22 K41 ["ControlState"]
      162 GETTABLEKS                       R23 R10 K42 ["createNextOrder"]
      164 GETTABLEKS                       R24 R10 K43 ["useEventCallback"]
      166 GETTABLEKS                       R25 R10 K44 ["useEventConnection"]
      168 GETTABLEKS                       R26 R11 K10 ["Components"]
      170 GETTABLEKS                       R26 R26 K45 ["FoundationProviderAdapter"]
      172 GETTABLEKS                       R27 R5 K46 ["ContextServices"]
      174 GETTABLEKS                       R28 R5 K47 ["Style"]
      176 GETTABLEKS                       R28 R28 K48 ["Themes"]
      178 GETTABLEKS                       R28 R28 K49 ["DarkTheme"]
      180 GETTABLEKS                       R29 R5 K47 ["Style"]
      182 GETTABLEKS                       R29 R29 K48 ["Themes"]
      184 GETTABLEKS                       R29 R29 K50 ["LightTheme"]
      186 GETTABLEKS                       R30 R6 K32 ["Resources"]
      188 GETTABLEKS                       R30 R30 K51 ["Theme"]
      190 GETTABLEKS                       R31 R11 K19 ["Contexts"]
      192 GETTABLEKS                       R31 R31 K33 ["Localization"]
      194 GETTABLEKS                       R32 R6 K52 ["Context"]
      196 GETTABLEKS                       R32 R32 K53 ["StudioServices"]
      198 GETIMPORT                        R33 K57 [Enum.Material.Asphalt]
      200 DUPCLOSURE                       R34 K58 [PROTO_27]
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R31
      203 CAPTURE                          VAL R27
      204 CAPTURE                          VAL R12
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R20
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R19
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R33
      211 CAPTURE                          VAL R22
      212 CAPTURE                          VAL R25
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R21
      216 CAPTURE                          VAL R17
      217 CAPTURE                          VAL R8
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R2
      221 DUPCLOSURE                       R35 K59 [PROTO_35]
      222 CAPTURE                          VAL R13
      223 CAPTURE                          VAL R9
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R32
      226 CAPTURE                          VAL R30
      227 CAPTURE                          VAL R28
      228 CAPTURE                          VAL R29
      229 CAPTURE                          VAL R31
      230 CAPTURE                          VAL R27
      231 CAPTURE                          VAL R26
      232 CAPTURE                          VAL R34
      233 RETURN                           R35 1
