PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["plotToAbsolutePosition"]
        3 GETTABLEKS                       R2 R0 K1 ["Position"]
        5 GETTABLEKS                       R3 R0 K2 ["PlotRect"]
        7 GETTABLEKS                       R4 R0 K3 ["PlotAbsoluteSize"]
        9 CALL                             R1 3 1
       10 GETTABLEKS                       R3 R0 K5 ["OffsetDirection"]
       12 MULK                             R2 R3 K4 [5]
       13 ADD                              R1 R1 R2
       14 GETIMPORT                        R2 K8 [UDim2.fromOffset]
       16 GETTABLEKS                       R3 R1 K9 ["X"]
       18 GETTABLEKS                       R4 R1 K10 ["Y"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K14 [Enum.TextXAlignment.Center]
       23 GETTABLEKS                       R5 R0 K5 ["OffsetDirection"]
       25 GETTABLEKS                       R4 R5 K9 ["X"]
       27 LOADK                            R5 K15 [-0.1]
       28 JUMPIFNOTLT                      R4 R5 ; [+4]
       30 GETIMPORT                        R3 K17 [Enum.TextXAlignment.Right]
       32 JUMP                             ; [+9]
       33 GETTABLEKS                       R5 R0 K5 ["OffsetDirection"]
       35 GETTABLEKS                       R4 R5 K9 ["X"]
       37 LOADK                            R5 K18 [0.1]
       38 JUMPIFNOTLT                      R5 R4 ; [+3]
       40 GETIMPORT                        R3 K20 [Enum.TextXAlignment.Left]
       42 GETIMPORT                        R4 K22 [Enum.TextYAlignment.Center]
       44 GETTABLEKS                       R6 R0 K5 ["OffsetDirection"]
       46 GETTABLEKS                       R5 R6 K10 ["Y"]
       48 LOADK                            R6 K15 [-0.1]
       49 JUMPIFNOTLT                      R5 R6 ; [+4]
       51 GETIMPORT                        R4 K24 [Enum.TextYAlignment.Bottom]
       53 JUMP                             ; [+9]
       54 GETTABLEKS                       R6 R0 K5 ["OffsetDirection"]
       56 GETTABLEKS                       R5 R6 K10 ["Y"]
       58 LOADK                            R6 K18 [0.1]
       59 JUMPIFNOTLT                      R6 R5 ; [+3]
       61 GETIMPORT                        R4 K26 [Enum.TextYAlignment.Top]
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R5 R6 K27 ["createElement"]
       66 LOADK                            R6 K28 ["TextLabel"]
       67 NEWTABLE                         R7 8 0
       69 SETTABLEKS                       R2 R7 K1 ["Position"]
       71 GETIMPORT                        R8 K8 [UDim2.fromOffset]
       73 LOADN                            R9 0
       74 LOADN                            R10 0
       75 CALL                             R8 2 1
       76 SETTABLEKS                       R8 R7 K29 ["Size"]
       78 GETIMPORT                        R8 K32 [string.format]
       80 GETTABLEKS                       R9 R0 K33 ["FormatString"]
       82 GETTABLEKS                       R10 R0 K34 ["Value"]
       84 CALL                             R8 2 1
       85 SETTABLEKS                       R8 R7 K35 ["Text"]
       87 SETTABLEKS                       R3 R7 K12 ["TextXAlignment"]
       89 SETTABLEKS                       R4 R7 K21 ["TextYAlignment"]
       91 GETUPVAL                         R9 1
       92 GETTABLEKS                       R8 R9 K36 ["Tag"]
       94 LOADK                            R9 K37 ["GridLabel"]
       95 SETTABLE                         R9 R7 R8
       96 CALL                             R5 2 -1
       97 RETURN                           R5 -1

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
