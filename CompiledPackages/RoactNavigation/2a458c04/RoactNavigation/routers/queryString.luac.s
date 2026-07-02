PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UrlEncode"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R1 K0 ["%%%x"]
        1 NAMECALL                         R3 R0 K1 ["byte"]
        3 CALL                             R3 1 -1
        4 NAMECALL                         R1 R1 K2 ["format"]
        6 CALL                             R1 -1 1
        7 NAMECALL                         R1 R1 K3 ["upper"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["UrlEncode"]
        4 CALL                             R1 2 1
        5 LOADK                            R3 K1 ["[!'%(%)%*]"]
        6 DUPCLOSURE                       R4 K2 [PROTO_2]
        7 NAMECALL                         R1 R1 K3 ["gsub"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_4:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K2 [tonumber]
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [NaN]
        6 RETURN                           R1 1

PROTO_5:
        0 LENGTH                           R2 R0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["skipNull"]
        4 JUMPIFNOT                        R3 ; [+3]
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 1
        8 JUMPIFNOTEQKNIL                  R1 ; [+26]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["concat"]
       13 MOVE                             R4 R0
       14 NEWTABLE                         R5 0 1
       16 GETIMPORT                        R6 K3 [table.concat]
       18 NEWTABLE                         R7 0 4
       20 GETUPVAL                         R8 2
       21 GETUPVAL                         R9 3
       22 GETUPVAL                         R10 0
       23 CALL                             R8 2 1
       24 LOADK                            R9 K4 ["["]
       25 MOVE                             R10 R2
       26 LOADK                            R11 K5 ["]"]
       27 SETLIST                          R7 R8 4 [1]
       29 LOADK                            R8 K6 [""]
       30 CALL                             R6 2 -1
       31 SETLIST                          R5 R6 -1 [1]
       33 CALL                             R3 2 -1
       34 RETURN                           R3 -1
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K1 ["concat"]
       38 MOVE                             R4 R0
       39 NEWTABLE                         R5 0 1
       41 GETIMPORT                        R6 K3 [table.concat]
       43 NEWTABLE                         R7 0 5
       45 GETUPVAL                         R8 2
       46 GETUPVAL                         R9 3
       47 GETUPVAL                         R10 0
       48 CALL                             R8 2 1
       49 LOADK                            R9 K4 ["["]
       50 GETUPVAL                         R10 2
       51 MOVE                             R11 R2
       52 GETUPVAL                         R12 0
       53 CALL                             R10 2 1
       54 LOADK                            R11 K7 ["]="]
       55 GETUPVAL                         R12 2
       56 MOVE                             R13 R1
       57 GETUPVAL                         R14 0
       58 CALL                             R12 2 -1
       59 SETLIST                          R7 R8 -1 [1]
       61 LOADK                            R8 K6 [""]
       62 CALL                             R6 2 -1
       63 SETLIST                          R5 R6 -1 [1]
       65 CALL                             R3 2 -1
       66 RETURN                           R3 -1

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["skipNull"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+24]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["concat"]
       12 MOVE                             R3 R0
       13 NEWTABLE                         R4 0 1
       15 GETIMPORT                        R5 K3 [table.concat]
       17 NEWTABLE                         R6 0 2
       19 GETUPVAL                         R7 2
       20 GETUPVAL                         R8 3
       21 GETUPVAL                         R9 0
       22 CALL                             R7 2 1
       23 LOADK                            R8 K4 ["[]"]
       24 SETLIST                          R6 R7 2 [1]
       26 LOADK                            R7 K5 [""]
       27 CALL                             R5 2 -1
       28 SETLIST                          R4 R5 -1 [1]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K1 ["concat"]
       35 MOVE                             R3 R0
       36 NEWTABLE                         R4 0 1
       38 GETIMPORT                        R5 K3 [table.concat]
       40 NEWTABLE                         R6 0 3
       42 GETUPVAL                         R7 2
       43 GETUPVAL                         R8 3
       44 GETUPVAL                         R9 0
       45 CALL                             R7 2 1
       46 LOADK                            R8 K6 ["[]="]
       47 GETUPVAL                         R9 2
       48 MOVE                             R10 R1
       49 GETUPVAL                         R11 0
       50 CALL                             R9 2 -1
       51 SETLIST                          R6 R7 -1 [1]
       53 LOADK                            R7 K5 [""]
       54 CALL                             R5 2 -1
       55 SETLIST                          R4 R5 -1 [1]
       57 CALL                             R2 2 -1
       58 RETURN                           R2 -1

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

PROTO_9:
        0 JUMPIFEQKNIL                     R1 ; [+4]
        2 LENGTH                           R2 R1
        3 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        5 RETURN                           R0 1
        6 LENGTH                           R2 R0
        7 JUMPIFNOTEQKN                    R2 K0 [0] ; [+23]
        9 NEWTABLE                         R2 0 1
       11 GETIMPORT                        R3 K3 [table.concat]
       13 NEWTABLE                         R4 0 3
       15 GETUPVAL                         R5 0
       16 GETUPVAL                         R6 1
       17 GETUPVAL                         R7 2
       18 CALL                             R5 2 1
       19 LOADK                            R6 K4 ["="]
       20 GETUPVAL                         R7 0
       21 GETUPVAL                         R8 1
       22 GETUPVAL                         R9 2
       23 CALL                             R7 2 -1
       24 SETLIST                          R4 R5 -1 [1]
       26 LOADK                            R5 K5 [""]
       27 CALL                             R3 2 -1
       28 SETLIST                          R2 R3 -1 [1]
       30 RETURN                           R2 1
       31 NEWTABLE                         R2 0 1
       33 GETIMPORT                        R3 K3 [table.concat]
       35 NEWTABLE                         R4 0 2
       37 MOVE                             R5 R0
       38 GETUPVAL                         R6 0
       39 GETUPVAL                         R7 1
       40 GETUPVAL                         R8 2
       41 CALL                             R6 2 -1
       42 SETLIST                          R4 R5 -1 [1]
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K6 ["arrayFormatSeparator"]
       47 CALL                             R3 2 -1
       48 SETLIST                          R2 R3 -1 [1]
       50 RETURN                           R2 1

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["skipNull"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+15]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["concat"]
       12 MOVE                             R3 R0
       13 NEWTABLE                         R4 0 1
       15 GETUPVAL                         R5 2
       16 GETUPVAL                         R6 3
       17 GETUPVAL                         R7 0
       18 CALL                             R5 2 -1
       19 SETLIST                          R4 R5 -1 [1]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K1 ["concat"]
       26 MOVE                             R3 R0
       27 NEWTABLE                         R4 0 1
       29 GETIMPORT                        R5 K3 [table.concat]
       31 NEWTABLE                         R6 0 3
       33 GETUPVAL                         R7 2
       34 GETUPVAL                         R8 3
       35 GETUPVAL                         R9 0
       36 CALL                             R7 2 1
       37 LOADK                            R8 K4 ["="]
       38 GETUPVAL                         R9 2
       39 MOVE                             R10 R1
       40 GETUPVAL                         R11 0
       41 CALL                             R9 2 -1
       42 SETLIST                          R6 R7 -1 [1]
       44 LOADK                            R7 K5 [""]
       45 CALL                             R5 2 -1
       46 SETLIST                          R4 R5 -1 [1]
       48 CALL                             R2 2 -1
       49 RETURN                           R2 -1

PROTO_12:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["arrayFormat"]
        2 JUMPIFNOTEQKS                    R1 K1 ["index"] ; [+6]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKS                    R1 K2 ["bracket"] ; [+6]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 RETURN                           R2 1
       16 JUMPIFEQKS                       R1 K3 ["comma"] ; [+3]
       18 JUMPIFNOTEQKS                    R1 K4 ["separator"] ; [+5]
       20 NEWCLOSURE                       R2 P2
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R0
       23 RETURN                           R2 1
       24 NEWCLOSURE                       R2 P3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U1
       28 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R3 1
        1 LOADK                            R4 K0 ["\\[(\\d*)\\]$"]
        2 CALL                             R3 1 1
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K1 ["exec"]
        6 CALL                             R3 2 1
        7 SETUPVAL                         R3 0
        8 LOADK                            R5 K2 ["%[%d*%]$"]
        9 LOADK                            R6 K3 [""]
       10 NAMECALL                         R3 R0 K4 ["gsub"]
       12 CALL                             R3 3 1
       13 MOVE                             R0 R3
       14 GETUPVAL                         R3 0
       15 JUMPIF                           R3 ; [+2]
       16 SETTABLE                         R1 R2 R0
       17 RETURN                           R0 0
       18 GETTABLE                         R3 R2 R0
       19 JUMPIFNOTEQKNIL                  R3 ; [+4]
       21 NEWTABLE                         R3 0 0
       23 SETTABLE                         R3 R2 R0
       24 GETTABLE                         R3 R2 R0
       25 GETUPVAL                         R5 0
       26 GETTABLEN                        R4 R5 2
       27 SETTABLE                         R1 R3 R4
       28 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 1
        1 LOADK                            R4 K0 ["(\\[\\])$"]
        2 CALL                             R3 1 1
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K1 ["exec"]
        6 CALL                             R3 2 1
        7 SETUPVAL                         R3 0
        8 LOADK                            R5 K2 ["%[%]$"]
        9 LOADK                            R6 K3 [""]
       10 NAMECALL                         R3 R0 K4 ["gsub"]
       12 CALL                             R3 3 1
       13 MOVE                             R0 R3
       14 GETUPVAL                         R3 0
       15 JUMPIF                           R3 ; [+2]
       16 SETTABLE                         R1 R2 R0
       17 RETURN                           R0 0
       18 GETTABLE                         R3 R2 R0
       19 JUMPIFNOTEQKNIL                  R3 ; [+8]
       21 NEWTABLE                         R3 0 1
       23 MOVE                             R4 R1
       24 SETLIST                          R3 R4 1 [1]
       26 SETTABLE                         R3 R2 R0
       27 RETURN                           R0 0
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K5 ["concat"]
       31 NEWTABLE                         R4 0 0
       33 GETTABLE                         R5 R2 R0
       34 MOVE                             R6 R1
       35 CALL                             R3 3 1
       36 SETTABLE                         R3 R2 R0
       37 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_17:
        0 LOADB                            R3 0
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+14]
        8 GETIMPORT                        R4 K4 [string.find]
       10 MOVE                             R5 R1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K5 ["arrayFormatSeparator"]
       14 LOADN                            R7 1
       15 LOADB                            R8 1
       16 CALL                             R4 4 1
       17 JUMPIFNOTEQKNIL                  R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 LOADNIL                          R4
       22 JUMPIFNOT                        R3 ; [+15]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K6 ["map"]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K5 ["arrayFormatSeparator"]
       29 NAMECALL                         R6 R1 K7 ["split"]
       31 CALL                             R6 2 1
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U0
       35 CALL                             R5 2 1
       36 MOVE                             R4 R5
       37 JUMP                             ; [+7]
       38 JUMPIFEQKNIL                     R1 ; [+6]
       40 GETUPVAL                         R5 2
       41 MOVE                             R6 R1
       42 GETUPVAL                         R7 0
       43 CALL                             R5 2 1
       44 MOVE                             R4 R5
       45 SETTABLE                         R4 R2 R0
       46 RETURN                           R0 0

PROTO_18:
        0 GETTABLE                         R3 R2 R0
        1 JUMPIFNOTEQKNIL                  R3 ; [+3]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["concat"]
        8 NEWTABLE                         R4 0 0
       10 GETTABLE                         R5 R2 R0
       11 MOVE                             R6 R1
       12 CALL                             R3 3 1
       13 SETTABLE                         R3 R2 R0
       14 RETURN                           R0 0

PROTO_19:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["arrayFormat"]
        3 JUMPIFNOTEQKS                    R2 K1 ["index"] ; [+6]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U0
        8 CLOSEUPVALS                      R1
        9 RETURN                           R3 1
       10 JUMPIFNOTEQKS                    R2 K2 ["bracket"] ; [+7]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          REF R1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CLOSEUPVALS                      R1
       17 RETURN                           R3 1
       18 JUMPIFEQKS                       R2 K3 ["comma"] ; [+3]
       20 JUMPIFNOTEQKS                    R2 K4 ["separator"] ; [+7]
       22 NEWCLOSURE                       R3 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U2
       26 CLOSEUPVALS                      R1
       27 RETURN                           R3 1
       28 DUPCLOSURE                       R3 K5 [PROTO_18]
       29 CAPTURE                          UPVAL U1
       30 CLOSEUPVALS                      R1
       31 RETURN                           R3 1

PROTO_20:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+4]
        7 LENGTH                           R1 R0
        8 JUMPIFEQKN                       R1 K3 [1] ; [+5]
       10 GETIMPORT                        R1 K5 [error]
       12 LOADK                            R2 K6 ["arrayFormatSeparator must be single character string"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R1 K0 ["encode"]
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETTABLEKS                       R2 R1 K1 ["strict"]
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R0
        8 CALL                             R2 1 -1
        9 RETURN                           R2 -1
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R0
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1
       14 RETURN                           R0 1

PROTO_22:
        0 GETTABLEKS                       R2 R1 K0 ["decode"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1
        7 RETURN                           R0 1

PROTO_23:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K2 [tonumber]
        4 CALL                             R4 1 1
        5 ORK                              R3 R4 K0 [NaN]
        6 FASTCALL1                        TONUMBER R1 ; [+3]
        7 MOVE                             R6 R1
        8 GETIMPORT                        R5 K2 [tonumber]
       10 CALL                             R5 1 1
       11 ORK                              R4 R5 K0 [NaN]
       12 SUB                              R2 R3 R4
       13 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isArray"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["sort"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1
       12 FASTCALL1                        TYPE R0 ; [+3]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K3 [type]
       16 CALL                             R1 1 1
       17 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+20]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["map"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K1 ["sort"]
       25 GETUPVAL                         R3 1
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K6 ["keys"]
       29 MOVE                             R5 R0
       30 CALL                             R4 1 -1
       31 CALL                             R3 -1 1
       32 DUPCLOSURE                       R4 K7 [PROTO_23]
       33 CALL                             R2 2 1
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          VAL R0
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1
       38 RETURN                           R0 1

PROTO_26:
        0 LOADK                            R3 K0 ["#"]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+7]
        6 LOADN                            R4 1
        7 SUBK                             R5 R1 K2 [1]
        8 NAMECALL                         R2 R0 K3 ["sub"]
       10 CALL                             R2 3 1
       11 MOVE                             R0 R2
       12 RETURN                           R0 1

PROTO_27:
        0 LOADK                            R1 K0 [""]
        1 LOADK                            R4 K1 ["#"]
        2 NAMECALL                         R2 R0 K2 ["find"]
        4 CALL                             R2 2 1
        5 JUMPIFEQKNIL                     R2 ; [+6]
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R0 K3 ["sub"]
       10 CALL                             R3 2 1
       11 MOVE                             R1 R3
       12 RETURN                           R1 1

PROTO_28:
        0 MOVE                             R1 R0
        1 LOADK                            R4 K0 ["#"]
        2 NAMECALL                         R2 R1 K1 ["find"]
        4 CALL                             R2 2 1
        5 JUMPIFEQKNIL                     R2 ; [+7]
        7 LOADN                            R5 1
        8 SUBK                             R6 R2 K2 [1]
        9 NAMECALL                         R3 R1 K3 ["sub"]
       11 CALL                             R3 3 1
       12 MOVE                             R1 R3
       13 MOVE                             R0 R1
       14 LOADK                            R3 K4 ["?"]
       15 LOADN                            R4 1
       16 LOADB                            R5 1
       17 NAMECALL                         R1 R0 K1 ["find"]
       19 CALL                             R1 4 1
       20 JUMPIFNOTEQKNIL                  R1 ; [+3]
       22 LOADK                            R2 K5 [""]
       23 RETURN                           R2 1
       24 ADDK                             R4 R1 K2 [1]
       25 NAMECALL                         R2 R0 K3 ["sub"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_29:
        0 GETTABLEKS                       R2 R1 K0 ["parseNumbers"]
        2 JUMPIFNOT                        R2 ; [+34]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["isNaN"]
        6 MOVE                             R4 R0
        7 FASTCALL1                        TONUMBER R4 ; [+3]
        8 MOVE                             R6 R4
        9 GETIMPORT                        R5 K4 [tonumber]
       11 CALL                             R5 1 1
       12 ORK                              R3 R5 K2 [NaN]
       13 CALL                             R2 1 1
       14 JUMPIF                           R2 ; [+22]
       15 FASTCALL1                        TYPE R0 ; [+3]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R2 K6 [type]
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQKS                    R2 K7 ["string"] ; [+16]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K8 ["trim"]
       25 MOVE                             R3 R0
       26 CALL                             R2 1 1
       27 JUMPIFEQKS                       R2 K9 [""] ; [+9]
       29 MOVE                             R2 R0
       30 FASTCALL1                        TONUMBER R2 ; [+3]
       31 MOVE                             R4 R2
       32 GETIMPORT                        R3 K4 [tonumber]
       34 CALL                             R3 1 1
       35 ORK                              R0 R3 K2 [NaN]
       36 RETURN                           R0 1
       37 GETTABLEKS                       R2 R1 K10 ["parseBooleans"]
       39 JUMPIFNOT                        R2 ; [+22]
       40 JUMPIFEQKNIL                     R0 ; [+21]
       42 GETIMPORT                        R2 K12 [string.lower]
       44 MOVE                             R3 R0
       45 CALL                             R2 1 1
       46 JUMPIFEQKS                       R2 K13 ["true"] ; [+7]
       48 GETIMPORT                        R2 K12 [string.lower]
       50 MOVE                             R3 R0
       51 CALL                             R2 1 1
       52 JUMPIFNOTEQKS                    R2 K14 ["false"] ; [+9]
       54 GETIMPORT                        R2 K12 [string.lower]
       56 MOVE                             R3 R0
       57 CALL                             R2 1 1
       58 JUMPIFEQKS                       R2 K13 ["true"] ; [+2]
       60 LOADB                            R0 0 +1
       61 LOADB                            R0 1
       62 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["toJSBoolean"]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R3 ; [+18]
        8 FASTCALL1                        TYPE R2 ; [+3]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K2 [type]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+12]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K4 ["isArray"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 JUMPIF                           R3 ; [+5]
       21 GETUPVAL                         R3 3
       22 MOVE                             R4 R2
       23 CALL                             R3 1 1
       24 SETTABLE                         R3 R0 R1
       25 RETURN                           R0 1
       26 SETTABLE                         R2 R0 R1
       27 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["assign"]
        3 DUPTABLE                         R3 K11 [{["decode"] = True, ["sort"] = True, ["arrayFormat"] = "none", ["arrayFormatSeparator"] = ",", ["parseNumbers"] = False, ["parseBooleans"] = False}]
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 MOVE                             R1 R2
        7 GETTABLEKS                       R2 R1 K6 ["arrayFormatSeparator"]
        9 FASTCALL1                        TYPE R2 ; [+3]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K13 [type]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K14 ["string"] ; [+4]
       16 LENGTH                           R3 R2
       17 JUMPIFEQKN                       R3 K15 [1] ; [+5]
       19 GETIMPORT                        R3 K17 [error]
       21 LOADK                            R4 K18 ["arrayFormatSeparator must be single character string"]
       22 CALL                             R3 1 0
       23 GETUPVAL                         R2 1
       24 MOVE                             R3 R1
       25 CALL                             R2 1 1
       26 NEWTABLE                         R3 0 0
       28 FASTCALL1                        TYPE R0 ; [+3]
       29 MOVE                             R5 R0
       30 GETIMPORT                        R4 K13 [type]
       32 CALL                             R4 1 1
       33 JUMPIFEQKS                       R4 K14 ["string"] ; [+2]
       35 RETURN                           R3 1
       36 GETIMPORT                        R4 K20 [string.gsub]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R5 R5 K21 ["trim"]
       41 MOVE                             R6 R0
       42 CALL                             R5 1 1
       43 LOADK                            R6 K22 ["^[%?#&]"]
       44 LOADK                            R7 K23 [""]
       45 CALL                             R4 3 1
       46 MOVE                             R0 R4
       47 JUMPIFNOTEQKS                    R0 K23 [""] ; [+2]
       49 RETURN                           R3 1
       50 LOADK                            R6 K24 ["&"]
       51 NAMECALL                         R4 R0 K25 ["split"]
       53 CALL                             R4 2 3
       54 FORGPREP                         R4
       55 GETUPVAL                         R9 3
       56 GETTABLEKS                       R11 R1 K1 ["decode"]
       58 JUMPIFNOT                        R11 ; [+7]
       59 GETIMPORT                        R10 K20 [string.gsub]
       61 MOVE                             R11 R8
       62 LOADK                            R12 K26 ["%+"]
       63 LOADK                            R13 K27 [" "]
       64 CALL                             R10 3 1
       65 JUMP                             ; [+1]
       66 MOVE                             R10 R8
       67 LOADK                            R11 K28 ["="]
       68 CALL                             R9 2 1
       69 GETTABLEN                        R10 R9 1
       70 GETTABLEN                        R11 R9 2
       71 JUMPIFEQKNIL                     R11 ; [+10]
       73 GETTABLEKS                       R12 R1 K4 ["arrayFormat"]
       75 JUMPIFEQKS                       R12 K29 ["comma"] ; [+6]
       77 GETUPVAL                         R12 4
       78 MOVE                             R13 R11
       79 MOVE                             R14 R1
       80 CALL                             R12 2 1
       81 MOVE                             R11 R12
       82 MOVE                             R12 R2
       83 GETUPVAL                         R13 4
       84 MOVE                             R14 R10
       85 MOVE                             R15 R1
       86 CALL                             R13 2 1
       87 MOVE                             R14 R11
       88 MOVE                             R15 R3
       89 CALL                             R12 3 0
       90 FORGLOOP                         R4 2 ; [-36]
       92 MOVE                             R4 R3
       93 LOADNIL                          R5
       94 LOADNIL                          R6
       95 FORGPREP                         R4
       96 GETTABLE                         R9 R3 R7
       97 FASTCALL1                        TYPE R9 ; [+3]
       98 MOVE                             R11 R9
       99 GETIMPORT                        R10 K13 [type]
      101 CALL                             R10 1 1
      102 JUMPIFNOTEQKS                    R10 K30 ["table"] ; [+13]
      104 MOVE                             R10 R9
      105 LOADNIL                          R11
      106 LOADNIL                          R12
      107 FORGPREP                         R10
      108 GETUPVAL                         R15 5
      109 GETTABLE                         R16 R9 R13
      110 MOVE                             R17 R1
      111 CALL                             R15 2 1
      112 SETTABLE                         R15 R9 R13
      113 FORGLOOP                         R10 1 ; [-6]
      115 JUMP                             ; [+5]
      116 GETUPVAL                         R10 5
      117 MOVE                             R11 R9
      118 MOVE                             R12 R1
      119 CALL                             R10 2 1
      120 SETTABLE                         R10 R3 R7
      121 FORGLOOP                         R4 1 ; [-26]
      123 GETTABLEKS                       R4 R1 K3 ["sort"]
      125 JUMPIFNOTEQKB                    R4 FALSE ; [+2]
      127 RETURN                           R3 1
      128 LOADNIL                          R4
      129 GETTABLEKS                       R5 R1 K3 ["sort"]
      131 JUMPIFNOTEQKB                    R5 TRUE ; [+12]
      133 GETUPVAL                         R5 6
      134 GETTABLEKS                       R5 R5 K3 ["sort"]
      136 GETUPVAL                         R6 0
      137 GETTABLEKS                       R6 R6 K31 ["keys"]
      139 MOVE                             R7 R3
      140 CALL                             R6 1 -1
      141 CALL                             R5 -1 1
      142 MOVE                             R4 R5
      143 JUMP                             ; [+12]
      144 GETUPVAL                         R5 6
      145 GETTABLEKS                       R5 R5 K3 ["sort"]
      147 GETUPVAL                         R6 0
      148 GETTABLEKS                       R6 R6 K31 ["keys"]
      150 MOVE                             R7 R3
      151 CALL                             R6 1 1
      152 GETTABLEKS                       R7 R1 K3 ["sort"]
      154 CALL                             R5 2 1
      155 MOVE                             R4 R5
      156 GETUPVAL                         R5 6
      157 GETTABLEKS                       R5 R5 K32 ["reduce"]
      159 MOVE                             R6 R4
      160 NEWCLOSURE                       R7 P0
      161 CAPTURE                          VAL R3
      162 CAPTURE                          UPVAL U7
      163 CAPTURE                          UPVAL U6
      164 CAPTURE                          UPVAL U8
      165 NEWTABLE                         R8 0 0
      167 CALL                             R5 3 -1
      168 RETURN                           R5 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+6]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K0 ["isArray"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 JUMPIFNOT                        R2 ; [+15]
       15 GETIMPORT                        R2 K3 [table.concat]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K4 ["reduce"]
       20 MOVE                             R4 R1
       21 GETUPVAL                         R5 4
       22 MOVE                             R6 R0
       23 CALL                             R5 1 1
       24 NEWTABLE                         R6 0 0
       26 CALL                             R3 3 1
       27 LOADK                            R4 K5 ["&"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1
       30 GETUPVAL                         R4 1
       31 MOVE                             R5 R0
       32 GETUPVAL                         R6 2
       33 CALL                             R4 2 1
       34 LOADK                            R5 K6 ["="]
       35 ADD                              R3 R4 R5
       36 GETUPVAL                         R4 1
       37 MOVE                             R5 R1
       38 GETUPVAL                         R6 2
       39 CALL                             R4 2 1
       40 ADD                              R2 R3 R4
       41 RETURN                           R2 1

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["length"]
        2 LOADN                            R3 0
        3 JUMPIFLT                         R3 R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_34:
        0 JUMPIF                           R0 ; [+3]
        1 LOADK                            R2 K0 [""]
        2 CLOSEUPVALS                      R1
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["assign"]
        7 DUPTABLE                         R3 K9 [{["encode"] = True, ["strict"] = True, ["arrayFormat"] = "none", ["arrayFormatSeparator"] = ","}]
        8 MOVE                             R4 R1
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 GETTABLEKS                       R2 R1 K7 ["arrayFormatSeparator"]
       13 FASTCALL1                        TYPE R2 ; [+3]
       14 MOVE                             R4 R2
       15 GETIMPORT                        R3 K11 [type]
       17 CALL                             R3 1 1
       18 JUMPIFNOTEQKS                    R3 K12 ["string"] ; [+4]
       20 LENGTH                           R3 R2
       21 JUMPIFEQKN                       R3 K13 [1] ; [+5]
       23 GETIMPORT                        R3 K15 [error]
       25 LOADK                            R4 K16 ["arrayFormatSeparator must be single character string"]
       26 CALL                             R3 1 0
       27 GETUPVAL                         R2 1
       28 MOVE                             R3 R1
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K19 [table.clone]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 1
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K20 ["keys"]
       37 MOVE                             R5 R3
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K21 ["sort"]
       41 JUMPIFEQKB                       R5 FALSE ; [+8]
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K21 ["sort"]
       46 MOVE                             R6 R4
       47 GETTABLEKS                       R7 R1 K21 ["sort"]
       49 CALL                             R5 2 0
       50 GETIMPORT                        R5 K23 [table.concat]
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R6 R6 K24 ["filter"]
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K25 ["map"]
       58 MOVE                             R8 R4
       59 NEWCLOSURE                       R9 P0
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          REF R1
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          VAL R2
       65 CALL                             R7 2 1
       66 DUPCLOSURE                       R8 K26 [PROTO_33]
       67 CALL                             R6 2 1
       68 LOADK                            R7 K27 ["&"]
       69 CALL                             R5 2 -1
       70 CLOSEUPVALS                      R1
       71 RETURN                           R5 -1

PROTO_35:
        0 DUPTABLE                         R2 K2 [{"url", "query"}]
        1 MOVE                             R6 R0
        2 LOADK                            R9 K4 ["#"]
        3 NAMECALL                         R7 R6 K5 ["find"]
        5 CALL                             R7 2 1
        6 JUMPIFEQKNIL                     R7 ; [+7]
        8 LOADN                            R10 1
        9 SUBK                             R11 R7 K6 [1]
       10 NAMECALL                         R8 R6 K7 ["sub"]
       12 CALL                             R8 3 1
       13 MOVE                             R6 R8
       14 MOVE                             R5 R6
       15 LOADK                            R7 K8 ["?"]
       16 NAMECALL                         R5 R5 K9 ["split"]
       18 CALL                             R5 2 1
       19 GETTABLEN                        R4 R5 1
       20 ORK                              R3 R4 K3 [""]
       21 SETTABLEKS                       R3 R2 K0 ["url"]
       23 GETUPVAL                         R3 0
       24 MOVE                             R5 R0
       25 MOVE                             R6 R5
       26 LOADK                            R9 K4 ["#"]
       27 NAMECALL                         R7 R6 K5 ["find"]
       29 CALL                             R7 2 1
       30 JUMPIFEQKNIL                     R7 ; [+7]
       32 LOADN                            R10 1
       33 SUBK                             R11 R7 K6 [1]
       34 NAMECALL                         R8 R6 K7 ["sub"]
       36 CALL                             R8 3 1
       37 MOVE                             R6 R8
       38 MOVE                             R5 R6
       39 LOADK                            R8 K8 ["?"]
       40 LOADN                            R9 1
       41 LOADB                            R10 1
       42 NAMECALL                         R6 R5 K5 ["find"]
       44 CALL                             R6 4 1
       45 JUMPIFNOTEQKNIL                  R6 ; [+3]
       47 LOADK                            R4 K3 [""]
       48 JUMP                             ; [+5]
       49 ADDK                             R9 R6 K6 [1]
       50 NAMECALL                         R7 R5 K7 ["sub"]
       52 CALL                             R7 2 1
       53 MOVE                             R4 R7
       54 MOVE                             R5 R1
       55 CALL                             R3 2 1
       56 SETTABLEKS                       R3 R2 K1 ["query"]
       58 RETURN                           R2 1

PROTO_36:
        0 GETTABLEKS                       R5 R0 K1 ["url"]
        2 LOADK                            R8 K2 ["#"]
        3 NAMECALL                         R6 R5 K3 ["find"]
        5 CALL                             R6 2 1
        6 JUMPIFEQKNIL                     R6 ; [+7]
        8 LOADN                            R9 1
        9 SUBK                             R10 R6 K4 [1]
       10 NAMECALL                         R7 R5 K5 ["sub"]
       12 CALL                             R7 3 1
       13 MOVE                             R5 R7
       14 MOVE                             R4 R5
       15 LOADK                            R6 K6 ["?"]
       16 NAMECALL                         R4 R4 K7 ["split"]
       18 CALL                             R4 2 1
       19 GETTABLEN                        R3 R4 1
       20 ORK                              R2 R3 K0 [""]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K8 ["extract"]
       24 GETTABLEKS                       R4 R0 K1 ["url"]
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K9 ["parse"]
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R6 R0 K1 ["url"]
       34 LOADK                            R7 K0 [""]
       35 LOADK                            R10 K2 ["#"]
       36 NAMECALL                         R8 R6 K3 ["find"]
       38 CALL                             R8 2 1
       39 JUMPIFEQKNIL                     R8 ; [+6]
       41 MOVE                             R11 R8
       42 NAMECALL                         R9 R6 K5 ["sub"]
       44 CALL                             R9 2 1
       45 MOVE                             R7 R9
       46 MOVE                             R5 R7
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K10 ["assign"]
       50 MOVE                             R7 R4
       51 GETTABLEKS                       R8 R0 K11 ["query"]
       53 CALL                             R6 2 1
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K12 ["stringify"]
       57 MOVE                             R8 R6
       58 MOVE                             R9 R1
       59 CALL                             R7 2 1
       60 JUMPIFNOT                        R7 ; [+6]
       61 LOADK                            R8 K13 ["?%s"]
       62 MOVE                             R10 R7
       63 NAMECALL                         R8 R8 K14 ["format"]
       65 CALL                             R8 2 1
       66 MOVE                             R7 R8
       67 LOADK                            R8 K15 ["%s%s%s"]
       68 MOVE                             R10 R2
       69 MOVE                             R11 R7
       70 MOVE                             R12 R5
       71 NAMECALL                         R8 R8 K14 ["format"]
       73 CALL                             R8 4 -1
       74 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R2 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R2 K6 ["Parent"]
       15 GETIMPORT                        R4 K8 [require]
       17 GETTABLEKS                       R5 R3 K9 ["LuauPolyfill"]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R4 K10 ["Array"]
       22 GETTABLEKS                       R6 R4 K11 ["Boolean"]
       24 GETTABLEKS                       R7 R4 K12 ["Object"]
       26 GETTABLEKS                       R8 R4 K13 ["String"]
       28 GETTABLEKS                       R9 R4 K14 ["Number"]
       30 GETIMPORT                        R10 K8 [require]
       32 GETTABLEKS                       R11 R3 K15 ["RegExp"]
       34 CALL                             R10 1 1
       35 DUPCLOSURE                       R11 K16 [PROTO_0]
       36 DUPCLOSURE                       R12 K17 [PROTO_1]
       37 CAPTURE                          VAL R0
       38 DUPCLOSURE                       R13 K18 [PROTO_3]
       39 CAPTURE                          VAL R0
       40 GETIMPORT                        R14 K8 [require]
       42 GETTABLEKS                       R15 R1 K19 ["decodeURIComponent"]
       44 CALL                             R14 1 1
       45 GETIMPORT                        R15 K8 [require]
       47 GETTABLEKS                       R16 R1 K20 ["splitOnFirst"]
       49 CALL                             R15 1 1
       50 LOADNIL                          R16
       51 LOADNIL                          R17
       52 NEWTABLE                         R18 8 0
       54 DUPCLOSURE                       R19 K21 [PROTO_4]
       55 NEWCLOSURE                       R20 P4
       56 CAPTURE                          VAL R5
       57 CAPTURE                          REF R16
       58 NEWCLOSURE                       R21 P5
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R5
       61 CAPTURE                          REF R17
       62 DUPCLOSURE                       R22 K22 [PROTO_20]
       63 DUPCLOSURE                       R16 K23 [PROTO_21]
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R12
       66 DUPCLOSURE                       R17 K24 [PROTO_22]
       67 CAPTURE                          VAL R14
       68 DUPCLOSURE                       R23 K25 [PROTO_25]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R23
       71 CAPTURE                          VAL R7
       72 DUPCLOSURE                       R24 K26 [PROTO_26]
       73 DUPCLOSURE                       R25 K27 [PROTO_27]
       74 DUPCLOSURE                       R26 K28 [PROTO_28]
       75 DUPCLOSURE                       R27 K29 [PROTO_29]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R8
       78 NEWCLOSURE                       R28 P14
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R21
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R15
       83 CAPTURE                          REF R17
       84 CAPTURE                          VAL R27
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R23
       88 SETTABLEKS                       R26 R18 K30 ["extract"]
       90 SETTABLEKS                       R28 R18 K31 ["parse"]
       92 NEWCLOSURE                       R29 P15
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R20
       95 CAPTURE                          VAL R5
       96 CAPTURE                          REF R16
       97 SETTABLEKS                       R29 R18 K32 ["stringify"]
       99 DUPCLOSURE                       R29 K33 [PROTO_35]
      100 CAPTURE                          VAL R28
      101 SETTABLEKS                       R29 R18 K34 ["parseUrl"]
      103 DUPCLOSURE                       R29 K35 [PROTO_36]
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R29 R18 K36 ["stringifyUrl"]
      108 CLOSEUPVALS                      R16
      109 RETURN                           R18 1
