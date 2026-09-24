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
       33 GETTABLEKS                       R13 R1 K15 ["OverTime"]
       35 JUMPIFNOT                        R13 ; [+15]
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R13 R13 K16 ["createElement"]
       39 GETUPVAL                         R14 1
       40 DUPTABLE                         R15 K17 [{"Size", "Position", "AnchorPoint", "LayoutOrder"}]
       41 SETTABLEKS                       R4 R15 K6 ["Size"]
       43 SETTABLEKS                       R5 R15 K7 ["Position"]
       45 SETTABLEKS                       R6 R15 K8 ["AnchorPoint"]
       47 SETTABLEKS                       R8 R15 K10 ["LayoutOrder"]
       49 CALL                             R13 2 -1
       50 RETURN                           R13 -1
       51 GETUPVAL                         R13 0
       52 GETTABLEKS                       R13 R13 K16 ["createElement"]
       54 GETUPVAL                         R14 2
       55 DUPTABLE                         R15 K18 [{"Size", "Position", "AnchorPoint", "ZIndex", "LayoutOrder", "Background", "BackgroundStyle"}]
       56 SETTABLEKS                       R4 R15 K6 ["Size"]
       58 SETTABLEKS                       R5 R15 K7 ["Position"]
       60 SETTABLEKS                       R6 R15 K8 ["AnchorPoint"]
       62 SETTABLEKS                       R7 R15 K9 ["ZIndex"]
       64 SETTABLEKS                       R8 R15 K10 ["LayoutOrder"]
       66 SETTABLEKS                       R9 R15 K11 ["Background"]
       68 SETTABLEKS                       R10 R15 K12 ["BackgroundStyle"]
       70 DUPTABLE                         R16 K20 [{"LoadingBar"}]
       71 GETUPVAL                         R17 0
       72 GETTABLEKS                       R17 R17 K16 ["createElement"]
       74 GETUPVAL                         R18 2
       75 DUPTABLE                         R19 K21 [{"Size", "Background", "BackgroundStyle"}]
       76 GETIMPORT                        R20 K24 [UDim2.new]
       78 MOVE                             R21 R3
       79 LOADN                            R22 0
       80 LOADN                            R23 1
       81 LOADN                            R24 0
       82 CALL                             R20 4 1
       83 SETTABLEKS                       R20 R19 K6 ["Size"]
       85 SETTABLEKS                       R11 R19 K11 ["Background"]
       87 SETTABLEKS                       R12 R19 K12 ["BackgroundStyle"]
       89 CALL                             R17 2 1
       90 SETTABLEKS                       R17 R16 K19 ["LoadingBar"]
       92 CALL                             R13 3 -1
       93 RETURN                           R13 -1

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
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R5 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K11 ["Container"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R6 K10 ["Components"]
       40 GETTABLEKS                       R6 R6 K12 ["Shimmer"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K13 ["Util"]
       47 GETTABLEKS                       R7 R7 K14 ["Typecheck"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R1 K15 ["PureComponent"]
       52 LOADK                            R9 K16 ["LoadingBar"]
       53 NAMECALL                         R7 R7 K17 ["extend"]
       55 CALL                             R7 2 1
       56 GETTABLEKS                       R8 R6 K18 ["wrap"]
       58 MOVE                             R9 R7
       59 GETIMPORT                        R10 K1 [script]
       61 CALL                             R8 2 0
       62 DUPCLOSURE                       R8 K19 [PROTO_0]
       63 SETTABLEKS                       R8 R7 K20 ["init"]
       65 DUPCLOSURE                       R8 K21 [PROTO_1]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R8 R7 K22 ["render"]
       71 MOVE                             R8 R3
       72 DUPTABLE                         R9 K24 [{"Stylizer"}]
       73 GETTABLEKS                       R10 R2 K23 ["Stylizer"]
       75 SETTABLEKS                       R10 R9 K23 ["Stylizer"]
       77 CALL                             R8 1 1
       78 MOVE                             R9 R7
       79 CALL                             R8 1 1
       80 MOVE                             R7 R8
       81 RETURN                           R7 1
