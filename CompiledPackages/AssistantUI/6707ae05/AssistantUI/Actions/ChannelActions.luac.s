PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 GETTABLEKS                       R3 R0 K1 ["scope"]
        5 GETTABLEKS                       R4 R0 K2 ["channelId"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+2]
        9 LOADB                            R3 0
       10 RETURN                           R3 1
       11 GETTABLEKS                       R5 R0 K3 ["field"]
       13 GETTABLEKS                       R6 R0 K4 ["value"]
       15 NAMECALL                         R3 R2 K5 ["Set"]
       17 CALL                             R3 3 0
       18 LOADB                            R3 1
       19 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["bridge"]
        3 GETTABLEKS                       R1 R1 K1 ["onUpdate"]
        5 DUPTABLE                         R2 K6 [{"scope", "channelId", "field", "value"}]
        6 GETUPVAL                         R3 1
        7 SETTABLEKS                       R3 R2 K2 ["scope"]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K3 ["channelId"]
       12 GETUPVAL                         R3 3
       13 SETTABLEKS                       R3 R2 K4 ["field"]
       15 SETTABLEKS                       R0 R2 K5 ["value"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAttribute"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["bridge"]
        8 GETTABLEKS                       R1 R1 K2 ["onUpdate"]
       10 DUPTABLE                         R2 K7 [{"scope", "channelId", "field", "value"}]
       11 GETUPVAL                         R3 3
       12 SETTABLEKS                       R3 R2 K3 ["scope"]
       14 GETUPVAL                         R3 4
       15 SETTABLEKS                       R3 R2 K4 ["channelId"]
       17 GETUPVAL                         R3 1
       18 SETTABLEKS                       R3 R2 K5 ["field"]
       20 SETTABLEKS                       R0 R2 K6 ["value"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetTagged"]
        4 CALL                             R1 2 1
        5 GETTABLEN                        R0 R1 1
        6 GETUPVAL                         R1 2
        7 JUMPIFNOTEQ                      R0 R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 3
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETUPVAL                         R1 3
       13 NAMECALL                         R1 R1 K1 ["Disconnect"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETUPVAL                         R1 3
       18 SETUPVAL                         R0 2
       19 JUMPIFNOT                        R0 ; [+37]
       20 GETUPVAL                         R3 4
       21 NAMECALL                         R1 R0 K2 ["GetAttributeChangedSignal"]
       23 CALL                             R1 2 1
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          UPVAL U7
       30 NAMECALL                         R1 R1 K3 ["Connect"]
       32 CALL                             R1 2 1
       33 SETUPVAL                         R1 3
       34 GETUPVAL                         R3 4
       35 NAMECALL                         R1 R0 K4 ["GetAttribute"]
       37 CALL                             R1 2 1
       38 GETUPVAL                         R2 5
       39 GETTABLEKS                       R2 R2 K5 ["bridge"]
       41 GETTABLEKS                       R2 R2 K6 ["onUpdate"]
       43 DUPTABLE                         R3 K11 [{"scope", "channelId", "field", "value"}]
       44 GETUPVAL                         R4 6
       45 SETTABLEKS                       R4 R3 K7 ["scope"]
       47 GETUPVAL                         R4 7
       48 SETTABLEKS                       R4 R3 K8 ["channelId"]
       50 GETUPVAL                         R4 4
       51 SETTABLEKS                       R4 R3 K9 ["field"]
       53 SETTABLEKS                       R1 R3 K10 ["value"]
       55 CALL                             R2 1 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R1 5
       58 GETTABLEKS                       R1 R1 K5 ["bridge"]
       60 GETTABLEKS                       R1 R1 K6 ["onUpdate"]
       62 DUPTABLE                         R2 K13 [{["scope"], ["channelId"], ["field"], ["value"] = }]
       63 GETUPVAL                         R3 6
       64 SETTABLEKS                       R3 R2 K7 ["scope"]
       66 GETUPVAL                         R3 7
       67 SETTABLEKS                       R3 R2 K8 ["channelId"]
       69 GETUPVAL                         R3 4
       70 SETTABLEKS                       R3 R2 K9 ["field"]
       72 CALL                             R1 1 0
       73 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 1
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getTag"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 CALL                             R4 2 1
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 NEWCLOSURE                       R7 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R3
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K1 ["observeTagChanges"]
       16 MOVE                             R9 R4
       17 NEWCLOSURE                       R10 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R4
       20 CAPTURE                          REF R6
       21 CAPTURE                          REF R5
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CALL                             R8 2 1
       27 NEWCLOSURE                       R9 P2
       28 CAPTURE                          VAL R8
       29 CAPTURE                          REF R5
       30 CLOSEUPVALS                      R5
       31 RETURN                           R9 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["fields"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K1 ["getFieldKey"]
        8 GETTABLEKS                       R8 R0 K2 ["scope"]
       10 GETTABLEKS                       R9 R0 K3 ["channelId"]
       12 MOVE                             R10 R6
       13 CALL                             R7 3 1
       14 GETUPVAL                         R9 1
       15 GETTABLE                         R8 R9 R7
       16 JUMPIFNOT                        R8 ; [+39]
       17 GETTABLEKS                       R9 R8 K4 ["refs"]
       19 ADDK                             R9 R9 K5 [1]
       20 SETTABLEKS                       R9 R8 K4 ["refs"]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K6 ["find"]
       25 GETTABLEKS                       R10 R0 K2 ["scope"]
       27 GETTABLEKS                       R11 R0 K3 ["channelId"]
       29 CALL                             R9 2 1
       30 JUMPIFNOT                        R9 ; [+5]
       31 MOVE                             R12 R6
       32 NAMECALL                         R10 R9 K7 ["GetAttribute"]
       34 CALL                             R10 2 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R10
       37 GETTABLEKS                       R11 R1 K8 ["bridge"]
       39 GETTABLEKS                       R11 R11 K9 ["onUpdate"]
       41 DUPTABLE                         R12 K12 [{"scope", "channelId", "field", "value"}]
       42 GETTABLEKS                       R13 R0 K2 ["scope"]
       44 SETTABLEKS                       R13 R12 K2 ["scope"]
       46 GETTABLEKS                       R13 R0 K3 ["channelId"]
       48 SETTABLEKS                       R13 R12 K3 ["channelId"]
       50 SETTABLEKS                       R6 R12 K10 ["field"]
       52 SETTABLEKS                       R10 R12 K11 ["value"]
       54 CALL                             R11 1 0
       55 JUMP                             ; [+13]
       56 GETUPVAL                         R9 1
       57 DUPTABLE                         R10 K14 [{["refs"] = 1, ["disconnect"]}]
       58 GETUPVAL                         R11 2
       59 MOVE                             R12 R1
       60 GETTABLEKS                       R13 R0 K2 ["scope"]
       62 GETTABLEKS                       R14 R0 K3 ["channelId"]
       64 MOVE                             R15 R6
       65 CALL                             R11 4 1
       66 SETTABLEKS                       R11 R10 K13 ["disconnect"]
       68 SETTABLE                         R10 R9 R7
       69 FORGLOOP                         R2 2 ; [-65]
       71 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["fields"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K1 ["getFieldKey"]
        8 GETTABLEKS                       R8 R0 K2 ["scope"]
       10 GETTABLEKS                       R9 R0 K3 ["channelId"]
       12 MOVE                             R10 R6
       13 CALL                             R7 3 1
       14 GETUPVAL                         R9 1
       15 GETTABLE                         R8 R9 R7
       16 JUMPIFNOT                        R8 ; [+16]
       17 GETTABLEKS                       R9 R8 K4 ["refs"]
       19 SUBK                             R9 R9 K5 [1]
       20 SETTABLEKS                       R9 R8 K4 ["refs"]
       22 GETTABLEKS                       R9 R8 K4 ["refs"]
       24 LOADN                            R10 0
       25 JUMPIFNOTLE                      R9 R10 ; [+7]
       27 GETTABLEKS                       R9 R8 K6 ["disconnect"]
       29 CALL                             R9 0 0
       30 GETUPVAL                         R9 1
       31 LOADNIL                          R10
       32 SETTABLE                         R10 R9 R7
       33 FORGLOOP                         R2 2 ; [-29]
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Bridges"]
       17 GETTABLEKS                       R3 R3 K11 ["createChannelBridge"]
       19 GETTABLEKS                       R3 R3 K12 ["ChannelBridgeTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["InstanceChannel"]
       28 GETTABLEKS                       R4 R4 K14 ["InstanceChannel"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K13 ["Util"]
       35 GETTABLEKS                       R5 R5 K15 ["Tagging"]
       37 CALL                             R4 1 1
       38 NEWTABLE                         R5 0 0
       40 DUPCLOSURE                       R6 K16 [PROTO_0]
       41 CAPTURE                          VAL R3
       42 DUPCLOSURE                       R7 K17 [PROTO_5]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 DUPCLOSURE                       R8 K18 [PROTO_6]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R7
       50 DUPCLOSURE                       R9 K19 [PROTO_7]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 DUPTABLE                         R10 K23 [{"sendAsync", "subscribe", "unsubscribe"}]
       54 SETTABLEKS                       R6 R10 K20 ["sendAsync"]
       56 SETTABLEKS                       R8 R10 K21 ["subscribe"]
       58 SETTABLEKS                       R9 R10 K22 ["unsubscribe"]
       60 DUPTABLE                         R11 K25 [{"bridge"}]
       61 SETTABLEKS                       R10 R11 K24 ["bridge"]
       63 RETURN                           R11 1
