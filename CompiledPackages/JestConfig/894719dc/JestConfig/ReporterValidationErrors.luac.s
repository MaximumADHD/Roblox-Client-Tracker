PROTO_0:
        0 LOADK                            R3 K0 ["  Reporter at index %s must be of type:\n"]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R6 R0
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 NAMECALL                         R3 R3 K3 ["format"]
        8 CALL                             R3 2 1
        9 LOADK                            R4 K4 ["    %s\n"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["green"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K6 ["bold"]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K7 ["join"]
       19 GETUPVAL                         R9 2
       20 LOADK                            R10 K8 [" or "]
       21 CALL                             R8 2 -1
       22 CALL                             R7 -1 -1
       23 CALL                             R6 -1 -1
       24 NAMECALL                         R4 R4 K3 ["format"]
       26 CALL                             R4 -1 1
       27 LOADK                            R5 K9 ["  but instead received:\n"]
       28 LOADK                            R6 K10 ["    %s"]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R8 R8 K11 ["red"]
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K6 ["bold"]
       35 GETUPVAL                         R10 3
       36 MOVE                             R11 R1
       37 CALL                             R10 1 -1
       38 CALL                             R9 -1 -1
       39 CALL                             R8 -1 -1
       40 NAMECALL                         R6 R6 K3 ["format"]
       42 CALL                             R6 -1 1
       43 CONCAT                           R2 R3 R6
       44 GETUPVAL                         R3 4
       45 GETTABLEKS                       R3 R3 K12 ["new"]
       47 GETUPVAL                         R4 5
       48 MOVE                             R5 R2
       49 GETUPVAL                         R6 6
       50 CALL                             R3 3 -1
       51 RETURN                           R3 -1

PROTO_1:
        0 LOADK                            R7 K0 ["  Unexpected value for %s "]
        1 MOVE                             R9 R5
        2 NAMECALL                         R7 R7 K1 ["format"]
        4 CALL                             R7 2 1
        5 LOADK                            R8 K2 ["at index %s of reporter at index %s\n"]
        6 FASTCALL1                        TOSTRING R2 ; [+3]
        7 MOVE                             R11 R2
        8 GETIMPORT                        R10 K4 [tostring]
       10 CALL                             R10 1 1
       11 FASTCALL1                        TOSTRING R1 ; [+3]
       12 MOVE                             R12 R1
       13 GETIMPORT                        R11 K4 [tostring]
       15 CALL                             R11 1 1
       16 NAMECALL                         R8 R8 K1 ["format"]
       18 CALL                             R8 3 1
       19 LOADK                            R9 K5 ["  Expected:\n"]
       20 LOADK                            R10 K6 ["    %s\n"]
       21 GETUPVAL                         R12 0
       22 GETTABLEKS                       R12 R12 K7 ["red"]
       24 GETUPVAL                         R13 0
       25 GETTABLEKS                       R13 R13 K8 ["bold"]
       27 MOVE                             R14 R4
       28 CALL                             R13 1 -1
       29 CALL                             R12 -1 -1
       30 NAMECALL                         R10 R10 K1 ["format"]
       32 CALL                             R10 -1 1
       33 LOADK                            R11 K9 ["  Got:\n"]
       34 LOADK                            R12 K6 ["    %s\n"]
       35 GETUPVAL                         R14 0
       36 GETTABLEKS                       R14 R14 K10 ["green"]
       38 GETUPVAL                         R15 0
       39 GETTABLEKS                       R15 R15 K8 ["bold"]
       41 GETUPVAL                         R16 1
       42 MOVE                             R17 R3
       43 CALL                             R16 1 -1
       44 CALL                             R15 -1 -1
       45 CALL                             R14 -1 -1
       46 NAMECALL                         R12 R12 K1 ["format"]
       48 CALL                             R12 -1 1
       49 LOADK                            R13 K11 ["  Reporter configuration:\n"]
       50 LOADK                            R14 K12 ["    %s"]
       51 GETUPVAL                         R16 0
       52 GETTABLEKS                       R16 R16 K10 ["green"]
       54 GETUPVAL                         R17 0
       55 GETTABLEKS                       R17 R17 K8 ["bold"]
       57 GETUPVAL                         R18 2
       58 GETTABLEKS                       R18 R18 K13 ["join"]
       60 GETUPVAL                         R19 3
       61 GETTABLEKS                       R19 R19 K14 ["split"]
       63 GETUPVAL                         R20 4
       64 GETTABLEKS                       R20 R20 K15 ["stringify"]
       66 MOVE                             R21 R0
       67 LOADNIL                          R22
       68 LOADN                            R23 2
       69 CALL                             R20 3 1
       70 LOADK                            R21 K16 ["\n"]
       71 CALL                             R19 2 1
       72 LOADK                            R20 K17 ["\n    "]
       73 CALL                             R18 2 -1
       74 CALL                             R17 -1 -1
       75 CALL                             R16 -1 -1
       76 NAMECALL                         R14 R14 K1 ["format"]
       78 CALL                             R14 -1 1
       79 CONCAT                           R6 R7 R14
       80 GETUPVAL                         R7 5
       81 GETTABLEKS                       R7 R7 K18 ["new"]
       83 GETUPVAL                         R8 6
       84 MOVE                             R9 R6
       85 GETUPVAL                         R10 7
       86 CALL                             R7 3 -1
       87 RETURN                           R7 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+6]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 JUMP                             ; [+21]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R3 R0
       14 GETIMPORT                        R2 K1 [typeof]
       16 CALL                             R2 1 1
       17 JUMPIFEQKS                       R2 K3 ["string"] ; [+15]
       19 FASTCALL1                        TYPEOF R0 ; [+3]
       20 MOVE                             R3 R0
       21 GETIMPORT                        R2 K1 [typeof]
       23 CALL                             R2 1 1
       24 JUMPIFEQKS                       R2 K4 ["Instance"] ; [+8]
       26 GETIMPORT                        R2 K6 [error]
       28 GETUPVAL                         R3 1
       29 MOVE                             R4 R1
       30 MOVE                             R5 R0
       31 CALL                             R3 2 -1
       32 CALL                             R2 -1 0
       33 LOADB                            R2 1
       34 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["every"]
        3 MOVE                             R2 R0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["reporter"]
        2 GETTABLEKS                       R3 R0 K1 ["options"]
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R5 R2
        6 GETIMPORT                        R4 K3 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFEQKS                       R4 K4 ["string"] ; [+25]
       11 FASTCALL1                        TYPEOF R2 ; [+3]
       12 MOVE                             R5 R2
       13 GETIMPORT                        R4 K3 [typeof]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K5 ["Instance"] ; [+6]
       18 LOADK                            R6 K6 ["ModuleScript"]
       19 NAMECALL                         R4 R2 K7 ["IsA"]
       21 CALL                             R4 2 1
       22 JUMPIF                           R4 ; [+12]
       23 GETIMPORT                        R4 K9 [error]
       25 GETUPVAL                         R5 0
       26 MOVE                             R6 R0
       27 MOVE                             R7 R1
       28 LOADN                            R8 0
       29 MOVE                             R9 R2
       30 LOADK                            R10 K10 ["ModuleScript or string"]
       31 LOADK                            R11 K11 ["reporter name"]
       32 CALL                             R5 6 -1
       33 CALL                             R4 -1 0
       34 RETURN                           R0 0
       35 FASTCALL1                        TYPEOF R3 ; [+3]
       36 MOVE                             R5 R3
       37 GETIMPORT                        R4 K3 [typeof]
       39 CALL                             R4 1 1
       40 JUMPIFEQKS                       R4 K12 ["table"] ; [+12]
       42 GETIMPORT                        R4 K9 [error]
       44 GETUPVAL                         R5 0
       45 MOVE                             R6 R0
       46 MOVE                             R7 R1
       47 LOADN                            R8 1
       48 MOVE                             R9 R3
       49 LOADK                            R10 K12 ["table"]
       50 LOADK                            R11 K13 ["Reporter Configuration"]
       51 CALL                             R5 6 -1
       52 CALL                             R4 -1 0
       53 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Error"]
       16 GETTABLEKS                       R4 R1 K8 ["String"]
       18 NEWTABLE                         R5 4 0
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K9 ["ChalkLua"]
       24 CALL                             R6 1 1
       25 GETIMPORT                        R7 K4 [require]
       27 GETTABLEKS                       R8 R0 K10 ["JestTypes"]
       29 CALL                             R7 1 1
       30 GETIMPORT                        R8 K4 [require]
       32 GETTABLEKS                       R9 R0 K11 ["JestGetType"]
       34 CALL                             R8 1 1
       35 GETTABLEKS                       R8 R8 K12 ["getType"]
       37 GETIMPORT                        R9 K4 [require]
       39 GETTABLEKS                       R10 R0 K13 ["JestValidate"]
       41 CALL                             R9 1 1
       42 GETTABLEKS                       R10 R9 K14 ["ValidationError"]
       44 GETIMPORT                        R11 K4 [require]
       46 GETIMPORT                        R12 K1 [script]
       48 GETTABLEKS                       R12 R12 K2 ["Parent"]
       50 GETTABLEKS                       R12 R12 K15 ["utils"]
       52 CALL                             R11 1 1
       53 GETTABLEKS                       R12 R11 K16 ["BULLET"]
       55 GETTABLEKS                       R13 R11 K17 ["DOCUMENTATION_NOTE"]
       57 GETIMPORT                        R14 K4 [require]
       59 GETTABLEKS                       R15 R0 K18 ["RobloxShared"]
       61 CALL                             R14 1 1
       62 GETTABLEKS                       R15 R14 K19 ["nodeUtils"]
       64 GETTABLEKS                       R16 R15 K20 ["JSON"]
       66 LOADNIL                          R17
       67 NEWTABLE                         R18 0 3
       69 LOADK                            R19 K21 ["table"]
       70 LOADK                            R20 K22 ["string"]
       71 LOADK                            R21 K23 ["ModuleScript"]
       72 SETLIST                          R18 R19 3 [1]
       74 LOADK                            R19 K24 ["%sReporter Validation Error"]
       75 FASTCALL1                        TOSTRING R12 ; [+3]
       76 MOVE                             R22 R12
       77 GETIMPORT                        R21 K26 [tostring]
       79 CALL                             R21 1 1
       80 NAMECALL                         R19 R19 K27 ["format"]
       82 CALL                             R19 2 1
       83 DUPCLOSURE                       R20 K28 [PROTO_0]
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R18
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R19
       90 CAPTURE                          VAL R13
       91 SETTABLEKS                       R20 R5 K29 ["createReporterError"]
       93 DUPCLOSURE                       R21 K30 [PROTO_1]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R19
      101 CAPTURE                          VAL R13
      102 SETTABLEKS                       R21 R5 K31 ["createArrayReporterError"]
      104 NEWCLOSURE                       R22 P2
      105 CAPTURE                          VAL R2
      106 CAPTURE                          REF R17
      107 CAPTURE                          VAL R20
      108 SETTABLEKS                       R22 R5 K32 ["validateReporters"]
      110 DUPCLOSURE                       R17 K33 [PROTO_4]
      111 CAPTURE                          VAL R21
      112 CLOSEUPVALS                      R17
      113 RETURN                           R5 1
