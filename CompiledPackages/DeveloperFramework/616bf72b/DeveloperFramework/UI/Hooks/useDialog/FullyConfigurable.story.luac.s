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
       44 DUPTABLE                         R19 K11 [{"Intent", "Heading", "Body", "Contents", "ActionPrimary", "ActionSecondary", "ActionTertiary", "Modal", "Title"}]
       45 GETUPVAL                         R22 3
       46 GETTABLE                         R21 R22 R0
       47 SETTABLEKS                       R21 R19 K2 ["Intent"]
       49 LOADK                            R21 K12 ["Are you sure you want to quit Roblox Studio?"]
       50 SETTABLEKS                       R21 R19 K3 ["Heading"]
       52 LOADK                            R21 K13 ["The details will be shown here. The details will be shown here."]
       53 SETTABLEKS                       R21 R19 K4 ["Body"]
       55 MOVE                             R21 R17
       56 CALL                             R21 0 1
       57 SETTABLEKS                       R21 R19 K5 ["Contents"]
       59 GETUPVAL                         R21 4
       60 MOVE                             R22 R4
       61 MOVE                             R23 R6
       62 MOVE                             R24 R16
       63 CALL                             R21 3 1
       64 SETTABLEKS                       R21 R19 K6 ["ActionPrimary"]
       66 GETUPVAL                         R21 4
       67 MOVE                             R22 R8
       68 MOVE                             R23 R10
       69 MOVE                             R24 R16
       70 CALL                             R21 3 1
       71 SETTABLEKS                       R21 R19 K7 ["ActionSecondary"]
       73 GETUPVAL                         R21 4
       74 MOVE                             R22 R12
       75 MOVE                             R23 R14
       76 MOVE                             R24 R16
       77 CALL                             R21 3 1
       78 SETTABLEKS                       R21 R19 K8 ["ActionTertiary"]
       80 SETTABLEKS                       R2 R19 K9 ["Modal"]
       82 LOADK                            R21 K14 ["Dialog Story"]
       83 SETTABLEKS                       R21 R19 K10 ["Title"]
       85 CALL                             R18 1 3
       86 GETUPVAL                         R21 0
       87 GETTABLEKS                       R21 R21 K15 ["createElement"]
       89 LOADK                            R22 K16 ["Frame"]
       90 NEWTABLE                         R23 2 0
       92 LOADN                            R24 1
       93 SETTABLEKS                       R24 R23 K17 ["BackgroundTransparency"]
       95 GETUPVAL                         R24 0
       96 GETTABLEKS                       R24 R24 K18 ["Tag"]
       98 LOADK                            R25 K19 ["X-ColumnM X-Fit"]
       99 SETTABLE                         R25 R23 R24
      100 NEWTABLE                         R24 0 6
      102 GETUPVAL                         R25 0
      103 GETTABLEKS                       R25 R25 K15 ["createElement"]
      105 GETUPVAL                         R26 5
      106 DUPTABLE                         R27 K22 [{"OnClick", "Text"}]
      107 NEWCLOSURE                       R28 P0
      108 CAPTURE                          VAL R20
      109 CAPTURE                          VAL R19
      110 CAPTURE                          VAL R18
      111 SETTABLEKS                       R28 R27 K20 ["OnClick"]
      113 LOADK                            R29 K23 ["%* Dialog"]
      114 JUMPIFNOT                        R20 ; [+2]
      115 LOADK                            R31 K24 ["Hide"]
      116 JUMP                             ; [+1]
      117 LOADK                            R31 K25 ["Show"]
      118 NAMECALL                         R29 R29 K26 ["format"]
      120 CALL                             R29 2 1
      121 MOVE                             R28 R29
      122 SETTABLEKS                       R28 R27 K21 ["Text"]
      124 CALL                             R25 2 1
      125 GETUPVAL                         R26 6
      126 LOADK                            R27 K2 ["Intent"]
      127 NEWTABLE                         R28 0 1
      129 GETUPVAL                         R29 7
      130 GETUPVAL                         R30 3
      131 MOVE                             R31 R0
      132 MOVE                             R32 R1
      133 CALL                             R29 3 -1
      134 SETLIST                          R28 R29 -1 [1]
      136 CALL                             R26 2 1
      137 GETUPVAL                         R27 6
      138 LOADK                            R28 K27 ["Primary Action"]
      139 NEWTABLE                         R29 0 2
      141 GETUPVAL                         R30 7
      142 GETUPVAL                         R31 8
      143 MOVE                             R32 R4
      144 MOVE                             R33 R5
      145 CALL                             R30 3 1
      146 GETUPVAL                         R31 9
      147 MOVE                             R32 R6
      148 MOVE                             R33 R7
      149 LOADK                            R34 K28 ["Enabled"]
      150 LOADK                            R35 K29 ["Disabled"]
      151 CALL                             R31 4 -1
      152 SETLIST                          R29 R30 -1 [1]
      154 CALL                             R27 2 1
      155 GETUPVAL                         R28 6
      156 LOADK                            R29 K30 ["Secondary Action"]
      157 NEWTABLE                         R30 0 2
      159 GETUPVAL                         R31 7
      160 GETUPVAL                         R32 8
      161 MOVE                             R33 R8
      162 MOVE                             R34 R9
      163 CALL                             R31 3 1
      164 GETUPVAL                         R32 9
      165 MOVE                             R33 R10
      166 MOVE                             R34 R11
      167 LOADK                            R35 K28 ["Enabled"]
      168 LOADK                            R36 K29 ["Disabled"]
      169 CALL                             R32 4 -1
      170 SETLIST                          R30 R31 -1 [1]
      172 CALL                             R28 2 1
      173 GETUPVAL                         R29 6
      174 LOADK                            R30 K31 ["Tertiary Action"]
      175 NEWTABLE                         R31 0 2
      177 GETUPVAL                         R32 7
      178 GETUPVAL                         R33 8
      179 MOVE                             R34 R12
      180 MOVE                             R35 R13
      181 CALL                             R32 3 1
      182 GETUPVAL                         R33 9
      183 MOVE                             R34 R14
      184 MOVE                             R35 R15
      185 LOADK                            R36 K28 ["Enabled"]
      186 LOADK                            R37 K29 ["Disabled"]
      187 CALL                             R33 4 -1
      188 SETLIST                          R31 R32 -1 [1]
      190 CALL                             R29 2 1
      191 GETUPVAL                         R30 9
      192 MOVE                             R31 R2
      193 MOVE                             R32 R3
      194 LOADK                            R33 K32 ["Modal: ON"]
      195 LOADK                            R34 K33 ["Modal: OFF"]
      196 CALL                             R30 4 -1
      197 SETLIST                          R24 R25 -1 [1]
      199 CALL                             R21 3 -1
      200 RETURN                           R21 -1

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
       72 DUPTABLE                         R11 K23 [{"name"}]
       73 LOADK                            R12 K24 ["None"]
       74 SETTABLEKS                       R12 R11 K22 ["name"]
       76 DUPTABLE                         R12 K26 [{"name", "action"}]
       77 LOADK                            R13 K27 ["Yes"]
       78 SETTABLEKS                       R13 R12 K22 ["name"]
       80 GETTABLEKS                       R13 R7 K28 ["YES"]
       82 SETTABLEKS                       R13 R12 K25 ["action"]
       84 DUPTABLE                         R13 K26 [{"name", "action"}]
       85 LOADK                            R14 K29 ["No"]
       86 SETTABLEKS                       R14 R13 K22 ["name"]
       88 GETTABLEKS                       R14 R7 K30 ["NO"]
       90 SETTABLEKS                       R14 R13 K25 ["action"]
       92 DUPTABLE                         R14 K26 [{"name", "action"}]
       93 LOADK                            R15 K31 ["OK"]
       94 SETTABLEKS                       R15 R14 K22 ["name"]
       96 GETTABLEKS                       R15 R7 K31 ["OK"]
       98 SETTABLEKS                       R15 R14 K25 ["action"]
      100 DUPTABLE                         R15 K26 [{"name", "action"}]
      101 LOADK                            R16 K32 ["Cancel"]
      102 SETTABLEKS                       R16 R15 K22 ["name"]
      104 GETTABLEKS                       R16 R7 K33 ["CANCEL"]
      106 SETTABLEKS                       R16 R15 K25 ["action"]
      108 DUPTABLE                         R16 K26 [{"name", "action"}]
      109 LOADK                            R17 K34 ["Close"]
      110 SETTABLEKS                       R17 R16 K22 ["name"]
      112 GETTABLEKS                       R17 R7 K35 ["CLOSE"]
      114 SETTABLEKS                       R17 R16 K25 ["action"]
      116 DUPTABLE                         R17 K26 [{"name", "action"}]
      117 LOADK                            R18 K36 ["Save"]
      118 SETTABLEKS                       R18 R17 K22 ["name"]
      120 GETTABLEKS                       R18 R7 K37 ["SAVE"]
      122 SETTABLEKS                       R18 R17 K25 ["action"]
      124 DUPTABLE                         R18 K23 [{"name"}]
      125 LOADK                            R19 K38 ["ShowDetails"]
      126 SETTABLEKS                       R19 R18 K22 ["name"]
      128 SETLIST                          R10 R11 8 [1]
      130 NEWTABLE                         R11 0 0
      132 MOVE                             R12 R10
      133 LOADNIL                          R13
      134 LOADNIL                          R14
      135 FORGPREP                         R12
      136 GETTABLEKS                       R19 R16 K22 ["name"]
      138 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
      140 MOVE                             R18 R11
      141 GETIMPORT                        R17 K41 [table.insert]
      143 CALL                             R17 2 0
      144 FORGLOOP                         R12 2 ; [-9]
      146 DUPCLOSURE                       R12 K42 [PROTO_1]
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R4
      149 DUPCLOSURE                       R13 K43 [PROTO_3]
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R5
      152 DUPCLOSURE                       R14 K44 [PROTO_4]
      153 CAPTURE                          VAL R1
      154 DUPCLOSURE                       R15 K45 [PROTO_5]
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R2
      157 DUPCLOSURE                       R16 K46 [PROTO_7]
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R12
      168 DUPTABLE                         R17 K48 [{"story"}]
      169 GETTABLEKS                       R18 R1 K49 ["createElement"]
      171 MOVE                             R19 R16
      172 CALL                             R18 1 1
      173 SETTABLEKS                       R18 R17 K47 ["story"]
      175 RETURN                           R17 1
