PROTO_0:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 GETIMPORT                        R6 K5 [math.map]
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K6 ["activeEdgeScroll"]
       10 GETTABLEKS                       R8 R8 K7 ["startedAtClock"]
       12 SUB                              R7 R0 R8
       13 LOADN                            R8 0
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R10 R10 K8 ["getGradualStartTime"]
       17 CALL                             R10 0 1
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K9 ["getTimeToPeak"]
       21 CALL                             R11 0 1
       22 ADD                              R9 R10 R11
       23 LOADN                            R10 7
       24 LOADN                            R11 20
       25 CALL                             R6 5 1
       26 LOADN                            R7 7
       27 LOADN                            R8 20
       28 FASTCALL                         MATH_CLAMP ; [+2]
       29 GETIMPORT                        R5 K11 [math.clamp]
       31 CALL                             R5 3 1
       32 CALL                             R1 4 -1
       33 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADK                            R3 K0 ["Frame"]
        4 NEWTABLE                         R4 8 0
        6 GETTABLEKS                       R6 R0 K1 ["activeEdgeScroll"]
        8 GETTABLEKS                       R6 R6 K2 ["direction"]
       10 JUMPIFNOTEQKS                    R6 K3 ["up"] ; [+7]
       12 GETIMPORT                        R5 K6 [Vector2.new]
       14 LOADN                            R6 0
       15 LOADN                            R7 0
       16 CALL                             R5 2 1
       17 JUMP                             ; [+5]
       18 GETIMPORT                        R5 K6 [Vector2.new]
       20 LOADN                            R6 0
       21 LOADN                            R7 1
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K7 ["AnchorPoint"]
       25 GETTABLEKS                       R6 R0 K1 ["activeEdgeScroll"]
       27 GETTABLEKS                       R6 R6 K2 ["direction"]
       29 JUMPIFNOTEQKS                    R6 K3 ["up"] ; [+5]
       31 GETIMPORT                        R5 K9 [UDim2.new]
       33 CALL                             R5 0 1
       34 JUMP                             ; [+5]
       35 GETIMPORT                        R5 K11 [UDim2.fromScale]
       37 LOADN                            R6 0
       38 LOADN                            R7 1
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K12 ["Position"]
       42 LOADN                            R5 0
       43 SETTABLEKS                       R5 R4 K13 ["BorderSizePixel"]
       45 NEWCLOSURE                       R7 P0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U2
       48 NAMECALL                         R5 R1 K14 ["map"]
       50 CALL                             R5 2 1
       51 SETTABLEKS                       R5 R4 K15 ["Size"]
       53 GETTABLEKS                       R5 R0 K16 ["zIndex"]
       55 SETTABLEKS                       R5 R4 K17 ["ZIndex"]
       57 GETUPVAL                         R5 3
       58 GETTABLEKS                       R5 R5 K18 ["Tag"]
       60 LOADK                            R6 K19 ["Explorer-BG-SystemEmphasis"]
       61 SETTABLE                         R6 R4 R5
       62 DUPTABLE                         R5 K21 [{"UIGradient"}]
       63 GETUPVAL                         R6 1
       64 LOADK                            R7 K20 ["UIGradient"]
       65 DUPTABLE                         R8 K24 [{"Rotation", "Transparency"}]
       66 GETTABLEKS                       R10 R0 K1 ["activeEdgeScroll"]
       68 GETTABLEKS                       R10 R10 K2 ["direction"]
       70 JUMPIFNOTEQKS                    R10 K3 ["up"] ; [+3]
       72 LOADN                            R9 90
       73 JUMP                             ; [+1]
       74 LOADN                            R9 -90
       75 SETTABLEKS                       R9 R8 K22 ["Rotation"]
       77 GETIMPORT                        R9 K26 [NumberSequence.new]
       79 LOADN                            R10 0
       80 LOADN                            R11 1
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K23 ["Transparency"]
       84 CALL                             R6 2 1
       85 SETTABLEKS                       R6 R5 K20 ["UIGradient"]
       87 CALL                             R2 3 -1
       88 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["EdgeScrollingNumbers"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K11 ["useEdgeScrolling"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K12 ["useGlobalClock"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K13 ["createElement"]
       37 DUPCLOSURE                       R6 K14 [PROTO_1]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 RETURN                           R6 1
