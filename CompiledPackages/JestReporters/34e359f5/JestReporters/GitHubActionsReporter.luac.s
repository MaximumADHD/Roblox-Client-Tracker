PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K2 [setmetatable]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R0 R2 K3 ["_globalConfig"]
       13 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 4
        2 NEWTABLE                         R2 0 2
        4 LOADK                            R3 K0 ["%%"]
        5 LOADK                            R4 K1 ["%%25"]
        6 SETLIST                          R2 R3 2 [1]
        8 NEWTABLE                         R3 0 2
       10 LOADK                            R4 K2 ["\r"]
       11 LOADK                            R5 K3 ["%%0D"]
       12 SETLIST                          R3 R4 2 [1]
       14 NEWTABLE                         R4 0 2
       16 LOADK                            R5 K4 ["\n"]
       17 LOADK                            R6 K5 ["%%0A"]
       18 SETLIST                          R4 R5 2 [1]
       20 NEWTABLE                         R5 0 2
       22 LOADK                            R6 K6 ["\t"]
       23 LOADK                            R7 K7 ["    "]
       24 SETLIST                          R5 R6 2 [1]
       26 SETLIST                          R1 R2 4 [1]
       28 GETIMPORT                        R2 K9 [ipairs]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 3
       32 FORGPREP_INEXT                   R2
       33 GETTABLEN                        R9 R6 1
       34 GETTABLEN                        R10 R6 2
       35 NAMECALL                         R7 R0 K10 ["gsub"]
       37 CALL                             R7 3 1
       38 MOVE                             R0 R7
       39 FORGLOOP                         R2 2 [inext] ; [-7]
       41 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 JUMPIFEQKS                       R2 K1 ["failed"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["exec"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 JUMPIFEQKNIL                     R0 ; [+15]
        2 GETTABLEN                        R1 R0 1
        3 GETTABLEN                        R3 R0 2
        4 FASTCALL1                        TOSTRING R3 ; [+2]
        5 GETIMPORT                        R2 K1 [tostring]
        7 CALL                             R2 1 1
        8 LOADK                            R3 K2 ["::error file=%s,line=%s::%s"]
        9 GETUPVAL                         R5 0
       10 MOVE                             R6 R2
       11 MOVE                             R7 R1
       12 NAMECALL                         R3 R3 K3 ["format"]
       14 CALL                             R3 4 -1
       15 RETURN                           R3 -1
       16 LOADK                            R1 K4 [""]
       17 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["map"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["map"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["map"]
       12 GETTABLEKS                       R5 R0 K1 ["failureMessages"]
       14 DUPCLOSURE                       R6 K2 [PROTO_3]
       15 CAPTURE                          UPVAL U1
       16 CALL                             R4 2 1
       17 DUPCLOSURE                       R5 K3 [PROTO_4]
       18 CAPTURE                          UPVAL U2
       19 CALL                             R3 2 1
       20 DUPCLOSURE                       R4 K4 [PROTO_5]
       21 CAPTURE                          UPVAL U3
       22 CALL                             R2 2 1
       23 NEWCLOSURE                       R3 P3
       24 CAPTURE                          UPVAL U4
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["testFilePath"]
        2 GETTABLEKS                       R2 R0 K1 ["testResults"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["flatMap"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K3 ["filter"]
       10 MOVE                             R5 R2
       11 DUPCLOSURE                       R6 K4 [PROTO_2]
       12 CALL                             R4 2 1
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R1
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_9:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 NEWTABLE                         R1 0 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["flatMap"]
        8 MOVE                             R2 R0
        9 DUPCLOSURE                       R3 K1 [PROTO_8]
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_10:
        0 FASTCALL1                        TYPEOF R2 ; [+3]
        1 MOVE                             R6 R2
        2 GETIMPORT                        R5 K1 [typeof]
        4 CALL                             R5 1 1
        5 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R4 R2 K3 ["testResults"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R4
       11 JUMPIFNOTEQKNIL                  R4 ; [+4]
       13 NEWTABLE                         R3 0 0
       15 JUMP                             ; [+11]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["flatMap"]
       19 MOVE                             R6 R4
       20 DUPCLOSURE                       R7 K5 [PROTO_8]
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CALL                             R5 2 1
       26 MOVE                             R3 R5
       27 MOVE                             R4 R3
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 FORGPREP                         R4
       31 MOVE                             R11 R8
       32 NAMECALL                         R9 R0 K6 ["log"]
       34 CALL                             R9 2 0
       35 FORGLOOP                         R4 2 ; [-5]
       37 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R1 K7 ["RegExp"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K4 [require]
       21 GETTABLEKS                       R6 R1 K8 ["JestTestResult"]
       23 CALL                             R5 1 1
       24 GETIMPORT                        R6 K4 [require]
       26 GETTABLEKS                       R7 R1 K9 ["RobloxShared"]
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R6 K10 ["stripAnsi"]
       31 NEWTABLE                         R8 1 0
       33 GETIMPORT                        R9 K4 [require]
       35 GETIMPORT                        R10 K1 [script]
       37 GETTABLEKS                       R10 R10 K2 ["Parent"]
       39 GETTABLEKS                       R10 R10 K11 ["BaseReporter"]
       41 CALL                             R9 1 1
       42 GETTABLEKS                       R9 R9 K12 ["default"]
       44 MOVE                             R10 R4
       45 LOADK                            R11 K13 ["^.*?:([0-9]+).*$"]
       46 CALL                             R10 1 1
       47 NEWTABLE                         R12 0 0
       49 DUPTABLE                         R13 K15 [{"__index"}]
       50 SETTABLEKS                       R9 R13 K14 ["__index"]
       52 FASTCALL2                        SETMETATABLE R12 R13 ; [+3]
       54 GETIMPORT                        R11 K17 [setmetatable]
       56 CALL                             R11 2 1
       57 SETTABLEKS                       R11 R11 K14 ["__index"]
       59 LOADK                            R12 K18 ["GithubActionsReporter"]
       60 SETTABLEKS                       R12 R11 K19 ["filename"]
       62 DUPCLOSURE                       R12 K20 [PROTO_0]
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R11
       65 SETTABLEKS                       R12 R11 K21 ["new"]
       67 DUPCLOSURE                       R12 K22 [PROTO_1]
       68 DUPCLOSURE                       R13 K23 [PROTO_9]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R10
       73 DUPCLOSURE                       R14 K24 [PROTO_10]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R10
       78 SETTABLEKS                       R14 R11 K25 ["onRunComplete"]
       80 SETTABLEKS                       R11 R8 K12 ["default"]
       82 RETURN                           R8 1
