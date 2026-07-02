PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K3 [{"OnClick", "Text"}]
        5 NEWCLOSURE                       R7 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R7 R6 K1 ["OnClick"]
       10 JUMPIFNOT                        R0 ; [+2]
       11 MOVE                             R7 R2
       12 JUMP                             ; [+1]
       13 MOVE                             R7 R3
       14 SETTABLEKS                       R7 R6 K2 ["Text"]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K4 [{"Items", "OnItemActivated", "SelectedIndex"}]
        5 SETTABLEKS                       R0 R5 K1 ["Items"]
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R2
        9 SETTABLEKS                       R6 R5 K2 ["OnItemActivated"]
       11 SETTABLEKS                       R1 R5 K3 ["SelectedIndex"]
       13 CALL                             R3 2 -1
       14 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 LOADK                            R3 K1 ["Frame"]
        4 NEWTABLE                         R4 2 0
        6 LOADN                            R5 1
        7 SETTABLEKS                       R5 R4 K2 ["BackgroundTransparency"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K3 ["Tag"]
       12 LOADK                            R6 K4 ["X-RowM X-FitY X-Middle"]
       13 SETTABLE                         R6 R4 R5
       14 DUPTABLE                         R5 K7 [{"Label", "Content"}]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["createElement"]
       18 LOADK                            R7 K8 ["TextLabel"]
       19 NEWTABLE                         R8 8 0
       21 LOADN                            R9 1
       22 SETTABLEKS                       R9 R8 K2 ["BackgroundTransparency"]
       24 GETIMPORT                        R9 K12 [Enum.Font.SourceSans]
       26 SETTABLEKS                       R9 R8 K10 ["Font"]
       28 LOADN                            R9 1
       29 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       31 SETTABLEKS                       R0 R8 K14 ["Text"]
       33 GETIMPORT                        R9 K17 [Color3.new]
       35 LOADN                            R10 1
       36 LOADN                            R11 1
       37 LOADN                            R12 1
       38 CALL                             R9 3 1
       39 SETTABLEKS                       R9 R8 K18 ["TextColor3"]
       41 LOADN                            R9 16
       42 SETTABLEKS                       R9 R8 K19 ["TextSize"]
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R9 R9 K3 ["Tag"]
       47 LOADK                            R10 K20 ["X-Fit"]
       48 SETTABLE                         R10 R8 R9
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K5 ["Label"]
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K0 ["createElement"]
       55 LOADK                            R7 K1 ["Frame"]
       56 NEWTABLE                         R8 4 0
       58 LOADN                            R9 1
       59 SETTABLEKS                       R9 R8 K2 ["BackgroundTransparency"]
       61 LOADN                            R9 2
       62 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K3 ["Tag"]
       67 LOADK                            R10 K21 ["X-RowM X-Fit X-Middle"]
       68 SETTABLE                         R10 R8 R9
       69 MOVE                             R9 R1
       70 CALL                             R6 3 1
       71 SETTABLEKS                       R6 R5 K6 ["Content"]
       73 CALL                             R2 3 -1
       74 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLEKS                       R4 R3 K0 ["action"]
        4 JUMPIFNOT                        R4 ; [+10]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["join"]
        8 GETTABLEKS                       R5 R3 K0 ["action"]
       10 DUPTABLE                         R6 K3 [{"Enabled"}]
       11 SETTABLEKS                       R1 R6 K2 ["Enabled"]
       13 CALL                             R4 2 -1
       14 RETURN                           R4 -1
       15 GETTABLEKS                       R4 R3 K4 ["name"]
       17 JUMPIFNOTEQKS                    R4 K5 ["ShowDetails"] ; [+10]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K1 ["join"]
       22 MOVE                             R5 R2
       23 DUPTABLE                         R6 K3 [{"Enabled"}]
       24 SETTABLEKS                       R1 R6 K2 ["Enabled"]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1
       28 LOADNIL                          R4
       29 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["useState"]
       13 LOADN                            R5 2
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["useState"]
       18 LOADB                            R7 1
       19 CALL                             R6 1 2
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K0 ["useState"]
       23 LOADN                            R9 1
       24 CALL                             R8 1 2
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K0 ["useState"]
       28 LOADB                            R11 1
       29 CALL                             R10 1 2
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R12 R12 K0 ["useState"]
       33 LOADN                            R13 1
       34 CALL                             R12 1 2
       35 GETUPVAL                         R14 0
       36 GETTABLEKS                       R14 R14 K0 ["useState"]
       38 LOADB                            R15 1
       39 CALL                             R14 1 2
       40 GETUPVAL                         R16 1
       41 LOADK                            R17 K1 ["Here are the details:\n- This is a detail\n- You rock!\n- Have a nice day!"]
       42 CALL                             R16 1 2
       43 GETUPVAL                         R18 2
       44 DUPTABLE                         R19 K14 [{["Intent"], ["Heading"] = "Are you sure you want to quit Roblox Studio?", ["Body"] = "The details will be shown here. The details will be shown here.", ["Contents"], ["ActionPrimary"], ["ActionSecondary"], ["ActionTertiary"], ["Modal"], ["Title"] = "Dialog Story"}]
       45 GETUPVAL                         R22 3
       46 GETTABLE                         R21 R22 R0
       47 SETTABLEKS                       R21 R19 K2 ["Intent"]
       49 MOVE                             R21 R17
       50 CALL                             R21 0 1
       51 SETTABLEKS                       R21 R19 K7 ["Contents"]
       53 GETUPVAL                         R21 4
       54 MOVE                             R22 R4
       55 MOVE                             R23 R6
       56 MOVE                             R24 R16
       57 CALL                             R21 3 1
       58 SETTABLEKS                       R21 R19 K8 ["ActionPrimary"]
       60 GETUPVAL                         R21 4
       61 MOVE                             R22 R8
       62 MOVE                             R23 R10
       63 MOVE                             R24 R16
       64 CALL                             R21 3 1
       65 SETTABLEKS                       R21 R19 K9 ["ActionSecondary"]
       67 GETUPVAL                         R21 4
       68 MOVE                             R22 R12
       69 MOVE                             R23 R14
       70 MOVE                             R24 R16
       71 CALL                             R21 3 1
       72 SETTABLEKS                       R21 R19 K10 ["ActionTertiary"]
       74 SETTABLEKS                       R2 R19 K11 ["Modal"]
       76 CALL                             R18 1 3
       77 GETUPVAL                         R21 0
       78 GETTABLEKS                       R21 R21 K15 ["createElement"]
       80 LOADK                            R22 K16 ["Frame"]
       81 NEWTABLE                         R23 2 0
       83 LOADN                            R24 1
       84 SETTABLEKS                       R24 R23 K17 ["BackgroundTransparency"]
       86 GETUPVAL                         R24 0
       87 GETTABLEKS                       R24 R24 K18 ["Tag"]
       89 LOADK                            R25 K19 ["X-ColumnM X-Fit"]
       90 SETTABLE                         R25 R23 R24
       91 NEWTABLE                         R24 0 6
       93 GETUPVAL                         R25 0
       94 GETTABLEKS                       R25 R25 K15 ["createElement"]
       96 GETUPVAL                         R26 5
       97 DUPTABLE                         R27 K22 [{"OnClick", "Text"}]
       98 NEWCLOSURE                       R28 P0
       99 CAPTURE                          VAL R20
      100 CAPTURE                          VAL R19
      101 CAPTURE                          VAL R18
      102 SETTABLEKS                       R28 R27 K20 ["OnClick"]
      104 LOADK                            R29 K23 ["%* Dialog"]
      105 JUMPIFNOT                        R20 ; [+2]
      106 LOADK                            R31 K24 ["Hide"]
      107 JUMP                             ; [+1]
      108 LOADK                            R31 K25 ["Show"]
      109 NAMECALL                         R29 R29 K26 ["format"]
      111 CALL                             R29 2 1
      112 MOVE                             R28 R29
      113 SETTABLEKS                       R28 R27 K21 ["Text"]
      115 CALL                             R25 2 1
      116 GETUPVAL                         R26 6
      117 LOADK                            R27 K2 ["Intent"]
      118 NEWTABLE                         R28 0 1
      120 GETUPVAL                         R29 7
      121 GETUPVAL                         R30 3
      122 MOVE                             R31 R0
      123 MOVE                             R32 R1
      124 CALL                             R29 3 -1
      125 SETLIST                          R28 R29 -1 [1]
      127 CALL                             R26 2 1
      128 GETUPVAL                         R27 6
      129 LOADK                            R28 K27 ["Primary Action"]
      130 NEWTABLE                         R29 0 2
      132 GETUPVAL                         R30 7
      133 GETUPVAL                         R31 8
      134 MOVE                             R32 R4
      135 MOVE                             R33 R5
      136 CALL                             R30 3 1
      137 GETUPVAL                         R31 9
      138 MOVE                             R32 R6
      139 MOVE                             R33 R7
      140 LOADK                            R34 K28 ["Enabled"]
      141 LOADK                            R35 K29 ["Disabled"]
      142 CALL                             R31 4 -1
      143 SETLIST                          R29 R30 -1 [1]
      145 CALL                             R27 2 1
      146 GETUPVAL                         R28 6
      147 LOADK                            R29 K30 ["Secondary Action"]
      148 NEWTABLE                         R30 0 2
      150 GETUPVAL                         R31 7
      151 GETUPVAL                         R32 8
      152 MOVE                             R33 R8
      153 MOVE                             R34 R9
      154 CALL                             R31 3 1
      155 GETUPVAL                         R32 9
      156 MOVE                             R33 R10
      157 MOVE                             R34 R11
      158 LOADK                            R35 K28 ["Enabled"]
      159 LOADK                            R36 K29 ["Disabled"]
      160 CALL                             R32 4 -1
      161 SETLIST                          R30 R31 -1 [1]
      163 CALL                             R28 2 1
      164 GETUPVAL                         R29 6
      165 LOADK                            R30 K31 ["Tertiary Action"]
      166 NEWTABLE                         R31 0 2
      168 GETUPVAL                         R32 7
      169 GETUPVAL                         R33 8
      170 MOVE                             R34 R12
      171 MOVE                             R35 R13
      172 CALL                             R32 3 1
      173 GETUPVAL                         R33 9
      174 MOVE                             R34 R14
      175 MOVE                             R35 R15
      176 LOADK                            R36 K28 ["Enabled"]
      177 LOADK                            R37 K29 ["Disabled"]
      178 CALL                             R33 4 -1
      179 SETLIST                          R31 R32 -1 [1]
      181 CALL                             R29 2 1
      182 GETUPVAL                         R30 9
      183 MOVE                             R31 R2
      184 MOVE                             R32 R3
      185 LOADK                            R33 K32 ["Modal: ON"]
      186 LOADK                            R34 K33 ["Modal: OFF"]
      187 CALL                             R30 4 -1
      188 SETLIST                          R24 R25 -1 [1]
      190 CALL                             R21 3 -1
      191 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K2 ["UI"]
       25 GETTABLEKS                       R3 R3 K10 ["Components"]
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R3 K11 ["IconButton"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R3 K12 ["SelectInput"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K2 ["UI"]
       41 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       43 GETTABLEKS                       R7 R7 K14 ["useDialogDetailsAction"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K7 ["Util"]
       50 GETTABLEKS                       R8 R8 K15 ["DialogAction"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETIMPORT                        R9 K1 [script]
       57 GETTABLEKS                       R9 R9 K4 ["Parent"]
       59 CALL                             R8 1 1
       60 NEWTABLE                         R9 0 6
       62 LOADK                            R10 K16 ["Confirmation"]
       63 LOADK                            R11 K17 ["Destructive"]
       64 LOADK                            R12 K18 ["Error"]
       65 LOADK                            R13 K19 ["Information"]
       66 LOADK                            R14 K20 ["Question"]
       67 LOADK                            R15 K21 ["Warning"]
       68 SETLIST                          R9 R10 6 [1]
       70 NEWTABLE                         R10 0 8
       72 DUPTABLE                         R11 K24 [{["name"] = "None"}]
       73 DUPTABLE                         R12 K27 [{["name"] = "Yes", ["action"]}]
       74 GETTABLEKS                       R13 R7 K28 ["YES"]
       76 SETTABLEKS                       R13 R12 K26 ["action"]
       78 DUPTABLE                         R13 K30 [{["name"] = "No", ["action"]}]
       79 GETTABLEKS                       R14 R7 K31 ["NO"]
       81 SETTABLEKS                       R14 R13 K26 ["action"]
       83 DUPTABLE                         R14 K33 [{["name"] = "OK", ["action"]}]
       84 GETTABLEKS                       R15 R7 K32 ["OK"]
       86 SETTABLEKS                       R15 R14 K26 ["action"]
       88 DUPTABLE                         R15 K35 [{["name"] = "Cancel", ["action"]}]
       89 GETTABLEKS                       R16 R7 K36 ["CANCEL"]
       91 SETTABLEKS                       R16 R15 K26 ["action"]
       93 DUPTABLE                         R16 K38 [{["name"] = "Close", ["action"]}]
       94 GETTABLEKS                       R17 R7 K39 ["CLOSE"]
       96 SETTABLEKS                       R17 R16 K26 ["action"]
       98 DUPTABLE                         R17 K41 [{["name"] = "Save", ["action"]}]
       99 GETTABLEKS                       R18 R7 K42 ["SAVE"]
      101 SETTABLEKS                       R18 R17 K26 ["action"]
      103 DUPTABLE                         R18 K44 [{["name"] = "ShowDetails"}]
      104 SETLIST                          R10 R11 8 [1]
      106 NEWTABLE                         R11 0 0
      108 MOVE                             R12 R10
      109 LOADNIL                          R13
      110 LOADNIL                          R14
      111 FORGPREP                         R12
      112 GETTABLEKS                       R19 R16 K22 ["name"]
      114 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      116 MOVE                             R18 R11
      117 GETIMPORT                        R17 K47 [table.insert]
      119 CALL                             R17 2 0
      120 FORGLOOP                         R12 2 ; [-9]
      122 DUPCLOSURE                       R12 K48 [PROTO_1]
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R4
      125 DUPCLOSURE                       R13 K49 [PROTO_3]
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R5
      128 DUPCLOSURE                       R14 K50 [PROTO_4]
      129 CAPTURE                          VAL R1
      130 DUPCLOSURE                       R15 K51 [PROTO_5]
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R2
      133 DUPCLOSURE                       R16 K52 [PROTO_7]
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R12
      144 DUPTABLE                         R17 K54 [{"story"}]
      145 GETTABLEKS                       R18 R1 K55 ["createElement"]
      147 MOVE                             R19 R16
      148 CALL                             R18 1 1
      149 SETTABLEKS                       R18 R17 K53 ["story"]
      151 RETURN                           R17 1
