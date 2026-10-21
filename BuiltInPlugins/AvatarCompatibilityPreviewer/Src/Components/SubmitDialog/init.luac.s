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
       84 DUPTABLE                         R11 K36 [{["Text"], ["tag"] = "auto-y padding-x-medium text-title-small text-align-x-left text-truncate-end content-default", ["Size"], ["LayoutOrder"]}]
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
       79 JUMPIFNOT                        R10 ; [+295]
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
      150 DUPTABLE                         R18 K27 [{["key"] = "SubmitDialogSelectAssets", ["Title"] = "", ["MinContentSize"], ["Size"], ["Modal"] = True, ["OnClose"], ["Enabled"] = True, ["PluginDesign"]}]
      151 GETIMPORT                        R19 K29 [Vector2.new]
      153 LOADN                            R20 400
      154 LOADN                            R21 278
      155 CALL                             R19 2 1
      156 SETTABLEKS                       R19 R18 K20 ["MinContentSize"]
      158 GETIMPORT                        R19 K29 [Vector2.new]
      160 LOADN                            R20 400
      161 LOADN                            R21 278
      162 CALL                             R19 2 1
      163 SETTABLEKS                       R19 R18 K21 ["Size"]
      165 GETTABLEKS                       R19 R0 K11 ["close"]
      167 SETTABLEKS                       R19 R18 K24 ["OnClose"]
      169 GETUPVAL                         R20 14
      170 JUMPIFNOT                        R20 ; [+2]
      171 MOVE                             R19 R10
      172 JUMP                             ; [+1]
      173 LOADNIL                          R19
      174 SETTABLEKS                       R19 R18 K26 ["PluginDesign"]
      176 DUPTABLE                         R19 K32 [{"StyleLink", "Content"}]
      177 GETUPVAL                         R21 14
      178 JUMPIF                           R21 ; [+9]
      179 GETUPVAL                         R20 3
      180 GETTABLEKS                       R20 R20 K15 ["createElement"]
      182 LOADK                            R21 K30 ["StyleLink"]
      183 DUPTABLE                         R22 K34 [{"StyleSheet"}]
      184 SETTABLEKS                       R10 R22 K33 ["StyleSheet"]
      186 CALL                             R20 2 1
      187 JUMP                             ; [+1]
      188 LOADNIL                          R20
      189 SETTABLEKS                       R20 R19 K30 ["StyleLink"]
      191 GETUPVAL                         R20 3
      192 GETTABLEKS                       R20 R20 K15 ["createElement"]
      194 GETUPVAL                         R21 10
      195 GETTABLEKS                       R21 R21 K35 ["View"]
      197 DUPTABLE                         R22 K38 [{["tag"] = "col gap-medium size-full padding-y-medium padding-left-medium padding-right-medium"}]
      198 DUPTABLE                         R23 K41 [{"Title", "ScrollArea", "Footer"}]
      199 GETUPVAL                         R24 3
      200 GETTABLEKS                       R24 R24 K15 ["createElement"]
      202 GETUPVAL                         R25 10
      203 GETTABLEKS                       R25 R25 K42 ["Text"]
      205 DUPTABLE                         R26 K45 [{["Text"], ["tag"] = "auto-xy padding-left-small text-title-medium content-emphasis", ["LayoutOrder"]}]
      206 LOADK                            R29 K1 ["SubmitDialog"]
      207 LOADK                            R30 K46 ["SelectAssetsToSaveToRoblox"]
      208 NAMECALL                         R27 R1 K47 ["getText"]
      210 CALL                             R27 3 1
      211 SETTABLEKS                       R27 R26 K42 ["Text"]
      213 NAMECALL                         R27 R15 K48 ["getNextOrder"]
      215 CALL                             R27 1 1
      216 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      218 CALL                             R24 2 1
      219 SETTABLEKS                       R24 R23 K18 ["Title"]
      221 GETUPVAL                         R24 3
      222 GETTABLEKS                       R24 R24 K15 ["createElement"]
      224 GETUPVAL                         R25 10
      225 GETTABLEKS                       R25 R25 K35 ["View"]
      227 DUPTABLE                         R26 K50 [{["tag"] = "grow size-full-0", ["LayoutOrder"]}]
      228 NAMECALL                         R27 R15 K48 ["getNextOrder"]
      230 CALL                             R27 1 1
      231 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      233 DUPTABLE                         R27 K52 [{"Scroll"}]
      234 GETUPVAL                         R28 3
      235 GETTABLEKS                       R28 R28 K15 ["createElement"]
      237 GETUPVAL                         R29 10
      238 GETTABLEKS                       R29 R29 K53 ["ScrollView"]
      240 DUPTABLE                         R30 K57 [{["tag"] = "size-full", ["scroll"], ["layout"]}]
      241 DUPTABLE                         R31 K63 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility", "VerticalScrollBarInset"}]
      242 GETIMPORT                        R32 K66 [Enum.ScrollingDirection.Y]
      244 SETTABLEKS                       R32 R31 K58 ["ScrollingDirection"]
      246 GETIMPORT                        R32 K68 [Enum.AutomaticSize.Y]
      248 SETTABLEKS                       R32 R31 K59 ["AutomaticCanvasSize"]
      250 GETIMPORT                        R32 K71 [UDim2.fromScale]
      252 LOADN                            R33 0
      253 LOADN                            R34 1
      254 CALL                             R32 2 1
      255 SETTABLEKS                       R32 R31 K60 ["CanvasSize"]
      257 GETUPVAL                         R32 15
      258 GETTABLEKS                       R32 R32 K72 ["Auto"]
      260 SETTABLEKS                       R32 R31 K61 ["scrollBarVisibility"]
      262 GETIMPORT                        R32 K75 [Enum.ScrollBarInset.Always]
      264 SETTABLEKS                       R32 R31 K62 ["VerticalScrollBarInset"]
      266 SETTABLEKS                       R31 R30 K55 ["scroll"]
      268 DUPTABLE                         R31 K78 [{"SortOrder", "FillDirection"}]
      269 GETIMPORT                        R32 K79 [Enum.SortOrder.LayoutOrder]
      271 SETTABLEKS                       R32 R31 K76 ["SortOrder"]
      273 GETIMPORT                        R32 K81 [Enum.FillDirection.Vertical]
      275 SETTABLEKS                       R32 R31 K77 ["FillDirection"]
      277 SETTABLEKS                       R31 R30 K56 ["layout"]
      279 MOVE                             R31 R14
      280 CALL                             R28 3 1
      281 SETTABLEKS                       R28 R27 K51 ["Scroll"]
      283 CALL                             R24 3 1
      284 SETTABLEKS                       R24 R23 K39 ["ScrollArea"]
      286 GETUPVAL                         R24 3
      287 GETTABLEKS                       R24 R24 K15 ["createElement"]
      289 GETUPVAL                         R25 10
      290 GETTABLEKS                       R25 R25 K35 ["View"]
      292 DUPTABLE                         R26 K83 [{["tag"] = "row align-x-right gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      293 NAMECALL                         R27 R15 K48 ["getNextOrder"]
      295 CALL                             R27 1 1
      296 SETTABLEKS                       R27 R26 K44 ["LayoutOrder"]
      298 DUPTABLE                         R27 K86 [{"ContinueButton", "CancelButton"}]
      299 GETUPVAL                         R28 3
      300 GETTABLEKS                       R28 R28 K15 ["createElement"]
      302 GETUPVAL                         R29 10
      303 GETTABLEKS                       R29 R29 K87 ["Button"]
      305 DUPTABLE                         R30 K93 [{"text", "variant", "onActivated", "isDisabled", "size"}]
      306 LOADK                            R33 K1 ["SubmitDialog"]
      307 LOADK                            R34 K94 ["Continue"]
      308 NAMECALL                         R31 R1 K47 ["getText"]
      310 CALL                             R31 3 1
      311 SETTABLEKS                       R31 R30 K88 ["text"]
      313 GETUPVAL                         R31 16
      314 GETTABLEKS                       R31 R31 K95 ["Emphasis"]
      316 SETTABLEKS                       R31 R30 K89 ["variant"]
      318 SETTABLEKS                       R12 R30 K90 ["onActivated"]
      320 GETIMPORT                        R32 K97 [next]
      322 MOVE                             R33 R4
      323 CALL                             R32 1 1
      324 JUMPIFEQKNIL                     R32 ; [+2]
      326 LOADB                            R31 0 +1
      327 LOADB                            R31 1
      328 SETTABLEKS                       R31 R30 K91 ["isDisabled"]
      330 GETUPVAL                         R31 12
      331 GETTABLEKS                       R31 R31 K98 ["XSmall"]
      333 SETTABLEKS                       R31 R30 K92 ["size"]
      335 CALL                             R28 2 1
      336 SETTABLEKS                       R28 R27 K84 ["ContinueButton"]
      338 GETUPVAL                         R28 3
      339 GETTABLEKS                       R28 R28 K15 ["createElement"]
      341 GETUPVAL                         R29 10
      342 GETTABLEKS                       R29 R29 K87 ["Button"]
      344 DUPTABLE                         R30 K99 [{"text", "variant", "onActivated", "size"}]
      345 LOADK                            R33 K1 ["SubmitDialog"]
      346 LOADK                            R34 K100 ["Cancel"]
      347 NAMECALL                         R31 R1 K47 ["getText"]
      349 CALL                             R31 3 1
      350 SETTABLEKS                       R31 R30 K88 ["text"]
      352 GETUPVAL                         R31 16
      353 GETTABLEKS                       R31 R31 K101 ["Standard"]
      355 SETTABLEKS                       R31 R30 K89 ["variant"]
      357 SETTABLEKS                       R13 R30 K90 ["onActivated"]
      359 GETUPVAL                         R31 12
      360 GETTABLEKS                       R31 R31 K98 ["XSmall"]
      362 SETTABLEKS                       R31 R30 K92 ["size"]
      364 CALL                             R28 2 1
      365 SETTABLEKS                       R28 R27 K85 ["CancelButton"]
      367 CALL                             R24 3 1
      368 SETTABLEKS                       R24 R23 K40 ["Footer"]
      370 CALL                             R20 3 1
      371 SETTABLEKS                       R20 R19 K31 ["Content"]
      373 CALL                             R16 3 -1
      374 RETURN                           R16 -1
      375 GETUPVAL                         R10 3
      376 GETTABLEKS                       R10 R10 K15 ["createElement"]
      378 GETUPVAL                         R11 17
      379 DUPTABLE                         R12 K104 [{["key"] = "SubmitDialog", ["Enabled"] = True, ["Modal"] = True, ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
      380 LOADK                            R15 K1 ["SubmitDialog"]
      381 LOADK                            R16 K18 ["Title"]
      382 NAMECALL                         R13 R1 K47 ["getText"]
      384 CALL                             R13 3 1
      385 SETTABLEKS                       R13 R12 K18 ["Title"]
      387 GETIMPORT                        R13 K29 [Vector2.new]
      389 GETTABLEKS                       R14 R2 K105 ["Width"]
      391 MOVE                             R15 R7
      392 CALL                             R13 2 1
      393 SETTABLEKS                       R13 R12 K20 ["MinContentSize"]
      395 NEWTABLE                         R13 0 2
      397 DUPTABLE                         R14 K108 [{["Key"] = "cancel", ["Text"]}]
      398 LOADK                            R17 K1 ["SubmitDialog"]
      399 LOADK                            R18 K100 ["Cancel"]
      400 NAMECALL                         R15 R1 K47 ["getText"]
      402 CALL                             R15 3 1
      403 SETTABLEKS                       R15 R14 K42 ["Text"]
      405 DUPTABLE                         R15 K113 [{["Key"] = "ok", ["Text"], ["Style"] = "RoundPrimary", ["StyleModifier"]}]
      406 LOADK                            R18 K1 ["SubmitDialog"]
      407 LOADK                            R19 K114 ["OK"]
      408 NAMECALL                         R16 R1 K47 ["getText"]
      410 CALL                             R16 3 1
      411 SETTABLEKS                       R16 R15 K42 ["Text"]
      413 GETIMPORT                        R17 K97 [next]
      415 MOVE                             R18 R4
      416 CALL                             R17 1 1
      417 JUMPIFNOTEQKNIL                  R17 ; [+5]
      419 GETUPVAL                         R16 18
      420 GETTABLEKS                       R16 R16 K115 ["Disabled"]
      422 JUMP                             ; [+1]
      423 LOADNIL                          R16
      424 SETTABLEKS                       R16 R15 K112 ["StyleModifier"]
      426 SETLIST                          R13 R14 2 [1]
      428 SETTABLEKS                       R13 R12 K102 ["Buttons"]
      430 SETTABLEKS                       R9 R12 K103 ["OnButtonPressed"]
      432 GETTABLEKS                       R13 R0 K11 ["close"]
      434 SETTABLEKS                       R13 R12 K24 ["OnClose"]
      436 GETUPVAL                         R13 3
      437 GETTABLEKS                       R13 R13 K15 ["createElement"]
      439 GETUPVAL                         R14 19
      440 DUPTABLE                         R15 K120 [{"avatar", "setHeight", "availableChoices", "publishChoices", "setPublishChoices"}]
      441 GETTABLEKS                       R16 R0 K2 ["avatar"]
      443 SETTABLEKS                       R16 R15 K2 ["avatar"]
      445 SETTABLEKS                       R8 R15 K116 ["setHeight"]
      447 SETTABLEKS                       R3 R15 K117 ["availableChoices"]
      449 SETTABLEKS                       R4 R15 K118 ["publishChoices"]
      451 SETTABLEKS                       R5 R15 K119 ["setPublishChoices"]
      453 CALL                             R13 2 -1
      454 CALL                             R10 -1 -1
      455 RETURN                           R10 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K10 ["getFFlagDevFrameworkUsePluginDesign"]
       25 CALL                             R3 0 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Packages"]
       30 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Packages"]
       37 GETTABLEKS                       R6 R6 K12 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Src"]
       44 GETTABLEKS                       R7 R7 K14 ["Resources"]
       46 GETTABLEKS                       R7 R7 K15 ["Theme"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Src"]
       53 GETTABLEKS                       R8 R8 K16 ["Types"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K13 ["Src"]
       60 GETTABLEKS                       R9 R9 K17 ["Components"]
       62 GETTABLEKS                       R9 R9 K18 ["ItemDataPreview"]
       64 GETTABLEKS                       R9 R9 K19 ["ItemDataPreviewModel"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K13 ["Src"]
       71 GETTABLEKS                       R10 R10 K17 ["Components"]
       73 GETTABLEKS                       R10 R10 K20 ["StudioAssetServiceContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETIMPORT                        R11 K1 [script]
       80 GETTABLEKS                       R11 R11 K21 ["SubmitInner"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETIMPORT                        R12 K1 [script]
       87 GETTABLEKS                       R12 R12 K22 ["useAvailableSubmitChoices"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K24 [game]
       92 LOADK                            R14 K25 ["MemStorageService"]
       93 NAMECALL                         R12 R12 K26 ["GetService"]
       95 CALL                             R12 2 1
       96 GETIMPORT                        R13 K5 [require]
       98 GETTABLEKS                       R14 R0 K13 ["Src"]
      100 GETTABLEKS                       R14 R14 K27 ["Flags"]
      102 GETTABLEKS                       R14 R14 K28 ["getFFlagAvatarPreviewerUpdateDialogUI"]
      104 CALL                             R13 1 1
      105 GETTABLEKS                       R14 R2 K29 ["UI"]
      107 GETTABLEKS                       R15 R14 K30 ["Dialog"]
      109 GETTABLEKS                       R16 R14 K31 ["StyledDialog"]
      111 GETTABLEKS                       R17 R2 K32 ["ContextServices"]
      113 GETTABLEKS                       R17 R17 K33 ["Design"]
      115 GETTABLEKS                       R18 R2 K32 ["ContextServices"]
      117 GETTABLEKS                       R18 R18 K34 ["Localization"]
      119 GETTABLEKS                       R19 R2 K32 ["ContextServices"]
      121 GETTABLEKS                       R19 R19 K35 ["Stylizer"]
      123 GETTABLEKS                       R20 R2 K36 ["Util"]
      125 GETTABLEKS                       R20 R20 K37 ["StyleModifier"]
      127 GETTABLEKS                       R21 R2 K36 ["Util"]
      129 GETTABLEKS                       R21 R21 K38 ["LayoutOrderIterator"]
      131 GETTABLEKS                       R22 R4 K39 ["Enums"]
      133 GETTABLEKS                       R22 R22 K40 ["ButtonVariant"]
      135 GETTABLEKS                       R23 R4 K39 ["Enums"]
      137 GETTABLEKS                       R23 R23 K41 ["InputSize"]
      139 GETTABLEKS                       R24 R4 K39 ["Enums"]
      141 GETTABLEKS                       R24 R24 K42 ["ScrollBarVisibility"]
      143 DUPCLOSURE                       R25 K43 [PROTO_12]
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R23
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R24
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R10
      164 RETURN                           R25 1
