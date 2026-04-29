PROTO_0:
        0 DUPTABLE                         R0 K2 [{"easingStyle", "duration"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["Ease"]
        4 GETTABLEKS                       R1 R2 K4 ["StandardOut"]
        6 SETTABLEKS                       R1 R0 K0 ["easingStyle"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K5 ["Time"]
       11 GETTABLEKS                       R1 R2 K6 ["Time_200"]
       13 SETTABLEKS                       R1 R0 K1 ["duration"]
       15 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["current"]
        2 JUMPIFNOT                        R2 ; [+64]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K0 ["current"]
        6 JUMPIFNOT                        R2 ; [+60]
        7 GETTABLEKS                       R4 R0 K0 ["current"]
        9 GETTABLEKS                       R3 R4 K1 ["AbsolutePosition"]
       11 GETTABLEKS                       R2 R3 K2 ["X"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K0 ["current"]
       16 GETTABLEKS                       R4 R5 K1 ["AbsolutePosition"]
       18 GETTABLEKS                       R3 R4 K2 ["X"]
       20 SUB                              R4 R2 R3
       21 GETTABLEKS                       R7 R0 K0 ["current"]
       23 GETTABLEKS                       R6 R7 K3 ["AbsoluteSize"]
       25 GETTABLEKS                       R5 R6 K2 ["X"]
       27 JUMPIFNOT                        R1 ; [+15]
       28 GETUPVAL                         R6 1
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R7 R8 K4 ["instant"]
       32 MOVE                             R8 R5
       33 CALL                             R7 1 1
       34 CALL                             R6 1 0
       35 GETUPVAL                         R6 3
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R7 R8 K4 ["instant"]
       39 MOVE                             R8 R4
       40 CALL                             R7 1 1
       41 CALL                             R6 1 0
       42 JUMP                             ; [+16]
       43 GETUPVAL                         R6 3
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R7 R8 K5 ["ease"]
       47 MOVE                             R8 R4
       48 GETUPVAL                         R9 4
       49 CALL                             R7 2 -1
       50 CALL                             R6 -1 0
       51 GETUPVAL                         R6 1
       52 GETUPVAL                         R8 2
       53 GETTABLEKS                       R7 R8 K5 ["ease"]
       55 MOVE                             R8 R5
       56 GETUPVAL                         R9 4
       57 CALL                             R7 2 -1
       58 CALL                             R6 -1 0
       59 GETUPVAL                         R6 5
       60 GETTABLEKS                       R9 R0 K0 ["current"]
       62 GETTABLEKS                       R8 R9 K3 ["AbsoluteSize"]
       64 GETTABLEKS                       R7 R8 K6 ["Y"]
       66 CALL                             R6 1 0
       67 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Disconnect"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["Disconnect"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K0 ["Disconnect"]
       13 GETUPVAL                         R1 3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+66]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K0 ["current"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 JUMPIFNOT                        R0 ; [+50]
       18 GETTABLEKS                       R3 R0 K0 ["current"]
       20 JUMPIFNOT                        R3 ; [+47]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R3 R4 K0 ["current"]
       24 JUMPIFNOT                        R3 ; [+43]
       25 GETUPVAL                         R4 5
       26 GETTABLEKS                       R3 R4 K1 ["Connect"]
       28 GETUPVAL                         R5 6
       29 GETTABLEKS                       R4 R5 K2 ["GetPropertyChangedSignal"]
       31 GETTABLEKS                       R5 R0 K0 ["current"]
       33 LOADK                            R6 K3 ["AbsoluteSize"]
       34 CALL                             R4 2 1
       35 MOVE                             R5 R2
       36 CALL                             R3 2 1
       37 GETUPVAL                         R5 5
       38 GETTABLEKS                       R4 R5 K1 ["Connect"]
       40 GETUPVAL                         R6 6
       41 GETTABLEKS                       R5 R6 K2 ["GetPropertyChangedSignal"]
       43 GETTABLEKS                       R6 R0 K0 ["current"]
       45 LOADK                            R7 K4 ["AbsolutePosition"]
       46 CALL                             R5 2 1
       47 MOVE                             R6 R2
       48 CALL                             R4 2 1
       49 GETUPVAL                         R6 5
       50 GETTABLEKS                       R5 R6 K1 ["Connect"]
       52 GETUPVAL                         R7 6
       53 GETTABLEKS                       R6 R7 K2 ["GetPropertyChangedSignal"]
       55 GETUPVAL                         R8 4
       56 GETTABLEKS                       R7 R8 K0 ["current"]
       58 LOADK                            R8 K3 ["AbsoluteSize"]
       59 CALL                             R6 2 1
       60 MOVE                             R7 R2
       61 CALL                             R5 2 1
       62 NEWCLOSURE                       R6 P1
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R5
       67 RETURN                           R6 1
       68 DUPCLOSURE                       R0 K5 [PROTO_4]
       69 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+26]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+18]
        6 GETTABLEKS                       R1 R0 K0 ["current"]
        8 JUMPIFNOT                        R1 ; [+15]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K0 ["current"]
       12 JUMPIFNOT                        R1 ; [+11]
       13 GETUPVAL                         R1 3
       14 MOVE                             R2 R0
       15 GETUPVAL                         R4 0
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K0 ["current"]
       19 JUMPIFEQ                         R4 R5 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 4
       25 GETUPVAL                         R2 0
       26 SETTABLEKS                       R2 R1 K0 ["current"]
       28 RETURN                           R0 0

PROTO_7:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R3 0
        2 CALL                             R3 0 1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["useMemo"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R3
        8 NEWTABLE                         R6 0 1
       10 MOVE                             R7 R3
       11 SETLIST                          R6 R7 1 [1]
       13 CALL                             R4 2 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K1 ["useRef"]
       17 MOVE                             R6 R0
       18 CALL                             R5 1 1
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K2 ["useAnimatedBinding"]
       22 LOADN                            R7 0
       23 CALL                             R6 1 2
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R8 R9 K2 ["useAnimatedBinding"]
       27 LOADN                            R9 0
       28 CALL                             R8 1 2
       29 GETUPVAL                         R11 1
       30 GETTABLEKS                       R10 R11 K3 ["useBinding"]
       32 LOADN                            R11 0
       33 CALL                             R10 1 2
       34 GETUPVAL                         R13 1
       35 GETTABLEKS                       R12 R13 K4 ["useCallback"]
       37 NEWCLOSURE                       R13 P1
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R9
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R11
       44 NEWTABLE                         R14 0 2
       46 MOVE                             R15 R4
       47 MOVE                             R16 R0
       48 SETLIST                          R14 R15 2 [1]
       50 CALL                             R12 2 1
       51 GETUPVAL                         R14 1
       52 GETTABLEKS                       R13 R14 K5 ["useEffect"]
       54 NEWCLOSURE                       R14 P2
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R12
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U5
       63 NEWTABLE                         R15 0 1
       65 MOVE                             R16 R0
       66 SETLIST                          R15 R16 1 [1]
       68 CALL                             R13 2 0
       69 GETUPVAL                         R14 1
       70 GETTABLEKS                       R13 R14 K5 ["useEffect"]
       72 NEWCLOSURE                       R14 P3
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R5
       78 NEWTABLE                         R15 0 1
       80 MOVE                             R16 R0
       81 GETVARARGS                       R17 -1
       82 SETLIST                          R15 R16 -1 [1]
       84 CALL                             R13 2 0
       85 DUPTABLE                         R13 K9 [{"activeItemHeight", "highlightPosition", "highlightWidth"}]
       86 SETTABLEKS                       R10 R13 K6 ["activeItemHeight"]
       88 SETTABLEKS                       R6 R13 K7 ["highlightPosition"]
       90 SETTABLEKS                       R8 R13 K8 ["highlightWidth"]
       92 RETURN                           R13 1

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
       26 GETTABLEKS                       R8 R0 K10 ["Providers"]
       28 GETTABLEKS                       R7 R8 K11 ["Style"]
       30 GETTABLEKS                       R6 R7 K12 ["useTokens"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K13 ["Utility"]
       37 GETTABLEKS                       R7 R8 K14 ["Wrappers"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R6 K15 ["Connection"]
       42 GETTABLEKS                       R8 R6 K16 ["Instance"]
       44 GETTABLEKS                       R9 R6 K17 ["Signal"]
       46 DUPCLOSURE                       R10 K18 [PROTO_7]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R7
       53 RETURN                           R10 1
