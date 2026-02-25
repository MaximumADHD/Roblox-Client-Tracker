PROTO_0:
        0 LENGTH                           R3 R0
        1 ADDK                             R2 R3 K0 [1]
        2 SETTABLE                         R1 R0 R2
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEN                        R1 R0 1
        1 RETURN                           R1 1

PROTO_2:
        0 GETTABLEN                        R1 R0 1
        1 JUMPIFEQKNIL                     R1 ; [+15]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 LENGTH                           R3 R0
        6 LOADNIL                          R4
        7 SETTABLE                         R4 R0 R3
        8 JUMPIFEQ                         R2 R1 ; [+7]
       10 SETTABLEN                        R2 R0 1
       11 GETUPVAL                         R3 0
       12 MOVE                             R4 R0
       13 MOVE                             R5 R2
       14 LOADN                            R6 1
       15 CALL                             R3 3 0
       16 RETURN                           R1 1
       17 LOADNIL                          R2
       18 RETURN                           R2 1

PROTO_3:
        0 DIVK                             R4 R2 K0 [2]
        1 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        2 GETIMPORT                        R3 K3 [math.floor]
        4 CALL                             R3 1 1
        5 GETTABLE                         R4 R0 R3
        6 JUMPIFEQKNIL                     R4 ; [+12]
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R4
       10 MOVE                             R7 R1
       11 CALL                             R5 2 1
       12 LOADN                            R6 0
       13 JUMPIFNOTLT                      R6 R5 ; [+5]
       15 SETTABLE                         R1 R0 R3
       16 SETTABLE                         R4 R0 R2
       17 MOVE                             R2 R3
       18 JUMP                             ; [+1]
       19 RETURN                           R0 0
       20 JUMPBACK                         ; [-21]
       21 RETURN                           R0 0

PROTO_4:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTLT                      R2 R3 ; [+46]
        3 MULK                             R4 R2 K0 [2]
        4 GETTABLE                         R5 R0 R4
        5 ADDK                             R6 R4 K1 [1]
        6 GETTABLE                         R7 R0 R6
        7 JUMPIFEQKNIL                     R5 ; [+25]
        9 GETUPVAL                         R8 0
       10 MOVE                             R9 R5
       11 MOVE                             R10 R1
       12 CALL                             R8 2 1
       13 LOADN                            R9 0
       14 JUMPIFNOTLT                      R8 R9 ; [+18]
       16 JUMPIFEQKNIL                     R7 ; [+12]
       18 GETUPVAL                         R8 0
       19 MOVE                             R9 R7
       20 MOVE                             R10 R5
       21 CALL                             R8 2 1
       22 LOADN                            R9 0
       23 JUMPIFNOTLT                      R8 R9 ; [+5]
       25 SETTABLE                         R7 R0 R2
       26 SETTABLE                         R1 R0 R6
       27 MOVE                             R2 R6
       28 JUMP                             ; [+18]
       29 SETTABLE                         R5 R0 R2
       30 SETTABLE                         R1 R0 R4
       31 MOVE                             R2 R4
       32 JUMP                             ; [+14]
       33 JUMPIFEQKNIL                     R7 ; [+12]
       35 GETUPVAL                         R8 0
       36 MOVE                             R9 R7
       37 MOVE                             R10 R1
       38 CALL                             R8 2 1
       39 LOADN                            R9 0
       40 JUMPIFNOTLT                      R8 R9 ; [+5]
       42 SETTABLE                         R7 R0 R2
       43 SETTABLE                         R1 R0 R6
       44 MOVE                             R2 R6
       45 JUMP                             ; [+1]
       46 RETURN                           R0 0
       47 JUMPBACK                         ; [-47]
       48 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["sortIndex"]
        2 GETTABLEKS                       R4 R1 K0 ["sortIndex"]
        4 SUB                              R2 R3 R4
        5 JUMPIFNOTEQKN                    R2 K1 [0] ; [+7]
        7 GETTABLEKS                       R4 R0 K2 ["id"]
        9 GETTABLEKS                       R5 R1 K2 ["id"]
       11 SUB                              R3 R4 R5
       12 RETURN                           R3 1
       13 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEN                        R1 R2 1
        2 JUMPIFEQKNIL                     R1 ; [+76]
        4 GETTABLEKS                       R2 R1 K0 ["callback"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+21]
        8 GETUPVAL                         R2 0
        9 GETTABLEN                        R3 R2 1
       10 JUMPIFEQKNIL                     R3 ; [+65]
       12 LENGTH                           R5 R2
       13 GETTABLE                         R4 R2 R5
       14 LENGTH                           R5 R2
       15 LOADNIL                          R6
       16 SETTABLE                         R6 R2 R5
       17 JUMPIFEQ                         R4 R3 ; [+58]
       19 SETTABLEN                        R4 R2 1
       20 GETUPVAL                         R5 1
       21 MOVE                             R6 R2
       22 MOVE                             R7 R4
       23 LOADN                            R8 1
       24 CALL                             R5 3 0
       25 JUMP                             ; [+50]
       26 JUMP                             ; [+49]
       27 JUMP                             ; [+48]
       28 GETTABLEKS                       R2 R1 K1 ["startTime"]
       30 JUMPIFNOTLE                      R2 R0 ; [+44]
       32 GETUPVAL                         R2 0
       33 GETTABLEN                        R3 R2 1
       34 JUMPIFEQKNIL                     R3 ; [+16]
       36 LENGTH                           R5 R2
       37 GETTABLE                         R4 R2 R5
       38 LENGTH                           R5 R2
       39 LOADNIL                          R6
       40 SETTABLE                         R6 R2 R5
       41 JUMPIFEQ                         R4 R3 ; [+9]
       43 SETTABLEN                        R4 R2 1
       44 GETUPVAL                         R5 1
       45 MOVE                             R6 R2
       46 MOVE                             R7 R4
       47 LOADN                            R8 1
       48 CALL                             R5 3 0
       49 JUMP                             ; [+1]
       50 JUMP                             ; [0]
       51 GETTABLEKS                       R2 R1 K2 ["expirationTime"]
       53 SETTABLEKS                       R2 R1 K3 ["sortIndex"]
       55 GETUPVAL                         R2 2
       56 MOVE                             R3 R1
       57 LENGTH                           R5 R2
       58 ADDK                             R4 R5 K4 [1]
       59 SETTABLE                         R3 R2 R4
       60 GETUPVAL                         R5 3
       61 MOVE                             R6 R2
       62 MOVE                             R7 R3
       63 MOVE                             R8 R4
       64 CALL                             R5 3 0
       65 GETUPVAL                         R2 4
       66 JUMPIFNOT                        R2 ; [+9]
       67 GETUPVAL                         R2 5
       68 MOVE                             R3 R1
       69 MOVE                             R4 R0
       70 CALL                             R2 2 0
       71 LOADB                            R2 1
       72 SETTABLEKS                       R2 R1 K5 ["isQueued"]
       74 JUMP                             ; [+1]
       75 RETURN                           R0 0
       76 GETUPVAL                         R2 0
       77 GETTABLEN                        R1 R2 1
       78 JUMPBACK                         ; [-77]
       79 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 JUMPIF                           R1 ; [+20]
        7 GETUPVAL                         R2 3
        8 GETTABLEN                        R1 R2 1
        9 JUMPIFEQKNIL                     R1 ; [+7]
       11 LOADB                            R1 1
       12 SETUPVAL                         R1 2
       13 GETUPVAL                         R1 4
       14 GETUPVAL                         R2 5
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 6
       18 GETTABLEN                        R1 R2 1
       19 JUMPIFEQKNIL                     R1 ; [+7]
       21 GETUPVAL                         R2 7
       22 GETUPVAL                         R3 8
       23 GETTABLEKS                       R5 R1 K0 ["startTime"]
       25 SUB                              R4 R5 R0
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+3]
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 LOADB                            R2 0
        6 SETUPVAL                         R2 2
        7 GETUPVAL                         R2 3
        8 JUMPIFNOT                        R2 ; [+4]
        9 LOADB                            R2 0
       10 SETUPVAL                         R2 3
       11 GETUPVAL                         R2 4
       12 CALL                             R2 0 0
       13 LOADB                            R2 1
       14 SETUPVAL                         R2 5
       15 GETUPVAL                         R2 6
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 GETUPVAL                         R6 7
       19 GETTABLEKS                       R5 R6 K0 ["__YOLO__"]
       21 JUMPIF                           R5 ; [+33]
       22 GETUPVAL                         R5 0
       23 JUMPIFNOT                        R5 ; [+24]
       24 GETIMPORT                        R5 K2 [xpcall]
       26 GETUPVAL                         R6 8
       27 GETUPVAL                         R7 9
       28 MOVE                             R8 R0
       29 MOVE                             R9 R1
       30 CALL                             R5 4 2
       31 MOVE                             R3 R5
       32 MOVE                             R4 R6
       33 JUMPIF                           R3 ; [+27]
       34 GETUPVAL                         R5 10
       35 JUMPIFEQKNIL                     R5 ; [+25]
       37 GETUPVAL                         R5 11
       38 CALL                             R5 0 1
       39 GETUPVAL                         R6 12
       40 GETUPVAL                         R7 10
       41 MOVE                             R8 R5
       42 CALL                             R6 2 0
       43 GETUPVAL                         R6 10
       44 LOADB                            R7 0
       45 SETTABLEKS                       R7 R6 K3 ["isQueued"]
       47 JUMP                             ; [+13]
       48 LOADB                            R3 1
       49 GETUPVAL                         R5 8
       50 MOVE                             R6 R0
       51 MOVE                             R7 R1
       52 CALL                             R5 2 1
       53 MOVE                             R4 R5
       54 JUMP                             ; [+6]
       55 LOADB                            R3 1
       56 GETUPVAL                         R5 8
       57 MOVE                             R6 R0
       58 MOVE                             R7 R1
       59 CALL                             R5 2 1
       60 MOVE                             R4 R5
       61 LOADNIL                          R5
       62 SETUPVAL                         R5 10
       63 SETUPVAL                         R2 6
       64 LOADB                            R5 0
       65 SETUPVAL                         R5 5
       66 GETUPVAL                         R5 0
       67 JUMPIFNOT                        R5 ; [+5]
       68 GETUPVAL                         R5 11
       69 CALL                             R5 0 1
       70 GETUPVAL                         R6 13
       71 MOVE                             R7 R5
       72 CALL                             R6 1 0
       73 JUMPIF                           R3 ; [+4]
       74 GETIMPORT                        R5 K5 [error]
       76 MOVE                             R6 R4
       77 CALL                             R5 1 0
       78 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["catchYieldingInDEV"]
        7 MOVE                             R3 R1
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R3
       10 CALL                             R4 1 0
       11 GETUPVAL                         R5 4
       12 GETTABLEN                        R4 R5 1
       13 SETUPVAL                         R4 3
       14 GETUPVAL                         R4 3
       15 JUMPIFEQKNIL                     R4 ; [+134]
       17 GETUPVAL                         R4 5
       18 JUMPIFNOT                        R4 ; [+2]
       19 GETUPVAL                         R4 6
       20 JUMPIF                           R4 ; [+129]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K2 ["expirationTime"]
       24 JUMPIFNOTLT                      R3 R4 ; [+5]
       26 JUMPIFNOT                        R0 ; [+123]
       27 GETUPVAL                         R4 7
       28 CALL                             R4 0 1
       29 JUMPIF                           R4 ; [+120]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R4 R5 K3 ["callback"]
       33 FASTCALL1                        TYPEOF R4 ; [+3]
       34 MOVE                             R6 R4
       35 GETIMPORT                        R5 K5 [typeof]
       37 CALL                             R5 1 1
       38 JUMPIFNOTEQKS                    R5 K6 ["function"] ; [+88]
       40 GETUPVAL                         R5 3
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R5 K3 ["callback"]
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R5 R6 K7 ["priorityLevel"]
       47 SETUPVAL                         R5 8
       48 GETUPVAL                         R7 3
       49 GETTABLEKS                       R6 R7 K2 ["expirationTime"]
       51 JUMPIFLE                         R6 R3 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 GETUPVAL                         R6 9
       56 GETUPVAL                         R7 3
       57 MOVE                             R8 R3
       58 CALL                             R6 2 0
       59 LOADNIL                          R6
       60 JUMPIFNOT                        R2 ; [+6]
       61 GETUPVAL                         R7 10
       62 MOVE                             R8 R4
       63 MOVE                             R9 R5
       64 CALL                             R7 2 1
       65 MOVE                             R6 R7
       66 JUMP                             ; [+4]
       67 MOVE                             R7 R4
       68 MOVE                             R8 R5
       69 CALL                             R7 1 1
       70 MOVE                             R6 R7
       71 GETUPVAL                         R7 11
       72 CALL                             R7 0 1
       73 MOVE                             R3 R7
       74 FASTCALL1                        TYPEOF R6 ; [+3]
       75 MOVE                             R8 R6
       76 GETIMPORT                        R7 K5 [typeof]
       78 CALL                             R7 1 1
       79 JUMPIFNOTEQKS                    R7 K6 ["function"] ; [+9]
       81 GETUPVAL                         R7 3
       82 SETTABLEKS                       R6 R7 K3 ["callback"]
       84 GETUPVAL                         R7 12
       85 GETUPVAL                         R8 3
       86 MOVE                             R9 R3
       87 CALL                             R7 2 0
       88 JUMP                             ; [+34]
       89 GETUPVAL                         R7 13
       90 JUMPIFNOT                        R7 ; [+8]
       91 GETUPVAL                         R7 14
       92 GETUPVAL                         R8 3
       93 MOVE                             R9 R3
       94 CALL                             R7 2 0
       95 GETUPVAL                         R7 3
       96 LOADB                            R8 0
       97 SETTABLEKS                       R8 R7 K8 ["isQueued"]
       99 GETUPVAL                         R7 3
      100 GETUPVAL                         R9 4
      101 GETTABLEN                        R8 R9 1
      102 JUMPIFNOTEQ                      R7 R8 ; [+20]
      104 GETUPVAL                         R7 4
      105 GETTABLEN                        R8 R7 1
      106 JUMPIFEQKNIL                     R8 ; [+16]
      108 LENGTH                           R10 R7
      109 GETTABLE                         R9 R7 R10
      110 LENGTH                           R10 R7
      111 LOADNIL                          R11
      112 SETTABLE                         R11 R7 R10
      113 JUMPIFEQ                         R9 R8 ; [+9]
      115 SETTABLEN                        R9 R7 1
      116 GETUPVAL                         R10 15
      117 MOVE                             R11 R7
      118 MOVE                             R12 R9
      119 LOADN                            R13 1
      120 CALL                             R10 3 0
      121 JUMP                             ; [+1]
      122 JUMP                             ; [0]
      123 GETUPVAL                         R7 2
      124 MOVE                             R8 R3
      125 CALL                             R7 1 0
      126 JUMP                             ; [+19]
      127 GETUPVAL                         R5 4
      128 GETTABLEN                        R6 R5 1
      129 JUMPIFEQKNIL                     R6 ; [+16]
      131 LENGTH                           R8 R5
      132 GETTABLE                         R7 R5 R8
      133 LENGTH                           R8 R5
      134 LOADNIL                          R9
      135 SETTABLE                         R9 R5 R8
      136 JUMPIFEQ                         R7 R6 ; [+9]
      138 SETTABLEN                        R7 R5 1
      139 GETUPVAL                         R8 15
      140 MOVE                             R9 R5
      141 MOVE                             R10 R7
      142 LOADN                            R11 1
      143 CALL                             R8 3 0
      144 JUMP                             ; [+1]
      145 JUMP                             ; [0]
      146 GETUPVAL                         R6 4
      147 GETTABLEN                        R5 R6 1
      148 SETUPVAL                         R5 3
      149 JUMPBACK                         ; [-136]
      150 GETUPVAL                         R4 3
      151 JUMPIFEQKNIL                     R4 ; [+3]
      153 LOADB                            R4 1
      154 RETURN                           R4 1
      155 GETUPVAL                         R5 16
      156 GETTABLEN                        R4 R5 1
      157 JUMPIFEQKNIL                     R4 ; [+7]
      159 GETUPVAL                         R5 17
      160 GETUPVAL                         R6 18
      161 GETTABLEKS                       R8 R4 K9 ["startTime"]
      163 SUB                              R7 R8 R3
      164 CALL                             R5 2 0
      165 LOADB                            R5 0
      166 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+15]
        3 GETUPVAL                         R2 1
        4 JUMPIFEQ                         R0 R2 ; [+12]
        6 GETUPVAL                         R2 2
        7 JUMPIFEQ                         R0 R2 ; [+9]
        9 GETUPVAL                         R2 3
       10 JUMPIFEQ                         R0 R2 ; [+6]
       12 GETUPVAL                         R2 4
       13 JUMPIFNOTEQ                      R0 R2 ; [+2]
       15 JUMP                             ; [+1]
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R2 5
       18 SETUPVAL                         R0 5
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 GETUPVAL                         R6 6
       22 GETTABLEKS                       R5 R6 K0 ["__YOLO__"]
       24 JUMPIF                           R5 ; [+8]
       25 GETIMPORT                        R5 K2 [xpcall]
       27 MOVE                             R6 R1
       28 GETUPVAL                         R7 7
       29 CALL                             R5 2 2
       30 MOVE                             R3 R5
       31 MOVE                             R4 R6
       32 JUMP                             ; [+4]
       33 LOADB                            R3 1
       34 MOVE                             R5 R1
       35 CALL                             R5 0 1
       36 MOVE                             R4 R5
       37 SETUPVAL                         R2 5
       38 JUMPIF                           R3 ; [+4]
       39 GETIMPORT                        R5 K4 [error]
       41 MOVE                             R6 R4
       42 CALL                             R5 1 0
       43 RETURN                           R4 1

PROTO_11:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 JUMPIFEQ                         R2 R3 ; [+9]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 JUMPIFEQ                         R2 R3 ; [+5]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 3
       11 JUMPIFNOTEQ                      R2 R3 ; [+3]
       13 GETUPVAL                         R1 3
       14 JUMP                             ; [+1]
       15 GETUPVAL                         R1 0
       16 GETUPVAL                         R2 0
       17 SETUPVAL                         R1 0
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R5 R6 K0 ["__YOLO__"]
       23 JUMPIF                           R5 ; [+8]
       24 GETIMPORT                        R5 K2 [xpcall]
       26 MOVE                             R6 R0
       27 GETUPVAL                         R7 5
       28 CALL                             R5 2 2
       29 MOVE                             R3 R5
       30 MOVE                             R4 R6
       31 JUMP                             ; [+4]
       32 LOADB                            R3 1
       33 MOVE                             R5 R0
       34 CALL                             R5 0 1
       35 MOVE                             R4 R5
       36 SETUPVAL                         R2 0
       37 JUMPIF                           R3 ; [+4]
       38 GETIMPORT                        R5 K4 [error]
       40 MOVE                             R6 R4
       41 CALL                             R5 1 0
       42 RETURN                           R4 1

PROTO_12:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 SETUPVAL                         R1 0
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K0 ["__YOLO__"]
        9 JUMPIF                           R3 ; [+9]
       10 GETIMPORT                        R3 K2 [xpcall]
       12 GETUPVAL                         R4 3
       13 GETUPVAL                         R5 4
       14 GETVARARGS                       R6 -1
       15 CALL                             R3 -1 2
       16 MOVE                             R1 R3
       17 MOVE                             R2 R4
       18 JUMP                             ; [+5]
       19 LOADB                            R1 1
       20 GETUPVAL                         R3 3
       21 GETVARARGS                       R4 -1
       22 CALL                             R3 -1 1
       23 MOVE                             R2 R3
       24 SETUPVAL                         R0 0
       25 JUMPIF                           R1 ; [+4]
       26 GETIMPORT                        R3 K4 [error]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 0
       30 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 LOADNIL                          R4
        3 FASTCALL1                        TYPEOF R2 ; [+3]
        4 MOVE                             R6 R2
        5 GETIMPORT                        R5 K1 [typeof]
        7 CALL                             R5 1 1
        8 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+17]
       10 GETTABLEKS                       R5 R2 K3 ["delay"]
       12 FASTCALL1                        TYPEOF R5 ; [+3]
       13 MOVE                             R7 R5
       14 GETIMPORT                        R6 K1 [typeof]
       16 CALL                             R6 1 1
       17 JUMPIFNOTEQKS                    R6 K4 ["number"] ; [+6]
       19 LOADN                            R6 0
       20 JUMPIFNOTLT                      R6 R5 ; [+3]
       22 ADD                              R4 R3 R5
       23 JUMP                             ; [+3]
       24 MOVE                             R4 R3
       25 JUMP                             ; [+1]
       26 MOVE                             R4 R3
       27 LOADNIL                          R5
       28 GETUPVAL                         R6 1
       29 JUMPIFNOTEQ                      R0 R6 ; [+3]
       31 LOADN                            R5 255
       32 JUMP                             ; [+16]
       33 GETUPVAL                         R6 2
       34 JUMPIFNOTEQ                      R0 R6 ; [+3]
       36 LOADN                            R5 250
       37 JUMP                             ; [+11]
       38 GETUPVAL                         R6 3
       39 JUMPIFNOTEQ                      R0 R6 ; [+3]
       41 LOADK                            R5 K5 [1073741823]
       42 JUMP                             ; [+6]
       43 GETUPVAL                         R6 4
       44 JUMPIFNOTEQ                      R0 R6 ; [+3]
       46 LOADN                            R5 16
       47 JUMP                             ; [+1]
       48 LOADN                            R5 136
       49 ADD                              R6 R4 R5
       50 DUPTABLE                         R7 K12 [{"id", "callback", "priorityLevel", "startTime", "expirationTime", "sortIndex"}]
       51 GETUPVAL                         R8 5
       52 SETTABLEKS                       R8 R7 K6 ["id"]
       54 SETTABLEKS                       R1 R7 K7 ["callback"]
       56 SETTABLEKS                       R0 R7 K8 ["priorityLevel"]
       58 SETTABLEKS                       R4 R7 K9 ["startTime"]
       60 SETTABLEKS                       R6 R7 K10 ["expirationTime"]
       62 LOADN                            R8 255
       63 SETTABLEKS                       R8 R7 K11 ["sortIndex"]
       65 GETUPVAL                         R8 5
       66 ADDK                             R8 R8 K13 [1]
       67 SETUPVAL                         R8 5
       68 GETUPVAL                         R8 6
       69 JUMPIFNOT                        R8 ; [+3]
       70 LOADB                            R8 0
       71 SETTABLEKS                       R8 R7 K14 ["isQueued"]
       73 JUMPIFNOTLT                      R3 R4 ; [+32]
       75 SETTABLEKS                       R4 R7 K11 ["sortIndex"]
       77 GETUPVAL                         R8 7
       78 LENGTH                           R10 R8
       79 ADDK                             R9 R10 K13 [1]
       80 SETTABLE                         R7 R8 R9
       81 GETUPVAL                         R10 8
       82 MOVE                             R11 R8
       83 MOVE                             R12 R7
       84 MOVE                             R13 R9
       85 CALL                             R10 3 0
       86 GETUPVAL                         R9 9
       87 LENGTH                           R8 R9
       88 JUMPIFNOTEQKN                    R8 K15 [0] ; [+46]
       90 GETUPVAL                         R9 7
       91 GETTABLEN                        R8 R9 1
       92 JUMPIFNOTEQ                      R7 R8 ; [+42]
       94 GETUPVAL                         R8 10
       95 JUMPIFNOT                        R8 ; [+3]
       96 GETUPVAL                         R8 11
       97 CALL                             R8 0 0
       98 JUMP                             ; [+2]
       99 LOADB                            R8 1
      100 SETUPVAL                         R8 10
      101 GETUPVAL                         R8 12
      102 GETUPVAL                         R9 13
      103 SUB                              R10 R4 R3
      104 CALL                             R8 2 0
      105 RETURN                           R7 1
      106 SETTABLEKS                       R6 R7 K11 ["sortIndex"]
      108 GETUPVAL                         R8 9
      109 LENGTH                           R10 R8
      110 ADDK                             R9 R10 K13 [1]
      111 SETTABLE                         R7 R8 R9
      112 GETUPVAL                         R10 8
      113 MOVE                             R11 R8
      114 MOVE                             R12 R7
      115 MOVE                             R13 R9
      116 CALL                             R10 3 0
      117 GETUPVAL                         R8 6
      118 JUMPIFNOT                        R8 ; [+7]
      119 GETUPVAL                         R8 14
      120 MOVE                             R9 R7
      121 MOVE                             R10 R3
      122 CALL                             R8 2 0
      123 LOADB                            R8 1
      124 SETTABLEKS                       R8 R7 K14 ["isQueued"]
      126 GETUPVAL                         R8 15
      127 JUMPIF                           R8 ; [+7]
      128 GETUPVAL                         R8 16
      129 JUMPIF                           R8 ; [+5]
      130 LOADB                            R8 1
      131 SETUPVAL                         R8 15
      132 GETUPVAL                         R8 17
      133 GETUPVAL                         R9 18
      134 CALL                             R8 1 0
      135 RETURN                           R7 1

PROTO_15:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_16:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+7]
        4 GETUPVAL                         R0 2
        5 JUMPIF                           R0 ; [+5]
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 1
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R1 4
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEN                        R0 R1 1
        2 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETTABLEKS                       R1 R0 K0 ["isQueued"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R0 K0 ["isQueued"]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K1 ["callback"]
       17 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 DUPTABLE                         R0 K2 [{"startLoggingProfilingEvents", "stopLoggingProfilingEvents"}]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K0 ["startLoggingProfilingEvents"]
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R1 R0 K1 ["stopLoggingProfilingEvents"]
        9 RETURN                           R0 1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

PROTO_21:
        0 GETIMPORT                        R3 K1 [script]
        2 GETTABLEKS                       R2 R3 K2 ["Parent"]
        4 GETTABLEKS                       R1 R2 K2 ["Parent"]
        6 GETIMPORT                        R2 K4 [require]
        8 GETTABLEKS                       R3 R1 K5 ["ReactGlobals"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K4 [require]
       13 GETTABLEKS                       R4 R1 K6 ["Shared"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R3 K7 ["describeError"]
       18 GETTABLEKS                       R5 R3 K8 ["ReactFeatureFlags"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETIMPORT                        R9 K1 [script]
       24 GETTABLEKS                       R8 R9 K2 ["Parent"]
       26 GETTABLEKS                       R7 R8 K9 ["SchedulerFeatureFlags"]
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R6 K10 ["enableSchedulerDebugging"]
       31 GETTABLEKS                       R8 R6 K11 ["enableProfiling"]
       33 MOVE                             R9 R0
       34 JUMPIF                           R9 ; [+9]
       35 GETIMPORT                        R9 K4 [require]
       37 GETIMPORT                        R12 K1 [script]
       39 GETTABLEKS                       R11 R12 K2 ["Parent"]
       41 GETTABLEKS                       R10 R11 K12 ["SchedulerHostConfig"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R10 R9 K13 ["requestHostCallback"]
       46 GETTABLEKS                       R11 R9 K14 ["requestHostTimeout"]
       48 GETTABLEKS                       R12 R9 K15 ["cancelHostTimeout"]
       50 GETTABLEKS                       R13 R9 K16 ["shouldYieldToHost"]
       52 GETTABLEKS                       R14 R9 K17 ["getCurrentTime"]
       54 GETTABLEKS                       R15 R9 K18 ["forceFrameRate"]
       56 GETTABLEKS                       R16 R9 K19 ["requestPaint"]
       58 GETTABLEKS                       R17 R9 K20 ["setSchedulerFlags"]
       60 GETTABLEKS                       R18 R9 K21 ["getSchedulerFlags"]
       62 GETIMPORT                        R19 K4 [require]
       64 GETIMPORT                        R22 K1 [script]
       66 GETTABLEKS                       R21 R22 K2 ["Parent"]
       68 GETTABLEKS                       R20 R21 K22 ["NoYield"]
       70 CALL                             R19 1 1
       71 LOADNIL                          R20
       72 LOADNIL                          R21
       73 LOADNIL                          R22
       74 NEWCLOSURE                       R23 P0
       75 CAPTURE                          REF R21
       76 DUPCLOSURE                       R24 K23 [PROTO_1]
       77 NEWCLOSURE                       R25 P2
       78 CAPTURE                          REF R22
       79 NEWCLOSURE                       R21 P3
       80 CAPTURE                          REF R20
       81 NEWCLOSURE                       R22 P4
       82 CAPTURE                          REF R20
       83 DUPCLOSURE                       R20 K24 [PROTO_5]
       84 GETIMPORT                        R26 K4 [require]
       86 GETIMPORT                        R29 K1 [script]
       88 GETTABLEKS                       R28 R29 K2 ["Parent"]
       90 GETTABLEKS                       R27 R28 K25 ["SchedulerPriorities"]
       92 CALL                             R26 1 1
       93 GETTABLEKS                       R27 R26 K26 ["ImmediatePriority"]
       95 GETTABLEKS                       R28 R26 K27 ["UserBlockingPriority"]
       97 GETTABLEKS                       R29 R26 K28 ["NormalPriority"]
       99 GETTABLEKS                       R30 R26 K29 ["LowPriority"]
      101 GETTABLEKS                       R31 R26 K30 ["IdlePriority"]
      103 GETIMPORT                        R32 K4 [require]
      105 GETIMPORT                        R35 K1 [script]
      107 GETTABLEKS                       R34 R35 K2 ["Parent"]
      109 GETTABLEKS                       R33 R34 K31 ["SchedulerProfiling"]
      111 CALL                             R32 1 1
      112 GETTABLEKS                       R33 R32 K32 ["markTaskRun"]
      114 GETTABLEKS                       R34 R32 K33 ["markTaskYield"]
      116 GETTABLEKS                       R35 R32 K34 ["markTaskCompleted"]
      118 GETTABLEKS                       R36 R32 K35 ["markTaskCanceled"]
      120 GETTABLEKS                       R37 R32 K36 ["markTaskErrored"]
      122 GETTABLEKS                       R38 R32 K37 ["markSchedulerSuspended"]
      124 GETTABLEKS                       R39 R32 K38 ["markSchedulerUnsuspended"]
      126 GETTABLEKS                       R40 R32 K39 ["markTaskStart"]
      128 GETTABLEKS                       R41 R32 K40 ["stopLoggingProfilingEvents"]
      130 GETTABLEKS                       R42 R32 K41 ["startLoggingProfilingEvents"]
      132 NEWTABLE                         R43 0 0
      134 NEWTABLE                         R44 0 0
      136 LOADN                            R45 1
      137 LOADB                            R46 0
      138 LOADNIL                          R47
      139 MOVE                             R48 R29
      140 LOADB                            R49 0
      141 LOADB                            R50 0
      142 LOADB                            R51 0
      143 LOADNIL                          R52
      144 LOADNIL                          R53
      145 LOADNIL                          R54
      146 NEWCLOSURE                       R55 P6
      147 CAPTURE                          VAL R44
      148 CAPTURE                          REF R22
      149 CAPTURE                          VAL R43
      150 CAPTURE                          REF R21
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R40
      153 NEWCLOSURE                       R52 P7
      154 CAPTURE                          REF R51
      155 CAPTURE                          VAL R55
      156 CAPTURE                          REF R50
      157 CAPTURE                          VAL R43
      158 CAPTURE                          VAL R10
      159 CAPTURE                          REF R53
      160 CAPTURE                          VAL R44
      161 CAPTURE                          VAL R11
      162 CAPTURE                          REF R52
      163 NEWCLOSURE                       R53 P8
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R39
      166 CAPTURE                          REF R50
      167 CAPTURE                          REF R51
      168 CAPTURE                          VAL R12
      169 CAPTURE                          REF R49
      170 CAPTURE                          REF R48
      171 CAPTURE                          VAL R2
      172 CAPTURE                          REF R54
      173 CAPTURE                          VAL R4
      174 CAPTURE                          REF R47
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R37
      177 CAPTURE                          VAL R38
      178 NEWCLOSURE                       R54 P9
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R55
      182 CAPTURE                          REF R47
      183 CAPTURE                          VAL R43
      184 CAPTURE                          VAL R7
      185 CAPTURE                          REF R46
      186 CAPTURE                          VAL R13
      187 CAPTURE                          REF R48
      188 CAPTURE                          VAL R33
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R14
      191 CAPTURE                          VAL R34
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R35
      194 CAPTURE                          REF R22
      195 CAPTURE                          VAL R44
      196 CAPTURE                          VAL R11
      197 CAPTURE                          REF R52
      198 NEWCLOSURE                       R56 P10
      199 CAPTURE                          VAL R27
      200 CAPTURE                          VAL R28
      201 CAPTURE                          VAL R29
      202 CAPTURE                          VAL R30
      203 CAPTURE                          VAL R31
      204 CAPTURE                          REF R48
      205 CAPTURE                          VAL R2
      206 CAPTURE                          VAL R4
      207 NEWCLOSURE                       R57 P11
      208 CAPTURE                          REF R48
      209 CAPTURE                          VAL R27
      210 CAPTURE                          VAL R28
      211 CAPTURE                          VAL R29
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R4
      214 NEWCLOSURE                       R58 P12
      215 CAPTURE                          REF R48
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R4
      218 NEWCLOSURE                       R59 P13
      219 CAPTURE                          VAL R14
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R28
      222 CAPTURE                          VAL R31
      223 CAPTURE                          VAL R30
      224 CAPTURE                          REF R45
      225 CAPTURE                          VAL R8
      226 CAPTURE                          VAL R44
      227 CAPTURE                          REF R21
      228 CAPTURE                          VAL R43
      229 CAPTURE                          REF R51
      230 CAPTURE                          VAL R12
      231 CAPTURE                          VAL R11
      232 CAPTURE                          REF R52
      233 CAPTURE                          VAL R40
      234 CAPTURE                          REF R50
      235 CAPTURE                          REF R49
      236 CAPTURE                          VAL R10
      237 CAPTURE                          REF R53
      238 NEWCLOSURE                       R60 P14
      239 CAPTURE                          REF R46
      240 NEWCLOSURE                       R61 P15
      241 CAPTURE                          REF R46
      242 CAPTURE                          REF R50
      243 CAPTURE                          REF R49
      244 CAPTURE                          VAL R10
      245 CAPTURE                          REF R53
      246 NEWCLOSURE                       R62 P16
      247 CAPTURE                          VAL R43
      248 NEWCLOSURE                       R63 P17
      249 CAPTURE                          VAL R8
      250 CAPTURE                          VAL R14
      251 CAPTURE                          VAL R36
      252 NEWCLOSURE                       R64 P18
      253 CAPTURE                          REF R48
      254 DUPTABLE                         R65 K63 [{"unstable_ImmediatePriority", "unstable_UserBlockingPriority", "unstable_NormalPriority", "unstable_IdlePriority", "unstable_LowPriority", "unstable_runWithPriority", "unstable_next", "unstable_scheduleCallback", "unstable_cancelCallback", "unstable_wrapCallback", "unstable_getCurrentPriorityLevel", "unstable_shouldYield", "unstable_requestPaint", "unstable_continueExecution", "unstable_pauseExecution", "unstable_getFirstCallbackNode", "unstable_now", "unstable_forceFrameRate", "unstable_setSchedulerFlags", "unstable_getSchedulerFlags", "unstable_Profiling"}]
      255 SETTABLEKS                       R27 R65 K42 ["unstable_ImmediatePriority"]
      257 SETTABLEKS                       R28 R65 K43 ["unstable_UserBlockingPriority"]
      259 SETTABLEKS                       R29 R65 K44 ["unstable_NormalPriority"]
      261 SETTABLEKS                       R31 R65 K45 ["unstable_IdlePriority"]
      263 SETTABLEKS                       R30 R65 K46 ["unstable_LowPriority"]
      265 SETTABLEKS                       R56 R65 K47 ["unstable_runWithPriority"]
      267 SETTABLEKS                       R57 R65 K48 ["unstable_next"]
      269 SETTABLEKS                       R59 R65 K49 ["unstable_scheduleCallback"]
      271 SETTABLEKS                       R63 R65 K50 ["unstable_cancelCallback"]
      273 SETTABLEKS                       R58 R65 K51 ["unstable_wrapCallback"]
      275 SETTABLEKS                       R64 R65 K52 ["unstable_getCurrentPriorityLevel"]
      277 SETTABLEKS                       R13 R65 K53 ["unstable_shouldYield"]
      279 SETTABLEKS                       R16 R65 K54 ["unstable_requestPaint"]
      281 SETTABLEKS                       R61 R65 K55 ["unstable_continueExecution"]
      283 SETTABLEKS                       R60 R65 K56 ["unstable_pauseExecution"]
      285 SETTABLEKS                       R62 R65 K57 ["unstable_getFirstCallbackNode"]
      287 SETTABLEKS                       R14 R65 K58 ["unstable_now"]
      289 SETTABLEKS                       R15 R65 K59 ["unstable_forceFrameRate"]
      291 SETTABLEKS                       R17 R65 K60 ["unstable_setSchedulerFlags"]
      293 SETTABLEKS                       R18 R65 K61 ["unstable_getSchedulerFlags"]
      295 JUMPIFNOT                        R8 ; [+6]
      296 DUPTABLE                         R66 K64 [{"startLoggingProfilingEvents", "stopLoggingProfilingEvents"}]
      297 SETTABLEKS                       R42 R66 K41 ["startLoggingProfilingEvents"]
      299 SETTABLEKS                       R41 R66 K40 ["stopLoggingProfilingEvents"]
      301 JUMP                             ; [+1]
      302 LOADNIL                          R66
      303 SETTABLEKS                       R66 R65 K62 ["unstable_Profiling"]
      305 CLOSEUPVALS                      R20
      306 RETURN                           R65 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_21]
        2 RETURN                           R0 1
