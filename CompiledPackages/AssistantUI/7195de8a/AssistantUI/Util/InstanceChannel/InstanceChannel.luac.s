PROTO_0:
        0 DUPTABLE                         R3 K3 [{"scope", "channelId", "instance"}]
        1 SETTABLEKS                       R0 R3 K0 ["scope"]
        3 SETTABLEKS                       R1 R3 K1 ["channelId"]
        5 SETTABLEKS                       R2 R3 K2 ["instance"]
        7 GETUPVAL                         R6 0
        8 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       10 MOVE                             R5 R3
       11 GETIMPORT                        R4 K5 [setmetatable]
       13 CALL                             R4 2 0
       14 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["instance"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["SetAttribute"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["instance"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["GetAttribute"]
        5 CALL                             R2 2 1
        6 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["Get"]
        4 CALL                             R0 2 1
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 LOADB                            R1 1
       11 SETUPVAL                         R1 2
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K1 ["Connected"]
       15 JUMPIFNOT                        R1 ; [+4]
       16 GETUPVAL                         R1 3
       17 NAMECALL                         R1 R1 K2 ["Disconnect"]
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K5 [coroutine.status]
       22 GETUPVAL                         R2 4
       23 CALL                             R1 1 1
       24 JUMPIFNOTEQKS                    R1 K6 ["suspended"] ; [+6]
       26 GETIMPORT                        R1 K9 [task.spawn]
       28 GETUPVAL                         R2 4
       29 MOVE                             R3 R0
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["Get"]
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 RETURN                           R2 1
        7 GETIMPORT                        R3 K3 [coroutine.running]
        9 CALL                             R3 0 1
       10 LOADB                            R4 0
       11 LOADNIL                          R5
       12 GETTABLEKS                       R6 R0 K4 ["instance"]
       14 MOVE                             R8 R1
       15 NAMECALL                         R6 R6 K5 ["GetAttributeChangedSignal"]
       17 CALL                             R6 2 1
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          REF R4
       22 CAPTURE                          REF R5
       23 CAPTURE                          VAL R3
       24 NAMECALL                         R6 R6 K6 ["Connect"]
       26 CALL                             R6 2 1
       27 MOVE                             R5 R6
       28 GETIMPORT                        R6 K8 [coroutine.yield]
       30 CALL                             R6 0 -1
       31 CLOSEUPVALS                      R4
       32 RETURN                           R6 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["instance"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
        4 JUMPIF                           R0 ; [+9]
        5 GETIMPORT                        R0 K1 [workspace]
        7 LOADK                            R2 K2 ["CurrentCamera"]
        8 NAMECALL                         R0 R0 K3 ["GetPropertyChangedSignal"]
       10 CALL                             R0 2 1
       11 NAMECALL                         R0 R0 K4 ["Wait"]
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K1 [workspace]
       16 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
       18 FASTCALL2K                       ASSERT R0 K5 ; [+5]
       20 MOVE                             R2 R0
       21 LOADK                            R3 K5 ["InstanceChannel requires workspace.CurrentCamera"]
       22 GETIMPORT                        R1 K7 [assert]
       24 CALL                             R1 2 0
       25 LOADK                            R3 K8 ["RBXAssistantChannels"]
       26 NAMECALL                         R1 R0 K9 ["FindFirstChild"]
       28 CALL                             R1 2 1
       29 JUMPIFNOT                        R1 ; [+1]
       30 RETURN                           R1 1
       31 GETIMPORT                        R2 K12 [Instance.new]
       33 LOADK                            R3 K13 ["Folder"]
       34 CALL                             R2 1 1
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R2 K14 ["Archivable"]
       38 LOADK                            R3 K8 ["RBXAssistantChannels"]
       39 SETTABLEKS                       R3 R2 K15 ["Name"]
       41 SETTABLEKS                       R0 R2 K16 ["Parent"]
       43 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseNewTags"]
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["getUniqueTag"]
        7 LOADK                            R4 K2 ["Channel-%*"]
        8 MOVE                             R6 R0
        9 NAMECALL                         R4 R4 K3 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 MOVE                             R4 R1
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1
       16 LOADK                            R3 K4 ["Assistant-Channel-%*-%*"]
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 NAMECALL                         R3 R3 K3 ["format"]
       21 CALL                             R3 3 1
       22 MOVE                             R2 R3
       23 RETURN                           R2 1

PROTO_8:
        0 LOADK                            R4 K0 ["%*-%*"]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K1 ["getTag"]
        4 MOVE                             R7 R0
        5 MOVE                             R8 R1
        6 CALL                             R6 2 1
        7 MOVE                             R7 R2
        8 NAMECALL                         R4 R4 K2 ["format"]
       10 CALL                             R4 3 1
       11 MOVE                             R3 R4
       12 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getTag"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R3 K1 ["GetTagged"]
       10 CALL                             R3 2 1
       11 GETTABLEN                        R4 R3 1
       12 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["find"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["new"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R3 3 -1
       16 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["find"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 NOT                              R3 R4
        7 LOADK                            R5 K1 ["An InstanceChannel with scope \"%*\" and id \"%*\" is already open; ids must be unique."]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R1
       10 NAMECALL                         R5 R5 K2 ["format"]
       12 CALL                             R5 3 1
       13 MOVE                             R4 R5
       14 FASTCALL2                        ASSERT R3 R4 ; [+3]
       16 GETIMPORT                        R2 K4 [assert]
       18 CALL                             R2 2 0
       19 GETIMPORT                        R2 K7 [Instance.new]
       21 LOADK                            R3 K8 ["Folder"]
       22 CALL                             R2 1 1
       23 LOADB                            R3 0
       24 SETTABLEKS                       R3 R2 K9 ["Archivable"]
       26 LOADK                            R4 K10 ["RBXAssistantChannel_%*_%*"]
       27 MOVE                             R6 R0
       28 MOVE                             R7 R1
       29 NAMECALL                         R4 R4 K2 ["format"]
       31 CALL                             R4 3 1
       32 MOVE                             R3 R4
       33 SETTABLEKS                       R3 R2 K11 ["Name"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K12 ["getTag"]
       38 MOVE                             R6 R0
       39 MOVE                             R7 R1
       40 CALL                             R5 2 -1
       41 NAMECALL                         R3 R2 K13 ["AddTag"]
       43 CALL                             R3 -1 0
       44 GETUPVAL                         R3 1
       45 CALL                             R3 0 1
       46 SETTABLEKS                       R3 R2 K14 ["Parent"]
       48 GETUPVAL                         R3 2
       49 GETTABLEKS                       R3 R3 K6 ["new"]
       51 MOVE                             R4 R0
       52 MOVE                             R5 R1
       53 MOVE                             R6 R2
       54 CALL                             R3 3 -1
       55 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+6]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["new"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [game]
       11 LOADK                            R4 K6 ["CollectionService"]
       12 NAMECALL                         R2 R2 K7 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K9 [require]
       17 GETTABLEKS                       R4 R1 K10 ["Bridges"]
       19 GETTABLEKS                       R4 R4 K11 ["createChannelBridge"]
       21 GETTABLEKS                       R4 R4 K12 ["ChannelBridgeTypes"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R1 K13 ["Flags"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R1 K14 ["Util"]
       33 GETTABLEKS                       R6 R6 K15 ["Tagging"]
       35 CALL                             R5 1 1
       36 NEWTABLE                         R6 8 0
       38 SETTABLEKS                       R6 R6 K16 ["__index"]
       40 DUPCLOSURE                       R7 K17 [PROTO_0]
       41 CAPTURE                          VAL R6
       42 SETTABLEKS                       R7 R6 K18 ["new"]
       44 DUPCLOSURE                       R7 K19 [PROTO_1]
       45 SETTABLEKS                       R7 R6 K20 ["Set"]
       47 DUPCLOSURE                       R7 K21 [PROTO_2]
       48 SETTABLEKS                       R7 R6 K22 ["Get"]
       50 DUPCLOSURE                       R7 K23 [PROTO_4]
       51 SETTABLEKS                       R7 R6 K24 ["Wait"]
       53 DUPCLOSURE                       R7 K25 [PROTO_5]
       54 SETTABLEKS                       R7 R6 K26 ["Destroy"]
       56 DUPCLOSURE                       R7 K27 [PROTO_6]
       57 DUPCLOSURE                       R8 K28 [PROTO_7]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R8 R0 K29 ["getTag"]
       62 DUPCLOSURE                       R8 K30 [PROTO_8]
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R8 R0 K31 ["getFieldKey"]
       66 DUPCLOSURE                       R8 K32 [PROTO_9]
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R2
       69 SETTABLEKS                       R8 R0 K33 ["find"]
       71 DUPCLOSURE                       R8 K34 [PROTO_10]
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R6
       74 SETTABLEKS                       R8 R0 K35 ["get"]
       76 DUPCLOSURE                       R8 K36 [PROTO_11]
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R6
       80 SETTABLEKS                       R8 R0 K18 ["new"]
       82 DUPCLOSURE                       R8 K37 [PROTO_12]
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R8 R0 K38 ["getOrCreate"]
       86 RETURN                           R0 1
