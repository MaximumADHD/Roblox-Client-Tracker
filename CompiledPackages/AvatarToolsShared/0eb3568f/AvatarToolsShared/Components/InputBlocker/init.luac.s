PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.Escape]
        4 JUMPIFNOTEQ                      R1 R2 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["props"]
        9 GETTABLEKS                       R1 R1 K5 ["OnFocused"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onKeyPressed"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnFocused"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K5 [{"OnFocusLost"}]
       11 SETTABLEKS                       R2 R6 K4 ["OnFocusLost"]
       13 DUPTABLE                         R7 K7 [{"Pane"}]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K3 ["createElement"]
       17 GETUPVAL                         R9 2
       18 DUPTABLE                         R10 K10 [{"BackgroundColor3", "BackgroundTransparency"}]
       19 GETTABLEKS                       R11 R3 K11 ["BackgroundColor"]
       21 SETTABLEKS                       R11 R10 K8 ["BackgroundColor3"]
       23 GETTABLEKS                       R11 R3 K9 ["BackgroundTransparency"]
       25 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
       27 DUPTABLE                         R11 K14 [{"Text", "KeyboardListener"}]
       28 GETUPVAL                         R12 0
       29 GETTABLEKS                       R12 R12 K3 ["createElement"]
       31 GETUPVAL                         R13 3
       32 DUPTABLE                         R14 K20 [{["Size"], ["BackgroundTransparency"] = 1, ["TextSize"], ["Text"], ["TextWrapped"] = True}]
       33 GETIMPORT                        R15 K23 [UDim2.new]
       35 LOADN                            R16 1
       36 LOADN                            R17 0
       37 LOADN                            R18 1
       38 LOADN                            R19 0
       39 CALL                             R15 4 1
       40 SETTABLEKS                       R15 R14 K15 ["Size"]
       42 GETTABLEKS                       R15 R3 K17 ["TextSize"]
       44 SETTABLEKS                       R15 R14 K17 ["TextSize"]
       46 GETTABLEKS                       R15 R1 K12 ["Text"]
       48 SETTABLEKS                       R15 R14 K12 ["Text"]
       50 CALL                             R12 2 1
       51 SETTABLEKS                       R12 R11 K12 ["Text"]
       53 GETUPVAL                         R12 0
       54 GETTABLEKS                       R12 R12 K3 ["createElement"]
       56 GETUPVAL                         R13 4
       57 DUPTABLE                         R14 K25 [{"OnKeyPressed"}]
       58 GETTABLEKS                       R15 R0 K26 ["onKeyPressed"]
       60 SETTABLEKS                       R15 R14 K24 ["OnKeyPressed"]
       62 CALL                             R12 2 1
       63 SETTABLEKS                       R12 R11 K13 ["KeyboardListener"]
       65 CALL                             R8 3 1
       66 SETTABLEKS                       R8 R7 K6 ["Pane"]
       68 CALL                             R4 3 -1
       69 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K8 ["withContext"]
       23 GETTABLEKS                       R6 R3 K9 ["UI"]
       25 GETTABLEKS                       R7 R6 K10 ["CaptureFocus"]
       27 GETTABLEKS                       R8 R6 K11 ["TextLabel"]
       29 GETTABLEKS                       R9 R6 K12 ["Pane"]
       31 GETTABLEKS                       R10 R6 K13 ["KeyboardListener"]
       33 GETTABLEKS                       R11 R2 K14 ["PureComponent"]
       35 LOADK                            R13 K15 ["InputBlocker"]
       36 NAMECALL                         R11 R11 K16 ["extend"]
       38 CALL                             R11 2 1
       39 GETTABLEKS                       R12 R3 K17 ["Util"]
       41 GETTABLEKS                       R13 R12 K18 ["Typecheck"]
       43 GETTABLEKS                       R14 R13 K19 ["wrap"]
       45 MOVE                             R15 R11
       46 GETIMPORT                        R16 K1 [script]
       48 CALL                             R14 2 0
       49 DUPCLOSURE                       R14 K20 [PROTO_1]
       50 SETTABLEKS                       R14 R11 K21 ["init"]
       52 DUPCLOSURE                       R14 K22 [PROTO_2]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R10
       58 SETTABLEKS                       R14 R11 K23 ["render"]
       60 MOVE                             R14 R5
       61 DUPTABLE                         R15 K25 [{"Stylizer"}]
       62 GETTABLEKS                       R16 R4 K24 ["Stylizer"]
       64 SETTABLEKS                       R16 R15 K24 ["Stylizer"]
       66 CALL                             R14 1 1
       67 MOVE                             R15 R11
       68 CALL                             R14 1 1
       69 MOVE                             R11 R14
       70 RETURN                           R11 1
