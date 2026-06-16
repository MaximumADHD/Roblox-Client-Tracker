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
       56 GETUPVAL                         R13 1
       57 JUMPIFNOT                        R13 ; [+5]
       58 GETTABLEKS                       R12 R0 K0 ["props"]
       60 GETTABLEKS                       R12 R12 K21 ["OnFocusLost"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R12
       64 SETTABLE                         R12 R10 R11
       65 DUPTABLE                         R11 K24 [{"ScrollBlocker"}]
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K5 ["createElement"]
       69 LOADK                            R13 K25 ["ScrollingFrame"]
       70 DUPTABLE                         R14 K29 [{"Size", "ScrollingEnabled", "CanvasSize", "BackgroundTransparency", "ScrollBarThickness"}]
       71 GETIMPORT                        R15 K16 [UDim2.new]
       73 LOADN                            R16 1
       74 LOADN                            R17 0
       75 LOADN                            R18 1
       76 LOADN                            R19 0
       77 CALL                             R15 4 1
       78 SETTABLEKS                       R15 R14 K17 ["Size"]
       80 LOADB                            R15 1
       81 SETTABLEKS                       R15 R14 K26 ["ScrollingEnabled"]
       83 GETIMPORT                        R15 K16 [UDim2.new]
       85 LOADN                            R16 1
       86 LOADN                            R17 0
       87 LOADN                            R18 1
       88 LOADN                            R19 0
       89 CALL                             R15 4 1
       90 SETTABLEKS                       R15 R14 K27 ["CanvasSize"]
       92 LOADN                            R15 1
       93 SETTABLEKS                       R15 R14 K18 ["BackgroundTransparency"]
       95 LOADN                            R15 0
       96 SETTABLEKS                       R15 R14 K28 ["ScrollBarThickness"]
       98 GETTABLEKS                       R16 R0 K0 ["props"]
      100 GETUPVAL                         R17 0
      101 GETTABLEKS                       R17 R17 K30 ["Children"]
      103 GETTABLE                         R15 R16 R17
      104 CALL                             R12 3 1
      105 SETTABLEKS                       R12 R11 K23 ["ScrollBlocker"]
      107 CALL                             R8 3 1
      108 SETTABLEKS                       R8 R7 K9 ["TopLevelDetector"]
      110 CALL                             R4 3 -1
      111 RETURN                           R4 -1

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
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K12 ["SharedFlags"]
       36 GETTABLEKS                       R6 R6 K13 ["getFFlagLuaStartPageTableContextMenu"]
       38 CALL                             R5 1 1
       39 CALL                             R5 0 1
       40 GETTABLEKS                       R6 R1 K14 ["PureComponent"]
       42 LOADK                            R8 K15 ["CaptureFocus"]
       43 NAMECALL                         R6 R6 K16 ["extend"]
       45 CALL                             R6 2 1
       46 GETTABLEKS                       R7 R4 K17 ["wrap"]
       48 MOVE                             R8 R6
       49 GETIMPORT                        R9 K1 [script]
       51 CALL                             R7 2 0
       52 DUPCLOSURE                       R7 K18 [PROTO_0]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R7 R6 K19 ["render"]
       57 MOVE                             R7 R3
       58 DUPTABLE                         R8 K21 [{"Focus"}]
       59 GETTABLEKS                       R9 R2 K20 ["Focus"]
       61 SETTABLEKS                       R9 R8 K20 ["Focus"]
       63 CALL                             R7 1 1
       64 MOVE                             R8 R6
       65 CALL                             R7 1 1
       66 MOVE                             R6 R7
       67 RETURN                           R6 1
