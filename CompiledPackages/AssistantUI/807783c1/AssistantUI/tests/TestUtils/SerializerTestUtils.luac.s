PROTO_0:
        0 DUPTABLE                         R1 K15 [{"contentId", "sourceId", "rootId", "type", "toolUse", "toolResult", "generating", "expanded", "createdAt", "updatedAt", "ephemeral", "isDirty", "lastServerStreamId", "LayoutOrder", "_meta"}]
        1 LOADK                            R2 K0 ["contentId"]
        2 SETTABLEKS                       R2 R1 K0 ["contentId"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["sourceId"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K2 ["rootId"]
       10 LOADK                            R2 K16 ["MISSING"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K4 ["toolUse"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K5 ["toolResult"]
       19 LOADB                            R2 0
       20 SETTABLEKS                       R2 R1 K6 ["generating"]
       22 LOADB                            R2 0
       23 SETTABLEKS                       R2 R1 K7 ["expanded"]
       25 LOADN                            R2 0
       26 SETTABLEKS                       R2 R1 K8 ["createdAt"]
       28 LOADN                            R2 0
       29 SETTABLEKS                       R2 R1 K9 ["updatedAt"]
       31 LOADB                            R2 0
       32 SETTABLEKS                       R2 R1 K10 ["ephemeral"]
       34 LOADB                            R2 0
       35 SETTABLEKS                       R2 R1 K11 ["isDirty"]
       37 LOADNIL                          R2
       38 SETTABLEKS                       R2 R1 K12 ["lastServerStreamId"]
       40 LOADN                            R2 0
       41 SETTABLEKS                       R2 R1 K13 ["LayoutOrder"]
       43 LOADNIL                          R2
       44 SETTABLEKS                       R2 R1 K14 ["_meta"]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K17 ["join"]
       49 MOVE                             R3 R1
       50 MOVE                             R4 R0
       51 CALL                             R2 2 -1
       52 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 DUPTABLE                         R9 K6 [{"threadId", "messageId", "contentId", "createdAt", "updatedAt", "mcpContent"}]
        7 LOADK                            R10 K7 ["test-thread"]
        8 SETTABLEKS                       R10 R9 K0 ["threadId"]
       10 LOADK                            R10 K8 ["test-message"]
       11 SETTABLEKS                       R10 R9 K1 ["messageId"]
       13 LOADK                            R11 K9 ["test-content-"]
       14 MOVE                             R12 R5
       15 CONCAT                           R10 R11 R12
       16 SETTABLEKS                       R10 R9 K2 ["contentId"]
       18 LOADN                            R10 0
       19 SETTABLEKS                       R10 R9 K3 ["createdAt"]
       21 LOADN                            R10 0
       22 SETTABLEKS                       R10 R9 K4 ["updatedAt"]
       24 SETTABLEKS                       R6 R9 K5 ["mcpContent"]
       26 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       28 MOVE                             R8 R1
       29 GETIMPORT                        R7 K12 [table.insert]
       31 CALL                             R7 2 0
       32 FORGLOOP                         R2 2 ; [-27]
       34 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ScopedFastFlagSetting"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+65]
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R1 4
       10 GETTABLEKS                       R1 R1 K1 ["fn"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["toMeta"]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K2 ["toMeta"]
       18 GETUPVAL                         R0 3
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R1 R1 K1 ["fn"]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K3 ["fromMeta"]
       25 CALL                             R1 1 1
       26 SETTABLEKS                       R1 R0 K3 ["fromMeta"]
       28 GETUPVAL                         R0 3
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R1 R1 K1 ["fn"]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K4 ["getText"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K4 ["getText"]
       38 DUPTABLE                         R0 K5 [{"toMeta", "fromMeta", "getText"}]
       39 GETUPVAL                         R2 2
       40 GETTABLEKS                       R2 R2 K2 ["toMeta"]
       42 JUMPIFNOT                        R2 ; [+4]
       43 GETUPVAL                         R1 3
       44 GETTABLEKS                       R1 R1 K2 ["toMeta"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R1
       48 SETTABLEKS                       R1 R0 K2 ["toMeta"]
       50 GETUPVAL                         R2 2
       51 GETTABLEKS                       R2 R2 K3 ["fromMeta"]
       53 JUMPIFNOT                        R2 ; [+4]
       54 GETUPVAL                         R1 3
       55 GETTABLEKS                       R1 R1 K3 ["fromMeta"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R1
       59 SETTABLEKS                       R1 R0 K3 ["fromMeta"]
       61 GETUPVAL                         R2 2
       62 GETTABLEKS                       R2 R2 K4 ["getText"]
       64 JUMPIFNOT                        R2 ; [+4]
       65 GETUPVAL                         R1 3
       66 GETTABLEKS                       R1 R1 K4 ["getText"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R1
       70 SETTABLEKS                       R1 R0 K4 ["getText"]
       72 SETUPVAL                         R0 5
       73 GETUPVAL                         R0 6
       74 GETUPVAL                         R1 5
       75 SETTABLEKS                       R1 R0 K6 ["Serialization"]
       77 GETUPVAL                         R0 7
       78 GETTABLEKS                       R0 R0 K7 ["registerSerializer"]
       80 GETUPVAL                         R1 8
       81 GETUPVAL                         R2 5
       82 CALL                             R0 2 0
       83 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ScopedFastFlagSetting"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+11]
        8 GETUPVAL                         R0 3
        9 GETTABLEKS                       R0 R0 K1 ["deregisterSerializer"]
       11 GETUPVAL                         R1 4
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K2 ["registerSerializer"]
       16 GETUPVAL                         R1 4
       17 GETUPVAL                         R2 2
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

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
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          REF R4
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R1
       37 CALL                             R5 1 0
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K8 ["beforeEach"]
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          REF R4
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R1
       47 CALL                             R5 1 0
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K9 ["afterEach"]
       51 NEWCLOSURE                       R6 P2
       52 CAPTURE                          VAL R3
       53 CALL                             R5 1 0
       54 GETUPVAL                         R5 1
       55 GETTABLEKS                       R5 R5 K10 ["afterAll"]
       57 NEWCLOSURE                       R6 P3
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R2
       62 CALL                             R5 1 0
       63 DUPTABLE                         R5 K12 [{"spies"}]
       64 SETTABLEKS                       R3 R5 K11 ["spies"]
       66 CLOSEUPVALS                      R4
       67 RETURN                           R5 1

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
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Util"]
       13 GETTABLEKS                       R3 R3 K7 ["ContentWidgets"]
       15 GETTABLEKS                       R3 R3 K8 ["ContentWidgetRegistry"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K9 ["Parent"]
       22 GETTABLEKS                       R4 R4 K10 ["Dash"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K9 ["Parent"]
       29 GETTABLEKS                       R5 R5 K11 ["Dev"]
       31 GETTABLEKS                       R5 R5 K12 ["JestGlobals"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R1 K13 ["Flags"]
       38 GETTABLEKS                       R6 R6 K14 ["ScopedFastSetting"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R1 K6 ["Util"]
       45 GETTABLEKS                       R7 R7 K15 ["Serializer"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R1 K6 ["Util"]
       52 GETTABLEKS                       R8 R8 K15 ["Serializer"]
       54 GETTABLEKS                       R8 R8 K16 ["SerializerTypes"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R1 K17 ["Types"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R10 R1 K13 ["Flags"]
       66 GETTABLEKS                       R10 R10 K18 ["FFlagAssistantMultipleChatPersistence"]
       68 CALL                             R9 1 1
       69 GETTABLEKS                       R10 R4 K19 ["expect"]
       71 GETTABLEKS                       R11 R4 K20 ["jest"]
       73 DUPCLOSURE                       R12 K21 [PROTO_0]
       74 CAPTURE                          VAL R3
       75 SETTABLEKS                       R12 R0 K22 ["createContent"]
       77 DUPCLOSURE                       R12 K23 [PROTO_1]
       78 SETTABLEKS                       R12 R0 K24 ["makeDeserializableMCPItems"]
       80 DUPCLOSURE                       R12 K25 [PROTO_6]
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R12 R0 K26 ["setupSerializer"]
       88 DUPCLOSURE                       R12 K27 [PROTO_7]
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R10
       92 SETTABLEKS                       R12 R0 K28 ["testHydrateConversation"]
       94 RETURN                           R0 1
