PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 MOVE                             R3 R0
        4 LOADN                            R4 1
        5 LOADN                            R5 0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_1:
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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionRequest"]
        3 JUMPIFEQKNIL                     R0 ; [+8]
        5 GETTABLEKS                       R1 R0 K1 ["id"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["current"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 2
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 GETTABLEKS                       R6 R5 K3 ["slotIndex"]
       19 GETTABLEKS                       R7 R0 K3 ["slotIndex"]
       21 JUMPIFNOTEQ                      R6 R7 ; [+18]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R7 R0 K1 ["id"]
       26 SETTABLEKS                       R7 R6 K2 ["current"]
       28 GETUPVAL                         R6 3
       29 LOADK                            R7 K4 [""]
       30 CALL                             R6 1 0
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R7 R0 K3 ["slotIndex"]
       34 CALL                             R6 1 0
       35 GETUPVAL                         R6 5
       36 GETTABLEKS                       R7 R0 K3 ["slotIndex"]
       38 CALL                             R6 1 0
       39 RETURN                           R0 0
       40 FORGLOOP                         R1 2 ; [-24]
       42 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateEntry"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["commitEntryUpdate"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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
       69 DUPTABLE                         R21 K18 [{"refreshKey", "historyService", "onCatalogChanged", "slotApi", "terrain"}]
       70 GETTABLEKS                       R22 R0 K13 ["refreshKey"]
       72 SETTABLEKS                       R22 R21 K13 ["refreshKey"]
       74 GETTABLEKS                       R22 R0 K14 ["historyService"]
       76 SETTABLEKS                       R22 R21 K14 ["historyService"]
       78 GETTABLEKS                       R22 R0 K15 ["onCatalogChanged"]
       80 SETTABLEKS                       R22 R21 K15 ["onCatalogChanged"]
       82 GETTABLEKS                       R22 R0 K16 ["slotApi"]
       84 SETTABLEKS                       R22 R21 K16 ["slotApi"]
       86 GETTABLEKS                       R22 R0 K17 ["terrain"]
       88 SETTABLEKS                       R22 R21 K17 ["terrain"]
       90 CALL                             R20 1 1
       91 GETTABLEKS                       R21 R20 K19 ["entries"]
       93 GETUPVAL                         R22 0
       94 GETTABLEKS                       R22 R22 K20 ["useMemo"]
       96 NEWCLOSURE                       R23 P1
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R21
       99 NEWTABLE                         R24 0 2
      101 MOVE                             R25 R3
      102 MOVE                             R26 R21
      103 SETLIST                          R24 R25 2 [1]
      105 CALL                             R22 2 1
      106 GETUPVAL                         R23 0
      107 GETTABLEKS                       R23 R23 K20 ["useMemo"]
      109 NEWCLOSURE                       R24 P2
      110 CAPTURE                          UPVAL U5
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R21
      113 CAPTURE                          VAL R1
      114 NEWTABLE                         R25 0 3
      116 MOVE                             R26 R1
      117 MOVE                             R27 R5
      118 MOVE                             R28 R21
      119 SETLIST                          R25 R26 3 [1]
      121 CALL                             R23 2 1
      122 GETUPVAL                         R24 0
      123 GETTABLEKS                       R24 R24 K10 ["useRef"]
      125 LOADNIL                          R25
      126 CALL                             R24 1 1
      127 GETUPVAL                         R25 0
      128 GETTABLEKS                       R25 R25 K21 ["useEffect"]
      130 NEWCLOSURE                       R26 P3
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R24
      133 CAPTURE                          VAL R21
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R13
      137 NEWTABLE                         R27 0 2
      139 GETTABLEKS                       R28 R0 K22 ["selectionRequest"]
      141 MOVE                             R29 R21
      142 SETLIST                          R27 R28 2 [1]
      144 CALL                             R25 2 0
      145 GETUPVAL                         R25 6
      146 NEWCLOSURE                       R26 P4
      147 CAPTURE                          VAL R4
      148 CALL                             R25 1 1
      149 GETUPVAL                         R26 6
      150 NEWCLOSURE                       R27 P5
      151 CAPTURE                          VAL R4
      152 CALL                             R26 1 1
      153 GETUPVAL                         R27 6
      154 NEWCLOSURE                       R28 P6
      155 CAPTURE                          VAL R20
      156 CALL                             R27 1 1
      157 GETUPVAL                         R28 6
      158 NEWCLOSURE                       R29 P7
      159 CAPTURE                          VAL R20
      160 CALL                             R28 1 1
      161 GETUPVAL                         R29 6
      162 NEWCLOSURE                       R30 P8
      163 CAPTURE                          VAL R20
      164 CAPTURE                          UPVAL U7
      165 CAPTURE                          UPVAL U8
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R13
      169 CALL                             R29 1 1
      170 GETUPVAL                         R30 6
      171 NEWCLOSURE                       R31 P9
      172 CAPTURE                          VAL R4
      173 CALL                             R30 1 1
      174 GETUPVAL                         R31 6
      175 NEWCLOSURE                       R32 P10
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R13
      180 CALL                             R31 1 1
      181 GETUPVAL                         R32 6
      182 NEWCLOSURE                       R33 P11
      183 CAPTURE                          VAL R22
      184 CAPTURE                          VAL R31
      185 CALL                             R32 1 1
      186 GETUPVAL                         R33 6
      187 NEWCLOSURE                       R34 P12
      188 CAPTURE                          VAL R21
      189 CAPTURE                          VAL R31
      190 CALL                             R33 1 1
      191 GETUPVAL                         R34 6
      192 NEWCLOSURE                       R35 P13
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R13
      196 CALL                             R34 1 1
      197 GETUPVAL                         R35 6
      198 NEWCLOSURE                       R36 P14
      199 CAPTURE                          UPVAL U7
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R34
      202 CALL                             R35 1 1
      203 GETUPVAL                         R36 6
      204 NEWCLOSURE                       R37 P15
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R35
      207 CALL                             R36 1 1
      208 GETUPVAL                         R37 6
      209 NEWCLOSURE                       R38 P16
      210 CAPTURE                          VAL R15
      211 CALL                             R37 1 1
      212 GETUPVAL                         R38 6
      213 NEWCLOSURE                       R39 P17
      214 CAPTURE                          VAL R14
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R34
      217 CALL                             R38 1 1
      218 GETUPVAL                         R39 6
      219 NEWCLOSURE                       R40 P18
      220 CAPTURE                          VAL R6
      221 CALL                             R39 1 1
      222 GETUPVAL                         R40 6
      223 NEWCLOSURE                       R41 P19
      224 CAPTURE                          VAL R8
      225 CALL                             R40 1 1
      226 GETUPVAL                         R41 6
      227 NEWCLOSURE                       R42 P20
      228 CAPTURE                          VAL R13
      229 CALL                             R41 1 1
      230 GETUPVAL                         R42 6
      231 NEWCLOSURE                       R43 P21
      232 CAPTURE                          UPVAL U9
      233 CAPTURE                          VAL R16
      234 CAPTURE                          VAL R2
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R18
      237 CAPTURE                          VAL R9
      238 CALL                             R42 1 1
      239 GETUPVAL                         R43 6
      240 NEWCLOSURE                       R44 P22
      241 CAPTURE                          VAL R16
      242 CAPTURE                          VAL R2
      243 CAPTURE                          VAL R17
      244 CAPTURE                          VAL R10
      245 CAPTURE                          VAL R18
      246 CALL                             R43 1 1
      247 GETUPVAL                         R44 10
      248 GETUPVAL                         R45 11
      249 GETTABLEKS                       R45 R45 K23 ["Heartbeat"]
      251 MOVE                             R46 R43
      252 CALL                             R44 2 0
      253 GETUPVAL                         R44 12
      254 CALL                             R44 0 1
      255 GETUPVAL                         R45 12
      256 CALL                             R45 0 1
      257 GETUPVAL                         R46 0
      258 GETTABLEKS                       R46 R46 K24 ["createElement"]
      260 GETUPVAL                         R47 13
      261 DUPTABLE                         R48 K27 [{["tag"] = "col gap-medium size-full padding-medium"}]
      262 DUPTABLE                         R49 K31 [{"TopBar", "Body", "DeleteWarning"}]
      263 GETUPVAL                         R50 0
      264 GETTABLEKS                       R50 R50 K24 ["createElement"]
      266 GETUPVAL                         R51 14
      267 DUPTABLE                         R52 K38 [{"layoutOrder", "onAddMaterial", "onSearchChanged", "onViewTypeChanged", "searchText", "viewType"}]
      268 MOVE                             R53 R44
      269 CALL                             R53 0 1
      270 SETTABLEKS                       R53 R52 K32 ["layoutOrder"]
      272 SETTABLEKS                       R29 R52 K33 ["onAddMaterial"]
      274 SETTABLEKS                       R39 R52 K34 ["onSearchChanged"]
      276 SETTABLEKS                       R40 R52 K35 ["onViewTypeChanged"]
      278 SETTABLEKS                       R5 R52 K36 ["searchText"]
      280 SETTABLEKS                       R7 R52 K37 ["viewType"]
      282 CALL                             R50 2 1
      283 SETTABLEKS                       R50 R49 K28 ["TopBar"]
      285 GETUPVAL                         R50 0
      286 GETTABLEKS                       R50 R50 K24 ["createElement"]
      288 GETUPVAL                         R51 13
      289 DUPTABLE                         R52 K41 [{["tag"] = "row grow size-full-0", ["LayoutOrder"]}]
      290 MOVE                             R53 R44
      291 CALL                             R53 0 1
      292 SETTABLEKS                       R53 R52 K40 ["LayoutOrder"]
      294 DUPTABLE                         R53 K45 [{"Grid", "ResizeHandle", "Details"}]
      295 GETUPVAL                         R54 0
      296 GETTABLEKS                       R54 R54 K24 ["createElement"]
      298 GETUPVAL                         R55 13
      299 DUPTABLE                         R56 K47 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      300 MOVE                             R57 R45
      301 CALL                             R57 0 1
      302 SETTABLEKS                       R57 R56 K40 ["LayoutOrder"]
      304 DUPTABLE                         R57 K49 [{"MaterialGrid"}]
      305 GETUPVAL                         R58 0
      306 GETTABLEKS                       R58 R58 K24 ["createElement"]
      308 GETUPVAL                         R59 15
      309 DUPTABLE                         R60 K59 [{"slotEntries", "selectedSlotIndex", "scrollToSlotIndex", "viewType", "canDuplicate", "onSlotContextMenuOpened", "onSlotDelete", "onSlotDuplicate", "onSlotSelected", "onScrolledToSlot"}]
      310 SETTABLEKS                       R23 R60 K50 ["slotEntries"]
      312 SETTABLEKS                       R3 R60 K51 ["selectedSlotIndex"]
      314 SETTABLEKS                       R12 R60 K52 ["scrollToSlotIndex"]
      316 SETTABLEKS                       R7 R60 K37 ["viewType"]
      318 GETTABLEKS                       R61 R20 K60 ["canAddSlot"]
      320 SETTABLEKS                       R61 R60 K53 ["canDuplicate"]
      322 SETTABLEKS                       R26 R60 K54 ["onSlotContextMenuOpened"]
      324 SETTABLEKS                       R35 R60 K55 ["onSlotDelete"]
      326 SETTABLEKS                       R33 R60 K56 ["onSlotDuplicate"]
      328 SETTABLEKS                       R25 R60 K57 ["onSlotSelected"]
      330 SETTABLEKS                       R41 R60 K58 ["onScrolledToSlot"]
      332 CALL                             R58 2 1
      333 SETTABLEKS                       R58 R57 K48 ["MaterialGrid"]
      335 CALL                             R54 3 1
      336 SETTABLEKS                       R54 R53 K42 ["Grid"]
      338 JUMPIFNOT                        R22 ; [+51]
      339 GETUPVAL                         R54 0
      340 GETTABLEKS                       R54 R54 K24 ["createElement"]
      342 GETUPVAL                         R55 13
      343 DUPTABLE                         R56 K65 [{["LayoutOrder"], ["Size"], ["onStateChanged"], ["testId"] = "DetailsResizeHandle"}]
      344 MOVE                             R57 R45
      345 CALL                             R57 0 1
      346 SETTABLEKS                       R57 R56 K40 ["LayoutOrder"]
      348 GETIMPORT                        R57 K68 [UDim2.new]
      350 LOADN                            R58 0
      351 LOADN                            R59 6
      352 LOADN                            R60 1
      353 LOADN                            R61 0
      354 CALL                             R57 4 1
      355 SETTABLEKS                       R57 R56 K61 ["Size"]
      357 SETTABLEKS                       R42 R56 K62 ["onStateChanged"]
      359 DUPTABLE                         R57 K70 [{"Divider"}]
      360 GETUPVAL                         R58 0
      361 GETTABLEKS                       R58 R58 K24 ["createElement"]
      363 GETUPVAL                         R59 13
      364 DUPTABLE                         R60 K73 [{["tag"] = "position-top-center anchor-top-center", ["Size"], ["backgroundStyle"]}]
      365 GETIMPORT                        R61 K68 [UDim2.new]
      367 LOADN                            R62 0
      368 GETTABLEKS                       R63 R19 K74 ["Stroke"]
      370 GETTABLEKS                       R63 R63 K75 ["Standard"]
      372 LOADN                            R64 1
      373 LOADN                            R65 0
      374 CALL                             R61 4 1
      375 SETTABLEKS                       R61 R60 K61 ["Size"]
      377 GETTABLEKS                       R61 R19 K76 ["Color"]
      379 GETTABLEKS                       R61 R61 K74 ["Stroke"]
      381 GETTABLEKS                       R61 R61 K77 ["Default"]
      383 SETTABLEKS                       R61 R60 K72 ["backgroundStyle"]
      385 CALL                             R58 2 1
      386 SETTABLEKS                       R58 R57 K69 ["Divider"]
      388 CALL                             R54 3 1
      389 JUMP                             ; [+1]
      390 LOADNIL                          R54
      391 SETTABLEKS                       R54 R53 K43 ["ResizeHandle"]
      393 JUMPIFNOT                        R22 ; [+38]
      394 GETUPVAL                         R54 0
      395 GETTABLEKS                       R54 R54 K24 ["createElement"]
      397 GETUPVAL                         R55 13
      398 DUPTABLE                         R56 K79 [{["tag"] = "no-flex", ["LayoutOrder"], ["Size"]}]
      399 MOVE                             R57 R45
      400 CALL                             R57 0 1
      401 SETTABLEKS                       R57 R56 K40 ["LayoutOrder"]
      403 SETTABLEKS                       R11 R56 K61 ["Size"]
      405 DUPTABLE                         R57 K81 [{"Panel"}]
      406 GETUPVAL                         R58 0
      407 GETTABLEKS                       R58 R58 K24 ["createElement"]
      409 GETUPVAL                         R59 16
      410 DUPTABLE                         R60 K88 [{"canDuplicate", "entry", "onClose", "onDelete", "onDuplicate", "onEntryChangeCommitted", "onEntryChanged"}]
      411 GETTABLEKS                       R61 R20 K60 ["canAddSlot"]
      413 SETTABLEKS                       R61 R60 K53 ["canDuplicate"]
      415 SETTABLEKS                       R22 R60 K82 ["entry"]
      417 SETTABLEKS                       R30 R60 K83 ["onClose"]
      419 SETTABLEKS                       R36 R60 K84 ["onDelete"]
      421 SETTABLEKS                       R32 R60 K85 ["onDuplicate"]
      423 SETTABLEKS                       R28 R60 K86 ["onEntryChangeCommitted"]
      425 SETTABLEKS                       R27 R60 K87 ["onEntryChanged"]
      427 CALL                             R58 2 1
      428 SETTABLEKS                       R58 R57 K80 ["Panel"]
      430 CALL                             R54 3 1
      431 JUMP                             ; [+1]
      432 LOADNIL                          R54
      433 SETTABLEKS                       R54 R53 K44 ["Details"]
      435 CALL                             R50 3 1
      436 SETTABLEKS                       R50 R49 K29 ["Body"]
      438 JUMPIFEQKNIL                     R14 ; [+12]
      440 GETUPVAL                         R50 0
      441 GETTABLEKS                       R50 R50 K24 ["createElement"]
      443 GETUPVAL                         R51 17
      444 DUPTABLE                         R52 K91 [{"onCancel", "onConfirm"}]
      445 SETTABLEKS                       R37 R52 K89 ["onCancel"]
      447 SETTABLEKS                       R38 R52 K90 ["onConfirm"]
      449 CALL                             R50 2 1
      450 JUMP                             ; [+1]
      451 LOADNIL                          R50
      452 SETTABLEKS                       R50 R49 K30 ["DeleteWarning"]
      454 CALL                             R46 3 -1
      455 RETURN                           R46 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["localization"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+4]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 RETURN                           R0 1
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["destroy"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_31:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_32:
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
       50 DUPCLOSURE                       R6 K11 [PROTO_26]
       51 CAPTURE                          UPVAL U3
       52 NEWTABLE                         R7 0 0
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       58 DUPCLOSURE                       R7 K12 [PROTO_27]
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
      129 DUPTABLE                         R20 K30 [{"refreshKey", "selectionRequest", "historyService", "onCatalogChanged", "slotApi", "terrain"}]
      130 GETTABLEKS                       R21 R0 K26 ["refreshKey"]
      132 SETTABLEKS                       R21 R20 K26 ["refreshKey"]
      134 GETTABLEKS                       R21 R0 K27 ["selectionRequest"]
      136 SETTABLEKS                       R21 R20 K27 ["selectionRequest"]
      138 GETTABLEKS                       R21 R0 K28 ["historyService"]
      140 SETTABLEKS                       R21 R20 K28 ["historyService"]
      142 GETTABLEKS                       R21 R0 K29 ["onCatalogChanged"]
      144 SETTABLEKS                       R21 R20 K29 ["onCatalogChanged"]
      146 SETTABLEKS                       R1 R20 K0 ["slotApi"]
      148 SETTABLEKS                       R2 R20 K1 ["terrain"]
      150 CALL                             R18 2 1
      151 SETTABLEKS                       R18 R17 K17 ["Content"]
      153 CALL                             R14 3 1
      154 SETTABLEKS                       R14 R13 K20 ["FoundationProvider"]
      156 CALL                             R11 2 1
      157 SETTABLEKS                       R11 R10 K17 ["Content"]
      159 CALL                             R7 3 -1
      160 RETURN                           R7 -1

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
      184 DUPCLOSURE                       R32 K56 [PROTO_24]
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R29
      187 CAPTURE                          VAL R25
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R17
      191 CAPTURE                          VAL R22
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
      203 DUPCLOSURE                       R33 K57 [PROTO_32]
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
