PROTO_0:
        0 DUPTABLE                         R1 K19 [{[1] = "contentId", ["sourceId"] = , ["rootId"] = , ["type"] = "MISSING", ["toolUse"] = , ["toolResult"] = , ["generating"] = False, ["expanded"] = False, ["createdAt"] = 0, ["updatedAt"] = 0, ["ephemeral"] = False, ["isDirty"] = False, ["lastServerStreamId"] = , ["LayoutOrder"] = 0, ["_meta"] = }]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K20 ["join"]
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K9 [{[1] = "test-thread", ["messageId"] = "test-message", ["contentId"], ["createdAt"] = 0, ["updatedAt"] = 0, ["mcpContent"]}]
        7 LOADK                            R11 K10 ["test-content-"]
        8 MOVE                             R12 R5
        9 CONCAT                           R10 R11 R12
       10 SETTABLEKS                       R10 R9 K4 ["contentId"]
       12 SETTABLEKS                       R6 R9 K8 ["mcpContent"]
       14 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K13 [table.insert]
       19 CALL                             R7 2 0
       20 FORGLOOP                         R2 2 ; [-15]
       22 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+65]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["fn"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["toMeta"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K1 ["toMeta"]
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K0 ["fn"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K2 ["fromMeta"]
       19 CALL                             R1 1 1
       20 SETTABLEKS                       R1 R0 K2 ["fromMeta"]
       22 GETUPVAL                         R0 1
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K0 ["fn"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K3 ["getText"]
       29 CALL                             R1 1 1
       30 SETTABLEKS                       R1 R0 K3 ["getText"]
       32 DUPTABLE                         R0 K4 [{"toMeta", "fromMeta", "getText"}]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K1 ["toMeta"]
       36 JUMPIFNOT                        R2 ; [+4]
       37 GETUPVAL                         R1 1
       38 GETTABLEKS                       R1 R1 K1 ["toMeta"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K1 ["toMeta"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K2 ["fromMeta"]
       47 JUMPIFNOT                        R2 ; [+4]
       48 GETUPVAL                         R1 1
       49 GETTABLEKS                       R1 R1 K2 ["fromMeta"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R1
       53 SETTABLEKS                       R1 R0 K2 ["fromMeta"]
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K3 ["getText"]
       58 JUMPIFNOT                        R2 ; [+4]
       59 GETUPVAL                         R1 1
       60 GETTABLEKS                       R1 R1 K3 ["getText"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R1
       64 SETTABLEKS                       R1 R0 K3 ["getText"]
       66 SETUPVAL                         R0 3
       67 GETUPVAL                         R0 4
       68 GETUPVAL                         R1 3
       69 SETTABLEKS                       R1 R0 K5 ["Serialization"]
       71 GETUPVAL                         R0 5
       72 GETTABLEKS                       R0 R0 K6 ["registerSerializer"]
       74 GETUPVAL                         R1 6
       75 GETUPVAL                         R2 3
       76 CALL                             R0 2 0
       77 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["deregisterSerializer"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["registerSerializer"]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 0
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["mockClear"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["deregisterSerializer"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 3
        7 SETTABLEKS                       R1 R0 K1 ["Serialization"]
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETTABLEKS                       R2 R0 K1 ["Serialization"]
        4 DUPTABLE                         R3 K5 [{"toMeta", "fromMeta", "getText"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K6 ["fn"]
        8 CALL                             R4 0 1
        9 SETTABLEKS                       R4 R3 K2 ["toMeta"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K6 ["fn"]
       14 CALL                             R4 0 1
       15 SETTABLEKS                       R4 R3 K3 ["fromMeta"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K6 ["fn"]
       20 CALL                             R4 0 1
       21 SETTABLEKS                       R4 R3 K4 ["getText"]
       23 LOADNIL                          R4
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K7 ["beforeAll"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          REF R4
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R1
       35 CALL                             R5 1 0
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K8 ["beforeEach"]
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          REF R4
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R1
       43 CALL                             R5 1 0
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R5 R5 K9 ["afterEach"]
       47 NEWCLOSURE                       R6 P2
       48 CAPTURE                          VAL R3
       49 CALL                             R5 1 0
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K10 ["afterAll"]
       53 NEWCLOSURE                       R6 P3
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R2
       58 CALL                             R5 1 0
       59 DUPTABLE                         R5 K12 [{"spies"}]
       60 SETTABLEKS                       R3 R5 K11 ["spies"]
       62 CLOSEUPVALS                      R4
       63 RETURN                           R5 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["threads"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["messages"]
        7 JUMPIFNOT                        R6 ; [+78]
        8 MOVE                             R7 R6
        9 LOADNIL                          R8
       10 LOADNIL                          R9
       11 FORGPREP                         R7
       12 GETTABLEKS                       R12 R11 K2 ["contents"]
       14 LOADNIL                          R13
       15 LOADNIL                          R14
       16 FORGPREP                         R12
       17 GETUPVAL                         R17 0
       18 GETTABLEKS                       R17 R17 K3 ["getHydrators"]
       20 GETTABLEKS                       R18 R16 K4 ["type"]
       22 CALL                             R17 1 1
       23 NEWTABLE                         R18 0 0
       25 MOVE                             R19 R17
       26 LOADNIL                          R20
       27 LOADNIL                          R21
       28 FORGPREP                         R19
       29 MOVE                             R25 R18
       30 GETUPVAL                         R26 1
       31 GETTABLEKS                       R26 R26 K5 ["spyOn"]
       33 MOVE                             R27 R17
       34 MOVE                             R28 R22
       35 CALL                             R26 2 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R24 K8 [table.insert]
       39 CALL                             R24 -1 0
       40 FORGLOOP                         R19 2 ; [-12]
       42 MOVE                             R19 R18
       43 LOADNIL                          R20
       44 LOADNIL                          R21
       45 FORGPREP                         R19
       46 GETUPVAL                         R24 2
       47 MOVE                             R25 R23
       48 CALL                             R24 1 1
       49 GETTABLEKS                       R24 R24 K9 ["never"]
       51 GETTABLEKS                       R24 R24 K10 ["toHaveBeenCalled"]
       53 CALL                             R24 0 0
       54 FORGLOOP                         R19 2 ; [-9]
       56 GETUPVAL                         R19 0
       57 GETTABLEKS                       R19 R19 K11 ["hydrate"]
       59 MOVE                             R20 R16
       60 CALL                             R19 1 0
       61 MOVE                             R19 R18
       62 LOADNIL                          R20
       63 LOADNIL                          R21
       64 FORGPREP                         R19
       65 GETUPVAL                         R24 2
       66 MOVE                             R25 R23
       67 CALL                             R24 1 1
       68 GETTABLEKS                       R24 R24 K10 ["toHaveBeenCalled"]
       70 CALL                             R24 0 0
       71 FORGLOOP                         R19 2 ; [-7]
       73 MOVE                             R19 R18
       74 LOADNIL                          R20
       75 LOADNIL                          R21
       76 FORGPREP                         R19
       77 NAMECALL                         R24 R23 K12 ["mockRestore"]
       79 CALL                             R24 1 0
       80 FORGLOOP                         R19 2 ; [-4]
       82 FORGLOOP                         R12 2 ; [-66]
       84 FORGLOOP                         R7 2 ; [-73]
       86 FORGLOOP                         R1 2 ; [-82]
       88 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 LOADK                            R4 K4 ["Packages"]
       10 NAMECALL                         R2 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R2 R2 K5 ["Dev"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Util"]
       19 GETTABLEKS                       R4 R4 K9 ["ContentWidgets"]
       21 GETTABLEKS                       R4 R4 K10 ["ContentWidgetRegistry"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K7 [require]
       26 GETTABLEKS                       R5 R1 K11 ["Parent"]
       28 GETTABLEKS                       R5 R5 K12 ["Dash"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K7 [require]
       33 GETTABLEKS                       R6 R2 K13 ["JestGlobals"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K7 [require]
       38 GETTABLEKS                       R7 R1 K8 ["Util"]
       40 GETTABLEKS                       R7 R7 K14 ["Serializer"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K7 [require]
       45 GETTABLEKS                       R8 R1 K8 ["Util"]
       47 GETTABLEKS                       R8 R8 K14 ["Serializer"]
       49 GETTABLEKS                       R8 R8 K15 ["SerializerTypes"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K7 [require]
       54 GETTABLEKS                       R9 R1 K16 ["Types"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R9 R5 K17 ["expect"]
       59 GETTABLEKS                       R10 R5 K18 ["jest"]
       61 DUPCLOSURE                       R11 K19 [PROTO_0]
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R11 R0 K20 ["createContent"]
       65 DUPCLOSURE                       R11 K21 [PROTO_1]
       66 SETTABLEKS                       R11 R0 K22 ["makeDeserializableMCPItems"]
       68 DUPCLOSURE                       R11 K23 [PROTO_6]
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R11 R0 K24 ["setupSerializer"]
       74 DUPCLOSURE                       R11 K25 [PROTO_7]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R11 R0 K26 ["testHydrateConversation"]
       80 RETURN                           R0 1
