PROTO_0:
        0 GETTABLEKS                       R10 R0 K0 ["source"]
        2 FASTCALL1                        TOSTRING R10 ; [+2]
        3 GETIMPORT                        R9 K2 [tostring]
        5 CALL                             R9 1 1
        6 MOVE                             R2 R9
        7 LOADK                            R3 K3 ["|"]
        8 GETTABLEKS                       R10 R0 K4 ["type"]
       10 FASTCALL1                        TOSTRING R10 ; [+2]
       11 GETIMPORT                        R9 K2 [tostring]
       13 CALL                             R9 1 1
       14 MOVE                             R4 R9
       15 LOADK                            R5 K3 ["|"]
       16 GETTABLEKS                       R10 R0 K5 ["collectionId"]
       18 FASTCALL1                        TOSTRING R10 ; [+2]
       19 GETIMPORT                        R9 K2 [tostring]
       21 CALL                             R9 1 1
       22 MOVE                             R6 R9
       23 LOADK                            R7 K3 ["|"]
       24 GETTABLEKS                       R9 R0 K6 ["callbackName"]
       26 FASTCALL1                        TOSTRING R9 ; [+2]
       27 GETIMPORT                        R8 K2 [tostring]
       29 CALL                             R8 1 1
       30 CONCAT                           R1 R2 R8
       31 RETURN                           R1 1

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
        9 GETTABLEKS                       R16 R6 K3 ["source"]
       11 FASTCALL1                        TOSTRING R16 ; [+2]
       12 GETIMPORT                        R15 K5 [tostring]
       14 CALL                             R15 1 1
       15 MOVE                             R8 R15
       16 LOADK                            R9 K6 ["|"]
       17 GETTABLEKS                       R16 R6 K7 ["type"]
       19 FASTCALL1                        TOSTRING R16 ; [+2]
       20 GETIMPORT                        R15 K5 [tostring]
       22 CALL                             R15 1 1
       23 MOVE                             R10 R15
       24 LOADK                            R11 K6 ["|"]
       25 GETTABLEKS                       R16 R6 K2 ["collectionId"]
       27 FASTCALL1                        TOSTRING R16 ; [+2]
       28 GETIMPORT                        R15 K5 [tostring]
       30 CALL                             R15 1 1
       31 MOVE                             R12 R15
       32 LOADK                            R13 K6 ["|"]
       33 GETTABLEKS                       R15 R6 K8 ["callbackName"]
       35 FASTCALL1                        TOSTRING R15 ; [+2]
       36 GETIMPORT                        R14 K5 [tostring]
       38 CALL                             R14 1 1
       39 CONCAT                           R7 R8 R14
       40 GETTABLE                         R8 R0 R7
       41 JUMPIFEQKNIL                     R8 ; [+14]
       43 GETTABLEKS                       R9 R6 K9 ["enabled"]
       45 GETTABLEKS                       R10 R8 K10 ["want"]
       47 JUMPIFNOTEQ                      R9 R10 ; [+4]
       49 LOADNIL                          R9
       50 SETTABLE                         R9 R0 R7
       51 JUMP                             ; [+4]
       52 GETTABLEKS                       R9 R8 K10 ["want"]
       54 SETTABLEKS                       R9 R6 K9 ["enabled"]
       56 GETTABLEKS                       R7 R6 K11 ["children"]
       58 JUMPIFNOT                        R7 ; [+7]
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K12 ["applyPending"]
       62 MOVE                             R8 R0
       63 GETTABLEKS                       R9 R6 K11 ["children"]
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
        0 GETTABLEKS                       R12 R1 K0 ["source"]
        2 FASTCALL1                        TOSTRING R12 ; [+2]
        3 GETIMPORT                        R11 K2 [tostring]
        5 CALL                             R11 1 1
        6 MOVE                             R4 R11
        7 LOADK                            R5 K3 ["|"]
        8 GETTABLEKS                       R12 R1 K4 ["type"]
       10 FASTCALL1                        TOSTRING R12 ; [+2]
       11 GETIMPORT                        R11 K2 [tostring]
       13 CALL                             R11 1 1
       14 MOVE                             R6 R11
       15 LOADK                            R7 K3 ["|"]
       16 GETTABLEKS                       R12 R1 K5 ["collectionId"]
       18 FASTCALL1                        TOSTRING R12 ; [+2]
       19 GETIMPORT                        R11 K2 [tostring]
       21 CALL                             R11 1 1
       22 MOVE                             R8 R11
       23 LOADK                            R9 K3 ["|"]
       24 GETTABLEKS                       R11 R1 K6 ["callbackName"]
       26 FASTCALL1                        TOSTRING R11 ; [+2]
       27 GETIMPORT                        R10 K2 [tostring]
       29 CALL                             R10 1 1
       30 CONCAT                           R3 R4 R10
       31 DUPTABLE                         R4 K10 [{["want"], ["ttl"] = 6}]
       32 SETTABLEKS                       R2 R4 K7 ["want"]
       34 SETTABLE                         R4 R0 R3
       35 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R6 R1
        2 GETIMPORT                        R5 K1 [tostring]
        4 CALL                             R5 1 1
        5 MOVE                             R3 R5
        6 LOADK                            R4 K2 ["|"]
        7 CONCAT                           R2 R3 R4
        8 MOVE                             R3 R0
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 LOADN                            R10 1
       13 LENGTH                           R11 R2
       14 FASTCALL3                        STRING_SUB R6 R10 R11
       16 MOVE                             R9 R6
       17 GETIMPORT                        R8 K5 [string.sub]
       19 CALL                             R8 3 1
       20 JUMPIFNOTEQ                      R8 R2 ; [+3]
       22 LOADNIL                          R8
       23 SETTABLE                         R8 R0 R6
       24 FORGLOOP                         R3 1 ; [-13]
       26 RETURN                           R0 0

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
