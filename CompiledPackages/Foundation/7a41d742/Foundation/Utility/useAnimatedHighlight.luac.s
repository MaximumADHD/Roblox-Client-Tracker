PROTO_0:
        0 DUPTABLE                         R0 K2 [{"easingStyle", "duration"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Ease"]
        4 GETTABLEKS                       R1 R1 K4 ["StandardOut"]
        6 SETTABLEKS                       R1 R0 K0 ["easingStyle"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K5 ["Time"]
       11 GETTABLEKS                       R1 R1 K6 ["Time_200"]
       13 SETTABLEKS                       R1 R0 K1 ["duration"]
       15 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["current"]
        2 JUMPIFNOT                        R2 ; [+64]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["current"]
        6 JUMPIFNOT                        R2 ; [+60]
        7 GETTABLEKS                       R2 R0 K0 ["current"]
        9 GETTABLEKS                       R2 R2 K1 ["AbsolutePosition"]
       11 GETTABLEKS                       R2 R2 K2 ["X"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["current"]
       16 GETTABLEKS                       R3 R3 K1 ["AbsolutePosition"]
       18 GETTABLEKS                       R3 R3 K2 ["X"]
       20 SUB                              R4 R2 R3
       21 GETTABLEKS                       R5 R0 K0 ["current"]
       23 GETTABLEKS                       R5 R5 K3 ["AbsoluteSize"]
       25 GETTABLEKS                       R5 R5 K2 ["X"]
       27 JUMPIFNOT                        R1 ; [+15]
       28 GETUPVAL                         R6 1
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K4 ["instant"]
       32 MOVE                             R8 R5
       33 CALL                             R7 1 1
       34 CALL                             R6 1 0
       35 GETUPVAL                         R6 3
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K4 ["instant"]
       39 MOVE                             R8 R4
       40 CALL                             R7 1 1
       41 CALL                             R6 1 0
       42 JUMP                             ; [+16]
       43 GETUPVAL                         R6 3
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R7 R7 K5 ["ease"]
       47 MOVE                             R8 R4
       48 GETUPVAL                         R9 4
       49 CALL                             R7 2 -1
       50 CALL                             R6 -1 0
       51 GETUPVAL                         R6 1
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K5 ["ease"]
       55 MOVE                             R8 R5
       56 GETUPVAL                         R9 4
       57 CALL                             R7 2 -1
       58 CALL                             R6 -1 0
       59 GETUPVAL                         R6 5
       60 GETTABLEKS                       R7 R0 K0 ["current"]
       62 GETTABLEKS                       R7 R7 K3 ["AbsoluteSize"]
       64 GETTABLEKS                       R7 R7 K6 ["Y"]
       66 CALL                             R6 1 0
       67 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Disconnect"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["Disconnect"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["Disconnect"]
       13 GETUPVAL                         R1 3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+65]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["current"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 GETTABLEKS                       R3 R0 K0 ["current"]
       19 JUMPIFNOT                        R3 ; [+47]
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K0 ["current"]
       23 JUMPIFNOT                        R3 ; [+43]
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R3 R3 K1 ["Connect"]
       27 GETUPVAL                         R4 6
       28 GETTABLEKS                       R4 R4 K2 ["GetPropertyChangedSignal"]
       30 GETTABLEKS                       R5 R0 K0 ["current"]
       32 LOADK                            R6 K3 ["AbsoluteSize"]
       33 CALL                             R4 2 1
       34 MOVE                             R5 R2
       35 CALL                             R3 2 1
       36 GETUPVAL                         R4 5
       37 GETTABLEKS                       R4 R4 K1 ["Connect"]
       39 GETUPVAL                         R5 6
       40 GETTABLEKS                       R5 R5 K2 ["GetPropertyChangedSignal"]
       42 GETTABLEKS                       R6 R0 K0 ["current"]
       44 LOADK                            R7 K4 ["AbsolutePosition"]
       45 CALL                             R5 2 1
       46 MOVE                             R6 R2
       47 CALL                             R4 2 1
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R5 R5 K1 ["Connect"]
       51 GETUPVAL                         R6 6
       52 GETTABLEKS                       R6 R6 K2 ["GetPropertyChangedSignal"]
       54 GETUPVAL                         R7 4
       55 GETTABLEKS                       R7 R7 K0 ["current"]
       57 LOADK                            R8 K3 ["AbsoluteSize"]
       58 CALL                             R6 2 1
       59 MOVE                             R7 R2
       60 CALL                             R5 2 1
       61 NEWCLOSURE                       R6 P1
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 RETURN                           R6 1
       67 DUPCLOSURE                       R0 K5 [PROTO_4]
       68 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+25]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R0 R1 R2
        5 GETTABLEKS                       R1 R0 K0 ["current"]
        7 JUMPIFNOT                        R1 ; [+15]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K0 ["current"]
       11 JUMPIFNOT                        R1 ; [+11]
       12 GETUPVAL                         R1 3
       13 MOVE                             R2 R0
       14 GETUPVAL                         R4 0
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R5 R5 K0 ["current"]
       18 JUMPIFEQ                         R4 R5 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 CALL                             R1 2 0
       23 GETUPVAL                         R1 4
       24 GETUPVAL                         R2 0
       25 SETTABLEKS                       R2 R1 K0 ["current"]
       27 RETURN                           R0 0

PROTO_7:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["useMemo"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 NEWTABLE                         R5 0 1
       10 MOVE                             R6 R2
       11 SETLIST                          R5 R6 1 [1]
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K1 ["useRef"]
       17 MOVE                             R5 R0
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K2 ["useAnimatedBinding"]
       22 LOADN                            R6 0
       23 CALL                             R5 1 2
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K2 ["useAnimatedBinding"]
       27 LOADN                            R8 0
       28 CALL                             R7 1 2
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R9 R9 K3 ["useBinding"]
       32 LOADN                            R10 0
       33 CALL                             R9 1 2
       34 GETUPVAL                         R11 3
       35 CALL                             R11 0 1
       36 GETUPVAL                         R12 1
       37 GETTABLEKS                       R12 R12 K4 ["useCallback"]
       39 NEWCLOSURE                       R13 P1
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R8
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R10
       46 NEWTABLE                         R14 0 2
       48 MOVE                             R15 R3
       49 MOVE                             R16 R0
       50 SETLIST                          R14 R15 2 [1]
       52 CALL                             R12 2 1
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R13 R13 K5 ["useEffect"]
       56 NEWCLOSURE                       R14 P2
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R1
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          UPVAL U6
       65 NEWTABLE                         R15 0 1
       67 MOVE                             R16 R0
       68 SETLIST                          R15 R16 1 [1]
       70 CALL                             R13 2 0
       71 GETUPVAL                         R13 1
       72 GETTABLEKS                       R13 R13 K5 ["useEffect"]
       74 NEWCLOSURE                       R14 P3
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R4
       80 NEWTABLE                         R15 0 1
       82 MOVE                             R16 R0
       83 GETVARARGS                       R17 -1
       84 SETLIST                          R15 R16 -1 [1]
       86 CALL                             R13 2 0
       87 DUPTABLE                         R13 K10 [{"activeItemHeight", "itemRefs", "highlightPosition", "highlightWidth"}]
       88 SETTABLEKS                       R9 R13 K6 ["activeItemHeight"]
       90 SETTABLEKS                       R11 R13 K7 ["itemRefs"]
       92 SETTABLEKS                       R5 R13 K8 ["highlightPosition"]
       94 SETTABLEKS                       R7 R13 K9 ["highlightWidth"]
       96 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Otter"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactOtter"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R5 K11 ["useRefCache"]
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Providers"]
       35 GETTABLEKS                       R8 R8 K13 ["Style"]
       37 GETTABLEKS                       R8 R8 K14 ["useTokens"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R0 K15 ["Utility"]
       44 GETTABLEKS                       R9 R9 K16 ["Wrappers"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R8 K17 ["Connection"]
       49 GETTABLEKS                       R10 R8 K18 ["Instance"]
       51 GETTABLEKS                       R11 R8 K19 ["Signal"]
       53 DUPCLOSURE                       R12 K20 [PROTO_7]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R9
       61 RETURN                           R12 1
