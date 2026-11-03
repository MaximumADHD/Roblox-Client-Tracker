PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Focus"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R1 K4 ["Priority"]
        9 ORK                              R3 R4 K3 [0]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K5 ["createElement"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K6 ["Portal"]
       16 DUPTABLE                         R6 K8 [{"target"}]
       17 SETTABLEKS                       R2 R6 K7 ["target"]
       19 DUPTABLE                         R7 K10 [{"TopLevelDetector"}]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K5 ["createElement"]
       23 LOADK                            R9 K11 ["ImageButton"]
       24 NEWTABLE                         R10 8 0
       26 ADDK                             R11 R3 K12 [1000000]
       27 SETTABLEKS                       R11 R10 K13 ["ZIndex"]
       29 GETIMPORT                        R11 K16 [UDim2.new]
       31 LOADN                            R12 1
       32 LOADN                            R13 0
       33 LOADN                            R14 1
       34 LOADN                            R15 0
       35 CALL                             R11 4 1
       36 SETTABLEKS                       R11 R10 K17 ["Size"]
       38 LOADN                            R11 1
       39 SETTABLEKS                       R11 R10 K18 ["BackgroundTransparency"]
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R11 R11 K19 ["Event"]
       44 GETTABLEKS                       R11 R11 K20 ["Activated"]
       46 GETTABLEKS                       R12 R0 K0 ["props"]
       48 GETTABLEKS                       R12 R12 K21 ["OnFocusLost"]
       50 SETTABLE                         R12 R10 R11
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R11 R11 K19 ["Event"]
       54 GETTABLEKS                       R11 R11 K22 ["MouseButton2Click"]
       56 GETTABLEKS                       R12 R0 K0 ["props"]
       58 GETTABLEKS                       R12 R12 K21 ["OnFocusLost"]
       60 SETTABLE                         R12 R10 R11
       61 DUPTABLE                         R11 K24 [{"ScrollBlocker"}]
       62 GETUPVAL                         R12 0
       63 GETTABLEKS                       R12 R12 K5 ["createElement"]
       65 LOADK                            R13 K25 ["ScrollingFrame"]
       66 DUPTABLE                         R14 K31 [{["Size"], ["ScrollingEnabled"] = True, ["CanvasSize"], ["BackgroundTransparency"] = 1, ["ScrollBarThickness"] = 0}]
       67 GETIMPORT                        R15 K16 [UDim2.new]
       69 LOADN                            R16 1
       70 LOADN                            R17 0
       71 LOADN                            R18 1
       72 LOADN                            R19 0
       73 CALL                             R15 4 1
       74 SETTABLEKS                       R15 R14 K17 ["Size"]
       76 GETIMPORT                        R15 K16 [UDim2.new]
       78 LOADN                            R16 1
       79 LOADN                            R17 0
       80 LOADN                            R18 1
       81 LOADN                            R19 0
       82 CALL                             R15 4 1
       83 SETTABLEKS                       R15 R14 K28 ["CanvasSize"]
       85 GETTABLEKS                       R16 R0 K0 ["props"]
       87 GETUPVAL                         R17 0
       88 GETTABLEKS                       R17 R17 K32 ["Children"]
       90 GETTABLE                         R15 R16 R17
       91 CALL                             R12 3 1
       92 SETTABLEKS                       R12 R11 K23 ["ScrollBlocker"]
       94 CALL                             R8 3 1
       95 SETTABLEKS                       R8 R7 K9 ["TopLevelDetector"]
       97 CALL                             R4 3 -1
       98 RETURN                           R4 -1

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
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R4 R4 K11 ["Typecheck"]
       32 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       34 LOADK                            R7 K13 ["CaptureFocus"]
       35 NAMECALL                         R5 R5 K14 ["extend"]
       37 CALL                             R5 2 1
       38 GETTABLEKS                       R6 R4 K15 ["wrap"]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R8 K1 [script]
       43 CALL                             R6 2 0
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R6 R5 K17 ["render"]
       48 MOVE                             R6 R3
       49 DUPTABLE                         R7 K19 [{"Focus"}]
       50 GETTABLEKS                       R8 R2 K18 ["Focus"]
       52 SETTABLEKS                       R8 R7 K18 ["Focus"]
       54 CALL                             R6 1 1
       55 MOVE                             R7 R5
       56 CALL                             R6 1 1
       57 MOVE                             R5 R6
       58 RETURN                           R5 1
