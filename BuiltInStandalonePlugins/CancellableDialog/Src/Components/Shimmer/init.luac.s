PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+21]
        2 GETIMPORT                        R1 K2 [os.clock]
        4 CALL                             R1 0 1
        5 GETUPVAL                         R2 1
        6 SUB                              R0 R1 R2
        7 MODK                             R2 R0 K3 [2]
        8 DIVK                             R1 R2 K3 [2]
        9 MULK                             R3 R1 K3 [2]
       10 SUBK                             R2 R3 K4 [1]
       11 GETUPVAL                         R3 2
       12 GETIMPORT                        R4 K7 [Vector2.new]
       14 MOVE                             R5 R2
       15 MOVE                             R6 R2
       16 CALL                             R4 2 -1
       17 CALL                             R3 -1 0
       18 GETIMPORT                        R3 K10 [task.wait]
       20 LOADK                            R4 K11 [0.0222222222222222]
       21 CALL                             R3 1 0
       22 JUMPBACK                         ; [-23]
       23 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 1
        1 GETIMPORT                        R1 K2 [task.defer]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          REF R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 1 0
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          REF R0
       10 CLOSEUPVALS                      R0
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Vector2.zero]
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 0
        5 GETIMPORT                        R4 K4 [Vector2.new]
        7 LOADN                            R5 -1
        8 LOADN                            R6 -1
        9 CALL                             R4 2 -1
       10 CALL                             R3 -1 2
       11 GETUPVAL                         R5 1
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R4
       15 NEWTABLE                         R7 0 0
       17 CALL                             R5 2 0
       18 LOADN                            R5 45
       19 GETTABLEKS                       R7 R1 K5 ["X"]
       21 GETTABLEKS                       R8 R1 K6 ["Y"]
       23 DIV                              R6 R7 R8
       24 LOADK                            R7 K7 [1.5]
       25 JUMPIFNOTLT                      R7 R6 ; [+3]
       27 LOADN                            R5 0
       28 JUMP                             ; [+4]
       29 LOADK                            R7 K8 [0.3]
       30 JUMPIFNOTLT                      R6 R7 ; [+2]
       32 LOADN                            R5 90
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R7 R7 K9 ["createElement"]
       36 LOADK                            R8 K10 ["Frame"]
       37 NEWTABLE                         R9 8 0
       39 GETTABLEKS                       R10 R0 K11 ["Size"]
       41 SETTABLEKS                       R10 R9 K11 ["Size"]
       43 LOADB                            R10 1
       44 SETTABLEKS                       R10 R9 K12 ["ClipsDescendants"]
       46 GETTABLEKS                       R10 R0 K13 ["LayoutOrder"]
       48 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       50 GETUPVAL                         R10 3
       51 GETTABLEKS                       R10 R10 K14 ["Tag"]
       53 LOADK                            R11 K15 ["Component-Shimmer"]
       54 SETTABLE                         R11 R9 R10
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R10 R10 K16 ["Change"]
       58 GETTABLEKS                       R10 R10 K17 ["AbsoluteSize"]
       60 NEWCLOSURE                       R11 P1
       61 CAPTURE                          VAL R2
       62 SETTABLE                         R11 R9 R10
       63 NEWTABLE                         R10 0 1
       65 GETUPVAL                         R11 3
       66 GETTABLEKS                       R11 R11 K9 ["createElement"]
       68 LOADK                            R12 K10 ["Frame"]
       69 NEWTABLE                         R13 2 0
       71 GETIMPORT                        R14 K19 [UDim2.new]
       73 LOADN                            R15 1
       74 LOADN                            R16 0
       75 LOADN                            R17 1
       76 LOADN                            R18 0
       77 CALL                             R14 4 1
       78 SETTABLEKS                       R14 R13 K11 ["Size"]
       80 GETUPVAL                         R14 3
       81 GETTABLEKS                       R14 R14 K14 ["Tag"]
       83 LOADK                            R15 K20 ["NoBorder ShimmerForeground RoundedCorner8"]
       84 SETTABLE                         R15 R13 R14
       85 NEWTABLE                         R14 0 1
       87 GETUPVAL                         R15 3
       88 GETTABLEKS                       R15 R15 K9 ["createElement"]
       90 LOADK                            R16 K21 ["UIGradient"]
       91 DUPTABLE                         R17 K25 [{"Rotation", "Offset", "Transparency"}]
       92 SETTABLEKS                       R5 R17 K22 ["Rotation"]
       94 SETTABLEKS                       R3 R17 K23 ["Offset"]
       96 GETIMPORT                        R18 K27 [NumberSequence.new]
       98 NEWTABLE                         R19 0 5
      100 GETIMPORT                        R20 K29 [NumberSequenceKeypoint.new]
      102 LOADN                            R21 0
      103 LOADK                            R22 K30 [0.95]
      104 CALL                             R20 2 1
      105 GETIMPORT                        R21 K29 [NumberSequenceKeypoint.new]
      107 LOADK                            R22 K31 [0.1]
      108 LOADK                            R23 K30 [0.95]
      109 CALL                             R21 2 1
      110 GETIMPORT                        R22 K29 [NumberSequenceKeypoint.new]
      112 LOADK                            R23 K32 [0.5]
      113 LOADK                            R24 K33 [0.52]
      114 CALL                             R22 2 1
      115 GETIMPORT                        R23 K29 [NumberSequenceKeypoint.new]
      117 LOADK                            R24 K34 [0.9]
      118 LOADK                            R25 K30 [0.95]
      119 CALL                             R23 2 1
      120 GETIMPORT                        R24 K29 [NumberSequenceKeypoint.new]
      122 LOADN                            R25 1
      123 LOADK                            R26 K30 [0.95]
      124 CALL                             R24 2 -1
      125 SETLIST                          R19 R20 -1 [1]
      127 CALL                             R18 1 1
      128 SETTABLEKS                       R18 R17 K24 ["Transparency"]
      130 CALL                             R15 2 -1
      131 SETLIST                          R14 R15 -1 [1]
      133 CALL                             R11 3 -1
      134 SETLIST                          R10 R11 -1 [1]
      136 CALL                             R7 3 -1
      137 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETIMPORT                        R4 K12 [os.clock]
       20 CALL                             R4 0 1
       21 DUPCLOSURE                       R5 K13 [PROTO_4]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R1
       26 RETURN                           R5 1
