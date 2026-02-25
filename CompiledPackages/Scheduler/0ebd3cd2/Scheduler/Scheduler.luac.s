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
        0 MOVE                             R2 R1
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R2
        3 CALL                             R3 1 0
        4 GETUPVAL                         R4 2
        5 GETTABLEN                        R3 R4 1
        6 SETUPVAL                         R3 1
        7 GETUPVAL                         R3 1
        8 JUMPIFEQKNIL                     R3 ; [+125]
       10 GETUPVAL                         R3 3
       11 JUMPIFNOT                        R3 ; [+2]
       12 GETUPVAL                         R3 4
       13 JUMPIF                           R3 ; [+120]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K0 ["expirationTime"]
       17 JUMPIFNOTLT                      R2 R3 ; [+5]
       19 JUMPIFNOT                        R0 ; [+114]
       20 GETUPVAL                         R3 5
       21 CALL                             R3 0 1
       22 JUMPIF                           R3 ; [+111]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K1 ["callback"]
       26 FASTCALL1                        TYPEOF R3 ; [+3]
       27 MOVE                             R5 R3
       28 GETIMPORT                        R4 K3 [typeof]
       30 CALL                             R4 1 1
       31 JUMPIFNOTEQKS                    R4 K4 ["function"] ; [+79]
       33 GETUPVAL                         R4 1
       34 LOADNIL                          R5
       35 SETTABLEKS                       R5 R4 K1 ["callback"]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R4 R5 K5 ["priorityLevel"]
       40 SETUPVAL                         R4 6
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R5 R6 K0 ["expirationTime"]
       44 JUMPIFLE                         R5 R2 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 GETUPVAL                         R5 7
       49 GETUPVAL                         R6 1
       50 MOVE                             R7 R2
       51 CALL                             R5 2 0
       52 MOVE                             R5 R3
       53 MOVE                             R6 R4
       54 CALL                             R5 1 1
       55 GETUPVAL                         R6 8
       56 CALL                             R6 0 1
       57 MOVE                             R2 R6
       58 FASTCALL1                        TYPEOF R5 ; [+3]
       59 MOVE                             R7 R5
       60 GETIMPORT                        R6 K3 [typeof]
       62 CALL                             R6 1 1
       63 JUMPIFNOTEQKS                    R6 K4 ["function"] ; [+9]
       65 GETUPVAL                         R6 1
       66 SETTABLEKS                       R5 R6 K1 ["callback"]
       68 GETUPVAL                         R6 9
       69 GETUPVAL                         R7 1
       70 MOVE                             R8 R2
       71 CALL                             R6 2 0
       72 JUMP                             ; [+34]
       73 GETUPVAL                         R6 10
       74 JUMPIFNOT                        R6 ; [+8]
       75 GETUPVAL                         R6 11
       76 GETUPVAL                         R7 1
       77 MOVE                             R8 R2
       78 CALL                             R6 2 0
       79 GETUPVAL                         R6 1
       80 LOADB                            R7 0
       81 SETTABLEKS                       R7 R6 K6 ["isQueued"]
       83 GETUPVAL                         R6 1
       84 GETUPVAL                         R8 2
       85 GETTABLEN                        R7 R8 1
       86 JUMPIFNOTEQ                      R6 R7 ; [+20]
       88 GETUPVAL                         R6 2
       89 GETTABLEN                        R7 R6 1
       90 JUMPIFEQKNIL                     R7 ; [+16]
       92 LENGTH                           R9 R6
       93 GETTABLE                         R8 R6 R9
       94 LENGTH                           R9 R6
       95 LOADNIL                          R10
       96 SETTABLE                         R10 R6 R9
       97 JUMPIFEQ                         R8 R7 ; [+9]
       99 SETTABLEN                        R8 R6 1
      100 GETUPVAL                         R9 12
      101 MOVE                             R10 R6
      102 MOVE                             R11 R8
      103 LOADN                            R12 1
      104 CALL                             R9 3 0
      105 JUMP                             ; [+1]
      106 JUMP                             ; [0]
      107 GETUPVAL                         R6 0
      108 MOVE                             R7 R2
      109 CALL                             R6 1 0
      110 JUMP                             ; [+19]
      111 GETUPVAL                         R4 2
      112 GETTABLEN                        R5 R4 1
      113 JUMPIFEQKNIL                     R5 ; [+16]
      115 LENGTH                           R7 R4
      116 GETTABLE                         R6 R4 R7
      117 LENGTH                           R7 R4
      118 LOADNIL                          R8
      119 SETTABLE                         R8 R4 R7
      120 JUMPIFEQ                         R6 R5 ; [+9]
      122 SETTABLEN                        R6 R4 1
      123 GETUPVAL                         R7 12
      124 MOVE                             R8 R4
      125 MOVE                             R9 R6
      126 LOADN                            R10 1
      127 CALL                             R7 3 0
      128 JUMP                             ; [+1]
      129 JUMP                             ; [0]
      130 GETUPVAL                         R5 2
      131 GETTABLEN                        R4 R5 1
      132 SETUPVAL                         R4 1
      133 JUMPBACK                         ; [-127]
      134 GETUPVAL                         R3 1
      135 JUMPIFEQKNIL                     R3 ; [+3]
      137 LOADB                            R3 1
      138 RETURN                           R3 1
      139 GETUPVAL                         R4 13
      140 GETTABLEN                        R3 R4 1
      141 JUMPIFEQKNIL                     R3 ; [+7]
      143 GETUPVAL                         R4 14
      144 GETUPVAL                         R5 15
      145 GETTABLEKS                       R7 R3 K7 ["startTime"]
      147 SUB                              R6 R7 R2
      148 CALL                             R4 2 0
      149 LOADB                            R4 0
      150 RETURN                           R4 1

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
       11 GETIMPORT                        R4 K4 [require]
       13 GETTABLEKS                       R5 R1 K6 ["Shared"]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R3 R4 K7 ["describeError"]
       18 GETIMPORT                        R4 K4 [require]
       20 GETIMPORT                        R7 K1 [script]
       22 GETTABLEKS                       R6 R7 K2 ["Parent"]
       24 GETTABLEKS                       R5 R6 K8 ["SchedulerFeatureFlags"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K9 ["enableSchedulerDebugging"]
       29 GETTABLEKS                       R6 R4 K10 ["enableProfiling"]
       31 MOVE                             R7 R0
       32 JUMPIF                           R7 ; [+9]
       33 GETIMPORT                        R7 K4 [require]
       35 GETIMPORT                        R10 K1 [script]
       37 GETTABLEKS                       R9 R10 K2 ["Parent"]
       39 GETTABLEKS                       R8 R9 K11 ["SchedulerHostConfig"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R7 K12 ["requestHostCallback"]
       44 GETTABLEKS                       R9 R7 K13 ["requestHostTimeout"]
       46 GETTABLEKS                       R10 R7 K14 ["cancelHostTimeout"]
       48 GETTABLEKS                       R11 R7 K15 ["shouldYieldToHost"]
       50 GETTABLEKS                       R12 R7 K16 ["getCurrentTime"]
       52 GETTABLEKS                       R13 R7 K17 ["forceFrameRate"]
       54 GETTABLEKS                       R14 R7 K18 ["requestPaint"]
       56 GETTABLEKS                       R15 R7 K19 ["setSchedulerFlags"]
       58 GETTABLEKS                       R16 R7 K20 ["getSchedulerFlags"]
       60 LOADNIL                          R17
       61 LOADNIL                          R18
       62 LOADNIL                          R19
       63 NEWCLOSURE                       R20 P0
       64 CAPTURE                          REF R18
       65 DUPCLOSURE                       R21 K21 [PROTO_1]
       66 NEWCLOSURE                       R22 P2
       67 CAPTURE                          REF R19
       68 NEWCLOSURE                       R18 P3
       69 CAPTURE                          REF R17
       70 NEWCLOSURE                       R19 P4
       71 CAPTURE                          REF R17
       72 DUPCLOSURE                       R17 K22 [PROTO_5]
       73 GETIMPORT                        R23 K4 [require]
       75 GETIMPORT                        R26 K1 [script]
       77 GETTABLEKS                       R25 R26 K2 ["Parent"]
       79 GETTABLEKS                       R24 R25 K23 ["SchedulerPriorities"]
       81 CALL                             R23 1 1
       82 GETTABLEKS                       R24 R23 K24 ["ImmediatePriority"]
       84 GETTABLEKS                       R25 R23 K25 ["UserBlockingPriority"]
       86 GETTABLEKS                       R26 R23 K26 ["NormalPriority"]
       88 GETTABLEKS                       R27 R23 K27 ["LowPriority"]
       90 GETTABLEKS                       R28 R23 K28 ["IdlePriority"]
       92 GETIMPORT                        R29 K4 [require]
       94 GETIMPORT                        R32 K1 [script]
       96 GETTABLEKS                       R31 R32 K2 ["Parent"]
       98 GETTABLEKS                       R30 R31 K29 ["SchedulerProfiling"]
      100 CALL                             R29 1 1
      101 GETTABLEKS                       R30 R29 K30 ["markTaskRun"]
      103 GETTABLEKS                       R31 R29 K31 ["markTaskYield"]
      105 GETTABLEKS                       R32 R29 K32 ["markTaskCompleted"]
      107 GETTABLEKS                       R33 R29 K33 ["markTaskCanceled"]
      109 GETTABLEKS                       R34 R29 K34 ["markTaskErrored"]
      111 GETTABLEKS                       R35 R29 K35 ["markSchedulerSuspended"]
      113 GETTABLEKS                       R36 R29 K36 ["markSchedulerUnsuspended"]
      115 GETTABLEKS                       R37 R29 K37 ["markTaskStart"]
      117 GETTABLEKS                       R38 R29 K38 ["stopLoggingProfilingEvents"]
      119 GETTABLEKS                       R39 R29 K39 ["startLoggingProfilingEvents"]
      121 NEWTABLE                         R40 0 0
      123 NEWTABLE                         R41 0 0
      125 LOADN                            R42 1
      126 LOADB                            R43 0
      127 LOADNIL                          R44
      128 MOVE                             R45 R26
      129 LOADB                            R46 0
      130 LOADB                            R47 0
      131 LOADB                            R48 0
      132 LOADNIL                          R49
      133 LOADNIL                          R50
      134 LOADNIL                          R51
      135 NEWCLOSURE                       R52 P6
      136 CAPTURE                          VAL R41
      137 CAPTURE                          REF R19
      138 CAPTURE                          VAL R40
      139 CAPTURE                          REF R18
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R37
      142 NEWCLOSURE                       R49 P7
      143 CAPTURE                          REF R48
      144 CAPTURE                          VAL R52
      145 CAPTURE                          REF R47
      146 CAPTURE                          VAL R40
      147 CAPTURE                          VAL R8
      148 CAPTURE                          REF R50
      149 CAPTURE                          VAL R41
      150 CAPTURE                          VAL R9
      151 CAPTURE                          REF R49
      152 NEWCLOSURE                       R50 P8
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R36
      155 CAPTURE                          REF R47
      156 CAPTURE                          REF R48
      157 CAPTURE                          VAL R10
      158 CAPTURE                          REF R46
      159 CAPTURE                          REF R45
      160 CAPTURE                          VAL R2
      161 CAPTURE                          REF R51
      162 CAPTURE                          VAL R3
      163 CAPTURE                          REF R44
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R34
      166 CAPTURE                          VAL R35
      167 NEWCLOSURE                       R51 P9
      168 CAPTURE                          VAL R52
      169 CAPTURE                          REF R44
      170 CAPTURE                          VAL R40
      171 CAPTURE                          VAL R5
      172 CAPTURE                          REF R43
      173 CAPTURE                          VAL R11
      174 CAPTURE                          REF R45
      175 CAPTURE                          VAL R30
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R31
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R32
      180 CAPTURE                          REF R19
      181 CAPTURE                          VAL R41
      182 CAPTURE                          VAL R9
      183 CAPTURE                          REF R49
      184 NEWCLOSURE                       R53 P10
      185 CAPTURE                          VAL R24
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R26
      188 CAPTURE                          VAL R27
      189 CAPTURE                          VAL R28
      190 CAPTURE                          REF R45
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R3
      193 NEWCLOSURE                       R54 P11
      194 CAPTURE                          REF R45
      195 CAPTURE                          VAL R24
      196 CAPTURE                          VAL R25
      197 CAPTURE                          VAL R26
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R3
      200 NEWCLOSURE                       R55 P12
      201 CAPTURE                          REF R45
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R3
      204 NEWCLOSURE                       R56 P13
      205 CAPTURE                          VAL R12
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R25
      208 CAPTURE                          VAL R28
      209 CAPTURE                          VAL R27
      210 CAPTURE                          REF R42
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R41
      213 CAPTURE                          REF R18
      214 CAPTURE                          VAL R40
      215 CAPTURE                          REF R48
      216 CAPTURE                          VAL R10
      217 CAPTURE                          VAL R9
      218 CAPTURE                          REF R49
      219 CAPTURE                          VAL R37
      220 CAPTURE                          REF R47
      221 CAPTURE                          REF R46
      222 CAPTURE                          VAL R8
      223 CAPTURE                          REF R50
      224 NEWCLOSURE                       R57 P14
      225 CAPTURE                          REF R43
      226 NEWCLOSURE                       R58 P15
      227 CAPTURE                          REF R43
      228 CAPTURE                          REF R47
      229 CAPTURE                          REF R46
      230 CAPTURE                          VAL R8
      231 CAPTURE                          REF R50
      232 NEWCLOSURE                       R59 P16
      233 CAPTURE                          VAL R40
      234 NEWCLOSURE                       R60 P17
      235 CAPTURE                          VAL R6
      236 CAPTURE                          VAL R12
      237 CAPTURE                          VAL R33
      238 NEWCLOSURE                       R61 P18
      239 CAPTURE                          REF R45
      240 DUPTABLE                         R62 K61 [{"unstable_ImmediatePriority", "unstable_UserBlockingPriority", "unstable_NormalPriority", "unstable_IdlePriority", "unstable_LowPriority", "unstable_runWithPriority", "unstable_next", "unstable_scheduleCallback", "unstable_cancelCallback", "unstable_wrapCallback", "unstable_getCurrentPriorityLevel", "unstable_shouldYield", "unstable_requestPaint", "unstable_continueExecution", "unstable_pauseExecution", "unstable_getFirstCallbackNode", "unstable_now", "unstable_forceFrameRate", "unstable_setSchedulerFlags", "unstable_getSchedulerFlags", "unstable_Profiling"}]
      241 SETTABLEKS                       R24 R62 K40 ["unstable_ImmediatePriority"]
      243 SETTABLEKS                       R25 R62 K41 ["unstable_UserBlockingPriority"]
      245 SETTABLEKS                       R26 R62 K42 ["unstable_NormalPriority"]
      247 SETTABLEKS                       R28 R62 K43 ["unstable_IdlePriority"]
      249 SETTABLEKS                       R27 R62 K44 ["unstable_LowPriority"]
      251 SETTABLEKS                       R53 R62 K45 ["unstable_runWithPriority"]
      253 SETTABLEKS                       R54 R62 K46 ["unstable_next"]
      255 SETTABLEKS                       R56 R62 K47 ["unstable_scheduleCallback"]
      257 SETTABLEKS                       R60 R62 K48 ["unstable_cancelCallback"]
      259 SETTABLEKS                       R55 R62 K49 ["unstable_wrapCallback"]
      261 SETTABLEKS                       R61 R62 K50 ["unstable_getCurrentPriorityLevel"]
      263 SETTABLEKS                       R11 R62 K51 ["unstable_shouldYield"]
      265 SETTABLEKS                       R14 R62 K52 ["unstable_requestPaint"]
      267 SETTABLEKS                       R58 R62 K53 ["unstable_continueExecution"]
      269 SETTABLEKS                       R57 R62 K54 ["unstable_pauseExecution"]
      271 SETTABLEKS                       R59 R62 K55 ["unstable_getFirstCallbackNode"]
      273 SETTABLEKS                       R12 R62 K56 ["unstable_now"]
      275 SETTABLEKS                       R13 R62 K57 ["unstable_forceFrameRate"]
      277 SETTABLEKS                       R15 R62 K58 ["unstable_setSchedulerFlags"]
      279 SETTABLEKS                       R16 R62 K59 ["unstable_getSchedulerFlags"]
      281 JUMPIFNOT                        R6 ; [+6]
      282 DUPTABLE                         R63 K62 [{"startLoggingProfilingEvents", "stopLoggingProfilingEvents"}]
      283 SETTABLEKS                       R39 R63 K39 ["startLoggingProfilingEvents"]
      285 SETTABLEKS                       R38 R63 K38 ["stopLoggingProfilingEvents"]
      287 JUMP                             ; [+1]
      288 LOADNIL                          R63
      289 SETTABLEKS                       R63 R62 K60 ["unstable_Profiling"]
      291 CLOSEUPVALS                      R17
      292 RETURN                           R62 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_21]
        2 RETURN                           R0 1
