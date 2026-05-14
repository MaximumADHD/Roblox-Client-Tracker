PROTO_0:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [tostring]
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R3 K0 ["<nil>"]
        3 RETURN                           R3 1
        4 JUMPIFNOT                        R2 ; [+4]
        5 JUMPIFNOTLT                      R2 R1 ; [+3]
        7 LOADK                            R3 K1 ["(...)"]
        8 RETURN                           R3 1
        9 GETIMPORT                        R3 K4 [string.rep]
       11 LOADK                            R4 K5 ["  "]
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 LOADK                            R4 K6 ["{\n"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K7 ["Dictionary"]
       18 GETTABLEKS                       R5 R5 K8 ["keys"]
       20 MOVE                             R6 R0
       21 CALL                             R5 1 1
       22 GETIMPORT                        R6 K11 [table.sort]
       24 MOVE                             R7 R5
       25 DUPCLOSURE                       R8 K12 [PROTO_0]
       26 CALL                             R6 2 0
       27 GETIMPORT                        R6 K14 [ipairs]
       29 MOVE                             R7 R5
       30 CALL                             R6 1 3
       31 FORGPREP_INEXT                   R6
       32 GETTABLE                         R11 R0 R10
       33 MOVE                             R12 R4
       34 GETIMPORT                        R13 K16 [string.format]
       36 LOADK                            R14 K17 ["%s  %s%s:"]
       37 MOVE                             R15 R3
       38 FASTCALL1                        TOSTRING R10 ; [+3]
       39 MOVE                             R17 R10
       40 GETIMPORT                        R16 K19 [tostring]
       42 CALL                             R16 1 1
       43 FASTCALL1                        TYPEOF R10 ; [+3]
       44 MOVE                             R19 R10
       45 GETIMPORT                        R18 K21 [typeof]
       47 CALL                             R18 1 1
       48 JUMPIFEQKS                       R18 K2 ["string"] ; [+18]
       50 FASTCALL1                        TYPEOF R10 ; [+3]
       51 MOVE                             R19 R10
       52 GETIMPORT                        R18 K21 [typeof]
       54 CALL                             R18 1 1
       55 JUMPIFEQKS                       R18 K22 ["number"] ; [+11]
       57 GETIMPORT                        R17 K16 [string.format]
       59 LOADK                            R18 K23 ["[%s]"]
       60 FASTCALL1                        TYPEOF R10 ; [+3]
       61 MOVE                             R20 R10
       62 GETIMPORT                        R19 K21 [typeof]
       64 CALL                             R19 1 1
       65 CALL                             R17 2 1
       66 JUMP                             ; [+1]
       67 LOADK                            R17 K24 [""]
       68 CALL                             R13 4 1
       69 CONCAT                           R4 R12 R13
       70 FASTCALL1                        TYPE R11 ; [+3]
       71 MOVE                             R13 R11
       72 GETIMPORT                        R12 K26 [type]
       74 CALL                             R12 1 1
       75 JUMPIFNOTEQKS                    R12 K9 ["table"] ; [+11]
       77 MOVE                             R12 R4
       78 GETUPVAL                         R15 1
       79 MOVE                             R16 R11
       80 ADDK                             R17 R1 K27 [1]
       81 MOVE                             R18 R2
       82 CALL                             R15 3 1
       83 MOVE                             R13 R15
       84 LOADK                            R14 K28 ["\n"]
       85 CONCAT                           R4 R12 R14
       86 JUMP                             ; [+9]
       87 MOVE                             R12 R4
       88 FASTCALL1                        TOSTRING R11 ; [+3]
       89 MOVE                             R16 R11
       90 GETIMPORT                        R15 K19 [tostring]
       92 CALL                             R15 1 1
       93 MOVE                             R13 R15
       94 LOADK                            R14 K28 ["\n"]
       95 CONCAT                           R4 R12 R14
       96 FORGLOOP                         R6 2 [inext] ; [-65]
       98 MOVE                             R7 R4
       99 MOVE                             R8 R3
      100 LOADK                            R9 K29 ["}"]
      101 CONCAT                           R6 R7 R9
      102 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADN                            R4 0
        3 MOVE                             R5 R1
        4 CALL                             R2 3 1
        5 GETIMPORT                        R3 K1 [print]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K7 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 DUPCLOSURE                       R3 K8 [PROTO_2]
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
