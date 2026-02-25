PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+7]
        7 GETIMPORT                        R1 K4 [string.format]
        9 LOADK                            R2 K5 ["%s"]
       10 MOVE                             R3 R0
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1
       13 GETIMPORT                        R1 K4 [string.format]
       15 LOADK                            R2 K6 ["[%s]"]
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K8 [tostring]
       20 CALL                             R3 1 1
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+7]
        7 GETIMPORT                        R2 K4 [string.format]
        9 LOADK                            R3 K5 ["%q"]
       10 MOVE                             R4 R0
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1
       13 JUMPIFEQKS                       R1 K6 ["function"] ; [+3]
       15 JUMPIFNOTEQKS                    R1 K7 ["table"] ; [+11]
       17 GETIMPORT                        R2 K4 [string.format]
       19 LOADK                            R3 K8 ["<%s>"]
       20 FASTCALL1                        TOSTRING R0 ; [+3]
       21 MOVE                             R5 R0
       22 GETIMPORT                        R4 K10 [tostring]
       24 CALL                             R4 1 1
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1
       27 GETIMPORT                        R2 K4 [string.format]
       29 LOADK                            R3 K11 ["%s"]
       30 FASTCALL1                        TOSTRING R0 ; [+3]
       31 MOVE                             R5 R0
       32 GETIMPORT                        R4 K10 [tostring]
       34 CALL                             R4 1 1
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFNOTEQKS                    R5 K2 ["string"] ; [+7]
        7 GETIMPORT                        R4 K4 [string.format]
        9 LOADK                            R5 K5 ["%s"]
       10 MOVE                             R6 R0
       11 CALL                             R4 2 1
       12 JUMP                             ; [+10]
       13 GETIMPORT                        R4 K4 [string.format]
       15 LOADK                            R5 K6 ["[%s]"]
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 CALL                             R4 2 1
       22 JUMP                             ; [0]
       23 GETUPVAL                         R5 0
       24 MOVE                             R6 R1
       25 CALL                             R5 1 1
       26 JUMPIFNOT                        R3 ; [+6]
       27 GETIMPORT                        R6 K4 [string.format]
       29 LOADK                            R7 K9 [" -- %s"]
       30 MOVE                             R8 R3
       31 CALL                             R6 2 1
       32 JUMPIF                           R6 ; [+1]
       33 LOADK                            R6 K10 [""]
       34 GETUPVAL                         R7 1
       35 GETIMPORT                        R8 K4 [string.format]
       37 LOADK                            R9 K11 ["%s%s = %s,%s"]
       38 MOVE                             R10 R2
       39 MOVE                             R11 R4
       40 MOVE                             R12 R5
       41 MOVE                             R13 R6
       42 CALL                             R8 5 -1
       43 CALL                             R7 -1 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 SETTABLE                         R4 R3 R0
        3 GETIMPORT                        R3 K2 [string.rep]
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K2 [string.rep]
       10 GETUPVAL                         R5 1
       11 ADDK                             R6 R2 K3 [1]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R1 ; [+34]
       14 GETUPVAL                         R5 2
       15 GETIMPORT                        R6 K5 [string.format]
       17 LOADK                            R7 K6 ["%s%s = %s {"]
       18 MOVE                             R8 R3
       19 FASTCALL1                        TYPE R1 ; [+3]
       20 MOVE                             R11 R1
       21 GETIMPORT                        R10 K8 [type]
       23 CALL                             R10 1 1
       24 JUMPIFNOTEQKS                    R10 K0 ["string"] ; [+7]
       26 GETIMPORT                        R9 K5 [string.format]
       28 LOADK                            R10 K9 ["%s"]
       29 MOVE                             R11 R1
       30 CALL                             R9 2 1
       31 JUMP                             ; [+10]
       32 GETIMPORT                        R9 K5 [string.format]
       34 LOADK                            R10 K10 ["[%s]"]
       35 FASTCALL1                        TOSTRING R1 ; [+3]
       36 MOVE                             R12 R1
       37 GETIMPORT                        R11 K12 [tostring]
       39 CALL                             R11 1 1
       40 CALL                             R9 2 1
       41 JUMP                             ; [0]
       42 GETUPVAL                         R10 3
       43 MOVE                             R11 R0
       44 CALL                             R10 1 -1
       45 CALL                             R6 -1 -1
       46 CALL                             R5 -1 0
       47 JUMP                             ; [+10]
       48 GETUPVAL                         R5 2
       49 GETIMPORT                        R6 K5 [string.format]
       51 LOADK                            R7 K13 ["%s%s {"]
       52 MOVE                             R8 R3
       53 GETUPVAL                         R9 3
       54 MOVE                             R10 R0
       55 CALL                             R9 1 -1
       56 CALL                             R6 -1 -1
       57 CALL                             R5 -1 0
       58 GETIMPORT                        R5 K15 [pairs]
       60 MOVE                             R6 R0
       61 CALL                             R5 1 3
       62 FORGPREP_NEXT                    R5
       63 FASTCALL1                        TYPE R9 ; [+3]
       64 MOVE                             R11 R9
       65 GETIMPORT                        R10 K8 [type]
       67 CALL                             R10 1 1
       68 JUMPIFNOTEQKS                    R10 K16 ["table"] ; [+17]
       70 GETUPVAL                         R11 0
       71 GETTABLE                         R10 R11 R9
       72 JUMPIFNOT                        R10 ; [+7]
       73 GETUPVAL                         R10 4
       74 MOVE                             R11 R8
       75 MOVE                             R12 R9
       76 MOVE                             R13 R4
       77 LOADK                            R14 K17 ["Possible cycle"]
       78 CALL                             R10 4 0
       79 JUMP                             ; [+11]
       80 GETUPVAL                         R10 5
       81 MOVE                             R11 R9
       82 MOVE                             R12 R8
       83 ADDK                             R13 R2 K3 [1]
       84 CALL                             R10 3 0
       85 JUMP                             ; [+5]
       86 GETUPVAL                         R10 4
       87 MOVE                             R11 R8
       88 MOVE                             R12 R9
       89 MOVE                             R13 R4
       90 CALL                             R10 3 0
       91 FORGLOOP                         R5 2 ; [-29]
       93 GETUPVAL                         R5 2
       94 GETIMPORT                        R6 K5 [string.format]
       96 LOADK                            R7 K18 ["%s}%s"]
       97 MOVE                             R8 R3
       98 LOADN                            R10 0
       99 JUMPIFNOTLT                      R10 R2 ; [+3]
      101 LOADK                            R9 K19 [","]
      102 JUMP                             ; [+1]
      103 LOADK                            R9 K20 [""]
      104 CALL                             R6 3 -1
      105 CALL                             R5 -1 0
      106 RETURN                           R0 0

PROTO_4:
        0 ORK                              R1 R1 K0 ["  "]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K2 [type]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K3 ["table"] ; [+6]
        8 GETIMPORT                        R2 K5 [error]
       10 LOADK                            R3 K6 ["tutils.Print must be passed a table"]
       11 LOADN                            R4 2
       12 CALL                             R2 2 0
       13 NEWTABLE                         R2 0 0
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          REF R1
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R3
       22 MOVE                             R4 R3
       23 MOVE                             R5 R0
       24 LOADNIL                          R6
       25 LOADN                            R7 0
       26 CALL                             R4 3 0
       27 CLOSEUPVALS                      R1
       28 RETURN                           R0 0

PROTO_5:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 DUPCLOSURE                       R2 K1 [PROTO_1]
        2 NEWCLOSURE                       R3 P2
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R4 P3
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_5]
        2 RETURN                           R0 1
