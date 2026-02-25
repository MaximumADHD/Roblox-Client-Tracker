PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K1 ["ScrubberLineSize"]
        4 NAMECALL                         R2 R2 K2 ["GetAttribute"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 0
        8 LOADK                            R5 K3 ["ScrubberHeadSize"]
        9 NAMECALL                         R3 R3 K2 ["GetAttribute"]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["createElement"]
       15 GETUPVAL                         R5 2
       16 DUPTABLE                         R6 K9 [{"Size", "AnchorPoint", "Position", "ZIndex"}]
       17 GETIMPORT                        R7 K12 [UDim2.new]
       19 LOADN                            R8 0
       20 LOADN                            R9 1
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 CALL                             R7 4 1
       24 SETTABLEKS                       R7 R6 K5 ["Size"]
       26 GETIMPORT                        R7 K14 [Vector2.new]
       28 LOADK                            R8 K15 [0.5]
       29 LOADN                            R9 0
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K6 ["AnchorPoint"]
       33 GETTABLEKS                       R7 R1 K7 ["Position"]
       35 SETTABLEKS                       R7 R6 K7 ["Position"]
       37 GETTABLEKS                       R7 R1 K8 ["ZIndex"]
       39 SETTABLEKS                       R7 R6 K8 ["ZIndex"]
       41 DUPTABLE                         R7 K18 [{"Line", "Head"}]
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R8 R9 K4 ["createElement"]
       45 GETUPVAL                         R9 2
       46 NEWTABLE                         R10 4 0
       48 SETTABLEKS                       R2 R10 K5 ["Size"]
       50 GETIMPORT                        R11 K20 [UDim2.fromScale]
       52 LOADK                            R12 K15 [0.5]
       53 LOADN                            R13 0
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K7 ["Position"]
       57 GETIMPORT                        R11 K14 [Vector2.new]
       59 LOADK                            R12 K15 [0.5]
       60 LOADN                            R13 0
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K6 ["AnchorPoint"]
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R11 R12 K21 ["Tag"]
       67 LOADK                            R12 K22 ["Scrubber"]
       68 SETTABLE                         R12 R10 R11
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K16 ["Line"]
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R8 R9 K4 ["createElement"]
       75 GETUPVAL                         R9 2
       76 NEWTABLE                         R10 4 0
       78 SETTABLEKS                       R3 R10 K5 ["Size"]
       80 GETIMPORT                        R11 K20 [UDim2.fromScale]
       82 LOADK                            R12 K15 [0.5]
       83 LOADN                            R13 0
       84 CALL                             R11 2 1
       85 SETTABLEKS                       R11 R10 K7 ["Position"]
       87 GETIMPORT                        R11 K14 [Vector2.new]
       89 LOADK                            R12 K15 [0.5]
       90 LOADN                            R13 0
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K6 ["AnchorPoint"]
       94 GETUPVAL                         R12 1
       95 GETTABLEKS                       R11 R12 K21 ["Tag"]
       97 LOADK                            R12 K22 ["Scrubber"]
       98 SETTABLE                         R12 R10 R11
       99 CALL                             R8 2 1
      100 SETTABLEKS                       R8 R7 K17 ["Head"]
      102 CALL                             R4 3 -1
      103 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETIMPORT                        R8 K1 [script]
       29 GETTABLEKS                       R7 R8 K11 ["Parent"]
       31 GETTABLEKS                       R6 R7 K12 ["styles"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R8 R0 K13 ["Src"]
       38 GETTABLEKS                       R7 R8 K14 ["Types"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R2 K15 ["PureComponent"]
       43 LOADK                            R9 K16 ["Scrubber"]
       44 NAMECALL                         R7 R7 K17 ["extend"]
       46 CALL                             R7 2 1
       47 DUPCLOSURE                       R8 K18 [PROTO_0]
       48 SETTABLEKS                       R8 R7 K19 ["init"]
       50 DUPCLOSURE                       R8 K20 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 SETTABLEKS                       R8 R7 K21 ["render"]
       56 RETURN                           R7 1
