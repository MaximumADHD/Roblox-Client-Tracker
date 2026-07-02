PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R2 K2 ["FakeLoadProps"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["Dictionary"]
        9 GETTABLEKS                       R5 R5 K4 ["join"]
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R4
       13 LOADK                            R8 K5 ["OnFakeLoadCompleted"]
       14 CALL                             R6 2 1
       15 DUPTABLE                         R7 K8 [{"Size", "LayoutOrder"}]
       16 GETIMPORT                        R8 K11 [UDim2.new]
       18 LOADN                            R9 1
       19 LOADN                            R10 0
       20 LOADN                            R11 0
       21 GETTABLEKS                       R12 R3 K12 ["BarHeight"]
       23 CALL                             R8 4 1
       24 SETTABLEKS                       R8 R7 K6 ["Size"]
       26 SETTABLEKS                       R1 R7 K7 ["LayoutOrder"]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K13 ["createElement"]
       32 GETUPVAL                         R7 3
       33 MOVE                             R8 R5
       34 CALL                             R6 2 -1
       35 RETURN                           R6 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R2 K2 ["Progress"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["createElement"]
        9 GETUPVAL                         R6 1
       10 DUPTABLE                         R7 K6 [{"Size", "LayoutOrder", "Progress"}]
       11 GETIMPORT                        R8 K9 [UDim2.new]
       13 LOADN                            R9 1
       14 LOADN                            R10 0
       15 LOADN                            R11 0
       16 GETTABLEKS                       R12 R3 K10 ["BarHeight"]
       18 CALL                             R8 4 1
       19 SETTABLEKS                       R8 R7 K4 ["Size"]
       21 SETTABLEKS                       R1 R7 K5 ["LayoutOrder"]
       23 SETTABLEKS                       R4 R7 K2 ["Progress"]
       25 CALL                             R5 2 -1
       26 RETURN                           R5 -1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Text"]
        4 GETTABLEKS                       R3 R1 K2 ["FakeLoadProps"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["new"]
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K5 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K7 [{"OnFocusLost"}]
       17 DUPCLOSURE                       R9 K8 [PROTO_2]
       18 SETTABLEKS                       R9 R8 K6 ["OnFocusLost"]
       20 DUPTABLE                         R9 K10 [{"Pane"}]
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R10 R10 K5 ["createElement"]
       24 GETUPVAL                         R11 3
       25 DUPTABLE                         R12 K17 [{"BackgroundColor3", "BackgroundTransparency", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
       26 GETTABLEKS                       R13 R4 K18 ["BackgroundColor"]
       28 SETTABLEKS                       R13 R12 K11 ["BackgroundColor3"]
       30 GETTABLEKS                       R13 R4 K12 ["BackgroundTransparency"]
       32 SETTABLEKS                       R13 R12 K12 ["BackgroundTransparency"]
       34 GETIMPORT                        R13 K22 [Enum.FillDirection.Vertical]
       36 SETTABLEKS                       R13 R12 K13 ["Layout"]
       38 GETIMPORT                        R13 K24 [Enum.HorizontalAlignment.Center]
       40 SETTABLEKS                       R13 R12 K14 ["HorizontalAlignment"]
       42 GETIMPORT                        R13 K25 [Enum.VerticalAlignment.Center]
       44 SETTABLEKS                       R13 R12 K15 ["VerticalAlignment"]
       46 GETTABLEKS                       R13 R4 K16 ["Padding"]
       48 SETTABLEKS                       R13 R12 K16 ["Padding"]
       50 DUPTABLE                         R13 K27 [{"Text", "ProgressBar"}]
       51 GETUPVAL                         R14 1
       52 GETTABLEKS                       R14 R14 K5 ["createElement"]
       54 GETUPVAL                         R15 4
       55 DUPTABLE                         R16 K34 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["TextSize"], ["Text"], ["TextWrapped"] = True, ["LayoutOrder"]}]
       56 GETIMPORT                        R17 K36 [Enum.AutomaticSize.XY]
       58 SETTABLEKS                       R17 R16 K28 ["AutomaticSize"]
       60 GETTABLEKS                       R17 R4 K30 ["TextSize"]
       62 SETTABLEKS                       R17 R16 K30 ["TextSize"]
       64 SETTABLEKS                       R2 R16 K1 ["Text"]
       66 NAMECALL                         R17 R5 K37 ["getNextOrder"]
       68 CALL                             R17 1 1
       69 SETTABLEKS                       R17 R16 K33 ["LayoutOrder"]
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K1 ["Text"]
       74 JUMPIFNOT                        R3 ; [+7]
       75 NAMECALL                         R16 R5 K37 ["getNextOrder"]
       77 CALL                             R16 1 -1
       78 NAMECALL                         R14 R0 K38 ["renderFakeLoadingBar"]
       80 CALL                             R14 -1 1
       81 JUMP                             ; [+6]
       82 NAMECALL                         R16 R5 K37 ["getNextOrder"]
       84 CALL                             R16 1 -1
       85 NAMECALL                         R14 R0 K39 ["renderLoadingBar"]
       87 CALL                             R14 -1 1
       88 SETTABLEKS                       R14 R13 K26 ["ProgressBar"]
       90 CALL                             R10 3 1
       91 SETTABLEKS                       R10 R9 K9 ["Pane"]
       93 CALL                             R6 3 -1
       94 RETURN                           R6 -1

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["FakeLoadProps"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R4 K0 ["FakeLoadProps"]
        6 JUMPIFNOT                        R4 ; [+3]
        7 GETTABLEKS                       R5 R4 K2 ["Completed"]
        9 JUMPIF                           R5 ; [+1]
       10 RETURN                           R0 0
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETTABLEKS                       R5 R3 K2 ["Completed"]
       14 GETTABLEKS                       R6 R4 K2 ["Completed"]
       16 JUMPIFEQ                         R5 R6 ; [+7]
       18 GETTABLEKS                       R5 R4 K3 ["OnFakeLoadCompleted"]
       20 JUMPIFNOT                        R5 ; [+3]
       21 GETTABLEKS                       R5 R4 K3 ["OnFakeLoadCompleted"]
       23 CALL                             R5 0 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["omit"]
       37 GETTABLEKS                       R6 R4 K12 ["ContextServices"]
       39 GETTABLEKS                       R7 R6 K13 ["withContext"]
       41 GETTABLEKS                       R8 R4 K14 ["UI"]
       43 GETTABLEKS                       R9 R8 K15 ["CaptureFocus"]
       45 GETTABLEKS                       R10 R8 K16 ["TextLabel"]
       47 GETTABLEKS                       R11 R8 K17 ["Pane"]
       49 GETTABLEKS                       R12 R8 K18 ["FakeLoadingBar"]
       51 GETTABLEKS                       R13 R8 K19 ["LoadingBar"]
       53 GETTABLEKS                       R14 R4 K20 ["Util"]
       55 GETTABLEKS                       R15 R14 K21 ["LayoutOrderIterator"]
       57 GETTABLEKS                       R16 R1 K22 ["PureComponent"]
       59 LOADK                            R18 K23 ["ProgressBar"]
       60 NAMECALL                         R16 R16 K24 ["extend"]
       62 CALL                             R16 2 1
       63 DUPCLOSURE                       R17 K25 [PROTO_0]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R12
       68 SETTABLEKS                       R17 R16 K26 ["renderFakeLoadingBar"]
       70 DUPCLOSURE                       R17 K27 [PROTO_1]
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R13
       73 SETTABLEKS                       R17 R16 K28 ["renderLoadingBar"]
       75 DUPCLOSURE                       R17 K29 [PROTO_3]
       76 CAPTURE                          VAL R15
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R10
       81 SETTABLEKS                       R17 R16 K30 ["render"]
       83 DUPCLOSURE                       R17 K31 [PROTO_4]
       84 SETTABLEKS                       R17 R16 K32 ["didUpdate"]
       86 MOVE                             R17 R7
       87 DUPTABLE                         R18 K34 [{"Stylizer"}]
       88 GETTABLEKS                       R19 R6 K33 ["Stylizer"]
       90 SETTABLEKS                       R19 R18 K33 ["Stylizer"]
       92 CALL                             R17 1 1
       93 MOVE                             R18 R16
       94 CALL                             R17 1 1
       95 MOVE                             R16 R17
       96 RETURN                           R16 1
