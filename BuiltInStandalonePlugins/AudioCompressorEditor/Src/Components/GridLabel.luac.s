PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["plotToAbs"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Position"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["PlotAbsoluteSize"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K4 ["Offset"]
       13 MULK                             R2 R3 K3 [2]
       14 GETIMPORT                        R4 K7 [Vector2.new]
       16 LOADK                            R5 K8 [0.5]
       17 LOADK                            R6 K8 [0.5]
       18 CALL                             R4 2 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K9 ["AnchorPoint"]
       22 SUB                              R3 R4 R5
       23 MUL                              R1 R2 R3
       24 GETIMPORT                        R2 K12 [UDim2.fromOffset]
       26 GETTABLEKS                       R4 R0 K13 ["X"]
       28 GETTABLEKS                       R5 R1 K13 ["X"]
       30 ADD                              R3 R4 R5
       31 GETTABLEKS                       R5 R0 K14 ["Y"]
       33 GETTABLEKS                       R6 R1 K14 ["Y"]
       35 ADD                              R4 R5 R6
       36 CALL                             R2 2 1
       37 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["AnchorPoint"]
        3 GETTABLEKS                       R0 R1 K1 ["X"]
        5 LOADK                            R1 K2 [0.4]
        6 JUMPIFNOTLE                      R0 R1 ; [+4]
        8 GETIMPORT                        R0 K6 [Enum.TextXAlignment.Left]
       10 RETURN                           R0 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K0 ["AnchorPoint"]
       14 GETTABLEKS                       R0 R1 K1 ["X"]
       16 LOADK                            R1 K7 [0.6]
       17 JUMPIFNOTLE                      R1 R0 ; [+4]
       19 GETIMPORT                        R0 K9 [Enum.TextXAlignment.Right]
       21 RETURN                           R0 1
       22 GETIMPORT                        R0 K11 [Enum.TextXAlignment.Center]
       24 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["AnchorPoint"]
        3 GETTABLEKS                       R0 R1 K1 ["Y"]
        5 LOADK                            R1 K2 [0.4]
        6 JUMPIFNOTLE                      R0 R1 ; [+4]
        8 GETIMPORT                        R0 K6 [Enum.TextYAlignment.Top]
       10 RETURN                           R0 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K0 ["AnchorPoint"]
       14 GETTABLEKS                       R0 R1 K1 ["Y"]
       16 LOADK                            R1 K7 [0.6]
       17 JUMPIFNOTLE                      R1 R0 ; [+4]
       19 GETIMPORT                        R0 K9 [Enum.TextYAlignment.Bottom]
       21 RETURN                           R0 1
       22 GETIMPORT                        R0 K11 [Enum.TextYAlignment.Center]
       24 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NEWTABLE                         R3 0 4
        6 GETTABLEKS                       R4 R0 K0 ["Position"]
        8 GETTABLEKS                       R5 R0 K1 ["AnchorPoint"]
       10 GETTABLEKS                       R6 R0 K2 ["Offset"]
       12 GETTABLEKS                       R7 R0 K3 ["PlotAbsoluteSize"]
       14 SETLIST                          R3 R4 4 [1]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 0
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R4 0 1
       22 GETTABLEKS                       R5 R0 K1 ["AnchorPoint"]
       24 SETLIST                          R4 R5 1 [1]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 0
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R5 0 1
       32 GETTABLEKS                       R6 R0 K1 ["AnchorPoint"]
       34 SETLIST                          R5 R6 1 [1]
       36 CALL                             R3 2 1
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R4 R5 K4 ["createElement"]
       40 LOADK                            R5 K5 ["TextLabel"]
       41 NEWTABLE                         R6 8 0
       43 GETTABLEKS                       R7 R0 K1 ["AnchorPoint"]
       45 SETTABLEKS                       R7 R6 K1 ["AnchorPoint"]
       47 SETTABLEKS                       R1 R6 K0 ["Position"]
       49 GETIMPORT                        R7 K8 [UDim2.fromOffset]
       51 LOADN                            R8 10
       52 LOADN                            R9 10
       53 CALL                             R7 2 1
       54 SETTABLEKS                       R7 R6 K9 ["Size"]
       56 GETTABLEKS                       R7 R0 K10 ["Label"]
       58 SETTABLEKS                       R7 R6 K11 ["Text"]
       60 SETTABLEKS                       R2 R6 K12 ["TextXAlignment"]
       62 SETTABLEKS                       R3 R6 K13 ["TextYAlignment"]
       64 GETUPVAL                         R8 2
       65 GETTABLEKS                       R7 R8 K14 ["Tag"]
       67 GETUPVAL                         R8 3
       68 LOADK                            R9 K15 ["GridLabel"]
       69 GETTABLEKS                       R10 R0 K14 ["Tag"]
       71 CALL                             R8 2 1
       72 SETTABLE                         R8 R6 R7
       73 CALL                             R4 2 -1
       74 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioCompressorEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["joinTags"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R5 K10 ["React"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K11 ["useMemo"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R8 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Util"]
       33 GETTABLEKS                       R6 R7 K14 ["PlotUtil"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K15 [PROTO_3]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 RETURN                           R6 1
