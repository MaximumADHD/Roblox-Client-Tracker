PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["plotToAbsolutePolar"]
        3 GETTABLEKS                       R2 R0 K1 ["Position"]
        5 LOADB                            R3 1
        6 GETTABLEKS                       R4 R0 K2 ["PlotAbsoluteSize"]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R3 R0 K4 ["OffsetDirection"]
       11 MULK                             R2 R3 K3 [5]
       12 ADD                              R1 R1 R2
       13 GETIMPORT                        R2 K7 [UDim2.fromOffset]
       15 GETTABLEKS                       R3 R1 K8 ["X"]
       17 GETTABLEKS                       R4 R1 K9 ["Y"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K13 [Enum.TextXAlignment.Center]
       22 GETTABLEKS                       R5 R0 K4 ["OffsetDirection"]
       24 GETTABLEKS                       R4 R5 K8 ["X"]
       26 LOADK                            R5 K14 [-0.1]
       27 JUMPIFNOTLT                      R4 R5 ; [+4]
       29 GETIMPORT                        R3 K16 [Enum.TextXAlignment.Right]
       31 JUMP                             ; [+9]
       32 GETTABLEKS                       R5 R0 K4 ["OffsetDirection"]
       34 GETTABLEKS                       R4 R5 K8 ["X"]
       36 LOADK                            R5 K17 [0.1]
       37 JUMPIFNOTLT                      R5 R4 ; [+3]
       39 GETIMPORT                        R3 K19 [Enum.TextXAlignment.Left]
       41 GETIMPORT                        R4 K21 [Enum.TextYAlignment.Center]
       43 GETTABLEKS                       R6 R0 K4 ["OffsetDirection"]
       45 GETTABLEKS                       R5 R6 K9 ["Y"]
       47 LOADK                            R6 K14 [-0.1]
       48 JUMPIFNOTLT                      R5 R6 ; [+4]
       50 GETIMPORT                        R4 K23 [Enum.TextYAlignment.Bottom]
       52 JUMP                             ; [+9]
       53 GETTABLEKS                       R6 R0 K4 ["OffsetDirection"]
       55 GETTABLEKS                       R5 R6 K9 ["Y"]
       57 LOADK                            R6 K17 [0.1]
       58 JUMPIFNOTLT                      R6 R5 ; [+3]
       60 GETIMPORT                        R4 K25 [Enum.TextYAlignment.Top]
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R5 R6 K26 ["createElement"]
       65 LOADK                            R6 K27 ["TextLabel"]
       66 NEWTABLE                         R7 8 0
       68 SETTABLEKS                       R2 R7 K1 ["Position"]
       70 GETIMPORT                        R8 K7 [UDim2.fromOffset]
       72 LOADN                            R9 0
       73 LOADN                            R10 0
       74 CALL                             R8 2 1
       75 SETTABLEKS                       R8 R7 K28 ["Size"]
       77 GETIMPORT                        R8 K31 [string.format]
       79 GETTABLEKS                       R9 R0 K32 ["FormatString"]
       81 GETTABLEKS                       R10 R0 K33 ["Value"]
       83 CALL                             R8 2 1
       84 SETTABLEKS                       R8 R7 K34 ["Text"]
       86 SETTABLEKS                       R3 R7 K11 ["TextXAlignment"]
       88 SETTABLEKS                       R4 R7 K20 ["TextYAlignment"]
       90 GETUPVAL                         R9 1
       91 GETTABLEKS                       R8 R9 K35 ["Tag"]
       93 LOADK                            R9 K36 ["GridLabel"]
       94 SETTABLE                         R9 R7 R8
       95 CALL                             R5 2 -1
       96 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["DirectionalCurveEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R4 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R4 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K9 ["PlotRectUtil"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1
