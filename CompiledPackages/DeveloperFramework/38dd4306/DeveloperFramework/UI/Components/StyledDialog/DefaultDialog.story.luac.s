PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Dialog button pressed : "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K5 [{["enabled"] = False}]
        7 NAMECALL                         R1 R1 K6 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{["Size"], ["LayoutOrder"] = 1, ["Style"] = "Round", ["Text"] = "Open Default Dialog", ["OnClick"]}]
        5 GETIMPORT                        R4 K12 [UDim2.new]
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 LOADN                            R7 0
       10 LOADN                            R8 30
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R4 R3 K8 ["OnClick"]
       18 DUPTABLE                         R4 K14 [{"Dialog"}]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K0 ["createElement"]
       22 GETUPVAL                         R6 2
       23 DUPTABLE                         R7 K24 [{["Enabled"], ["Modal"] = True, ["Title"] = "Styled Dialog examples", ["MinContentSize"], ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
       24 GETTABLEKS                       R8 R0 K25 ["state"]
       26 GETTABLEKS                       R8 R8 K26 ["enabled"]
       28 SETTABLEKS                       R8 R7 K15 ["Enabled"]
       30 GETIMPORT                        R8 K28 [Vector2.new]
       32 LOADN                            R9 400
       33 LOADN                            R10 100
       34 CALL                             R8 2 1
       35 SETTABLEKS                       R8 R7 K20 ["MinContentSize"]
       37 NEWTABLE                         R8 0 1
       39 DUPTABLE                         R9 K32 [{["Key"] = "ok", ["Text"] = "OK"}]
       40 SETLIST                          R8 R9 1 [1]
       42 SETTABLEKS                       R8 R7 K21 ["Buttons"]
       44 NEWCLOSURE                       R8 P1
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R8 R7 K22 ["OnButtonPressed"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R8 R7 K23 ["OnClose"]
       52 DUPTABLE                         R8 K34 [{"Contents"}]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K0 ["createElement"]
       56 LOADK                            R10 K35 ["TextLabel"]
       57 DUPTABLE                         R11 K42 [{["BackgroundTransparency"] = 1, ["TextSize"] = 50, ["Text"] = "Hello", ["TextColor3"], ["Size"], ["Position"]}]
       58 GETIMPORT                        R12 K44 [Color3.new]
       60 LOADN                            R13 0
       61 LOADN                            R14 0
       62 LOADN                            R15 0
       63 CALL                             R12 3 1
       64 SETTABLEKS                       R12 R11 K40 ["TextColor3"]
       66 GETIMPORT                        R12 K46 [UDim2.fromScale]
       68 LOADN                            R13 1
       69 LOADN                            R14 1
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K1 ["Size"]
       73 GETIMPORT                        R12 K46 [UDim2.fromScale]
       75 LOADN                            R13 0
       76 LOADN                            R14 0
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K41 ["Position"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K33 ["Contents"]
       83 CALL                             R5 3 1
       84 SETTABLEKS                       R5 R4 K13 ["Dialog"]
       86 CALL                             R1 3 -1
       87 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["DEPRECATED_Button"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["StyledDialog"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["DefaultDialog"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K14 [PROTO_0]
       41 SETTABLEKS                       R5 R4 K15 ["init"]
       43 DUPCLOSURE                       R5 K16 [PROTO_4]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R5 R4 K17 ["render"]
       49 RETURN                           R4 1
