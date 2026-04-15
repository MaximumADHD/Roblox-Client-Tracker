PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["routes"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["key"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+2]
        9 RETURN                           R6 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["routes"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["key"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+2]
        9 RETURN                           R5 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["routes"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K1 ["key"]
        7 JUMPIFNOTEQ                      R7 R1 ; [+3]
        9 LOADB                            R7 1
       10 RETURN                           R7 1
       11 FORGLOOP                         R2 2 ; [-7]
       13 LOADB                            R2 0
       14 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["indexOf"]
        3 MOVE                             R5 R0
        4 GETTABLEKS                       R6 R1 K1 ["key"]
        6 CALL                             R4 2 1
        7 JUMPIFEQKNIL                     R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 LOADK                            R4 K2 ["should not push route with duplicated key %s"]
       12 GETTABLEKS                       R6 R1 K1 ["key"]
       14 NAMECALL                         R4 R4 K3 ["format"]
       16 CALL                             R4 2 -1
       17 FASTCALL                         ASSERT ; [+2]
       18 GETIMPORT                        R2 K5 [assert]
       20 CALL                             R2 -1 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R2 R3 K6 ["concat"]
       24 GETTABLEKS                       R3 R0 K7 ["routes"]
       26 NEWTABLE                         R4 0 1
       28 MOVE                             R5 R1
       29 SETLIST                          R4 R5 1 [1]
       31 CALL                             R2 2 1
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R3 R4 K8 ["assign"]
       35 GETIMPORT                        R4 K11 [table.clone]
       37 MOVE                             R5 R0
       38 CALL                             R4 1 1
       39 DUPTABLE                         R5 K13 [{"index", "routes"}]
       40 LENGTH                           R6 R2
       41 SETTABLEKS                       R6 R5 K12 ["index"]
       43 SETTABLEKS                       R2 R5 K7 ["routes"]
       45 CALL                             R3 2 -1
       46 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["index"]
        2 LOADN                            R2 1
        3 JUMPIFNOTLE                      R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 GETIMPORT                        R1 K3 [table.clone]
        8 GETTABLEKS                       R2 R0 K4 ["routes"]
       10 CALL                             R1 1 1
       11 GETIMPORT                        R2 K6 [table.remove]
       13 MOVE                             R3 R1
       14 LENGTH                           R4 R1
       15 CALL                             R2 2 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K7 ["assign"]
       19 GETIMPORT                        R3 K3 [table.clone]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K8 [{"index", "routes"}]
       24 LENGTH                           R5 R1
       25 SETTABLEKS                       R5 R4 K0 ["index"]
       27 SETTABLEKS                       R1 R4 K4 ["routes"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["index"]
        2 JUMPIFNOTEQ                      R1 R2 ; [+2]
        4 RETURN                           R0 1
        5 GETTABLEKS                       R5 R0 K1 ["routes"]
        7 GETTABLE                         R4 R5 R1
        8 JUMPIFNOTEQKNIL                  R4 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 LOADK                            R4 K2 ["invalid index %d to jump to"]
       13 MOVE                             R6 R1
       14 NAMECALL                         R4 R4 K3 ["format"]
       16 CALL                             R4 2 -1
       17 FASTCALL                         ASSERT ; [+2]
       18 GETIMPORT                        R2 K5 [assert]
       20 CALL                             R2 -1 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K6 ["assign"]
       24 GETIMPORT                        R3 K9 [table.clone]
       26 MOVE                             R4 R0
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K10 [{"index"}]
       29 SETTABLEKS                       R1 R4 K0 ["index"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["indexOf"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 LOADK                            R5 K1 ["attempt to jump to unknown key \"%s\""]
       11 MOVE                             R7 R1
       12 NAMECALL                         R5 R5 K2 ["format"]
       14 CALL                             R5 2 -1
       15 FASTCALL                         ASSERT ; [+2]
       16 GETIMPORT                        R3 K4 [assert]
       18 CALL                             R3 -1 0
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K5 ["jumpToIndex"]
       22 MOVE                             R4 R0
       23 MOVE                             R5 R2
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K1 ["index"]
        2 SUBK                             R1 R2 K0 [1]
        3 GETTABLEKS                       R3 R0 K2 ["routes"]
        5 GETTABLE                         R2 R3 R1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["jumpToIndex"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K1 ["index"]
        2 ADDK                             R1 R2 K0 [1]
        3 GETTABLEKS                       R3 R0 K2 ["routes"]
        5 GETTABLE                         R2 R3 R1
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["jumpToIndex"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["indexOf"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["replaceAtIndex"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R3
       11 MOVE                             R7 R2
       12 CALL                             R4 3 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K2 ["assign"]
       16 GETIMPORT                        R6 K5 [table.clone]
       18 MOVE                             R7 R4
       19 CALL                             R6 1 1
       20 DUPTABLE                         R7 K7 [{"routes"}]
       21 NEWTABLE                         R8 0 1
       23 GETTABLEKS                       R10 R4 K6 ["routes"]
       25 LOADN                            R11 1
       26 FASTCALL3                        TABLE_UNPACK R10 R11 R3
       28 MOVE                             R12 R3
       29 GETIMPORT                        R9 K9 [unpack]
       31 CALL                             R9 3 -1
       32 SETLIST                          R8 R9 -1 [1]
       34 SETTABLEKS                       R8 R7 K6 ["routes"]
       36 CALL                             R5 2 -1
       37 RETURN                           R5 -1

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["indexOf"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R5 R0 K1 ["index"]
        9 JUMP                             ; [+1]
       10 MOVE                             R5 R4
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K2 ["replaceAtIndex"]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R4
       16 MOVE                             R9 R2
       17 CALL                             R6 3 1
       18 SETTABLEKS                       R5 R6 K1 ["index"]
       20 RETURN                           R6 1

PROTO_11:
        0 GETTABLEKS                       R6 R0 K0 ["routes"]
        2 GETTABLE                         R5 R6 R1
        3 JUMPIFNOTEQKNIL                  R5 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 LOADK                            R5 K1 ["invalid index %d for replacing route %s"]
        8 MOVE                             R7 R1
        9 GETTABLEKS                       R8 R2 K2 ["key"]
       11 NAMECALL                         R5 R5 K3 ["format"]
       13 CALL                             R5 3 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R3 K5 [assert]
       17 CALL                             R3 -1 0
       18 GETTABLEKS                       R4 R0 K0 ["routes"]
       20 GETTABLE                         R3 R4 R1
       21 JUMPIFNOTEQ                      R3 R2 ; [+6]
       23 GETTABLEKS                       R3 R0 K6 ["index"]
       25 JUMPIFNOTEQ                      R1 R3 ; [+2]
       27 RETURN                           R0 1
       28 GETIMPORT                        R3 K9 [table.clone]
       30 GETTABLEKS                       R4 R0 K0 ["routes"]
       32 CALL                             R3 1 1
       33 SETTABLE                         R2 R3 R1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K10 ["assign"]
       37 GETIMPORT                        R5 K9 [table.clone]
       39 MOVE                             R6 R0
       40 CALL                             R5 1 1
       41 DUPTABLE                         R6 K11 [{"index", "routes"}]
       42 SETTABLEKS                       R1 R6 K6 ["index"]
       44 SETTABLEKS                       R3 R6 K0 ["routes"]
       46 CALL                             R4 2 -1
       47 RETURN                           R4 -1

PROTO_12:
        0 LOADB                            R4 0
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R6 R1
        3 GETIMPORT                        R5 K1 [type]
        5 CALL                             R5 1 1
        6 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+7]
        8 LENGTH                           R5 R1
        9 LOADN                            R6 0
       10 JUMPIFLT                         R6 R5 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       16 LOADK                            R5 K3 ["invalid routes to replace"]
       17 GETIMPORT                        R3 K5 [assert]
       19 CALL                             R3 2 0
       20 JUMPIF                           R2 ; [+2]
       21 LENGTH                           R3 R1
       22 JUMP                             ; [+1]
       23 MOVE                             R3 R2
       24 GETTABLEKS                       R5 R0 K6 ["routes"]
       26 LENGTH                           R4 R5
       27 LENGTH                           R5 R1
       28 JUMPIFNOTEQ                      R4 R5 ; [+21]
       30 GETTABLEKS                       R4 R0 K7 ["index"]
       32 JUMPIFNOTEQ                      R4 R3 ; [+17]
       34 LOADB                            R4 1
       35 LOADN                            R7 1
       36 LENGTH                           R5 R1
       37 LOADN                            R6 1
       38 FORNPREP                         R5
       39 GETTABLEKS                       R9 R0 K6 ["routes"]
       41 GETTABLE                         R8 R9 R7
       42 GETTABLE                         R9 R1 R7
       43 JUMPIFEQ                         R8 R9 ; [+3]
       45 LOADB                            R4 0
       46 JUMP                             ; [+1]
       47 FORNLOOP                         R5
       48 JUMPIFNOT                        R4 ; [+1]
       49 RETURN                           R0 1
       50 GETTABLE                         R6 R1 R3
       51 JUMPIFNOTEQKNIL                  R6 ; [+2]
       53 LOADB                            R5 0 +1
       54 LOADB                            R5 1
       55 LOADK                            R6 K8 ["invalid index %d to reset"]
       56 MOVE                             R8 R3
       57 NAMECALL                         R6 R6 K9 ["format"]
       59 CALL                             R6 2 -1
       60 FASTCALL                         ASSERT ; [+2]
       61 GETIMPORT                        R4 K5 [assert]
       63 CALL                             R4 -1 0
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R4 R5 K10 ["assign"]
       67 GETIMPORT                        R5 K12 [table.clone]
       69 MOVE                             R6 R0
       70 CALL                             R5 1 1
       71 DUPTABLE                         R6 K13 [{"index", "routes"}]
       72 SETTABLEKS                       R3 R6 K7 ["index"]
       74 SETTABLEKS                       R1 R6 K6 ["routes"]
       76 CALL                             R4 2 -1
       77 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Object"]
       16 NEWTABLE                         R5 16 0
       18 DUPCLOSURE                       R6 K8 [PROTO_0]
       19 SETTABLEKS                       R6 R5 K9 ["get"]
       21 DUPCLOSURE                       R6 K10 [PROTO_1]
       22 SETTABLEKS                       R6 R5 K11 ["indexOf"]
       24 DUPCLOSURE                       R6 K12 [PROTO_2]
       25 SETTABLEKS                       R6 R5 K13 ["has"]
       27 DUPCLOSURE                       R6 K14 [PROTO_3]
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R6 R5 K15 ["push"]
       33 DUPCLOSURE                       R6 K16 [PROTO_4]
       34 CAPTURE                          VAL R4
       35 SETTABLEKS                       R6 R5 K17 ["pop"]
       37 DUPCLOSURE                       R6 K18 [PROTO_5]
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R6 R5 K19 ["jumpToIndex"]
       41 DUPCLOSURE                       R6 K20 [PROTO_6]
       42 CAPTURE                          VAL R5
       43 SETTABLEKS                       R6 R5 K21 ["jumpTo"]
       45 DUPCLOSURE                       R6 K22 [PROTO_7]
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R6 R5 K23 ["back"]
       49 DUPCLOSURE                       R6 K24 [PROTO_8]
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R6 R5 K25 ["forward"]
       53 DUPCLOSURE                       R6 K26 [PROTO_9]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R6 R5 K27 ["replaceAndPrune"]
       58 DUPCLOSURE                       R6 K28 [PROTO_10]
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R6 R5 K29 ["replaceAt"]
       62 DUPCLOSURE                       R6 K30 [PROTO_11]
       63 CAPTURE                          VAL R4
       64 SETTABLEKS                       R6 R5 K31 ["replaceAtIndex"]
       66 DUPCLOSURE                       R6 K32 [PROTO_12]
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R6 R5 K33 ["reset"]
       70 RETURN                           R5 1
