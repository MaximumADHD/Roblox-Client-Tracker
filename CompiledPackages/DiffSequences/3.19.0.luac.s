PROTO_0:
        0 LOADN                            R5 0
        1 JUMPIFNOTLT                      R0 R1 ; [+12]
        3 JUMPIFNOTLT                      R2 R3 ; [+10]
        5 MOVE                             R6 R4
        6 MOVE                             R7 R0
        7 MOVE                             R8 R2
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+4]
       10 ADDK                             R0 R0 K0 [1]
       11 ADDK                             R2 R2 K0 [1]
       12 ADDK                             R5 R5 K0 [1]
       13 JUMPBACK                         ; [-13]
       14 RETURN                           R5 1

PROTO_1:
        0 LOADN                            R5 0
        1 JUMPIFNOTLE                      R0 R1 ; [+12]
        3 JUMPIFNOTLE                      R2 R3 ; [+10]
        5 MOVE                             R6 R4
        6 MOVE                             R7 R1
        7 MOVE                             R8 R3
        8 CALL                             R6 2 1
        9 JUMPIFNOT                        R6 ; [+4]
       10 SUBK                             R1 R1 K0 [1]
       11 SUBK                             R3 R3 K0 [1]
       12 ADDK                             R5 R5 K0 [1]
       13 JUMPBACK                         ; [-13]
       14 RETURN                           R5 1

PROTO_2:
        0 LOADN                            R7 0
        1 MINUS                            R8 R0
        2 ADDK                             R10 R7 K0 [1]
        3 GETTABLE                         R9 R5 R10
        4 MOVE                             R10 R9
        5 ADDK                             R11 R7 K0 [1]
        6 GETTABLE                         R12 R5 R11
        7 GETUPVAL                         R13 0
        8 ADDK                             R14 R9 K0 [1]
        9 MOVE                             R15 R1
       10 ADD                              R18 R3 R9
       11 SUB                              R17 R18 R8
       12 ADDK                             R16 R17 K0 [1]
       13 MOVE                             R17 R2
       14 MOVE                             R18 R4
       15 CALL                             R13 5 1
       16 ADD                              R12 R12 R13
       17 SETTABLE                         R12 R5 R11
       18 JUMPIFNOTLT                      R0 R6 ; [+3]
       20 MOVE                             R11 R0
       21 JUMPIF                           R11 ; [+1]
       22 MOVE                             R11 R6
       23 ADDK                             R7 R7 K0 [1]
       24 ADDK                             R8 R8 K1 [2]
       25 JUMPIFNOTLE                      R7 R11 ; [+32]
       27 JUMPIFEQ                         R7 R0 ; [+8]
       29 ADDK                             R13 R7 K0 [1]
       30 GETTABLE                         R12 R5 R13
       31 JUMPIFNOTLT                      R10 R12 ; [+4]
       33 ADDK                             R12 R7 K0 [1]
       34 GETTABLE                         R9 R5 R12
       35 JUMP                             ; [+5]
       36 ADDK                             R9 R10 K0 [1]
       37 JUMPIFNOTLE                      R1 R9 ; [+3]
       39 SUBK                             R12 R7 K0 [1]
       40 RETURN                           R12 1
       41 ADDK                             R12 R7 K0 [1]
       42 GETTABLE                         R10 R5 R12
       43 ADDK                             R12 R7 K0 [1]
       44 GETUPVAL                         R14 0
       45 ADDK                             R15 R9 K0 [1]
       46 MOVE                             R16 R1
       47 ADD                              R19 R3 R9
       48 SUB                              R18 R19 R8
       49 ADDK                             R17 R18 K0 [1]
       50 MOVE                             R18 R2
       51 MOVE                             R19 R4
       52 CALL                             R14 5 1
       53 ADD                              R13 R9 R14
       54 SETTABLE                         R13 R5 R12
       55 ADDK                             R7 R7 K0 [1]
       56 ADDK                             R8 R8 K1 [2]
       57 JUMPBACK                         ; [-33]
       58 RETURN                           R6 1

PROTO_3:
        0 LOADN                            R7 0
        1 MOVE                             R8 R0
        2 ADDK                             R10 R7 K0 [1]
        3 GETTABLE                         R9 R5 R10
        4 MOVE                             R10 R9
        5 ADDK                             R11 R7 K0 [1]
        6 GETTABLE                         R12 R5 R11
        7 GETUPVAL                         R13 0
        8 MOVE                             R14 R1
        9 SUBK                             R15 R9 K0 [1]
       10 MOVE                             R16 R2
       11 ADD                              R19 R3 R9
       12 SUB                              R18 R19 R8
       13 SUBK                             R17 R18 K0 [1]
       14 MOVE                             R18 R4
       15 CALL                             R13 5 1
       16 SUB                              R12 R12 R13
       17 SETTABLE                         R12 R5 R11
       18 JUMPIFNOTLT                      R0 R6 ; [+3]
       20 MOVE                             R11 R0
       21 JUMPIF                           R11 ; [+1]
       22 MOVE                             R11 R6
       23 ADDK                             R7 R7 K0 [1]
       24 SUBK                             R8 R8 K1 [2]
       25 JUMPIFNOTLE                      R7 R11 ; [+32]
       27 JUMPIFEQ                         R7 R0 ; [+8]
       29 ADDK                             R13 R7 K0 [1]
       30 GETTABLE                         R12 R5 R13
       31 JUMPIFNOTLT                      R12 R10 ; [+4]
       33 ADDK                             R12 R7 K0 [1]
       34 GETTABLE                         R9 R5 R12
       35 JUMP                             ; [+5]
       36 SUBK                             R9 R10 K0 [1]
       37 JUMPIFNOTLT                      R9 R1 ; [+3]
       39 SUBK                             R12 R7 K0 [1]
       40 RETURN                           R12 1
       41 ADDK                             R12 R7 K0 [1]
       42 GETTABLE                         R10 R5 R12
       43 ADDK                             R12 R7 K0 [1]
       44 GETUPVAL                         R14 0
       45 MOVE                             R15 R1
       46 SUBK                             R16 R9 K0 [1]
       47 MOVE                             R17 R2
       48 ADD                              R20 R3 R9
       49 SUB                              R19 R20 R8
       50 SUBK                             R18 R19 K0 [1]
       51 MOVE                             R19 R4
       52 CALL                             R14 5 1
       53 SUB                              R13 R9 R14
       54 SETTABLE                         R13 R5 R12
       55 ADDK                             R7 R7 K0 [1]
       56 SUBK                             R8 R8 K1 [2]
       57 JUMPBACK                         ; [-33]
       58 RETURN                           R6 1

PROTO_4:
        0 SUB                              R11 R3 R1
        1 SUB                              R12 R2 R1
        2 SUB                              R13 R4 R3
        3 SUB                              R14 R13 R12
        4 MINUS                            R16 R14
        5 SUBK                             R17 R0 K0 [1]
        6 SUB                              R15 R16 R17
        7 MINUS                            R17 R14
        8 SUBK                             R18 R0 K0 [1]
        9 ADD                              R16 R17 R18
       10 LOADN                            R17 0
       11 JUMPIFNOTLT                      R0 R7 ; [+3]
       13 MOVE                             R18 R0
       14 JUMPIF                           R18 ; [+1]
       15 MOVE                             R18 R7
       16 LOADN                            R19 0
       17 MINUS                            R20 R0
       18 JUMPIFNOTLE                      R19 R18 ; [+130]
       20 LOADB                            R21 1
       21 JUMPIFEQKN                       R19 K1 [0] ; [+10]
       23 LOADB                            R21 0
       24 JUMPIFEQ                         R19 R0 ; [+7]
       26 ADDK                             R23 R19 K0 [1]
       27 GETTABLE                         R22 R6 R23
       28 JUMPIFLT                         R17 R22 ; [+2]
       30 LOADB                            R21 0 +1
       31 LOADB                            R21 1
       32 JUMPIFNOT                        R21 ; [+3]
       33 ADDK                             R23 R19 K0 [1]
       34 GETTABLE                         R22 R6 R23
       35 JUMPIF                           R22 ; [+1]
       36 MOVE                             R22 R17
       37 JUMPIFNOT                        R21 ; [+2]
       38 MOVE                             R23 R22
       39 JUMPIF                           R23 ; [+1]
       40 ADDK                             R23 R22 K0 [1]
       41 ADD                              R25 R11 R23
       42 SUB                              R24 R25 R20
       43 GETUPVAL                         R25 0
       44 ADDK                             R26 R23 K0 [1]
       45 MOVE                             R27 R2
       46 ADDK                             R28 R24 K0 [1]
       47 MOVE                             R29 R4
       48 MOVE                             R30 R5
       49 CALL                             R25 5 1
       50 ADD                              R26 R23 R25
       51 ADDK                             R27 R19 K0 [1]
       52 GETTABLE                         R17 R6 R27
       53 ADDK                             R27 R19 K0 [1]
       54 SETTABLE                         R26 R6 R27
       55 JUMPIFNOTLE                      R15 R20 ; [+90]
       57 JUMPIFNOTLE                      R20 R16 ; [+88]
       59 SUBK                             R29 R0 K0 [1]
       60 ADD                              R30 R20 R14
       61 SUB                              R28 R29 R30
       62 DIVK                             R27 R28 K2 [2]
       63 JUMPIFNOTLE                      R27 R9 ; [+82]
       65 ADDK                             R30 R27 K0 [1]
       66 GETTABLE                         R29 R8 R30
       67 SUBK                             R28 R29 K0 [1]
       68 JUMPIFNOTLE                      R28 R26 ; [+77]
       70 ADD                              R29 R11 R22
       71 JUMPIFNOT                        R21 ; [+2]
       72 ADDK                             R30 R20 K0 [1]
       73 JUMPIF                           R30 ; [+1]
       74 SUBK                             R30 R20 K0 [1]
       75 SUB                              R28 R29 R30
       76 GETUPVAL                         R29 1
       77 MOVE                             R30 R1
       78 MOVE                             R31 R22
       79 MOVE                             R32 R3
       80 MOVE                             R33 R28
       81 MOVE                             R34 R5
       82 CALL                             R29 5 1
       83 SUB                              R30 R22 R29
       84 SUB                              R31 R28 R29
       85 ADDK                             R32 R30 K0 [1]
       86 ADDK                             R33 R31 K0 [1]
       87 SUBK                             R34 R0 K0 [1]
       88 SETTABLEKS                       R34 R10 K3 ["nChangePreceding"]
       90 SUBK                             R34 R0 K0 [1]
       91 ADD                              R37 R32 R33
       92 SUB                              R36 R37 R1
       93 SUB                              R35 R36 R3
       94 JUMPIFNOTEQ                      R34 R35 ; [+6]
       96 SETTABLEKS                       R1 R10 K4 ["aEndPreceding"]
       98 SETTABLEKS                       R3 R10 K5 ["bEndPreceding"]
      100 JUMP                             ; [+4]
      101 SETTABLEKS                       R32 R10 K4 ["aEndPreceding"]
      103 SETTABLEKS                       R33 R10 K5 ["bEndPreceding"]
      105 SETTABLEKS                       R29 R10 K6 ["nCommonPreceding"]
      107 JUMPIFEQKN                       R29 K1 [0] ; [+5]
      109 SETTABLEKS                       R32 R10 K7 ["aCommonPreceding"]
      111 SETTABLEKS                       R33 R10 K8 ["bCommonPreceding"]
      113 SETTABLEKS                       R25 R10 K9 ["nCommonFollowing"]
      115 JUMPIFEQKN                       R25 K1 [0] ; [+7]
      117 ADDK                             R34 R23 K0 [1]
      118 SETTABLEKS                       R34 R10 K10 ["aCommonFollowing"]
      120 ADDK                             R34 R24 K0 [1]
      121 SETTABLEKS                       R34 R10 K11 ["bCommonFollowing"]
      123 ADDK                             R34 R26 K0 [1]
      124 ADD                              R36 R24 R25
      125 ADDK                             R35 R36 K0 [1]
      126 SUBK                             R36 R0 K0 [1]
      127 SETTABLEKS                       R36 R10 K12 ["nChangeFollowing"]
      129 SUBK                             R36 R0 K0 [1]
      130 ADD                              R39 R2 R4
      131 SUB                              R38 R39 R34
      132 SUB                              R37 R38 R35
      133 JUMPIFNOTEQ                      R36 R37 ; [+6]
      135 SETTABLEKS                       R2 R10 K13 ["aStartFollowing"]
      137 SETTABLEKS                       R4 R10 K14 ["bStartFollowing"]
      139 JUMP                             ; [+4]
      140 SETTABLEKS                       R34 R10 K13 ["aStartFollowing"]
      142 SETTABLEKS                       R35 R10 K14 ["bStartFollowing"]
      144 LOADB                            R36 1
      145 RETURN                           R36 1
      146 ADDK                             R19 R19 K0 [1]
      147 ADDK                             R20 R20 K2 [2]
      148 JUMPBACK                         ; [-131]
      149 LOADB                            R21 0
      150 RETURN                           R21 1

PROTO_5:
        0 SUB                              R11 R4 R2
        1 SUB                              R12 R2 R1
        2 SUB                              R13 R4 R3
        3 SUB                              R14 R13 R12
        4 SUB                              R15 R14 R0
        5 ADD                              R16 R14 R0
        6 LOADN                            R17 0
        7 JUMPIFNOTLT                      R0 R9 ; [+3]
        9 MOVE                             R18 R0
       10 JUMPIF                           R18 ; [+1]
       11 MOVE                             R18 R9
       12 LOADN                            R19 0
       13 MOVE                             R20 R0
       14 JUMPIFNOTLE                      R19 R18 ; [+131]
       16 LOADB                            R21 1
       17 JUMPIFEQKN                       R19 K0 [0] ; [+10]
       19 LOADB                            R21 0
       20 JUMPIFEQ                         R19 R0 ; [+7]
       22 ADDK                             R23 R19 K1 [1]
       23 GETTABLE                         R22 R8 R23
       24 JUMPIFLT                         R22 R17 ; [+2]
       26 LOADB                            R21 0 +1
       27 LOADB                            R21 1
       28 JUMPIFNOT                        R21 ; [+3]
       29 ADDK                             R23 R19 K1 [1]
       30 GETTABLE                         R22 R8 R23
       31 JUMPIF                           R22 ; [+1]
       32 MOVE                             R22 R17
       33 JUMPIFNOT                        R21 ; [+2]
       34 MOVE                             R23 R22
       35 JUMPIF                           R23 ; [+1]
       36 SUBK                             R23 R22 K1 [1]
       37 ADD                              R25 R11 R23
       38 SUB                              R24 R25 R20
       39 GETUPVAL                         R25 0
       40 MOVE                             R26 R1
       41 SUBK                             R27 R23 K1 [1]
       42 MOVE                             R28 R3
       43 SUBK                             R29 R24 K1 [1]
       44 MOVE                             R30 R5
       45 CALL                             R25 5 1
       46 SUB                              R26 R23 R25
       47 ADDK                             R27 R19 K1 [1]
       48 GETTABLE                         R17 R8 R27
       49 ADDK                             R27 R19 K1 [1]
       50 SETTABLE                         R26 R8 R27
       51 JUMPIFNOTLE                      R15 R20 ; [+91]
       53 JUMPIFNOTLE                      R20 R16 ; [+89]
       55 SUB                              R29 R20 R14
       56 ADD                              R28 R0 R29
       57 DIVK                             R27 R28 K2 [2]
       58 JUMPIFNOTLE                      R27 R7 ; [+84]
       60 SUBK                             R28 R26 K1 [1]
       61 ADDK                             R30 R27 K1 [1]
       62 GETTABLE                         R29 R6 R30
       63 JUMPIFNOTLE                      R28 R29 ; [+79]
       65 SUB                              R28 R24 R25
       66 SETTABLEKS                       R0 R10 K3 ["nChangePreceding"]
       68 ADD                              R31 R26 R28
       69 SUB                              R30 R31 R1
       70 SUB                              R29 R30 R3
       71 JUMPIFNOTEQ                      R0 R29 ; [+6]
       73 SETTABLEKS                       R1 R10 K4 ["aEndPreceding"]
       75 SETTABLEKS                       R3 R10 K5 ["bEndPreceding"]
       77 JUMP                             ; [+4]
       78 SETTABLEKS                       R26 R10 K4 ["aEndPreceding"]
       80 SETTABLEKS                       R28 R10 K5 ["bEndPreceding"]
       82 SETTABLEKS                       R25 R10 K6 ["nCommonPreceding"]
       84 JUMPIFEQKN                       R25 K0 [0] ; [+5]
       86 SETTABLEKS                       R26 R10 K7 ["aCommonPreceding"]
       88 SETTABLEKS                       R28 R10 K8 ["bCommonPreceding"]
       90 SUBK                             R29 R0 K1 [1]
       91 SETTABLEKS                       R29 R10 K9 ["nChangeFollowing"]
       93 JUMPIFNOTEQKN                    R0 K1 [1] ; [+9]
       95 LOADN                            R29 0
       96 SETTABLEKS                       R29 R10 K10 ["nCommonFollowing"]
       98 SETTABLEKS                       R2 R10 K11 ["aStartFollowing"]
      100 SETTABLEKS                       R4 R10 K12 ["bStartFollowing"]
      102 JUMP                             ; [+38]
      103 ADD                              R30 R11 R22
      104 JUMPIFNOT                        R21 ; [+2]
      105 SUBK                             R31 R20 K1 [1]
      106 JUMPIF                           R31 ; [+1]
      107 ADDK                             R31 R20 K1 [1]
      108 SUB                              R29 R30 R31
      109 GETUPVAL                         R30 1
      110 MOVE                             R31 R22
      111 MOVE                             R32 R2
      112 MOVE                             R33 R29
      113 MOVE                             R34 R4
      114 MOVE                             R35 R5
      115 CALL                             R30 5 1
      116 SETTABLEKS                       R30 R10 K10 ["nCommonFollowing"]
      118 JUMPIFEQKN                       R30 K0 [0] ; [+5]
      120 SETTABLEKS                       R22 R10 K13 ["aCommonFollowing"]
      122 SETTABLEKS                       R29 R10 K14 ["bCommonFollowing"]
      124 ADD                              R31 R22 R30
      125 ADD                              R32 R29 R30
      126 SUBK                             R33 R0 K1 [1]
      127 ADD                              R36 R2 R4
      128 SUB                              R35 R36 R31
      129 SUB                              R34 R35 R32
      130 JUMPIFNOTEQ                      R33 R34 ; [+6]
      132 SETTABLEKS                       R2 R10 K11 ["aStartFollowing"]
      134 SETTABLEKS                       R4 R10 K12 ["bStartFollowing"]
      136 JUMP                             ; [+4]
      137 SETTABLEKS                       R31 R10 K11 ["aStartFollowing"]
      139 SETTABLEKS                       R32 R10 K12 ["bStartFollowing"]
      141 LOADB                            R29 1
      142 RETURN                           R29 1
      143 ADDK                             R19 R19 K1 [1]
      144 SUBK                             R20 R20 K2 [2]
      145 JUMPBACK                         ; [-132]
      146 LOADB                            R21 0
      147 RETURN                           R21 1

PROTO_6:
        0 SUB                              R9 R3 R1
        1 SUB                              R10 R4 R2
        2 SUB                              R11 R2 R1
        3 SUB                              R12 R4 R3
        4 SUB                              R13 R12 R11
        5 MOVE                             R14 R11
        6 MOVE                             R15 R11
        7 SUBK                             R16 R1 K0 [1]
        8 SETTABLEN                        R16 R6 1
        9 SETTABLEN                        R2 R7 1
       10 MODK                             R16 R13 K1 [2]
       11 JUMPIFNOTEQKN                    R16 K2 [0] ; [+53]
       13 JUMPIFEQKN                       R0 K2 [0] ; [+3]
       15 MOVE                             R17 R0
       16 JUMPIF                           R17 ; [+1]
       17 MOVE                             R17 R13
       18 DIVK                             R16 R17 K1 [2]
       19 ADD                              R18 R11 R12
       20 DIVK                             R17 R18 K1 [2]
       21 LOADN                            R20 1
       22 MOVE                             R18 R17
       23 LOADN                            R19 1
       24 FORNPREP                         R18
       25 GETUPVAL                         R21 0
       26 MOVE                             R22 R20
       27 MOVE                             R23 R2
       28 MOVE                             R24 R4
       29 MOVE                             R25 R9
       30 MOVE                             R26 R5
       31 MOVE                             R27 R6
       32 MOVE                             R28 R14
       33 CALL                             R21 7 1
       34 MOVE                             R14 R21
       35 JUMPIFNOTLT                      R20 R16 ; [+12]
       37 GETUPVAL                         R21 1
       38 MOVE                             R22 R20
       39 MOVE                             R23 R1
       40 MOVE                             R24 R3
       41 MOVE                             R25 R10
       42 MOVE                             R26 R5
       43 MOVE                             R27 R7
       44 MOVE                             R28 R15
       45 CALL                             R21 7 1
       46 MOVE                             R15 R21
       47 JUMP                             ; [+15]
       48 GETUPVAL                         R21 2
       49 MOVE                             R22 R20
       50 MOVE                             R23 R1
       51 MOVE                             R24 R2
       52 MOVE                             R25 R3
       53 MOVE                             R26 R4
       54 MOVE                             R27 R5
       55 MOVE                             R28 R6
       56 MOVE                             R29 R14
       57 MOVE                             R30 R7
       58 MOVE                             R31 R15
       59 MOVE                             R32 R8
       60 CALL                             R21 11 1
       61 JUMPIFNOT                        R21 ; [+1]
       62 RETURN                           R0 0
       63 FORNLOOP                         R18
       64 JUMP                             ; [+64]
       65 JUMPIFEQKN                       R0 K2 [0] ; [+3]
       67 MOVE                             R18 R0
       68 JUMPIF                           R18 ; [+1]
       69 MOVE                             R18 R13
       70 ADDK                             R17 R18 K0 [1]
       71 DIVK                             R16 R17 K1 [2]
       72 ADD                              R19 R11 R12
       73 ADDK                             R18 R19 K0 [1]
       74 DIVK                             R17 R18 K1 [2]
       75 LOADN                            R18 1
       76 GETUPVAL                         R19 0
       77 MOVE                             R20 R18
       78 MOVE                             R21 R2
       79 MOVE                             R22 R4
       80 MOVE                             R23 R9
       81 MOVE                             R24 R5
       82 MOVE                             R25 R6
       83 MOVE                             R26 R14
       84 CALL                             R19 7 1
       85 MOVE                             R14 R19
       86 ADDK                             R18 R18 K0 [1]
       87 JUMPIFNOTLE                      R18 R17 ; [+41]
       89 GETUPVAL                         R19 1
       90 SUBK                             R20 R18 K0 [1]
       91 MOVE                             R21 R1
       92 MOVE                             R22 R3
       93 MOVE                             R23 R10
       94 MOVE                             R24 R5
       95 MOVE                             R25 R7
       96 MOVE                             R26 R15
       97 CALL                             R19 7 1
       98 MOVE                             R15 R19
       99 JUMPIFNOTLT                      R18 R16 ; [+12]
      101 GETUPVAL                         R19 0
      102 MOVE                             R20 R18
      103 MOVE                             R21 R2
      104 MOVE                             R22 R4
      105 MOVE                             R23 R9
      106 MOVE                             R24 R5
      107 MOVE                             R25 R6
      108 MOVE                             R26 R14
      109 CALL                             R19 7 1
      110 MOVE                             R14 R19
      111 JUMP                             ; [+15]
      112 GETUPVAL                         R19 3
      113 MOVE                             R20 R18
      114 MOVE                             R21 R1
      115 MOVE                             R22 R2
      116 MOVE                             R23 R3
      117 MOVE                             R24 R4
      118 MOVE                             R25 R5
      119 MOVE                             R26 R6
      120 MOVE                             R27 R14
      121 MOVE                             R28 R7
      122 MOVE                             R29 R15
      123 MOVE                             R30 R8
      124 CALL                             R19 11 1
      125 JUMPIFNOT                        R19 ; [+1]
      126 RETURN                           R0 0
      127 ADDK                             R18 R18 K0 [1]
      128 JUMPBACK                         ; [-42]
      129 GETIMPORT                        R16 K4 [error]
      131 GETIMPORT                        R17 K7 [string.format]
      133 LOADK                            R18 K8 ["%s: no overlap aStart=%i aEnd=%i bStart=%i bEnd=%i"]
      134 LOADK                            R19 K9 ["diff-sequences"]
      135 MOVE                             R20 R1
      136 MOVE                             R21 R2
      137 MOVE                             R22 R3
      138 MOVE                             R23 R4
      139 CALL                             R17 6 -1
      140 CALL                             R16 -1 0
      141 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R2
        3 MOVE                             R6 R1
        4 CALL                             R3 3 -1
        5 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 MOVE                             R4 R0
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_9:
        0 SUB                              R10 R4 R3
        1 SUB                              R11 R2 R1
        2 JUMPIFNOTLT                      R10 R11 ; [+26]
        4 NOT                              R5 R5
        5 JUMPIFNOT                        R5 ; [+17]
        6 LENGTH                           R10 R6
        7 JUMPIFNOTEQKN                    R10 K0 [1] ; [+15]
        9 GETTABLEN                        R11 R6 1
       10 FASTCALL1                        TABLE_UNPACK R11 ; [+2]
       11 GETIMPORT                        R10 K2 [unpack]
       13 CALL                             R10 1 2
       14 NEWTABLE                         R12 0 2
       16 NEWCLOSURE                       R13 P0
       17 CAPTURE                          VAL R10
       18 NEWCLOSURE                       R14 P1
       19 CAPTURE                          VAL R11
       20 SETLIST                          R12 R13 2 [1]
       22 SETTABLEN                        R12 R6 2
       23 MOVE                             R10 R1
       24 MOVE                             R11 R2
       25 MOVE                             R1 R3
       26 MOVE                             R2 R4
       27 MOVE                             R3 R10
       28 MOVE                             R4 R11
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADN                            R12 2
       31 JUMP                             ; [+1]
       32 LOADN                            R12 1
       33 GETTABLE                         R11 R6 R12
       34 FASTCALL1                        TABLE_UNPACK R11 ; [+2]
       35 GETIMPORT                        R10 K2 [unpack]
       37 CALL                             R10 1 2
       38 GETUPVAL                         R12 0
       39 MOVE                             R13 R0
       40 MOVE                             R14 R1
       41 MOVE                             R15 R2
       42 MOVE                             R16 R3
       43 MOVE                             R17 R4
       44 MOVE                             R18 R11
       45 MOVE                             R19 R7
       46 MOVE                             R20 R8
       47 MOVE                             R21 R9
       48 CALL                             R12 9 0
       49 GETTABLEKS                       R12 R9 K3 ["nChangePreceding"]
       51 GETTABLEKS                       R13 R9 K4 ["aEndPreceding"]
       53 GETTABLEKS                       R14 R9 K5 ["bEndPreceding"]
       55 GETTABLEKS                       R15 R9 K6 ["nCommonPreceding"]
       57 GETTABLEKS                       R16 R9 K7 ["aCommonPreceding"]
       59 GETTABLEKS                       R17 R9 K8 ["bCommonPreceding"]
       61 GETTABLEKS                       R18 R9 K9 ["nCommonFollowing"]
       63 GETTABLEKS                       R19 R9 K10 ["aCommonFollowing"]
       65 GETTABLEKS                       R20 R9 K11 ["bCommonFollowing"]
       67 GETTABLEKS                       R21 R9 K12 ["nChangeFollowing"]
       69 GETTABLEKS                       R22 R9 K13 ["aStartFollowing"]
       71 GETTABLEKS                       R23 R9 K14 ["bStartFollowing"]
       73 JUMPIFNOTLT                      R1 R13 ; [+15]
       75 JUMPIFNOTLT                      R3 R14 ; [+13]
       77 GETUPVAL                         R24 1
       78 MOVE                             R25 R12
       79 MOVE                             R26 R1
       80 MOVE                             R27 R13
       81 MOVE                             R28 R3
       82 MOVE                             R29 R14
       83 MOVE                             R30 R5
       84 MOVE                             R31 R6
       85 MOVE                             R32 R7
       86 MOVE                             R33 R8
       87 MOVE                             R34 R9
       88 CALL                             R24 10 0
       89 JUMPIFEQKN                       R15 K15 [0] ; [+6]
       91 MOVE                             R24 R10
       92 MOVE                             R25 R15
       93 MOVE                             R26 R16
       94 MOVE                             R27 R17
       95 CALL                             R24 3 0
       96 JUMPIFEQKN                       R18 K15 [0] ; [+6]
       98 MOVE                             R24 R10
       99 MOVE                             R25 R18
      100 MOVE                             R26 R19
      101 MOVE                             R27 R20
      102 CALL                             R24 3 0
      103 JUMPIFNOTLT                      R22 R2 ; [+15]
      105 JUMPIFNOTLT                      R23 R4 ; [+13]
      107 GETUPVAL                         R24 1
      108 MOVE                             R25 R21
      109 MOVE                             R26 R22
      110 MOVE                             R27 R2
      111 MOVE                             R28 R23
      112 MOVE                             R29 R4
      113 MOVE                             R30 R5
      114 MOVE                             R31 R6
      115 MOVE                             R32 R7
      116 MOVE                             R33 R8
      117 MOVE                             R34 R9
      118 CALL                             R24 10 0
      119 RETURN                           R0 0

PROTO_10:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["number"] ; [+15]
        7 GETIMPORT                        R2 K4 [error]
        9 GETIMPORT                        R3 K7 [string.format]
       11 LOADK                            R4 K8 ["%s: %s type %s is not a number"]
       12 LOADK                            R5 K9 ["diff-sequences"]
       13 MOVE                             R6 R0
       14 FASTCALL1                        TYPE R1 ; [+3]
       15 MOVE                             R8 R1
       16 GETIMPORT                        R7 K11 [type]
       18 CALL                             R7 1 1
       19 CALL                             R3 4 -1
       20 CALL                             R2 -1 0
       21 JUMPIFNOTEQ                      R1 R1 ; [+6]
       23 MODK                             R2 R1 K12 [1]
       24 JUMPIFNOTEQKN                    R2 K13 [0] ; [+3]
       26 JUMPIFNOTEQKN                    R1 K14 [∞] ; [+10]
       28 GETIMPORT                        R2 K4 [error]
       30 GETIMPORT                        R3 K7 [string.format]
       32 LOADK                            R4 K15 ["%s: %s is not an integer"]
       33 LOADK                            R5 K9 ["diff-sequences"]
       34 MOVE                             R6 R0
       35 CALL                             R3 3 -1
       36 CALL                             R2 -1 0
       37 LOADN                            R2 0
       38 JUMPIFNOTLT                      R1 R2 ; [+15]
       40 GETIMPORT                        R2 K4 [error]
       42 GETIMPORT                        R3 K7 [string.format]
       44 LOADK                            R4 K16 ["%s: %s type %s is a negative integer"]
       45 LOADK                            R5 K9 ["diff-sequences"]
       46 MOVE                             R6 R0
       47 FASTCALL1                        TYPE R1 ; [+3]
       48 MOVE                             R8 R1
       49 GETIMPORT                        R7 K11 [type]
       51 CALL                             R7 1 1
       52 CALL                             R3 4 -1
       53 CALL                             R2 -1 0
       54 RETURN                           R0 0

PROTO_11:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["function"] ; [+15]
        7 GETIMPORT                        R2 K4 [error]
        9 GETIMPORT                        R3 K7 [string.format]
       11 LOADK                            R4 K8 ["%s: %s type %s is not a function"]
       12 LOADK                            R5 K9 ["diff-sequences"]
       13 MOVE                             R6 R0
       14 FASTCALL1                        TYPE R1 ; [+3]
       15 MOVE                             R8 R1
       16 GETIMPORT                        R7 K11 [type]
       18 CALL                             R7 1 1
       19 CALL                             R3 4 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["aLength"]
        2 MOVE                             R6 R0
        3 CALL                             R4 2 0
        4 GETUPVAL                         R4 0
        5 LOADK                            R5 K1 ["bLength"]
        6 MOVE                             R6 R1
        7 CALL                             R4 2 0
        8 FASTCALL1                        TYPEOF R2 ; [+3]
        9 MOVE                             R5 R2
       10 GETIMPORT                        R4 K3 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFEQKS                       R4 K4 ["function"] ; [+15]
       15 GETIMPORT                        R4 K6 [error]
       17 GETIMPORT                        R5 K9 [string.format]
       19 LOADK                            R6 K10 ["%s: %s type %s is not a function"]
       20 LOADK                            R7 K11 ["diff-sequences"]
       21 LOADK                            R8 K12 ["isCommon"]
       22 FASTCALL1                        TYPE R2 ; [+3]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R9 K14 [type]
       26 CALL                             R9 1 1
       27 CALL                             R5 4 -1
       28 CALL                             R4 -1 0
       29 FASTCALL1                        TYPEOF R3 ; [+3]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K3 [typeof]
       33 CALL                             R4 1 1
       34 JUMPIFEQKS                       R4 K4 ["function"] ; [+15]
       36 GETIMPORT                        R4 K6 [error]
       38 GETIMPORT                        R5 K9 [string.format]
       40 LOADK                            R6 K10 ["%s: %s type %s is not a function"]
       41 LOADK                            R7 K11 ["diff-sequences"]
       42 LOADK                            R8 K15 ["foundSubsequence"]
       43 FASTCALL1                        TYPE R3 ; [+3]
       44 MOVE                             R10 R3
       45 GETIMPORT                        R9 K14 [type]
       47 CALL                             R9 1 1
       48 CALL                             R5 4 -1
       49 CALL                             R4 -1 0
       50 GETUPVAL                         R4 1
       51 LOADN                            R5 0
       52 MOVE                             R6 R0
       53 LOADN                            R7 0
       54 MOVE                             R8 R1
       55 MOVE                             R9 R2
       56 CALL                             R4 5 1
       57 JUMPIFEQKN                       R4 K16 [0] ; [+6]
       59 MOVE                             R5 R3
       60 MOVE                             R6 R4
       61 LOADN                            R7 0
       62 LOADN                            R8 0
       63 CALL                             R5 3 0
       64 JUMPIFNOTEQ                      R0 R4 ; [+3]
       66 JUMPIFEQ                         R1 R4 ; [+55]
       68 GETUPVAL                         R5 2
       69 MOVE                             R6 R4
       70 SUBK                             R7 R0 K17 [1]
       71 MOVE                             R8 R4
       72 SUBK                             R9 R1 K17 [1]
       73 MOVE                             R10 R2
       74 CALL                             R5 5 1
       75 SUB                              R6 R0 R5
       76 SUB                              R7 R1 R5
       77 ADD                              R8 R4 R5
       78 JUMPIFEQ                         R0 R8 ; [+36]
       80 JUMPIFEQ                         R1 R8 ; [+34]
       82 NEWTABLE                         R9 0 1
       84 NEWTABLE                         R10 0 2
       86 MOVE                             R11 R3
       87 MOVE                             R12 R2
       88 SETLIST                          R10 R11 2 [1]
       90 SETLIST                          R9 R10 1 [1]
       92 NEWTABLE                         R10 0 1
       94 LOADN                            R11 0
       95 SETLIST                          R10 R11 1 [1]
       97 NEWTABLE                         R11 0 1
       99 LOADN                            R12 0
      100 SETLIST                          R11 R12 1 [1]
      102 DUPTABLE                         R12 K30 [{["aCommonFollowing"] = 0, ["aCommonPreceding"] = 0, ["aEndPreceding"] = 0, ["aStartFollowing"] = 0, ["bCommonFollowing"] = 0, ["bCommonPreceding"] = 0, ["bEndPreceding"] = 0, ["bStartFollowing"] = 0, ["nChangeFollowing"] = 0, ["nChangePreceding"] = 0, ["nCommonFollowing"] = 0, ["nCommonPreceding"] = 0}]
      103 GETUPVAL                         R13 3
      104 LOADN                            R14 0
      105 MOVE                             R15 R4
      106 MOVE                             R16 R6
      107 MOVE                             R17 R4
      108 MOVE                             R18 R7
      109 LOADB                            R19 0
      110 MOVE                             R20 R9
      111 MOVE                             R21 R10
      112 MOVE                             R22 R11
      113 MOVE                             R23 R12
      114 CALL                             R13 10 0
      115 JUMPIFEQKN                       R5 K16 [0] ; [+6]
      117 MOVE                             R9 R3
      118 MOVE                             R10 R5
      119 MOVE                             R11 R6
      120 MOVE                             R12 R7
      121 CALL                             R9 3 0
      122 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 CAPTURE                          VAL R0
        5 DUPCLOSURE                       R3 K3 [PROTO_3]
        6 CAPTURE                          VAL R1
        7 DUPCLOSURE                       R4 K4 [PROTO_4]
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 DUPCLOSURE                       R5 K5 [PROTO_5]
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 DUPCLOSURE                       R6 K6 [PROTO_6]
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R5
       17 CAPTURE                          VAL R4
       18 DUPCLOSURE                       R7 K7 [PROTO_9]
       19 CAPTURE                          VAL R6
       20 CAPTURE                          VAL R7
       21 DUPCLOSURE                       R8 K8 [PROTO_10]
       22 DUPCLOSURE                       R9 K9 [PROTO_11]
       23 DUPCLOSURE                       R10 K10 [PROTO_12]
       24 CAPTURE                          VAL R8
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R7
       28 RETURN                           R10 1
