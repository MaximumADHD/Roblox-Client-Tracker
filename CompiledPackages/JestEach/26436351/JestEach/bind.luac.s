PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Method unavailable"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["title"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R5 R0 K1 ["arguments"]
        7 GETUPVAL                         R6 3
        8 CALL                             R3 3 1
        9 GETUPVAL                         R4 4
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R1 3
        6 GETUPVAL                         R2 4
        7 CALL                             R0 2 1
        8 JUMP                             ; [+5]
        9 GETUPVAL                         R0 5
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 GETUPVAL                         R3 1
       13 CALL                             R0 3 1
       14 GETUPVAL                         R2 6
       15 GETTABLEKS                       R1 R2 K0 ["forEach"]
       17 MOVE                             R2 R0
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          UPVAL U10
       23 CAPTURE                          UPVAL U11
       24 CALL                             R1 2 1
       25 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CALL                             R3 1 2
       16 JUMPIF                           R3 ; [+13]
       17 GETUPVAL                         R6 9
       18 GETTABLEKS                       R5 R6 K2 ["new"]
       20 GETTABLEKS                       R6 R4 K3 ["message"]
       22 GETUPVAL                         R7 10
       23 CALL                             R5 2 1
       24 GETUPVAL                         R6 6
       25 MOVE                             R7 R0
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          VAL R5
       28 CALL                             R6 2 -1
       29 RETURN                           R6 -1
       30 RETURN                           R4 1

PROTO_5:
        0 PREPVARARGS                      1
        1 LOADK                            R3 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R3 ; [+3]
        3 GETIMPORT                        R2 K2 [select]
        5 GETVARARGS                       R4 -1
        6 CALL                             R2 -1 1
        7 LOADN                            R3 0
        8 JUMPIFNOTLT                      R3 R2 ; [+7]
       10 NEWTABLE                         R1 0 0
       12 GETVARARGS                       R2 -1
       13 SETLIST                          R1 R2 -1 [1]
       15 JUMP                             ; [+2]
       16 NEWTABLE                         R1 0 0
       18 NEWCLOSURE                       R2 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          VAL R2
       30 RETURN                           R2 1

PROTO_6:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 MOVE                             R2 R1
        3 JUMP                             ; [+1]
        4 LOADB                            R2 1
        5 MOVE                             R3 R0
        6 JUMPIF                           R3 ; [+1]
        7 GETUPVAL                         R3 0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U6
       17 RETURN                           R4 1

PROTO_7:
        0 LENGTH                           R2 R0
        1 JUMPIFEQKN                       R2 K0 [0] ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEN                        R4 R1 1
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R3
        5 MOVE                             R6 R2
        6 CALL                             R4 2 0
        7 GETUPVAL                         R4 2
        8 MOVE                             R5 R0
        9 MOVE                             R6 R3
       10 MOVE                             R7 R2
       11 CALL                             R4 3 -1
       12 RETURN                           R4 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["split"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 LOADK                            R4 K1 ["%s+"]
        7 LOADK                            R5 K2 [""]
        8 NAMECALL                         R2 R2 K3 ["gsub"]
       10 CALL                             R2 3 1
       11 LOADK                            R3 K4 ["|"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R0
        4 CALL                             R2 1 1
        5 SETTABLE                         R2 R1 R0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["isArray"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 JUMPIFNOT                        R1 ; [+8]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K1 ["map"]
       14 MOVE                             R2 R0
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U2
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1
       19 FASTCALL1                        TYPEOF R0 ; [+3]
       20 MOVE                             R2 R0
       21 GETIMPORT                        R1 K3 [typeof]
       23 CALL                             R1 1 1
       24 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+14]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R1 R2 K5 ["forEach"]
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R2 R3 K6 ["keys"]
       32 MOVE                             R3 R0
       33 CALL                             R2 1 1
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U2
       37 CALL                             R1 2 0
       38 RETURN                           R0 1
       39 RETURN                           R0 1

PROTO_14:
        0 PREPVARARGS                      2
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 MOVE                             R2 R1
        4 JUMP                             ; [+1]
        5 LENGTH                           R2 R0
        6 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        8 GETVARARGS                       R3 -1
        9 RETURN                           R3 -1
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R0
       12 SUBK                             R5 R2 K1 [1]
       13 GETUPVAL                         R6 1
       14 GETTABLE                         R7 R0 R2
       15 CALL                             R6 1 1
       16 GETVARARGS                       R7 -1
       17 CALL                             R3 -1 -1
       18 RETURN                           R3 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 -1
        5 RETURN                           R0 -1

PROTO_17:
        0 LOADNIL                          R3
        1 FASTCALL1                        TYPEOF R2 ; [+3]
        2 MOVE                             R5 R2
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["function"] ; [+8]
        8 GETIMPORT                        R4 K5 [debug.info]
       10 MOVE                             R5 R2
       11 LOADK                            R6 K6 ["a"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 JUMP                             ; [+1]
       15 LOADN                            R3 0
       16 LOADNIL                          R4
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          REF R4
       21 CAPTURE                          UPVAL U2
       22 LOADNIL                          R5
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          REF R5
       25 CAPTURE                          REF R4
       26 JUMPIFNOT                        R0 ; [+8]
       27 LENGTH                           R7 R1
       28 JUMPIFNOTLT                      R7 R3 ; [+6]
       30 NEWCLOSURE                       R6 P2
       31 CAPTURE                          VAL R2
       32 CAPTURE                          REF R5
       33 CAPTURE                          VAL R1
       34 JUMP                             ; [+4]
       35 NEWCLOSURE                       R6 P3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          REF R5
       38 CAPTURE                          VAL R1
       39 CLOSEUPVALS                      R4
       40 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Object"]
       16 GETTABLEKS                       R4 R1 K8 ["String"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETIMPORT                        R8 K1 [script]
       22 GETTABLEKS                       R7 R8 K2 ["Parent"]
       24 GETTABLEKS                       R6 R7 K9 ["nilPlaceholder"]
       26 CALL                             R5 1 1
       27 NEWTABLE                         R6 1 0
       29 GETIMPORT                        R7 K4 [require]
       31 GETTABLEKS                       R8 R0 K10 ["JestTypes"]
       33 CALL                             R7 1 1
       34 GETIMPORT                        R9 K4 [require]
       36 GETTABLEKS                       R10 R0 K11 ["JestUtil"]
       38 CALL                             R9 1 1
       39 GETTABLEKS                       R8 R9 K12 ["ErrorWithStack"]
       41 GETIMPORT                        R10 K4 [require]
       43 GETIMPORT                        R14 K1 [script]
       45 GETTABLEKS                       R13 R14 K2 ["Parent"]
       47 GETTABLEKS                       R12 R13 K13 ["table"]
       49 GETTABLEKS                       R11 R12 K14 ["array"]
       51 CALL                             R10 1 1
       52 GETTABLEKS                       R9 R10 K15 ["default"]
       54 GETIMPORT                        R11 K4 [require]
       56 GETIMPORT                        R15 K1 [script]
       58 GETTABLEKS                       R14 R15 K2 ["Parent"]
       60 GETTABLEKS                       R13 R14 K13 ["table"]
       62 GETTABLEKS                       R12 R13 K16 ["template"]
       64 CALL                             R11 1 1
       65 GETTABLEKS                       R10 R11 K15 ["default"]
       67 GETIMPORT                        R11 K4 [require]
       69 GETIMPORT                        R14 K1 [script]
       71 GETTABLEKS                       R13 R14 K2 ["Parent"]
       73 GETTABLEKS                       R12 R13 K17 ["validation"]
       75 CALL                             R11 1 1
       76 GETTABLEKS                       R12 R11 K18 ["extractValidTemplateHeadings"]
       78 GETTABLEKS                       R13 R11 K19 ["validateArrayTable"]
       80 GETTABLEKS                       R14 R11 K20 ["validateTemplateTableArguments"]
       82 DUPCLOSURE                       R15 K21 [PROTO_0]
       83 LOADNIL                          R16
       84 LOADNIL                          R17
       85 LOADNIL                          R18
       86 LOADNIL                          R19
       87 LOADNIL                          R20
       88 NEWCLOSURE                       R21 P1
       89 CAPTURE                          VAL R15
       90 CAPTURE                          REF R16
       91 CAPTURE                          REF R17
       92 CAPTURE                          REF R18
       93 CAPTURE                          VAL R2
       94 CAPTURE                          REF R20
       95 CAPTURE                          VAL R8
       96 SETTABLEKS                       R21 R6 K15 ["default"]
       98 DUPCLOSURE                       R16 K22 [PROTO_7]
       99 DUPCLOSURE                       R17 K23 [PROTO_8]
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R9
      102 NEWCLOSURE                       R18 P4
      103 CAPTURE                          REF R19
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R10
      106 DUPCLOSURE                       R19 K24 [PROTO_10]
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R12
      109 DUPCLOSURE                       R20 K25 [PROTO_17]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R3
      113 CLOSEUPVALS                      R16
      114 RETURN                           R6 1
