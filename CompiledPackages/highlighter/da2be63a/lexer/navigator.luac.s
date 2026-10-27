PROTO_0:
        0 LENGTH                           R3 R0
        1 LENGTH                           R4 R1
        2 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        4 GETIMPORT                        R2 K2 [math.min]
        6 CALL                             R2 2 1
        7 LOADN                            R3 0
        8 ADDK                             R4 R3 K3 [256]
        9 JUMPIFNOTLE                      R4 R2 ; [+21]
       11 ADDK                             R6 R3 K4 [1]
       12 ADDK                             R7 R3 K3 [256]
       13 FASTCALL3                        STRING_SUB R0 R6 R7
       15 MOVE                             R5 R0
       16 GETIMPORT                        R4 K7 [string.sub]
       18 CALL                             R4 3 1
       19 ADDK                             R7 R3 K4 [1]
       20 ADDK                             R8 R3 K3 [256]
       21 FASTCALL3                        STRING_SUB R1 R7 R8
       23 MOVE                             R6 R1
       24 GETIMPORT                        R5 K7 [string.sub]
       26 CALL                             R5 3 1
       27 JUMPIFNOTEQ                      R4 R5 ; [+3]
       29 ADDK                             R3 R3 K3 [256]
       30 JUMPBACK                         ; [-23]
       31 JUMPIFNOTLT                      R3 R2 ; [+19]
       33 ADDK                             R6 R3 K4 [1]
       34 FASTCALL2                        STRING_BYTE R0 R6 ; [+4]
       36 MOVE                             R5 R0
       37 GETIMPORT                        R4 K9 [string.byte]
       39 CALL                             R4 2 1
       40 ADDK                             R7 R3 K4 [1]
       41 FASTCALL2                        STRING_BYTE R1 R7 ; [+4]
       43 MOVE                             R6 R1
       44 GETIMPORT                        R5 K9 [string.byte]
       46 CALL                             R5 2 1
       47 JUMPIFNOTEQ                      R4 R5 ; [+3]
       49 ADDK                             R3 R3 K4 [1]
       50 JUMPBACK                         ; [-20]
       51 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["source"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 3
        7 FORGPREP                         R0
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K2 ["realIndex"]
       11 ADDK                             R7 R8 K1 [1]
       12 GETUPVAL                         R8 1
       13 SETTABLEKS                       R7 R8 K2 ["realIndex"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K3 ["tokenKinds"]
       18 SETTABLE                         R3 R8 R7
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K4 ["tokenContents"]
       22 SETTABLE                         R4 R8 R7
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R8 R8 K5 ["endOffsets"]
       26 GETUPVAL                         R12 1
       27 GETTABLEKS                       R12 R12 K5 ["endOffsets"]
       29 SUBK                             R13 R7 K1 [1]
       30 GETTABLE                         R11 R12 R13
       31 ORK                              R10 R11 K6 [0]
       32 LENGTH                           R11 R4
       33 ADD                              R9 R10 R11
       34 SETTABLE                         R9 R8 R7
       35 JUMPIFEQKNIL                     R5 ; [+12]
       37 JUMPIFEQKNIL                     R6 ; [+10]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K7 ["restartDepths"]
       42 SETTABLE                         R5 R8 R7
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R8 R8 K8 ["restartWatermarks"]
       46 SETTABLE                         R6 R8 R7
       47 JUMP                             ; [+10]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K7 ["restartDepths"]
       51 LOADN                            R9 0
       52 SETTABLE                         R9 R8 R7
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R8 R8 K8 ["restartWatermarks"]
       56 LOADN                            R9 0
       57 SETTABLE                         R9 R8 R7
       58 GETIMPORT                        R8 K11 [coroutine.yield]
       60 MOVE                             R9 R3
       61 MOVE                             R10 R4
       62 CALL                             R8 2 0
       63 FORGLOOP                         R0 4 ; [-56]
       65 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [coroutine.create]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["scanThread"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["realIndex"]
        9 JUMPIFNOTLT                      R2 R0 ; [+18]
       11 GETIMPORT                        R2 K4 [coroutine.status]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 1
       15 JUMPIFEQKS                       R2 K5 ["dead"] ; [+12]
       17 GETIMPORT                        R2 K7 [coroutine.resume]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 2
       21 JUMPIF                           R2 ; [+5]
       22 GETIMPORT                        R4 K9 [error]
       24 MOVE                             R5 R3
       25 LOADN                            R6 0
       26 CALL                             R4 2 0
       27 JUMPBACK                         ; [-22]
       28 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["source"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["realIndex"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["userIndex"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["scanThread"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["tokenKinds"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["tokenContents"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["endOffsets"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["restartDepths"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K8 ["restartWatermarks"]
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["source"]
        3 GETUPVAL                         R2 0
        4 LOADN                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["realIndex"]
        7 GETUPVAL                         R2 0
        8 LOADN                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["userIndex"]
       11 GETIMPORT                        R2 K5 [table.clear]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K6 ["tokenKinds"]
       16 CALL                             R2 1 0
       17 GETIMPORT                        R2 K5 [table.clear]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K7 ["tokenContents"]
       22 CALL                             R2 1 0
       23 GETIMPORT                        R2 K5 [table.clear]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K8 ["endOffsets"]
       28 CALL                             R2 1 0
       29 GETIMPORT                        R2 K5 [table.clear]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K9 ["restartDepths"]
       34 CALL                             R2 1 0
       35 GETIMPORT                        R2 K5 [table.clear]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K10 ["restartWatermarks"]
       40 CALL                             R2 1 0
       41 GETUPVAL                         R2 0
       42 GETIMPORT                        R3 K13 [coroutine.create]
       44 LOADNIL                          R5
       45 LOADNIL                          R6
       46 NEWCLOSURE                       R4 P0
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CALL                             R3 1 1
       52 SETTABLEKS                       R3 R2 K14 ["scanThread"]
       54 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["source"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+7]
        5 GETUPVAL                         R2 0
        6 LOADN                            R3 0
        7 SETTABLEKS                       R3 R2 K1 ["userIndex"]
        9 LENGTH                           R2 R1
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["source"]
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 LOADN                            R3 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K2 ["realIndex"]
       21 LOADN                            R5 0
       22 JUMPIFNOTLE                      R3 R4 ; [+18]
       24 ADD                              R8 R3 R4
       25 DIVK                             R7 R8 K3 [2]
       26 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       27 GETIMPORT                        R6 K6 [math.floor]
       29 CALL                             R6 1 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K7 ["endOffsets"]
       33 GETTABLE                         R7 R8 R6
       34 JUMPIFNOTLE                      R7 R2 ; [+4]
       36 MOVE                             R5 R6
       37 ADDK                             R3 R6 K8 [1]
       38 JUMP                             ; [+1]
       39 SUBK                             R4 R6 K8 [1]
       40 JUMPBACK                         ; [-19]
       41 LOADN                            R6 0
       42 LOADN                            R7 0
       43 JUMPIFNOTLT                      R7 R5 ; [+13]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K9 ["restartWatermarks"]
       48 GETTABLE                         R7 R8 R5
       49 JUMPIFEQKN                       R7 K10 [0] ; [+5]
       51 JUMPIFNOTLE                      R7 R2 ; [+3]
       53 MOVE                             R6 R5
       54 JUMP                             ; [+2]
       55 SUBK                             R5 R5 K8 [1]
       56 JUMPBACK                         ; [-15]
       57 JUMPIFNOTEQKN                    R6 K10 [0] ; [+8]
       59 GETUPVAL                         R7 0
       60 MOVE                             R9 R1
       61 NAMECALL                         R7 R7 K11 ["SetSource"]
       63 CALL                             R7 2 0
       64 LOADN                            R7 0
       65 RETURN                           R7 1
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K2 ["realIndex"]
       69 ADDK                             R7 R6 K8 [1]
       70 LOADN                            R8 -1
       71 FORNPREP                         R7
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K12 ["tokenKinds"]
       75 LOADNIL                          R11
       76 SETTABLE                         R11 R10 R9
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K13 ["tokenContents"]
       80 LOADNIL                          R11
       81 SETTABLE                         R11 R10 R9
       82 GETUPVAL                         R10 0
       83 GETTABLEKS                       R10 R10 K7 ["endOffsets"]
       85 LOADNIL                          R11
       86 SETTABLE                         R11 R10 R9
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K14 ["restartDepths"]
       90 LOADNIL                          R11
       91 SETTABLE                         R11 R10 R9
       92 GETUPVAL                         R10 0
       93 GETTABLEKS                       R10 R10 K9 ["restartWatermarks"]
       95 LOADNIL                          R11
       96 SETTABLE                         R11 R10 R9
       97 FORNLOOP                         R7
       98 GETUPVAL                         R7 0
       99 SETTABLEKS                       R6 R7 K2 ["realIndex"]
      101 GETUPVAL                         R7 0
      102 LOADN                            R8 0
      103 SETTABLEKS                       R8 R7 K1 ["userIndex"]
      105 GETUPVAL                         R7 0
      106 SETTABLEKS                       R1 R7 K0 ["source"]
      108 GETUPVAL                         R7 0
      109 GETTABLEKS                       R7 R7 K13 ["tokenContents"]
      111 DUPTABLE                         R8 K19 [{"depth", "previous1", "previous2", "previous3"}]
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R10 R10 K14 ["restartDepths"]
      115 GETTABLE                         R9 R10 R6
      116 SETTABLEKS                       R9 R8 K15 ["depth"]
      118 GETTABLE                         R9 R7 R6
      119 SETTABLEKS                       R9 R8 K16 ["previous1"]
      121 SUBK                             R11 R6 K8 [1]
      122 GETTABLE                         R10 R7 R11
      123 ORK                              R9 R10 K20 [""]
      124 SETTABLEKS                       R9 R8 K17 ["previous2"]
      126 SUBK                             R11 R6 K3 [2]
      127 GETTABLE                         R10 R7 R11
      128 ORK                              R9 R10 K20 [""]
      129 SETTABLEKS                       R9 R8 K18 ["previous3"]
      131 GETUPVAL                         R9 0
      132 GETUPVAL                         R13 0
      133 GETTABLEKS                       R13 R13 K7 ["endOffsets"]
      135 GETTABLE                         R12 R13 R6
      136 ADDK                             R11 R12 K8 [1]
      137 GETIMPORT                        R12 K23 [coroutine.create]
      139 NEWCLOSURE                       R13 P0
      140 CAPTURE                          UPVAL U2
      141 CAPTURE                          UPVAL U0
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R8
      144 CALL                             R12 1 1
      145 MOVE                             R10 R12
      146 SETTABLEKS                       R10 R9 K24 ["scanThread"]
      148 GETUPVAL                         R10 0
      149 GETTABLEKS                       R10 R10 K7 ["endOffsets"]
      151 GETTABLE                         R9 R10 R6
      152 RETURN                           R9 1

PROTO_7:
        0 LOADN                            R2 1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["realIndex"]
        4 LOADN                            R4 0
        5 JUMPIFNOTLE                      R2 R3 ; [+18]
        7 ADD                              R7 R2 R3
        8 DIVK                             R6 R7 K1 [2]
        9 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       10 GETIMPORT                        R5 K4 [math.floor]
       12 CALL                             R5 1 1
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K5 ["endOffsets"]
       16 GETTABLE                         R6 R7 R5
       17 JUMPIFNOTLT                      R6 R1 ; [+4]
       19 MOVE                             R4 R5
       20 ADDK                             R2 R5 K6 [1]
       21 JUMP                             ; [+1]
       22 SUBK                             R3 R5 K6 [1]
       23 JUMPBACK                         ; [-19]
       24 GETUPVAL                         R5 0
       25 SETTABLEKS                       R4 R5 K7 ["userIndex"]
       27 SUBK                             R6 R1 K6 [1]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K5 ["endOffsets"]
       31 GETTABLE                         R8 R9 R4
       32 ORK                              R7 R8 K8 [0]
       33 SUB                              R5 R6 R7
       34 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K1 ["userIndex"]
        3 ADDK                             R1 R2 K0 [1]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["realIndex"]
        7 JUMPIFNOTLT                      R2 R1 ; [+4]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["realIndex"]
       15 JUMPIFNOTLE                      R1 R2 ; [+13]
       17 GETUPVAL                         R2 0
       18 SETTABLEKS                       R1 R2 K1 ["userIndex"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K3 ["tokenKinds"]
       23 GETTABLE                         R2 R3 R1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K4 ["tokenContents"]
       27 GETTABLE                         R3 R4 R1
       28 RETURN                           R2 2
       29 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["userIndex"]
        3 ADD                              R2 R3 R1
        4 LOADN                            R3 0
        5 JUMPIFNOTLE                      R2 R3 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["realIndex"]
       11 JUMPIFNOTLT                      R3 R2 ; [+4]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K1 ["realIndex"]
       19 JUMPIFNOTLE                      R2 R3 ; [+10]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K2 ["tokenKinds"]
       24 GETTABLE                         R3 R4 R2
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K3 ["tokenContents"]
       28 GETTABLE                         R4 R5 R2
       29 RETURN                           R3 2
       30 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K12 [{[1] = "", ["realIndex"] = 0, ["userIndex"] = 0, ["scanThread"] = , ["tokenKinds"], ["tokenContents"], ["endOffsets"], ["restartDepths"], ["restartWatermarks"]}]
        1 GETIMPORT                        R2 K15 [table.create]
        3 LOADN                            R3 50
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R1 K7 ["tokenKinds"]
        7 GETIMPORT                        R2 K15 [table.create]
        9 LOADN                            R3 50
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R2 R1 K8 ["tokenContents"]
       13 GETIMPORT                        R2 K15 [table.create]
       15 LOADN                            R3 50
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K9 ["endOffsets"]
       19 GETIMPORT                        R2 K15 [table.create]
       21 LOADN                            R3 50
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K10 ["restartDepths"]
       25 GETIMPORT                        R2 K15 [table.create]
       27 LOADN                            R3 50
       28 CALL                             R2 1 1
       29 SETTABLEKS                       R2 R1 K11 ["restartWatermarks"]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R1
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          VAL R1
       36 DUPCLOSURE                       R4 K16 [PROTO_4]
       37 SETTABLEKS                       R4 R1 K17 ["Destroy"]
       39 NEWCLOSURE                       R4 P3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R4 R1 K18 ["SetSource"]
       44 NEWCLOSURE                       R4 P4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R4 R1 K19 ["HotswapSource"]
       50 NEWCLOSURE                       R4 P5
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R4 R1 K20 ["SeekToByte"]
       54 NEWCLOSURE                       R4 P6
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R4 R1 K21 ["Next"]
       59 NEWCLOSURE                       R4 P7
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 SETTABLEKS                       R4 R1 K22 ["Peek"]
       64 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_10]
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R2 R0 K2 ["new"]
        8 RETURN                           R0 1
