PROTO_0:
        0 LOADK                            R1 K0 [""]
        1 GETIMPORT                        R2 K2 [ipairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_INEXT                   R2
        6 GETTABLEKS                       R7 R6 K3 ["UISelected"]
        8 JUMPIFNOT                        R7 ; [+2]
        9 MOVE                             R1 R6
       10 RETURN                           R1 1
       11 FORGLOOP                         R2 2 [inext] ; [-6]
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 SETTABLEKS                       R1 R0 K1 ["onCursorGroupLearnMoreClicked"]
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ToggleCollidesWith"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["GroupListView"]
        8 NEWTABLE                         R4 1 0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K4 ["getSelectedGroup"]
       13 GETTABLEKS                       R6 R1 K5 ["Groups"]
       15 CALL                             R5 1 1
       16 JUMPIFNOTEQKS                    R5 K6 [""] ; [+46]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K7 ["createElement"]
       21 GETUPVAL                         R7 2
       22 DUPTABLE                         R8 K9 [{"Padding"}]
       23 GETTABLEKS                       R9 R3 K10 ["UnselectedViewPadding"]
       25 SETTABLEKS                       R9 R8 K8 ["Padding"]
       27 DUPTABLE                         R9 K12 [{"TextLabel"}]
       28 GETUPVAL                         R10 1
       29 GETTABLEKS                       R10 R10 K7 ["createElement"]
       31 GETUPVAL                         R11 3
       32 DUPTABLE                         R12 K18 [{"Size", "Text", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       33 GETIMPORT                        R13 K21 [UDim2.fromScale]
       35 LOADN                            R14 1
       36 LOADN                            R15 1
       37 CALL                             R13 2 1
       38 SETTABLEKS                       R13 R12 K13 ["Size"]
       40 LOADK                            R15 K22 ["Info"]
       41 LOADK                            R16 K23 ["SelectAGroup"]
       42 NAMECALL                         R13 R2 K24 ["getText"]
       44 CALL                             R13 3 1
       45 SETTABLEKS                       R13 R12 K14 ["Text"]
       47 LOADB                            R13 1
       48 SETTABLEKS                       R13 R12 K15 ["TextWrapped"]
       50 GETIMPORT                        R13 K27 [Enum.TextXAlignment.Center]
       52 SETTABLEKS                       R13 R12 K16 ["TextXAlignment"]
       54 GETIMPORT                        R13 K28 [Enum.TextYAlignment.Center]
       56 SETTABLEKS                       R13 R12 K17 ["TextYAlignment"]
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R10 R9 K11 ["TextLabel"]
       61 CALL                             R6 3 -1
       62 RETURN                           R6 -1
       63 LOADB                            R6 0
       64 GETIMPORT                        R7 K30 [ipairs]
       66 GETTABLEKS                       R8 R1 K5 ["Groups"]
       68 CALL                             R7 1 3
       69 FORGPREP_INEXT                   R7
       70 GETTABLEKS                       R12 R11 K31 ["Name"]
       72 GETTABLEKS                       R13 R11 K31 ["Name"]
       74 GETUPVAL                         R14 4
       75 GETTABLEKS                       R14 R14 K32 ["CursorGroupName"]
       77 JUMPIFNOTEQ                      R12 R14 ; [+17]
       79 GETTABLEKS                       R14 R11 K33 ["UISelected"]
       81 JUMPIFNOT                        R14 ; [+2]
       82 LOADB                            R6 1
       83 JUMP                             ; [+62]
       84 LOADK                            R14 K34 ["%* (%*)"]
       85 MOVE                             R16 R12
       86 LOADK                            R19 K5 ["Groups"]
       87 LOADK                            R20 K35 ["CursorGroupText"]
       88 NAMECALL                         R17 R2 K24 ["getText"]
       90 CALL                             R17 3 1
       91 NAMECALL                         R14 R14 K36 ["format"]
       93 CALL                             R14 3 1
       94 MOVE                             R13 R14
       95 GETUPVAL                         R14 1
       96 GETTABLEKS                       R14 R14 K7 ["createElement"]
       98 GETUPVAL                         R15 2
       99 DUPTABLE                         R16 K40 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment"}]
      100 ADDK                             R17 R10 K41 [1]
      101 SETTABLEKS                       R17 R16 K37 ["LayoutOrder"]
      103 GETIMPORT                        R17 K43 [UDim2.new]
      105 LOADN                            R18 1
      106 LOADN                            R19 0
      107 LOADN                            R20 0
      108 GETUPVAL                         R21 4
      109 GETTABLEKS                       R21 R21 K44 ["GroupListRowHeight"]
      111 CALL                             R17 4 1
      112 SETTABLEKS                       R17 R16 K13 ["Size"]
      114 GETIMPORT                        R17 K47 [Enum.FillDirection.Horizontal]
      116 SETTABLEKS                       R17 R16 K38 ["Layout"]
      118 GETIMPORT                        R17 K49 [Enum.HorizontalAlignment.Left]
      120 SETTABLEKS                       R17 R16 K39 ["HorizontalAlignment"]
      122 DUPTABLE                         R17 K51 [{"Button"}]
      123 GETUPVAL                         R18 1
      124 GETTABLEKS                       R18 R18 K7 ["createElement"]
      126 GETUPVAL                         R19 5
      127 DUPTABLE                         R20 K54 [{"Checked", "Text", "OnClick"}]
      128 GETTABLEKS                       R21 R5 K55 ["GetCollidesWith"]
      130 MOVE                             R22 R11
      131 CALL                             R21 1 1
      132 SETTABLEKS                       R21 R20 K52 ["Checked"]
      134 SETTABLEKS                       R13 R20 K14 ["Text"]
      136 NEWCLOSURE                       R21 P0
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R11
      139 SETTABLEKS                       R21 R20 K53 ["OnClick"]
      141 CALL                             R18 2 1
      142 SETTABLEKS                       R18 R17 K50 ["Button"]
      144 CALL                             R14 3 1
      145 SETTABLE                         R14 R4 R12
      146 FORGLOOP                         R7 2 [inext] ; [-77]
      148 JUMPIFNOT                        R6 ; [+70]
      149 GETUPVAL                         R7 1
      150 GETTABLEKS                       R7 R7 K7 ["createElement"]
      152 GETUPVAL                         R8 2
      153 DUPTABLE                         R9 K57 [{"AutomaticSize", "Size", "LayoutOrder", "Padding"}]
      154 GETIMPORT                        R10 K59 [Enum.AutomaticSize.Y]
      156 SETTABLEKS                       R10 R9 K56 ["AutomaticSize"]
      158 GETIMPORT                        R10 K21 [UDim2.fromScale]
      160 LOADN                            R11 1
      161 LOADN                            R12 0
      162 CALL                             R10 2 1
      163 SETTABLEKS                       R10 R9 K13 ["Size"]
      165 LOADN                            R10 1
      166 SETTABLEKS                       R10 R9 K37 ["LayoutOrder"]
      168 DUPTABLE                         R10 K62 [{"Top", "Bottom"}]
      169 LOADN                            R11 10
      170 SETTABLEKS                       R11 R10 K60 ["Top"]
      172 LOADN                            R11 6
      173 SETTABLEKS                       R11 R10 K61 ["Bottom"]
      175 SETTABLEKS                       R10 R9 K8 ["Padding"]
      177 DUPTABLE                         R10 K64 [{"PaddedAlert"}]
      178 GETUPVAL                         R11 1
      179 GETTABLEKS                       R11 R11 K7 ["createElement"]
      181 GETUPVAL                         R12 6
      182 DUPTABLE                         R13 K67 [{"Title", "Body", "OnClick"}]
      183 LOADK                            R16 K5 ["Groups"]
      184 LOADK                            R17 K68 ["CursorGroupTitle"]
      185 NAMECALL                         R14 R2 K24 ["getText"]
      187 CALL                             R14 3 1
      188 SETTABLEKS                       R14 R13 K65 ["Title"]
      190 LOADK                            R16 K5 ["Groups"]
      191 LOADK                            R17 K69 ["CursorGroupInfo"]
      192 NEWTABLE                         R18 0 1
      194 LOADK                            R20 K70 ["<b>%*</b>"]
      195 GETUPVAL                         R22 4
      196 GETTABLEKS                       R22 R22 K32 ["CursorGroupName"]
      198 NAMECALL                         R20 R20 K36 ["format"]
      200 CALL                             R20 2 1
      201 MOVE                             R19 R20
      202 SETLIST                          R18 R19 1 [1]
      204 NAMECALL                         R14 R2 K24 ["getText"]
      206 CALL                             R14 4 1
      207 SETTABLEKS                       R14 R13 K66 ["Body"]
      209 GETTABLEKS                       R14 R0 K71 ["onCursorGroupLearnMoreClicked"]
      211 SETTABLEKS                       R14 R13 K53 ["OnClick"]
      213 CALL                             R11 2 1
      214 SETTABLEKS                       R11 R10 K63 ["PaddedAlert"]
      216 CALL                             R7 3 1
      217 SETTABLEKS                       R7 R4 K72 ["CursorGroupAlert"]
      219 GETUPVAL                         R7 1
      220 GETTABLEKS                       R7 R7 K7 ["createElement"]
      222 GETUPVAL                         R8 2
      223 DUPTABLE                         R9 K73 [{"AutomaticSize", "LayoutOrder", "Layout", "Padding"}]
      224 GETIMPORT                        R10 K75 [Enum.AutomaticSize.XY]
      226 SETTABLEKS                       R10 R9 K56 ["AutomaticSize"]
      228 GETTABLEKS                       R10 R1 K37 ["LayoutOrder"]
      230 SETTABLEKS                       R10 R9 K37 ["LayoutOrder"]
      232 GETIMPORT                        R10 K47 [Enum.FillDirection.Horizontal]
      234 SETTABLEKS                       R10 R9 K38 ["Layout"]
      236 GETTABLEKS                       R10 R3 K76 ["MainPanePadding"]
      238 SETTABLEKS                       R10 R9 K8 ["Padding"]
      240 DUPTABLE                         R10 K78 [{"ListPane"}]
      241 GETUPVAL                         R11 1
      242 GETTABLEKS                       R11 R11 K7 ["createElement"]
      244 GETUPVAL                         R12 2
      245 DUPTABLE                         R13 K79 [{"AutomaticSize", "Layout"}]
      246 GETIMPORT                        R14 K75 [Enum.AutomaticSize.XY]
      248 SETTABLEKS                       R14 R13 K56 ["AutomaticSize"]
      250 GETIMPORT                        R14 K81 [Enum.FillDirection.Vertical]
      252 SETTABLEKS                       R14 R13 K38 ["Layout"]
      254 MOVE                             R14 R4
      255 CALL                             R11 3 1
      256 SETTABLEKS                       R11 R10 K77 ["ListPane"]
      258 CALL                             R7 3 -1
      259 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Framework"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K13 ["CursorGroupHelp"]
       34 LOADK                            R8 K14 ["https://create.roblox.com"]
       35 NAMECALL                         R5 R5 K15 ["DefineFastString"]
       37 CALL                             R5 3 1
       38 GETTABLEKS                       R6 R3 K16 ["UI"]
       40 GETTABLEKS                       R7 R6 K17 ["Checkbox"]
       42 GETTABLEKS                       R8 R6 K18 ["Pane"]
       44 GETTABLEKS                       R9 R6 K19 ["TextLabel"]
       46 GETIMPORT                        R10 K8 [require]
       48 GETIMPORT                        R11 K5 [script]
       50 GETTABLEKS                       R11 R11 K6 ["Parent"]
       52 GETTABLEKS                       R11 R11 K20 ["CGEAlert"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K8 [require]
       57 GETIMPORT                        R12 K5 [script]
       59 GETTABLEKS                       R12 R12 K6 ["Parent"]
       61 GETTABLEKS                       R12 R12 K6 ["Parent"]
       63 GETTABLEKS                       R12 R12 K21 ["Constants"]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R12 R2 K22 ["Component"]
       68 LOADK                            R14 K23 ["GroupListView"]
       69 NAMECALL                         R12 R12 K24 ["extend"]
       71 CALL                             R12 2 1
       72 DUPCLOSURE                       R13 K25 [PROTO_0]
       73 SETTABLEKS                       R13 R12 K26 ["getSelectedGroup"]
       75 DUPCLOSURE                       R13 K27 [PROTO_2]
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R13 R12 K28 ["init"]
       80 NEWCLOSURE                       R13 P2
       81 CAPTURE                          REF R12
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R10
       88 SETTABLEKS                       R13 R12 K29 ["render"]
       90 GETTABLEKS                       R13 R4 K30 ["withContext"]
       92 DUPTABLE                         R14 K33 [{"Stylizer", "Localization"}]
       93 GETTABLEKS                       R15 R4 K31 ["Stylizer"]
       95 SETTABLEKS                       R15 R14 K31 ["Stylizer"]
       97 GETTABLEKS                       R15 R4 K32 ["Localization"]
       99 SETTABLEKS                       R15 R14 K32 ["Localization"]
      101 CALL                             R13 1 1
      102 MOVE                             R14 R12
      103 CALL                             R13 1 1
      104 MOVE                             R12 R13
      105 CLOSEUPVALS                      R12
      106 RETURN                           R12 1
