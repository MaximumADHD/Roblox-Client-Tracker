PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+18]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+7]
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 3
        8 GETUPVAL                         R3 4
        9 GETUPVAL                         R4 5
       10 CALL                             R0 4 0
       11 JUMP                             ; [+4]
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R1 0
       14 GETUPVAL                         R2 3
       15 CALL                             R0 2 0
       16 LOADNIL                          R0
       17 LOADK                            R1 K0 [""]
       18 SETUPVAL                         R0 0
       19 SETUPVAL                         R1 3
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+18]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 0
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R5 4
        9 GETUPVAL                         R6 5
       10 CALL                             R2 4 0
       11 JUMP                             ; [+4]
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 0
       14 GETUPVAL                         R4 3
       15 CALL                             R2 2 0
       16 LOADNIL                          R2
       17 LOADK                            R3 K0 [""]
       18 SETUPVAL                         R2 0
       19 SETUPVAL                         R3 3
       20 GETUPVAL                         R2 7
       21 GETUPVAL                         R3 8
       22 SETUPVAL                         R2 6
       23 SETUPVAL                         R3 7
       24 SETUPVAL                         R1 8
       25 GETUPVAL                         R2 9
       26 JUMPIFEQKS                       R2 K0 [""] ; [+6]
       28 GETUPVAL                         R2 9
       29 MOVE                             R3 R1
       30 CONCAT                           R1 R2 R3
       31 LOADK                            R2 K0 [""]
       32 SETUPVAL                         R2 9
       33 SETUPVAL                         R0 0
       34 SETUPVAL                         R1 3
       35 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CONCAT                           R1 R2 R3
        6 SETUPVAL                         R1 1
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CONCAT                           R1 R2 R3
       11 SETUPVAL                         R1 2
       12 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 2
        3 SETUPVAL                         R0 1
        4 LOADN                            R0 0
        5 SETUPVAL                         R0 3
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 4
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 5
       10 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADN                            R0 0
        3 SETUPVAL                         R0 1
        4 LOADB                            R0 0
        5 SETUPVAL                         R0 2
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 3
        8 LOADB                            R0 0
        9 SETUPVAL                         R0 4
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTLE                      R0 R1 ; [+13]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 2
        5 FASTCALL2                        STRING_BYTE R4 R0 ; [+4]
        7 MOVE                             R5 R0
        8 GETIMPORT                        R3 K2 [string.byte]
       10 CALL                             R3 2 1
       11 GETTABLE                         R1 R2 R3
       12 JUMPIFNOT                        R1 ; [+2]
       13 ADDK                             R0 R0 K3 [1]
       14 JUMPBACK                         ; [-15]
       15 GETUPVAL                         R1 3
       16 JUMPIFNOTLT                      R1 R0 ; [+2]
       18 SETUPVAL                         R0 3
       19 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        STRING_BYTE R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [string.byte]
        6 CALL                             R1 2 1
        7 JUMPIFEQKNIL                     R1 ; [+4]
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R2 R3 R1
       11 JUMPIF                           R2 ; [+2]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 ADDK                             R0 R0 K3 [1]
       15 GETUPVAL                         R2 2
       16 JUMPIFNOTLE                      R0 R2 ; [+13]
       18 GETUPVAL                         R3 3
       19 GETUPVAL                         R5 0
       20 FASTCALL2                        STRING_BYTE R5 R0 ; [+4]
       22 MOVE                             R6 R0
       23 GETIMPORT                        R4 K2 [string.byte]
       25 CALL                             R4 2 1
       26 GETTABLE                         R2 R3 R4
       27 JUMPIFNOT                        R2 ; [+2]
       28 ADDK                             R0 R0 K3 [1]
       29 JUMPBACK                         ; [-15]
       30 GETUPVAL                         R2 4
       31 JUMPIFNOTLT                      R2 R0 ; [+2]
       33 SETUPVAL                         R0 4
       34 MOVE                             R3 R0
       35 GETUPVAL                         R4 2
       36 JUMPIFNOTLE                      R3 R4 ; [+13]
       38 GETUPVAL                         R5 5
       39 GETUPVAL                         R7 0
       40 FASTCALL2                        STRING_BYTE R7 R3 ; [+4]
       42 MOVE                             R8 R3
       43 GETIMPORT                        R6 K2 [string.byte]
       45 CALL                             R6 2 1
       46 GETTABLE                         R4 R5 R6
       47 JUMPIFNOT                        R4 ; [+2]
       48 ADDK                             R3 R3 K3 [1]
       49 JUMPBACK                         ; [-15]
       50 GETUPVAL                         R4 4
       51 JUMPIFNOTLT                      R4 R3 ; [+2]
       53 SETUPVAL                         R3 4
       54 MOVE                             R2 R3
       55 GETUPVAL                         R4 0
       56 FASTCALL2                        STRING_BYTE R4 R2 ; [+4]
       58 MOVE                             R5 R2
       59 GETIMPORT                        R3 K2 [string.byte]
       61 CALL                             R3 2 1
       62 GETUPVAL                         R4 6
       63 JUMPIFEQ                         R3 R4 ; [+2]
       65 RETURN                           R0 1
       66 ADDK                             R4 R2 K3 [1]
       67 GETUPVAL                         R5 2
       68 JUMPIFNOTLE                      R4 R5 ; [+13]
       70 GETUPVAL                         R6 5
       71 GETUPVAL                         R8 0
       72 FASTCALL2                        STRING_BYTE R8 R4 ; [+4]
       74 MOVE                             R9 R4
       75 GETIMPORT                        R7 K2 [string.byte]
       77 CALL                             R7 2 1
       78 GETTABLE                         R5 R6 R7
       79 JUMPIFNOT                        R5 ; [+2]
       80 ADDK                             R4 R4 K3 [1]
       81 JUMPBACK                         ; [-15]
       82 GETUPVAL                         R5 4
       83 JUMPIFNOTLT                      R5 R4 ; [+2]
       85 SETUPVAL                         R4 4
       86 MOVE                             R3 R4
       87 GETUPVAL                         R4 2
       88 JUMPIFLT                         R4 R3 ; [+11]
       90 GETUPVAL                         R5 1
       91 GETUPVAL                         R7 0
       92 FASTCALL2                        STRING_BYTE R7 R3 ; [+4]
       94 MOVE                             R8 R3
       95 GETIMPORT                        R6 K2 [string.byte]
       97 CALL                             R6 2 1
       98 GETTABLE                         R4 R5 R6
       99 JUMPIF                           R4 ; [+1]
      100 RETURN                           R0 1
      101 SUBK                             R0 R3 K3 [1]
      102 JUMPBACK                         ; [-89]
      103 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        STRING_BYTE R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [string.byte]
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 1
        8 JUMPIFEQ                         R1 R2 ; [+3]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 LOADN                            R1 0
       13 ADDK                             R2 R0 K3 [1]
       14 GETUPVAL                         R4 0
       15 FASTCALL2                        STRING_BYTE R4 R2 ; [+4]
       17 MOVE                             R5 R2
       18 GETIMPORT                        R3 K2 [string.byte]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 2
       22 JUMPIFNOTEQ                      R3 R4 ; [+4]
       24 ADDK                             R1 R1 K3 [1]
       25 ADDK                             R2 R2 K3 [1]
       26 JUMPBACK                         ; [-13]
       27 GETUPVAL                         R3 3
       28 JUMPIFNOTLT                      R3 R2 ; [+2]
       30 SETUPVAL                         R2 3
       31 GETUPVAL                         R4 0
       32 FASTCALL2                        STRING_BYTE R4 R2 ; [+4]
       34 MOVE                             R5 R2
       35 GETIMPORT                        R3 K2 [string.byte]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R4 1
       39 JUMPIFNOTEQ                      R3 R4 ; [+2]
       41 RETURN                           R1 1
       42 LOADNIL                          R3
       43 RETURN                           R3 1

PROTO_8:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 JUMPIFNOTLE                      R1 R2 ; [+13]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 FASTCALL2                        STRING_BYTE R5 R1 ; [+4]
        8 MOVE                             R6 R1
        9 GETIMPORT                        R4 K2 [string.byte]
       11 CALL                             R4 2 1
       12 GETTABLE                         R2 R3 R4
       13 JUMPIFNOT                        R2 ; [+2]
       14 ADDK                             R1 R1 K3 [1]
       15 JUMPBACK                         ; [-15]
       16 GETUPVAL                         R2 3
       17 JUMPIFNOTLT                      R2 R1 ; [+2]
       19 SETUPVAL                         R1 3
       20 MOVE                             R0 R1
       21 GETUPVAL                         R2 2
       22 FASTCALL2                        STRING_BYTE R2 R0 ; [+4]
       24 MOVE                             R3 R0
       25 GETIMPORT                        R1 K2 [string.byte]
       27 CALL                             R1 2 1
       28 GETUPVAL                         R2 4
       29 JUMPIFNOTEQ                      R1 R2 ; [+161]
       31 ADDK                             R1 R0 K3 [1]
       32 GETUPVAL                         R2 3
       33 JUMPIFNOTLT                      R2 R1 ; [+3]
       35 ADDK                             R1 R0 K3 [1]
       36 SETUPVAL                         R1 3
       37 GETUPVAL                         R2 2
       38 ADDK                             R3 R0 K3 [1]
       39 FASTCALL2                        STRING_BYTE R2 R3 ; [+3]
       41 GETIMPORT                        R1 K2 [string.byte]
       43 CALL                             R1 2 1
       44 GETUPVAL                         R2 4
       45 JUMPIFNOTEQ                      R1 R2 ; [+145]
       47 ADDK                             R2 R0 K4 [2]
       48 GETUPVAL                         R4 2
       49 FASTCALL2                        STRING_BYTE R4 R2 ; [+4]
       51 MOVE                             R5 R2
       52 GETIMPORT                        R3 K2 [string.byte]
       54 CALL                             R3 2 1
       55 GETUPVAL                         R4 5
       56 JUMPIFEQ                         R3 R4 ; [+3]
       58 LOADNIL                          R1
       59 JUMP                             ; [+32]
       60 LOADN                            R3 0
       61 ADDK                             R4 R2 K3 [1]
       62 GETUPVAL                         R6 2
       63 FASTCALL2                        STRING_BYTE R6 R4 ; [+4]
       65 MOVE                             R7 R4
       66 GETIMPORT                        R5 K2 [string.byte]
       68 CALL                             R5 2 1
       69 GETUPVAL                         R6 6
       70 JUMPIFNOTEQ                      R5 R6 ; [+4]
       72 ADDK                             R3 R3 K3 [1]
       73 ADDK                             R4 R4 K3 [1]
       74 JUMPBACK                         ; [-13]
       75 GETUPVAL                         R5 3
       76 JUMPIFNOTLT                      R5 R4 ; [+2]
       78 SETUPVAL                         R4 3
       79 GETUPVAL                         R6 2
       80 FASTCALL2                        STRING_BYTE R6 R4 ; [+4]
       82 MOVE                             R7 R4
       83 GETIMPORT                        R5 K2 [string.byte]
       85 CALL                             R5 2 1
       86 GETUPVAL                         R6 5
       87 JUMPIFNOTEQ                      R5 R6 ; [+3]
       89 MOVE                             R1 R3
       90 JUMP                             ; [+1]
       91 LOADNIL                          R1
       92 JUMPIFEQKNIL                     R1 ; [+55]
       94 LOADK                            R3 K5 ["]"]
       95 GETIMPORT                        R6 K7 [string.rep]
       97 LOADK                            R7 K8 ["="]
       98 MOVE                             R8 R1
       99 CALL                             R6 2 1
      100 MOVE                             R4 R6
      101 LOADK                            R5 K5 ["]"]
      102 CONCAT                           R2 R3 R5
      103 GETIMPORT                        R3 K10 [string.find]
      105 GETUPVAL                         R4 2
      106 MOVE                             R5 R2
      107 ADDK                             R8 R0 K4 [2]
      108 ADD                              R7 R8 R1
      109 ADDK                             R6 R7 K4 [2]
      110 LOADB                            R7 1
      111 CALL                             R3 4 2
      112 JUMPIFNOTEQKNIL                  R4 ; [+9]
      114 GETUPVAL                         R5 0
      115 GETUPVAL                         R6 3
      116 JUMPIFNOTLT                      R6 R5 ; [+3]
      118 GETUPVAL                         R5 0
      119 SETUPVAL                         R5 3
      120 LOADNIL                          R5
      121 RETURN                           R5 1
      122 GETUPVAL                         R5 3
      123 JUMPIFNOTLT                      R5 R4 ; [+2]
      125 SETUPVAL                         R4 3
      126 ADDK                             R5 R4 K3 [1]
      127 GETUPVAL                         R6 0
      128 JUMPIFNOTLE                      R5 R6 ; [+13]
      130 GETUPVAL                         R7 1
      131 GETUPVAL                         R9 2
      132 FASTCALL2                        STRING_BYTE R9 R5 ; [+4]
      134 MOVE                             R10 R5
      135 GETIMPORT                        R8 K2 [string.byte]
      137 CALL                             R8 2 1
      138 GETTABLE                         R6 R7 R8
      139 JUMPIFNOT                        R6 ; [+2]
      140 ADDK                             R5 R5 K3 [1]
      141 JUMPBACK                         ; [-15]
      142 GETUPVAL                         R6 3
      143 JUMPIFNOTLT                      R6 R5 ; [+2]
      145 SETUPVAL                         R5 3
      146 MOVE                             R0 R5
      147 JUMP                             ; [+42]
      148 GETIMPORT                        R2 K10 [string.find]
      150 GETUPVAL                         R3 2
      151 LOADK                            R4 K11 ["\n"]
      152 ADDK                             R5 R0 K4 [2]
      153 LOADB                            R6 1
      154 CALL                             R2 4 1
      155 JUMPIFNOTEQKNIL                  R2 ; [+9]
      157 GETUPVAL                         R3 0
      158 GETUPVAL                         R4 3
      159 JUMPIFNOTLT                      R4 R3 ; [+3]
      161 GETUPVAL                         R3 0
      162 SETUPVAL                         R3 3
      163 LOADNIL                          R3
      164 RETURN                           R3 1
      165 GETUPVAL                         R3 3
      166 JUMPIFNOTLT                      R3 R2 ; [+2]
      168 SETUPVAL                         R2 3
      169 ADDK                             R3 R2 K3 [1]
      170 GETUPVAL                         R4 0
      171 JUMPIFNOTLE                      R3 R4 ; [+13]
      173 GETUPVAL                         R5 1
      174 GETUPVAL                         R7 2
      175 FASTCALL2                        STRING_BYTE R7 R3 ; [+4]
      177 MOVE                             R8 R3
      178 GETIMPORT                        R6 K2 [string.byte]
      180 CALL                             R6 2 1
      181 GETTABLE                         R4 R5 R6
      182 JUMPIFNOT                        R4 ; [+2]
      183 ADDK                             R3 R3 K3 [1]
      184 JUMPBACK                         ; [-15]
      185 GETUPVAL                         R4 3
      186 JUMPIFNOTLT                      R4 R3 ; [+2]
      188 SETUPVAL                         R3 3
      189 MOVE                             R0 R3
      190 JUMPBACK                         ; [-170]
      191 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+54]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 JUMPIFNOTLE                      R0 R1 ; [+51]
        6 GETUPVAL                         R0 3
        7 JUMPIFNOTEQKN                    R0 K0 [0] ; [+48]
        9 GETUPVAL                         R0 4
       10 JUMPIF                           R0 ; [+45]
       11 GETUPVAL                         R0 5
       12 JUMPIF                           R0 ; [+43]
       13 GETUPVAL                         R0 6
       14 GETUPVAL                         R1 7
       15 CALL                             R0 1 1
       16 JUMPIFEQKNIL                     R0 ; [+29]
       18 GETUPVAL                         R2 8
       19 FASTCALL2                        STRING_BYTE R2 R0 ; [+4]
       21 MOVE                             R3 R0
       22 GETIMPORT                        R1 K3 [string.byte]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 9
       26 JUMPIFEQ                         R1 R2 ; [+4]
       28 GETUPVAL                         R2 10
       29 JUMPIFNOTEQ                      R1 R2 ; [+2]
       31 RETURN                           R0 0
       32 GETUPVAL                         R2 11
       33 JUMPIFNOTEQ                      R1 R2 ; [+12]
       35 GETUPVAL                         R3 8
       36 ADDK                             R4 R0 K4 [1]
       37 FASTCALL2                        STRING_BYTE R3 R4 ; [+3]
       39 GETIMPORT                        R2 K3 [string.byte]
       41 CALL                             R2 2 1
       42 GETUPVAL                         R3 12
       43 JUMPIFNOTEQ                      R2 R3 ; [+2]
       45 RETURN                           R0 0
       46 LOADB                            R1 0
       47 SETUPVAL                         R1 0
       48 LOADN                            R1 0
       49 SETUPVAL                         R1 3
       50 LOADB                            R1 0
       51 SETUPVAL                         R1 13
       52 LOADNIL                          R1
       53 SETUPVAL                         R1 14
       54 LOADB                            R1 0
       55 SETUPVAL                         R1 5
       56 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 2
        8 FASTCALL2                        STRING_BYTE R2 R0 ; [+4]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R1 K2 [string.byte]
       13 CALL                             R1 2 1
       14 JUMPIFNOTEQKNIL                  R1 ; [+3]
       16 LOADB                            R2 0
       17 RETURN                           R2 1
       18 GETUPVAL                         R2 3
       19 JUMPIFEQ                         R1 R2 ; [+4]
       21 GETUPVAL                         R2 4
       22 JUMPIFNOTEQ                      R1 R2 ; [+3]
       24 LOADB                            R2 1
       25 RETURN                           R2 1
       26 GETUPVAL                         R2 5
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 JUMPIFNOTEQKNIL                  R2 ; [+3]
       31 LOADB                            R3 0
       32 RETURN                           R3 1
       33 GETUPVAL                         R3 0
       34 MOVE                             R4 R2
       35 CALL                             R3 1 1
       36 JUMPIFNOTEQKNIL                  R3 ; [+3]
       38 LOADB                            R4 1
       39 RETURN                           R4 1
       40 GETUPVAL                         R5 2
       41 FASTCALL2                        STRING_BYTE R5 R3 ; [+4]
       43 MOVE                             R6 R3
       44 GETIMPORT                        R4 K2 [string.byte]
       46 CALL                             R4 2 1
       47 LOADB                            R5 0
       48 GETUPVAL                         R6 3
       49 JUMPIFEQ                         R4 R6 ; [+22]
       51 LOADB                            R5 0
       52 GETUPVAL                         R6 4
       53 JUMPIFEQ                         R4 R6 ; [+18]
       55 LOADB                            R5 0
       56 GETUPVAL                         R6 6
       57 JUMPIFEQ                         R4 R6 ; [+14]
       59 LOADB                            R5 0
       60 GETUPVAL                         R6 7
       61 JUMPIFEQ                         R4 R6 ; [+10]
       63 LOADB                            R5 0
       64 GETUPVAL                         R6 8
       65 JUMPIFEQ                         R4 R6 ; [+6]
       67 GETUPVAL                         R6 9
       68 JUMPIFNOTEQ                      R4 R6 ; [+2]
       70 LOADB                            R5 0 +1
       71 LOADB                            R5 1
       72 RETURN                           R5 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOTLE                      R1 R2 ; [+13]
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R5 3
        6 FASTCALL2                        STRING_BYTE R5 R1 ; [+4]
        8 MOVE                             R6 R1
        9 GETIMPORT                        R4 K2 [string.byte]
       11 CALL                             R4 2 1
       12 GETTABLE                         R2 R3 R4
       13 JUMPIFNOT                        R2 ; [+2]
       14 ADDK                             R1 R1 K3 [1]
       15 JUMPBACK                         ; [-15]
       16 GETUPVAL                         R2 4
       17 JUMPIFNOTLT                      R2 R1 ; [+2]
       19 SETUPVAL                         R1 4
       20 MOVE                             R0 R1
       21 GETUPVAL                         R2 3
       22 FASTCALL2                        STRING_BYTE R2 R0 ; [+4]
       24 MOVE                             R3 R0
       25 GETIMPORT                        R1 K2 [string.byte]
       27 CALL                             R1 2 1
       28 JUMPIFEQKNIL                     R1 ; [+4]
       30 GETUPVAL                         R3 5
       31 GETTABLE                         R2 R3 R1
       32 JUMPIF                           R2 ; [+2]
       33 LOADB                            R2 0
       34 RETURN                           R2 1
       35 GETUPVAL                         R2 1
       36 JUMPIFNOTLE                      R0 R2 ; [+13]
       38 GETUPVAL                         R3 6
       39 GETUPVAL                         R5 3
       40 FASTCALL2                        STRING_BYTE R5 R0 ; [+4]
       42 MOVE                             R6 R0
       43 GETIMPORT                        R4 K2 [string.byte]
       45 CALL                             R4 2 1
       46 GETTABLE                         R2 R3 R4
       47 JUMPIFNOT                        R2 ; [+2]
       48 ADDK                             R0 R0 K3 [1]
       49 JUMPBACK                         ; [-15]
       50 GETUPVAL                         R2 4
       51 JUMPIFNOTLT                      R2 R0 ; [+2]
       53 SETUPVAL                         R0 4
       54 MOVE                             R2 R0
       55 GETUPVAL                         R3 1
       56 JUMPIFNOTLE                      R2 R3 ; [+13]
       58 GETUPVAL                         R4 2
       59 GETUPVAL                         R6 3
       60 FASTCALL2                        STRING_BYTE R6 R2 ; [+4]
       62 MOVE                             R7 R2
       63 GETIMPORT                        R5 K2 [string.byte]
       65 CALL                             R5 2 1
       66 GETTABLE                         R3 R4 R5
       67 JUMPIFNOT                        R3 ; [+2]
       68 ADDK                             R2 R2 K3 [1]
       69 JUMPBACK                         ; [-15]
       70 GETUPVAL                         R3 4
       71 JUMPIFNOTLT                      R3 R2 ; [+2]
       73 SETUPVAL                         R2 4
       74 MOVE                             R0 R2
       75 GETUPVAL                         R3 3
       76 FASTCALL2                        STRING_BYTE R3 R0 ; [+4]
       78 MOVE                             R4 R0
       79 GETIMPORT                        R2 K2 [string.byte]
       81 CALL                             R2 2 1
       82 GETUPVAL                         R3 7
       83 JUMPIFNOTEQ                      R2 R3 ; [+48]
       85 LOADN                            R2 0
       86 GETUPVAL                         R3 1
       87 JUMPIFNOTLE                      R0 R3 ; [+23]
       89 GETUPVAL                         R4 3
       90 FASTCALL2                        STRING_BYTE R4 R0 ; [+4]
       92 MOVE                             R5 R0
       93 GETIMPORT                        R3 K2 [string.byte]
       95 CALL                             R3 2 1
       96 GETUPVAL                         R4 7
       97 JUMPIFNOTEQ                      R3 R4 ; [+3]
       99 ADDK                             R2 R2 K3 [1]
      100 JUMP                             ; [+8]
      101 GETUPVAL                         R4 8
      102 JUMPIFNOTEQ                      R3 R4 ; [+6]
      104 SUBK                             R2 R2 K3 [1]
      105 JUMPIFNOTEQKN                    R2 K4 [0] ; [+3]
      107 ADDK                             R0 R0 K3 [1]
      108 JUMP                             ; [+2]
      109 ADDK                             R0 R0 K3 [1]
      110 JUMPBACK                         ; [-25]
      111 MOVE                             R3 R0
      112 GETUPVAL                         R4 1
      113 JUMPIFNOTLE                      R3 R4 ; [+13]
      115 GETUPVAL                         R5 2
      116 GETUPVAL                         R7 3
      117 FASTCALL2                        STRING_BYTE R7 R3 ; [+4]
      119 MOVE                             R8 R3
      120 GETIMPORT                        R6 K2 [string.byte]
      122 CALL                             R6 2 1
      123 GETTABLE                         R4 R5 R6
      124 JUMPIFNOT                        R4 ; [+2]
      125 ADDK                             R3 R3 K3 [1]
      126 JUMPBACK                         ; [-15]
      127 GETUPVAL                         R4 4
      128 JUMPIFNOTLT                      R4 R3 ; [+2]
      130 SETUPVAL                         R3 4
      131 MOVE                             R0 R3
      132 ADDK                             R2 R0 K3 [1]
      133 GETUPVAL                         R3 4
      134 JUMPIFNOTLT                      R3 R2 ; [+3]
      136 ADDK                             R2 R0 K3 [1]
      137 SETUPVAL                         R2 4
      138 LOADB                            R2 0
      139 GETUPVAL                         R4 3
      140 FASTCALL2                        STRING_BYTE R4 R0 ; [+4]
      142 MOVE                             R5 R0
      143 GETIMPORT                        R3 K2 [string.byte]
      145 CALL                             R3 2 1
      146 GETUPVAL                         R4 9
      147 JUMPIFNOTEQ                      R3 R4 ; [+13]
      149 GETUPVAL                         R4 3
      150 ADDK                             R5 R0 K3 [1]
      151 FASTCALL2                        STRING_BYTE R4 R5 ; [+3]
      153 GETIMPORT                        R3 K2 [string.byte]
      155 CALL                             R3 2 1
      156 GETUPVAL                         R4 9
      157 JUMPIFNOTEQ                      R3 R4 ; [+2]
      159 LOADB                            R2 0 +1
      160 LOADB                            R2 1
      161 RETURN                           R2 1

PROTO_12:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 1
        4 ADDK                             R1 R1 K0 [1]
        5 SETUPVAL                         R1 1
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 JUMPIFNOTLE                      R1 R2 ; [+15]
       10 GETUPVAL                         R2 3
       11 GETUPVAL                         R4 4
       12 GETUPVAL                         R5 1
       13 FASTCALL2                        STRING_BYTE R4 R5 ; [+3]
       15 GETIMPORT                        R3 K3 [string.byte]
       17 CALL                             R3 2 1
       18 GETTABLE                         R1 R2 R3
       19 JUMPIFNOT                        R1 ; [+4]
       20 GETUPVAL                         R1 1
       21 ADDK                             R1 R1 K0 [1]
       22 SETUPVAL                         R1 1
       23 JUMPBACK                         ; [-18]
       24 GETUPVAL                         R2 4
       25 GETUPVAL                         R5 1
       26 SUBK                             R4 R5 K0 [1]
       27 FASTCALL3                        STRING_SUB R2 R0 R4
       29 MOVE                             R3 R0
       30 GETIMPORT                        R1 K5 [string.sub]
       32 CALL                             R1 3 1
       33 LOADB                            R2 0
       34 SETUPVAL                         R2 5
       35 GETUPVAL                         R2 6
       36 JUMPIFNOT                        R2 ; [+54]
       37 LOADB                            R2 0
       38 SETUPVAL                         R2 6
       39 MOVE                             R2 R1
       40 GETUPVAL                         R3 7
       41 JUMPIFEQKNIL                     R3 ; [+18]
       43 GETUPVAL                         R3 8
       44 JUMPIFNOT                        R3 ; [+7]
       45 GETUPVAL                         R3 9
       46 GETUPVAL                         R4 7
       47 GETUPVAL                         R5 10
       48 GETUPVAL                         R6 11
       49 GETUPVAL                         R7 12
       50 CALL                             R3 4 0
       51 JUMP                             ; [+4]
       52 GETUPVAL                         R3 9
       53 GETUPVAL                         R4 7
       54 GETUPVAL                         R5 10
       55 CALL                             R3 2 0
       56 LOADNIL                          R3
       57 LOADK                            R4 K6 [""]
       58 SETUPVAL                         R3 7
       59 SETUPVAL                         R4 10
       60 GETUPVAL                         R3 14
       61 GETUPVAL                         R4 15
       62 SETUPVAL                         R3 13
       63 SETUPVAL                         R4 14
       64 SETUPVAL                         R2 15
       65 GETUPVAL                         R3 16
       66 JUMPIFEQKS                       R3 K6 [""] ; [+6]
       68 GETUPVAL                         R3 16
       69 MOVE                             R4 R2
       70 CONCAT                           R2 R3 R4
       71 LOADK                            R3 K6 [""]
       72 SETUPVAL                         R3 16
       73 LOADK                            R3 K7 ["type"]
       74 SETUPVAL                         R3 7
       75 SETUPVAL                         R2 10
       76 LOADB                            R2 1
       77 SETUPVAL                         R2 17
       78 GETUPVAL                         R2 19
       79 SETUPVAL                         R2 18
       80 LOADN                            R2 0
       81 SETUPVAL                         R2 20
       82 LOADB                            R2 1
       83 SETUPVAL                         R2 21
       84 LOADNIL                          R2
       85 SETUPVAL                         R2 22
       86 LOADB                            R2 1
       87 SETUPVAL                         R2 23
       88 LOADB                            R2 1
       89 SETUPVAL                         R2 5
       90 RETURN                           R0 0
       91 GETUPVAL                         R3 24
       92 GETTABLE                         R2 R3 R1
       93 JUMPIFEQKNIL                     R2 ; [+112]
       95 GETUPVAL                         R2 17
       96 JUMPIFNOT                        R2 ; [+64]
       97 JUMPIFNOTEQKS                    R1 K8 ["typeof"] ; [+43]
       99 MOVE                             R2 R1
      100 GETUPVAL                         R3 7
      101 JUMPIFEQKNIL                     R3 ; [+18]
      103 GETUPVAL                         R3 8
      104 JUMPIFNOT                        R3 ; [+7]
      105 GETUPVAL                         R3 9
      106 GETUPVAL                         R4 7
      107 GETUPVAL                         R5 10
      108 GETUPVAL                         R6 11
      109 GETUPVAL                         R7 12
      110 CALL                             R3 4 0
      111 JUMP                             ; [+4]
      112 GETUPVAL                         R3 9
      113 GETUPVAL                         R4 7
      114 GETUPVAL                         R5 10
      115 CALL                             R3 2 0
      116 LOADNIL                          R3
      117 LOADK                            R4 K6 [""]
      118 SETUPVAL                         R3 7
      119 SETUPVAL                         R4 10
      120 GETUPVAL                         R3 14
      121 GETUPVAL                         R4 15
      122 SETUPVAL                         R3 13
      123 SETUPVAL                         R4 14
      124 SETUPVAL                         R2 15
      125 GETUPVAL                         R3 16
      126 JUMPIFEQKS                       R3 K6 [""] ; [+6]
      128 GETUPVAL                         R3 16
      129 MOVE                             R4 R2
      130 CONCAT                           R2 R3 R4
      131 LOADK                            R3 K6 [""]
      132 SETUPVAL                         R3 16
      133 LOADK                            R3 K9 ["keyword"]
      134 SETUPVAL                         R3 7
      135 SETUPVAL                         R2 10
      136 LOADB                            R2 1
      137 SETUPVAL                         R2 0
      138 LOADB                            R2 0
      139 SETUPVAL                         R2 21
      140 RETURN                           R0 0
      141 JUMPIFEQKS                       R1 K10 ["nil"] ; [+16]
      143 JUMPIFEQKS                       R1 K11 ["true"] ; [+14]
      145 JUMPIFEQKS                       R1 K12 ["false"] ; [+12]
      147 LOADB                            R2 0
      148 SETUPVAL                         R2 17
      149 LOADN                            R2 0
      150 SETUPVAL                         R2 20
      151 LOADB                            R2 0
      152 SETUPVAL                         R2 21
      153 LOADNIL                          R2
      154 SETUPVAL                         R2 22
      155 LOADB                            R2 0
      156 SETUPVAL                         R2 23
      157 JUMP                             ; [+10]
      158 LOADB                            R2 0
      159 SETUPVAL                         R2 21
      160 JUMP                             ; [+7]
      161 JUMPIFNOTEQKS                    R1 K7 ["type"] ; [+6]
      163 GETUPVAL                         R2 25
      164 CALL                             R2 0 1
      165 JUMPIFNOT                        R2 ; [+2]
      166 LOADB                            R2 1
      167 SETUPVAL                         R2 6
      168 MOVE                             R2 R1
      169 GETUPVAL                         R3 7
      170 JUMPIFEQKNIL                     R3 ; [+18]
      172 GETUPVAL                         R3 8
      173 JUMPIFNOT                        R3 ; [+7]
      174 GETUPVAL                         R3 9
      175 GETUPVAL                         R4 7
      176 GETUPVAL                         R5 10
      177 GETUPVAL                         R6 11
      178 GETUPVAL                         R7 12
      179 CALL                             R3 4 0
      180 JUMP                             ; [+4]
      181 GETUPVAL                         R3 9
      182 GETUPVAL                         R4 7
      183 GETUPVAL                         R5 10
      184 CALL                             R3 2 0
      185 LOADNIL                          R3
      186 LOADK                            R4 K6 [""]
      187 SETUPVAL                         R3 7
      188 SETUPVAL                         R4 10
      189 GETUPVAL                         R3 14
      190 GETUPVAL                         R4 15
      191 SETUPVAL                         R3 13
      192 SETUPVAL                         R4 14
      193 SETUPVAL                         R2 15
      194 GETUPVAL                         R3 16
      195 JUMPIFEQKS                       R3 K6 [""] ; [+6]
      197 GETUPVAL                         R3 16
      198 MOVE                             R4 R2
      199 CONCAT                           R2 R3 R4
      200 LOADK                            R3 K6 [""]
      201 SETUPVAL                         R3 16
      202 LOADK                            R3 K9 ["keyword"]
      203 SETUPVAL                         R3 7
      204 SETUPVAL                         R2 10
      205 RETURN                           R0 0
      206 GETUPVAL                         R2 17
      207 JUMPIFNOT                        R2 ; [+55]
      208 GETUPVAL                         R2 22
      209 JUMPIFNOTEQKNIL                  R2 ; [+53]
      211 GETUPVAL                         R2 21
      212 JUMPIFNOT                        R2 ; [+40]
      213 LOADB                            R2 0
      214 SETUPVAL                         R2 21
      215 MOVE                             R2 R1
      216 GETUPVAL                         R3 7
      217 JUMPIFEQKNIL                     R3 ; [+18]
      219 GETUPVAL                         R3 8
      220 JUMPIFNOT                        R3 ; [+7]
      221 GETUPVAL                         R3 9
      222 GETUPVAL                         R4 7
      223 GETUPVAL                         R5 10
      224 GETUPVAL                         R6 11
      225 GETUPVAL                         R7 12
      226 CALL                             R3 4 0
      227 JUMP                             ; [+4]
      228 GETUPVAL                         R3 9
      229 GETUPVAL                         R4 7
      230 GETUPVAL                         R5 10
      231 CALL                             R3 2 0
      232 LOADNIL                          R3
      233 LOADK                            R4 K6 [""]
      234 SETUPVAL                         R3 7
      235 SETUPVAL                         R4 10
      236 GETUPVAL                         R3 14
      237 GETUPVAL                         R4 15
      238 SETUPVAL                         R3 13
      239 SETUPVAL                         R4 14
      240 SETUPVAL                         R2 15
      241 GETUPVAL                         R3 16
      242 JUMPIFEQKS                       R3 K6 [""] ; [+6]
      244 GETUPVAL                         R3 16
      245 MOVE                             R4 R2
      246 CONCAT                           R2 R3 R4
      247 LOADK                            R3 K6 [""]
      248 SETUPVAL                         R3 16
      249 LOADK                            R3 K7 ["type"]
      250 SETUPVAL                         R3 7
      251 SETUPVAL                         R2 10
      252 RETURN                           R0 0
      253 LOADB                            R2 0
      254 SETUPVAL                         R2 17
      255 LOADN                            R2 0
      256 SETUPVAL                         R2 20
      257 LOADB                            R2 0
      258 SETUPVAL                         R2 21
      259 LOADNIL                          R2
      260 SETUPVAL                         R2 22
      261 LOADB                            R2 0
      262 SETUPVAL                         R2 23
      263 GETUPVAL                         R3 26
      264 GETTABLE                         R2 R3 R1
      265 JUMPIFEQKNIL                     R2 ; [+39]
      267 MOVE                             R2 R1
      268 GETUPVAL                         R3 7
      269 JUMPIFEQKNIL                     R3 ; [+18]
      271 GETUPVAL                         R3 8
      272 JUMPIFNOT                        R3 ; [+7]
      273 GETUPVAL                         R3 9
      274 GETUPVAL                         R4 7
      275 GETUPVAL                         R5 10
      276 GETUPVAL                         R6 11
      277 GETUPVAL                         R7 12
      278 CALL                             R3 4 0
      279 JUMP                             ; [+4]
      280 GETUPVAL                         R3 9
      281 GETUPVAL                         R4 7
      282 GETUPVAL                         R5 10
      283 CALL                             R3 2 0
      284 LOADNIL                          R3
      285 LOADK                            R4 K6 [""]
      286 SETUPVAL                         R3 7
      287 SETUPVAL                         R4 10
      288 GETUPVAL                         R3 14
      289 GETUPVAL                         R4 15
      290 SETUPVAL                         R3 13
      291 SETUPVAL                         R4 14
      292 SETUPVAL                         R2 15
      293 GETUPVAL                         R3 16
      294 JUMPIFEQKS                       R3 K6 [""] ; [+6]
      296 GETUPVAL                         R3 16
      297 MOVE                             R4 R2
      298 CONCAT                           R2 R3 R4
      299 LOADK                            R3 K6 [""]
      300 SETUPVAL                         R3 16
      301 LOADK                            R3 K13 ["builtin"]
      302 SETUPVAL                         R3 7
      303 SETUPVAL                         R2 10
      304 RETURN                           R0 0
      305 GETUPVAL                         R2 15
      306 JUMPIFNOTEQKS                    R2 K14 ["."] ; [+50]
      308 GETUPVAL                         R2 13
      309 JUMPIFEQKS                       R2 K14 ["."] ; [+47]
      311 GETUPVAL                         R3 27
      312 GETUPVAL                         R4 14
      313 GETTABLE                         R2 R3 R4
      314 JUMPIFEQKNIL                     R2 ; [+42]
      316 GETTABLE                         R3 R2 R1
      317 JUMPIFEQKNIL                     R3 ; [+39]
      319 MOVE                             R3 R1
      320 GETUPVAL                         R4 7
      321 JUMPIFEQKNIL                     R4 ; [+18]
      323 GETUPVAL                         R4 8
      324 JUMPIFNOT                        R4 ; [+7]
      325 GETUPVAL                         R4 9
      326 GETUPVAL                         R5 7
      327 GETUPVAL                         R6 10
      328 GETUPVAL                         R7 11
      329 GETUPVAL                         R8 12
      330 CALL                             R4 4 0
      331 JUMP                             ; [+4]
      332 GETUPVAL                         R4 9
      333 GETUPVAL                         R5 7
      334 GETUPVAL                         R6 10
      335 CALL                             R4 2 0
      336 LOADNIL                          R4
      337 LOADK                            R5 K6 [""]
      338 SETUPVAL                         R4 7
      339 SETUPVAL                         R5 10
      340 GETUPVAL                         R4 14
      341 GETUPVAL                         R5 15
      342 SETUPVAL                         R4 13
      343 SETUPVAL                         R5 14
      344 SETUPVAL                         R3 15
      345 GETUPVAL                         R4 16
      346 JUMPIFEQKS                       R4 K6 [""] ; [+6]
      348 GETUPVAL                         R4 16
      349 MOVE                             R5 R3
      350 CONCAT                           R3 R4 R5
      351 LOADK                            R4 K6 [""]
      352 SETUPVAL                         R4 16
      353 LOADK                            R4 K13 ["builtin"]
      354 SETUPVAL                         R4 7
      355 SETUPVAL                         R3 10
      356 RETURN                           R0 0
      357 MOVE                             R2 R1
      358 GETUPVAL                         R3 7
      359 JUMPIFEQKNIL                     R3 ; [+18]
      361 GETUPVAL                         R3 8
      362 JUMPIFNOT                        R3 ; [+7]
      363 GETUPVAL                         R3 9
      364 GETUPVAL                         R4 7
      365 GETUPVAL                         R5 10
      366 GETUPVAL                         R6 11
      367 GETUPVAL                         R7 12
      368 CALL                             R3 4 0
      369 JUMP                             ; [+4]
      370 GETUPVAL                         R3 9
      371 GETUPVAL                         R4 7
      372 GETUPVAL                         R5 10
      373 CALL                             R3 2 0
      374 LOADNIL                          R3
      375 LOADK                            R4 K6 [""]
      376 SETUPVAL                         R3 7
      377 SETUPVAL                         R4 10
      378 GETUPVAL                         R3 14
      379 GETUPVAL                         R4 15
      380 SETUPVAL                         R3 13
      381 SETUPVAL                         R4 14
      382 SETUPVAL                         R2 15
      383 GETUPVAL                         R3 16
      384 JUMPIFEQKS                       R3 K6 [""] ; [+6]
      386 GETUPVAL                         R3 16
      387 MOVE                             R4 R2
      388 CONCAT                           R2 R3 R4
      389 LOADK                            R3 K6 [""]
      390 SETUPVAL                         R3 16
      391 LOADK                            R3 K15 ["iden"]
      392 SETUPVAL                         R3 7
      393 SETUPVAL                         R2 10
      394 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 1
        4 LOADB                            R0 0
        5 SETUPVAL                         R0 2
        6 GETUPVAL                         R0 3
        7 GETUPVAL                         R1 3
        8 ADDK                             R1 R1 K0 [1]
        9 SETUPVAL                         R1 3
       10 GETUPVAL                         R2 4
       11 GETUPVAL                         R3 3
       12 FASTCALL2                        STRING_BYTE R2 R3 ; [+3]
       14 GETIMPORT                        R1 K3 [string.byte]
       16 CALL                             R1 2 1
       17 JUMPIFEQKNIL                     R1 ; [+11]
       19 GETUPVAL                         R3 5
       20 GETTABLE                         R2 R3 R1
       21 JUMPIF                           R2 ; [+6]
       22 GETUPVAL                         R2 6
       23 JUMPIFEQ                         R1 R2 ; [+4]
       25 GETUPVAL                         R2 7
       26 JUMPIFNOTEQ                      R1 R2 ; [+2]
       28 JUMPBACK                         ; [-22]
       29 GETUPVAL                         R2 4
       30 GETUPVAL                         R3 3
       31 FASTCALL2                        STRING_BYTE R2 R3 ; [+3]
       33 GETIMPORT                        R1 K3 [string.byte]
       35 CALL                             R1 2 1
       36 GETUPVAL                         R2 8
       37 JUMPIFEQ                         R1 R2 ; [+4]
       39 GETUPVAL                         R2 9
       40 JUMPIFNOTEQ                      R1 R2 ; [+20]
       42 GETUPVAL                         R2 3
       43 ADDK                             R2 R2 K0 [1]
       44 SETUPVAL                         R2 3
       45 GETUPVAL                         R3 4
       46 GETUPVAL                         R4 3
       47 FASTCALL2                        STRING_BYTE R3 R4 ; [+3]
       49 GETIMPORT                        R2 K3 [string.byte]
       51 CALL                             R2 2 1
       52 GETUPVAL                         R3 10
       53 JUMPIFEQ                         R2 R3 ; [+4]
       55 GETUPVAL                         R3 11
       56 JUMPIFNOTEQ                      R2 R3 ; [+4]
       58 GETUPVAL                         R3 3
       59 ADDK                             R3 R3 K0 [1]
       60 SETUPVAL                         R3 3
       61 GETUPVAL                         R2 3
       62 GETUPVAL                         R3 12
       63 JUMPIFNOTLE                      R2 R3 ; [+15]
       65 GETUPVAL                         R3 13
       66 GETUPVAL                         R5 4
       67 GETUPVAL                         R6 3
       68 FASTCALL2                        STRING_BYTE R5 R6 ; [+3]
       70 GETIMPORT                        R4 K3 [string.byte]
       72 CALL                             R4 2 1
       73 GETTABLE                         R2 R3 R4
       74 JUMPIFNOT                        R2 ; [+4]
       75 GETUPVAL                         R2 3
       76 ADDK                             R2 R2 K0 [1]
       77 SETUPVAL                         R2 3
       78 JUMPBACK                         ; [-18]
       79 GETUPVAL                         R3 4
       80 GETUPVAL                         R6 3
       81 SUBK                             R5 R6 K0 [1]
       82 FASTCALL3                        STRING_SUB R3 R0 R5
       84 MOVE                             R4 R0
       85 GETIMPORT                        R2 K5 [string.sub]
       87 CALL                             R2 3 1
       88 GETUPVAL                         R3 14
       89 JUMPIFEQKNIL                     R3 ; [+18]
       91 GETUPVAL                         R3 15
       92 JUMPIFNOT                        R3 ; [+7]
       93 GETUPVAL                         R3 16
       94 GETUPVAL                         R4 14
       95 GETUPVAL                         R5 17
       96 GETUPVAL                         R6 18
       97 GETUPVAL                         R7 19
       98 CALL                             R3 4 0
       99 JUMP                             ; [+4]
      100 GETUPVAL                         R3 16
      101 GETUPVAL                         R4 14
      102 GETUPVAL                         R5 17
      103 CALL                             R3 2 0
      104 LOADNIL                          R3
      105 LOADK                            R4 K6 [""]
      106 SETUPVAL                         R3 14
      107 SETUPVAL                         R4 17
      108 GETUPVAL                         R3 21
      109 GETUPVAL                         R4 22
      110 SETUPVAL                         R3 20
      111 SETUPVAL                         R4 21
      112 SETUPVAL                         R2 22
      113 GETUPVAL                         R3 23
      114 JUMPIFEQKS                       R3 K6 [""] ; [+6]
      116 GETUPVAL                         R3 23
      117 MOVE                             R4 R2
      118 CONCAT                           R2 R3 R4
      119 LOADK                            R3 K6 [""]
      120 SETUPVAL                         R3 23
      121 LOADK                            R3 K7 ["number"]
      122 SETUPVAL                         R3 14
      123 SETUPVAL                         R2 17
      124 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 ADDK                             R2 R3 K0 [1]
        3 FASTCALL2                        STRING_BYTE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K3 [string.byte]
        7 CALL                             R0 2 1
        8 JUMPIFNOTEQKNIL                  R0 ; [+6]
       10 GETUPVAL                         R1 1
       11 ADDK                             R1 R1 K0 [1]
       12 SETUPVAL                         R1 1
       13 LOADB                            R1 0
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 2
       16 JUMPIFNOTEQ                      R0 R1 ; [+21]
       18 GETUPVAL                         R1 1
       19 ADDK                             R1 R1 K4 [2]
       20 SETUPVAL                         R1 1
       21 GETUPVAL                         R2 0
       22 GETUPVAL                         R3 1
       23 FASTCALL2                        STRING_BYTE R2 R3 ; [+3]
       25 GETIMPORT                        R1 K3 [string.byte]
       27 CALL                             R1 2 1
       28 GETUPVAL                         R2 3
       29 JUMPIFNOTEQ                      R1 R2 ; [+6]
       31 GETUPVAL                         R1 1
       32 ADDK                             R1 R1 K0 [1]
       33 SETUPVAL                         R1 1
       34 LOADB                            R1 1
       35 RETURN                           R1 1
       36 LOADB                            R1 0
       37 RETURN                           R1 1
       38 GETUPVAL                         R1 4
       39 JUMPIFNOTEQ                      R0 R1 ; [+28]
       41 GETUPVAL                         R1 1
       42 ADDK                             R1 R1 K4 [2]
       43 SETUPVAL                         R1 1
       44 LOADB                            R1 0
       45 GETUPVAL                         R2 1
       46 GETUPVAL                         R3 5
       47 JUMPIFNOTLE                      R2 R3 ; [+19]
       49 GETUPVAL                         R3 0
       50 GETUPVAL                         R4 1
       51 FASTCALL2                        STRING_BYTE R3 R4 ; [+3]
       53 GETIMPORT                        R2 K3 [string.byte]
       55 CALL                             R2 2 1
       56 GETUPVAL                         R4 6
       57 GETTABLE                         R3 R4 R2
       58 JUMPIFNOT                        R3 ; [+8]
       59 GETUPVAL                         R3 3
       60 JUMPIFNOTEQ                      R2 R3 ; [+2]
       62 LOADB                            R1 1
       63 GETUPVAL                         R3 1
       64 ADDK                             R3 R3 K0 [1]
       65 SETUPVAL                         R3 1
       66 JUMPBACK                         ; [-22]
       67 RETURN                           R1 1
       68 GETUPVAL                         R1 1
       69 ADDK                             R1 R1 K4 [2]
       70 SETUPVAL                         R1 1
       71 GETUPVAL                         R2 3
       72 JUMPIFEQ                         R0 R2 ; [+2]
       74 LOADB                            R1 0 +1
       75 LOADB                            R1 1
       76 RETURN                           R1 1

PROTO_15:
        0 LOADB                            R1 0
        1 SETUPVAL                         R1 0
        2 LOADB                            R1 0
        3 SETUPVAL                         R1 1
        4 LOADB                            R1 0
        5 SETUPVAL                         R1 2
        6 GETUPVAL                         R1 3
        7 LOADB                            R2 0
        8 GETUPVAL                         R3 3
        9 ADDK                             R3 R3 K0 [1]
       10 SETUPVAL                         R3 3
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 4
       13 JUMPIFNOTLE                      R3 R4 ; [+36]
       15 GETUPVAL                         R4 5
       16 GETUPVAL                         R5 3
       17 FASTCALL2                        STRING_BYTE R4 R5 ; [+3]
       19 GETIMPORT                        R3 K3 [string.byte]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 6
       23 JUMPIFNOTEQ                      R3 R4 ; [+6]
       25 GETUPVAL                         R4 7
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+21]
       28 LOADB                            R2 1
       29 JUMP                             ; [+19]
       30 JUMPIFEQ                         R3 R0 ; [+7]
       32 GETUPVAL                         R4 8
       33 JUMPIFEQ                         R3 R4 ; [+4]
       35 GETUPVAL                         R4 9
       36 JUMPIFNOTEQ                      R3 R4 ; [+9]
       38 GETUPVAL                         R4 8
       39 JUMPIFNOTEQ                      R3 R4 ; [+2]
       41 LOADB                            R2 1
       42 GETUPVAL                         R4 3
       43 ADDK                             R4 R4 K0 [1]
       44 SETUPVAL                         R4 3
       45 JUMP                             ; [+4]
       46 GETUPVAL                         R4 3
       47 ADDK                             R4 R4 K0 [1]
       48 SETUPVAL                         R4 3
       49 JUMPBACK                         ; [-39]
       50 GETUPVAL                         R4 5
       51 GETUPVAL                         R7 3
       52 SUBK                             R6 R7 K0 [1]
       53 FASTCALL3                        STRING_SUB R4 R1 R6
       55 MOVE                             R5 R1
       56 GETIMPORT                        R3 K5 [string.sub]
       58 CALL                             R3 3 1
       59 GETUPVAL                         R4 10
       60 JUMPIFEQKNIL                     R4 ; [+18]
       62 GETUPVAL                         R4 11
       63 JUMPIFNOT                        R4 ; [+7]
       64 GETUPVAL                         R4 12
       65 GETUPVAL                         R5 10
       66 GETUPVAL                         R6 13
       67 GETUPVAL                         R7 14
       68 GETUPVAL                         R8 15
       69 CALL                             R4 4 0
       70 JUMP                             ; [+4]
       71 GETUPVAL                         R4 12
       72 GETUPVAL                         R5 10
       73 GETUPVAL                         R6 13
       74 CALL                             R4 2 0
       75 LOADNIL                          R4
       76 LOADK                            R5 K6 [""]
       77 SETUPVAL                         R4 10
       78 SETUPVAL                         R5 13
       79 GETUPVAL                         R4 17
       80 GETUPVAL                         R5 18
       81 SETUPVAL                         R4 16
       82 SETUPVAL                         R5 17
       83 SETUPVAL                         R3 18
       84 GETUPVAL                         R4 19
       85 JUMPIFEQKS                       R4 K6 [""] ; [+6]
       87 GETUPVAL                         R4 19
       88 MOVE                             R5 R3
       89 CONCAT                           R3 R4 R5
       90 LOADK                            R4 K6 [""]
       91 SETUPVAL                         R4 19
       92 LOADK                            R4 K1 ["string"]
       93 SETUPVAL                         R4 10
       94 SETUPVAL                         R3 13
       95 JUMPIFNOT                        R2 ; [+2]
       96 GETUPVAL                         R3 20
       97 CALL                             R3 0 0
       98 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOTEQKS                    R0 K0 ["string"] ; [+7]
        2 LOADB                            R4 0
        3 SETUPVAL                         R4 0
        4 LOADB                            R4 0
        5 SETUPVAL                         R4 1
        6 LOADB                            R4 0
        7 SETUPVAL                         R4 2
        8 LOADK                            R5 K1 ["]"]
        9 GETIMPORT                        R8 K3 [string.rep]
       11 LOADK                            R9 K4 ["="]
       12 MOVE                             R10 R2
       13 CALL                             R8 2 1
       14 MOVE                             R6 R8
       15 LOADK                            R7 K1 ["]"]
       16 CONCAT                           R4 R5 R7
       17 GETIMPORT                        R5 K6 [string.find]
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R4
       21 MOVE                             R8 R3
       22 LOADB                            R9 1
       23 CALL                             R5 4 2
       24 JUMPIFEQKNIL                     R6 ; [+4]
       26 ADDK                             R7 R6 K7 [1]
       27 SETUPVAL                         R7 4
       28 JUMP                             ; [+9]
       29 GETUPVAL                         R8 5
       30 ADDK                             R7 R8 K7 [1]
       31 SETUPVAL                         R7 4
       32 GETUPVAL                         R7 5
       33 GETUPVAL                         R8 6
       34 JUMPIFNOTLT                      R8 R7 ; [+3]
       36 GETUPVAL                         R7 5
       37 SETUPVAL                         R7 6
       38 GETUPVAL                         R8 3
       39 GETUPVAL                         R11 4
       40 SUBK                             R10 R11 K7 [1]
       41 FASTCALL3                        STRING_SUB R8 R1 R10
       43 MOVE                             R9 R1
       44 GETIMPORT                        R7 K9 [string.sub]
       46 CALL                             R7 3 1
       47 MOVE                             R8 R7
       48 GETUPVAL                         R9 7
       49 JUMPIFEQKNIL                     R9 ; [+18]
       51 GETUPVAL                         R9 8
       52 JUMPIFNOT                        R9 ; [+7]
       53 GETUPVAL                         R9 9
       54 GETUPVAL                         R10 7
       55 GETUPVAL                         R11 10
       56 GETUPVAL                         R12 11
       57 GETUPVAL                         R13 12
       58 CALL                             R9 4 0
       59 JUMP                             ; [+4]
       60 GETUPVAL                         R9 9
       61 GETUPVAL                         R10 7
       62 GETUPVAL                         R11 10
       63 CALL                             R9 2 0
       64 LOADNIL                          R9
       65 LOADK                            R10 K10 [""]
       66 SETUPVAL                         R9 7
       67 SETUPVAL                         R10 10
       68 GETUPVAL                         R9 14
       69 GETUPVAL                         R10 15
       70 SETUPVAL                         R9 13
       71 SETUPVAL                         R10 14
       72 SETUPVAL                         R8 15
       73 GETUPVAL                         R9 16
       74 JUMPIFEQKS                       R9 K10 [""] ; [+6]
       76 GETUPVAL                         R9 16
       77 MOVE                             R10 R8
       78 CONCAT                           R8 R9 R10
       79 LOADK                            R9 K10 [""]
       80 SETUPVAL                         R9 16
       81 SETUPVAL                         R0 7
       82 SETUPVAL                         R8 10
       83 GETIMPORT                        R8 K6 [string.find]
       85 MOVE                             R9 R7
       86 LOADK                            R10 K11 ["\n"]
       87 LOADN                            R11 1
       88 LOADB                            R12 1
       89 CALL                             R8 4 1
       90 JUMPIFEQKNIL                     R8 ; [+3]
       92 GETUPVAL                         R8 17
       93 CALL                             R8 0 0
       94 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 ADDK                             R2 R3 K0 [2]
        3 GETUPVAL                         R4 1
        4 FASTCALL2                        STRING_BYTE R4 R2 ; [+4]
        6 MOVE                             R5 R2
        7 GETIMPORT                        R3 K3 [string.byte]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 2
       11 JUMPIFEQ                         R3 R4 ; [+3]
       13 LOADNIL                          R1
       14 JUMP                             ; [+32]
       15 LOADN                            R3 0
       16 ADDK                             R4 R2 K4 [1]
       17 GETUPVAL                         R6 1
       18 FASTCALL2                        STRING_BYTE R6 R4 ; [+4]
       20 MOVE                             R7 R4
       21 GETIMPORT                        R5 K3 [string.byte]
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 3
       25 JUMPIFNOTEQ                      R5 R6 ; [+4]
       27 ADDK                             R3 R3 K4 [1]
       28 ADDK                             R4 R4 K4 [1]
       29 JUMPBACK                         ; [-13]
       30 GETUPVAL                         R5 4
       31 JUMPIFNOTLT                      R5 R4 ; [+2]
       33 SETUPVAL                         R4 4
       34 GETUPVAL                         R6 1
       35 FASTCALL2                        STRING_BYTE R6 R4 ; [+4]
       37 MOVE                             R7 R4
       38 GETIMPORT                        R5 K3 [string.byte]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 2
       42 JUMPIFNOTEQ                      R5 R6 ; [+3]
       44 MOVE                             R1 R3
       45 JUMP                             ; [+1]
       46 LOADNIL                          R1
       47 JUMPIFEQKNIL                     R1 ; [+11]
       49 GETUPVAL                         R2 5
       50 LOADK                            R3 K5 ["comment"]
       51 MOVE                             R4 R0
       52 MOVE                             R5 R1
       53 GETUPVAL                         R9 0
       54 ADDK                             R8 R9 K0 [2]
       55 ADD                              R7 R8 R1
       56 ADDK                             R6 R7 K0 [2]
       57 CALL                             R2 4 0
       58 RETURN                           R0 0
       59 GETIMPORT                        R2 K7 [string.find]
       61 GETUPVAL                         R3 1
       62 LOADK                            R4 K8 ["\n"]
       63 GETUPVAL                         R6 0
       64 ADDK                             R5 R6 K0 [2]
       65 LOADB                            R6 1
       66 CALL                             R2 4 1
       67 JUMPIFEQKNIL                     R2 ; [+4]
       69 ADDK                             R3 R2 K4 [1]
       70 SETUPVAL                         R3 0
       71 JUMP                             ; [+3]
       72 GETUPVAL                         R4 6
       73 ADDK                             R3 R4 K4 [1]
       74 SETUPVAL                         R3 0
       75 GETUPVAL                         R4 1
       76 GETUPVAL                         R7 0
       77 SUBK                             R6 R7 K4 [1]
       78 FASTCALL3                        STRING_SUB R4 R0 R6
       80 MOVE                             R5 R0
       81 GETIMPORT                        R3 K10 [string.sub]
       83 CALL                             R3 3 1
       84 GETUPVAL                         R4 7
       85 JUMPIFEQKNIL                     R4 ; [+18]
       87 GETUPVAL                         R4 8
       88 JUMPIFNOT                        R4 ; [+7]
       89 GETUPVAL                         R4 9
       90 GETUPVAL                         R5 7
       91 GETUPVAL                         R6 10
       92 GETUPVAL                         R7 11
       93 GETUPVAL                         R8 12
       94 CALL                             R4 4 0
       95 JUMP                             ; [+4]
       96 GETUPVAL                         R4 9
       97 GETUPVAL                         R5 7
       98 GETUPVAL                         R6 10
       99 CALL                             R4 2 0
      100 LOADNIL                          R4
      101 LOADK                            R5 K11 [""]
      102 SETUPVAL                         R4 7
      103 SETUPVAL                         R5 10
      104 GETUPVAL                         R4 14
      105 GETUPVAL                         R5 15
      106 SETUPVAL                         R4 13
      107 SETUPVAL                         R5 14
      108 SETUPVAL                         R3 15
      109 GETUPVAL                         R4 16
      110 JUMPIFEQKS                       R4 K11 [""] ; [+6]
      112 GETUPVAL                         R4 16
      113 MOVE                             R5 R3
      114 CONCAT                           R3 R4 R5
      115 LOADK                            R4 K11 [""]
      116 SETUPVAL                         R4 16
      117 LOADK                            R4 K5 ["comment"]
      118 SETUPVAL                         R4 7
      119 SETUPVAL                         R3 10
      120 JUMPIFEQKNIL                     R2 ; [+3]
      122 GETUPVAL                         R3 17
      123 CALL                             R3 0 0
      124 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R6 1
        2 SUBK                             R5 R6 K0 [1]
        3 FASTCALL3                        STRING_SUB R3 R0 R5
        5 MOVE                             R4 R0
        6 GETIMPORT                        R2 K3 [string.sub]
        8 CALL                             R2 3 1
        9 GETUPVAL                         R3 2
       10 JUMPIFEQKNIL                     R3 ; [+18]
       12 GETUPVAL                         R3 3
       13 JUMPIFNOT                        R3 ; [+7]
       14 GETUPVAL                         R3 4
       15 GETUPVAL                         R4 2
       16 GETUPVAL                         R5 5
       17 GETUPVAL                         R6 6
       18 GETUPVAL                         R7 7
       19 CALL                             R3 4 0
       20 JUMP                             ; [+4]
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R4 2
       23 GETUPVAL                         R5 5
       24 CALL                             R3 2 0
       25 LOADNIL                          R3
       26 LOADK                            R4 K4 [""]
       27 SETUPVAL                         R3 2
       28 SETUPVAL                         R4 5
       29 GETUPVAL                         R3 9
       30 GETUPVAL                         R4 10
       31 SETUPVAL                         R3 8
       32 SETUPVAL                         R4 9
       33 SETUPVAL                         R2 10
       34 GETUPVAL                         R3 11
       35 JUMPIFEQKS                       R3 K4 [""] ; [+6]
       37 GETUPVAL                         R3 11
       38 MOVE                             R4 R2
       39 CONCAT                           R2 R3 R4
       40 LOADK                            R3 K4 [""]
       41 SETUPVAL                         R3 11
       42 LOADK                            R3 K1 ["string"]
       43 SETUPVAL                         R3 2
       44 SETUPVAL                         R2 5
       45 JUMPIFNOT                        R1 ; [+2]
       46 GETUPVAL                         R2 12
       47 CALL                             R2 0 0
       48 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 LOADB                            R1 0
        6 GETUPVAL                         R2 2
        7 ADDK                             R2 R2 K0 [1]
        8 SETUPVAL                         R2 2
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R3 3
       11 JUMPIFNOTLE                      R2 R3 ; [+170]
       13 GETUPVAL                         R3 4
       14 GETUPVAL                         R4 2
       15 FASTCALL2                        STRING_BYTE R3 R4 ; [+3]
       17 GETIMPORT                        R2 K3 [string.byte]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 5
       21 JUMPIFNOTEQ                      R2 R3 ; [+32]
       23 GETUPVAL                         R4 4
       24 GETUPVAL                         R6 2
       25 ADDK                             R5 R6 K0 [1]
       26 FASTCALL2                        STRING_BYTE R4 R5 ; [+3]
       28 GETIMPORT                        R3 K3 [string.byte]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 6
       32 JUMPIFNOTEQ                      R3 R4 ; [+16]
       34 GETUPVAL                         R4 4
       35 GETUPVAL                         R6 2
       36 ADDK                             R5 R6 K4 [2]
       37 FASTCALL2                        STRING_BYTE R4 R5 ; [+3]
       39 GETIMPORT                        R3 K3 [string.byte]
       41 CALL                             R3 2 1
       42 GETUPVAL                         R4 7
       43 JUMPIFNOTEQ                      R3 R4 ; [+5]
       45 GETUPVAL                         R3 2
       46 ADDK                             R3 R3 K5 [3]
       47 SETUPVAL                         R3 2
       48 JUMP                             ; [+132]
       49 GETUPVAL                         R3 8
       50 CALL                             R3 0 1
       51 JUMPIFNOT                        R3 ; [+129]
       52 LOADB                            R1 1
       53 JUMP                             ; [+127]
       54 GETUPVAL                         R3 9
       55 JUMPIFEQ                         R2 R3 ; [+7]
       57 GETUPVAL                         R3 10
       58 JUMPIFEQ                         R2 R3 ; [+4]
       60 GETUPVAL                         R3 11
       61 JUMPIFNOTEQ                      R2 R3 ; [+59]
       63 GETUPVAL                         R3 10
       64 JUMPIFNOTEQ                      R2 R3 ; [+2]
       66 LOADB                            R1 1
       67 GETUPVAL                         R3 2
       68 ADDK                             R3 R3 K0 [1]
       69 SETUPVAL                         R3 2
       70 MOVE                             R3 R1
       71 GETUPVAL                         R5 4
       72 GETUPVAL                         R8 2
       73 SUBK                             R7 R8 K0 [1]
       74 FASTCALL3                        STRING_SUB R5 R0 R7
       76 MOVE                             R6 R0
       77 GETIMPORT                        R4 K7 [string.sub]
       79 CALL                             R4 3 1
       80 GETUPVAL                         R5 12
       81 JUMPIFEQKNIL                     R5 ; [+18]
       83 GETUPVAL                         R5 13
       84 JUMPIFNOT                        R5 ; [+7]
       85 GETUPVAL                         R5 14
       86 GETUPVAL                         R6 12
       87 GETUPVAL                         R7 15
       88 GETUPVAL                         R8 16
       89 GETUPVAL                         R9 17
       90 CALL                             R5 4 0
       91 JUMP                             ; [+4]
       92 GETUPVAL                         R5 14
       93 GETUPVAL                         R6 12
       94 GETUPVAL                         R7 15
       95 CALL                             R5 2 0
       96 LOADNIL                          R5
       97 LOADK                            R6 K8 [""]
       98 SETUPVAL                         R5 12
       99 SETUPVAL                         R6 15
      100 GETUPVAL                         R5 19
      101 GETUPVAL                         R6 20
      102 SETUPVAL                         R5 18
      103 SETUPVAL                         R6 19
      104 SETUPVAL                         R4 20
      105 GETUPVAL                         R5 21
      106 JUMPIFEQKS                       R5 K8 [""] ; [+6]
      108 GETUPVAL                         R5 21
      109 MOVE                             R6 R4
      110 CONCAT                           R4 R5 R6
      111 LOADK                            R5 K8 [""]
      112 SETUPVAL                         R5 21
      113 LOADK                            R5 K1 ["string"]
      114 SETUPVAL                         R5 12
      115 SETUPVAL                         R4 15
      116 JUMPIFNOT                        R3 ; [+2]
      117 GETUPVAL                         R4 22
      118 CALL                             R4 0 0
      119 LOADNIL                          R3
      120 RETURN                           R3 1
      121 GETUPVAL                         R3 7
      122 JUMPIFNOTEQ                      R2 R3 ; [+55]
      124 GETUPVAL                         R3 2
      125 ADDK                             R3 R3 K0 [1]
      126 SETUPVAL                         R3 2
      127 MOVE                             R3 R1
      128 GETUPVAL                         R5 4
      129 GETUPVAL                         R8 2
      130 SUBK                             R7 R8 K0 [1]
      131 FASTCALL3                        STRING_SUB R5 R0 R7
      133 MOVE                             R6 R0
      134 GETIMPORT                        R4 K7 [string.sub]
      136 CALL                             R4 3 1
      137 GETUPVAL                         R5 12
      138 JUMPIFEQKNIL                     R5 ; [+18]
      140 GETUPVAL                         R5 13
      141 JUMPIFNOT                        R5 ; [+7]
      142 GETUPVAL                         R5 14
      143 GETUPVAL                         R6 12
      144 GETUPVAL                         R7 15
      145 GETUPVAL                         R8 16
      146 GETUPVAL                         R9 17
      147 CALL                             R5 4 0
      148 JUMP                             ; [+4]
      149 GETUPVAL                         R5 14
      150 GETUPVAL                         R6 12
      151 GETUPVAL                         R7 15
      152 CALL                             R5 2 0
      153 LOADNIL                          R5
      154 LOADK                            R6 K8 [""]
      155 SETUPVAL                         R5 12
      156 SETUPVAL                         R6 15
      157 GETUPVAL                         R5 19
      158 GETUPVAL                         R6 20
      159 SETUPVAL                         R5 18
      160 SETUPVAL                         R6 19
      161 SETUPVAL                         R4 20
      162 GETUPVAL                         R5 21
      163 JUMPIFEQKS                       R5 K8 [""] ; [+6]
      165 GETUPVAL                         R5 21
      166 MOVE                             R6 R4
      167 CONCAT                           R4 R5 R6
      168 LOADK                            R5 K8 [""]
      169 SETUPVAL                         R5 21
      170 LOADK                            R5 K1 ["string"]
      171 SETUPVAL                         R5 12
      172 SETUPVAL                         R4 15
      173 JUMPIFNOT                        R3 ; [+2]
      174 GETUPVAL                         R4 22
      175 CALL                             R4 0 0
      176 LOADK                            R3 K9 ["hole"]
      177 RETURN                           R3 1
      178 GETUPVAL                         R3 2
      179 ADDK                             R3 R3 K0 [1]
      180 SETUPVAL                         R3 2
      181 JUMPBACK                         ; [-173]
      182 MOVE                             R2 R1
      183 GETUPVAL                         R4 4
      184 GETUPVAL                         R7 2
      185 SUBK                             R6 R7 K0 [1]
      186 FASTCALL3                        STRING_SUB R4 R0 R6
      188 MOVE                             R5 R0
      189 GETIMPORT                        R3 K7 [string.sub]
      191 CALL                             R3 3 1
      192 GETUPVAL                         R4 12
      193 JUMPIFEQKNIL                     R4 ; [+18]
      195 GETUPVAL                         R4 13
      196 JUMPIFNOT                        R4 ; [+7]
      197 GETUPVAL                         R4 14
      198 GETUPVAL                         R5 12
      199 GETUPVAL                         R6 15
      200 GETUPVAL                         R7 16
      201 GETUPVAL                         R8 17
      202 CALL                             R4 4 0
      203 JUMP                             ; [+4]
      204 GETUPVAL                         R4 14
      205 GETUPVAL                         R5 12
      206 GETUPVAL                         R6 15
      207 CALL                             R4 2 0
      208 LOADNIL                          R4
      209 LOADK                            R5 K8 [""]
      210 SETUPVAL                         R4 12
      211 SETUPVAL                         R5 15
      212 GETUPVAL                         R4 19
      213 GETUPVAL                         R5 20
      214 SETUPVAL                         R4 18
      215 SETUPVAL                         R5 19
      216 SETUPVAL                         R3 20
      217 GETUPVAL                         R4 21
      218 JUMPIFEQKS                       R4 K8 [""] ; [+6]
      220 GETUPVAL                         R4 21
      221 MOVE                             R5 R3
      222 CONCAT                           R3 R4 R5
      223 LOADK                            R4 K8 [""]
      224 SETUPVAL                         R4 21
      225 LOADK                            R4 K1 ["string"]
      226 SETUPVAL                         R4 12
      227 SETUPVAL                         R3 15
      228 JUMPIFNOT                        R2 ; [+2]
      229 GETUPVAL                         R3 22
      230 CALL                             R3 0 0
      231 LOADNIL                          R2
      232 RETURN                           R2 1

PROTO_20:
        0 LOADB                            R1 0
        1 JUMPIFEQKS                       R0 K0 ["("] ; [+5]
        3 JUMPIFEQKS                       R0 K1 ["{"] ; [+3]
        5 JUMPIFNOTEQKS                    R0 K2 ["["] ; [+12]
        7 GETUPVAL                         R2 0
        8 ADDK                             R2 R2 K3 [1]
        9 SETUPVAL                         R2 0
       10 JUMPIFNOTEQKS                    R0 K0 ["("] ; [+5]
       12 GETUPVAL                         R2 1
       13 JUMPIFNOT                        R2 ; [+2]
       14 GETUPVAL                         R2 0
       15 SETUPVAL                         R2 2
       16 LOADB                            R1 1
       17 JUMP                             ; [+174]
       18 JUMPIFEQKS                       R0 K4 [")"] ; [+5]
       20 JUMPIFEQKS                       R0 K5 ["}"] ; [+3]
       22 JUMPIFNOTEQKS                    R0 K6 ["]"] ; [+36]
       24 GETUPVAL                         R2 3
       25 JUMPIFNOT                        R2 ; [+14]
       26 GETUPVAL                         R2 0
       27 GETUPVAL                         R3 4
       28 JUMPIFNOTLE                      R2 R3 ; [+11]
       30 LOADB                            R2 0
       31 SETUPVAL                         R2 3
       32 LOADN                            R2 0
       33 SETUPVAL                         R2 5
       34 LOADB                            R2 0
       35 SETUPVAL                         R2 6
       36 LOADNIL                          R2
       37 SETUPVAL                         R2 2
       38 LOADB                            R2 0
       39 SETUPVAL                         R2 7
       40 GETUPVAL                         R4 0
       41 SUBK                             R3 R4 K3 [1]
       42 FASTCALL2K                       MATH_MAX R3 K7 ; [+4]
       44 LOADK                            R4 K7 [0]
       45 GETIMPORT                        R2 K10 [math.max]
       47 CALL                             R2 2 1
       48 SETUPVAL                         R2 0
       49 GETUPVAL                         R2 2
       50 JUMPIFEQKNIL                     R2 ; [+141]
       52 GETUPVAL                         R2 0
       53 GETUPVAL                         R3 2
       54 JUMPIFNOTLT                      R2 R3 ; [+137]
       56 LOADNIL                          R2
       57 SETUPVAL                         R2 2
       58 JUMP                             ; [+133]
       59 JUMPIFNOTEQKS                    R0 K11 ["::"] ; [+13]
       61 LOADB                            R2 1
       62 SETUPVAL                         R2 3
       63 GETUPVAL                         R2 0
       64 SETUPVAL                         R2 4
       65 LOADN                            R2 0
       66 SETUPVAL                         R2 5
       67 LOADB                            R2 1
       68 SETUPVAL                         R2 6
       69 LOADNIL                          R2
       70 SETUPVAL                         R2 2
       71 LOADB                            R1 1
       72 JUMP                             ; [+119]
       73 JUMPIFNOTEQKS                    R0 K12 ["->"] ; [+15]
       75 GETUPVAL                         R2 3
       76 JUMPIF                           R2 ; [+10]
       77 LOADB                            R2 1
       78 SETUPVAL                         R2 3
       79 GETUPVAL                         R2 0
       80 SETUPVAL                         R2 4
       81 LOADN                            R2 0
       82 SETUPVAL                         R2 5
       83 LOADB                            R2 1
       84 SETUPVAL                         R2 6
       85 LOADNIL                          R2
       86 SETUPVAL                         R2 2
       87 LOADB                            R1 1
       88 JUMP                             ; [+103]
       89 JUMPIFNOTEQKS                    R0 K13 [":"] ; [+18]
       91 GETUPVAL                         R2 3
       92 JUMPIF                           R2 ; [+13]
       93 GETUPVAL                         R2 8
       94 CALL                             R2 0 1
       95 JUMPIFNOT                        R2 ; [+10]
       96 LOADB                            R2 1
       97 SETUPVAL                         R2 3
       98 GETUPVAL                         R2 0
       99 SETUPVAL                         R2 4
      100 LOADN                            R2 0
      101 SETUPVAL                         R2 5
      102 LOADB                            R2 1
      103 SETUPVAL                         R2 6
      104 LOADNIL                          R2
      105 SETUPVAL                         R2 2
      106 LOADB                            R1 1
      107 JUMP                             ; [+84]
      108 JUMPIFNOTEQKS                    R0 K14 ["="] ; [+27]
      110 GETUPVAL                         R2 3
      111 JUMPIFNOT                        R2 ; [+22]
      112 GETUPVAL                         R2 0
      113 GETUPVAL                         R3 4
      114 JUMPIFNOTLE                      R2 R3 ; [+19]
      116 GETUPVAL                         R2 5
      117 JUMPIFNOTEQKN                    R2 K7 [0] ; [+16]
      119 GETUPVAL                         R2 7
      120 JUMPIFNOT                        R2 ; [+3]
      121 LOADB                            R2 0
      122 SETUPVAL                         R2 7
      123 JUMP                             ; [+10]
      124 LOADB                            R2 0
      125 SETUPVAL                         R2 3
      126 LOADN                            R2 0
      127 SETUPVAL                         R2 5
      128 LOADB                            R2 0
      129 SETUPVAL                         R2 6
      130 LOADNIL                          R2
      131 SETUPVAL                         R2 2
      132 LOADB                            R2 0
      133 SETUPVAL                         R2 7
      134 LOADB                            R1 1
      135 JUMP                             ; [+56]
      136 JUMPIFEQKS                       R0 K15 [","] ; [+3]
      138 JUMPIFNOTEQKS                    R0 K16 [";"] ; [+25]
      140 GETUPVAL                         R2 3
      141 JUMPIFNOT                        R2 ; [+17]
      142 GETUPVAL                         R2 0
      143 GETUPVAL                         R3 4
      144 JUMPIFNOTLE                      R2 R3 ; [+14]
      146 GETUPVAL                         R2 5
      147 JUMPIFNOTEQKN                    R2 K7 [0] ; [+11]
      149 LOADB                            R2 0
      150 SETUPVAL                         R2 3
      151 LOADN                            R2 0
      152 SETUPVAL                         R2 5
      153 LOADB                            R2 0
      154 SETUPVAL                         R2 6
      155 LOADNIL                          R2
      156 SETUPVAL                         R2 2
      157 LOADB                            R2 0
      158 SETUPVAL                         R2 7
      159 JUMPIFEQKS                       R0 K15 [","] ; [+2]
      161 LOADB                            R1 0 +1
      162 LOADB                            R1 1
      163 JUMP                             ; [+28]
      164 JUMPIFNOTEQKS                    R0 K17 ["<"] ; [+8]
      166 GETUPVAL                         R2 3
      167 JUMPIFNOT                        R2 ; [+3]
      168 GETUPVAL                         R2 5
      169 ADDK                             R2 R2 K3 [1]
      170 SETUPVAL                         R2 5
      171 LOADB                            R1 1
      172 JUMP                             ; [+19]
      173 JUMPIFNOTEQKS                    R0 K18 [">"] ; [+11]
      175 GETUPVAL                         R2 3
      176 JUMPIFNOT                        R2 ; [+15]
      177 GETUPVAL                         R2 5
      178 LOADN                            R3 0
      179 JUMPIFNOTLT                      R3 R2 ; [+12]
      181 GETUPVAL                         R2 5
      182 SUBK                             R2 R2 K3 [1]
      183 SETUPVAL                         R2 5
      184 JUMP                             ; [+7]
      185 JUMPIFEQKS                       R0 K19 ["|"] ; [+5]
      187 JUMPIFEQKS                       R0 K20 ["&"] ; [+3]
      189 JUMPIFNOTEQKS                    R0 K21 ["."] ; [+2]
      191 LOADB                            R1 1
      192 LOADB                            R2 0
      193 SETUPVAL                         R2 1
      194 SETUPVAL                         R1 9
      195 MOVE                             R2 R1
      196 JUMPIF                           R2 ; [+4]
      197 JUMPIFEQKS                       R0 K16 [";"] ; [+2]
      199 LOADB                            R2 0 +1
      200 LOADB                            R2 1
      201 SETUPVAL                         R2 6
      202 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 1
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 2
        6 ADDK                             R1 R1 K0 [1]
        7 SETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 GETUPVAL                         R3 2
       10 FASTCALL2                        STRING_BYTE R2 R3 ; [+3]
       12 GETIMPORT                        R1 K3 [string.byte]
       14 CALL                             R1 2 1
       15 JUMPIFEQKNIL                     R1 ; [+68]
       17 GETUPVAL                         R3 4
       18 GETTABLE                         R2 R3 R1
       19 JUMPIFNOT                        R2 ; [+64]
       20 GETUPVAL                         R2 2
       21 ADDK                             R2 R2 K0 [1]
       22 SETUPVAL                         R2 2
       23 GETUPVAL                         R2 2
       24 GETUPVAL                         R3 5
       25 JUMPIFLT                         R3 R2 ; [+12]
       27 GETUPVAL                         R3 6
       28 GETUPVAL                         R5 3
       29 GETUPVAL                         R6 2
       30 FASTCALL2                        STRING_BYTE R5 R6 ; [+3]
       32 GETIMPORT                        R4 K3 [string.byte]
       34 CALL                             R4 2 1
       35 GETTABLE                         R2 R3 R4
       36 JUMPIFNOT                        R2 ; [+1]
       37 JUMPBACK                         ; [-18]
       38 GETUPVAL                         R3 3
       39 GETUPVAL                         R6 2
       40 SUBK                             R5 R6 K0 [1]
       41 FASTCALL3                        STRING_SUB R3 R0 R5
       43 MOVE                             R4 R0
       44 GETIMPORT                        R2 K5 [string.sub]
       46 CALL                             R2 3 1
       47 GETUPVAL                         R3 7
       48 JUMPIFEQKNIL                     R3 ; [+18]
       50 GETUPVAL                         R3 8
       51 JUMPIFNOT                        R3 ; [+7]
       52 GETUPVAL                         R3 9
       53 GETUPVAL                         R4 7
       54 GETUPVAL                         R5 10
       55 GETUPVAL                         R6 11
       56 GETUPVAL                         R7 12
       57 CALL                             R3 4 0
       58 JUMP                             ; [+4]
       59 GETUPVAL                         R3 9
       60 GETUPVAL                         R4 7
       61 GETUPVAL                         R5 10
       62 CALL                             R3 2 0
       63 LOADNIL                          R3
       64 LOADK                            R4 K6 [""]
       65 SETUPVAL                         R3 7
       66 SETUPVAL                         R4 10
       67 GETUPVAL                         R3 14
       68 GETUPVAL                         R4 15
       69 SETUPVAL                         R3 13
       70 SETUPVAL                         R4 14
       71 SETUPVAL                         R2 15
       72 GETUPVAL                         R3 16
       73 JUMPIFEQKS                       R3 K6 [""] ; [+6]
       75 GETUPVAL                         R3 16
       76 MOVE                             R4 R2
       77 CONCAT                           R2 R3 R4
       78 LOADK                            R3 K6 [""]
       79 SETUPVAL                         R3 16
       80 LOADK                            R3 K7 ["keyword"]
       81 SETUPVAL                         R3 7
       82 SETUPVAL                         R2 10
       83 RETURN                           R0 0
       84 LOADK                            R2 K8 ["@"]
       85 GETUPVAL                         R3 7
       86 JUMPIFEQKNIL                     R3 ; [+18]
       88 GETUPVAL                         R3 8
       89 JUMPIFNOT                        R3 ; [+7]
       90 GETUPVAL                         R3 9
       91 GETUPVAL                         R4 7
       92 GETUPVAL                         R5 10
       93 GETUPVAL                         R6 11
       94 GETUPVAL                         R7 12
       95 CALL                             R3 4 0
       96 JUMP                             ; [+4]
       97 GETUPVAL                         R3 9
       98 GETUPVAL                         R4 7
       99 GETUPVAL                         R5 10
      100 CALL                             R3 2 0
      101 LOADNIL                          R3
      102 LOADK                            R4 K6 [""]
      103 SETUPVAL                         R3 7
      104 SETUPVAL                         R4 10
      105 GETUPVAL                         R3 14
      106 GETUPVAL                         R4 15
      107 SETUPVAL                         R3 13
      108 SETUPVAL                         R4 14
      109 SETUPVAL                         R2 15
      110 GETUPVAL                         R3 16
      111 JUMPIFEQKS                       R3 K6 [""] ; [+6]
      113 GETUPVAL                         R3 16
      114 MOVE                             R4 R2
      115 CONCAT                           R2 R3 R4
      116 LOADK                            R3 K6 [""]
      117 SETUPVAL                         R3 16
      118 LOADK                            R3 K9 ["operator"]
      119 SETUPVAL                         R3 7
      120 SETUPVAL                         R2 10
      121 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 FASTCALL2                        STRING_BYTE R1 R2 ; [+3]
        4 GETIMPORT                        R0 K2 [string.byte]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 ADDK                             R3 R4 K3 [1]
       10 FASTCALL2                        STRING_BYTE R2 R3 ; [+3]
       12 GETIMPORT                        R1 K2 [string.byte]
       14 CALL                             R1 2 1
       15 LOADNIL                          R2
       16 GETUPVAL                         R3 2
       17 JUMPIFNOTEQ                      R0 R3 ; [+3]
       19 LOADK                            R2 K4 ["("]
       20 JUMP                             ; [+215]
       21 GETUPVAL                         R3 3
       22 JUMPIFNOTEQ                      R0 R3 ; [+3]
       24 LOADK                            R2 K5 [")"]
       25 JUMP                             ; [+210]
       26 GETUPVAL                         R3 4
       27 JUMPIFNOTEQ                      R0 R3 ; [+8]
       29 GETUPVAL                         R3 4
       30 JUMPIFNOTEQ                      R1 R3 ; [+3]
       32 LOADK                            R2 K6 ["=="]
       33 JUMP                             ; [+202]
       34 LOADK                            R2 K7 ["="]
       35 JUMP                             ; [+200]
       36 GETUPVAL                         R3 5
       37 JUMPIFNOTEQ                      R0 R3 ; [+26]
       39 GETUPVAL                         R3 5
       40 JUMPIFNOTEQ                      R1 R3 ; [+21]
       42 GETUPVAL                         R4 0
       43 GETUPVAL                         R6 1
       44 ADDK                             R5 R6 K8 [2]
       45 FASTCALL2                        STRING_BYTE R4 R5 ; [+3]
       47 GETIMPORT                        R3 K2 [string.byte]
       49 CALL                             R3 2 1
       50 GETUPVAL                         R4 4
       51 JUMPIFNOTEQ                      R3 R4 ; [+3]
       53 LOADK                            R2 K9 ["..="]
       54 JUMP                             ; [+181]
       55 GETUPVAL                         R4 5
       56 JUMPIFNOTEQ                      R3 R4 ; [+3]
       58 LOADK                            R2 K10 ["..."]
       59 JUMP                             ; [+176]
       60 LOADK                            R2 K11 [".."]
       61 JUMP                             ; [+174]
       62 LOADK                            R2 K12 ["."]
       63 JUMP                             ; [+172]
       64 GETUPVAL                         R3 6
       65 JUMPIFNOTEQ                      R0 R3 ; [+3]
       67 LOADK                            R2 K13 [","]
       68 JUMP                             ; [+167]
       69 GETUPVAL                         R3 7
       70 JUMPIFNOTEQ                      R0 R3 ; [+8]
       72 GETUPVAL                         R3 7
       73 JUMPIFNOTEQ                      R1 R3 ; [+3]
       75 LOADK                            R2 K14 ["::"]
       76 JUMP                             ; [+159]
       77 LOADK                            R2 K15 [":"]
       78 JUMP                             ; [+157]
       79 GETUPVAL                         R3 8
       80 JUMPIFNOTEQ                      R0 R3 ; [+3]
       82 LOADK                            R2 K16 ["{"]
       83 JUMP                             ; [+152]
       84 GETUPVAL                         R3 9
       85 JUMPIFNOTEQ                      R0 R3 ; [+3]
       87 LOADK                            R2 K17 ["}"]
       88 JUMP                             ; [+147]
       89 GETUPVAL                         R3 10
       90 JUMPIFNOTEQ                      R0 R3 ; [+3]
       92 LOADK                            R2 K18 ["["]
       93 JUMP                             ; [+142]
       94 GETUPVAL                         R3 11
       95 JUMPIFNOTEQ                      R0 R3 ; [+3]
       97 LOADK                            R2 K19 ["]"]
       98 JUMP                             ; [+137]
       99 GETUPVAL                         R3 12
      100 JUMPIFNOTEQ                      R0 R3 ; [+13]
      102 GETUPVAL                         R3 13
      103 JUMPIFNOTEQ                      R1 R3 ; [+3]
      105 LOADK                            R2 K20 ["->"]
      106 JUMP                             ; [+129]
      107 GETUPVAL                         R3 4
      108 JUMPIFNOTEQ                      R1 R3 ; [+3]
      110 LOADK                            R2 K21 ["-="]
      111 JUMP                             ; [+124]
      112 LOADK                            R2 K22 ["-"]
      113 JUMP                             ; [+122]
      114 GETUPVAL                         R3 14
      115 JUMPIFNOTEQ                      R0 R3 ; [+8]
      117 GETUPVAL                         R3 4
      118 JUMPIFNOTEQ                      R1 R3 ; [+3]
      120 LOADK                            R2 K23 ["+="]
      121 JUMP                             ; [+114]
      122 LOADK                            R2 K24 ["+"]
      123 JUMP                             ; [+112]
      124 GETUPVAL                         R3 15
      125 JUMPIFNOTEQ                      R0 R3 ; [+8]
      127 GETUPVAL                         R3 4
      128 JUMPIFNOTEQ                      R1 R3 ; [+3]
      130 LOADK                            R2 K25 ["*="]
      131 JUMP                             ; [+104]
      132 LOADK                            R2 K26 ["*"]
      133 JUMP                             ; [+102]
      134 GETUPVAL                         R3 16
      135 JUMPIFNOTEQ                      R0 R3 ; [+26]
      137 GETUPVAL                         R3 16
      138 JUMPIFNOTEQ                      R1 R3 ; [+16]
      140 GETUPVAL                         R4 0
      141 GETUPVAL                         R6 1
      142 ADDK                             R5 R6 K8 [2]
      143 FASTCALL2                        STRING_BYTE R4 R5 ; [+3]
      145 GETIMPORT                        R3 K2 [string.byte]
      147 CALL                             R3 2 1
      148 GETUPVAL                         R4 4
      149 JUMPIFNOTEQ                      R3 R4 ; [+3]
      151 LOADK                            R2 K27 ["//="]
      152 JUMP                             ; [+83]
      153 LOADK                            R2 K28 ["//"]
      154 JUMP                             ; [+81]
      155 GETUPVAL                         R3 4
      156 JUMPIFNOTEQ                      R1 R3 ; [+3]
      158 LOADK                            R2 K29 ["/="]
      159 JUMP                             ; [+76]
      160 LOADK                            R2 K30 ["/"]
      161 JUMP                             ; [+74]
      162 GETUPVAL                         R3 17
      163 JUMPIFNOTEQ                      R0 R3 ; [+8]
      165 GETUPVAL                         R3 4
      166 JUMPIFNOTEQ                      R1 R3 ; [+3]
      168 LOADK                            R2 K31 ["<="]
      169 JUMP                             ; [+66]
      170 LOADK                            R2 K32 ["<"]
      171 JUMP                             ; [+64]
      172 GETUPVAL                         R3 13
      173 JUMPIFNOTEQ                      R0 R3 ; [+8]
      175 GETUPVAL                         R3 4
      176 JUMPIFNOTEQ                      R1 R3 ; [+3]
      178 LOADK                            R2 K33 [">="]
      179 JUMP                             ; [+56]
      180 LOADK                            R2 K34 [">"]
      181 JUMP                             ; [+54]
      182 GETUPVAL                         R3 18
      183 JUMPIFNOTEQ                      R0 R3 ; [+8]
      185 GETUPVAL                         R3 4
      186 JUMPIFNOTEQ                      R1 R3 ; [+3]
      188 LOADK                            R2 K35 ["~="]
      189 JUMP                             ; [+46]
      190 LOADK                            R2 K36 ["~"]
      191 JUMP                             ; [+44]
      192 GETUPVAL                         R3 19
      193 JUMPIFNOTEQ                      R0 R3 ; [+8]
      195 GETUPVAL                         R3 4
      196 JUMPIFNOTEQ                      R1 R3 ; [+3]
      198 LOADK                            R2 K37 ["%="]
      199 JUMP                             ; [+36]
      200 LOADK                            R2 K38 ["%"]
      201 JUMP                             ; [+34]
      202 GETUPVAL                         R3 20
      203 JUMPIFNOTEQ                      R0 R3 ; [+8]
      205 GETUPVAL                         R3 4
      206 JUMPIFNOTEQ                      R1 R3 ; [+3]
      208 LOADK                            R2 K39 ["^="]
      209 JUMP                             ; [+26]
      210 LOADK                            R2 K40 ["^"]
      211 JUMP                             ; [+24]
      212 GETUPVAL                         R3 21
      213 JUMPIFNOTEQ                      R0 R3 ; [+3]
      215 LOADK                            R2 K41 [";"]
      216 JUMP                             ; [+19]
      217 GETUPVAL                         R3 22
      218 JUMPIFNOTEQ                      R0 R3 ; [+3]
      220 LOADK                            R2 K42 ["#"]
      221 JUMP                             ; [+14]
      222 GETUPVAL                         R3 23
      223 JUMPIFNOTEQ                      R0 R3 ; [+3]
      225 LOADK                            R2 K43 ["?"]
      226 JUMP                             ; [+9]
      227 GETUPVAL                         R3 24
      228 JUMPIFNOTEQ                      R0 R3 ; [+3]
      230 LOADK                            R2 K44 ["|"]
      231 JUMP                             ; [+4]
      232 GETUPVAL                         R3 25
      233 JUMPIFNOTEQ                      R0 R3 ; [+2]
      235 LOADK                            R2 K45 ["&"]
      236 JUMPIFEQKNIL                     R2 ; [+47]
      238 MOVE                             R3 R2
      239 GETUPVAL                         R4 1
      240 LENGTH                           R5 R3
      241 ADD                              R4 R4 R5
      242 SETUPVAL                         R4 1
      243 MOVE                             R4 R3
      244 GETUPVAL                         R5 26
      245 JUMPIFEQKNIL                     R5 ; [+18]
      247 GETUPVAL                         R5 27
      248 JUMPIFNOT                        R5 ; [+7]
      249 GETUPVAL                         R5 28
      250 GETUPVAL                         R6 26
      251 GETUPVAL                         R7 29
      252 GETUPVAL                         R8 30
      253 GETUPVAL                         R9 31
      254 CALL                             R5 4 0
      255 JUMP                             ; [+4]
      256 GETUPVAL                         R5 28
      257 GETUPVAL                         R6 26
      258 GETUPVAL                         R7 29
      259 CALL                             R5 2 0
      260 LOADNIL                          R5
      261 LOADK                            R6 K46 [""]
      262 SETUPVAL                         R5 26
      263 SETUPVAL                         R6 29
      264 GETUPVAL                         R5 33
      265 GETUPVAL                         R6 34
      266 SETUPVAL                         R5 32
      267 SETUPVAL                         R6 33
      268 SETUPVAL                         R4 34
      269 GETUPVAL                         R5 35
      270 JUMPIFEQKS                       R5 K46 [""] ; [+6]
      272 GETUPVAL                         R5 35
      273 MOVE                             R6 R4
      274 CONCAT                           R4 R5 R6
      275 LOADK                            R5 K46 [""]
      276 SETUPVAL                         R5 35
      277 LOADK                            R5 K47 ["operator"]
      278 SETUPVAL                         R5 26
      279 SETUPVAL                         R4 29
      280 GETUPVAL                         R4 36
      281 MOVE                             R5 R3
      282 CALL                             R4 1 0
      283 RETURN                           R0 0
      284 LOADB                            R3 0
      285 SETUPVAL                         R3 37
      286 LOADB                            R3 0
      287 SETUPVAL                         R3 38
      288 GETUPVAL                         R4 0
      289 GETUPVAL                         R5 1
      290 GETUPVAL                         R6 1
      291 FASTCALL                         STRING_SUB ; [+2]
      292 GETIMPORT                        R3 K49 [string.sub]
      294 CALL                             R3 3 1
      295 GETUPVAL                         R4 26
      296 JUMPIFEQKNIL                     R4 ; [+18]
      298 GETUPVAL                         R4 27
      299 JUMPIFNOT                        R4 ; [+7]
      300 GETUPVAL                         R4 28
      301 GETUPVAL                         R5 26
      302 GETUPVAL                         R6 29
      303 GETUPVAL                         R7 30
      304 GETUPVAL                         R8 31
      305 CALL                             R4 4 0
      306 JUMP                             ; [+4]
      307 GETUPVAL                         R4 28
      308 GETUPVAL                         R5 26
      309 GETUPVAL                         R6 29
      310 CALL                             R4 2 0
      311 LOADNIL                          R4
      312 LOADK                            R5 K46 [""]
      313 SETUPVAL                         R4 26
      314 SETUPVAL                         R5 29
      315 GETUPVAL                         R4 33
      316 GETUPVAL                         R5 34
      317 SETUPVAL                         R4 32
      318 SETUPVAL                         R5 33
      319 SETUPVAL                         R3 34
      320 GETUPVAL                         R4 35
      321 JUMPIFEQKS                       R4 K46 [""] ; [+6]
      323 GETUPVAL                         R4 35
      324 MOVE                             R5 R3
      325 CONCAT                           R3 R4 R5
      326 LOADK                            R4 K46 [""]
      327 SETUPVAL                         R4 35
      328 LOADK                            R4 K50 ["iden"]
      329 SETUPVAL                         R4 26
      330 SETUPVAL                         R3 29
      331 GETUPVAL                         R3 1
      332 ADDK                             R3 R3 K3 [1]
      333 SETUPVAL                         R3 1
      334 RETURN                           R0 0

PROTO_23:
        0 LENGTH                           R4 R0
        1 ORK                              R5 R2 K0 [1]
        2 LOADNIL                          R6
        3 LOADK                            R7 K1 [""]
        4 LOADK                            R8 K1 [""]
        5 LOADK                            R9 K1 [""]
        6 LOADK                            R10 K1 [""]
        7 LOADK                            R11 K1 [""]
        8 LOADN                            R12 0
        9 NEWTABLE                         R13 0 0
       11 JUMPIFEQKNIL                     R3 ; [+27]
       13 GETTABLEKS                       R12 R3 K2 ["depth"]
       15 GETIMPORT                        R14 K5 [string.gsub]
       17 GETTABLEKS                       R15 R3 K6 ["previous1"]
       19 LOADK                            R16 K7 ["[%c%s]+"]
       20 LOADK                            R17 K1 [""]
       21 CALL                             R14 3 1
       22 MOVE                             R9 R14
       23 GETIMPORT                        R14 K5 [string.gsub]
       25 GETTABLEKS                       R15 R3 K8 ["previous2"]
       27 LOADK                            R16 K7 ["[%c%s]+"]
       28 LOADK                            R17 K1 [""]
       29 CALL                             R14 3 1
       30 MOVE                             R10 R14
       31 GETIMPORT                        R14 K5 [string.gsub]
       33 GETTABLEKS                       R15 R3 K9 ["previous3"]
       35 LOADK                            R16 K7 ["[%c%s]+"]
       36 LOADK                            R17 K1 [""]
       37 CALL                             R14 3 1
       38 MOVE                             R11 R14
       39 LOADN                            R14 0
       40 LOADN                            R15 0
       41 LOADN                            R16 0
       42 LOADB                            R17 0
       43 LOADB                            R18 0
       44 LOADN                            R19 0
       45 LOADN                            R20 0
       46 LOADB                            R21 0
       47 LOADB                            R22 0
       48 LOADNIL                          R23
       49 LOADB                            R24 0
       50 LOADB                            R25 0
       51 LOADB                            R26 0
       52 NEWCLOSURE                       R27 P0
       53 CAPTURE                          REF R6
       54 CAPTURE                          REF R17
       55 CAPTURE                          VAL R1
       56 CAPTURE                          REF R7
       57 CAPTURE                          REF R15
       58 CAPTURE                          REF R16
       59 NEWCLOSURE                       R28 P1
       60 CAPTURE                          REF R6
       61 CAPTURE                          REF R17
       62 CAPTURE                          VAL R1
       63 CAPTURE                          REF R7
       64 CAPTURE                          REF R15
       65 CAPTURE                          REF R16
       66 CAPTURE                          REF R11
       67 CAPTURE                          REF R10
       68 CAPTURE                          REF R9
       69 CAPTURE                          REF R8
       70 NEWCLOSURE                       R29 P2
       71 CAPTURE                          REF R6
       72 CAPTURE                          REF R7
       73 CAPTURE                          REF R8
       74 NEWCLOSURE                       R30 P3
       75 CAPTURE                          REF R18
       76 CAPTURE                          REF R19
       77 CAPTURE                          REF R12
       78 CAPTURE                          REF R20
       79 CAPTURE                          REF R22
       80 CAPTURE                          REF R23
       81 NEWCLOSURE                       R31 P4
       82 CAPTURE                          REF R18
       83 CAPTURE                          REF R20
       84 CAPTURE                          REF R22
       85 CAPTURE                          REF R23
       86 CAPTURE                          REF R26
       87 NEWCLOSURE                       R32 P5
       88 CAPTURE                          VAL R4
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          VAL R0
       91 CAPTURE                          REF R14
       92 NEWCLOSURE                       R33 P6
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U1
       95 CAPTURE                          VAL R4
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          REF R14
       98 CAPTURE                          UPVAL U0
       99 CAPTURE                          UPVAL U3
      100 NEWCLOSURE                       R34 P7
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U4
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          REF R14
      105 NEWCLOSURE                       R35 P8
      106 CAPTURE                          VAL R4
      107 CAPTURE                          UPVAL U0
      108 CAPTURE                          VAL R0
      109 CAPTURE                          REF R14
      110 CAPTURE                          UPVAL U6
      111 CAPTURE                          UPVAL U4
      112 CAPTURE                          UPVAL U5
      113 NEWCLOSURE                       R36 P9
      114 CAPTURE                          REF R18
      115 CAPTURE                          REF R12
      116 CAPTURE                          REF R19
      117 CAPTURE                          REF R20
      118 CAPTURE                          REF R21
      119 CAPTURE                          REF R26
      120 CAPTURE                          VAL R35
      121 CAPTURE                          REF R5
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U7
      124 CAPTURE                          UPVAL U8
      125 CAPTURE                          UPVAL U6
      126 CAPTURE                          UPVAL U9
      127 CAPTURE                          REF R22
      128 CAPTURE                          REF R23
      129 NEWCLOSURE                       R37 P10
      130 CAPTURE                          VAL R35
      131 CAPTURE                          REF R5
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U10
      134 CAPTURE                          UPVAL U11
      135 CAPTURE                          VAL R33
      136 CAPTURE                          UPVAL U12
      137 CAPTURE                          UPVAL U13
      138 CAPTURE                          UPVAL U14
      139 CAPTURE                          UPVAL U4
      140 NEWCLOSURE                       R38 P11
      141 CAPTURE                          REF R5
      142 CAPTURE                          VAL R4
      143 CAPTURE                          UPVAL U0
      144 CAPTURE                          VAL R0
      145 CAPTURE                          REF R14
      146 CAPTURE                          UPVAL U1
      147 CAPTURE                          UPVAL U2
      148 CAPTURE                          UPVAL U15
      149 CAPTURE                          UPVAL U9
      150 CAPTURE                          UPVAL U5
      151 NEWCLOSURE                       R39 P12
      152 CAPTURE                          REF R24
      153 CAPTURE                          REF R5
      154 CAPTURE                          VAL R4
      155 CAPTURE                          UPVAL U2
      156 CAPTURE                          VAL R0
      157 CAPTURE                          REF R21
      158 CAPTURE                          REF R25
      159 CAPTURE                          REF R6
      160 CAPTURE                          REF R17
      161 CAPTURE                          VAL R1
      162 CAPTURE                          REF R7
      163 CAPTURE                          REF R15
      164 CAPTURE                          REF R16
      165 CAPTURE                          REF R11
      166 CAPTURE                          REF R10
      167 CAPTURE                          REF R9
      168 CAPTURE                          REF R8
      169 CAPTURE                          REF R18
      170 CAPTURE                          REF R19
      171 CAPTURE                          REF R12
      172 CAPTURE                          REF R20
      173 CAPTURE                          REF R22
      174 CAPTURE                          REF R23
      175 CAPTURE                          REF R26
      176 CAPTURE                          UPVAL U16
      177 CAPTURE                          VAL R38
      178 CAPTURE                          UPVAL U17
      179 CAPTURE                          UPVAL U18
      180 NEWCLOSURE                       R40 P13
      181 CAPTURE                          REF R24
      182 CAPTURE                          REF R21
      183 CAPTURE                          REF R22
      184 CAPTURE                          REF R5
      185 CAPTURE                          VAL R0
      186 CAPTURE                          UPVAL U19
      187 CAPTURE                          UPVAL U3
      188 CAPTURE                          UPVAL U20
      189 CAPTURE                          UPVAL U21
      190 CAPTURE                          UPVAL U22
      191 CAPTURE                          UPVAL U23
      192 CAPTURE                          UPVAL U6
      193 CAPTURE                          VAL R4
      194 CAPTURE                          UPVAL U24
      195 CAPTURE                          REF R6
      196 CAPTURE                          REF R17
      197 CAPTURE                          VAL R1
      198 CAPTURE                          REF R7
      199 CAPTURE                          REF R15
      200 CAPTURE                          REF R16
      201 CAPTURE                          REF R11
      202 CAPTURE                          REF R10
      203 CAPTURE                          REF R9
      204 CAPTURE                          REF R8
      205 NEWCLOSURE                       R41 P14
      206 CAPTURE                          VAL R0
      207 CAPTURE                          REF R5
      208 CAPTURE                          UPVAL U25
      209 CAPTURE                          UPVAL U26
      210 CAPTURE                          UPVAL U27
      211 CAPTURE                          VAL R4
      212 CAPTURE                          UPVAL U0
      213 NEWCLOSURE                       R42 P15
      214 CAPTURE                          REF R24
      215 CAPTURE                          REF R21
      216 CAPTURE                          REF R22
      217 CAPTURE                          REF R5
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R0
      220 CAPTURE                          UPVAL U28
      221 CAPTURE                          VAL R41
      222 CAPTURE                          UPVAL U26
      223 CAPTURE                          UPVAL U25
      224 CAPTURE                          REF R6
      225 CAPTURE                          REF R17
      226 CAPTURE                          VAL R1
      227 CAPTURE                          REF R7
      228 CAPTURE                          REF R15
      229 CAPTURE                          REF R16
      230 CAPTURE                          REF R11
      231 CAPTURE                          REF R10
      232 CAPTURE                          REF R9
      233 CAPTURE                          REF R8
      234 CAPTURE                          VAL R36
      235 NEWCLOSURE                       R43 P16
      236 CAPTURE                          REF R24
      237 CAPTURE                          REF R21
      238 CAPTURE                          REF R22
      239 CAPTURE                          VAL R0
      240 CAPTURE                          REF R5
      241 CAPTURE                          VAL R4
      242 CAPTURE                          REF R14
      243 CAPTURE                          REF R6
      244 CAPTURE                          REF R17
      245 CAPTURE                          VAL R1
      246 CAPTURE                          REF R7
      247 CAPTURE                          REF R15
      248 CAPTURE                          REF R16
      249 CAPTURE                          REF R11
      250 CAPTURE                          REF R10
      251 CAPTURE                          REF R9
      252 CAPTURE                          REF R8
      253 CAPTURE                          VAL R36
      254 NEWCLOSURE                       R44 P17
      255 CAPTURE                          REF R5
      256 CAPTURE                          VAL R0
      257 CAPTURE                          UPVAL U4
      258 CAPTURE                          UPVAL U5
      259 CAPTURE                          REF R14
      260 CAPTURE                          VAL R43
      261 CAPTURE                          VAL R4
      262 CAPTURE                          REF R6
      263 CAPTURE                          REF R17
      264 CAPTURE                          VAL R1
      265 CAPTURE                          REF R7
      266 CAPTURE                          REF R15
      267 CAPTURE                          REF R16
      268 CAPTURE                          REF R11
      269 CAPTURE                          REF R10
      270 CAPTURE                          REF R9
      271 CAPTURE                          REF R8
      272 CAPTURE                          VAL R36
      273 NEWCLOSURE                       R45 P18
      274 CAPTURE                          VAL R0
      275 CAPTURE                          REF R5
      276 CAPTURE                          REF R6
      277 CAPTURE                          REF R17
      278 CAPTURE                          VAL R1
      279 CAPTURE                          REF R7
      280 CAPTURE                          REF R15
      281 CAPTURE                          REF R16
      282 CAPTURE                          REF R11
      283 CAPTURE                          REF R10
      284 CAPTURE                          REF R9
      285 CAPTURE                          REF R8
      286 CAPTURE                          VAL R36
      287 NEWCLOSURE                       R46 P19
      288 CAPTURE                          REF R24
      289 CAPTURE                          REF R21
      290 CAPTURE                          REF R5
      291 CAPTURE                          VAL R4
      292 CAPTURE                          VAL R0
      293 CAPTURE                          UPVAL U28
      294 CAPTURE                          UPVAL U29
      295 CAPTURE                          UPVAL U11
      296 CAPTURE                          VAL R41
      297 CAPTURE                          UPVAL U14
      298 CAPTURE                          UPVAL U26
      299 CAPTURE                          UPVAL U25
      300 CAPTURE                          REF R6
      301 CAPTURE                          REF R17
      302 CAPTURE                          VAL R1
      303 CAPTURE                          REF R7
      304 CAPTURE                          REF R15
      305 CAPTURE                          REF R16
      306 CAPTURE                          REF R11
      307 CAPTURE                          REF R10
      308 CAPTURE                          REF R9
      309 CAPTURE                          REF R8
      310 CAPTURE                          VAL R36
      311 NEWCLOSURE                       R47 P20
      312 CAPTURE                          REF R12
      313 CAPTURE                          REF R24
      314 CAPTURE                          REF R23
      315 CAPTURE                          REF R18
      316 CAPTURE                          REF R19
      317 CAPTURE                          REF R20
      318 CAPTURE                          REF R22
      319 CAPTURE                          REF R26
      320 CAPTURE                          VAL R37
      321 CAPTURE                          REF R21
      322 NEWCLOSURE                       R48 P21
      323 CAPTURE                          REF R24
      324 CAPTURE                          REF R21
      325 CAPTURE                          REF R5
      326 CAPTURE                          VAL R0
      327 CAPTURE                          UPVAL U1
      328 CAPTURE                          VAL R4
      329 CAPTURE                          UPVAL U2
      330 CAPTURE                          REF R6
      331 CAPTURE                          REF R17
      332 CAPTURE                          VAL R1
      333 CAPTURE                          REF R7
      334 CAPTURE                          REF R15
      335 CAPTURE                          REF R16
      336 CAPTURE                          REF R11
      337 CAPTURE                          REF R10
      338 CAPTURE                          REF R9
      339 CAPTURE                          REF R8
      340 NEWCLOSURE                       R49 P22
      341 CAPTURE                          VAL R0
      342 CAPTURE                          REF R5
      343 CAPTURE                          UPVAL U10
      344 CAPTURE                          UPVAL U30
      345 CAPTURE                          UPVAL U5
      346 CAPTURE                          UPVAL U3
      347 CAPTURE                          UPVAL U31
      348 CAPTURE                          UPVAL U32
      349 CAPTURE                          UPVAL U11
      350 CAPTURE                          UPVAL U33
      351 CAPTURE                          UPVAL U4
      352 CAPTURE                          UPVAL U34
      353 CAPTURE                          UPVAL U6
      354 CAPTURE                          UPVAL U9
      355 CAPTURE                          UPVAL U23
      356 CAPTURE                          UPVAL U35
      357 CAPTURE                          UPVAL U36
      358 CAPTURE                          UPVAL U15
      359 CAPTURE                          UPVAL U37
      360 CAPTURE                          UPVAL U38
      361 CAPTURE                          UPVAL U39
      362 CAPTURE                          UPVAL U40
      363 CAPTURE                          UPVAL U41
      364 CAPTURE                          UPVAL U42
      365 CAPTURE                          UPVAL U7
      366 CAPTURE                          UPVAL U8
      367 CAPTURE                          REF R6
      368 CAPTURE                          REF R17
      369 CAPTURE                          VAL R1
      370 CAPTURE                          REF R7
      371 CAPTURE                          REF R15
      372 CAPTURE                          REF R16
      373 CAPTURE                          REF R11
      374 CAPTURE                          REF R10
      375 CAPTURE                          REF R9
      376 CAPTURE                          REF R8
      377 CAPTURE                          VAL R47
      378 CAPTURE                          REF R24
      379 CAPTURE                          REF R21
      380 JUMPIFNOTLE                      R5 R4 ; [+242]
      382 FASTCALL2                        STRING_BYTE R0 R5 ; [+5]
      384 MOVE                             R51 R0
      385 MOVE                             R52 R5
      386 GETIMPORT                        R50 K11 [string.byte]
      388 CALL                             R50 2 1
      389 GETUPVAL                         R52 0
      390 GETTABLE                         R51 R52 R50
      391 JUMPIFNOT                        R51 ; [+45]
      392 MOVE                             R51 R5
      393 GETUPVAL                         R53 26
      394 JUMPIFEQ                         R50 R53 ; [+2]
      396 LOADB                            R52 0 +1
      397 LOADB                            R52 1
      398 ADDK                             R5 R5 K0 [1]
      399 JUMPIFLT                         R4 R5 ; [+16]
      401 FASTCALL2                        STRING_BYTE R0 R5 ; [+5]
      403 MOVE                             R54 R0
      404 MOVE                             R55 R5
      405 GETIMPORT                        R53 K11 [string.byte]
      407 CALL                             R53 2 1
      408 GETUPVAL                         R55 0
      409 GETTABLE                         R54 R55 R53
      410 JUMPIFNOT                        R54 ; [+5]
      411 GETUPVAL                         R54 26
      412 JUMPIFNOTEQ                      R53 R54 ; [+2]
      414 LOADB                            R52 1
      415 JUMPBACK                         ; [-18]
      416 SUBK                             R56 R5 K0 [1]
      417 FASTCALL3                        STRING_SUB R0 R51 R56
      419 MOVE                             R54 R0
      420 MOVE                             R55 R51
      421 GETIMPORT                        R53 K13 [string.sub]
      423 CALL                             R53 3 1
      424 JUMPIFEQKNIL                     R6 ; [+5]
      426 MOVE                             R54 R7
      427 MOVE                             R55 R53
      428 CONCAT                           R7 R54 R55
      429 JUMP                             ; [+3]
      430 MOVE                             R54 R8
      431 MOVE                             R55 R53
      432 CONCAT                           R8 R54 R55
      433 JUMPIFNOT                        R52 ; [+188]
      434 MOVE                             R53 R36
      435 CALL                             R53 0 0
      436 JUMP                             ; [+185]
      437 MOVE                             R15 R12
      438 ADDK                             R53 R5 K14 [2]
      439 FASTCALL2                        MATH_MAX R14 R53 ; [+4]
      441 MOVE                             R52 R14
      442 GETIMPORT                        R51 K17 [math.max]
      444 CALL                             R51 2 1
      445 MOVE                             R16 R51
      446 NOT                              R51 R18
      447 JUMPIFNOT                        R51 ; [+7]
      448 LOADB                            R51 0
      449 GETTABLEN                        R52 R13 1
      450 JUMPIFNOTEQKNIL                  R52 ; [+4]
      452 NOT                              R51 R25
      453 JUMPIFNOT                        R51 ; [+1]
      454 NOT                              R51 R24
      455 MOVE                             R17 R51
      456 GETUPVAL                         R52 1
      457 GETTABLE                         R51 R52 R50
      458 JUMPIFNOT                        R51 ; [+3]
      459 MOVE                             R51 R39
      460 CALL                             R51 0 0
      461 JUMP                             ; [+160]
      462 GETUPVAL                         R52 19
      463 GETTABLE                         R51 R52 R50
      464 JUMPIF                           R51 ; [+14]
      465 GETUPVAL                         R51 3
      466 JUMPIFNOTEQ                      R50 R51 ; [+15]
      468 GETUPVAL                         R52 19
      469 ADDK                             R56 R5 K0 [1]
      470 FASTCALL2                        STRING_BYTE R0 R56 ; [+4]
      472 MOVE                             R55 R0
      473 GETIMPORT                        R54 K11 [string.byte]
      475 CALL                             R54 2 1
      476 ORK                              R53 R54 K18 [0]
      477 GETTABLE                         R51 R52 R53
      478 JUMPIFNOT                        R51 ; [+3]
      479 MOVE                             R51 R40
      480 CALL                             R51 0 0
      481 JUMP                             ; [+140]
      482 GETUPVAL                         R51 6
      483 JUMPIFNOTEQ                      R50 R51 ; [+14]
      485 ADDK                             R53 R5 K0 [1]
      486 FASTCALL2                        STRING_BYTE R0 R53 ; [+4]
      488 MOVE                             R52 R0
      489 GETIMPORT                        R51 K11 [string.byte]
      491 CALL                             R51 2 1
      492 GETUPVAL                         R52 6
      493 JUMPIFNOTEQ                      R51 R52 ; [+4]
      495 MOVE                             R51 R44
      496 CALL                             R51 0 0
      497 JUMP                             ; [+124]
      498 GETUPVAL                         R51 12
      499 JUMPIFEQ                         R50 R51 ; [+4]
      501 GETUPVAL                         R51 13
      502 JUMPIFNOTEQ                      R50 R51 ; [+5]
      504 MOVE                             R51 R42
      505 MOVE                             R52 R50
      506 CALL                             R51 1 0
      507 JUMP                             ; [+114]
      508 GETUPVAL                         R51 14
      509 JUMPIFNOTEQ                      R50 R51 ; [+13]
      511 MOVE                             R51 R46
      512 CALL                             R51 0 1
      513 JUMPIFNOTEQKS                    R51 K19 ["hole"] ; [+108]
      515 FASTCALL2                        TABLE_INSERT R13 R12 ; [+5]
      517 MOVE                             R52 R13
      518 MOVE                             R53 R12
      519 GETIMPORT                        R51 K22 [table.insert]
      521 CALL                             R51 2 0
      522 JUMP                             ; [+99]
      523 GETUPVAL                         R51 33
      524 JUMPIFNOTEQ                      R50 R51 ; [+29]
      526 LENGTH                           R52 R13
      527 GETTABLE                         R51 R13 R52
      528 JUMPIFNOTEQ                      R51 R12 ; [+25]
      530 GETIMPORT                        R51 K24 [table.remove]
      532 MOVE                             R52 R13
      533 CALL                             R51 1 0
      534 JUMPIFNOT                        R18 ; [+7]
      535 JUMPIFNOTLE                      R12 R19 ; [+6]
      537 LOADB                            R18 0
      538 LOADN                            R20 0
      539 LOADB                            R22 0
      540 LOADNIL                          R23
      541 LOADB                            R26 0
      542 MOVE                             R51 R46
      543 CALL                             R51 0 1
      544 JUMPIFNOTEQKS                    R51 K19 ["hole"] ; [+77]
      546 FASTCALL2                        TABLE_INSERT R13 R12 ; [+5]
      548 MOVE                             R52 R13
      549 MOVE                             R53 R12
      550 GETIMPORT                        R51 K22 [table.insert]
      552 CALL                             R51 2 0
      553 JUMP                             ; [+68]
      554 GETUPVAL                         R51 4
      555 JUMPIFNOTEQ                      R50 R51 ; [+58]
      557 MOVE                             R52 R5
      558 FASTCALL2                        STRING_BYTE R0 R52 ; [+5]
      560 MOVE                             R54 R0
      561 MOVE                             R55 R52
      562 GETIMPORT                        R53 K11 [string.byte]
      564 CALL                             R53 2 1
      565 GETUPVAL                         R54 4
      566 JUMPIFEQ                         R53 R54 ; [+3]
      568 LOADNIL                          R51
      569 JUMP                             ; [+31]
      570 LOADN                            R53 0
      571 ADDK                             R54 R52 K0 [1]
      572 FASTCALL2                        STRING_BYTE R0 R54 ; [+5]
      574 MOVE                             R56 R0
      575 MOVE                             R57 R54
      576 GETIMPORT                        R55 K11 [string.byte]
      578 CALL                             R55 2 1
      579 GETUPVAL                         R56 5
      580 JUMPIFNOTEQ                      R55 R56 ; [+4]
      582 ADDK                             R53 R53 K0 [1]
      583 ADDK                             R54 R54 K0 [1]
      584 JUMPBACK                         ; [-13]
      585 JUMPIFNOTLT                      R14 R54 ; [+2]
      587 MOVE                             R14 R54
      588 FASTCALL2                        STRING_BYTE R0 R54 ; [+5]
      590 MOVE                             R56 R0
      591 MOVE                             R57 R54
      592 GETIMPORT                        R55 K11 [string.byte]
      594 CALL                             R55 2 1
      595 GETUPVAL                         R56 4
      596 JUMPIFNOTEQ                      R55 R56 ; [+3]
      598 MOVE                             R51 R53
      599 JUMP                             ; [+1]
      600 LOADNIL                          R51
      601 JUMPIFEQKNIL                     R51 ; [+9]
      603 MOVE                             R52 R43
      604 LOADK                            R53 K3 ["string"]
      605 MOVE                             R54 R5
      606 MOVE                             R55 R51
      607 ADD                              R57 R5 R51
      608 ADDK                             R56 R57 K14 [2]
      609 CALL                             R52 4 0
      610 JUMP                             ; [+11]
      611 MOVE                             R52 R49
      612 CALL                             R52 0 0
      613 JUMP                             ; [+8]
      614 GETUPVAL                         R51 43
      615 JUMPIFNOTEQ                      R50 R51 ; [+4]
      617 MOVE                             R51 R48
      618 CALL                             R51 0 0
      619 JUMP                             ; [+2]
      620 MOVE                             R51 R49
      621 CALL                             R51 0 0
      622 JUMPBACK                         ; [-243]
      623 LOADB                            R17 0
      624 JUMPIFEQKNIL                     R6 ; [+15]
      626 JUMPIFNOT                        R17 ; [+7]
      627 MOVE                             R50 R1
      628 MOVE                             R51 R6
      629 MOVE                             R52 R7
      630 MOVE                             R53 R15
      631 MOVE                             R54 R16
      632 CALL                             R50 4 0
      633 JUMP                             ; [+4]
      634 MOVE                             R50 R1
      635 MOVE                             R51 R6
      636 MOVE                             R52 R7
      637 CALL                             R50 2 0
      638 LOADNIL                          R6
      639 LOADK                            R7 K1 [""]
      640 JUMPIFEQKS                       R8 K1 [""] ; [+5]
      642 MOVE                             R50 R1
      643 LOADK                            R51 K25 ["iden"]
      644 MOVE                             R52 R8
      645 CALL                             R50 2 0
      646 CLOSEUPVALS                      R5
      647 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETIMPORT                        R2 K2 [coroutine.yield]
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFEQKS                       R0 K3 ["dead"] ; [+48]
        6 GETIMPORT                        R0 K5 [coroutine.resume]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 5
       10 JUMPIF                           R0 ; [+5]
       11 GETIMPORT                        R5 K7 [error]
       13 MOVE                             R6 R1
       14 LOADN                            R7 0
       15 CALL                             R5 2 0
       16 FASTCALL1                        TYPE R1 ; [+3]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K9 [type]
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQKS                    R5 K10 ["string"] ; [+31]
       23 FASTCALL1                        TYPE R2 ; [+3]
       24 MOVE                             R6 R2
       25 GETIMPORT                        R5 K9 [type]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKS                    R5 K10 ["string"] ; [+24]
       30 MOVE                             R5 R1
       31 MOVE                             R6 R2
       32 FASTCALL1                        TYPE R3 ; [+3]
       33 MOVE                             R9 R3
       34 GETIMPORT                        R8 K9 [type]
       36 CALL                             R8 1 1
       37 JUMPIFNOTEQKS                    R8 K11 ["number"] ; [+3]
       39 MOVE                             R7 R3
       40 JUMP                             ; [+1]
       41 LOADNIL                          R7
       42 FASTCALL1                        TYPE R4 ; [+3]
       43 MOVE                             R10 R4
       44 GETIMPORT                        R9 K9 [type]
       46 CALL                             R9 1 1
       47 JUMPIFNOTEQKS                    R9 K11 ["number"] ; [+3]
       49 MOVE                             R8 R4
       50 RETURN                           R5 4
       51 LOADNIL                          R8
       52 RETURN                           R5 4
       53 LOADNIL                          R0
       54 LOADK                            R1 K12 [""]
       55 LOADNIL                          R2
       56 LOADNIL                          R3
       57 RETURN                           R0 4

PROTO_26:
        0 GETIMPORT                        R3 K2 [coroutine.create]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 1
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          VAL R3
       10 RETURN                           R4 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 RETURN                           R0 2

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["scanRestartable"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 CALL                             R2 3 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R2
        9 RETURN                           R3 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 CALL                             R2 4 0
        6 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["scanRestartable"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["language"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["constants"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["navigator"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R0 K7 ["keyword"]
       24 GETTABLEKS                       R4 R0 K8 ["builtin"]
       26 GETTABLEKS                       R5 R0 K9 ["libraries"]
       28 NEWTABLE                         R6 8 0
       30 SETTABLEKS                       R0 R6 K4 ["language"]
       32 GETTABLEKS                       R7 R1 K10 ["BYTE_NEWLINE"]
       34 GETTABLEKS                       R8 R1 K11 ["BYTE_RETURN"]
       36 GETTABLEKS                       R9 R1 K12 ["BYTE_QUOTE"]
       38 GETTABLEKS                       R10 R1 K13 ["BYTE_APOSTROPHE"]
       40 GETTABLEKS                       R11 R1 K14 ["BYTE_BACKTICK"]
       42 GETTABLEKS                       R12 R1 K15 ["BYTE_BACKSLASH"]
       44 GETTABLEKS                       R13 R1 K16 ["BYTE_DASH"]
       46 GETTABLEKS                       R14 R1 K17 ["BYTE_PLUS"]
       48 GETTABLEKS                       R15 R1 K18 ["BYTE_STAR"]
       50 GETTABLEKS                       R16 R1 K19 ["BYTE_SLASH"]
       52 GETTABLEKS                       R17 R1 K20 ["BYTE_PERCENT"]
       54 GETTABLEKS                       R18 R1 K21 ["BYTE_CARET"]
       56 GETTABLEKS                       R19 R1 K22 ["BYTE_HASH"]
       58 GETTABLEKS                       R20 R1 K23 ["BYTE_TILDE"]
       60 GETTABLEKS                       R21 R1 K24 ["BYTE_DOT"]
       62 GETTABLEKS                       R22 R1 K25 ["BYTE_COMMA"]
       64 GETTABLEKS                       R23 R1 K26 ["BYTE_COLON"]
       66 GETTABLEKS                       R24 R1 K27 ["BYTE_SEMICOLON"]
       68 GETTABLEKS                       R25 R1 K28 ["BYTE_QUESTION"]
       70 GETTABLEKS                       R26 R1 K29 ["BYTE_PIPE"]
       72 GETTABLEKS                       R27 R1 K30 ["BYTE_AMPERSAND"]
       74 GETTABLEKS                       R28 R1 K31 ["BYTE_UNDERSCORE"]
       76 GETTABLEKS                       R29 R1 K32 ["BYTE_EQUALS"]
       78 GETTABLEKS                       R30 R1 K33 ["BYTE_OPEN_PAREN"]
       80 GETTABLEKS                       R31 R1 K34 ["BYTE_CLOSE_PAREN"]
       82 GETTABLEKS                       R32 R1 K35 ["BYTE_OPEN_BRACE"]
       84 GETTABLEKS                       R33 R1 K36 ["BYTE_CLOSE_BRACE"]
       86 GETTABLEKS                       R34 R1 K37 ["BYTE_OPEN_BRACKET"]
       88 GETTABLEKS                       R35 R1 K38 ["BYTE_CLOSE_BRACKET"]
       90 GETTABLEKS                       R36 R1 K39 ["BYTE_LESS_THAN"]
       92 GETTABLEKS                       R37 R1 K40 ["BYTE_GREATER_THAN"]
       94 GETTABLEKS                       R38 R1 K41 ["BYTE_AT"]
       96 GETTABLEKS                       R39 R1 K42 ["BYTE_LOWER_E"]
       98 GETTABLEKS                       R40 R1 K43 ["BYTE_UPPER_E"]
      100 GETTABLEKS                       R41 R1 K44 ["BYTE_LOWER_U"]
      102 GETTABLEKS                       R42 R1 K45 ["BYTE_LOWER_Z"]
      104 GETTABLEKS                       R43 R1 K46 ["IS_SPACE"]
      106 GETTABLEKS                       R44 R1 K47 ["IS_DIGIT"]
      108 GETTABLEKS                       R45 R1 K48 ["IS_IDEN_START"]
      110 GETTABLEKS                       R46 R1 K49 ["IS_IDEN_CHAR"]
      112 GETTABLEKS                       R47 R1 K50 ["IS_NUMBER_TAIL"]
      114 DUPCLOSURE                       R48 K51 [PROTO_23]
      115 CAPTURE                          VAL R43
      116 CAPTURE                          VAL R45
      117 CAPTURE                          VAL R46
      118 CAPTURE                          VAL R21
      119 CAPTURE                          VAL R34
      120 CAPTURE                          VAL R29
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R26
      123 CAPTURE                          VAL R27
      124 CAPTURE                          VAL R37
      125 CAPTURE                          VAL R30
      126 CAPTURE                          VAL R32
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R36
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R44
      135 CAPTURE                          VAL R28
      136 CAPTURE                          VAL R39
      137 CAPTURE                          VAL R40
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R47
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R42
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R41
      145 CAPTURE                          VAL R31
      146 CAPTURE                          VAL R22
      147 CAPTURE                          VAL R23
      148 CAPTURE                          VAL R33
      149 CAPTURE                          VAL R35
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R24
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R25
      158 CAPTURE                          VAL R38
      159 DUPCLOSURE                       R49 K52 [PROTO_26]
      160 CAPTURE                          VAL R48
      161 SETTABLEKS                       R49 R6 K53 ["scanRestartable"]
      163 DUPCLOSURE                       R49 K54 [PROTO_28]
      164 CAPTURE                          VAL R6
      165 SETTABLEKS                       R49 R6 K55 ["scan"]
      167 DUPCLOSURE                       R49 K56 [PROTO_29]
      168 CAPTURE                          VAL R48
      169 SETTABLEKS                       R49 R6 K57 ["scanEach"]
      171 DUPCLOSURE                       R49 K58 [PROTO_30]
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R6
      174 SETTABLEKS                       R49 R6 K6 ["navigator"]
      176 RETURN                           R6 1
