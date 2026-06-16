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
        2 GETUPVAL                         R9 0
        3 GETTABLEKS                       R9 R9 K2 ["sort"]
        5 GETUPVAL                         R10 1
        6 GETTABLEKS                       R10 R10 K3 ["keys"]
        8 MOVE                             R11 R0
        9 CALL                             R10 1 1
       10 GETTABLEKS                       R12 R1 K4 ["compareKeys"]
       12 JUMPIFEQKNIL                     R12 ; [+11]
       14 GETTABLEKS                       R12 R1 K4 ["compareKeys"]
       16 GETUPVAL                         R13 1
       17 GETTABLEKS                       R13 R13 K5 ["None"]
       19 JUMPIFEQ                         R12 R13 ; [+4]
       21 GETTABLEKS                       R11 R1 K4 ["compareKeys"]
       23 JUMP                             ; [+1]
       24 DUPCLOSURE                       R11 K6 [PROTO_0]
       25 CALL                             R9 2 1
       26 LENGTH                           R10 R9
       27 LOADN                            R11 0
       28 JUMPIFNOTLT                      R11 R10 ; [+65]
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
       44 MOVE                             R16 R8
       45 MOVE                             R17 R10
       46 CONCAT                           R8 R16 R17
       47 MOVE                             R16 R5
       48 MOVE                             R17 R14
       49 MOVE                             R18 R1
       50 MOVE                             R19 R10
       51 MOVE                             R20 R3
       52 MOVE                             R21 R4
       53 CALL                             R16 5 1
       54 MOVE                             R17 R5
       55 MOVE                             R18 R15
       56 MOVE                             R19 R1
       57 MOVE                             R20 R10
       58 MOVE                             R21 R3
       59 MOVE                             R22 R4
       60 CALL                             R17 5 1
       61 MOVE                             R18 R8
       62 MOVE                             R19 R16
       63 MOVE                             R20 R7
       64 MOVE                             R21 R17
       65 CONCAT                           R8 R18 R21
       66 LENGTH                           R18 R9
       67 JUMPIFNOTLT                      R13 R18 ; [+14]
       69 MOVE                             R18 R8
       70 LOADK                            R19 K9 [",%s"]
       71 GETTABLEKS                       R22 R1 K10 ["spacingInner"]
       73 FASTCALL1                        TOSTRING R22 ; [+2]
       74 GETIMPORT                        R21 K12 [tostring]
       76 CALL                             R21 1 1
       77 NAMECALL                         R19 R19 K13 ["format"]
       79 CALL                             R19 2 1
       80 CONCAT                           R8 R18 R19
       81 JUMP                             ; [+6]
       82 GETTABLEKS                       R18 R1 K14 ["min"]
       84 JUMPIF                           R18 ; [+3]
       85 MOVE                             R18 R8
       86 LOADK                            R19 K15 [","]
       87 CONCAT                           R8 R18 R19
       88 FORNLOOP                         R11
       89 MOVE                             R11 R8
       90 GETTABLEKS                       R12 R1 K7 ["spacingOuter"]
       92 MOVE                             R13 R2
       93 CONCAT                           R8 R11 R13
       94 RETURN                           R8 1

PROTO_2:
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

PROTO_3:
        0 ORK                              R7 R6 K0 [" => "]
        1 LOADK                            R8 K1 [""]
        2 GETUPVAL                         R9 0
        3 GETTABLEKS                       R9 R9 K2 ["sort"]
        5 GETUPVAL                         R10 1
        6 GETTABLEKS                       R10 R10 K3 ["keys"]
        8 MOVE                             R11 R0
        9 CALL                             R10 1 1
       10 GETTABLEKS                       R12 R1 K4 ["compareKeys"]
       12 JUMPIFEQKNIL                     R12 ; [+11]
       14 GETTABLEKS                       R12 R1 K4 ["compareKeys"]
       16 GETUPVAL                         R13 1
       17 GETTABLEKS                       R13 R13 K5 ["None"]
       19 JUMPIFEQ                         R12 R13 ; [+4]
       21 GETTABLEKS                       R11 R1 K4 ["compareKeys"]
       23 JUMP                             ; [+1]
       24 DUPCLOSURE                       R11 K6 [PROTO_2]
       25 CALL                             R9 2 1
       26 LENGTH                           R10 R9
       27 LOADN                            R11 0
       28 JUMPIFNOTLT                      R11 R10 ; [+74]
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
       44 MOVE                             R16 R8
       45 MOVE                             R17 R10
       46 CONCAT                           R8 R16 R17
       47 GETTABLEKS                       R17 R1 K10 ["maxWidth"]
       49 ADDK                             R16 R17 K9 [1]
       50 JUMPIFNOTEQ                      R13 R16 ; [+5]
       52 MOVE                             R16 R8
       53 LOADK                            R17 K11 ["…"]
       54 CONCAT                           R8 R16 R17
       55 JUMP                             ; [+42]
       56 MOVE                             R16 R5
       57 MOVE                             R17 R14
       58 MOVE                             R18 R1
       59 MOVE                             R19 R10
       60 MOVE                             R20 R3
       61 MOVE                             R21 R4
       62 CALL                             R16 5 1
       63 MOVE                             R17 R5
       64 MOVE                             R18 R15
       65 MOVE                             R19 R1
       66 MOVE                             R20 R10
       67 MOVE                             R21 R3
       68 MOVE                             R22 R4
       69 CALL                             R17 5 1
       70 MOVE                             R18 R8
       71 MOVE                             R19 R16
       72 MOVE                             R20 R7
       73 MOVE                             R21 R17
       74 CONCAT                           R8 R18 R21
       75 LENGTH                           R18 R9
       76 JUMPIFNOTLT                      R13 R18 ; [+14]
       78 MOVE                             R18 R8
       79 LOADK                            R19 K12 [",%s"]
       80 GETTABLEKS                       R22 R1 K13 ["spacingInner"]
       82 FASTCALL1                        TOSTRING R22 ; [+2]
       83 GETIMPORT                        R21 K15 [tostring]
       85 CALL                             R21 1 1
       86 NAMECALL                         R19 R19 K16 ["format"]
       88 CALL                             R19 2 1
       89 CONCAT                           R8 R18 R19
       90 JUMP                             ; [+6]
       91 GETTABLEKS                       R18 R1 K17 ["min"]
       93 JUMPIF                           R18 ; [+3]
       94 MOVE                             R18 R8
       95 LOADK                            R19 K18 [","]
       96 CONCAT                           R8 R18 R19
       97 FORNLOOP                         R11
       98 MOVE                             R11 R8
       99 GETTABLEKS                       R12 R1 K7 ["spacingOuter"]
      101 MOVE                             R13 R2
      102 CONCAT                           R8 R11 R13
      103 RETURN                           R8 1

PROTO_4:
        0 LOADK                            R6 K0 [""]
        1 LENGTH                           R7 R0
        2 LOADN                            R8 0
        3 JUMPIFNOTLT                      R8 R7 ; [+65]
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
       20 GETTABLEKS                       R12 R1 K4 ["maxWidth"]
       22 ADDK                             R11 R12 K3 [1]
       23 JUMPIFNOTEQ                      R10 R11 ; [+5]
       25 MOVE                             R11 R6
       26 LOADK                            R12 K5 ["…"]
       27 CONCAT                           R6 R11 R12
       28 JUMP                             ; [+35]
       29 GETTABLE                         R11 R0 R10
       30 JUMPIFEQKNIL                     R11 ; [+10]
       32 MOVE                             R11 R6
       33 MOVE                             R12 R5
       34 GETTABLE                         R13 R0 R10
       35 MOVE                             R14 R1
       36 MOVE                             R15 R7
       37 MOVE                             R16 R3
       38 MOVE                             R17 R4
       39 CALL                             R12 5 1
       40 CONCAT                           R6 R11 R12
       41 LENGTH                           R11 R0
       42 JUMPIFNOTLT                      R10 R11 ; [+14]
       44 MOVE                             R11 R6
       45 LOADK                            R12 K6 [",%s"]
       46 GETTABLEKS                       R15 R1 K7 ["spacingInner"]
       48 FASTCALL1                        TOSTRING R15 ; [+2]
       49 GETIMPORT                        R14 K9 [tostring]
       51 CALL                             R14 1 1
       52 NAMECALL                         R12 R12 K10 ["format"]
       54 CALL                             R12 2 1
       55 CONCAT                           R6 R11 R12
       56 JUMP                             ; [+6]
       57 GETTABLEKS                       R11 R1 K11 ["min"]
       59 JUMPIF                           R11 ; [+3]
       60 MOVE                             R11 R6
       61 LOADK                            R12 K12 [","]
       62 CONCAT                           R6 R11 R12
       63 FORNLOOP                         R8
       64 MOVE                             R8 R6
       65 GETTABLEKS                       R9 R1 K1 ["spacingOuter"]
       67 MOVE                             R10 R2
       68 CONCAT                           R6 R8 R10
       69 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       24 DUPCLOSURE                       R7 K10 [PROTO_3]
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R3
       27 DUPCLOSURE                       R8 K11 [PROTO_4]
       28 DUPTABLE                         R9 K15 [{"printTableEntries", "printMapEntries", "printListItems"}]
       29 SETTABLEKS                       R6 R9 K12 ["printTableEntries"]
       31 SETTABLEKS                       R7 R9 K13 ["printMapEntries"]
       33 SETTABLEKS                       R8 R9 K14 ["printListItems"]
       35 RETURN                           R9 1
