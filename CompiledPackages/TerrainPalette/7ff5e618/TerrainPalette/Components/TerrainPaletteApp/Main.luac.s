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
        1 GETTABLEKS                       R0 R0 K0 ["onSelectionChanged"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["onSelectionChanged"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateEntry"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["commitEntryUpdate"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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
      132 CAPTURE                          VAL R3
      133 NEWTABLE                         R27 0 2
      135 GETTABLEKS                       R28 R0 K22 ["onSelectionChanged"]
      137 MOVE                             R29 R3
      138 SETLIST                          R27 R28 2 [1]
      140 CALL                             R25 2 0
      141 GETUPVAL                         R25 0
      142 GETTABLEKS                       R25 R25 K21 ["useEffect"]
      144 NEWCLOSURE                       R26 P4
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R24
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R13
      151 NEWTABLE                         R27 0 2
      153 GETTABLEKS                       R28 R0 K23 ["selectionRequest"]
      155 MOVE                             R29 R21
      156 SETLIST                          R27 R28 2 [1]
      158 CALL                             R25 2 0
      159 GETUPVAL                         R25 6
      160 NEWCLOSURE                       R26 P5
      161 CAPTURE                          VAL R4
      162 CALL                             R25 1 1
      163 GETUPVAL                         R26 6
      164 NEWCLOSURE                       R27 P6
      165 CAPTURE                          VAL R4
      166 CALL                             R26 1 1
      167 GETUPVAL                         R27 6
      168 NEWCLOSURE                       R28 P7
      169 CAPTURE                          VAL R20
      170 CALL                             R27 1 1
      171 GETUPVAL                         R28 6
      172 NEWCLOSURE                       R29 P8
      173 CAPTURE                          VAL R20
      174 CALL                             R28 1 1
      175 GETUPVAL                         R29 6
      176 NEWCLOSURE                       R30 P9
      177 CAPTURE                          VAL R20
      178 CAPTURE                          UPVAL U7
      179 CAPTURE                          UPVAL U8
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R13
      183 CALL                             R29 1 1
      184 GETUPVAL                         R30 6
      185 NEWCLOSURE                       R31 P10
      186 CAPTURE                          VAL R4
      187 CALL                             R30 1 1
      188 GETUPVAL                         R31 6
      189 NEWCLOSURE                       R32 P11
      190 CAPTURE                          VAL R20
      191 CAPTURE                          VAL R6
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R13
      194 CALL                             R31 1 1
      195 GETUPVAL                         R32 6
      196 NEWCLOSURE                       R33 P12
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R31
      199 CALL                             R32 1 1
      200 GETUPVAL                         R33 6
      201 NEWCLOSURE                       R34 P13
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R31
      204 CALL                             R33 1 1
      205 GETUPVAL                         R34 6
      206 NEWCLOSURE                       R35 P14
      207 CAPTURE                          VAL R20
      208 CAPTURE                          VAL R4
      209 CAPTURE                          VAL R13
      210 CALL                             R34 1 1
      211 GETUPVAL                         R35 6
      212 NEWCLOSURE                       R36 P15
      213 CAPTURE                          UPVAL U7
      214 CAPTURE                          VAL R15
      215 CAPTURE                          VAL R34
      216 CALL                             R35 1 1
      217 GETUPVAL                         R36 6
      218 NEWCLOSURE                       R37 P16
      219 CAPTURE                          VAL R3
      220 CAPTURE                          VAL R35
      221 CALL                             R36 1 1
      222 GETUPVAL                         R37 6
      223 NEWCLOSURE                       R38 P17
      224 CAPTURE                          VAL R15
      225 CALL                             R37 1 1
      226 GETUPVAL                         R38 6
      227 NEWCLOSURE                       R39 P18
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R15
      230 CAPTURE                          VAL R34
      231 CALL                             R38 1 1
      232 GETUPVAL                         R39 6
      233 NEWCLOSURE                       R40 P19
      234 CAPTURE                          VAL R6
      235 CALL                             R39 1 1
      236 GETUPVAL                         R40 6
      237 NEWCLOSURE                       R41 P20
      238 CAPTURE                          VAL R8
      239 CALL                             R40 1 1
      240 GETUPVAL                         R41 6
      241 NEWCLOSURE                       R42 P21
      242 CAPTURE                          VAL R13
      243 CALL                             R41 1 1
      244 GETUPVAL                         R42 6
      245 NEWCLOSURE                       R43 P22
      246 CAPTURE                          UPVAL U9
      247 CAPTURE                          VAL R16
      248 CAPTURE                          VAL R2
      249 CAPTURE                          VAL R17
      250 CAPTURE                          VAL R18
      251 CAPTURE                          VAL R9
      252 CALL                             R42 1 1
      253 GETUPVAL                         R43 6
      254 NEWCLOSURE                       R44 P23
      255 CAPTURE                          VAL R16
      256 CAPTURE                          VAL R2
      257 CAPTURE                          VAL R17
      258 CAPTURE                          VAL R10
      259 CAPTURE                          VAL R18
      260 CALL                             R43 1 1
      261 GETUPVAL                         R44 10
      262 GETUPVAL                         R45 11
      263 GETTABLEKS                       R45 R45 K24 ["Heartbeat"]
      265 MOVE                             R46 R43
      266 CALL                             R44 2 0
      267 GETUPVAL                         R44 12
      268 CALL                             R44 0 1
      269 GETUPVAL                         R45 12
      270 CALL                             R45 0 1
      271 GETUPVAL                         R46 0
      272 GETTABLEKS                       R46 R46 K25 ["createElement"]
      274 GETUPVAL                         R47 13
      275 DUPTABLE                         R48 K28 [{["tag"] = "col gap-medium size-full padding-medium"}]
      276 DUPTABLE                         R49 K32 [{"TopBar", "Body", "DeleteWarning"}]
      277 GETUPVAL                         R50 0
      278 GETTABLEKS                       R50 R50 K25 ["createElement"]
      280 GETUPVAL                         R51 14
      281 DUPTABLE                         R52 K39 [{"layoutOrder", "onAddMaterial", "onSearchChanged", "onViewTypeChanged", "searchText", "viewType"}]
      282 MOVE                             R53 R44
      283 CALL                             R53 0 1
      284 SETTABLEKS                       R53 R52 K33 ["layoutOrder"]
      286 SETTABLEKS                       R29 R52 K34 ["onAddMaterial"]
      288 SETTABLEKS                       R39 R52 K35 ["onSearchChanged"]
      290 SETTABLEKS                       R40 R52 K36 ["onViewTypeChanged"]
      292 SETTABLEKS                       R5 R52 K37 ["searchText"]
      294 SETTABLEKS                       R7 R52 K38 ["viewType"]
      296 CALL                             R50 2 1
      297 SETTABLEKS                       R50 R49 K29 ["TopBar"]
      299 GETUPVAL                         R50 0
      300 GETTABLEKS                       R50 R50 K25 ["createElement"]
      302 GETUPVAL                         R51 13
      303 DUPTABLE                         R52 K42 [{["tag"] = "row grow size-full-0", ["LayoutOrder"]}]
      304 MOVE                             R53 R44
      305 CALL                             R53 0 1
      306 SETTABLEKS                       R53 R52 K41 ["LayoutOrder"]
      308 DUPTABLE                         R53 K46 [{"Grid", "ResizeHandle", "Details"}]
      309 GETUPVAL                         R54 0
      310 GETTABLEKS                       R54 R54 K25 ["createElement"]
      312 GETUPVAL                         R55 13
      313 DUPTABLE                         R56 K48 [{["tag"] = "grow size-0-full", ["LayoutOrder"]}]
      314 MOVE                             R57 R45
      315 CALL                             R57 0 1
      316 SETTABLEKS                       R57 R56 K41 ["LayoutOrder"]
      318 DUPTABLE                         R57 K50 [{"MaterialGrid"}]
      319 GETUPVAL                         R58 0
      320 GETTABLEKS                       R58 R58 K25 ["createElement"]
      322 GETUPVAL                         R59 15
      323 DUPTABLE                         R60 K60 [{"slotEntries", "selectedSlotIndex", "scrollToSlotIndex", "viewType", "canDuplicate", "onSlotContextMenuOpened", "onSlotDelete", "onSlotDuplicate", "onSlotSelected", "onScrolledToSlot"}]
      324 SETTABLEKS                       R23 R60 K51 ["slotEntries"]
      326 SETTABLEKS                       R3 R60 K52 ["selectedSlotIndex"]
      328 SETTABLEKS                       R12 R60 K53 ["scrollToSlotIndex"]
      330 SETTABLEKS                       R7 R60 K38 ["viewType"]
      332 GETTABLEKS                       R61 R20 K61 ["canAddSlot"]
      334 SETTABLEKS                       R61 R60 K54 ["canDuplicate"]
      336 SETTABLEKS                       R26 R60 K55 ["onSlotContextMenuOpened"]
      338 SETTABLEKS                       R35 R60 K56 ["onSlotDelete"]
      340 SETTABLEKS                       R33 R60 K57 ["onSlotDuplicate"]
      342 SETTABLEKS                       R25 R60 K58 ["onSlotSelected"]
      344 SETTABLEKS                       R41 R60 K59 ["onScrolledToSlot"]
      346 CALL                             R58 2 1
      347 SETTABLEKS                       R58 R57 K49 ["MaterialGrid"]
      349 CALL                             R54 3 1
      350 SETTABLEKS                       R54 R53 K43 ["Grid"]
      352 JUMPIFNOT                        R22 ; [+51]
      353 GETUPVAL                         R54 0
      354 GETTABLEKS                       R54 R54 K25 ["createElement"]
      356 GETUPVAL                         R55 13
      357 DUPTABLE                         R56 K66 [{["LayoutOrder"], ["Size"], ["onStateChanged"], ["testId"] = "DetailsResizeHandle"}]
      358 MOVE                             R57 R45
      359 CALL                             R57 0 1
      360 SETTABLEKS                       R57 R56 K41 ["LayoutOrder"]
      362 GETIMPORT                        R57 K69 [UDim2.new]
      364 LOADN                            R58 0
      365 LOADN                            R59 6
      366 LOADN                            R60 1
      367 LOADN                            R61 0
      368 CALL                             R57 4 1
      369 SETTABLEKS                       R57 R56 K62 ["Size"]
      371 SETTABLEKS                       R42 R56 K63 ["onStateChanged"]
      373 DUPTABLE                         R57 K71 [{"Divider"}]
      374 GETUPVAL                         R58 0
      375 GETTABLEKS                       R58 R58 K25 ["createElement"]
      377 GETUPVAL                         R59 13
      378 DUPTABLE                         R60 K74 [{["tag"] = "position-top-center anchor-top-center", ["Size"], ["backgroundStyle"]}]
      379 GETIMPORT                        R61 K69 [UDim2.new]
      381 LOADN                            R62 0
      382 GETTABLEKS                       R63 R19 K75 ["Stroke"]
      384 GETTABLEKS                       R63 R63 K76 ["Standard"]
      386 LOADN                            R64 1
      387 LOADN                            R65 0
      388 CALL                             R61 4 1
      389 SETTABLEKS                       R61 R60 K62 ["Size"]
      391 GETTABLEKS                       R61 R19 K77 ["Color"]
      393 GETTABLEKS                       R61 R61 K75 ["Stroke"]
      395 GETTABLEKS                       R61 R61 K78 ["Default"]
      397 SETTABLEKS                       R61 R60 K73 ["backgroundStyle"]
      399 CALL                             R58 2 1
      400 SETTABLEKS                       R58 R57 K70 ["Divider"]
      402 CALL                             R54 3 1
      403 JUMP                             ; [+1]
      404 LOADNIL                          R54
      405 SETTABLEKS                       R54 R53 K44 ["ResizeHandle"]
      407 JUMPIFNOT                        R22 ; [+38]
      408 GETUPVAL                         R54 0
      409 GETTABLEKS                       R54 R54 K25 ["createElement"]
      411 GETUPVAL                         R55 13
      412 DUPTABLE                         R56 K80 [{["tag"] = "no-flex", ["LayoutOrder"], ["Size"]}]
      413 MOVE                             R57 R45
      414 CALL                             R57 0 1
      415 SETTABLEKS                       R57 R56 K41 ["LayoutOrder"]
      417 SETTABLEKS                       R11 R56 K62 ["Size"]
      419 DUPTABLE                         R57 K82 [{"Panel"}]
      420 GETUPVAL                         R58 0
      421 GETTABLEKS                       R58 R58 K25 ["createElement"]
      423 GETUPVAL                         R59 16
      424 DUPTABLE                         R60 K89 [{"canDuplicate", "entry", "onClose", "onDelete", "onDuplicate", "onEntryChangeCommitted", "onEntryChanged"}]
      425 GETTABLEKS                       R61 R20 K61 ["canAddSlot"]
      427 SETTABLEKS                       R61 R60 K54 ["canDuplicate"]
      429 SETTABLEKS                       R22 R60 K83 ["entry"]
      431 SETTABLEKS                       R30 R60 K84 ["onClose"]
      433 SETTABLEKS                       R36 R60 K85 ["onDelete"]
      435 SETTABLEKS                       R32 R60 K86 ["onDuplicate"]
      437 SETTABLEKS                       R28 R60 K87 ["onEntryChangeCommitted"]
      439 SETTABLEKS                       R27 R60 K88 ["onEntryChanged"]
      441 CALL                             R58 2 1
      442 SETTABLEKS                       R58 R57 K81 ["Panel"]
      444 CALL                             R54 3 1
      445 JUMP                             ; [+1]
      446 LOADNIL                          R54
      447 SETTABLEKS                       R54 R53 K45 ["Details"]
      449 CALL                             R50 3 1
      450 SETTABLEKS                       R50 R49 K30 ["Body"]
      452 JUMPIFEQKNIL                     R14 ; [+12]
      454 GETUPVAL                         R50 0
      455 GETTABLEKS                       R50 R50 K25 ["createElement"]
      457 GETUPVAL                         R51 17
      458 DUPTABLE                         R52 K92 [{"onCancel", "onConfirm"}]
      459 SETTABLEKS                       R37 R52 K90 ["onCancel"]
      461 SETTABLEKS                       R38 R52 K91 ["onConfirm"]
      463 CALL                             R50 2 1
      464 JUMP                             ; [+1]
      465 LOADNIL                          R50
      466 SETTABLEKS                       R50 R49 K31 ["DeleteWarning"]
      468 CALL                             R46 3 -1
      469 RETURN                           R46 -1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["localization"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+4]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 RETURN                           R0 1
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_30:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["destroy"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_32:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_33:
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
       50 DUPCLOSURE                       R6 K11 [PROTO_27]
       51 CAPTURE                          UPVAL U3
       52 NEWTABLE                         R7 0 0
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       58 DUPCLOSURE                       R7 K12 [PROTO_28]
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
      129 DUPTABLE                         R20 K31 [{"refreshKey", "selectionRequest", "historyService", "onCatalogChanged", "onSelectionChanged", "slotApi", "terrain"}]
      130 GETTABLEKS                       R21 R0 K26 ["refreshKey"]
      132 SETTABLEKS                       R21 R20 K26 ["refreshKey"]
      134 GETTABLEKS                       R21 R0 K27 ["selectionRequest"]
      136 SETTABLEKS                       R21 R20 K27 ["selectionRequest"]
      138 GETTABLEKS                       R21 R0 K28 ["historyService"]
      140 SETTABLEKS                       R21 R20 K28 ["historyService"]
      142 GETTABLEKS                       R21 R0 K29 ["onCatalogChanged"]
      144 SETTABLEKS                       R21 R20 K29 ["onCatalogChanged"]
      146 GETTABLEKS                       R21 R0 K30 ["onSelectionChanged"]
      148 SETTABLEKS                       R21 R20 K30 ["onSelectionChanged"]
      150 SETTABLEKS                       R1 R20 K0 ["slotApi"]
      152 SETTABLEKS                       R2 R20 K1 ["terrain"]
      154 CALL                             R18 2 1
      155 SETTABLEKS                       R18 R17 K17 ["Content"]
      157 CALL                             R14 3 1
      158 SETTABLEKS                       R14 R13 K20 ["FoundationProvider"]
      160 CALL                             R11 2 1
      161 SETTABLEKS                       R11 R10 K17 ["Content"]
      163 CALL                             R7 3 -1
      164 RETURN                           R7 -1

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
      184 DUPCLOSURE                       R32 K56 [PROTO_25]
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
      203 DUPCLOSURE                       R33 K57 [PROTO_33]
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
