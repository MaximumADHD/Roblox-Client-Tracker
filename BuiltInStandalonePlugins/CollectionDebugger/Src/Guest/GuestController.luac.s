PROTO_0:
        0 GETIMPORT                        R1 K1 [warn]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["handle"]
        6 JUMPIFNOTEQ                      R6 R0 ; [+4]
        8 GETTABLEKS                       R6 R5 K1 ["id"]
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-8]
       13 LOADNIL                          R1
       14 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R8 0
        7 LOADNIL                          R9
        8 LOADNIL                          R10
        9 FORGPREP                         R8
       10 GETTABLEKS                       R13 R12 K0 ["handle"]
       12 JUMPIFNOTEQ                      R13 R6 ; [+4]
       14 GETTABLEKS                       R7 R12 K1 ["id"]
       16 JUMP                             ; [+3]
       17 FORGLOOP                         R8 2 ; [-8]
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 JUMPIFNOT                        R7 ; [+2]
       22 MOVE                             R8 R7
       23 JUMP                             ; [+4]
       24 GETUPVAL                         R9 1
       25 ADDK                             R9 R9 K2 [1]
       26 SETUPVAL                         R9 1
       27 GETUPVAL                         R8 1
       28 DUPTABLE                         R11 K3 [{"handle", "id"}]
       29 SETTABLEKS                       R6 R11 K0 ["handle"]
       31 SETTABLEKS                       R8 R11 K1 ["id"]
       33 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       35 MOVE                             R10 R1
       36 GETIMPORT                        R9 K6 [table.insert]
       38 CALL                             R9 2 0
       39 FORGLOOP                         R2 2 ; [-34]
       41 SETUPVAL                         R1 0
       42 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+41]
        2 DUPTABLE                         R1 K4 [{"Id", "Query", "Size", "Enabled"}]
        3 GETUPVAL                         R3 1
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETTABLEKS                       R8 R7 K5 ["handle"]
        9 JUMPIFNOTEQ                      R8 R0 ; [+4]
       11 GETTABLEKS                       R2 R7 K6 ["id"]
       13 JUMP                             ; [+3]
       14 FORGLOOP                         R3 2 ; [-8]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K0 ["Id"]
       19 GETTABLEKS                       R2 R0 K1 ["Query"]
       21 SETTABLEKS                       R2 R1 K1 ["Query"]
       23 NAMECALL                         R2 R0 K7 ["GetCount"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K2 ["Size"]
       28 GETTABLEKS                       R2 R0 K3 ["Enabled"]
       30 SETTABLEKS                       R2 R1 K3 ["Enabled"]
       32 GETTABLEKS                       R2 R0 K8 ["Debug"]
       34 JUMPIFNOT                        R2 ; [+7]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K9 ["serializeCallbacks"]
       38 GETTABLEKS                       R3 R0 K8 ["Debug"]
       40 MOVE                             R4 R1
       41 CALL                             R2 2 0
       42 RETURN                           R1 1
       43 GETTABLEKS                       R1 R0 K8 ["Debug"]
       45 JUMPIFNOT                        R1 ; [+7]
       46 GETUPVAL                         R1 2
       47 GETTABLEKS                       R1 R1 K10 ["serialize"]
       49 GETTABLEKS                       R2 R0 K8 ["Debug"]
       51 CALL                             R1 1 -1
       52 RETURN                           R1 -1
       53 LOADNIL                          R1
       54 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAllCollections"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 NEWTABLE                         R1 0 0
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETUPVAL                         R7 3
       16 MOVE                             R8 R6
       17 CALL                             R7 1 1
       18 JUMPIFNOT                        R7 ; [+7]
       19 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       21 MOVE                             R9 R1
       22 MOVE                             R10 R7
       23 GETIMPORT                        R8 K3 [table.insert]
       25 CALL                             R8 2 0
       26 FORGLOOP                         R2 2 ; [-12]
       28 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetAllCollections"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 GETUPVAL                         R6 1
        6 JUMPIFNOT                        R6 ; [+18]
        7 GETUPVAL                         R7 2
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 GETTABLEKS                       R12 R11 K1 ["handle"]
       13 JUMPIFNOTEQ                      R12 R5 ; [+4]
       15 GETTABLEKS                       R6 R11 K2 ["id"]
       17 JUMP                             ; [+3]
       18 FORGLOOP                         R7 2 ; [-8]
       20 LOADNIL                          R6
       21 JUMPIFNOTEQ                      R6 R0 ; [+13]
       23 RETURN                           R5 1
       24 JUMP                             ; [+10]
       25 GETTABLEKS                       R6 R5 K3 ["Debug"]
       27 JUMPIFNOT                        R6 ; [+7]
       28 GETTABLEKS                       R6 R5 K3 ["Debug"]
       30 GETTABLEKS                       R6 R6 K4 ["Id"]
       32 JUMPIFNOTEQ                      R6 R0 ; [+2]
       34 RETURN                           R5 1
       35 FORGLOOP                         R1 2 ; [-31]
       37 LOADNIL                          R1
       38 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["ForEach"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+3]
        4 NEWTABLE                         R2 0 0
        6 RETURN                           R2 1
        7 NEWTABLE                         R2 0 0
        9 GETIMPORT                        R3 K1 [pcall]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 CALL                             R3 1 0
       15 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["parseCallbackName"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+6]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K2 ["group"]
       14 JUMPIFNOT                        R1 ; [+16]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["Debug"]
       18 GETTABLEKS                       R3 R0 K2 ["group"]
       20 GETTABLE                         R1 R2 R3
       21 MOVE                             R2 R1
       22 JUMPIFNOT                        R2 ; [+3]
       23 GETTABLEKS                       R3 R0 K4 ["name"]
       25 GETTABLE                         R2 R1 R3
       26 JUMPIFNOT                        R2 ; [+14]
       27 GETUPVAL                         R3 3
       28 SETTABLEKS                       R3 R2 K1 ["Enabled"]
       30 RETURN                           R0 0
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K3 ["Debug"]
       34 GETTABLEKS                       R3 R0 K4 ["name"]
       36 GETTABLE                         R1 R2 R3
       37 JUMPIFNOT                        R1 ; [+3]
       38 GETUPVAL                         R2 3
       39 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       41 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R4 K1 [pcall]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R2
       12 CALL                             R4 1 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionMatches"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["Get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["unionMembers"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 2
        6 LENGTH                           R2 R0
        7 JUMPIFNOTEQKN                    R2 K1 [0] ; [+21]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["selectionMatches"]
       12 GETUPVAL                         R3 3
       13 NAMECALL                         R3 R3 K3 ["Get"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 4
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+6]
       19 GETUPVAL                         R2 3
       20 NEWTABLE                         R4 0 0
       22 NAMECALL                         R2 R2 K4 ["Set"]
       24 CALL                             R2 2 0
       25 NEWTABLE                         R2 0 0
       27 SETUPVAL                         R2 4
       28 RETURN                           R0 0
       29 SETUPVAL                         R1 4
       30 GETUPVAL                         R2 3
       31 MOVE                             R4 R0
       32 NAMECALL                         R2 R2 K4 ["Set"]
       34 CALL                             R2 2 0
       35 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 ORK                              R2 R3 K0 [1]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        3 RETURN                           R0 0
        4 NEWTABLE                         R2 0 0
        6 GETUPVAL                         R3 0
        7 CALL                             R3 0 3
        8 FORGPREP                         R3
        9 LOADK                            R10 K1 ["LuaSourceContainer"]
       10 NAMECALL                         R8 R7 K2 ["IsA"]
       12 CALL                             R8 2 1
       13 JUMPIFNOT                        R8 ; [+18]
       14 DUPTABLE                         R10 K6 [{"full", "name", "instance"}]
       15 NAMECALL                         R11 R7 K7 ["GetFullName"]
       17 CALL                             R11 1 1
       18 SETTABLEKS                       R11 R10 K3 ["full"]
       20 GETTABLEKS                       R11 R7 K8 ["Name"]
       22 SETTABLEKS                       R11 R10 K4 ["name"]
       24 SETTABLEKS                       R7 R10 K5 ["instance"]
       26 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       28 MOVE                             R9 R2
       29 GETIMPORT                        R8 K11 [table.insert]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-24]
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K12 ["resolveScript"]
       37 MOVE                             R4 R0
       38 MOVE                             R5 R2
       39 CALL                             R3 2 1
       40 JUMPIF                           R3 ; [+8]
       41 GETUPVAL                         R4 2
       42 LOADK                            R5 K13 ["[CollectionDebugger] could not find script '%s' to open"]
       43 MOVE                             R7 R0
       44 NAMECALL                         R5 R5 K14 ["format"]
       46 CALL                             R5 2 -1
       47 CALL                             R4 -1 0
       48 RETURN                           R0 0
       49 GETIMPORT                        R4 K16 [pcall]
       51 NEWCLOSURE                       R5 P0
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 CALL                             R4 1 2
       56 JUMPIF                           R4 ; [+9]
       57 GETUPVAL                         R6 2
       58 LOADK                            R8 K17 ["[CollectionDebugger] OpenScript failed: "]
       59 FASTCALL1                        TOSTRING R5 ; [+3]
       60 MOVE                             R10 R5
       61 GETIMPORT                        R9 K19 [tostring]
       63 CALL                             R9 1 1
       64 CONCAT                           R7 R8 R9
       65 CALL                             R6 1 0
       66 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["toggleEnabled"] ; [+21]
        4 GETTABLEKS                       R2 R0 K2 ["collectionId"]
        6 GETTABLEKS                       R3 R0 K3 ["callbackName"]
        8 GETTABLEKS                       R4 R0 K4 ["enabled"]
       10 GETUPVAL                         R5 0
       11 MOVE                             R6 R2
       12 CALL                             R5 1 1
       13 JUMPIF                           R5 ; [+1]
       14 RETURN                           R0 0
       15 GETIMPORT                        R6 K6 [pcall]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R5
       21 CAPTURE                          VAL R4
       22 CALL                             R6 1 0
       23 RETURN                           R0 0
       24 JUMPIFNOTEQKS                    R1 K7 ["setHighlights"] ; [+17]
       26 NEWTABLE                         R2 0 0
       28 SETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R0 K8 ["collectionIds"]
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 FORGPREP                         R2
       34 GETUPVAL                         R7 2
       35 LOADB                            R8 1
       36 SETTABLE                         R8 R7 R6
       37 FORGLOOP                         R2 2 ; [-4]
       39 GETUPVAL                         R2 3
       40 CALL                             R2 0 0
       41 RETURN                           R0 0
       42 JUMPIFNOTEQKS                    R1 K9 ["openScript"] ; [+7]
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R3 R0 K10 ["scriptName"]
       47 GETTABLEKS                       R4 R0 K11 ["lineNumber"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_17:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 NEWTABLE                         R0 0 0
        5 SETUPVAL                         R0 1
        6 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["auroraService"]
        2 GETTABLEKS                       R2 R0 K1 ["selection"]
        4 GETTABLEKS                       R3 R0 K2 ["getDescendants"]
        6 GETTABLEKS                       R4 R0 K3 ["openInEditor"]
        8 GETTABLEKS                       R5 R0 K4 ["topLevelAccessors"]
       10 GETTABLEKS                       R6 R0 K5 ["warn"]
       12 JUMPIF                           R6 ; [+1]
       13 DUPCLOSURE                       R6 K6 [PROTO_0]
       14 NEWTABLE                         R7 0 0
       16 LOADN                            R8 0
       17 NEWCLOSURE                       R9 P1
       18 CAPTURE                          REF R7
       19 NEWCLOSURE                       R10 P2
       20 CAPTURE                          REF R7
       21 CAPTURE                          REF R8
       22 NEWCLOSURE                       R11 P3
       23 CAPTURE                          VAL R5
       24 CAPTURE                          REF R7
       25 CAPTURE                          UPVAL U0
       26 NEWCLOSURE                       R12 P4
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R10
       30 CAPTURE                          VAL R11
       31 NEWCLOSURE                       R13 P5
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R5
       34 CAPTURE                          REF R7
       35 NEWCLOSURE                       R14 P6
       36 CAPTURE                          VAL R13
       37 NEWCLOSURE                       R15 P7
       38 CAPTURE                          VAL R13
       39 CAPTURE                          UPVAL U1
       40 NEWTABLE                         R16 0 0
       42 NEWTABLE                         R17 0 0
       44 NEWCLOSURE                       R18 P8
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          REF R17
       48 NEWCLOSURE                       R19 P9
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          REF R16
       51 CAPTURE                          VAL R14
       52 CAPTURE                          VAL R2
       53 CAPTURE                          REF R17
       54 NEWCLOSURE                       R20 P10
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R4
       59 NEWCLOSURE                       R21 P11
       60 CAPTURE                          VAL R13
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          REF R16
       63 CAPTURE                          VAL R19
       64 CAPTURE                          VAL R20
       65 DUPTABLE                         R22 K17 [{"collectSnapshot", "findCollection", "collectMembers", "setEnabled", "openScript", "applyHighlightSelection", "selectionMatchesLastApplied", "handleCommand", "hasHighlights", "clearHighlights"}]
       66 SETTABLEKS                       R12 R22 K7 ["collectSnapshot"]
       68 SETTABLEKS                       R13 R22 K8 ["findCollection"]
       70 SETTABLEKS                       R14 R22 K9 ["collectMembers"]
       72 SETTABLEKS                       R15 R22 K10 ["setEnabled"]
       74 SETTABLEKS                       R20 R22 K11 ["openScript"]
       76 SETTABLEKS                       R19 R22 K12 ["applyHighlightSelection"]
       78 SETTABLEKS                       R18 R22 K13 ["selectionMatchesLastApplied"]
       80 SETTABLEKS                       R21 R22 K14 ["handleCommand"]
       82 NEWCLOSURE                       R23 P12
       83 CAPTURE                          REF R16
       84 SETTABLEKS                       R23 R22 K15 ["hasHighlights"]
       86 NEWCLOSURE                       R23 P13
       87 CAPTURE                          REF R16
       88 CAPTURE                          REF R17
       89 SETTABLEKS                       R23 R22 K16 ["clearHighlights"]
       91 CLOSEUPVALS                      R7
       92 RETURN                           R22 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Guest"]
       20 GETTABLEKS                       R3 R3 K9 ["guestLogic"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Guest"]
       29 GETTABLEKS                       R4 R4 K10 ["serializeDebug"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 1 0
       34 DUPCLOSURE                       R5 K11 [PROTO_18]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R5 R4 K12 ["new"]
       39 RETURN                           R4 1
