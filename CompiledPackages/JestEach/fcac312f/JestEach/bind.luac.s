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
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 MOVE                             R0 R3
        4 GETIMPORT                        R3 K1 [pcall]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          REF R0
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U9
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 CALL                             R3 1 2
       20 JUMPIF                           R3 ; [+14]
       21 GETUPVAL                         R6 10
       22 GETTABLEKS                       R5 R6 K2 ["new"]
       24 GETTABLEKS                       R6 R4 K3 ["message"]
       26 GETUPVAL                         R7 11
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 7
       29 MOVE                             R7 R0
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          VAL R5
       32 CALL                             R6 2 -1
       33 CLOSEUPVALS                      R0
       34 RETURN                           R6 -1
       35 CLOSEUPVALS                      R0
       36 RETURN                           R4 1

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
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          VAL R2
       31 RETURN                           R2 1

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
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U6
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U7
       18 RETURN                           R4 1

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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["isArray"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 JUMPIFNOT                        R4 ; [+2]
        6 GETTABLEN                        R3 R1 1
        7 JUMP                             ; [+1]
        8 MOVE                             R3 R1
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R3
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 2
       13 MOVE                             R6 R4
       14 MOVE                             R7 R2
       15 CALL                             R5 2 0
       16 GETUPVAL                         R5 3
       17 MOVE                             R6 R0
       18 MOVE                             R7 R4
       19 MOVE                             R8 R2
       20 CALL                             R5 3 -1
       21 RETURN                           R5 -1

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
       34 GETIMPORT                        R8 K4 [require]
       36 GETTABLEKS                       R9 R0 K11 ["JestUtil"]
       38 CALL                             R8 1 1
       39 GETTABLEKS                       R9 R8 K12 ["ErrorWithStack"]
       41 GETTABLEKS                       R10 R8 K13 ["convertDescriptorToString"]
       43 GETIMPORT                        R12 K4 [require]
       45 GETIMPORT                        R16 K1 [script]
       47 GETTABLEKS                       R15 R16 K2 ["Parent"]
       49 GETTABLEKS                       R14 R15 K14 ["table"]
       51 GETTABLEKS                       R13 R14 K15 ["array"]
       53 CALL                             R12 1 1
       54 GETTABLEKS                       R11 R12 K16 ["default"]
       56 GETIMPORT                        R13 K4 [require]
       58 GETIMPORT                        R17 K1 [script]
       60 GETTABLEKS                       R16 R17 K2 ["Parent"]
       62 GETTABLEKS                       R15 R16 K14 ["table"]
       64 GETTABLEKS                       R14 R15 K17 ["template"]
       66 CALL                             R13 1 1
       67 GETTABLEKS                       R12 R13 K16 ["default"]
       69 GETIMPORT                        R13 K4 [require]
       71 GETIMPORT                        R16 K1 [script]
       73 GETTABLEKS                       R15 R16 K2 ["Parent"]
       75 GETTABLEKS                       R14 R15 K18 ["validation"]
       77 CALL                             R13 1 1
       78 GETTABLEKS                       R14 R13 K19 ["extractValidTemplateHeadings"]
       80 GETTABLEKS                       R15 R13 K20 ["validateArrayTable"]
       82 GETTABLEKS                       R16 R13 K21 ["validateTemplateTableArguments"]
       84 DUPCLOSURE                       R17 K22 [PROTO_0]
       85 LOADNIL                          R18
       86 LOADNIL                          R19
       87 LOADNIL                          R20
       88 LOADNIL                          R21
       89 LOADNIL                          R22
       90 NEWCLOSURE                       R23 P1
       91 CAPTURE                          VAL R17
       92 CAPTURE                          VAL R10
       93 CAPTURE                          REF R18
       94 CAPTURE                          REF R19
       95 CAPTURE                          REF R20
       96 CAPTURE                          VAL R2
       97 CAPTURE                          REF R22
       98 CAPTURE                          VAL R9
       99 SETTABLEKS                       R23 R6 K16 ["default"]
      101 DUPCLOSURE                       R18 K23 [PROTO_7]
      102 DUPCLOSURE                       R19 K24 [PROTO_8]
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R11
      105 NEWCLOSURE                       R20 P4
      106 CAPTURE                          VAL R2
      107 CAPTURE                          REF R21
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R12
      110 DUPCLOSURE                       R21 K25 [PROTO_10]
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R14
      113 DUPCLOSURE                       R22 K26 [PROTO_17]
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R3
      117 CLOSEUPVALS                      R18
      118 RETURN                           R6 1
