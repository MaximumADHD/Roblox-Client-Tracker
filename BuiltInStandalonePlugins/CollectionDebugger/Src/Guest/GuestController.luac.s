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
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 1
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["ForEach"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R2 0
        1 GETIMPORT                        R3 K1 [pcall]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          REF R2
        7 CALL                             R3 1 0
        8 CLOSEUPVALS                      R2
        9 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_7:
        0 LENGTH                           R3 R1
        1 JUMPIFNOTLT                      R3 R2 ; [+2]
        3 RETURN                           R0 1
        4 GETIMPORT                        R3 K1 [pcall]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R3 1 2
        9 JUMPIF                           R3 ; [+2]
       10 LOADNIL                          R5
       11 RETURN                           R5 1
       12 MOVE                             R7 R2
       13 LENGTH                           R5 R1
       14 LOADN                            R6 1
       15 FORNPREP                         R5
       16 GETIMPORT                        R8 K4 [table.concat]
       18 MOVE                             R9 R1
       19 LOADK                            R10 K5 ["."]
       20 MOVE                             R11 R2
       21 MOVE                             R12 R7
       22 CALL                             R8 4 1
       23 MOVE                             R9 R4
       24 LOADNIL                          R10
       25 LOADNIL                          R11
       26 FORGPREP                         R9
       27 GETTABLEKS                       R14 R13 K6 ["Name"]
       29 JUMPIFNOTEQ                      R14 R8 ; [+8]
       31 GETUPVAL                         R14 0
       32 MOVE                             R15 R13
       33 MOVE                             R16 R1
       34 ADDK                             R17 R7 K7 [1]
       35 CALL                             R14 3 1
       36 JUMPIFNOT                        R14 ; [+1]
       37 RETURN                           R14 1
       38 FORGLOOP                         R9 2 ; [-12]
       40 FORNLOOP                         R5
       41 LOADNIL                          R5
       42 RETURN                           R5 1

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+4]
        1 JUMPIFEQKS                       R0 K0 [""] ; [+3]
        3 GETUPVAL                         R1 0
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 0
        9 GETIMPORT                        R3 K3 [string.split]
       11 MOVE                             R4 R0
       12 LOADK                            R5 K4 ["."]
       13 CALL                             R3 2 1
       14 LOADN                            R4 1
       15 CALL                             R1 3 1
       16 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["selection"] ; [+13]
        3 NEWTABLE                         R0 0 0
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["Get"]
        8 CALL                             R1 1 3
        9 FORGPREP                         R1
       10 LOADB                            R6 1
       11 SETTABLE                         R6 R0 R5
       12 FORGLOOP                         R1 2 ; [-3]
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 0
       16 JUMPIFNOTEQKS                    R0 K2 ["instance"] ; [+25]
       18 NEWTABLE                         R0 0 0
       20 GETUPVAL                         R2 2
       21 JUMPIFNOT                        R2 ; [+4]
       22 JUMPIFEQKS                       R2 K3 [""] ; [+3]
       24 GETUPVAL                         R3 3
       25 JUMPIF                           R3 ; [+2]
       26 LOADNIL                          R1
       27 JUMP                             ; [+10]
       28 GETUPVAL                         R3 4
       29 GETUPVAL                         R4 3
       30 GETIMPORT                        R5 K6 [string.split]
       32 MOVE                             R6 R2
       33 LOADK                            R7 K7 ["."]
       34 CALL                             R5 2 1
       35 LOADN                            R6 1
       36 CALL                             R3 3 1
       37 MOVE                             R1 R3
       38 JUMPIFNOT                        R1 ; [+2]
       39 LOADB                            R2 1
       40 SETTABLE                         R2 R0 R1
       41 RETURN                           R0 1
       42 LOADNIL                          R0
       43 RETURN                           R0 1

PROTO_10:
        0 LOADNIL                          R2
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+42]
        3 DUPTABLE                         R3 K4 [{"Id", "Query", "Size", "Enabled"}]
        4 GETUPVAL                         R5 1
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETTABLEKS                       R10 R9 K5 ["handle"]
       10 JUMPIFNOTEQ                      R10 R0 ; [+4]
       12 GETTABLEKS                       R4 R9 K6 ["id"]
       14 JUMP                             ; [+3]
       15 FORGLOOP                         R5 2 ; [-8]
       17 LOADNIL                          R4
       18 SETTABLEKS                       R4 R3 K0 ["Id"]
       20 GETTABLEKS                       R4 R0 K1 ["Query"]
       22 SETTABLEKS                       R4 R3 K1 ["Query"]
       24 NAMECALL                         R4 R0 K7 ["GetCount"]
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R4 R3 K2 ["Size"]
       29 GETTABLEKS                       R4 R0 K3 ["Enabled"]
       31 SETTABLEKS                       R4 R3 K3 ["Enabled"]
       33 GETTABLEKS                       R4 R0 K8 ["Debug"]
       35 JUMPIFNOT                        R4 ; [+7]
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K9 ["serializeCallbacks"]
       39 GETTABLEKS                       R5 R0 K8 ["Debug"]
       41 MOVE                             R6 R3
       42 CALL                             R4 2 0
       43 MOVE                             R2 R3
       44 JUMP                             ; [+10]
       45 GETTABLEKS                       R3 R0 K8 ["Debug"]
       47 JUMPIFNOT                        R3 ; [+7]
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R3 R3 K10 ["serialize"]
       51 GETTABLEKS                       R4 R0 K8 ["Debug"]
       53 CALL                             R3 1 1
       54 MOVE                             R2 R3
       55 JUMPIFNOT                        R2 ; [+13]
       56 JUMPIFNOT                        R1 ; [+12]
       57 LOADB                            R4 0
       58 GETIMPORT                        R5 K12 [pcall]
       60 NEWCLOSURE                       R6 P0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R1
       63 CAPTURE                          REF R4
       64 CALL                             R5 1 0
       65 MOVE                             R3 R4
       66 CLOSEUPVALS                      R4
       67 SETTABLEKS                       R3 R2 K13 ["Contains"]
       69 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 2
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 3
        8 CALL                             R1 0 1
        9 NEWTABLE                         R2 0 0
       11 MOVE                             R3 R0
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETUPVAL                         R8 4
       16 MOVE                             R9 R7
       17 MOVE                             R10 R1
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+7]
       20 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       22 MOVE                             R10 R2
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K2 [table.insert]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R3 2 ; [-13]
       29 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 3
        2 FORGPREP                         R1
        3 GETUPVAL                         R6 1
        4 JUMPIFNOT                        R6 ; [+18]
        5 GETUPVAL                         R7 2
        6 LOADNIL                          R8
        7 LOADNIL                          R9
        8 FORGPREP                         R7
        9 GETTABLEKS                       R12 R11 K0 ["handle"]
       11 JUMPIFNOTEQ                      R12 R5 ; [+4]
       13 GETTABLEKS                       R6 R11 K1 ["id"]
       15 JUMP                             ; [+3]
       16 FORGLOOP                         R7 2 ; [-8]
       18 LOADNIL                          R6
       19 JUMPIFNOTEQ                      R6 R0 ; [+13]
       21 RETURN                           R5 1
       22 JUMP                             ; [+10]
       23 GETTABLEKS                       R6 R5 K2 ["Debug"]
       25 JUMPIFNOT                        R6 ; [+7]
       26 GETTABLEKS                       R6 R5 K2 ["Debug"]
       28 GETTABLEKS                       R6 R6 K3 ["Id"]
       30 JUMPIFNOTEQ                      R6 R0 ; [+2]
       32 RETURN                           R5 1
       33 FORGLOOP                         R1 2 ; [-31]
       35 LOADNIL                          R1
       36 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["ForEach"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectionMatches"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["Get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_19:
        0 GETIMPORT                        R0 K1 [next]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFEQKNIL                     R0 ; [+13]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["selectionMatches"]
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K3 ["Get"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 3
       14 CALL                             R0 2 1
       15 JUMPIFNOT                        R0 ; [+2]
       16 LOADN                            R0 0
       17 RETURN                           R0 1
       18 GETUPVAL                         R1 2
       19 NAMECALL                         R1 R1 K3 ["Get"]
       21 CALL                             R1 1 1
       22 LENGTH                           R0 R1
       23 RETURN                           R0 1

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 ORK                              R2 R3 K0 [1]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
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
       42 JUMPIFNOTEQKS                    R1 K9 ["openScript"] ; [+8]
       44 GETUPVAL                         R2 4
       45 GETTABLEKS                       R3 R0 K10 ["scriptName"]
       47 GETTABLEKS                       R4 R0 K11 ["lineNumber"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0
       51 JUMPIFNOTEQKS                    R1 K12 ["setContainsFilter"] ; [+7]
       53 GETTABLEKS                       R2 R0 K13 ["mode"]
       55 SETUPVAL                         R2 5
       56 GETTABLEKS                       R2 R0 K14 ["path"]
       58 SETUPVAL                         R2 6
       59 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_25:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 NEWTABLE                         R0 0 0
        5 SETUPVAL                         R0 1
        6 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["getAllCollections"]
        2 GETTABLEKS                       R2 R0 K1 ["selection"]
        4 GETTABLEKS                       R3 R0 K2 ["getDescendants"]
        6 GETTABLEKS                       R4 R0 K3 ["root"]
        8 GETTABLEKS                       R5 R0 K4 ["openInEditor"]
       10 GETTABLEKS                       R6 R0 K5 ["topLevelAccessors"]
       12 GETTABLEKS                       R7 R0 K6 ["warn"]
       14 JUMPIF                           R7 ; [+1]
       15 DUPCLOSURE                       R7 K7 [PROTO_0]
       16 NEWTABLE                         R8 0 0
       18 LOADN                            R9 0
       19 LOADNIL                          R10
       20 LOADNIL                          R11
       21 NEWCLOSURE                       R12 P1
       22 CAPTURE                          REF R8
       23 NEWCLOSURE                       R13 P2
       24 CAPTURE                          REF R8
       25 CAPTURE                          REF R9
       26 DUPCLOSURE                       R14 K8 [PROTO_5]
       27 DUPCLOSURE                       R15 K9 [PROTO_7]
       28 CAPTURE                          VAL R15
       29 NEWCLOSURE                       R16 P5
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R15
       32 NEWCLOSURE                       R17 P6
       33 CAPTURE                          REF R10
       34 CAPTURE                          VAL R2
       35 CAPTURE                          REF R11
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R15
       38 NEWCLOSURE                       R18 P7
       39 CAPTURE                          VAL R6
       40 CAPTURE                          REF R8
       41 CAPTURE                          UPVAL U0
       42 NEWCLOSURE                       R19 P8
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R13
       46 CAPTURE                          VAL R17
       47 CAPTURE                          VAL R18
       48 NEWCLOSURE                       R20 P9
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R6
       51 CAPTURE                          REF R8
       52 NEWCLOSURE                       R21 P10
       53 CAPTURE                          VAL R20
       54 NEWCLOSURE                       R22 P11
       55 CAPTURE                          VAL R20
       56 CAPTURE                          UPVAL U1
       57 NEWTABLE                         R23 0 0
       59 NEWTABLE                         R24 0 0
       61 NEWCLOSURE                       R25 P12
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          REF R24
       65 NEWCLOSURE                       R26 P13
       66 CAPTURE                          REF R23
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          REF R24
       70 NEWCLOSURE                       R27 P14
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          REF R23
       73 CAPTURE                          VAL R21
       74 CAPTURE                          VAL R2
       75 CAPTURE                          REF R24
       76 NEWCLOSURE                       R28 P15
       77 CAPTURE                          VAL R3
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R5
       81 NEWCLOSURE                       R29 P16
       82 CAPTURE                          VAL R20
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          REF R23
       85 CAPTURE                          VAL R27
       86 CAPTURE                          VAL R28
       87 CAPTURE                          REF R10
       88 CAPTURE                          REF R11
       89 DUPTABLE                         R30 K21 [{"collectSnapshot", "getSelectionCount", "findCollection", "collectMembers", "setEnabled", "openScript", "applyHighlightSelection", "selectionMatchesLastApplied", "handleCommand", "hasHighlights", "clearHighlights"}]
       90 SETTABLEKS                       R19 R30 K10 ["collectSnapshot"]
       92 SETTABLEKS                       R26 R30 K11 ["getSelectionCount"]
       94 SETTABLEKS                       R20 R30 K12 ["findCollection"]
       96 SETTABLEKS                       R21 R30 K13 ["collectMembers"]
       98 SETTABLEKS                       R22 R30 K14 ["setEnabled"]
      100 SETTABLEKS                       R28 R30 K15 ["openScript"]
      102 SETTABLEKS                       R27 R30 K16 ["applyHighlightSelection"]
      104 SETTABLEKS                       R25 R30 K17 ["selectionMatchesLastApplied"]
      106 SETTABLEKS                       R29 R30 K18 ["handleCommand"]
      108 NEWCLOSURE                       R31 P17
      109 CAPTURE                          REF R23
      110 SETTABLEKS                       R31 R30 K19 ["hasHighlights"]
      112 NEWCLOSURE                       R31 P18
      113 CAPTURE                          REF R23
      114 CAPTURE                          REF R24
      115 SETTABLEKS                       R31 R30 K20 ["clearHighlights"]
      117 CLOSEUPVALS                      R8
      118 RETURN                           R30 1

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
       34 DUPCLOSURE                       R5 K11 [PROTO_26]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R5 R4 K12 ["new"]
       39 RETURN                           R4 1
