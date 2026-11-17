PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["source"]
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K2 [tostring]
        5 CALL                             R2 1 1
        6 LOADK                            R3 K3 ["|"]
        7 GETTABLEKS                       R5 R0 K4 ["type"]
        9 FASTCALL1                        TOSTRING R5 ; [+2]
       10 GETIMPORT                        R4 K2 [tostring]
       12 CALL                             R4 1 1
       13 LOADK                            R5 K3 ["|"]
       14 GETTABLEKS                       R7 R0 K5 ["collectionId"]
       16 FASTCALL1                        TOSTRING R7 ; [+2]
       17 GETIMPORT                        R6 K2 [tostring]
       19 CALL                             R6 1 1
       20 LOADK                            R7 K3 ["|"]
       21 GETTABLEKS                       R9 R0 K6 ["callbackName"]
       23 FASTCALL1                        TOSTRING R9 ; [+2]
       24 GETIMPORT                        R8 K2 [tostring]
       26 CALL                             R8 1 1
       27 CONCAT                           R1 R2 R8
       28 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 3
        4 FORGPREP_INEXT                   R3
        5 GETTABLEKS                       R8 R7 K2 ["type"]
        7 JUMPIFNOTEQKS                    R8 K3 ["collection"] ; [+10]
        9 GETTABLEKS                       R8 R7 K4 ["collectionId"]
       11 JUMPIFNOTEQ                      R8 R1 ; [+6]
       13 GETTABLEKS                       R8 R7 K5 ["source"]
       15 JUMPIFNOTEQ                      R8 R2 ; [+2]
       17 RETURN                           R7 1
       18 GETTABLEKS                       R8 R7 K6 ["children"]
       20 JUMPIFNOT                        R8 ; [+8]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R9 R7 K6 ["children"]
       24 MOVE                             R10 R1
       25 MOVE                             R11 R2
       26 CALL                             R8 3 1
       27 JUMPIFNOT                        R8 ; [+1]
       28 RETURN                           R8 1
       29 FORGLOOP                         R3 2 [inext] ; [-25]
       31 LOADNIL                          R3
       32 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETTABLEKS                       R7 R6 K2 ["collectionId"]
        7 JUMPIFEQKNIL                     R7 ; [+48]
        9 GETTABLEKS                       R9 R6 K3 ["source"]
       11 FASTCALL1                        TOSTRING R9 ; [+2]
       12 GETIMPORT                        R8 K5 [tostring]
       14 CALL                             R8 1 1
       15 LOADK                            R9 K6 ["|"]
       16 GETTABLEKS                       R11 R6 K7 ["type"]
       18 FASTCALL1                        TOSTRING R11 ; [+2]
       19 GETIMPORT                        R10 K5 [tostring]
       21 CALL                             R10 1 1
       22 LOADK                            R11 K6 ["|"]
       23 GETTABLEKS                       R13 R6 K2 ["collectionId"]
       25 FASTCALL1                        TOSTRING R13 ; [+2]
       26 GETIMPORT                        R12 K5 [tostring]
       28 CALL                             R12 1 1
       29 LOADK                            R13 K6 ["|"]
       30 GETTABLEKS                       R15 R6 K8 ["callbackName"]
       32 FASTCALL1                        TOSTRING R15 ; [+2]
       33 GETIMPORT                        R14 K5 [tostring]
       35 CALL                             R14 1 1
       36 CONCAT                           R7 R8 R14
       37 GETTABLE                         R8 R0 R7
       38 JUMPIFEQKNIL                     R8 ; [+17]
       40 GETTABLEKS                       R9 R6 K9 ["enabled"]
       42 GETTABLEKS                       R10 R8 K10 ["want"]
       44 JUMPIFNOTEQ                      R9 R10 ; [+4]
       46 LOADNIL                          R9
       47 SETTABLE                         R9 R0 R7
       48 JUMP                             ; [+7]
       49 GETTABLEKS                       R9 R8 K10 ["want"]
       51 SETTABLEKS                       R9 R6 K9 ["enabled"]
       53 LOADB                            R9 1
       54 SETTABLEKS                       R9 R6 K11 ["unconfirmed"]
       56 GETTABLEKS                       R7 R6 K12 ["children"]
       58 JUMPIFNOT                        R7 ; [+7]
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K13 ["applyPending"]
       62 MOVE                             R8 R0
       63 GETTABLEKS                       R9 R6 K12 ["children"]
       65 CALL                             R7 2 0
       66 FORGLOOP                         R2 2 [inext] ; [-62]
       68 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["ttl"]
        6 SUBK                             R6 R6 K1 [1]
        7 SETTABLEKS                       R6 R5 K0 ["ttl"]
        9 GETTABLEKS                       R6 R5 K0 ["ttl"]
       11 LOADN                            R7 0
       12 JUMPIFNOTLE                      R6 R7 ; [+3]
       14 LOADNIL                          R6
       15 SETTABLE                         R6 R0 R4
       16 FORGLOOP                         R1 2 ; [-13]
       18 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R5 R1 K0 ["source"]
        2 FASTCALL1                        TOSTRING R5 ; [+2]
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 LOADK                            R5 K3 ["|"]
        7 GETTABLEKS                       R7 R1 K4 ["type"]
        9 FASTCALL1                        TOSTRING R7 ; [+2]
       10 GETIMPORT                        R6 K2 [tostring]
       12 CALL                             R6 1 1
       13 LOADK                            R7 K3 ["|"]
       14 GETTABLEKS                       R9 R1 K5 ["collectionId"]
       16 FASTCALL1                        TOSTRING R9 ; [+2]
       17 GETIMPORT                        R8 K2 [tostring]
       19 CALL                             R8 1 1
       20 LOADK                            R9 K3 ["|"]
       21 GETTABLEKS                       R11 R1 K6 ["callbackName"]
       23 FASTCALL1                        TOSTRING R11 ; [+2]
       24 GETIMPORT                        R10 K2 [tostring]
       26 CALL                             R10 1 1
       27 CONCAT                           R3 R4 R10
       28 DUPTABLE                         R4 K10 [{["want"], ["ttl"] = 6}]
       29 SETTABLEKS                       R2 R4 K7 ["want"]
       31 SETTABLE                         R4 R0 R3
       32 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [tostring]
        4 CALL                             R3 1 1
        5 LOADK                            R4 K2 ["|"]
        6 CONCAT                           R2 R3 R4
        7 MOVE                             R3 R0
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 LOADN                            R10 1
       12 LENGTH                           R11 R2
       13 FASTCALL3                        STRING_SUB R6 R10 R11
       15 MOVE                             R9 R6
       16 GETIMPORT                        R8 K5 [string.sub]
       18 CALL                             R8 3 1
       19 JUMPIFNOTEQ                      R8 R2 ; [+3]
       21 LOADNIL                          R8
       22 SETTABLE                         R8 R0 R6
       23 FORGLOOP                         R3 1 ; [-13]
       25 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R1 K0 ["enabled"]
        2 NOT                              R2 R3
        3 NEWTABLE                         R3 0 1
        5 DUPTABLE                         R4 K3 [{"node", "want"}]
        6 SETTABLEKS                       R1 R4 K1 ["node"]
        8 SETTABLEKS                       R2 R4 K2 ["want"]
       10 SETLIST                          R3 R4 1 [1]
       12 GETTABLEKS                       R4 R1 K4 ["type"]
       14 JUMPIFNOTEQKS                    R4 K5 ["callback"] ; [+24]
       16 JUMPIFNOTEQKB                    R2 TRUE ; [+22]
       18 GETUPVAL                         R4 0
       19 MOVE                             R5 R0
       20 GETTABLEKS                       R6 R1 K6 ["collectionId"]
       22 GETTABLEKS                       R7 R1 K7 ["source"]
       24 CALL                             R4 3 1
       25 JUMPIFNOT                        R4 ; [+13]
       26 GETTABLEKS                       R5 R4 K0 ["enabled"]
       28 JUMPIFEQKB                       R5 TRUE ; [+10]
       30 DUPTABLE                         R7 K9 [{["node"], ["want"] = True}]
       31 SETTABLEKS                       R4 R7 K1 ["node"]
       33 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       35 MOVE                             R6 R3
       36 GETIMPORT                        R5 K12 [table.insert]
       38 CALL                             R5 2 0
       39 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CollectionDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 LOADN                            R3 6
       17 SETTABLEKS                       R3 R2 K8 ["PENDING_TTL"]
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 SETTABLEKS                       R3 R2 K10 ["nodeKey"]
       22 DUPCLOSURE                       R4 K11 [PROTO_1]
       23 CAPTURE                          VAL R4
       24 SETTABLEKS                       R4 R2 K12 ["findCollectionNode"]
       26 DUPCLOSURE                       R5 K13 [PROTO_2]
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R5 R2 K14 ["applyPending"]
       30 DUPCLOSURE                       R5 K15 [PROTO_3]
       31 SETTABLEKS                       R5 R2 K16 ["ageTtls"]
       33 DUPCLOSURE                       R5 K17 [PROTO_4]
       34 SETTABLEKS                       R5 R2 K18 ["setPending"]
       36 DUPCLOSURE                       R5 K19 [PROTO_5]
       37 SETTABLEKS                       R5 R2 K20 ["forgetPending"]
       39 DUPCLOSURE                       R5 K21 [PROTO_6]
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R5 R2 K22 ["resolveToggle"]
       43 RETURN                           R2 1
