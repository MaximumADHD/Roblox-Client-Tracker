PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 JUMPIFNOTLT                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K2 [os.clock]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 1
        9 SUB                              R0 R1 R2
       10 MODK                             R2 R0 K3 [2]
       11 DIVK                             R1 R2 K3 [2]
       12 MULK                             R3 R1 K3 [2]
       13 SUBK                             R2 R3 K4 [1]
       14 GETUPVAL                         R3 2
       15 GETIMPORT                        R4 K7 [Vector2.new]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R2
       19 CALL                             R4 2 -1
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 SUBK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 NEWCLOSURE                       R0 P0
        4 CAPTURE                          UPVAL U0
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Vector2.zero]
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R5 0 0
        9 CALL                             R3 2 0
       10 LOADK                            R4 K3 ["StartPage-RoundedCorner"]
       11 GETTABLEKS                       R6 R0 K5 ["CornerRadius"]
       13 ORK                              R5 R6 K4 [16]
       14 CONCAT                           R3 R4 R5
       15 GETTABLEKS                       R4 R0 K6 ["Rotation"]
       17 JUMPIF                           R4 ; [+16]
       18 GETTABLEKS                       R6 R1 K7 ["X"]
       20 GETTABLEKS                       R7 R1 K8 ["Y"]
       22 DIV                              R5 R6 R7
       23 LOADK                            R6 K9 [1.5]
       24 JUMPIFNOTLT                      R6 R5 ; [+3]
       26 LOADN                            R4 0
       27 JUMP                             ; [+6]
       28 LOADK                            R6 K10 [0.3]
       29 JUMPIFNOTLT                      R5 R6 ; [+3]
       31 LOADN                            R4 90
       32 JUMP                             ; [+1]
       33 LOADN                            R4 45
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R5 R5 K11 ["createElement"]
       37 LOADK                            R6 K12 ["Frame"]
       38 NEWTABLE                         R7 8 0
       40 GETTABLEKS                       R8 R0 K13 ["Size"]
       42 SETTABLEKS                       R8 R7 K13 ["Size"]
       44 GETTABLEKS                       R8 R0 K14 ["Position"]
       46 SETTABLEKS                       R8 R7 K14 ["Position"]
       48 GETTABLEKS                       R8 R0 K15 ["AnchorPoint"]
       50 SETTABLEKS                       R8 R7 K15 ["AnchorPoint"]
       52 LOADB                            R8 1
       53 SETTABLEKS                       R8 R7 K16 ["ClipsDescendants"]
       55 GETUPVAL                         R8 3
       56 GETTABLEKS                       R8 R8 K17 ["Change"]
       58 GETTABLEKS                       R8 R8 K18 ["AbsoluteSize"]
       60 NEWCLOSURE                       R9 P1
       61 CAPTURE                          VAL R2
       62 SETTABLE                         R9 R7 R8
       63 GETUPVAL                         R8 3
       64 GETTABLEKS                       R8 R8 K19 ["Tag"]
       66 LOADK                            R10 K20 ["StartPage-NoBorder StartPage-ShimmerBackground "]
       67 MOVE                             R11 R3
       68 CONCAT                           R9 R10 R11
       69 SETTABLE                         R9 R7 R8
       70 GETUPVAL                         R8 3
       71 GETTABLEKS                       R8 R8 K11 ["createElement"]
       73 LOADK                            R9 K12 ["Frame"]
       74 NEWTABLE                         R10 2 0
       76 GETIMPORT                        R11 K23 [UDim2.new]
       78 LOADN                            R12 1
       79 LOADN                            R13 0
       80 LOADN                            R14 1
       81 LOADN                            R15 0
       82 CALL                             R11 4 1
       83 SETTABLEKS                       R11 R10 K13 ["Size"]
       85 GETUPVAL                         R11 3
       86 GETTABLEKS                       R11 R11 K19 ["Tag"]
       88 LOADK                            R13 K24 ["StartPage-NoBorder StartPage-ShimmerForeground "]
       89 MOVE                             R14 R3
       90 CONCAT                           R12 R13 R14
       91 SETTABLE                         R12 R10 R11
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R11 R11 K11 ["createElement"]
       95 LOADK                            R12 K25 ["UIGradient"]
       96 NEWTABLE                         R13 4 0
       98 SETTABLEKS                       R4 R13 K6 ["Rotation"]
      100 GETUPVAL                         R14 4
      101 SETTABLEKS                       R14 R13 K26 ["Offset"]
      103 GETUPVAL                         R14 3
      104 GETTABLEKS                       R14 R14 K19 ["Tag"]
      106 LOADK                            R15 K27 ["StartPage-ShimmerGradient"]
      107 SETTABLE                         R15 R13 R14
      108 CALL                             R11 2 -1
      109 CALL                             R8 -1 -1
      110 CALL                             R5 -1 -1
      111 RETURN                           R5 -1

PROTO_5:
        0 GETIMPORT                        R1 K3 [os.clock]
        2 CALL                             R1 0 1
        3 SUBK                             R0 R1 K0 [2]
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useEffect"]
       18 GETIMPORT                        R4 K11 [game]
       20 LOADK                            R6 K12 ["RunService"]
       21 NAMECALL                         R4 R4 K13 ["GetService"]
       23 CALL                             R4 2 1
       24 GETIMPORT                        R5 K16 [os.clock]
       26 CALL                             R5 0 1
       27 LOADN                            R6 0
       28 GETTABLEKS                       R7 R1 K17 ["createBinding"]
       30 GETIMPORT                        R8 K20 [Vector2.new]
       32 LOADN                            R9 255
       33 LOADN                            R10 255
       34 CALL                             R8 2 -1
       35 CALL                             R7 -1 2
       36 GETTABLEKS                       R9 R4 K21 ["RenderStepped"]
       38 NEWCLOSURE                       R11 P0
       39 CAPTURE                          REF R6
       40 CAPTURE                          REF R5
       41 CAPTURE                          VAL R8
       42 NAMECALL                         R9 R9 K22 ["Connect"]
       44 CALL                             R9 2 0
       45 NEWTABLE                         R9 2 0
       47 NEWCLOSURE                       R10 P1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          REF R6
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R7
       53 SETTABLEKS                       R10 R9 K23 ["Component"]
       55 NEWCLOSURE                       R10 P2
       56 CAPTURE                          REF R5
       57 SETTABLEKS                       R10 R9 K24 ["restartAnimation"]
       59 CLOSEUPVALS                      R5
       60 RETURN                           R9 1
