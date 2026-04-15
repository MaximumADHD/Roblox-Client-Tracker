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
        2 JUMPIFEQKNIL                     R1 ; [+74]
        4 GETTABLEKS                       R2 R1 K0 ["callback"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+20]
        8 GETUPVAL                         R2 0
        9 GETTABLEN                        R3 R2 1
       10 JUMPIFEQKNIL                     R3 ; [+63]
       12 LENGTH                           R5 R2
       13 GETTABLE                         R4 R2 R5
       14 LENGTH                           R5 R2
       15 LOADNIL                          R6
       16 SETTABLE                         R6 R2 R5
       17 JUMPIFEQ                         R4 R3 ; [+56]
       19 SETTABLEN                        R4 R2 1
       20 GETUPVAL                         R5 1
       21 MOVE                             R6 R2
       22 MOVE                             R7 R4
       23 LOADN                            R8 1
       24 CALL                             R5 3 0
       25 JUMP                             ; [+48]
       26 JUMP                             ; [+47]
       27 GETTABLEKS                       R2 R1 K1 ["startTime"]
       29 JUMPIFNOTLE                      R2 R0 ; [+43]
       31 GETUPVAL                         R2 0
       32 GETTABLEN                        R3 R2 1
       33 JUMPIFEQKNIL                     R3 ; [+15]
       35 LENGTH                           R5 R2
       36 GETTABLE                         R4 R2 R5
       37 LENGTH                           R5 R2
       38 LOADNIL                          R6
       39 SETTABLE                         R6 R2 R5
       40 JUMPIFEQ                         R4 R3 ; [+8]
       42 SETTABLEN                        R4 R2 1
       43 GETUPVAL                         R5 1
       44 MOVE                             R6 R2
       45 MOVE                             R7 R4
       46 LOADN                            R8 1
       47 CALL                             R5 3 0
       48 JUMP                             ; [0]
       49 GETTABLEKS                       R2 R1 K2 ["expirationTime"]
       51 SETTABLEKS                       R2 R1 K3 ["sortIndex"]
       53 GETUPVAL                         R2 2
       54 MOVE                             R3 R1
       55 LENGTH                           R5 R2
       56 ADDK                             R4 R5 K4 [1]
       57 SETTABLE                         R3 R2 R4
       58 GETUPVAL                         R5 3
       59 MOVE                             R6 R2
       60 MOVE                             R7 R3
       61 MOVE                             R8 R4
       62 CALL                             R5 3 0
       63 GETUPVAL                         R2 4
       64 JUMPIFNOT                        R2 ; [+9]
       65 GETUPVAL                         R2 5
       66 MOVE                             R3 R1
       67 MOVE                             R4 R0
       68 CALL                             R2 2 0
       69 LOADB                            R2 1
       70 SETTABLEKS                       R2 R1 K5 ["isQueued"]
       72 JUMP                             ; [+1]
       73 RETURN                           R0 0
       74 GETUPVAL                         R2 0
       75 GETTABLEN                        R1 R2 1
       76 JUMPBACK                         ; [-75]
       77 RETURN                           R0 0

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
       18 GETIMPORT                        R6 K1 [_G]
       20 GETTABLEKS                       R5 R6 K2 ["__YOLO__"]
       22 JUMPIF                           R5 ; [+33]
       23 GETUPVAL                         R5 0
       24 JUMPIFNOT                        R5 ; [+24]
       25 GETIMPORT                        R5 K4 [xpcall]
       27 GETUPVAL                         R6 7
       28 GETUPVAL                         R7 8
       29 MOVE                             R8 R0
       30 MOVE                             R9 R1
       31 CALL                             R5 4 2
       32 MOVE                             R3 R5
       33 MOVE                             R4 R6
       34 JUMPIF                           R3 ; [+27]
       35 GETUPVAL                         R5 9
       36 JUMPIFEQKNIL                     R5 ; [+25]
       38 GETUPVAL                         R5 10
       39 CALL                             R5 0 1
       40 GETUPVAL                         R6 11
       41 GETUPVAL                         R7 9
       42 MOVE                             R8 R5
       43 CALL                             R6 2 0
       44 GETUPVAL                         R6 9
       45 LOADB                            R7 0
       46 SETTABLEKS                       R7 R6 K5 ["isQueued"]
       48 JUMP                             ; [+13]
       49 LOADB                            R3 1
       50 GETUPVAL                         R5 7
       51 MOVE                             R6 R0
       52 MOVE                             R7 R1
       53 CALL                             R5 2 1
       54 MOVE                             R4 R5
       55 JUMP                             ; [+6]
       56 LOADB                            R3 1
       57 GETUPVAL                         R5 7
       58 MOVE                             R6 R0
       59 MOVE                             R7 R1
       60 CALL                             R5 2 1
       61 MOVE                             R4 R5
       62 LOADNIL                          R5
       63 SETUPVAL                         R5 9
       64 SETUPVAL                         R2 6
       65 LOADB                            R5 0
       66 SETUPVAL                         R5 5
       67 GETUPVAL                         R5 0
       68 JUMPIFNOT                        R5 ; [+5]
       69 GETUPVAL                         R5 10
       70 CALL                             R5 0 1
       71 GETUPVAL                         R6 12
       72 MOVE                             R7 R5
       73 CALL                             R6 1 0
       74 JUMPIF                           R3 ; [+4]
       75 GETIMPORT                        R5 K7 [error]
       77 MOVE                             R6 R4
       78 CALL                             R5 1 0
       79 RETURN                           R4 1

PROTO_9:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R2
        3 CALL                             R3 1 0
        4 GETUPVAL                         R4 2
        5 GETTABLEN                        R3 R4 1
        6 SETUPVAL                         R3 1
        7 GETUPVAL                         R3 1
        8 JUMPIFEQKNIL                     R3 ; [+123]
       10 GETUPVAL                         R3 3
       11 JUMPIFNOT                        R3 ; [+2]
       12 GETUPVAL                         R3 4
       13 JUMPIF                           R3 ; [+118]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K0 ["expirationTime"]
       17 JUMPIFNOTLT                      R2 R3 ; [+5]
       19 JUMPIFNOT                        R0 ; [+112]
       20 GETUPVAL                         R3 5
       21 CALL                             R3 0 1
       22 JUMPIF                           R3 ; [+109]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K1 ["callback"]
       26 FASTCALL1                        TYPEOF R3 ; [+3]
       27 MOVE                             R5 R3
       28 GETIMPORT                        R4 K3 [typeof]
       30 CALL                             R4 1 1
       31 JUMPIFNOTEQKS                    R4 K4 ["function"] ; [+78]
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
       72 JUMP                             ; [+33]
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
       86 JUMPIFNOTEQ                      R6 R7 ; [+19]
       88 GETUPVAL                         R6 2
       89 GETTABLEN                        R7 R6 1
       90 JUMPIFEQKNIL                     R7 ; [+15]
       92 LENGTH                           R9 R6
       93 GETTABLE                         R8 R6 R9
       94 LENGTH                           R9 R6
       95 LOADNIL                          R10
       96 SETTABLE                         R10 R6 R9
       97 JUMPIFEQ                         R8 R7 ; [+8]
       99 SETTABLEN                        R8 R6 1
      100 GETUPVAL                         R9 12
      101 MOVE                             R10 R6
      102 MOVE                             R11 R8
      103 LOADN                            R12 1
      104 CALL                             R9 3 0
      105 JUMP                             ; [0]
      106 GETUPVAL                         R6 0
      107 MOVE                             R7 R2
      108 CALL                             R6 1 0
      109 JUMP                             ; [+18]
      110 GETUPVAL                         R4 2
      111 GETTABLEN                        R5 R4 1
      112 JUMPIFEQKNIL                     R5 ; [+15]
      114 LENGTH                           R7 R4
      115 GETTABLE                         R6 R4 R7
      116 LENGTH                           R7 R4
      117 LOADNIL                          R8
      118 SETTABLE                         R8 R4 R7
      119 JUMPIFEQ                         R6 R5 ; [+8]
      121 SETTABLEN                        R6 R4 1
      122 GETUPVAL                         R7 12
      123 MOVE                             R8 R4
      124 MOVE                             R9 R6
      125 LOADN                            R10 1
      126 CALL                             R7 3 0
      127 JUMP                             ; [0]
      128 GETUPVAL                         R5 2
      129 GETTABLEN                        R4 R5 1
      130 SETUPVAL                         R4 1
      131 JUMPBACK                         ; [-125]
      132 GETUPVAL                         R3 1
      133 JUMPIFEQKNIL                     R3 ; [+3]
      135 LOADB                            R3 1
      136 RETURN                           R3 1
      137 GETUPVAL                         R4 13
      138 GETTABLEN                        R3 R4 1
      139 JUMPIFEQKNIL                     R3 ; [+7]
      141 GETUPVAL                         R4 14
      142 GETUPVAL                         R5 15
      143 GETTABLEKS                       R7 R3 K7 ["startTime"]
      145 SUB                              R6 R7 R2
      146 CALL                             R4 2 0
      147 LOADB                            R4 0
      148 RETURN                           R4 1

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
       21 GETIMPORT                        R6 K1 [_G]
       23 GETTABLEKS                       R5 R6 K2 ["__YOLO__"]
       25 JUMPIF                           R5 ; [+8]
       26 GETIMPORT                        R5 K4 [xpcall]
       28 MOVE                             R6 R1
       29 GETUPVAL                         R7 6
       30 CALL                             R5 2 2
       31 MOVE                             R3 R5
       32 MOVE                             R4 R6
       33 JUMP                             ; [+4]
       34 LOADB                            R3 1
       35 MOVE                             R5 R1
       36 CALL                             R5 0 1
       37 MOVE                             R4 R5
       38 SETUPVAL                         R2 5
       39 JUMPIF                           R3 ; [+4]
       40 GETIMPORT                        R5 K6 [error]
       42 MOVE                             R6 R4
       43 CALL                             R5 1 0
       44 RETURN                           R4 1

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
       20 GETIMPORT                        R6 K1 [_G]
       22 GETTABLEKS                       R5 R6 K2 ["__YOLO__"]
       24 JUMPIF                           R5 ; [+8]
       25 GETIMPORT                        R5 K4 [xpcall]
       27 MOVE                             R6 R0
       28 GETUPVAL                         R7 4
       29 CALL                             R5 2 2
       30 MOVE                             R3 R5
       31 MOVE                             R4 R6
       32 JUMP                             ; [+4]
       33 LOADB                            R3 1
       34 MOVE                             R5 R0
       35 CALL                             R5 0 1
       36 MOVE                             R4 R5
       37 SETUPVAL                         R2 0
       38 JUMPIF                           R3 ; [+4]
       39 GETIMPORT                        R5 K6 [error]
       41 MOVE                             R6 R4
       42 CALL                             R5 1 0
       43 RETURN                           R4 1

PROTO_12:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 SETUPVAL                         R1 0
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 GETIMPORT                        R4 K1 [_G]
        8 GETTABLEKS                       R3 R4 K2 ["__YOLO__"]
       10 JUMPIF                           R3 ; [+9]
       11 GETIMPORT                        R3 K4 [xpcall]
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 3
       15 GETVARARGS                       R6 -1
       16 CALL                             R3 -1 2
       17 MOVE                             R1 R3
       18 MOVE                             R2 R4
       19 JUMP                             ; [+5]
       20 LOADB                            R1 1
       21 GETUPVAL                         R3 2
       22 GETVARARGS                       R4 -1
       23 CALL                             R3 -1 1
       24 MOVE                             R2 R3
       25 SETUPVAL                         R0 0
       26 JUMPIF                           R1 ; [+4]
       27 GETIMPORT                        R3 K6 [error]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 0
       31 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 RETURN                           R2 1

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
        6 GETIMPORT                        R3 K4 [require]
        8 GETTABLEKS                       R4 R1 K5 ["Shared"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R2 R3 K6 ["describeError"]
       13 GETIMPORT                        R3 K4 [require]
       15 GETIMPORT                        R6 K1 [script]
       17 GETTABLEKS                       R5 R6 K2 ["Parent"]
       19 GETTABLEKS                       R4 R5 K7 ["SchedulerFeatureFlags"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R3 K8 ["enableSchedulerDebugging"]
       24 GETTABLEKS                       R5 R3 K9 ["enableProfiling"]
       26 MOVE                             R6 R0
       27 JUMPIF                           R6 ; [+9]
       28 GETIMPORT                        R6 K4 [require]
       30 GETIMPORT                        R9 K1 [script]
       32 GETTABLEKS                       R8 R9 K2 ["Parent"]
       34 GETTABLEKS                       R7 R8 K10 ["SchedulerHostConfig"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R7 R6 K11 ["requestHostCallback"]
       39 GETTABLEKS                       R8 R6 K12 ["requestHostTimeout"]
       41 GETTABLEKS                       R9 R6 K13 ["cancelHostTimeout"]
       43 GETTABLEKS                       R10 R6 K14 ["shouldYieldToHost"]
       45 GETTABLEKS                       R11 R6 K15 ["getCurrentTime"]
       47 GETTABLEKS                       R12 R6 K16 ["forceFrameRate"]
       49 GETTABLEKS                       R13 R6 K17 ["requestPaint"]
       51 GETTABLEKS                       R14 R6 K18 ["setSchedulerFlags"]
       53 LOADNIL                          R15
       54 LOADNIL                          R16
       55 LOADNIL                          R17
       56 NEWCLOSURE                       R18 P0
       57 CAPTURE                          REF R16
       58 DUPCLOSURE                       R19 K19 [PROTO_1]
       59 NEWCLOSURE                       R20 P2
       60 CAPTURE                          REF R17
       61 NEWCLOSURE                       R16 P3
       62 CAPTURE                          REF R15
       63 NEWCLOSURE                       R17 P4
       64 CAPTURE                          REF R15
       65 DUPCLOSURE                       R15 K20 [PROTO_5]
       66 GETIMPORT                        R21 K4 [require]
       68 GETIMPORT                        R24 K1 [script]
       70 GETTABLEKS                       R23 R24 K2 ["Parent"]
       72 GETTABLEKS                       R22 R23 K21 ["SchedulerPriorities"]
       74 CALL                             R21 1 1
       75 GETTABLEKS                       R22 R21 K22 ["ImmediatePriority"]
       77 GETTABLEKS                       R23 R21 K23 ["UserBlockingPriority"]
       79 GETTABLEKS                       R24 R21 K24 ["NormalPriority"]
       81 GETTABLEKS                       R25 R21 K25 ["LowPriority"]
       83 GETTABLEKS                       R26 R21 K26 ["IdlePriority"]
       85 GETIMPORT                        R27 K4 [require]
       87 GETIMPORT                        R30 K1 [script]
       89 GETTABLEKS                       R29 R30 K2 ["Parent"]
       91 GETTABLEKS                       R28 R29 K27 ["SchedulerProfiling"]
       93 CALL                             R27 1 1
       94 GETTABLEKS                       R28 R27 K28 ["markTaskRun"]
       96 GETTABLEKS                       R29 R27 K29 ["markTaskYield"]
       98 GETTABLEKS                       R30 R27 K30 ["markTaskCompleted"]
      100 GETTABLEKS                       R31 R27 K31 ["markTaskCanceled"]
      102 GETTABLEKS                       R32 R27 K32 ["markTaskErrored"]
      104 GETTABLEKS                       R33 R27 K33 ["markSchedulerSuspended"]
      106 GETTABLEKS                       R34 R27 K34 ["markSchedulerUnsuspended"]
      108 GETTABLEKS                       R35 R27 K35 ["markTaskStart"]
      110 GETTABLEKS                       R36 R27 K36 ["stopLoggingProfilingEvents"]
      112 GETTABLEKS                       R37 R27 K37 ["startLoggingProfilingEvents"]
      114 NEWTABLE                         R38 0 0
      116 NEWTABLE                         R39 0 0
      118 LOADN                            R40 1
      119 LOADB                            R41 0
      120 LOADNIL                          R42
      121 MOVE                             R43 R24
      122 LOADB                            R44 0
      123 LOADB                            R45 0
      124 LOADB                            R46 0
      125 LOADNIL                          R47
      126 LOADNIL                          R48
      127 LOADNIL                          R49
      128 NEWCLOSURE                       R50 P6
      129 CAPTURE                          VAL R39
      130 CAPTURE                          REF R17
      131 CAPTURE                          VAL R38
      132 CAPTURE                          REF R16
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R35
      135 NEWCLOSURE                       R47 P7
      136 CAPTURE                          REF R46
      137 CAPTURE                          VAL R50
      138 CAPTURE                          REF R45
      139 CAPTURE                          VAL R38
      140 CAPTURE                          VAL R7
      141 CAPTURE                          REF R48
      142 CAPTURE                          VAL R39
      143 CAPTURE                          VAL R8
      144 CAPTURE                          REF R47
      145 NEWCLOSURE                       R48 P8
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R34
      148 CAPTURE                          REF R45
      149 CAPTURE                          REF R46
      150 CAPTURE                          VAL R9
      151 CAPTURE                          REF R44
      152 CAPTURE                          REF R43
      153 CAPTURE                          REF R49
      154 CAPTURE                          VAL R2
      155 CAPTURE                          REF R42
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R32
      158 CAPTURE                          VAL R33
      159 NEWCLOSURE                       R49 P9
      160 CAPTURE                          VAL R50
      161 CAPTURE                          REF R42
      162 CAPTURE                          VAL R38
      163 CAPTURE                          VAL R4
      164 CAPTURE                          REF R41
      165 CAPTURE                          VAL R10
      166 CAPTURE                          REF R43
      167 CAPTURE                          VAL R28
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R29
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R30
      172 CAPTURE                          REF R17
      173 CAPTURE                          VAL R39
      174 CAPTURE                          VAL R8
      175 CAPTURE                          REF R47
      176 NEWCLOSURE                       R51 P10
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R24
      180 CAPTURE                          VAL R25
      181 CAPTURE                          VAL R26
      182 CAPTURE                          REF R43
      183 CAPTURE                          VAL R2
      184 NEWCLOSURE                       R52 P11
      185 CAPTURE                          REF R43
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R23
      188 CAPTURE                          VAL R24
      189 CAPTURE                          VAL R2
      190 NEWCLOSURE                       R53 P12
      191 CAPTURE                          REF R43
      192 CAPTURE                          VAL R2
      193 NEWCLOSURE                       R54 P13
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R26
      198 CAPTURE                          VAL R25
      199 CAPTURE                          REF R40
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R39
      202 CAPTURE                          REF R16
      203 CAPTURE                          VAL R38
      204 CAPTURE                          REF R46
      205 CAPTURE                          VAL R9
      206 CAPTURE                          VAL R8
      207 CAPTURE                          REF R47
      208 CAPTURE                          VAL R35
      209 CAPTURE                          REF R45
      210 CAPTURE                          REF R44
      211 CAPTURE                          VAL R7
      212 CAPTURE                          REF R48
      213 NEWCLOSURE                       R55 P14
      214 CAPTURE                          REF R41
      215 NEWCLOSURE                       R56 P15
      216 CAPTURE                          REF R41
      217 CAPTURE                          REF R45
      218 CAPTURE                          REF R44
      219 CAPTURE                          VAL R7
      220 CAPTURE                          REF R48
      221 NEWCLOSURE                       R57 P16
      222 CAPTURE                          VAL R38
      223 NEWCLOSURE                       R58 P17
      224 CAPTURE                          VAL R5
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R31
      227 NEWCLOSURE                       R59 P18
      228 CAPTURE                          REF R43
      229 DUPTABLE                         R60 K58 [{"unstable_ImmediatePriority", "unstable_UserBlockingPriority", "unstable_NormalPriority", "unstable_IdlePriority", "unstable_LowPriority", "unstable_runWithPriority", "unstable_next", "unstable_scheduleCallback", "unstable_cancelCallback", "unstable_wrapCallback", "unstable_getCurrentPriorityLevel", "unstable_shouldYield", "unstable_requestPaint", "unstable_continueExecution", "unstable_pauseExecution", "unstable_getFirstCallbackNode", "unstable_now", "unstable_forceFrameRate", "unstable_setSchedulerFlags", "unstable_Profiling"}]
      230 SETTABLEKS                       R22 R60 K38 ["unstable_ImmediatePriority"]
      232 SETTABLEKS                       R23 R60 K39 ["unstable_UserBlockingPriority"]
      234 SETTABLEKS                       R24 R60 K40 ["unstable_NormalPriority"]
      236 SETTABLEKS                       R26 R60 K41 ["unstable_IdlePriority"]
      238 SETTABLEKS                       R25 R60 K42 ["unstable_LowPriority"]
      240 SETTABLEKS                       R51 R60 K43 ["unstable_runWithPriority"]
      242 SETTABLEKS                       R52 R60 K44 ["unstable_next"]
      244 SETTABLEKS                       R54 R60 K45 ["unstable_scheduleCallback"]
      246 SETTABLEKS                       R58 R60 K46 ["unstable_cancelCallback"]
      248 SETTABLEKS                       R53 R60 K47 ["unstable_wrapCallback"]
      250 SETTABLEKS                       R59 R60 K48 ["unstable_getCurrentPriorityLevel"]
      252 SETTABLEKS                       R10 R60 K49 ["unstable_shouldYield"]
      254 SETTABLEKS                       R13 R60 K50 ["unstable_requestPaint"]
      256 SETTABLEKS                       R56 R60 K51 ["unstable_continueExecution"]
      258 SETTABLEKS                       R55 R60 K52 ["unstable_pauseExecution"]
      260 SETTABLEKS                       R57 R60 K53 ["unstable_getFirstCallbackNode"]
      262 SETTABLEKS                       R11 R60 K54 ["unstable_now"]
      264 SETTABLEKS                       R12 R60 K55 ["unstable_forceFrameRate"]
      266 SETTABLEKS                       R14 R60 K56 ["unstable_setSchedulerFlags"]
      268 JUMPIFNOT                        R5 ; [+6]
      269 DUPTABLE                         R61 K59 [{"startLoggingProfilingEvents", "stopLoggingProfilingEvents"}]
      270 SETTABLEKS                       R37 R61 K37 ["startLoggingProfilingEvents"]
      272 SETTABLEKS                       R36 R61 K36 ["stopLoggingProfilingEvents"]
      274 JUMP                             ; [+1]
      275 LOADNIL                          R61
      276 SETTABLEKS                       R61 R60 K57 ["unstable_Profiling"]
      278 CLOSEUPVALS                      R15
      279 RETURN                           R60 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_21]
        2 RETURN                           R0 1
