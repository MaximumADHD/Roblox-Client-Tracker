PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 MOVE                             R3 R0
        4 LOADN                            R4 1
        5 LOADN                            R5 0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

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
       30 NAMECALL                         R3 R3 K7 ["getValue"]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R2 K1 ["current"]
       35 GETUPVAL                         R2 1
       36 LOADB                            R3 1
       37 SETTABLEKS                       R3 R2 K1 ["current"]
       39 RETURN                           R0 0

PROTO_25:
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
       29 GETUPVAL                         R5 4
       30 GETTABLEKS                       R5 R5 K0 ["current"]
       32 SUB                              R4 R5 R1
       33 LOADN                            R5 240
       34 LOADN                            R6 420
       35 FASTCALL                         MATH_CLAMP ; [+2]
       36 GETIMPORT                        R3 K8 [math.clamp]
       38 CALL                             R3 3 1
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

PROTO_26:
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
       31 LOADN                            R10 300
       32 CALL                             R9 1 2
       33 DUPCLOSURE                       R13 K8 [PROTO_0]
       34 NAMECALL                         R11 R9 K9 ["map"]
       36 CALL                             R11 2 1
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K4 ["useState"]
       40 LOADNIL                          R13
       41 CALL                             R12 1 2
       42 GETUPVAL                         R14 0
       43 GETTABLEKS                       R14 R14 K4 ["useState"]
       45 LOADNIL                          R15
       46 CALL                             R14 1 2
       47 GETUPVAL                         R16 0
       48 GETTABLEKS                       R16 R16 K10 ["useRef"]
       50 LOADB                            R17 0
       51 CALL                             R16 1 1
       52 GETUPVAL                         R17 0
       53 GETTABLEKS                       R17 R17 K10 ["useRef"]
       55 LOADN                            R18 0
       56 CALL                             R17 1 1
       57 GETUPVAL                         R18 0
       58 GETTABLEKS                       R18 R18 K10 ["useRef"]
       60 LOADN                            R19 300
       61 CALL                             R18 1 1
       62 GETUPVAL                         R19 3
       63 GETTABLEKS                       R19 R19 K11 ["Hooks"]
       65 GETTABLEKS                       R19 R19 K12 ["useTokens"]
       67 CALL                             R19 0 1
       68 GETUPVAL                         R20 4
       69 DUPTABLE                         R21 K19 [{"refreshKey", "historyService", "onEvent", "onCatalogChanged", "slotApi", "terrain"}]
       70 GETTABLEKS                       R22 R0 K13 ["refreshKey"]
       72 SETTABLEKS                       R22 R21 K13 ["refreshKey"]
       74 GETTABLEKS                       R22 R0 K14 ["historyService"]
       76 SETTABLEKS                       R22 R21 K14 ["historyService"]
       78 GETTABLEKS                       R22 R0 K15 ["onEvent"]
       80 SETTABLEKS                       R22 R21 K15 ["onEvent"]
       82 GETTABLEKS                       R22 R0 K16 ["onCatalogChanged"]
       84 SETTABLEKS                       R22 R21 K16 ["onCatalogChanged"]
       86 GETTABLEKS                       R22 R0 K17 ["slotApi"]
       88 SETTABLEKS                       R22 R21 K17 ["slotApi"]
       90 GETTABLEKS                       R22 R0 K18 ["terrain"]
       92 SETTABLEKS                       R22 R21 K18 ["terrain"]
       94 CALL                             R20 1 1
       95 GETTABLEKS                       R21 R20 K20 ["entries"]
       97 LENGTH                           R22 R21
       98 LOADN                            R23 0
       99 MOVE                             R24 R21
      100 LOADNIL                          R25
      101 LOADNIL                          R26
      102 FORGPREP                         R24
      103 GETTABLEKS                       R29 R28 K21 ["variantName"]
      105 JUMPIFEQKNIL                     R29 ; [+6]
      107 GETTABLEKS                       R29 R28 K21 ["variantName"]
      109 JUMPIFEQKS                       R29 K5 [""] ; [+2]
      111 ADDK                             R23 R23 K22 [1]
      112 FORGLOOP                         R24 2 ; [-10]
      114 GETTABLEKS                       R24 R20 K23 ["canAddSlot"]
      116 GETTABLEKS                       R26 R0 K15 ["onEvent"]
      118 JUMPIFNOTEQKNIL                  R26 ; [+2]
      120 LOADB                            R25 0 +1
      121 LOADB                            R25 1
      122 GETUPVAL                         R26 5
      123 NEWCLOSURE                       R27 P1
      124 CAPTURE                          VAL R0
      125 CALL                             R26 1 1
      126 GETUPVAL                         R27 0
      127 GETTABLEKS                       R27 R27 K24 ["useMemo"]
      129 NEWCLOSURE                       R28 P2
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R21
      132 NEWTABLE                         R29 0 2
      134 MOVE                             R30 R3
      135 MOVE                             R31 R21
      136 SETLIST                          R29 R30 2 [1]
      138 CALL                             R27 2 1
      139 GETUPVAL                         R28 0
      140 GETTABLEKS                       R28 R28 K24 ["useMemo"]
      142 NEWCLOSURE                       R29 P3
      143 CAPTURE                          UPVAL U6
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R21
      146 CAPTURE                          VAL R1
      147 NEWTABLE                         R30 0 3
      149 MOVE                             R31 R1
      150 MOVE                             R32 R5
      151 MOVE                             R33 R21
      152 SETLIST                          R30 R31 3 [1]
      154 CALL                             R28 2 1
      155 GETUPVAL                         R29 0
      156 GETTABLEKS                       R29 R29 K10 ["useRef"]
      158 LOADNIL                          R30
      159 CALL                             R29 1 1
      160 GETUPVAL                         R30 0
      161 GETTABLEKS                       R30 R30 K25 ["useEffect"]
      163 NEWCLOSURE                       R31 P4
      164 CAPTURE                          VAL R25
      165 CAPTURE                          VAL R26
      166 CAPTURE                          VAL R22
      167 CAPTURE                          REF R23
      168 CAPTURE                          VAL R24
      169 NEWTABLE                         R32 0 5
      171 MOVE                             R33 R22
      172 MOVE                             R34 R24
      173 MOVE                             R35 R25
      174 MOVE                             R36 R26
      175 MOVE                             R37 R23
      176 SETLIST                          R32 R33 5 [1]
      178 CALL                             R30 2 0
      179 GETUPVAL                         R30 0
      180 GETTABLEKS                       R30 R30 K25 ["useEffect"]
      182 NEWCLOSURE                       R31 P5
      183 CAPTURE                          VAL R0
      184 CAPTURE                          VAL R3
      185 NEWTABLE                         R32 0 2
      187 GETTABLEKS                       R33 R0 K26 ["onSelectionChanged"]
      189 MOVE                             R34 R3
      190 SETLIST                          R32 R33 2 [1]
      192 CALL                             R30 2 0
      193 GETUPVAL                         R30 0
      194 GETTABLEKS                       R30 R30 K25 ["useEffect"]
      196 NEWCLOSURE                       R31 P6
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R29
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R26
      204 NEWTABLE                         R32 0 3
      206 GETTABLEKS                       R33 R0 K27 ["selectionRequest"]
      208 MOVE                             R34 R26
      209 GETTABLEKS                       R35 R20 K28 ["refreshEntries"]
      211 SETLIST                          R32 R33 3 [1]
      213 CALL                             R30 2 0
      214 GETUPVAL                         R30 5
      215 NEWCLOSURE                       R31 P7
      216 CAPTURE                          VAL R4
      217 CALL                             R30 1 1
      218 GETUPVAL                         R31 5
      219 NEWCLOSURE                       R32 P8
      220 CAPTURE                          VAL R20
      221 CALL                             R31 1 1
      222 GETUPVAL                         R32 5
      223 NEWCLOSURE                       R33 P9
      224 CAPTURE                          VAL R20
      225 CALL                             R32 1 1
      226 GETUPVAL                         R33 5
      227 NEWCLOSURE                       R34 P10
      228 CAPTURE                          VAL R20
      229 CAPTURE                          UPVAL U7
      230 CAPTURE                          UPVAL U8
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R4
      233 CAPTURE                          VAL R13
      234 CALL                             R33 1 1
      235 GETUPVAL                         R34 5
      236 NEWCLOSURE                       R35 P11
      237 CAPTURE                          VAL R4
      238 CALL                             R34 1 1
      239 GETUPVAL                         R35 5
      240 NEWCLOSURE                       R36 P12
      241 CAPTURE                          VAL R20
      242 CAPTURE                          VAL R6
      243 CAPTURE                          VAL R4
      244 CAPTURE                          VAL R13
      245 CALL                             R35 1 1
      246 GETUPVAL                         R36 5
      247 NEWCLOSURE                       R37 P13
      248 CAPTURE                          VAL R27
      249 CAPTURE                          VAL R35
      250 CALL                             R36 1 1
      251 GETUPVAL                         R37 5
      252 NEWCLOSURE                       R38 P14
      253 CAPTURE                          VAL R21
      254 CAPTURE                          VAL R35
      255 CALL                             R37 1 1
      256 GETUPVAL                         R38 5
      257 NEWCLOSURE                       R39 P15
      258 CAPTURE                          VAL R20
      259 CAPTURE                          VAL R4
      260 CAPTURE                          VAL R13
      261 CALL                             R38 1 1
      262 GETUPVAL                         R39 5
      263 NEWCLOSURE                       R40 P16
      264 CAPTURE                          UPVAL U7
      265 CAPTURE                          VAL R15
      266 CAPTURE                          VAL R38
      267 CALL                             R39 1 1
      268 GETUPVAL                         R40 5
      269 NEWCLOSURE                       R41 P17
      270 CAPTURE                          VAL R3
      271 CAPTURE                          VAL R39
      272 CALL                             R40 1 1
      273 GETUPVAL                         R41 5
      274 NEWCLOSURE                       R42 P18
      275 CAPTURE                          VAL R14
      276 CAPTURE                          VAL R21
      277 CAPTURE                          VAL R26
      278 CAPTURE                          VAL R15
      279 CALL                             R41 1 1
      280 GETUPVAL                         R42 5
      281 NEWCLOSURE                       R43 P19
      282 CAPTURE                          VAL R14
      283 CAPTURE                          VAL R21
      284 CAPTURE                          VAL R26
      285 CAPTURE                          VAL R15
      286 CAPTURE                          VAL R38
      287 CALL                             R42 1 1
      288 GETUPVAL                         R43 5
      289 NEWCLOSURE                       R44 P20
      290 CAPTURE                          VAL R6
      291 CALL                             R43 1 1
      292 GETUPVAL                         R44 5
      293 NEWCLOSURE                       R45 P21
      294 CAPTURE                          VAL R8
      295 CALL                             R44 1 1
      296 GETUPVAL                         R45 5
      297 NEWCLOSURE                       R46 P22
      298 CAPTURE                          VAL R13
      299 CALL                             R45 1 1
      300 GETUPVAL                         R46 5
      301 NEWCLOSURE                       R47 P23
      302 CAPTURE                          UPVAL U9
      303 CAPTURE                          VAL R16
      304 CAPTURE                          VAL R2
      305 CAPTURE                          VAL R17
      306 CAPTURE                          VAL R18
      307 CAPTURE                          VAL R9
      308 CALL                             R46 1 1
      309 GETUPVAL                         R47 5
      310 NEWCLOSURE                       R48 P24
      311 CAPTURE                          VAL R16
      312 CAPTURE                          VAL R2
      313 CAPTURE                          VAL R17
      314 CAPTURE                          VAL R10
      315 CAPTURE                          VAL R18
      316 CALL                             R47 1 1
      317 GETUPVAL                         R48 10
      318 GETUPVAL                         R49 11
      319 GETTABLEKS                       R49 R49 K29 ["Heartbeat"]
      321 MOVE                             R50 R47
      322 CALL                             R48 2 0
      323 GETUPVAL                         R48 12
      324 CALL                             R48 0 1
      325 GETUPVAL                         R49 12
      326 CALL                             R49 0 1
      327 GETUPVAL                         R50 0
      328 GETTABLEKS                       R50 R50 K30 ["createElement"]
      330 GETUPVAL                         R51 13
      331 DUPTABLE                         R52 K33 [{["tag"] = "col gap-medium size-full padding-medium"}]
      332 DUPTABLE                         R53 K37 [{"TopBar", "Body", "DeleteWarning"}]
      333 GETUPVAL                         R54 0
      334 GETTABLEKS                       R54 R54 K30 ["createElement"]
      336 GETUPVAL                         R55 14
      337 DUPTABLE                         R56 K44 [{"layoutOrder", "onAddMaterial", "onSearchChanged", "onViewTypeChanged", "searchText", "viewType"}]
      338 MOVE                             R57 R48
      339 CALL                             R57 0 1
      340 SETTABLEKS                       R57 R56 K38 ["layoutOrder"]
      342 SETTABLEKS                       R33 R56 K39 ["onAddMaterial"]
      344 SETTABLEKS                       R43 R56 K40 ["onSearchChanged"]
      346 SETTABLEKS                       R44 R56 K41 ["onViewTypeChanged"]
      348 SETTABLEKS                       R5 R56 K42 ["searchText"]
      350 SETTABLEKS                       R7 R56 K43 ["viewType"]
      352 CALL                             R54 2 1
      353 SETTABLEKS                       R54 R53 K34 ["TopBar"]
      355 GETUPVAL                         R54 0
      356 GETTABLEKS                       R54 R54 K30 ["createElement"]
      358 GETUPVAL                         R55 13
      359 DUPTABLE                         R56 K47 [{["tag"] = "row grow size-full-0", ["LayoutOrder"]}]
      360 MOVE                             R57 R48
      361 CALL                             R57 0 1
      362 SETTABLEKS                       R57 R56 K46 ["LayoutOrder"]
      364 DUPTABLE                         R57 K51 [{"Grid", "ResizeHandle", "Details"}]
      365 GETUPVAL                         R58 0
      366 GETTABLEKS                       R58 R58 K30 ["createElement"]
      368 GETUPVAL                         R59 13
      369 DUPTABLE                         R60 K53 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      370 MOVE                             R61 R49
      371 CALL                             R61 0 1
      372 SETTABLEKS                       R61 R60 K46 ["LayoutOrder"]
      374 DUPTABLE                         R61 K55 [{"MaterialGrid"}]
      375 GETUPVAL                         R62 0
      376 GETTABLEKS                       R62 R62 K30 ["createElement"]
      378 GETUPVAL                         R63 15
      379 DUPTABLE                         R64 K64 [{"slotEntries", "selectedSlotIndex", "scrollToSlotIndex", "viewType", "canDuplicate", "onSlotDelete", "onSlotDuplicate", "onSlotSelected", "onScrolledToSlot"}]
      380 SETTABLEKS                       R28 R64 K56 ["slotEntries"]
      382 SETTABLEKS                       R3 R64 K57 ["selectedSlotIndex"]
      384 SETTABLEKS                       R12 R64 K58 ["scrollToSlotIndex"]
      386 SETTABLEKS                       R7 R64 K43 ["viewType"]
      388 GETTABLEKS                       R65 R20 K23 ["canAddSlot"]
      390 SETTABLEKS                       R65 R64 K59 ["canDuplicate"]
      392 SETTABLEKS                       R39 R64 K60 ["onSlotDelete"]
      394 SETTABLEKS                       R37 R64 K61 ["onSlotDuplicate"]
      396 SETTABLEKS                       R30 R64 K62 ["onSlotSelected"]
      398 SETTABLEKS                       R45 R64 K63 ["onScrolledToSlot"]
      400 CALL                             R62 2 1
      401 SETTABLEKS                       R62 R61 K54 ["MaterialGrid"]
      403 CALL                             R58 3 1
      404 SETTABLEKS                       R58 R57 K48 ["Grid"]
      406 JUMPIFNOT                        R27 ; [+51]
      407 GETUPVAL                         R58 0
      408 GETTABLEKS                       R58 R58 K30 ["createElement"]
      410 GETUPVAL                         R59 13
      411 DUPTABLE                         R60 K69 [{["LayoutOrder"], ["Size"], ["onStateChanged"], ["testId"] = "DetailsResizeHandle"}]
      412 MOVE                             R61 R49
      413 CALL                             R61 0 1
      414 SETTABLEKS                       R61 R60 K46 ["LayoutOrder"]
      416 GETIMPORT                        R61 K72 [UDim2.new]
      418 LOADN                            R62 0
      419 LOADN                            R63 6
      420 LOADN                            R64 1
      421 LOADN                            R65 0
      422 CALL                             R61 4 1
      423 SETTABLEKS                       R61 R60 K65 ["Size"]
      425 SETTABLEKS                       R46 R60 K66 ["onStateChanged"]
      427 DUPTABLE                         R61 K74 [{"Divider"}]
      428 GETUPVAL                         R62 0
      429 GETTABLEKS                       R62 R62 K30 ["createElement"]
      431 GETUPVAL                         R63 13
      432 DUPTABLE                         R64 K77 [{["tag"] = "position-top-center anchor-top-center", ["Size"], ["backgroundStyle"]}]
      433 GETIMPORT                        R65 K72 [UDim2.new]
      435 LOADN                            R66 0
      436 GETTABLEKS                       R67 R19 K78 ["Stroke"]
      438 GETTABLEKS                       R67 R67 K79 ["Standard"]
      440 LOADN                            R68 1
      441 LOADN                            R69 0
      442 CALL                             R65 4 1
      443 SETTABLEKS                       R65 R64 K65 ["Size"]
      445 GETTABLEKS                       R65 R19 K80 ["Color"]
      447 GETTABLEKS                       R65 R65 K78 ["Stroke"]
      449 GETTABLEKS                       R65 R65 K81 ["Default"]
      451 SETTABLEKS                       R65 R64 K76 ["backgroundStyle"]
      453 CALL                             R62 2 1
      454 SETTABLEKS                       R62 R61 K73 ["Divider"]
      456 CALL                             R58 3 1
      457 JUMP                             ; [+1]
      458 LOADNIL                          R58
      459 SETTABLEKS                       R58 R57 K49 ["ResizeHandle"]
      461 JUMPIFNOT                        R27 ; [+38]
      462 GETUPVAL                         R58 0
      463 GETTABLEKS                       R58 R58 K30 ["createElement"]
      465 GETUPVAL                         R59 13
      466 DUPTABLE                         R60 K83 [{["tag"] = "no-flex", ["LayoutOrder"], ["Size"]}]
      467 MOVE                             R61 R49
      468 CALL                             R61 0 1
      469 SETTABLEKS                       R61 R60 K46 ["LayoutOrder"]
      471 SETTABLEKS                       R11 R60 K65 ["Size"]
      473 DUPTABLE                         R61 K85 [{"Panel"}]
      474 GETUPVAL                         R62 0
      475 GETTABLEKS                       R62 R62 K30 ["createElement"]
      477 GETUPVAL                         R63 16
      478 DUPTABLE                         R64 K92 [{"canDuplicate", "entry", "onClose", "onDelete", "onDuplicate", "onEntryChangeCommitted", "onEntryChanged"}]
      479 GETTABLEKS                       R65 R20 K23 ["canAddSlot"]
      481 SETTABLEKS                       R65 R64 K59 ["canDuplicate"]
      483 SETTABLEKS                       R27 R64 K86 ["entry"]
      485 SETTABLEKS                       R34 R64 K87 ["onClose"]
      487 SETTABLEKS                       R40 R64 K88 ["onDelete"]
      489 SETTABLEKS                       R36 R64 K89 ["onDuplicate"]
      491 SETTABLEKS                       R32 R64 K90 ["onEntryChangeCommitted"]
      493 SETTABLEKS                       R31 R64 K91 ["onEntryChanged"]
      495 CALL                             R62 2 1
      496 SETTABLEKS                       R62 R61 K84 ["Panel"]
      498 CALL                             R58 3 1
      499 JUMP                             ; [+1]
      500 LOADNIL                          R58
      501 SETTABLEKS                       R58 R57 K50 ["Details"]
      503 CALL                             R54 3 1
      504 SETTABLEKS                       R54 R53 K35 ["Body"]
      506 JUMPIFEQKNIL                     R14 ; [+12]
      508 GETUPVAL                         R54 0
      509 GETTABLEKS                       R54 R54 K30 ["createElement"]
      511 GETUPVAL                         R55 17
      512 DUPTABLE                         R56 K95 [{"onCancel", "onConfirm"}]
      513 SETTABLEKS                       R41 R56 K93 ["onCancel"]
      515 SETTABLEKS                       R42 R56 K94 ["onConfirm"]
      517 CALL                             R54 2 1
      518 JUMP                             ; [+1]
      519 LOADNIL                          R54
      520 SETTABLEKS                       R54 R53 K36 ["DeleteWarning"]
      522 CALL                             R50 3 -1
      523 CLOSEUPVALS                      R23
      524 RETURN                           R50 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["localization"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+4]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 RETURN                           R0 1
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["destroy"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_33:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_34:
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
       50 DUPCLOSURE                       R6 K11 [PROTO_28]
       51 CAPTURE                          UPVAL U3
       52 NEWTABLE                         R7 0 0
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       58 DUPCLOSURE                       R7 K12 [PROTO_29]
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
       61 GETTABLEKS                       R9 R0 K13 ["Parent"]
       63 GETTABLEKS                       R9 R9 K19 ["React"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K13 ["Parent"]
       70 GETTABLEKS                       R10 R10 K20 ["ReactUtils"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K13 ["Parent"]
       77 GETTABLEKS                       R11 R11 K21 ["StudioFoundation"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R0 K22 ["Libraries"]
       84 GETTABLEKS                       R12 R12 K23 ["TerrainSlotApi"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R13 R0 K24 ["Domain"]
       91 GETTABLEKS                       R13 R13 K25 ["TerrainMaterialTypes"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K9 [require]
       96 GETTABLEKS                       R14 R0 K24 ["Domain"]
       98 GETTABLEKS                       R14 R14 K26 ["TerrainMaterials"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K9 [require]
      103 GETTABLEKS                       R15 R0 K27 ["Types"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K9 [require]
      108 GETIMPORT                        R16 K1 [script]
      110 GETTABLEKS                       R16 R16 K13 ["Parent"]
      112 GETTABLEKS                       R16 R16 K13 ["Parent"]
      114 GETTABLEKS                       R16 R16 K28 ["TopBar"]
      116 CALL                             R15 1 1
      117 GETIMPORT                        R16 K9 [require]
      119 GETTABLEKS                       R17 R0 K29 ["Resources"]
      121 GETTABLEKS                       R17 R17 K30 ["Localization"]
      123 GETTABLEKS                       R17 R17 K31 ["createLocalization"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K9 [require]
      128 GETTABLEKS                       R18 R0 K32 ["Util"]
      130 GETTABLEKS                       R18 R18 K33 ["filterEntries"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K9 [require]
      135 GETTABLEKS                       R19 R0 K34 ["Hooks"]
      137 GETTABLEKS                       R19 R19 K35 ["useTerrainSlots"]
      139 CALL                             R18 1 1
      140 GETTABLEKS                       R19 R4 K36 ["View"]
      142 GETTABLEKS                       R20 R4 K37 ["Enums"]
      144 GETTABLEKS                       R20 R20 K38 ["ControlState"]
      146 GETTABLEKS                       R21 R9 K39 ["createNextOrder"]
      148 GETTABLEKS                       R22 R9 K40 ["useEventCallback"]
      150 GETTABLEKS                       R23 R9 K41 ["useEventConnection"]
      152 GETTABLEKS                       R24 R10 K10 ["Components"]
      154 GETTABLEKS                       R24 R24 K42 ["FoundationProviderAdapter"]
      156 GETTABLEKS                       R25 R5 K43 ["ContextServices"]
      158 GETTABLEKS                       R26 R5 K44 ["Style"]
      160 GETTABLEKS                       R26 R26 K45 ["Themes"]
      162 GETTABLEKS                       R26 R26 K46 ["DarkTheme"]
      164 GETTABLEKS                       R27 R5 K44 ["Style"]
      166 GETTABLEKS                       R27 R27 K45 ["Themes"]
      168 GETTABLEKS                       R27 R27 K47 ["LightTheme"]
      170 GETTABLEKS                       R28 R6 K29 ["Resources"]
      172 GETTABLEKS                       R28 R28 K48 ["Theme"]
      174 GETTABLEKS                       R29 R10 K49 ["Contexts"]
      176 GETTABLEKS                       R29 R29 K30 ["Localization"]
      178 GETTABLEKS                       R30 R6 K50 ["Context"]
      180 GETTABLEKS                       R30 R30 K51 ["StudioServices"]
      182 GETIMPORT                        R31 K55 [Enum.Material.Asphalt]
      184 DUPCLOSURE                       R32 K56 [PROTO_26]
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R29
      187 CAPTURE                          VAL R25
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R22
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R13
      193 CAPTURE                          VAL R31
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R23
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R2
      203 DUPCLOSURE                       R33 K57 [PROTO_34]
      204 CAPTURE                          VAL R11
      205 CAPTURE                          VAL R8
      206 CAPTURE                          VAL R16
      207 CAPTURE                          VAL R30
      208 CAPTURE                          VAL R28
      209 CAPTURE                          VAL R26
      210 CAPTURE                          VAL R27
      211 CAPTURE                          VAL R29
      212 CAPTURE                          VAL R25
      213 CAPTURE                          VAL R24
      214 CAPTURE                          VAL R32
      215 RETURN                           R33 1
