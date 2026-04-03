PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R7 R0
        2 GETIMPORT                        R6 K1 [type]
        4 CALL                             R6 1 1
        5 MOVE                             R4 R6
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R6 R0
        8 GETIMPORT                        R5 K3 [tostring]
       10 CALL                             R5 1 1
       11 CONCAT                           R3 R4 R5
       12 FASTCALL1                        TYPE R1 ; [+3]
       13 MOVE                             R8 R1
       14 GETIMPORT                        R7 K1 [type]
       16 CALL                             R7 1 1
       17 MOVE                             R5 R7
       18 FASTCALL1                        TOSTRING R1 ; [+3]
       19 MOVE                             R7 R1
       20 GETIMPORT                        R6 K3 [tostring]
       22 CALL                             R6 1 1
       23 CONCAT                           R4 R5 R6
       24 JUMPIFNOTLT                      R3 R4 ; [+3]
       26 LOADN                            R2 255
       27 RETURN                           R2 1
       28 FASTCALL1                        TYPE R0 ; [+3]
       29 MOVE                             R7 R0
       30 GETIMPORT                        R6 K1 [type]
       32 CALL                             R6 1 1
       33 MOVE                             R4 R6
       34 FASTCALL1                        TOSTRING R0 ; [+3]
       35 MOVE                             R6 R0
       36 GETIMPORT                        R5 K3 [tostring]
       38 CALL                             R5 1 1
       39 CONCAT                           R3 R4 R5
       40 FASTCALL1                        TYPE R1 ; [+3]
       41 MOVE                             R8 R1
       42 GETIMPORT                        R7 K1 [type]
       44 CALL                             R7 1 1
       45 MOVE                             R5 R7
       46 FASTCALL1                        TOSTRING R1 ; [+3]
       47 MOVE                             R7 R1
       48 GETIMPORT                        R6 K3 [tostring]
       50 CALL                             R6 1 1
       51 CONCAT                           R4 R5 R6
       52 JUMPIFNOTEQ                      R3 R4 ; [+3]
       54 LOADN                            R2 0
       55 RETURN                           R2 1
       56 LOADN                            R2 1
       57 RETURN                           R2 1

PROTO_1:
        0 ORK                              R7 R6 K0 [": "]
        1 LOADK                            R8 K1 [""]
        2 GETUPVAL                         R10 0
        3 GETTABLEKS                       R9 R10 K2 ["sort"]
        5 GETUPVAL                         R11 1
        6 GETTABLEKS                       R10 R11 K3 ["keys"]
        8 MOVE                             R11 R0
        9 CALL                             R10 1 1
       10 GETTABLEKS                       R12 R1 K4 ["compareKeys"]
       12 JUMPIFEQKNIL                     R12 ; [+11]
       14 GETTABLEKS                       R12 R1 K4 ["compareKeys"]
       16 GETUPVAL                         R14 1
       17 GETTABLEKS                       R13 R14 K5 ["None"]
       19 JUMPIFEQ                         R12 R13 ; [+4]
       21 GETTABLEKS                       R11 R1 K4 ["compareKeys"]
       23 JUMP                             ; [+1]
       24 DUPCLOSURE                       R11 K6 [PROTO_0]
       25 CALL                             R9 2 1
       26 LENGTH                           R10 R9
       27 LOADN                            R11 0
       28 JUMPIFNOTLT                      R11 R10 ; [+56]
       30 MOVE                             R10 R8
       31 GETTABLEKS                       R11 R1 K7 ["spacingOuter"]
       33 CONCAT                           R8 R10 R11
       34 MOVE                             R11 R2
       35 GETTABLEKS                       R12 R1 K8 ["indent"]
       37 CONCAT                           R10 R11 R12
       38 LOADN                            R13 1
       39 LENGTH                           R11 R9
       40 LOADN                            R12 1
       41 FORNPREP                         R11
       42 GETTABLE                         R14 R9 R13
       43 GETTABLE                         R15 R0 R14
       44 MOVE                             R16 R5
       45 MOVE                             R17 R14
       46 MOVE                             R18 R1
       47 MOVE                             R19 R10
       48 MOVE                             R20 R3
       49 MOVE                             R21 R4
       50 CALL                             R16 5 1
       51 MOVE                             R17 R5
       52 MOVE                             R18 R15
       53 MOVE                             R19 R1
       54 MOVE                             R20 R10
       55 MOVE                             R21 R3
       56 MOVE                             R22 R4
       57 CALL                             R17 5 1
       58 MOVE                             R18 R8
       59 MOVE                             R19 R10
       60 MOVE                             R20 R16
       61 MOVE                             R21 R7
       62 MOVE                             R22 R17
       63 CONCAT                           R8 R18 R22
       64 LENGTH                           R18 R9
       65 JUMPIFNOTLT                      R13 R18 ; [+7]
       67 MOVE                             R18 R8
       68 LOADK                            R19 K9 [","]
       69 GETTABLEKS                       R20 R1 K10 ["spacingInner"]
       71 CONCAT                           R8 R18 R20
       72 JUMP                             ; [+6]
       73 GETTABLEKS                       R18 R1 K11 ["min"]
       75 JUMPIF                           R18 ; [+3]
       76 MOVE                             R18 R8
       77 LOADK                            R19 K9 [","]
       78 CONCAT                           R8 R18 R19
       79 FORNLOOP                         R11
       80 MOVE                             R11 R8
       81 GETTABLEKS                       R12 R1 K7 ["spacingOuter"]
       83 MOVE                             R13 R2
       84 CONCAT                           R8 R11 R13
       85 RETURN                           R8 1

PROTO_2:
        0 LOADK                            R6 K0 [""]
        1 LENGTH                           R7 R0
        2 LOADN                            R8 0
        3 JUMPIFNOTLT                      R8 R7 ; [+49]
        5 MOVE                             R7 R6
        6 GETTABLEKS                       R8 R1 K1 ["spacingOuter"]
        8 CONCAT                           R6 R7 R8
        9 MOVE                             R8 R2
       10 GETTABLEKS                       R9 R1 K2 ["indent"]
       12 CONCAT                           R7 R8 R9
       13 LOADN                            R10 1
       14 LENGTH                           R8 R0
       15 LOADN                            R9 1
       16 FORNPREP                         R8
       17 MOVE                             R11 R6
       18 MOVE                             R12 R7
       19 CONCAT                           R6 R11 R12
       20 GETTABLE                         R11 R0 R10
       21 JUMPIFEQKNIL                     R11 ; [+10]
       23 MOVE                             R11 R6
       24 MOVE                             R12 R5
       25 GETTABLE                         R13 R0 R10
       26 MOVE                             R14 R1
       27 MOVE                             R15 R7
       28 MOVE                             R16 R3
       29 MOVE                             R17 R4
       30 CALL                             R12 5 1
       31 CONCAT                           R6 R11 R12
       32 LENGTH                           R11 R0
       33 JUMPIFNOTLT                      R10 R11 ; [+7]
       35 MOVE                             R11 R6
       36 LOADK                            R12 K3 [","]
       37 GETTABLEKS                       R13 R1 K4 ["spacingInner"]
       39 CONCAT                           R6 R11 R13
       40 JUMP                             ; [+6]
       41 GETTABLEKS                       R11 R1 K5 ["min"]
       43 JUMPIF                           R11 ; [+3]
       44 MOVE                             R11 R6
       45 LOADK                            R12 K3 [","]
       46 CONCAT                           R6 R11 R12
       47 FORNLOOP                         R8
       48 MOVE                             R8 R6
       49 GETTABLEKS                       R9 R1 K1 ["spacingOuter"]
       51 MOVE                             R10 R2
       52 CONCAT                           R6 R8 R10
       53 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Object"]
       14 GETTABLEKS                       R4 R2 K7 ["Array"]
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R0 K8 ["Types"]
       20 CALL                             R5 1 1
       21 DUPCLOSURE                       R6 K9 [PROTO_1]
       22 CAPTURE                          VAL R4
       23 CAPTURE                          VAL R3
       24 DUPCLOSURE                       R7 K10 [PROTO_2]
       25 DUPTABLE                         R8 K13 [{"printTableEntries", "printListItems"}]
       26 SETTABLEKS                       R6 R8 K11 ["printTableEntries"]
       28 SETTABLEKS                       R7 R8 K12 ["printListItems"]
       30 RETURN                           R8 1
