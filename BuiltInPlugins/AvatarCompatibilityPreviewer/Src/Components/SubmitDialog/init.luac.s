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
       23 DUPTABLE                         R7 K16 [{["key"], ["tag"] = "row align-y-center auto-y padding-y-small padding-left-small", ["Size"], ["LayoutOrder"] = 0, ["testId"] = "submit-dialog-choice-row"}]
       24 GETTABLEKS                       R12 R1 K17 ["assetType"]
       26 FASTCALL1                        TOSTRING R12 ; [+2]
       27 GETIMPORT                        R11 K19 [tostring]
       29 CALL                             R11 1 1
       30 MOVE                             R9 R11
       31 GETTABLEKS                       R10 R1 K0 ["instance"]
       33 GETTABLEKS                       R10 R10 K1 ["Name"]
       35 CONCAT                           R8 R9 R10
       36 SETTABLEKS                       R8 R7 K8 ["key"]
       38 GETIMPORT                        R8 K22 [UDim2.fromScale]
       40 LOADN                            R9 1
       41 LOADN                            R10 0
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K11 ["Size"]
       45 DUPTABLE                         R8 K26 [{"Thumbnail", "Name", "Spacer", "Checkbox"}]
       46 GETUPVAL                         R9 2
       47 GETTABLEKS                       R9 R9 K6 ["createElement"]
       49 GETUPVAL                         R10 3
       50 GETTABLEKS                       R10 R10 K7 ["View"]
       52 DUPTABLE                         R11 K28 [{["tag"] = "stroke-default radius-small", ["Size"], ["LayoutOrder"]}]
       53 GETIMPORT                        R12 K30 [UDim2.fromOffset]
       55 LOADN                            R13 32
       56 LOADN                            R14 32
       57 CALL                             R12 2 1
       58 SETTABLEKS                       R12 R11 K11 ["Size"]
       60 NAMECALL                         R12 R4 K31 ["getNextOrder"]
       62 CALL                             R12 1 1
       63 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       65 GETUPVAL                         R12 2
       66 GETTABLEKS                       R12 R12 K6 ["createElement"]
       68 GETUPVAL                         R13 4
       69 DUPTABLE                         R14 K33 [{"Instance"}]
       70 GETTABLEKS                       R15 R1 K0 ["instance"]
       72 SETTABLEKS                       R15 R14 K32 ["Instance"]
       74 CALL                             R12 2 -1
       75 CALL                             R9 -1 1
       76 SETTABLEKS                       R9 R8 K23 ["Thumbnail"]
       78 GETUPVAL                         R9 2
       79 GETTABLEKS                       R9 R9 K6 ["createElement"]
       81 GETUPVAL                         R10 3
       82 GETTABLEKS                       R10 R10 K34 ["Text"]
       84 DUPTABLE                         R11 K36 [{["Text"], ["tag"] = "bold auto-y padding-x-medium text-title-small text-align-x-left text-truncate-end content-default", ["Size"], ["LayoutOrder"]}]
       85 SETTABLEKS                       R2 R11 K34 ["Text"]
       87 GETIMPORT                        R12 K30 [UDim2.fromOffset]
       89 LOADN                            R13 304
       90 LOADN                            R14 0
       91 CALL                             R12 2 1
       92 SETTABLEKS                       R12 R11 K11 ["Size"]
       94 NAMECALL                         R12 R4 K31 ["getNextOrder"]
       96 CALL                             R12 1 1
       97 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       99 CALL                             R9 2 1
      100 SETTABLEKS                       R9 R8 K1 ["Name"]
      102 GETUPVAL                         R9 2
      103 GETTABLEKS                       R9 R9 K6 ["createElement"]
      105 GETUPVAL                         R10 3
      106 GETTABLEKS                       R10 R10 K7 ["View"]
      108 DUPTABLE                         R11 K38 [{["tag"] = "grow", ["LayoutOrder"]}]
      109 NAMECALL                         R12 R4 K31 ["getNextOrder"]
      111 CALL                             R12 1 1
      112 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      114 CALL                             R9 2 1
      115 SETTABLEKS                       R9 R8 K24 ["Spacer"]
      117 GETUPVAL                         R9 2
      118 GETTABLEKS                       R9 R9 K6 ["createElement"]
      120 GETUPVAL                         R10 3
      121 GETTABLEKS                       R10 R10 K25 ["Checkbox"]
      123 DUPTABLE                         R11 K44 [{["isChecked"], ["label"] = "", ["onActivated"], ["size"], ["LayoutOrder"]}]
      124 SETTABLEKS                       R3 R11 K39 ["isChecked"]
      126 NEWCLOSURE                       R12 P0
      127 CAPTURE                          UPVAL U5
      128 CAPTURE                          VAL R1
      129 SETTABLEKS                       R12 R11 K42 ["onActivated"]
      131 GETUPVAL                         R12 6
      132 GETTABLEKS                       R12 R12 K45 ["Small"]
      134 SETTABLEKS                       R12 R11 K43 ["size"]
      136 NAMECALL                         R12 R4 K31 ["getNextOrder"]
      138 CALL                             R12 1 1
      139 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      141 CALL                             R9 2 1
      142 SETTABLEKS                       R9 R8 K25 ["Checkbox"]
      144 CALL                             R5 3 -1
      145 RETURN                           R5 -1

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
       79 JUMPIFNOT                        R10 ; [+284]
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
      150 DUPTABLE                         R18 K26 [{["key"] = "SubmitDialogSelectAssets", ["Title"] = "", ["MinContentSize"], ["Size"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True}]
      151 GETIMPORT                        R19 K28 [Vector2.new]
      153 LOADN                            R20 400
      154 LOADN                            R21 278
      155 CALL                             R19 2 1
      156 SETTABLEKS                       R19 R18 K20 ["MinContentSize"]
      158 GETIMPORT                        R19 K28 [Vector2.new]
      160 LOADN                            R20 400
      161 LOADN                            R21 278
      162 CALL                             R19 2 1
      163 SETTABLEKS                       R19 R18 K21 ["Size"]
      165 GETTABLEKS                       R19 R0 K11 ["close"]
      167 SETTABLEKS                       R19 R18 K24 ["OnClose"]
      169 DUPTABLE                         R19 K31 [{"StyleLink", "Content"}]
      170 GETUPVAL                         R20 3
      171 GETTABLEKS                       R20 R20 K15 ["createElement"]
      173 LOADK                            R21 K29 ["StyleLink"]
      174 DUPTABLE                         R22 K33 [{"StyleSheet"}]
      175 SETTABLEKS                       R10 R22 K32 ["StyleSheet"]
      177 CALL                             R20 2 1
      178 SETTABLEKS                       R20 R19 K29 ["StyleLink"]
      180 GETUPVAL                         R20 3
      181 GETTABLEKS                       R20 R20 K15 ["createElement"]
      183 GETUPVAL                         R21 10
      184 GETTABLEKS                       R21 R21 K34 ["View"]
      186 DUPTABLE                         R22 K37 [{["tag"] = "col gap-medium size-full padding-y-medium padding-left-medium padding-right-medium"}]
      187 DUPTABLE                         R23 K40 [{"Title", "ScrollArea", "Footer"}]
      188 GETUPVAL                         R24 3
      189 GETTABLEKS                       R24 R24 K15 ["createElement"]
      191 GETUPVAL                         R25 10
      192 GETTABLEKS                       R25 R25 K41 ["Text"]
      194 DUPTABLE                         R26 K44 [{["Text"], ["tag"] = "auto-xy padding-left-small text-title-medium content-emphasis", ["LayoutOrder"]}]
      195 LOADK                            R29 K1 ["SubmitDialog"]
      196 LOADK                            R30 K45 ["SelectAssetsToSaveToRoblox"]
      197 NAMECALL                         R27 R1 K46 ["getText"]
      199 CALL                             R27 3 1
      200 SETTABLEKS                       R27 R26 K41 ["Text"]
      202 NAMECALL                         R27 R15 K47 ["getNextOrder"]
      204 CALL                             R27 1 1
      205 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      207 CALL                             R24 2 1
      208 SETTABLEKS                       R24 R23 K18 ["Title"]
      210 GETUPVAL                         R24 3
      211 GETTABLEKS                       R24 R24 K15 ["createElement"]
      213 GETUPVAL                         R25 10
      214 GETTABLEKS                       R25 R25 K34 ["View"]
      216 DUPTABLE                         R26 K49 [{["tag"] = "grow size-full-0", ["LayoutOrder"]}]
      217 NAMECALL                         R27 R15 K47 ["getNextOrder"]
      219 CALL                             R27 1 1
      220 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      222 DUPTABLE                         R27 K51 [{"Scroll"}]
      223 GETUPVAL                         R28 3
      224 GETTABLEKS                       R28 R28 K15 ["createElement"]
      226 GETUPVAL                         R29 10
      227 GETTABLEKS                       R29 R29 K52 ["ScrollView"]
      229 DUPTABLE                         R30 K56 [{["tag"] = "size-full", ["scroll"], ["layout"]}]
      230 DUPTABLE                         R31 K62 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
      231 GETIMPORT                        R32 K65 [Enum.ScrollingDirection.Y]
      233 SETTABLEKS                       R32 R31 K57 ["ScrollingDirection"]
      235 GETIMPORT                        R32 K67 [Enum.AutomaticSize.Y]
      237 SETTABLEKS                       R32 R31 K58 ["AutomaticCanvasSize"]
      239 GETIMPORT                        R32 K70 [UDim2.fromScale]
      241 LOADN                            R33 0
      242 LOADN                            R34 1
      243 CALL                             R32 2 1
      244 SETTABLEKS                       R32 R31 K59 ["CanvasSize"]
      246 GETUPVAL                         R32 14
      247 GETTABLEKS                       R32 R32 K71 ["Auto"]
      249 SETTABLEKS                       R32 R31 K60 ["scrollBarVisibility"]
      251 GETIMPORT                        R32 K74 [Enum.ScrollBarInset.Always]
      253 SETTABLEKS                       R32 R31 K61 ["VerticalScrollBarInset"]
      255 SETTABLEKS                       R31 R30 K54 ["scroll"]
      257 DUPTABLE                         R31 K77 [{"SortOrder", "FillDirection"}]
      258 GETIMPORT                        R32 K78 [Enum.SortOrder.LayoutOrder]
      260 SETTABLEKS                       R32 R31 K75 ["SortOrder"]
      262 GETIMPORT                        R32 K80 [Enum.FillDirection.Vertical]
      264 SETTABLEKS                       R32 R31 K76 ["FillDirection"]
      266 SETTABLEKS                       R31 R30 K55 ["layout"]
      268 MOVE                             R31 R14
      269 CALL                             R28 3 1
      270 SETTABLEKS                       R28 R27 K50 ["Scroll"]
      272 CALL                             R24 3 1
      273 SETTABLEKS                       R24 R23 K38 ["ScrollArea"]
      275 GETUPVAL                         R24 3
      276 GETTABLEKS                       R24 R24 K15 ["createElement"]
      278 GETUPVAL                         R25 10
      279 GETTABLEKS                       R25 R25 K34 ["View"]
      281 DUPTABLE                         R26 K82 [{["tag"] = "row align-x-right gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      282 NAMECALL                         R27 R15 K47 ["getNextOrder"]
      284 CALL                             R27 1 1
      285 SETTABLEKS                       R27 R26 K43 ["LayoutOrder"]
      287 DUPTABLE                         R27 K85 [{"ContinueButton", "CancelButton"}]
      288 GETUPVAL                         R28 3
      289 GETTABLEKS                       R28 R28 K15 ["createElement"]
      291 GETUPVAL                         R29 10
      292 GETTABLEKS                       R29 R29 K86 ["Button"]
      294 DUPTABLE                         R30 K92 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      295 LOADK                            R33 K1 ["SubmitDialog"]
      296 LOADK                            R34 K93 ["Continue"]
      297 NAMECALL                         R31 R1 K46 ["getText"]
      299 CALL                             R31 3 1
      300 SETTABLEKS                       R31 R30 K87 ["text"]
      302 GETUPVAL                         R31 15
      303 GETTABLEKS                       R31 R31 K94 ["Emphasis"]
      305 SETTABLEKS                       R31 R30 K88 ["variant"]
      307 SETTABLEKS                       R12 R30 K89 ["onActivated"]
      309 GETIMPORT                        R32 K96 [next]
      311 MOVE                             R33 R4
      312 CALL                             R32 1 1
      313 JUMPIFEQKNIL                     R32 ; [+2]
      315 LOADB                            R31 0 +1
      316 LOADB                            R31 1
      317 SETTABLEKS                       R31 R30 K90 ["isDisabled"]
      319 GETUPVAL                         R31 12
      320 GETTABLEKS                       R31 R31 K97 ["XSmall"]
      322 SETTABLEKS                       R31 R30 K91 ["size"]
      324 CALL                             R28 2 1
      325 SETTABLEKS                       R28 R27 K83 ["ContinueButton"]
      327 GETUPVAL                         R28 3
      328 GETTABLEKS                       R28 R28 K15 ["createElement"]
      330 GETUPVAL                         R29 10
      331 GETTABLEKS                       R29 R29 K86 ["Button"]
      333 DUPTABLE                         R30 K98 [{"text", "variant", "onActivated", "size"}]
      334 LOADK                            R33 K1 ["SubmitDialog"]
      335 LOADK                            R34 K99 ["Cancel"]
      336 NAMECALL                         R31 R1 K46 ["getText"]
      338 CALL                             R31 3 1
      339 SETTABLEKS                       R31 R30 K87 ["text"]
      341 GETUPVAL                         R31 15
      342 GETTABLEKS                       R31 R31 K100 ["Standard"]
      344 SETTABLEKS                       R31 R30 K88 ["variant"]
      346 SETTABLEKS                       R13 R30 K89 ["onActivated"]
      348 GETUPVAL                         R31 12
      349 GETTABLEKS                       R31 R31 K97 ["XSmall"]
      351 SETTABLEKS                       R31 R30 K91 ["size"]
      353 CALL                             R28 2 1
      354 SETTABLEKS                       R28 R27 K84 ["CancelButton"]
      356 CALL                             R24 3 1
      357 SETTABLEKS                       R24 R23 K39 ["Footer"]
      359 CALL                             R20 3 1
      360 SETTABLEKS                       R20 R19 K30 ["Content"]
      362 CALL                             R16 3 -1
      363 RETURN                           R16 -1
      364 GETUPVAL                         R10 3
      365 GETTABLEKS                       R10 R10 K15 ["createElement"]
      367 GETUPVAL                         R11 16
      368 DUPTABLE                         R12 K103 [{["key"] = "SubmitDialog", ["Enabled"] = True, ["Modal"] = True, ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
      369 LOADK                            R15 K1 ["SubmitDialog"]
      370 LOADK                            R16 K18 ["Title"]
      371 NAMECALL                         R13 R1 K46 ["getText"]
      373 CALL                             R13 3 1
      374 SETTABLEKS                       R13 R12 K18 ["Title"]
      376 GETIMPORT                        R13 K28 [Vector2.new]
      378 GETTABLEKS                       R14 R2 K104 ["Width"]
      380 MOVE                             R15 R7
      381 CALL                             R13 2 1
      382 SETTABLEKS                       R13 R12 K20 ["MinContentSize"]
      384 NEWTABLE                         R13 0 2
      386 DUPTABLE                         R14 K107 [{["Key"] = "cancel", ["Text"]}]
      387 LOADK                            R17 K1 ["SubmitDialog"]
      388 LOADK                            R18 K99 ["Cancel"]
      389 NAMECALL                         R15 R1 K46 ["getText"]
      391 CALL                             R15 3 1
      392 SETTABLEKS                       R15 R14 K41 ["Text"]
      394 DUPTABLE                         R15 K112 [{["Key"] = "ok", ["Text"], ["Style"] = "RoundPrimary", ["StyleModifier"]}]
      395 LOADK                            R18 K1 ["SubmitDialog"]
      396 LOADK                            R19 K113 ["OK"]
      397 NAMECALL                         R16 R1 K46 ["getText"]
      399 CALL                             R16 3 1
      400 SETTABLEKS                       R16 R15 K41 ["Text"]
      402 GETIMPORT                        R17 K96 [next]
      404 MOVE                             R18 R4
      405 CALL                             R17 1 1
      406 JUMPIFNOTEQKNIL                  R17 ; [+5]
      408 GETUPVAL                         R16 17
      409 GETTABLEKS                       R16 R16 K114 ["Disabled"]
      411 JUMP                             ; [+1]
      412 LOADNIL                          R16
      413 SETTABLEKS                       R16 R15 K111 ["StyleModifier"]
      415 SETLIST                          R13 R14 2 [1]
      417 SETTABLEKS                       R13 R12 K101 ["Buttons"]
      419 SETTABLEKS                       R9 R12 K102 ["OnButtonPressed"]
      421 GETTABLEKS                       R13 R0 K11 ["close"]
      423 SETTABLEKS                       R13 R12 K24 ["OnClose"]
      425 GETUPVAL                         R13 3
      426 GETTABLEKS                       R13 R13 K15 ["createElement"]
      428 GETUPVAL                         R14 18
      429 DUPTABLE                         R15 K119 [{"avatar", "setHeight", "availableChoices", "publishChoices", "setPublishChoices"}]
      430 GETTABLEKS                       R16 R0 K2 ["avatar"]
      432 SETTABLEKS                       R16 R15 K2 ["avatar"]
      434 SETTABLEKS                       R8 R15 K115 ["setHeight"]
      436 SETTABLEKS                       R3 R15 K116 ["availableChoices"]
      438 SETTABLEKS                       R4 R15 K117 ["publishChoices"]
      440 SETTABLEKS                       R5 R15 K118 ["setPublishChoices"]
      442 CALL                             R13 2 -1
      443 CALL                             R10 -1 -1
      444 RETURN                           R10 -1

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
