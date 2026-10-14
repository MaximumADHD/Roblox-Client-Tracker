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
       32 DUPTABLE                         R14 K21 [{["Size"], ["BackgroundTransparency"] = 1, ["TextSize"], ["TextColor"], ["Text"], ["TextWrapped"] = True}]
       33 GETIMPORT                        R15 K24 [UDim2.new]
       35 LOADN                            R16 1
       36 LOADN                            R17 0
       37 LOADN                            R18 1
       38 LOADN                            R19 0
       39 CALL                             R15 4 1
       40 SETTABLEKS                       R15 R14 K15 ["Size"]
       42 GETTABLEKS                       R15 R3 K17 ["TextSize"]
       44 SETTABLEKS                       R15 R14 K17 ["TextSize"]
       46 GETUPVAL                         R16 4
       47 CALL                             R16 0 1
       48 JUMPIFNOT                        R16 ; [+3]
       49 GETTABLEKS                       R15 R3 K18 ["TextColor"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R15
       53 SETTABLEKS                       R15 R14 K18 ["TextColor"]
       55 GETTABLEKS                       R15 R1 K12 ["Text"]
       57 SETTABLEKS                       R15 R14 K12 ["Text"]
       59 CALL                             R12 2 1
       60 SETTABLEKS                       R12 R11 K12 ["Text"]
       62 GETUPVAL                         R12 0
       63 GETTABLEKS                       R12 R12 K3 ["createElement"]
       65 GETUPVAL                         R13 5
       66 DUPTABLE                         R14 K26 [{"OnKeyPressed"}]
       67 GETTABLEKS                       R15 R0 K27 ["onKeyPressed"]
       69 SETTABLEKS                       R15 R14 K25 ["OnKeyPressed"]
       71 CALL                             R12 2 1
       72 SETTABLEKS                       R12 R11 K13 ["KeyboardListener"]
       74 CALL                             R8 3 1
       75 SETTABLEKS                       R8 R7 K6 ["Pane"]
       77 CALL                             R4 3 -1
       78 RETURN                           R4 -1

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
       33 GETIMPORT                        R11 K4 [require]
       35 GETTABLEKS                       R12 R0 K14 ["Flags"]
       37 GETTABLEKS                       R12 R12 K15 ["GetFFlagAvatarToolsSharedInputBlockerTextColor"]
       39 CALL                             R11 1 1
       40 GETTABLEKS                       R12 R2 K16 ["PureComponent"]
       42 LOADK                            R14 K17 ["InputBlocker"]
       43 NAMECALL                         R12 R12 K18 ["extend"]
       45 CALL                             R12 2 1
       46 GETTABLEKS                       R13 R3 K19 ["Util"]
       48 GETTABLEKS                       R14 R13 K20 ["Typecheck"]
       50 GETTABLEKS                       R15 R14 K21 ["wrap"]
       52 MOVE                             R16 R12
       53 GETIMPORT                        R17 K1 [script]
       55 CALL                             R15 2 0
       56 DUPCLOSURE                       R15 K22 [PROTO_1]
       57 SETTABLEKS                       R15 R12 K23 ["init"]
       59 DUPCLOSURE                       R15 K24 [PROTO_2]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R10
       66 SETTABLEKS                       R15 R12 K25 ["render"]
       68 MOVE                             R15 R5
       69 DUPTABLE                         R16 K27 [{"Stylizer"}]
       70 GETTABLEKS                       R17 R4 K26 ["Stylizer"]
       72 SETTABLEKS                       R17 R16 K26 ["Stylizer"]
       74 CALL                             R15 1 1
       75 MOVE                             R16 R12
       76 CALL                             R15 1 1
       77 MOVE                             R12 R15
       78 RETURN                           R12 1
