PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["AbsoluteSize"]
        5 RETURN                           R0 1
        6 GETIMPORT                        R0 K3 [Vector2.zero]
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K2 [Vector2.zero]
        6 CALL                             R1 1 0
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 LOADK                            R3 K3 ["AbsoluteSize"]
       10 NAMECALL                         R1 R0 K4 ["GetPropertyChangedSignal"]
       12 CALL                             R1 2 1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R1 R1 K5 ["Connect"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R3 R0 K3 ["AbsoluteSize"]
       22 CALL                             R2 1 0
       23 NEWCLOSURE                       R2 P1
       24 CAPTURE                          VAL R1
       25 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R7 0 0
       18 CALL                             R5 2 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       22 NEWCLOSURE                       R7 P2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R8 0 1
       27 MOVE                             R9 R1
       28 SETLIST                          R8 R9 1 [1]
       30 CALL                             R6 2 0
       31 JUMPIFNOT                        R1 ; [+2]
       32 GETTABLEKS                       R3 R1 K3 ["AbsoluteSize"]
       34 GETIMPORT                        R7 K6 [Vector2.new]
       36 GETTABLEKS                       R8 R0 K7 ["Width"]
       38 GETTABLEKS                       R9 R0 K8 ["HeaderHeight"]
       40 CALL                             R7 2 1
       41 GETTABLEKS                       R8 R0 K9 ["Padding"]
       43 ADD                              R6 R7 R8
       44 GETTABLEKS                       R10 R0 K10 ["MaxHeight"]
       46 GETTABLEKS                       R11 R0 K8 ["HeaderHeight"]
       48 SUB                              R9 R10 R11
       49 GETTABLEKS                       R10 R0 K11 ["InnerPadding"]
       51 SUB                              R8 R9 R10
       52 GETTABLEKS                       R9 R0 K9 ["Padding"]
       54 GETTABLEKS                       R9 R9 K12 ["Y"]
       56 SUB                              R7 R8 R9
       57 GETTABLEKS                       R9 R3 K12 ["Y"]
       59 LOADN                            R10 0
       60 FASTCALL3                        MATH_CLAMP R9 R10 R7
       62 MOVE                             R11 R7
       63 GETIMPORT                        R8 K15 [math.clamp]
       65 CALL                             R8 3 1
       66 GETIMPORT                        R9 K17 [UDim2.new]
       68 LOADN                            R10 1
       69 LOADN                            R11 0
       70 LOADN                            R12 0
       71 MOVE                             R13 R8
       72 CALL                             R9 4 1
       73 LOADN                            R10 0
       74 JUMPIFNOTLT                      R10 R8 ; [+9]
       76 GETIMPORT                        R10 K6 [Vector2.new]
       78 LOADN                            R11 0
       79 GETTABLEKS                       R13 R0 K11 ["InnerPadding"]
       81 ADD                              R12 R8 R13
       82 CALL                             R10 2 1
       83 ADD                              R6 R6 R10
       84 GETIMPORT                        R10 K20 [table.freeze]
       86 DUPTABLE                         R11 K25 [{"loaded", "contentFrameRef", "size", "scrollingFrameSize"}]
       87 LOADB                            R12 0
       88 JUMPIFEQKNIL                     R1 ; [+8]
       90 GETTABLEKS                       R13 R3 K12 ["Y"]
       92 LOADN                            R14 0
       93 JUMPIFLT                         R14 R13 ; [+2]
       95 LOADB                            R12 0 +1
       96 LOADB                            R12 1
       97 SETTABLEKS                       R12 R11 K21 ["loaded"]
       99 SETTABLEKS                       R5 R11 K22 ["contentFrameRef"]
      101 SETTABLEKS                       R6 R11 K23 ["size"]
      103 SETTABLEKS                       R9 R11 K24 ["scrollingFrameSize"]
      105 CALL                             R10 1 -1
      106 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_5]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
