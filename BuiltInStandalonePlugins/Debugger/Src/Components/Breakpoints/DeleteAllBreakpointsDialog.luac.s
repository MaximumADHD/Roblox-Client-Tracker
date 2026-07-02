PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Yes"] ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["DeleteAllBreakpoints"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["CloseDialog"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CloseDialog"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K13 [{["Style"] = "AcceptCancel", ["Enabled"], ["Modal"] = True, ["Title"], ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
        9 GETTABLEKS                       R6 R1 K5 ["Enabled"]
       11 SETTABLEKS                       R6 R5 K5 ["Enabled"]
       13 LOADK                            R8 K14 ["BreakpointsWindow"]
       14 LOADK                            R9 K15 ["DeleteAll"]
       15 NAMECALL                         R6 R2 K16 ["getText"]
       17 CALL                             R6 3 1
       18 SETTABLEKS                       R6 R5 K8 ["Title"]
       20 GETIMPORT                        R6 K19 [Vector2.new]
       22 LOADN                            R7 300
       23 LOADN                            R8 100
       24 CALL                             R6 2 1
       25 SETTABLEKS                       R6 R5 K9 ["MinContentSize"]
       27 NEWTABLE                         R6 0 2
       29 DUPTABLE                         R7 K23 [{["Key"] = "Yes", ["Text"]}]
       30 LOADK                            R10 K14 ["BreakpointsWindow"]
       31 LOADK                            R11 K24 ["DeleteAllPopupYes"]
       32 NAMECALL                         R8 R2 K16 ["getText"]
       34 CALL                             R8 3 1
       35 SETTABLEKS                       R8 R7 K22 ["Text"]
       37 DUPTABLE                         R8 K26 [{["Key"] = "No", ["Text"]}]
       38 LOADK                            R11 K14 ["BreakpointsWindow"]
       39 LOADK                            R12 K27 ["DeleteAllPopupNo"]
       40 NAMECALL                         R9 R2 K16 ["getText"]
       42 CALL                             R9 3 1
       43 SETTABLEKS                       R9 R8 K22 ["Text"]
       45 SETLIST                          R6 R7 2 [1]
       47 SETTABLEKS                       R6 R5 K10 ["Buttons"]
       49 NEWCLOSURE                       R6 P0
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R6 R5 K11 ["OnButtonPressed"]
       53 NEWCLOSURE                       R6 P1
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R6 R5 K12 ["OnClose"]
       57 DUPTABLE                         R6 K29 [{"Contents"}]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K2 ["createElement"]
       61 GETUPVAL                         R8 2
       62 DUPTABLE                         R9 K37 [{["BackgroundTransparency"] = 1, ["TextSize"] = 20, ["Text"], ["TextColor3"], ["Size"], ["Position"]}]
       63 LOADK                            R12 K14 ["BreakpointsWindow"]
       64 LOADK                            R13 K38 ["DeleteAllPopupText"]
       65 NAMECALL                         R10 R2 K16 ["getText"]
       67 CALL                             R10 3 1
       68 SETTABLEKS                       R10 R9 K22 ["Text"]
       70 GETIMPORT                        R10 K40 [Color3.new]
       72 LOADN                            R11 1
       73 LOADN                            R12 1
       74 LOADN                            R13 1
       75 CALL                             R10 3 1
       76 SETTABLEKS                       R10 R9 K34 ["TextColor3"]
       78 GETIMPORT                        R10 K43 [UDim2.fromScale]
       80 LOADN                            R11 1
       81 LOADN                            R12 1
       82 CALL                             R10 2 1
       83 SETTABLEKS                       R10 R9 K35 ["Size"]
       85 GETIMPORT                        R10 K43 [UDim2.fromScale]
       87 LOADN                            R11 0
       88 LOADN                            R12 0
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K36 ["Position"]
       92 CALL                             R7 2 1
       93 SETTABLEKS                       R7 R6 K28 ["Contents"]
       95 CALL                             R3 3 -1
       96 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
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
