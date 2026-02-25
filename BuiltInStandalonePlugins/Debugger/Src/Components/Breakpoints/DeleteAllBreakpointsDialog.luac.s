PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Yes"] ; [+5]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["DeleteAllBreakpoints"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["CloseDialog"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["CloseDialog"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K11 [{"Style", "Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
        9 LOADK                            R6 K12 ["AcceptCancel"]
       10 SETTABLEKS                       R6 R5 K3 ["Style"]
       12 GETTABLEKS                       R6 R1 K4 ["Enabled"]
       14 SETTABLEKS                       R6 R5 K4 ["Enabled"]
       16 LOADB                            R6 1
       17 SETTABLEKS                       R6 R5 K5 ["Modal"]
       19 LOADK                            R8 K13 ["BreakpointsWindow"]
       20 LOADK                            R9 K14 ["DeleteAll"]
       21 NAMECALL                         R6 R2 K15 ["getText"]
       23 CALL                             R6 3 1
       24 SETTABLEKS                       R6 R5 K6 ["Title"]
       26 GETIMPORT                        R6 K18 [Vector2.new]
       28 LOADN                            R7 44
       29 LOADN                            R8 100
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K7 ["MinContentSize"]
       33 NEWTABLE                         R6 0 2
       35 DUPTABLE                         R7 K21 [{"Key", "Text"}]
       36 LOADK                            R8 K22 ["Yes"]
       37 SETTABLEKS                       R8 R7 K19 ["Key"]
       39 LOADK                            R10 K13 ["BreakpointsWindow"]
       40 LOADK                            R11 K23 ["DeleteAllPopupYes"]
       41 NAMECALL                         R8 R2 K15 ["getText"]
       43 CALL                             R8 3 1
       44 SETTABLEKS                       R8 R7 K20 ["Text"]
       46 DUPTABLE                         R8 K21 [{"Key", "Text"}]
       47 LOADK                            R9 K24 ["No"]
       48 SETTABLEKS                       R9 R8 K19 ["Key"]
       50 LOADK                            R11 K13 ["BreakpointsWindow"]
       51 LOADK                            R12 K25 ["DeleteAllPopupNo"]
       52 NAMECALL                         R9 R2 K15 ["getText"]
       54 CALL                             R9 3 1
       55 SETTABLEKS                       R9 R8 K20 ["Text"]
       57 SETLIST                          R6 R7 2 [1]
       59 SETTABLEKS                       R6 R5 K8 ["Buttons"]
       61 NEWCLOSURE                       R6 P0
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R6 R5 K9 ["OnButtonPressed"]
       65 NEWCLOSURE                       R6 P1
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R6 R5 K10 ["OnClose"]
       69 DUPTABLE                         R6 K27 [{"Contents"}]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R7 R8 K2 ["createElement"]
       73 GETUPVAL                         R8 2
       74 DUPTABLE                         R9 K33 [{"BackgroundTransparency", "TextSize", "Text", "TextColor3", "Size", "Position"}]
       75 LOADN                            R10 1
       76 SETTABLEKS                       R10 R9 K28 ["BackgroundTransparency"]
       78 LOADN                            R10 20
       79 SETTABLEKS                       R10 R9 K29 ["TextSize"]
       81 LOADK                            R12 K13 ["BreakpointsWindow"]
       82 LOADK                            R13 K34 ["DeleteAllPopupText"]
       83 NAMECALL                         R10 R2 K15 ["getText"]
       85 CALL                             R10 3 1
       86 SETTABLEKS                       R10 R9 K20 ["Text"]
       88 GETIMPORT                        R10 K36 [Color3.new]
       90 LOADN                            R11 1
       91 LOADN                            R12 1
       92 LOADN                            R13 1
       93 CALL                             R10 3 1
       94 SETTABLEKS                       R10 R9 K30 ["TextColor3"]
       96 GETIMPORT                        R10 K39 [UDim2.fromScale]
       98 LOADN                            R11 1
       99 LOADN                            R12 1
      100 CALL                             R10 2 1
      101 SETTABLEKS                       R10 R9 K31 ["Size"]
      103 GETIMPORT                        R10 K39 [UDim2.fromScale]
      105 LOADN                            R11 0
      106 LOADN                            R12 0
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K32 ["Position"]
      110 CALL                             R7 2 1
      111 SETTABLEKS                       R7 R6 K26 ["Contents"]
      113 CALL                             R3 3 -1
      114 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["UI"]
       27 GETTABLEKS                       R4 R3 K9 ["TextLabel"]
       29 GETTABLEKS                       R5 R3 K10 ["StyledDialog"]
       31 GETTABLEKS                       R6 R2 K11 ["ContextServices"]
       33 GETTABLEKS                       R7 R6 K12 ["Localization"]
       35 GETTABLEKS                       R8 R1 K13 ["PureComponent"]
       37 LOADK                            R10 K14 ["DeleteAllBreakpointsDialog"]
       38 NAMECALL                         R8 R8 K15 ["extend"]
       40 CALL                             R8 2 1
       41 DUPCLOSURE                       R9 K16 [PROTO_2]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 SETTABLEKS                       R9 R8 K17 ["render"]
       47 GETTABLEKS                       R9 R6 K18 ["withContext"]
       49 DUPTABLE                         R10 K19 [{"Localization"}]
       50 SETTABLEKS                       R7 R10 K12 ["Localization"]
       52 CALL                             R9 1 1
       53 MOVE                             R10 R8
       54 CALL                             R9 1 1
       55 MOVE                             R8 R9
       56 RETURN                           R8 1
