PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEN                        R0 R1 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["showSaveToRoblox"]
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
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R0 R1 K4 ["close"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["showSaveToRoblox"]
        7 NEWTABLE                         R6 0 1
        9 GETTABLEKS                       R7 R4 K1 ["instance"]
       11 SETLIST                          R6 R7 1 [1]
       13 GETTABLEKS                       R7 R4 K2 ["assetType"]
       15 GETUPVAL                         R10 0
       16 LENGTH                           R9 R10
       17 JUMPIFNOTEQ                      R3 R9 ; [+2]
       19 LOADB                            R8 0 +1
       20 LOADB                            R8 1
       21 CALL                             R5 3 0
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K3 ["onUGCSubmitCompleted"]
       25 NAMECALL                         R5 R5 K4 ["Wait"]
       27 CALL                             R5 1 1
       28 JUMPIF                           R5 ; [+2]
       29 FORGLOOP                         R0 2 ; [-26]
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["close"]
        3 CALL                             R1 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["cancel"] ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

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
        0 GETTABLEKS                       R3 R1 K0 ["instance"]
        2 GETTABLEKS                       R2 R3 K1 ["Name"]
        4 GETIMPORT                        R4 K4 [table.find]
        6 GETUPVAL                         R5 0
        7 MOVE                             R6 R1
        8 CALL                             R4 2 1
        9 JUMPIFNOTEQKNIL                  R4 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K5 ["new"]
       16 CALL                             R4 0 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K6 ["createElement"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K7 ["View"]
       23 DUPTABLE                         R7 K12 [{"key", "tag", "Size", "LayoutOrder"}]
       24 GETTABLEKS                       R12 R1 K13 ["assetType"]
       26 FASTCALL1                        TOSTRING R12 ; [+2]
       27 GETIMPORT                        R11 K15 [tostring]
       29 CALL                             R11 1 1
       30 MOVE                             R9 R11
       31 GETTABLEKS                       R11 R1 K0 ["instance"]
       33 GETTABLEKS                       R10 R11 K1 ["Name"]
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
       52 GETUPVAL                         R10 2
       53 GETTABLEKS                       R9 R10 K6 ["createElement"]
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R10 R11 K7 ["View"]
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
       74 GETUPVAL                         R13 2
       75 GETTABLEKS                       R12 R13 K6 ["createElement"]
       77 GETUPVAL                         R13 4
       78 DUPTABLE                         R14 K30 [{"Instance"}]
       79 GETTABLEKS                       R15 R1 K0 ["instance"]
       81 SETTABLEKS                       R15 R14 K29 ["Instance"]
       83 CALL                             R12 2 -1
       84 CALL                             R9 -1 1
       85 SETTABLEKS                       R9 R8 K20 ["Thumbnail"]
       87 GETUPVAL                         R10 2
       88 GETTABLEKS                       R9 R10 K6 ["createElement"]
       90 GETUPVAL                         R11 3
       91 GETTABLEKS                       R10 R11 K31 ["Text"]
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
      114 GETUPVAL                         R10 2
      115 GETTABLEKS                       R9 R10 K6 ["createElement"]
      117 GETUPVAL                         R11 3
      118 GETTABLEKS                       R10 R11 K7 ["View"]
      120 DUPTABLE                         R11 K34 [{"tag", "LayoutOrder"}]
      121 LOADK                            R12 K35 ["grow"]
      122 SETTABLEKS                       R12 R11 K9 ["tag"]
      124 NAMECALL                         R12 R4 K28 ["getNextOrder"]
      126 CALL                             R12 1 1
      127 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
      129 CALL                             R9 2 1
      130 SETTABLEKS                       R9 R8 K21 ["Spacer"]
      132 GETUPVAL                         R10 2
      133 GETTABLEKS                       R9 R10 K6 ["createElement"]
      135 GETUPVAL                         R11 3
      136 GETTABLEKS                       R10 R11 K22 ["Checkbox"]
      138 DUPTABLE                         R11 K40 [{"isChecked", "label", "onActivated", "size", "LayoutOrder"}]
      139 SETTABLEKS                       R3 R11 K36 ["isChecked"]
      141 LOADK                            R12 K41 [""]
      142 SETTABLEKS                       R12 R11 K37 ["label"]
      144 NEWCLOSURE                       R12 P0
      145 CAPTURE                          UPVAL U5
      146 CAPTURE                          VAL R1
      147 SETTABLEKS                       R12 R11 K38 ["onActivated"]
      149 GETUPVAL                         R13 6
      150 GETTABLEKS                       R12 R13 K42 ["Small"]
      152 SETTABLEKS                       R12 R11 K39 ["size"]
      154 NAMECALL                         R12 R4 K28 ["getNextOrder"]
      156 CALL                             R12 1 1
      157 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
      159 CALL                             R9 2 1
      160 SETTABLEKS                       R9 R8 K22 ["Checkbox"]
      162 CALL                             R5 3 -1
      163 RETURN                           R5 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["collectArray"]
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
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K3 ["useState"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 2
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R6 R7 K4 ["useContext"]
       21 GETUPVAL                         R7 4
       22 CALL                             R6 1 1
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R7 R8 K5 ["useEffect"]
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R9 0 1
       33 MOVE                             R10 R3
       34 SETLIST                          R9 R10 1 [1]
       36 CALL                             R7 2 0
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R7 R8 K3 ["useState"]
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
       59 GETUPVAL                         R10 3
       60 GETTABLEKS                       R9 R10 K10 ["useCallback"]
       62 NEWCLOSURE                       R10 P1
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R6
       66 NEWTABLE                         R11 0 3
       68 GETTABLEKS                       R12 R0 K11 ["close"]
       70 MOVE                             R13 R4
       71 MOVE                             R14 R6
       72 SETLIST                          R11 R12 3 [1]
       74 CALL                             R9 2 1
       75 GETUPVAL                         R10 5
       76 CALL                             R10 0 1
       77 JUMPIFNOT                        R10 ; [+311]
       78 GETUPVAL                         R11 6
       79 GETTABLEKS                       R10 R11 K0 ["use"]
       81 CALL                             R10 0 1
       82 NAMECALL                         R10 R10 K12 ["get"]
       84 CALL                             R10 1 1
       85 GETUPVAL                         R12 3
       86 GETTABLEKS                       R11 R12 K10 ["useCallback"]
       88 NEWCLOSURE                       R12 P2
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R3
       91 NEWTABLE                         R13 0 1
       93 MOVE                             R14 R3
       94 SETLIST                          R13 R14 1 [1]
       96 CALL                             R11 2 1
       97 GETUPVAL                         R13 3
       98 GETTABLEKS                       R12 R13 K10 ["useCallback"]
      100 NEWCLOSURE                       R13 P3
      101 CAPTURE                          VAL R9
      102 NEWTABLE                         R14 0 1
      104 MOVE                             R15 R9
      105 SETLIST                          R14 R15 1 [1]
      107 CALL                             R12 2 1
      108 GETUPVAL                         R14 3
      109 GETTABLEKS                       R13 R14 K10 ["useCallback"]
      111 NEWCLOSURE                       R14 P4
      112 CAPTURE                          VAL R9
      113 NEWTABLE                         R15 0 1
      115 MOVE                             R16 R9
      116 SETLIST                          R15 R16 1 [1]
      118 CALL                             R13 2 1
      119 GETUPVAL                         R15 3
      120 GETTABLEKS                       R14 R15 K13 ["useMemo"]
      122 NEWCLOSURE                       R15 P5
      123 CAPTURE                          UPVAL U7
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R4
      126 CAPTURE                          UPVAL U8
      127 CAPTURE                          UPVAL U3
      128 CAPTURE                          UPVAL U9
      129 CAPTURE                          UPVAL U10
      130 CAPTURE                          VAL R11
      131 CAPTURE                          UPVAL U11
      132 NEWTABLE                         R16 0 3
      134 MOVE                             R17 R3
      135 MOVE                             R18 R4
      136 MOVE                             R19 R11
      137 SETLIST                          R16 R17 3 [1]
      139 CALL                             R14 2 1
      140 GETUPVAL                         R16 8
      141 GETTABLEKS                       R15 R16 K14 ["new"]
      143 CALL                             R15 0 1
      144 GETUPVAL                         R17 3
      145 GETTABLEKS                       R16 R17 K15 ["createElement"]
      147 GETUPVAL                         R17 12
      148 DUPTABLE                         R18 K23 [{"key", "Title", "MinContentSize", "Size", "Modal", "OnClose", "Enabled"}]
      149 LOADK                            R19 K24 ["SubmitDialogSelectAssets"]
      150 SETTABLEKS                       R19 R18 K16 ["key"]
      152 LOADK                            R19 K25 [""]
      153 SETTABLEKS                       R19 R18 K17 ["Title"]
      155 GETIMPORT                        R19 K27 [Vector2.new]
      157 LOADN                            R20 144
      158 LOADN                            R21 22
      159 CALL                             R19 2 1
      160 SETTABLEKS                       R19 R18 K18 ["MinContentSize"]
      162 GETIMPORT                        R19 K27 [Vector2.new]
      164 LOADN                            R20 144
      165 LOADN                            R21 22
      166 CALL                             R19 2 1
      167 SETTABLEKS                       R19 R18 K19 ["Size"]
      169 LOADB                            R19 1
      170 SETTABLEKS                       R19 R18 K20 ["Modal"]
      172 GETTABLEKS                       R19 R0 K11 ["close"]
      174 SETTABLEKS                       R19 R18 K21 ["OnClose"]
      176 LOADB                            R19 1
      177 SETTABLEKS                       R19 R18 K22 ["Enabled"]
      179 DUPTABLE                         R19 K30 [{"StyleLink", "Content"}]
      180 GETUPVAL                         R21 3
      181 GETTABLEKS                       R20 R21 K15 ["createElement"]
      183 LOADK                            R21 K28 ["StyleLink"]
      184 DUPTABLE                         R22 K32 [{"StyleSheet"}]
      185 SETTABLEKS                       R10 R22 K31 ["StyleSheet"]
      187 CALL                             R20 2 1
      188 SETTABLEKS                       R20 R19 K28 ["StyleLink"]
      190 GETUPVAL                         R21 3
      191 GETTABLEKS                       R20 R21 K15 ["createElement"]
      193 GETUPVAL                         R22 9
      194 GETTABLEKS                       R21 R22 K33 ["View"]
      196 DUPTABLE                         R22 K35 [{"tag"}]
      197 LOADK                            R23 K36 ["col size-full padding-left-medium padding-y-medium padding-right-medium gap-medium"]
      198 SETTABLEKS                       R23 R22 K34 ["tag"]
      200 DUPTABLE                         R23 K39 [{"Title", "ScrollArea", "Footer"}]
      201 GETUPVAL                         R25 3
      202 GETTABLEKS                       R24 R25 K15 ["createElement"]
      204 GETUPVAL                         R26 9
      205 GETTABLEKS                       R25 R26 K40 ["Text"]
      207 DUPTABLE                         R26 K42 [{"Text", "tag", "LayoutOrder"}]
      208 LOADK                            R29 K1 ["SubmitDialog"]
      209 LOADK                            R30 K43 ["SelectAssetsToSaveToRoblox"]
      210 NAMECALL                         R27 R1 K44 ["getText"]
      212 CALL                             R27 3 1
      213 SETTABLEKS                       R27 R26 K40 ["Text"]
      215 LOADK                            R27 K45 ["text-title-medium auto-xy content-emphasis padding-left-small"]
      216 SETTABLEKS                       R27 R26 K34 ["tag"]
      218 NAMECALL                         R27 R15 K46 ["getNextOrder"]
      220 CALL                             R27 1 1
      221 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      223 CALL                             R24 2 1
      224 SETTABLEKS                       R24 R23 K17 ["Title"]
      226 GETUPVAL                         R25 3
      227 GETTABLEKS                       R24 R25 K15 ["createElement"]
      229 GETUPVAL                         R26 9
      230 GETTABLEKS                       R25 R26 K33 ["View"]
      232 DUPTABLE                         R26 K47 [{"tag", "LayoutOrder"}]
      233 LOADK                            R27 K48 ["size-full-0 grow"]
      234 SETTABLEKS                       R27 R26 K34 ["tag"]
      236 NAMECALL                         R27 R15 K46 ["getNextOrder"]
      238 CALL                             R27 1 1
      239 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      241 DUPTABLE                         R27 K50 [{"Scroll"}]
      242 GETUPVAL                         R29 3
      243 GETTABLEKS                       R28 R29 K15 ["createElement"]
      245 GETUPVAL                         R30 9
      246 GETTABLEKS                       R29 R30 K51 ["ScrollView"]
      248 DUPTABLE                         R30 K54 [{"tag", "scroll", "layout"}]
      249 LOADK                            R31 K55 ["size-full"]
      250 SETTABLEKS                       R31 R30 K34 ["tag"]
      252 DUPTABLE                         R31 K61 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
      253 GETIMPORT                        R32 K64 [Enum.ScrollingDirection.Y]
      255 SETTABLEKS                       R32 R31 K56 ["ScrollingDirection"]
      257 GETIMPORT                        R32 K66 [Enum.AutomaticSize.Y]
      259 SETTABLEKS                       R32 R31 K57 ["AutomaticCanvasSize"]
      261 GETIMPORT                        R32 K69 [UDim2.fromScale]
      263 LOADN                            R33 0
      264 LOADN                            R34 1
      265 CALL                             R32 2 1
      266 SETTABLEKS                       R32 R31 K58 ["CanvasSize"]
      268 GETUPVAL                         R33 13
      269 GETTABLEKS                       R32 R33 K70 ["Auto"]
      271 SETTABLEKS                       R32 R31 K59 ["scrollBarVisibility"]
      273 GETIMPORT                        R32 K73 [Enum.ScrollBarInset.Always]
      275 SETTABLEKS                       R32 R31 K60 ["VerticalScrollBarInset"]
      277 SETTABLEKS                       R31 R30 K52 ["scroll"]
      279 DUPTABLE                         R31 K76 [{"SortOrder", "FillDirection"}]
      280 GETIMPORT                        R32 K77 [Enum.SortOrder.LayoutOrder]
      282 SETTABLEKS                       R32 R31 K74 ["SortOrder"]
      284 GETIMPORT                        R32 K79 [Enum.FillDirection.Vertical]
      286 SETTABLEKS                       R32 R31 K75 ["FillDirection"]
      288 SETTABLEKS                       R31 R30 K53 ["layout"]
      290 MOVE                             R31 R14
      291 CALL                             R28 3 1
      292 SETTABLEKS                       R28 R27 K49 ["Scroll"]
      294 CALL                             R24 3 1
      295 SETTABLEKS                       R24 R23 K37 ["ScrollArea"]
      297 GETUPVAL                         R25 3
      298 GETTABLEKS                       R24 R25 K15 ["createElement"]
      300 GETUPVAL                         R26 9
      301 GETTABLEKS                       R25 R26 K33 ["View"]
      303 DUPTABLE                         R26 K47 [{"tag", "LayoutOrder"}]
      304 LOADK                            R27 K80 ["row gap-small align-x-right size-full-0 auto-y"]
      305 SETTABLEKS                       R27 R26 K34 ["tag"]
      307 NAMECALL                         R27 R15 K46 ["getNextOrder"]
      309 CALL                             R27 1 1
      310 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      312 DUPTABLE                         R27 K83 [{"ContinueButton", "CancelButton"}]
      313 GETUPVAL                         R29 3
      314 GETTABLEKS                       R28 R29 K15 ["createElement"]
      316 GETUPVAL                         R30 9
      317 GETTABLEKS                       R29 R30 K84 ["Button"]
      319 DUPTABLE                         R30 K90 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      320 LOADK                            R33 K1 ["SubmitDialog"]
      321 LOADK                            R34 K91 ["Continue"]
      322 NAMECALL                         R31 R1 K44 ["getText"]
      324 CALL                             R31 3 1
      325 SETTABLEKS                       R31 R30 K85 ["text"]
      327 GETUPVAL                         R32 14
      328 GETTABLEKS                       R31 R32 K92 ["Emphasis"]
      330 SETTABLEKS                       R31 R30 K86 ["variant"]
      332 SETTABLEKS                       R12 R30 K87 ["onActivated"]
      334 GETIMPORT                        R32 K94 [next]
      336 MOVE                             R33 R4
      337 CALL                             R32 1 1
      338 JUMPIFEQKNIL                     R32 ; [+2]
      340 LOADB                            R31 0 +1
      341 LOADB                            R31 1
      342 SETTABLEKS                       R31 R30 K88 ["isDisabled"]
      344 GETUPVAL                         R32 11
      345 GETTABLEKS                       R31 R32 K95 ["XSmall"]
      347 SETTABLEKS                       R31 R30 K89 ["size"]
      349 CALL                             R28 2 1
      350 SETTABLEKS                       R28 R27 K81 ["ContinueButton"]
      352 GETUPVAL                         R29 3
      353 GETTABLEKS                       R28 R29 K15 ["createElement"]
      355 GETUPVAL                         R30 9
      356 GETTABLEKS                       R29 R30 K84 ["Button"]
      358 DUPTABLE                         R30 K96 [{"text", "variant", "onActivated", "size"}]
      359 LOADK                            R33 K1 ["SubmitDialog"]
      360 LOADK                            R34 K97 ["Cancel"]
      361 NAMECALL                         R31 R1 K44 ["getText"]
      363 CALL                             R31 3 1
      364 SETTABLEKS                       R31 R30 K85 ["text"]
      366 GETUPVAL                         R32 14
      367 GETTABLEKS                       R31 R32 K98 ["Standard"]
      369 SETTABLEKS                       R31 R30 K86 ["variant"]
      371 SETTABLEKS                       R13 R30 K87 ["onActivated"]
      373 GETUPVAL                         R32 11
      374 GETTABLEKS                       R31 R32 K95 ["XSmall"]
      376 SETTABLEKS                       R31 R30 K89 ["size"]
      378 CALL                             R28 2 1
      379 SETTABLEKS                       R28 R27 K82 ["CancelButton"]
      381 CALL                             R24 3 1
      382 SETTABLEKS                       R24 R23 K38 ["Footer"]
      384 CALL                             R20 3 1
      385 SETTABLEKS                       R20 R19 K29 ["Content"]
      387 CALL                             R16 3 -1
      388 RETURN                           R16 -1
      389 GETUPVAL                         R11 3
      390 GETTABLEKS                       R10 R11 K15 ["createElement"]
      392 GETUPVAL                         R11 15
      393 DUPTABLE                         R12 K101 [{"key", "Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
      394 LOADK                            R13 K1 ["SubmitDialog"]
      395 SETTABLEKS                       R13 R12 K16 ["key"]
      397 LOADB                            R13 1
      398 SETTABLEKS                       R13 R12 K22 ["Enabled"]
      400 LOADB                            R13 1
      401 SETTABLEKS                       R13 R12 K20 ["Modal"]
      403 LOADK                            R15 K1 ["SubmitDialog"]
      404 LOADK                            R16 K17 ["Title"]
      405 NAMECALL                         R13 R1 K44 ["getText"]
      407 CALL                             R13 3 1
      408 SETTABLEKS                       R13 R12 K17 ["Title"]
      410 GETIMPORT                        R13 K27 [Vector2.new]
      412 GETTABLEKS                       R14 R2 K102 ["Width"]
      414 MOVE                             R15 R7
      415 CALL                             R13 2 1
      416 SETTABLEKS                       R13 R12 K18 ["MinContentSize"]
      418 NEWTABLE                         R13 0 2
      420 DUPTABLE                         R14 K104 [{"Key", "Text"}]
      421 LOADK                            R15 K105 ["cancel"]
      422 SETTABLEKS                       R15 R14 K103 ["Key"]
      424 LOADK                            R17 K1 ["SubmitDialog"]
      425 LOADK                            R18 K97 ["Cancel"]
      426 NAMECALL                         R15 R1 K44 ["getText"]
      428 CALL                             R15 3 1
      429 SETTABLEKS                       R15 R14 K40 ["Text"]
      431 DUPTABLE                         R15 K108 [{"Key", "Text", "Style", "StyleModifier"}]
      432 LOADK                            R16 K109 ["ok"]
      433 SETTABLEKS                       R16 R15 K103 ["Key"]
      435 LOADK                            R18 K1 ["SubmitDialog"]
      436 LOADK                            R19 K110 ["OK"]
      437 NAMECALL                         R16 R1 K44 ["getText"]
      439 CALL                             R16 3 1
      440 SETTABLEKS                       R16 R15 K40 ["Text"]
      442 LOADK                            R16 K111 ["RoundPrimary"]
      443 SETTABLEKS                       R16 R15 K106 ["Style"]
      445 GETIMPORT                        R17 K94 [next]
      447 MOVE                             R18 R4
      448 CALL                             R17 1 1
      449 JUMPIFNOTEQKNIL                  R17 ; [+5]
      451 GETUPVAL                         R17 16
      452 GETTABLEKS                       R16 R17 K112 ["Disabled"]
      454 JUMP                             ; [+1]
      455 LOADNIL                          R16
      456 SETTABLEKS                       R16 R15 K107 ["StyleModifier"]
      458 SETLIST                          R13 R14 2 [1]
      460 SETTABLEKS                       R13 R12 K99 ["Buttons"]
      462 SETTABLEKS                       R9 R12 K100 ["OnButtonPressed"]
      464 GETTABLEKS                       R13 R0 K11 ["close"]
      466 SETTABLEKS                       R13 R12 K21 ["OnClose"]
      468 GETUPVAL                         R14 3
      469 GETTABLEKS                       R13 R14 K15 ["createElement"]
      471 GETUPVAL                         R14 17
      472 DUPTABLE                         R15 K117 [{"avatar", "setHeight", "availableChoices", "publishChoices", "setPublishChoices"}]
      473 GETTABLEKS                       R16 R0 K2 ["avatar"]
      475 SETTABLEKS                       R16 R15 K2 ["avatar"]
      477 SETTABLEKS                       R8 R15 K113 ["setHeight"]
      479 SETTABLEKS                       R3 R15 K114 ["availableChoices"]
      481 SETTABLEKS                       R4 R15 K115 ["publishChoices"]
      483 SETTABLEKS                       R5 R15 K116 ["setPublishChoices"]
      485 CALL                             R13 2 -1
      486 CALL                             R10 -1 -1
      487 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Src"]
       39 GETTABLEKS                       R7 R8 K12 ["Resources"]
       41 GETTABLEKS                       R6 R7 K13 ["Theme"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Src"]
       48 GETTABLEKS                       R7 R8 K14 ["Types"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R11 R0 K11 ["Src"]
       55 GETTABLEKS                       R10 R11 K15 ["Components"]
       57 GETTABLEKS                       R9 R10 K16 ["ItemDataPreview"]
       59 GETTABLEKS                       R8 R9 K17 ["ItemDataPreviewModel"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R11 R0 K11 ["Src"]
       66 GETTABLEKS                       R10 R11 K15 ["Components"]
       68 GETTABLEKS                       R9 R10 K18 ["StudioAssetServiceContext"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETIMPORT                        R11 K1 [script]
       75 GETTABLEKS                       R10 R11 K19 ["SubmitInner"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETIMPORT                        R12 K1 [script]
       82 GETTABLEKS                       R11 R12 K20 ["useAvailableSubmitChoices"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R14 R0 K11 ["Src"]
       89 GETTABLEKS                       R13 R14 K21 ["Flags"]
       91 GETTABLEKS                       R12 R13 K22 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       93 CALL                             R11 1 1
       94 GETTABLEKS                       R12 R2 K23 ["UI"]
       96 GETTABLEKS                       R13 R12 K24 ["Dialog"]
       98 GETTABLEKS                       R14 R12 K25 ["StyledDialog"]
      100 GETTABLEKS                       R16 R2 K26 ["ContextServices"]
      102 GETTABLEKS                       R15 R16 K27 ["Design"]
      104 GETTABLEKS                       R17 R2 K26 ["ContextServices"]
      106 GETTABLEKS                       R16 R17 K28 ["Localization"]
      108 GETTABLEKS                       R18 R2 K26 ["ContextServices"]
      110 GETTABLEKS                       R17 R18 K29 ["Stylizer"]
      112 GETTABLEKS                       R19 R2 K30 ["Util"]
      114 GETTABLEKS                       R18 R19 K31 ["StyleModifier"]
      116 GETTABLEKS                       R20 R2 K30 ["Util"]
      118 GETTABLEKS                       R19 R20 K32 ["LayoutOrderIterator"]
      120 GETTABLEKS                       R21 R3 K33 ["Enums"]
      122 GETTABLEKS                       R20 R21 K34 ["ButtonVariant"]
      124 GETTABLEKS                       R22 R3 K33 ["Enums"]
      126 GETTABLEKS                       R21 R22 K35 ["InputSize"]
      128 GETTABLEKS                       R23 R3 K33 ["Enums"]
      130 GETTABLEKS                       R22 R23 K36 ["ScrollBarVisibility"]
      132 DUPCLOSURE                       R23 K37 [PROTO_12]
      133 CAPTURE                          VAL R16
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R19
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R21
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R22
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R9
      151 RETURN                           R23 1
