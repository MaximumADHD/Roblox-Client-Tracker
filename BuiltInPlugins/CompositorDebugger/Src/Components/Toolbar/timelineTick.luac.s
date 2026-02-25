PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 NEWTABLE                         R4 4 0
        8 GETTABLEKS                       R5 R1 K2 ["ZIndex"]
       10 SETTABLEKS                       R5 R4 K2 ["ZIndex"]
       12 GETIMPORT                        R5 K5 [UDim2.new]
       14 LOADN                            R6 0
       15 LOADN                            R7 1
       16 LOADN                            R8 1
       17 LOADN                            R9 0
       18 CALL                             R5 4 1
       19 SETTABLEKS                       R5 R4 K6 ["Size"]
       21 GETTABLEKS                       R5 R1 K7 ["Position"]
       23 SETTABLEKS                       R5 R4 K7 ["Position"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K8 ["Tag"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K8 ["Tag"]
       31 GETTABLE                         R6 R1 R7
       32 SETTABLE                         R6 R4 R5
       33 DUPTABLE                         R5 K11 [{"Tick", "Label"}]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K1 ["createElement"]
       37 GETUPVAL                         R7 1
       38 NEWTABLE                         R8 4 0
       40 GETIMPORT                        R9 K13 [UDim2.fromScale]
       42 LOADK                            R10 K14 [0.5]
       43 LOADN                            R11 1
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K7 ["Position"]
       47 GETIMPORT                        R9 K16 [Vector2.new]
       49 LOADK                            R10 K14 [0.5]
       50 LOADN                            R11 1
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K17 ["AnchorPoint"]
       54 LOADN                            R9 0
       55 SETTABLEKS                       R9 R8 K18 ["BorderSizePixel"]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R9 R10 K8 ["Tag"]
       60 LOADK                            R10 K9 ["Tick"]
       61 SETTABLE                         R10 R8 R9
       62 CALL                             R6 2 1
       63 SETTABLEKS                       R6 R5 K9 ["Tick"]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R6 R7 K1 ["createElement"]
       68 GETUPVAL                         R7 2
       69 NEWTABLE                         R8 4 0
       71 GETIMPORT                        R9 K22 [Enum.AutomaticSize.XY]
       73 SETTABLEKS                       R9 R8 K20 ["AutomaticSize"]
       75 GETTABLEKS                       R11 R1 K9 ["Tick"]
       77 SUBRK                            R10 R23 K11 [{"Tick", "Label"}]
       78 FASTCALL1                        TOSTRING R10 ; [+2]
       79 GETIMPORT                        R9 K25 [tostring]
       81 CALL                             R9 1 1
       82 SETTABLEKS                       R9 R8 K26 ["Text"]
       84 LOADN                            R9 2
       85 SETTABLEKS                       R9 R8 K2 ["ZIndex"]
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R9 R10 K8 ["Tag"]
       90 LOADK                            R10 K10 ["Label"]
       91 SETTABLE                         R10 R8 R9
       92 CALL                             R6 2 1
       93 SETTABLEKS                       R6 R5 K10 ["Label"]
       95 CALL                             R2 3 -1
       96 RETURN                           R2 -1

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
       25 GETTABLEKS                       R5 R3 K11 ["TextLabel"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R8 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Types"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R2 K14 ["PureComponent"]
       36 LOADK                            R9 K15 ["TimelineTick"]
       37 NAMECALL                         R7 R7 K16 ["extend"]
       39 CALL                             R7 2 1
       40 DUPCLOSURE                       R8 K17 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 SETTABLEKS                       R8 R7 K18 ["render"]
       46 RETURN                           R7 1
