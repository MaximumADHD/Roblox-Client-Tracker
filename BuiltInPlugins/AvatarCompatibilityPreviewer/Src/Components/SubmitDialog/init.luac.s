PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEN                        R0 R1 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["showSaveToRoblox"]
        5 NEWTABLE                         R2 0 1
        7 GETTABLEKS                       R3 R0 K1 ["instance"]
        9 SETLIST                          R2 R3 1 [1]
       11 GETTABLEKS                       R3 R0 K2 ["assetType"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 LENGTH                           R0 R1
        5 JUMPIFNOTEQKN                    R0 K0 [1] ; [+11]
        7 GETIMPORT                        R0 K3 [task.spawn]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K4 ["close"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 CALL                             R5 0 1
        6 JUMPIFNOT                        R5 ; [+10]
        7 GETUPVAL                         R5 2
        8 LOADK                            R7 K0 ["Toolbox.SaveToRobloxProgress"]
        9 MOVE                             R9 R3
       10 LOADK                            R10 K1 [","]
       11 GETUPVAL                         R12 0
       12 LENGTH                           R11 R12
       13 CONCAT                           R8 R9 R11
       14 NAMECALL                         R5 R5 K2 ["SetItem"]
       16 CALL                             R5 3 0
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K3 ["showSaveToRoblox"]
       20 NEWTABLE                         R6 0 1
       22 GETTABLEKS                       R7 R4 K4 ["instance"]
       24 SETLIST                          R6 R7 1 [1]
       26 GETTABLEKS                       R7 R4 K5 ["assetType"]
       28 GETUPVAL                         R10 0
       29 LENGTH                           R9 R10
       30 JUMPIFNOTEQ                      R3 R9 ; [+2]
       32 LOADB                            R8 0 +1
       33 LOADB                            R8 1
       34 CALL                             R5 3 0
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K6 ["onUGCSubmitCompleted"]
       38 NAMECALL                         R5 R5 K7 ["Wait"]
       40 CALL                             R5 1 1
       41 JUMPIF                           R5 ; [+2]
       42 FORGLOOP                         R0 2 ; [-39]
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["close"]
        3 CALL                             R1 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["cancel"] ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R4 K2 [table.find]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 CALL                             R4 2 1
        5 FASTCALL2K                       ASSERT R4 K3 ; [+4]
        7 LOADK                            R5 K3 ["Couldn't find available choice index for A"]
        8 GETIMPORT                        R3 K5 [assert]
       10 CALL                             R3 2 1
       11 GETIMPORT                        R5 K2 [table.find]
       13 GETUPVAL                         R6 0
       14 MOVE                             R7 R1
       15 CALL                             R5 2 1
       16 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       18 LOADK                            R6 K6 ["Couldn't find available choice index for B"]
       19 GETIMPORT                        R4 K5 [assert]
       21 CALL                             R4 2 1
       22 JUMPIFLT                         R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [table.find]
        6 MOVE                             R3 R1
        7 GETUPVAL                         R4 0
        8 CALL                             R2 2 1
        9 JUMPIFEQKNIL                     R2 ; [+7]
       11 GETIMPORT                        R3 K6 [table.remove]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 0
       16 RETURN                           R1 1
       17 GETUPVAL                         R5 0
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K8 [table.insert]
       23 CALL                             R3 2 0
       24 GETIMPORT                        R3 K10 [table.sort]
       26 MOVE                             R4 R1
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U1
       29 CALL                             R3 2 0
       30 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["ok"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["cancel"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["instance"]
        2 GETTABLEKS                       R2 R2 K1 ["Name"]
        4 GETIMPORT                        R4 K4 [table.find]
        6 GETUPVAL                         R5 0
        7 MOVE                             R6 R1
        8 CALL                             R4 2 1
        9 JUMPIFNOTEQKNIL                  R4 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K5 ["new"]
       16 CALL                             R4 0 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K6 ["createElement"]
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R6 R6 K7 ["View"]
       23 DUPTABLE                         R7 K12 [{"key", "tag", "Size", "LayoutOrder"}]
       24 GETTABLEKS                       R12 R1 K13 ["assetType"]
       26 FASTCALL1                        TOSTRING R12 ; [+2]
       27 GETIMPORT                        R11 K15 [tostring]
       29 CALL                             R11 1 1
       30 MOVE                             R9 R11
       31 GETTABLEKS                       R10 R1 K0 ["instance"]
       33 GETTABLEKS                       R10 R10 K1 ["Name"]
       35 CONCAT                           R8 R9 R10
       36 SETTABLEKS                       R8 R7 K8 ["key"]
       38 LOADK                            R8 K16 ["row align-y-center padding-y-small padding-left-small auto-y"]
       39 SETTABLEKS                       R8 R7 K9 ["tag"]
       41 GETIMPORT                        R8 K19 [UDim2.fromScale]
       43 LOADN                            R9 1
       44 LOADN                            R10 0
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K10 ["Size"]
       48 LOADN                            R8 0
       49 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       51 DUPTABLE                         R8 K23 [{"Thumbnail", "Name", "Spacer", "Checkbox"}]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R9 R9 K6 ["createElement"]
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R10 R10 K7 ["View"]
       58 DUPTABLE                         R11 K24 [{"tag", "Size", "LayoutOrder"}]
       59 LOADK                            R12 K25 ["stroke-default radius-small"]
       60 SETTABLEKS                       R12 R11 K9 ["tag"]
       62 GETIMPORT                        R12 K27 [UDim2.fromOffset]
       64 LOADN                            R13 32
       65 LOADN                            R14 32
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K10 ["Size"]
       69 NAMECALL                         R12 R4 K28 ["getNextOrder"]
       71 CALL                             R12 1 1
       72 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
       74 GETUPVAL                         R12 2
       75 GETTABLEKS                       R12 R12 K6 ["createElement"]
       77 GETUPVAL                         R13 4
       78 DUPTABLE                         R14 K30 [{"Instance"}]
       79 GETTABLEKS                       R15 R1 K0 ["instance"]
       81 SETTABLEKS                       R15 R14 K29 ["Instance"]
       83 CALL                             R12 2 -1
       84 CALL                             R9 -1 1
       85 SETTABLEKS                       R9 R8 K20 ["Thumbnail"]
       87 GETUPVAL                         R9 2
       88 GETTABLEKS                       R9 R9 K6 ["createElement"]
       90 GETUPVAL                         R10 3
       91 GETTABLEKS                       R10 R10 K31 ["Text"]
       93 DUPTABLE                         R11 K32 [{"Text", "tag", "Size", "LayoutOrder"}]
       94 SETTABLEKS                       R2 R11 K31 ["Text"]
       96 LOADK                            R12 K33 ["text-title-small bold auto-y content-default padding-x-medium text-align-x-left text-truncate-end"]
       97 SETTABLEKS                       R12 R11 K9 ["tag"]
       99 GETIMPORT                        R12 K27 [UDim2.fromOffset]
      101 LOADN                            R13 48
      102 LOADN                            R14 0
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K10 ["Size"]
      106 NAMECALL                         R12 R4 K28 ["getNextOrder"]
      108 CALL                             R12 1 1
      109 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
      111 CALL                             R9 2 1
      112 SETTABLEKS                       R9 R8 K1 ["Name"]
      114 GETUPVAL                         R9 2
      115 GETTABLEKS                       R9 R9 K6 ["createElement"]
      117 GETUPVAL                         R10 3
      118 GETTABLEKS                       R10 R10 K7 ["View"]
      120 DUPTABLE                         R11 K34 [{"tag", "LayoutOrder"}]
      121 LOADK                            R12 K35 ["grow"]
      122 SETTABLEKS                       R12 R11 K9 ["tag"]
      124 NAMECALL                         R12 R4 K28 ["getNextOrder"]
      126 CALL                             R12 1 1
      127 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
      129 CALL                             R9 2 1
      130 SETTABLEKS                       R9 R8 K21 ["Spacer"]
      132 GETUPVAL                         R9 2
      133 GETTABLEKS                       R9 R9 K6 ["createElement"]
      135 GETUPVAL                         R10 3
      136 GETTABLEKS                       R10 R10 K22 ["Checkbox"]
      138 DUPTABLE                         R11 K40 [{"isChecked", "label", "onActivated", "size", "LayoutOrder"}]
      139 SETTABLEKS                       R3 R11 K36 ["isChecked"]
      141 LOADK                            R12 K41 [""]
      142 SETTABLEKS                       R12 R11 K37 ["label"]
      144 NEWCLOSURE                       R12 P0
      145 CAPTURE                          UPVAL U5
      146 CAPTURE                          VAL R1
      147 SETTABLEKS                       R12 R11 K38 ["onActivated"]
      149 GETUPVAL                         R12 6
      150 GETTABLEKS                       R12 R12 K42 ["Small"]
      152 SETTABLEKS                       R12 R11 K39 ["size"]
      154 NAMECALL                         R12 R4 K28 ["getNextOrder"]
      156 CALL                             R12 1 1
      157 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
      159 CALL                             R9 2 1
      160 SETTABLEKS                       R9 R8 K22 ["Checkbox"]
      162 CALL                             R5 3 -1
      163 RETURN                           R5 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["collectArray"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["SubmitDialog"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R4 R0 K2 ["avatar"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["useState"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 2
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K4 ["useContext"]
       21 GETUPVAL                         R7 4
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R9 0 1
       33 MOVE                             R10 R3
       34 SETLIST                          R9 R10 1 [1]
       36 CALL                             R7 2 0
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R7 R7 K3 ["useState"]
       40 LOADN                            R8 0
       41 CALL                             R7 1 2
       42 LENGTH                           R11 R3
       43 LOADN                            R12 0
       44 JUMPIFLT                         R12 R11 ; [+2]
       46 LOADB                            R10 0 +1
       47 LOADB                            R10 1
       48 FASTCALL2K                       ASSERT R10 K6 ; [+4]
       50 LOADK                            R11 K6 ["No available publish choices"]
       51 GETIMPORT                        R9 K8 [assert]
       53 CALL                             R9 2 0
       54 LENGTH                           R9 R3
       55 JUMPIFNOTEQKN                    R9 K9 [1] ; [+3]
       57 LOADNIL                          R9
       58 RETURN                           R9 1
       59 GETUPVAL                         R9 3
       60 GETTABLEKS                       R9 R9 K10 ["useCallback"]
       62 NEWCLOSURE                       R10 P1
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R4
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          VAL R6
       68 NEWTABLE                         R11 0 3
       70 GETTABLEKS                       R12 R0 K11 ["close"]
       72 MOVE                             R13 R4
       73 MOVE                             R14 R6
       74 SETLIST                          R11 R12 3 [1]
       76 CALL                             R9 2 1
       77 GETUPVAL                         R10 5
       78 CALL                             R10 0 1
       79 JUMPIFNOT                        R10 ; [+311]
       80 GETUPVAL                         R10 7
       81 GETTABLEKS                       R10 R10 K0 ["use"]
       83 CALL                             R10 0 1
       84 NAMECALL                         R10 R10 K12 ["get"]
       86 CALL                             R10 1 1
       87 GETUPVAL                         R11 3
       88 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       90 NEWCLOSURE                       R12 P2
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R3
       93 NEWTABLE                         R13 0 1
       95 MOVE                             R14 R3
       96 SETLIST                          R13 R14 1 [1]
       98 CALL                             R11 2 1
       99 GETUPVAL                         R12 3
      100 GETTABLEKS                       R12 R12 K10 ["useCallback"]
      102 NEWCLOSURE                       R13 P3
      103 CAPTURE                          VAL R9
      104 NEWTABLE                         R14 0 1
      106 MOVE                             R15 R9
      107 SETLIST                          R14 R15 1 [1]
      109 CALL                             R12 2 1
      110 GETUPVAL                         R13 3
      111 GETTABLEKS                       R13 R13 K10 ["useCallback"]
      113 NEWCLOSURE                       R14 P4
      114 CAPTURE                          VAL R9
      115 NEWTABLE                         R15 0 1
      117 MOVE                             R16 R9
      118 SETLIST                          R15 R16 1 [1]
      120 CALL                             R13 2 1
      121 GETUPVAL                         R14 3
      122 GETTABLEKS                       R14 R14 K13 ["useMemo"]
      124 NEWCLOSURE                       R15 P5
      125 CAPTURE                          UPVAL U8
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R4
      128 CAPTURE                          UPVAL U9
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          UPVAL U11
      132 CAPTURE                          VAL R11
      133 CAPTURE                          UPVAL U12
      134 NEWTABLE                         R16 0 3
      136 MOVE                             R17 R3
      137 MOVE                             R18 R4
      138 MOVE                             R19 R11
      139 SETLIST                          R16 R17 3 [1]
      141 CALL                             R14 2 1
      142 GETUPVAL                         R15 9
      143 GETTABLEKS                       R15 R15 K14 ["new"]
      145 CALL                             R15 0 1
      146 GETUPVAL                         R16 3
      147 GETTABLEKS                       R16 R16 K15 ["createElement"]
      149 GETUPVAL                         R17 13
      150 DUPTABLE                         R18 K23 [{"key", "Title", "MinContentSize", "Size", "Modal", "OnClose", "Enabled"}]
      151 LOADK                            R19 K24 ["SubmitDialogSelectAssets"]
      152 SETTABLEKS                       R19 R18 K16 ["key"]
      154 LOADK                            R19 K25 [""]
      155 SETTABLEKS                       R19 R18 K17 ["Title"]
      157 GETIMPORT                        R19 K27 [Vector2.new]
      159 LOADN                            R20 144
      160 LOADN                            R21 22
      161 CALL                             R19 2 1
      162 SETTABLEKS                       R19 R18 K18 ["MinContentSize"]
      164 GETIMPORT                        R19 K27 [Vector2.new]
      166 LOADN                            R20 144
      167 LOADN                            R21 22
      168 CALL                             R19 2 1
      169 SETTABLEKS                       R19 R18 K19 ["Size"]
      171 LOADB                            R19 1
      172 SETTABLEKS                       R19 R18 K20 ["Modal"]
      174 GETTABLEKS                       R19 R0 K11 ["close"]
      176 SETTABLEKS                       R19 R18 K21 ["OnClose"]
      178 LOADB                            R19 1
      179 SETTABLEKS                       R19 R18 K22 ["Enabled"]
      181 DUPTABLE                         R19 K30 [{"StyleLink", "Content"}]
      182 GETUPVAL                         R20 3
      183 GETTABLEKS                       R20 R20 K15 ["createElement"]
      185 LOADK                            R21 K28 ["StyleLink"]
      186 DUPTABLE                         R22 K32 [{"StyleSheet"}]
      187 SETTABLEKS                       R10 R22 K31 ["StyleSheet"]
      189 CALL                             R20 2 1
      190 SETTABLEKS                       R20 R19 K28 ["StyleLink"]
      192 GETUPVAL                         R20 3
      193 GETTABLEKS                       R20 R20 K15 ["createElement"]
      195 GETUPVAL                         R21 10
      196 GETTABLEKS                       R21 R21 K33 ["View"]
      198 DUPTABLE                         R22 K35 [{"tag"}]
      199 LOADK                            R23 K36 ["col size-full padding-left-medium padding-y-medium padding-right-medium gap-medium"]
      200 SETTABLEKS                       R23 R22 K34 ["tag"]
      202 DUPTABLE                         R23 K39 [{"Title", "ScrollArea", "Footer"}]
      203 GETUPVAL                         R24 3
      204 GETTABLEKS                       R24 R24 K15 ["createElement"]
      206 GETUPVAL                         R25 10
      207 GETTABLEKS                       R25 R25 K40 ["Text"]
      209 DUPTABLE                         R26 K42 [{"Text", "tag", "LayoutOrder"}]
      210 LOADK                            R29 K1 ["SubmitDialog"]
      211 LOADK                            R30 K43 ["SelectAssetsToSaveToRoblox"]
      212 NAMECALL                         R27 R1 K44 ["getText"]
      214 CALL                             R27 3 1
      215 SETTABLEKS                       R27 R26 K40 ["Text"]
      217 LOADK                            R27 K45 ["text-title-medium auto-xy content-emphasis padding-left-small"]
      218 SETTABLEKS                       R27 R26 K34 ["tag"]
      220 NAMECALL                         R27 R15 K46 ["getNextOrder"]
      222 CALL                             R27 1 1
      223 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      225 CALL                             R24 2 1
      226 SETTABLEKS                       R24 R23 K17 ["Title"]
      228 GETUPVAL                         R24 3
      229 GETTABLEKS                       R24 R24 K15 ["createElement"]
      231 GETUPVAL                         R25 10
      232 GETTABLEKS                       R25 R25 K33 ["View"]
      234 DUPTABLE                         R26 K47 [{"tag", "LayoutOrder"}]
      235 LOADK                            R27 K48 ["size-full-0 grow"]
      236 SETTABLEKS                       R27 R26 K34 ["tag"]
      238 NAMECALL                         R27 R15 K46 ["getNextOrder"]
      240 CALL                             R27 1 1
      241 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      243 DUPTABLE                         R27 K50 [{"Scroll"}]
      244 GETUPVAL                         R28 3
      245 GETTABLEKS                       R28 R28 K15 ["createElement"]
      247 GETUPVAL                         R29 10
      248 GETTABLEKS                       R29 R29 K51 ["ScrollView"]
      250 DUPTABLE                         R30 K54 [{"tag", "scroll", "layout"}]
      251 LOADK                            R31 K55 ["size-full"]
      252 SETTABLEKS                       R31 R30 K34 ["tag"]
      254 DUPTABLE                         R31 K61 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
      255 GETIMPORT                        R32 K64 [Enum.ScrollingDirection.Y]
      257 SETTABLEKS                       R32 R31 K56 ["ScrollingDirection"]
      259 GETIMPORT                        R32 K66 [Enum.AutomaticSize.Y]
      261 SETTABLEKS                       R32 R31 K57 ["AutomaticCanvasSize"]
      263 GETIMPORT                        R32 K69 [UDim2.fromScale]
      265 LOADN                            R33 0
      266 LOADN                            R34 1
      267 CALL                             R32 2 1
      268 SETTABLEKS                       R32 R31 K58 ["CanvasSize"]
      270 GETUPVAL                         R32 14
      271 GETTABLEKS                       R32 R32 K70 ["Auto"]
      273 SETTABLEKS                       R32 R31 K59 ["scrollBarVisibility"]
      275 GETIMPORT                        R32 K73 [Enum.ScrollBarInset.Always]
      277 SETTABLEKS                       R32 R31 K60 ["VerticalScrollBarInset"]
      279 SETTABLEKS                       R31 R30 K52 ["scroll"]
      281 DUPTABLE                         R31 K76 [{"SortOrder", "FillDirection"}]
      282 GETIMPORT                        R32 K77 [Enum.SortOrder.LayoutOrder]
      284 SETTABLEKS                       R32 R31 K74 ["SortOrder"]
      286 GETIMPORT                        R32 K79 [Enum.FillDirection.Vertical]
      288 SETTABLEKS                       R32 R31 K75 ["FillDirection"]
      290 SETTABLEKS                       R31 R30 K53 ["layout"]
      292 MOVE                             R31 R14
      293 CALL                             R28 3 1
      294 SETTABLEKS                       R28 R27 K49 ["Scroll"]
      296 CALL                             R24 3 1
      297 SETTABLEKS                       R24 R23 K37 ["ScrollArea"]
      299 GETUPVAL                         R24 3
      300 GETTABLEKS                       R24 R24 K15 ["createElement"]
      302 GETUPVAL                         R25 10
      303 GETTABLEKS                       R25 R25 K33 ["View"]
      305 DUPTABLE                         R26 K47 [{"tag", "LayoutOrder"}]
      306 LOADK                            R27 K80 ["row gap-small align-x-right size-full-0 auto-y"]
      307 SETTABLEKS                       R27 R26 K34 ["tag"]
      309 NAMECALL                         R27 R15 K46 ["getNextOrder"]
      311 CALL                             R27 1 1
      312 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      314 DUPTABLE                         R27 K83 [{"ContinueButton", "CancelButton"}]
      315 GETUPVAL                         R28 3
      316 GETTABLEKS                       R28 R28 K15 ["createElement"]
      318 GETUPVAL                         R29 10
      319 GETTABLEKS                       R29 R29 K84 ["Button"]
      321 DUPTABLE                         R30 K90 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      322 LOADK                            R33 K1 ["SubmitDialog"]
      323 LOADK                            R34 K91 ["Continue"]
      324 NAMECALL                         R31 R1 K44 ["getText"]
      326 CALL                             R31 3 1
      327 SETTABLEKS                       R31 R30 K85 ["text"]
      329 GETUPVAL                         R31 15
      330 GETTABLEKS                       R31 R31 K92 ["Emphasis"]
      332 SETTABLEKS                       R31 R30 K86 ["variant"]
      334 SETTABLEKS                       R12 R30 K87 ["onActivated"]
      336 GETIMPORT                        R32 K94 [next]
      338 MOVE                             R33 R4
      339 CALL                             R32 1 1
      340 JUMPIFEQKNIL                     R32 ; [+2]
      342 LOADB                            R31 0 +1
      343 LOADB                            R31 1
      344 SETTABLEKS                       R31 R30 K88 ["isDisabled"]
      346 GETUPVAL                         R31 12
      347 GETTABLEKS                       R31 R31 K95 ["XSmall"]
      349 SETTABLEKS                       R31 R30 K89 ["size"]
      351 CALL                             R28 2 1
      352 SETTABLEKS                       R28 R27 K81 ["ContinueButton"]
      354 GETUPVAL                         R28 3
      355 GETTABLEKS                       R28 R28 K15 ["createElement"]
      357 GETUPVAL                         R29 10
      358 GETTABLEKS                       R29 R29 K84 ["Button"]
      360 DUPTABLE                         R30 K96 [{"text", "variant", "onActivated", "size"}]
      361 LOADK                            R33 K1 ["SubmitDialog"]
      362 LOADK                            R34 K97 ["Cancel"]
      363 NAMECALL                         R31 R1 K44 ["getText"]
      365 CALL                             R31 3 1
      366 SETTABLEKS                       R31 R30 K85 ["text"]
      368 GETUPVAL                         R31 15
      369 GETTABLEKS                       R31 R31 K98 ["Standard"]
      371 SETTABLEKS                       R31 R30 K86 ["variant"]
      373 SETTABLEKS                       R13 R30 K87 ["onActivated"]
      375 GETUPVAL                         R31 12
      376 GETTABLEKS                       R31 R31 K95 ["XSmall"]
      378 SETTABLEKS                       R31 R30 K89 ["size"]
      380 CALL                             R28 2 1
      381 SETTABLEKS                       R28 R27 K82 ["CancelButton"]
      383 CALL                             R24 3 1
      384 SETTABLEKS                       R24 R23 K38 ["Footer"]
      386 CALL                             R20 3 1
      387 SETTABLEKS                       R20 R19 K29 ["Content"]
      389 CALL                             R16 3 -1
      390 RETURN                           R16 -1
      391 GETUPVAL                         R10 3
      392 GETTABLEKS                       R10 R10 K15 ["createElement"]
      394 GETUPVAL                         R11 16
      395 DUPTABLE                         R12 K101 [{"key", "Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
      396 LOADK                            R13 K1 ["SubmitDialog"]
      397 SETTABLEKS                       R13 R12 K16 ["key"]
      399 LOADB                            R13 1
      400 SETTABLEKS                       R13 R12 K22 ["Enabled"]
      402 LOADB                            R13 1
      403 SETTABLEKS                       R13 R12 K20 ["Modal"]
      405 LOADK                            R15 K1 ["SubmitDialog"]
      406 LOADK                            R16 K17 ["Title"]
      407 NAMECALL                         R13 R1 K44 ["getText"]
      409 CALL                             R13 3 1
      410 SETTABLEKS                       R13 R12 K17 ["Title"]
      412 GETIMPORT                        R13 K27 [Vector2.new]
      414 GETTABLEKS                       R14 R2 K102 ["Width"]
      416 MOVE                             R15 R7
      417 CALL                             R13 2 1
      418 SETTABLEKS                       R13 R12 K18 ["MinContentSize"]
      420 NEWTABLE                         R13 0 2
      422 DUPTABLE                         R14 K104 [{"Key", "Text"}]
      423 LOADK                            R15 K105 ["cancel"]
      424 SETTABLEKS                       R15 R14 K103 ["Key"]
      426 LOADK                            R17 K1 ["SubmitDialog"]
      427 LOADK                            R18 K97 ["Cancel"]
      428 NAMECALL                         R15 R1 K44 ["getText"]
      430 CALL                             R15 3 1
      431 SETTABLEKS                       R15 R14 K40 ["Text"]
      433 DUPTABLE                         R15 K108 [{"Key", "Text", "Style", "StyleModifier"}]
      434 LOADK                            R16 K109 ["ok"]
      435 SETTABLEKS                       R16 R15 K103 ["Key"]
      437 LOADK                            R18 K1 ["SubmitDialog"]
      438 LOADK                            R19 K110 ["OK"]
      439 NAMECALL                         R16 R1 K44 ["getText"]
      441 CALL                             R16 3 1
      442 SETTABLEKS                       R16 R15 K40 ["Text"]
      444 LOADK                            R16 K111 ["RoundPrimary"]
      445 SETTABLEKS                       R16 R15 K106 ["Style"]
      447 GETIMPORT                        R17 K94 [next]
      449 MOVE                             R18 R4
      450 CALL                             R17 1 1
      451 JUMPIFNOTEQKNIL                  R17 ; [+5]
      453 GETUPVAL                         R16 17
      454 GETTABLEKS                       R16 R16 K112 ["Disabled"]
      456 JUMP                             ; [+1]
      457 LOADNIL                          R16
      458 SETTABLEKS                       R16 R15 K107 ["StyleModifier"]
      460 SETLIST                          R13 R14 2 [1]
      462 SETTABLEKS                       R13 R12 K99 ["Buttons"]
      464 SETTABLEKS                       R9 R12 K100 ["OnButtonPressed"]
      466 GETTABLEKS                       R13 R0 K11 ["close"]
      468 SETTABLEKS                       R13 R12 K21 ["OnClose"]
      470 GETUPVAL                         R13 3
      471 GETTABLEKS                       R13 R13 K15 ["createElement"]
      473 GETUPVAL                         R14 18
      474 DUPTABLE                         R15 K117 [{"avatar", "setHeight", "availableChoices", "publishChoices", "setPublishChoices"}]
      475 GETTABLEKS                       R16 R0 K2 ["avatar"]
      477 SETTABLEKS                       R16 R15 K2 ["avatar"]
      479 SETTABLEKS                       R8 R15 K113 ["setHeight"]
      481 SETTABLEKS                       R3 R15 K114 ["availableChoices"]
      483 SETTABLEKS                       R4 R15 K115 ["publishChoices"]
      485 SETTABLEKS                       R5 R15 K116 ["setPublishChoices"]
      487 CALL                             R13 2 -1
      488 CALL                             R10 -1 -1
      489 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Resources"]
       41 GETTABLEKS                       R6 R6 K13 ["Theme"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Types"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K11 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Components"]
       57 GETTABLEKS                       R8 R8 K16 ["ItemDataPreview"]
       59 GETTABLEKS                       R8 R8 K17 ["ItemDataPreviewModel"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K11 ["Src"]
       66 GETTABLEKS                       R9 R9 K15 ["Components"]
       68 GETTABLEKS                       R9 R9 K18 ["StudioAssetServiceContext"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETIMPORT                        R10 K1 [script]
       75 GETTABLEKS                       R10 R10 K19 ["SubmitInner"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETIMPORT                        R11 K1 [script]
       82 GETTABLEKS                       R11 R11 K20 ["useAvailableSubmitChoices"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K22 [game]
       87 LOADK                            R13 K23 ["MemStorageService"]
       88 NAMECALL                         R11 R11 K24 ["GetService"]
       90 CALL                             R11 2 1
       91 GETIMPORT                        R12 K5 [require]
       93 GETTABLEKS                       R13 R0 K11 ["Src"]
       95 GETTABLEKS                       R13 R13 K25 ["Flags"]
       97 GETTABLEKS                       R13 R13 K26 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       99 CALL                             R12 1 1
      100 GETTABLEKS                       R13 R2 K27 ["UI"]
      102 GETTABLEKS                       R14 R13 K28 ["Dialog"]
      104 GETTABLEKS                       R15 R13 K29 ["StyledDialog"]
      106 GETTABLEKS                       R16 R2 K30 ["ContextServices"]
      108 GETTABLEKS                       R16 R16 K31 ["Design"]
      110 GETTABLEKS                       R17 R2 K30 ["ContextServices"]
      112 GETTABLEKS                       R17 R17 K32 ["Localization"]
      114 GETTABLEKS                       R18 R2 K30 ["ContextServices"]
      116 GETTABLEKS                       R18 R18 K33 ["Stylizer"]
      118 GETTABLEKS                       R19 R2 K34 ["Util"]
      120 GETTABLEKS                       R19 R19 K35 ["StyleModifier"]
      122 GETTABLEKS                       R20 R2 K34 ["Util"]
      124 GETTABLEKS                       R20 R20 K36 ["LayoutOrderIterator"]
      126 GETTABLEKS                       R21 R3 K37 ["Enums"]
      128 GETTABLEKS                       R21 R21 K38 ["ButtonVariant"]
      130 GETTABLEKS                       R22 R3 K37 ["Enums"]
      132 GETTABLEKS                       R22 R22 K39 ["InputSize"]
      134 GETTABLEKS                       R23 R3 K37 ["Enums"]
      136 GETTABLEKS                       R23 R23 K40 ["ScrollBarVisibility"]
      138 DUPCLOSURE                       R24 K41 [PROTO_12]
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R23
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R9
      158 RETURN                           R24 1
