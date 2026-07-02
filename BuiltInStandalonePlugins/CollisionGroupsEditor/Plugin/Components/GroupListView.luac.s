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
       16 JUMPIFNOTEQKS                    R5 K6 [""] ; [+43]
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
       32 DUPTABLE                         R12 K19 [{["Size"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
       33 GETIMPORT                        R13 K22 [UDim2.fromScale]
       35 LOADN                            R14 1
       36 LOADN                            R15 1
       37 CALL                             R13 2 1
       38 SETTABLEKS                       R13 R12 K13 ["Size"]
       40 LOADK                            R15 K23 ["Info"]
       41 LOADK                            R16 K24 ["SelectAGroup"]
       42 NAMECALL                         R13 R2 K25 ["getText"]
       44 CALL                             R13 3 1
       45 SETTABLEKS                       R13 R12 K14 ["Text"]
       47 GETIMPORT                        R13 K28 [Enum.TextXAlignment.Center]
       49 SETTABLEKS                       R13 R12 K17 ["TextXAlignment"]
       51 GETIMPORT                        R13 K29 [Enum.TextYAlignment.Center]
       53 SETTABLEKS                       R13 R12 K18 ["TextYAlignment"]
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K11 ["TextLabel"]
       58 CALL                             R6 3 -1
       59 RETURN                           R6 -1
       60 LOADB                            R6 0
       61 GETIMPORT                        R7 K31 [ipairs]
       63 GETTABLEKS                       R8 R1 K5 ["Groups"]
       65 CALL                             R7 1 3
       66 FORGPREP_INEXT                   R7
       67 GETTABLEKS                       R12 R11 K32 ["Name"]
       69 GETTABLEKS                       R13 R11 K32 ["Name"]
       71 GETUPVAL                         R14 4
       72 GETTABLEKS                       R14 R14 K33 ["CursorGroupName"]
       74 JUMPIFNOTEQ                      R12 R14 ; [+17]
       76 GETTABLEKS                       R14 R11 K34 ["UISelected"]
       78 JUMPIFNOT                        R14 ; [+2]
       79 LOADB                            R6 1
       80 JUMP                             ; [+62]
       81 LOADK                            R14 K35 ["%* (%*)"]
       82 MOVE                             R16 R12
       83 LOADK                            R19 K5 ["Groups"]
       84 LOADK                            R20 K36 ["CursorGroupText"]
       85 NAMECALL                         R17 R2 K25 ["getText"]
       87 CALL                             R17 3 1
       88 NAMECALL                         R14 R14 K37 ["format"]
       90 CALL                             R14 3 1
       91 MOVE                             R13 R14
       92 GETUPVAL                         R14 1
       93 GETTABLEKS                       R14 R14 K7 ["createElement"]
       95 GETUPVAL                         R15 2
       96 DUPTABLE                         R16 K41 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment"}]
       97 ADDK                             R17 R10 K42 [1]
       98 SETTABLEKS                       R17 R16 K38 ["LayoutOrder"]
      100 GETIMPORT                        R17 K44 [UDim2.new]
      102 LOADN                            R18 1
      103 LOADN                            R19 0
      104 LOADN                            R20 0
      105 GETUPVAL                         R21 4
      106 GETTABLEKS                       R21 R21 K45 ["GroupListRowHeight"]
      108 CALL                             R17 4 1
      109 SETTABLEKS                       R17 R16 K13 ["Size"]
      111 GETIMPORT                        R17 K48 [Enum.FillDirection.Horizontal]
      113 SETTABLEKS                       R17 R16 K39 ["Layout"]
      115 GETIMPORT                        R17 K50 [Enum.HorizontalAlignment.Left]
      117 SETTABLEKS                       R17 R16 K40 ["HorizontalAlignment"]
      119 DUPTABLE                         R17 K52 [{"Button"}]
      120 GETUPVAL                         R18 1
      121 GETTABLEKS                       R18 R18 K7 ["createElement"]
      123 GETUPVAL                         R19 5
      124 DUPTABLE                         R20 K55 [{"Checked", "Text", "OnClick"}]
      125 GETTABLEKS                       R21 R5 K56 ["GetCollidesWith"]
      127 MOVE                             R22 R11
      128 CALL                             R21 1 1
      129 SETTABLEKS                       R21 R20 K53 ["Checked"]
      131 SETTABLEKS                       R13 R20 K14 ["Text"]
      133 NEWCLOSURE                       R21 P0
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R11
      136 SETTABLEKS                       R21 R20 K54 ["OnClick"]
      138 CALL                             R18 2 1
      139 SETTABLEKS                       R18 R17 K51 ["Button"]
      141 CALL                             R14 3 1
      142 SETTABLE                         R14 R4 R12
      143 FORGLOOP                         R7 2 [inext] ; [-77]
      145 JUMPIFNOT                        R6 ; [+61]
      146 GETUPVAL                         R7 1
      147 GETTABLEKS                       R7 R7 K7 ["createElement"]
      149 GETUPVAL                         R8 2
      150 DUPTABLE                         R9 K58 [{["AutomaticSize"], ["Size"], ["LayoutOrder"] = 1, ["Padding"]}]
      151 GETIMPORT                        R10 K60 [Enum.AutomaticSize.Y]
      153 SETTABLEKS                       R10 R9 K57 ["AutomaticSize"]
      155 GETIMPORT                        R10 K22 [UDim2.fromScale]
      157 LOADN                            R11 1
      158 LOADN                            R12 0
      159 CALL                             R10 2 1
      160 SETTABLEKS                       R10 R9 K13 ["Size"]
      162 DUPTABLE                         R10 K65 [{["Top"] = 10, ["Bottom"] = 6}]
      163 SETTABLEKS                       R10 R9 K8 ["Padding"]
      165 DUPTABLE                         R10 K67 [{"PaddedAlert"}]
      166 GETUPVAL                         R11 1
      167 GETTABLEKS                       R11 R11 K7 ["createElement"]
      169 GETUPVAL                         R12 6
      170 DUPTABLE                         R13 K70 [{"Title", "Body", "OnClick"}]
      171 LOADK                            R16 K5 ["Groups"]
      172 LOADK                            R17 K71 ["CursorGroupTitle"]
      173 NAMECALL                         R14 R2 K25 ["getText"]
      175 CALL                             R14 3 1
      176 SETTABLEKS                       R14 R13 K68 ["Title"]
      178 LOADK                            R16 K5 ["Groups"]
      179 LOADK                            R17 K72 ["CursorGroupInfo"]
      180 NEWTABLE                         R18 0 1
      182 LOADK                            R20 K73 ["<b>%*</b>"]
      183 GETUPVAL                         R22 4
      184 GETTABLEKS                       R22 R22 K33 ["CursorGroupName"]
      186 NAMECALL                         R20 R20 K37 ["format"]
      188 CALL                             R20 2 1
      189 MOVE                             R19 R20
      190 SETLIST                          R18 R19 1 [1]
      192 NAMECALL                         R14 R2 K25 ["getText"]
      194 CALL                             R14 4 1
      195 SETTABLEKS                       R14 R13 K69 ["Body"]
      197 GETTABLEKS                       R14 R0 K74 ["onCursorGroupLearnMoreClicked"]
      199 SETTABLEKS                       R14 R13 K54 ["OnClick"]
      201 CALL                             R11 2 1
      202 SETTABLEKS                       R11 R10 K66 ["PaddedAlert"]
      204 CALL                             R7 3 1
      205 SETTABLEKS                       R7 R4 K75 ["CursorGroupAlert"]
      207 GETUPVAL                         R7 1
      208 GETTABLEKS                       R7 R7 K7 ["createElement"]
      210 GETUPVAL                         R8 2
      211 DUPTABLE                         R9 K76 [{"AutomaticSize", "LayoutOrder", "Layout", "Padding"}]
      212 GETIMPORT                        R10 K78 [Enum.AutomaticSize.XY]
      214 SETTABLEKS                       R10 R9 K57 ["AutomaticSize"]
      216 GETTABLEKS                       R10 R1 K38 ["LayoutOrder"]
      218 SETTABLEKS                       R10 R9 K38 ["LayoutOrder"]
      220 GETIMPORT                        R10 K48 [Enum.FillDirection.Horizontal]
      222 SETTABLEKS                       R10 R9 K39 ["Layout"]
      224 GETTABLEKS                       R10 R3 K79 ["MainPanePadding"]
      226 SETTABLEKS                       R10 R9 K8 ["Padding"]
      228 DUPTABLE                         R10 K81 [{"ListPane"}]
      229 GETUPVAL                         R11 1
      230 GETTABLEKS                       R11 R11 K7 ["createElement"]
      232 GETUPVAL                         R12 2
      233 DUPTABLE                         R13 K82 [{"AutomaticSize", "Layout"}]
      234 GETIMPORT                        R14 K78 [Enum.AutomaticSize.XY]
      236 SETTABLEKS                       R14 R13 K57 ["AutomaticSize"]
      238 GETIMPORT                        R14 K84 [Enum.FillDirection.Vertical]
      240 SETTABLEKS                       R14 R13 K39 ["Layout"]
      242 MOVE                             R14 R4
      243 CALL                             R11 3 1
      244 SETTABLEKS                       R11 R10 K80 ["ListPane"]
      246 CALL                             R7 3 -1
      247 RETURN                           R7 -1

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
