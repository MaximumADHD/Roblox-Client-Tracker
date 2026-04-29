PROTO_0:
        0 GETTABLEKS                       R5 R1 K0 ["Progress"]
        2 FASTCALL1                        TYPE R5 ; [+2]
        3 GETIMPORT                        R4 K2 [type]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K3 ["number"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       12 LOADK                            R4 K4 ["LoadingBar expects a 'Progress' prop."]
       13 GETIMPORT                        R2 K6 [assert]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Progress"]
        6 LOADN                            R6 0
        7 LOADN                            R7 1
        8 FASTCALL3                        MATH_CLAMP R3 R6 R7
       10 MOVE                             R5 R3
       11 GETIMPORT                        R4 K5 [math.clamp]
       13 CALL                             R4 3 1
       14 MOVE                             R3 R4
       15 GETTABLEKS                       R4 R1 K6 ["Size"]
       17 GETTABLEKS                       R5 R1 K7 ["Position"]
       19 GETTABLEKS                       R6 R1 K8 ["AnchorPoint"]
       21 GETTABLEKS                       R7 R1 K9 ["ZIndex"]
       23 GETTABLEKS                       R8 R1 K10 ["LayoutOrder"]
       25 GETTABLEKS                       R9 R2 K11 ["Background"]
       27 GETTABLEKS                       R10 R2 K12 ["BackgroundStyle"]
       29 GETTABLEKS                       R11 R2 K13 ["Foreground"]
       31 GETTABLEKS                       R12 R2 K14 ["ForegroundStyle"]
       33 GETUPVAL                         R13 0
       34 CALL                             R13 0 1
       35 JUMPIFNOT                        R13 ; [+18]
       36 GETTABLEKS                       R13 R1 K15 ["OverTime"]
       38 JUMPIFNOT                        R13 ; [+15]
       39 GETUPVAL                         R14 1
       40 GETTABLEKS                       R13 R14 K16 ["createElement"]
       42 GETUPVAL                         R14 2
       43 DUPTABLE                         R15 K17 [{"Size", "Position", "AnchorPoint", "LayoutOrder"}]
       44 SETTABLEKS                       R4 R15 K6 ["Size"]
       46 SETTABLEKS                       R5 R15 K7 ["Position"]
       48 SETTABLEKS                       R6 R15 K8 ["AnchorPoint"]
       50 SETTABLEKS                       R8 R15 K10 ["LayoutOrder"]
       52 CALL                             R13 2 -1
       53 RETURN                           R13 -1
       54 GETUPVAL                         R14 1
       55 GETTABLEKS                       R13 R14 K16 ["createElement"]
       57 GETUPVAL                         R14 3
       58 DUPTABLE                         R15 K18 [{"Size", "Position", "AnchorPoint", "ZIndex", "LayoutOrder", "Background", "BackgroundStyle"}]
       59 SETTABLEKS                       R4 R15 K6 ["Size"]
       61 SETTABLEKS                       R5 R15 K7 ["Position"]
       63 SETTABLEKS                       R6 R15 K8 ["AnchorPoint"]
       65 SETTABLEKS                       R7 R15 K9 ["ZIndex"]
       67 SETTABLEKS                       R8 R15 K10 ["LayoutOrder"]
       69 SETTABLEKS                       R9 R15 K11 ["Background"]
       71 SETTABLEKS                       R10 R15 K12 ["BackgroundStyle"]
       73 DUPTABLE                         R16 K20 [{"LoadingBar"}]
       74 GETUPVAL                         R18 1
       75 GETTABLEKS                       R17 R18 K16 ["createElement"]
       77 GETUPVAL                         R18 3
       78 DUPTABLE                         R19 K21 [{"Size", "Background", "BackgroundStyle"}]
       79 GETIMPORT                        R20 K24 [UDim2.new]
       81 MOVE                             R21 R3
       82 LOADN                            R22 0
       83 LOADN                            R23 1
       84 LOADN                            R24 0
       85 CALL                             R20 4 1
       86 SETTABLEKS                       R20 R19 K6 ["Size"]
       88 SETTABLEKS                       R11 R19 K11 ["Background"]
       90 SETTABLEKS                       R12 R19 K12 ["BackgroundStyle"]
       92 CALL                             R17 2 1
       93 SETTABLEKS                       R17 R16 K19 ["LoadingBar"]
       95 CALL                             R13 3 -1
       96 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R7 R0 K2 ["UI"]
       29 GETTABLEKS                       R6 R7 K10 ["Components"]
       31 GETTABLEKS                       R5 R6 K11 ["Container"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R8 R0 K2 ["UI"]
       38 GETTABLEKS                       R7 R8 K10 ["Components"]
       40 GETTABLEKS                       R6 R7 K12 ["Shimmer"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R8 R0 K13 ["Util"]
       47 GETTABLEKS                       R7 R8 K14 ["Typecheck"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R1 K15 ["PureComponent"]
       52 LOADK                            R9 K16 ["LoadingBar"]
       53 NAMECALL                         R7 R7 K17 ["extend"]
       55 CALL                             R7 2 1
       56 GETTABLEKS                       R8 R6 K18 ["wrap"]
       58 MOVE                             R9 R7
       59 GETIMPORT                        R10 K1 [script]
       61 CALL                             R8 2 0
       62 GETIMPORT                        R8 K6 [require]
       64 GETTABLEKS                       R10 R0 K19 ["SharedFlags"]
       66 GETTABLEKS                       R9 R10 K20 ["getFFlagDevFrameworkLoadingBarAddOvertime"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K21 [PROTO_0]
       70 SETTABLEKS                       R9 R7 K22 ["init"]
       72 DUPCLOSURE                       R9 K23 [PROTO_1]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R9 R7 K24 ["render"]
       79 MOVE                             R9 R3
       80 DUPTABLE                         R10 K26 [{"Stylizer"}]
       81 GETTABLEKS                       R11 R2 K25 ["Stylizer"]
       83 SETTABLEKS                       R11 R10 K25 ["Stylizer"]
       85 CALL                             R9 1 1
       86 MOVE                             R10 R7
       87 CALL                             R9 1 1
       88 MOVE                             R7 R9
       89 RETURN                           R7 1
