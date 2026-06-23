PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["order"]
        2 GETTABLEKS                       R5 R0 K0 ["order"]
        4 LENGTH                           R4 R5
        5 GETTABLE                         R2 R3 R4
        6 GETTABLEKS                       R3 R0 K0 ["order"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R9 R0 K1 ["widths"]
       13 GETTABLE                         R8 R9 R7
       14 JUMPIFNOTLE                      R1 R8 ; [+3]
       16 MOVE                             R2 R7
       17 RETURN                           R2 1
       18 FORGLOOP                         R3 2 ; [-8]
       20 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findIndex"]
        3 GETTABLEKS                       R3 R0 K1 ["order"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 JUMPIF                           R3 ; [+2]
        1 LOADB                            R4 1
        2 RETURN                           R4 1
        3 JUMPIFNOTEQ                      R2 R3 ; [+3]
        5 LOADB                            R4 0
        6 RETURN                           R4 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["findIndex"]
       10 GETTABLEKS                       R5 R0 K1 ["order"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R3
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["findIndex"]
       18 GETTABLEKS                       R6 R0 K1 ["order"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R2
       22 CALL                             R5 2 1
       23 JUMPIFNOTLT                      R4 R5 ; [+10]
       25 GETTABLEKS                       R7 R0 K2 ["widths"]
       27 GETTABLE                         R6 R7 R3
       28 ADDK                             R8 R6 K3 [5]
       29 JUMPIFLT                         R8 R1 ; [+2]
       31 LOADB                            R7 0 +1
       32 LOADB                            R7 1
       33 RETURN                           R7 1
       34 GETTABLEKS                       R7 R0 K2 ["widths"]
       36 GETTABLE                         R6 R7 R2
       37 SUBK                             R8 R6 K3 [5]
       38 JUMPIFLT                         R1 R8 ; [+2]
       40 LOADB                            R7 0 +1
       41 LOADB                            R7 1
       42 RETURN                           R7 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["throttle"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["throttleTime"]
        7 DUPTABLE                         R3 K4 [{"leading", "trailing"}]
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K2 ["leading"]
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R3 K3 ["trailing"]
       14 CALL                             R0 3 -1
       15 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+18]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["GetPropertyChangedSignal"]
        6 GETUPVAL                         R2 0
        7 LOADK                            R3 K1 ["AbsoluteSize"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U0
       12 NAMECALL                         R1 R1 K2 ["Connect"]
       14 CALL                             R1 2 1
       15 MOVE                             R0 R1
       16 GETUPVAL                         R1 3
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K1 ["AbsoluteSize"]
       20 CALL                             R1 1 0
       21 NEWCLOSURE                       R1 P1
       22 CAPTURE                          REF R0
       23 CLOSEUPVALS                      R0
       24 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["X"]
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 JUMPIF                           R4 ; [+2]
        7 LOADB                            R0 1
        8 JUMP                             ; [+39]
        9 JUMPIFNOTEQ                      R3 R4 ; [+3]
       11 LOADB                            R0 0
       12 JUMP                             ; [+35]
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R5 R5 K1 ["findIndex"]
       16 GETTABLEKS                       R6 R1 K2 ["order"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          VAL R4
       20 CALL                             R5 2 1
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R6 R6 K1 ["findIndex"]
       24 GETTABLEKS                       R7 R1 K2 ["order"]
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          VAL R3
       28 CALL                             R6 2 1
       29 JUMPIFNOTLT                      R5 R6 ; [+10]
       31 GETTABLEKS                       R8 R1 K3 ["widths"]
       33 GETTABLE                         R7 R8 R4
       34 ADDK                             R8 R7 K4 [5]
       35 JUMPIFLT                         R8 R2 ; [+2]
       37 LOADB                            R0 0 +1
       38 LOADB                            R0 1
       39 JUMP                             ; [+8]
       40 GETTABLEKS                       R8 R1 K3 ["widths"]
       42 GETTABLE                         R7 R8 R3
       43 SUBK                             R8 R7 K4 [5]
       44 JUMPIFLT                         R2 R8 ; [+2]
       46 LOADB                            R0 0 +1
       47 LOADB                            R0 1
       48 JUMPIFNOT                        R0 ; [+3]
       49 GETUPVAL                         R0 5
       50 GETUPVAL                         R1 2
       51 CALL                             R0 1 0
       52 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 JUMPIF                           R3 ; [+2]
        3 NEWTABLE                         R3 0 0
        5 DUPTABLE                         R4 K1 [{"throttleTime"}]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K2 ["DEFAULT_DELAY_TIME"]
        9 SETTABLEKS                       R5 R4 K0 ["throttleTime"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 2
       13 CALL                             R3 0 1
       14 GETTABLEKS                       R3 R3 K3 ["config"]
       16 GETTABLEKS                       R3 R3 K4 ["breakpoint"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K5 ["useState"]
       21 GETIMPORT                        R5 K8 [Vector2.zero]
       23 CALL                             R4 1 2
       24 GETTABLEKS                       R7 R4 K9 ["X"]
       26 GETTABLEKS                       R9 R3 K10 ["order"]
       28 GETTABLEKS                       R11 R3 K10 ["order"]
       30 LENGTH                           R10 R11
       31 GETTABLE                         R8 R9 R10
       32 GETTABLEKS                       R9 R3 K10 ["order"]
       34 LOADNIL                          R10
       35 LOADNIL                          R11
       36 FORGPREP                         R9
       37 GETTABLEKS                       R15 R3 K11 ["widths"]
       39 GETTABLE                         R14 R15 R13
       40 JUMPIFNOTLE                      R7 R14 ; [+3]
       42 MOVE                             R8 R13
       43 JUMP                             ; [+2]
       44 FORGLOOP                         R9 2 ; [-8]
       46 MOVE                             R6 R8
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R7 R7 K5 ["useState"]
       50 MOVE                             R8 R6
       51 CALL                             R7 1 2
       52 GETUPVAL                         R9 4
       53 MOVE                             R10 R7
       54 CALL                             R9 1 1
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R10 R10 K12 ["useMemo"]
       58 NEWCLOSURE                       R11 P0
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 NEWTABLE                         R12 0 1
       64 GETTABLEKS                       R13 R2 K0 ["throttleTime"]
       66 SETLIST                          R12 R13 1 [1]
       68 CALL                             R10 2 1
       69 GETUPVAL                         R11 3
       70 GETTABLEKS                       R11 R11 K13 ["useEffect"]
       72 NEWCLOSURE                       R12 P1
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R5
       77 NEWTABLE                         R13 0 1
       79 MOVE                             R14 R0
       80 SETLIST                          R13 R14 1 [1]
       82 CALL                             R11 2 0
       83 GETUPVAL                         R11 3
       84 GETTABLEKS                       R11 R11 K13 ["useEffect"]
       86 NEWCLOSURE                       R12 P2
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R9
       91 CAPTURE                          UPVAL U5
       92 CAPTURE                          VAL R8
       93 NEWTABLE                         R13 0 4
       95 MOVE                             R14 R3
       96 GETTABLEKS                       R15 R4 K9 ["X"]
       98 MOVE                             R16 R6
       99 MOVE                             R17 R9
      100 SETLIST                          R13 R14 4 [1]
      102 CALL                             R11 2 0
      103 MOVE                             R11 R7
      104 MOVE                             R12 R4
      105 RETURN                           R11 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["usePrevious"]
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Utility"]
       30 GETTABLEKS                       R7 R7 K12 ["Wrappers"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R7 R6 K13 ["Instance"]
       35 GETIMPORT                        R8 K6 [require]
       37 GETTABLEKS                       R9 R0 K14 ["Enums"]
       39 GETTABLEKS                       R9 R9 K15 ["Breakpoint"]
       41 CALL                             R8 1 1
       42 GETIMPORT                        R9 K6 [require]
       44 GETTABLEKS                       R10 R0 K16 ["Constants"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K6 [require]
       49 GETTABLEKS                       R11 R0 K17 ["Providers"]
       51 GETTABLEKS                       R11 R11 K18 ["Responsive"]
       53 GETTABLEKS                       R11 R11 K19 ["ResponsiveContext"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K6 [require]
       58 GETTABLEKS                       R12 R0 K17 ["Providers"]
       60 GETTABLEKS                       R12 R12 K18 ["Responsive"]
       62 GETTABLEKS                       R12 R12 K20 ["useResponsive"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K6 [require]
       67 GETTABLEKS                       R13 R0 K11 ["Utility"]
       69 GETTABLEKS                       R13 R13 K21 ["withDefaults"]
       71 CALL                             R12 1 1
       72 DUPCLOSURE                       R13 K22 [PROTO_0]
       73 DUPCLOSURE                       R14 K23 [PROTO_2]
       74 CAPTURE                          VAL R2
       75 DUPCLOSURE                       R15 K24 [PROTO_3]
       76 CAPTURE                          VAL R2
       77 DUPCLOSURE                       R16 K25 [PROTO_9]
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R7
       85 RETURN                           R16 1
