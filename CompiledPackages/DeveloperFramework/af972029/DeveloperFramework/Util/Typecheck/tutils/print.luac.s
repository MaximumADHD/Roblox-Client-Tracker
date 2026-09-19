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
       12 JUMP                             ; [+9]
       13 GETIMPORT                        R4 K4 [string.format]
       15 LOADK                            R5 K6 ["[%s]"]
       16 FASTCALL1                        TOSTRING R0 ; [+3]
       17 MOVE                             R7 R0
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 0
       23 MOVE                             R6 R1
       24 CALL                             R5 1 1
       25 JUMPIFNOT                        R3 ; [+6]
       26 GETIMPORT                        R6 K4 [string.format]
       28 LOADK                            R7 K9 [" -- %s"]
       29 MOVE                             R8 R3
       30 CALL                             R6 2 1
       31 JUMPIF                           R6 ; [+1]
       32 LOADK                            R6 K10 [""]
       33 GETUPVAL                         R7 1
       34 GETIMPORT                        R8 K4 [string.format]
       36 LOADK                            R9 K11 ["%s%s = %s,%s"]
       37 MOVE                             R10 R2
       38 MOVE                             R11 R4
       39 MOVE                             R12 R5
       40 MOVE                             R13 R6
       41 CALL                             R8 5 -1
       42 CALL                             R7 -1 0
       43 RETURN                           R0 0

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
       13 JUMPIFNOT                        R1 ; [+33]
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
       31 JUMP                             ; [+9]
       32 GETIMPORT                        R9 K5 [string.format]
       34 LOADK                            R10 K10 ["[%s]"]
       35 FASTCALL1                        TOSTRING R1 ; [+3]
       36 MOVE                             R12 R1
       37 GETIMPORT                        R11 K12 [tostring]
       39 CALL                             R11 1 1
       40 CALL                             R9 2 1
       41 GETUPVAL                         R10 3
       42 MOVE                             R11 R0
       43 CALL                             R10 1 -1
       44 CALL                             R6 -1 -1
       45 CALL                             R5 -1 0
       46 JUMP                             ; [+10]
       47 GETUPVAL                         R5 2
       48 GETIMPORT                        R6 K5 [string.format]
       50 LOADK                            R7 K13 ["%s%s {"]
       51 MOVE                             R8 R3
       52 GETUPVAL                         R9 3
       53 MOVE                             R10 R0
       54 CALL                             R9 1 -1
       55 CALL                             R6 -1 -1
       56 CALL                             R5 -1 0
       57 GETIMPORT                        R5 K15 [pairs]
       59 MOVE                             R6 R0
       60 CALL                             R5 1 3
       61 FORGPREP_NEXT                    R5
       62 FASTCALL1                        TYPE R9 ; [+3]
       63 MOVE                             R11 R9
       64 GETIMPORT                        R10 K8 [type]
       66 CALL                             R10 1 1
       67 JUMPIFNOTEQKS                    R10 K16 ["table"] ; [+17]
       69 GETUPVAL                         R11 0
       70 GETTABLE                         R10 R11 R9
       71 JUMPIFNOT                        R10 ; [+7]
       72 GETUPVAL                         R10 4
       73 MOVE                             R11 R8
       74 MOVE                             R12 R9
       75 MOVE                             R13 R4
       76 LOADK                            R14 K17 ["Possible cycle"]
       77 CALL                             R10 4 0
       78 JUMP                             ; [+41]
       79 GETUPVAL                         R10 5
       80 MOVE                             R11 R9
       81 MOVE                             R12 R8
       82 ADDK                             R13 R2 K3 [1]
       83 CALL                             R10 3 0
       84 JUMP                             ; [+35]
       85 FASTCALL1                        TYPE R8 ; [+3]
       86 MOVE                             R12 R8
       87 GETIMPORT                        R11 K8 [type]
       89 CALL                             R11 1 1
       90 JUMPIFNOTEQKS                    R11 K0 ["string"] ; [+7]
       92 GETIMPORT                        R10 K5 [string.format]
       94 LOADK                            R11 K9 ["%s"]
       95 MOVE                             R12 R8
       96 CALL                             R10 2 1
       97 JUMP                             ; [+9]
       98 GETIMPORT                        R10 K5 [string.format]
      100 LOADK                            R11 K10 ["[%s]"]
      101 FASTCALL1                        TOSTRING R8 ; [+3]
      102 MOVE                             R13 R8
      103 GETIMPORT                        R12 K12 [tostring]
      105 CALL                             R12 1 1
      106 CALL                             R10 2 1
      107 GETUPVAL                         R11 3
      108 MOVE                             R12 R9
      109 CALL                             R11 1 1
      110 GETUPVAL                         R12 2
      111 GETIMPORT                        R13 K5 [string.format]
      113 LOADK                            R14 K18 ["%s%s = %s,%s"]
      114 MOVE                             R15 R4
      115 MOVE                             R16 R10
      116 MOVE                             R17 R11
      117 LOADK                            R18 K19 [""]
      118 CALL                             R13 5 -1
      119 CALL                             R12 -1 0
      120 FORGLOOP                         R5 2 ; [-59]
      122 GETUPVAL                         R5 2
      123 GETIMPORT                        R6 K5 [string.format]
      125 LOADK                            R7 K20 ["%s}%s"]
      126 MOVE                             R8 R3
      127 LOADN                            R10 0
      128 JUMPIFNOTLT                      R10 R2 ; [+3]
      130 LOADK                            R9 K21 [","]
      131 JUMP                             ; [+1]
      132 LOADK                            R9 K19 [""]
      133 CALL                             R6 3 -1
      134 CALL                             R5 -1 0
      135 RETURN                           R0 0

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
