PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isArray"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+4]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 MOVE                             R1 R2
       10 LENGTH                           R2 R1
       11 LOADN                            R3 0
       12 JUMPIFNOTLT                      R3 R2 ; [+69]
       14 LENGTH                           R3 R1
       15 JUMPIFEQKN                       R3 K1 [1] ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 GETTABLEN                        R3 R1 1
       20 GETIMPORT                        R4 K3 [pcall]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R3
       25 CALL                             R4 1 2
       26 JUMPIFNOT                        R4 ; [+3]
       27 JUMPIF                           R2 ; [+13]
       28 JUMPIFNOTEQKNIL                  R5 ; [+12]
       30 DUPTABLE                         R6 K7 [{"hasEndProp", "lastTraversedObject", "traversedPath"}]
       31 LOADB                            R7 0
       32 SETTABLEKS                       R7 R6 K4 ["hasEndProp"]
       34 SETTABLEKS                       R0 R6 K5 ["lastTraversedObject"]
       36 NEWTABLE                         R7 0 0
       38 SETTABLEKS                       R7 R6 K6 ["traversedPath"]
       40 RETURN                           R6 1
       41 GETUPVAL                         R6 2
       42 MOVE                             R7 R5
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K8 ["slice"]
       46 MOVE                             R9 R1
       47 LOADN                            R10 2
       48 CALL                             R8 2 -1
       49 CALL                             R6 -1 1
       50 GETTABLEKS                       R7 R6 K5 ["lastTraversedObject"]
       52 JUMPIFNOTEQKNIL                  R7 ; [+3]
       54 SETTABLEKS                       R0 R6 K5 ["lastTraversedObject"]
       56 GETTABLEKS                       R8 R6 K6 ["traversedPath"]
       58 LOADN                            R9 1
       59 FASTCALL3                        TABLE_INSERT R8 R9 R3
       61 MOVE                             R10 R3
       62 GETIMPORT                        R7 K11 [table.insert]
       64 CALL                             R7 3 0
       65 JUMPIFNOT                        R2 ; [+15]
       66 JUMPIFNOTEQKNIL                  R5 ; [+2]
       68 LOADB                            R7 0 +1
       69 LOADB                            R7 1
       70 SETTABLEKS                       R7 R6 K4 ["hasEndProp"]
       72 GETTABLEKS                       R7 R6 K4 ["hasEndProp"]
       74 JUMPIF                           R7 ; [+6]
       75 GETUPVAL                         R7 0
       76 GETTABLEKS                       R7 R7 K12 ["shift"]
       78 GETTABLEKS                       R8 R6 K6 ["traversedPath"]
       80 CALL                             R7 1 0
       81 RETURN                           R6 1
       82 DUPTABLE                         R2 K14 [{"lastTraversedObject", "traversedPath", "value"}]
       83 LOADNIL                          R3
       84 SETTABLEKS                       R3 R2 K5 ["lastTraversedObject"]
       86 NEWTABLE                         R3 0 0
       88 SETTABLEKS                       R3 R2 K6 ["traversedPath"]
       90 SETTABLEKS                       R0 R2 K13 ["value"]
       92 RETURN                           R2 1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K1 [typeof]
       10 CALL                             R2 1 1
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R4 R1
       13 GETIMPORT                        R3 K1 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFEQ                         R2 R3 ; [+3]
       18 LOADB                            R2 0
       19 RETURN                           R2 1
       20 FASTCALL1                        GETMETATABLE R0 ; [+3]
       21 MOVE                             R3 R0
       22 GETIMPORT                        R2 K3 [getmetatable]
       24 CALL                             R2 1 1
       25 JUMPIF                           R2 ; [+8]
       26 FASTCALL1                        GETMETATABLE R1 ; [+3]
       27 MOVE                             R3 R1
       28 GETIMPORT                        R2 K3 [getmetatable]
       30 CALL                             R2 1 1
       31 JUMPIF                           R2 ; [+2]
       32 LOADNIL                          R2
       33 RETURN                           R2 1
       34 FASTCALL1                        GETMETATABLE R0 ; [+3]
       35 MOVE                             R3 R0
       36 GETIMPORT                        R2 K3 [getmetatable]
       38 CALL                             R2 1 1
       39 JUMPIFNOT                        R2 ; [+40]
       40 FASTCALL1                        GETMETATABLE R1 ; [+3]
       41 MOVE                             R3 R1
       42 GETIMPORT                        R2 K3 [getmetatable]
       44 CALL                             R2 1 1
       45 JUMPIFNOT                        R2 ; [+34]
       46 FASTCALL1                        GETMETATABLE R0 ; [+3]
       47 MOVE                             R3 R0
       48 GETIMPORT                        R2 K3 [getmetatable]
       50 CALL                             R2 1 1
       51 GETTABLEKS                       R2 R2 K4 ["__index"]
       53 JUMPIFNOT                        R2 ; [+26]
       54 FASTCALL1                        GETMETATABLE R1 ; [+3]
       55 MOVE                             R3 R1
       56 GETIMPORT                        R2 K3 [getmetatable]
       58 CALL                             R2 1 1
       59 GETTABLEKS                       R2 R2 K4 ["__index"]
       61 JUMPIFNOT                        R2 ; [+18]
       62 FASTCALL1                        GETMETATABLE R0 ; [+3]
       63 MOVE                             R3 R0
       64 GETIMPORT                        R2 K3 [getmetatable]
       66 CALL                             R2 1 1
       67 GETTABLEKS                       R2 R2 K4 ["__index"]
       69 FASTCALL1                        GETMETATABLE R1 ; [+3]
       70 MOVE                             R4 R1
       71 GETIMPORT                        R3 K3 [getmetatable]
       73 CALL                             R3 1 1
       74 GETTABLEKS                       R3 R3 K4 ["__index"]
       76 JUMPIFNOTEQ                      R2 R3 ; [+3]
       78 LOADNIL                          R2
       79 RETURN                           R2 1
       80 LOADB                            R2 0
       81 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isArray"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["isArray"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 JUMPIF                           R2 ; [+2]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K1 ["keys"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K1 ["keys"]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 2
       25 MOVE                             R5 R0
       26 MOVE                             R6 R1
       27 NEWTABLE                         R7 0 1
       29 GETUPVAL                         R8 3
       30 SETLIST                          R7 R8 1 [1]
       32 LOADB                            R8 1
       33 CALL                             R4 4 1
       34 JUMPIFNOT                        R4 ; [+4]
       35 GETUPVAL                         R4 2
       36 MOVE                             R5 R2
       37 MOVE                             R6 R3
       38 CALL                             R4 2 1
       39 RETURN                           R4 1

PROTO_4:
        0 NEWTABLE                         R2 0 2
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 SETLIST                          R2 R3 2 [1]
        8 GETIMPORT                        R3 K1 [ipairs]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 3
       12 FORGPREP_INEXT                   R3
       13 MOVE                             R11 R1
       14 MOVE                             R12 R7
       15 CALL                             R11 1 1
       16 JUMPIFNOT                        R11 ; [+2]
       17 LOADN                            R10 1
       18 JUMP                             ; [+1]
       19 LOADN                            R10 2
       20 GETTABLE                         R9 R2 R10
       21 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       23 MOVE                             R10 R7
       24 GETIMPORT                        R8 K4 [table.insert]
       26 CALL                             R8 2 0
       27 FORGLOOP                         R3 2 [inext] ; [-15]
       29 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["[^.[\\]]+|(?=(?:\\.)(?:\\.|$))"]
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 LOADN                            R5 1
        6 LOADN                            R6 1
        7 NAMECALL                         R3 R0 K1 ["sub"]
        9 CALL                             R3 3 1
       10 JUMPIFNOTEQKS                    R3 K2 ["."] ; [+8]
       12 FASTCALL2K                       TABLE_INSERT R2 K3 ; [+5]
       14 MOVE                             R4 R2
       15 LOADK                            R5 K3 [""]
       16 GETIMPORT                        R3 K6 [table.insert]
       18 CALL                             R3 2 0
       19 LOADN                            R3 0
       20 MOVE                             R4 R0
       21 MOVE                             R7 R4
       22 NAMECALL                         R5 R1 K7 ["exec"]
       24 CALL                             R5 2 1
       25 JUMPIFEQKNIL                     R5 ; [+62]
       27 LENGTH                           R6 R0
       28 JUMPIFNOTLT                      R3 R6 ; [+59]
       30 GETTABLEN                        R6 R5 1
       31 GETTABLEKS                       R8 R5 K8 ["index"]
       33 LENGTH                           R9 R6
       34 ADD                              R7 R8 R9
       35 GETTABLEKS                       R9 R5 K8 ["index"]
       37 ADD                              R8 R3 R9
       38 SUBK                             R11 R8 K9 [1]
       39 SUBK                             R12 R8 K9 [1]
       40 NAMECALL                         R9 R0 K1 ["sub"]
       42 CALL                             R9 3 1
       43 JUMPIFNOTEQKS                    R9 K10 ["["] ; [+25]
       45 FASTCALL2K                       TONUMBER R6 K11 ; [+5]
       47 MOVE                             R11 R6
       48 LOADK                            R12 K11 [10]
       49 GETIMPORT                        R10 K13 [tonumber]
       51 CALL                             R10 2 1
       52 JUMPIFNOT                        R10 ; [+8]
       53 FASTCALL2                        TABLE_INSERT R2 R10 ; [+5]
       55 MOVE                             R12 R2
       56 MOVE                             R13 R10
       57 GETIMPORT                        R11 K6 [table.insert]
       59 CALL                             R11 2 0
       60 JUMP                             ; [+15]
       61 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       63 MOVE                             R12 R2
       64 MOVE                             R13 R6
       65 GETIMPORT                        R11 K6 [table.insert]
       67 CALL                             R11 2 0
       68 JUMP                             ; [+7]
       69 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       71 MOVE                             R11 R2
       72 MOVE                             R12 R6
       73 GETIMPORT                        R10 K6 [table.insert]
       75 CALL                             R10 2 0
       76 ADD                              R3 R3 R7
       77 ADDK                             R12 R7 K9 [1]
       78 NAMECALL                         R10 R4 K1 ["sub"]
       80 CALL                             R10 2 1
       81 MOVE                             R4 R10
       82 MOVE                             R12 R4
       83 NAMECALL                         R10 R1 K7 ["exec"]
       85 CALL                             R10 2 1
       86 MOVE                             R5 R10
       87 JUMPBACK                         ; [-63]
       88 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+10]
        7 LOADB                            R1 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["keys"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 LENGTH                           R2 R3
       14 JUMPIFEQKN                       R2 K4 [0] ; [+2]
       16 LOADB                            R1 0
       17 RETURN                           R1 1

PROTO_8:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+20]
        8 LOADB                            R2 0
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K1 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+12]
       16 LOADK                            R5 K3 ["[\r\n]"]
       17 NAMECALL                         R3 R1 K4 ["match"]
       19 CALL                             R3 2 1
       20 NOT                              R2 R3
       21 JUMPIF                           R2 ; [+5]
       22 LOADK                            R5 K3 ["[\r\n]"]
       23 NAMECALL                         R3 R0 K4 ["match"]
       25 CALL                             R3 2 1
       26 NOT                              R2 R3
       27 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Error"]
       16 GETTABLEKS                       R5 R2 K8 ["instanceof"]
       18 GETTABLEKS                       R6 R2 K9 ["Object"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R1 K10 ["RegExp"]
       24 CALL                             R7 1 1
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R1 K11 ["RobloxShared"]
       29 CALL                             R8 1 1
       30 GETIMPORT                        R9 K4 [require]
       32 GETTABLEKS                       R10 R0 K12 ["jasmineUtils"]
       34 CALL                             R9 1 1
       35 GETTABLEKS                       R10 R9 K13 ["equals"]
       37 LOADNIL                          R11
       38 NEWCLOSURE                       R12 P0
       39 CAPTURE                          VAL R3
       40 CAPTURE                          REF R11
       41 CAPTURE                          VAL R12
       42 GETTABLEKS                       R13 R8 K14 ["expect"]
       44 GETTABLEKS                       R13 R13 K15 ["getObjectSubset"]
       46 GETTABLEKS                       R14 R8 K14 ["expect"]
       48 GETTABLEKS                       R14 R14 K16 ["iterableEquality"]
       50 GETTABLEKS                       R15 R8 K14 ["expect"]
       52 GETTABLEKS                       R15 R15 K17 ["subsetEquality"]
       54 DUPCLOSURE                       R16 K18 [PROTO_2]
       55 DUPCLOSURE                       R17 K19 [PROTO_3]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R16
       60 DUPCLOSURE                       R18 K20 [PROTO_4]
       61 DUPCLOSURE                       R11 K21 [PROTO_5]
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R19 K22 [PROTO_6]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R4
       66 DUPCLOSURE                       R20 K23 [PROTO_7]
       67 CAPTURE                          VAL R6
       68 DUPCLOSURE                       R21 K24 [PROTO_8]
       69 DUPTABLE                         R22 K33 [{"getPath", "getObjectSubset", "iterableEquality", "subsetEquality", "typeEquality", "sparseArrayEquality", "partition", "pathAsArray", "isError", "emptyObject", "isOneline"}]
       70 SETTABLEKS                       R12 R22 K25 ["getPath"]
       72 SETTABLEKS                       R13 R22 K15 ["getObjectSubset"]
       74 SETTABLEKS                       R14 R22 K16 ["iterableEquality"]
       76 SETTABLEKS                       R15 R22 K17 ["subsetEquality"]
       78 SETTABLEKS                       R16 R22 K26 ["typeEquality"]
       80 SETTABLEKS                       R17 R22 K27 ["sparseArrayEquality"]
       82 SETTABLEKS                       R18 R22 K28 ["partition"]
       84 SETTABLEKS                       R11 R22 K29 ["pathAsArray"]
       86 SETTABLEKS                       R19 R22 K30 ["isError"]
       88 SETTABLEKS                       R20 R22 K31 ["emptyObject"]
       90 SETTABLEKS                       R21 R22 K32 ["isOneline"]
       92 CLOSEUPVALS                      R11
       93 RETURN                           R22 1
