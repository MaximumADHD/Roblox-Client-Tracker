PROTO_0:
        0 GETTABLEN                        R1 R0 2
        1 JUMPIFNOT                        R1 ; [+28]
        2 NEWTABLE                         R1 0 2
        4 DUPTABLE                         R2 K3 [{"Name", "Active", "Value"}]
        5 GETTABLEN                        R3 R0 1
        6 SETTABLEKS                       R3 R2 K0 ["Name"]
        8 LOADB                            R3 1
        9 SETTABLEKS                       R3 R2 K1 ["Active"]
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K2 ["Value"]
       14 DUPTABLE                         R3 K5 [{"Name", "Default", "Active", "Value"}]
       15 GETTABLEN                        R4 R0 2
       16 SETTABLEKS                       R4 R3 K0 ["Name"]
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K4 ["Default"]
       21 LOADB                            R4 1
       22 SETTABLEKS                       R4 R3 K1 ["Active"]
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R3 K2 ["Value"]
       27 SETLIST                          R1 R2 2 [1]
       29 RETURN                           R1 1
       30 NEWTABLE                         R1 0 1
       32 DUPTABLE                         R2 K5 [{"Name", "Default", "Active", "Value"}]
       33 GETTABLEN                        R3 R0 1
       34 SETTABLEKS                       R3 R2 K0 ["Name"]
       36 LOADB                            R3 1
       37 SETTABLEKS                       R3 R2 K4 ["Default"]
       39 LOADB                            R3 1
       40 SETTABLEKS                       R3 R2 K1 ["Active"]
       42 LOADB                            R3 1
       43 SETTABLEKS                       R3 R2 K2 ["Value"]
       45 SETLIST                          R1 R2 1 [1]
       47 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Buttons"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K9 [{"Size", "Layout", "AutomaticSize", "BackgroundColor3", "Spacing"}]
       11 GETIMPORT                        R7 K12 [UDim2.new]
       13 LOADN                            R8 1
       14 LOADN                            R9 0
       15 LOADN                            R10 1
       16 LOADN                            R11 0
       17 CALL                             R7 4 1
       18 SETTABLEKS                       R7 R6 K4 ["Size"]
       20 GETIMPORT                        R7 K16 [Enum.FillDirection.Vertical]
       22 SETTABLEKS                       R7 R6 K5 ["Layout"]
       24 GETIMPORT                        R7 K18 [Enum.AutomaticSize.Y]
       26 SETTABLEKS                       R7 R6 K6 ["AutomaticSize"]
       28 GETTABLEKS                       R7 R2 K19 ["dialog"]
       30 GETTABLEKS                       R7 R7 K20 ["background"]
       32 SETTABLEKS                       R7 R6 K7 ["BackgroundColor3"]
       34 GETTABLEKS                       R7 R2 K19 ["dialog"]
       36 GETTABLEKS                       R7 R7 K21 ["spacing"]
       38 SETTABLEKS                       R7 R6 K8 ["Spacing"]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K22 ["Dictionary"]
       43 GETTABLEKS                       R7 R7 K23 ["join"]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K24 ["Children"]
       48 GETTABLE                         R8 R1 R9
       49 DUPTABLE                         R9 K25 [{"Buttons"}]
       50 GETUPVAL                         R10 0
       51 GETTABLEKS                       R10 R10 K3 ["createElement"]
       53 GETUPVAL                         R11 3
       54 DUPTABLE                         R12 K31 [{"Position", "AnchorPoint", "Buttons", "LayoutOrder", "HorizontalAlignment", "ButtonClicked"}]
       55 GETIMPORT                        R13 K12 [UDim2.new]
       57 LOADN                            R14 0
       58 LOADN                            R15 0
       59 LOADN                            R16 1
       60 GETTABLEKS                       R17 R2 K32 ["buttonBar"]
       62 GETTABLEKS                       R17 R17 K33 ["offset"]
       64 CALL                             R13 4 1
       65 SETTABLEKS                       R13 R12 K26 ["Position"]
       67 GETIMPORT                        R13 K35 [Vector2.new]
       69 LOADN                            R14 0
       70 LOADN                            R15 1
       71 CALL                             R13 2 1
       72 SETTABLEKS                       R13 R12 K27 ["AnchorPoint"]
       74 GETUPVAL                         R13 4
       75 MOVE                             R14 R3
       76 CALL                             R13 1 1
       77 SETTABLEKS                       R13 R12 K2 ["Buttons"]
       79 LOADN                            R13 100
       80 SETTABLEKS                       R13 R12 K28 ["LayoutOrder"]
       82 GETIMPORT                        R13 K37 [Enum.HorizontalAlignment.Center]
       84 SETTABLEKS                       R13 R12 K29 ["HorizontalAlignment"]
       86 GETTABLEKS                       R13 R1 K38 ["OnResult"]
       88 SETTABLEKS                       R13 R12 K30 ["ButtonClicked"]
       90 CALL                             R10 2 1
       91 SETTABLEKS                       R10 R9 K2 ["Buttons"]
       93 CALL                             R7 2 -1
       94 CALL                             R4 -1 -1
       95 RETURN                           R4 -1

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
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K9 ["UI"]
       34 GETTABLEKS                       R4 R4 K10 ["Pane"]
       36 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       38 GETTABLEKS                       R6 R5 K12 ["withContext"]
       40 GETIMPORT                        R7 K4 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Src"]
       44 GETTABLEKS                       R8 R8 K14 ["Components"]
       46 GETTABLEKS                       R8 R8 K15 ["ButtonBar"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R1 K16 ["PureComponent"]
       51 LOADK                            R10 K17 ["BaseDialog"]
       52 NAMECALL                         R8 R8 K18 ["extend"]
       54 CALL                             R8 2 1
       55 DUPCLOSURE                       R9 K19 [PROTO_0]
       56 DUPCLOSURE                       R10 K20 [PROTO_1]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R9
       62 SETTABLEKS                       R10 R8 K21 ["render"]
       64 MOVE                             R10 R6
       65 DUPTABLE                         R11 K23 [{"Stylizer"}]
       66 GETTABLEKS                       R12 R5 K22 ["Stylizer"]
       68 SETTABLEKS                       R12 R11 K22 ["Stylizer"]
       70 CALL                             R10 1 1
       71 MOVE                             R11 R8
       72 CALL                             R10 1 1
       73 MOVE                             R8 R10
       74 RETURN                           R8 1
