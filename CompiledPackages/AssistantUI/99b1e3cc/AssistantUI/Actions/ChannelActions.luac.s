PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 GETTABLEKS                       R2 R0 K1 ["scope"]
        5 GETTABLEKS                       R3 R0 K2 ["channelId"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+2]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 GETTABLEKS                       R4 R0 K3 ["field"]
       13 GETTABLEKS                       R5 R0 K4 ["value"]
       15 NAMECALL                         R2 R1 K5 ["Set"]
       17 CALL                             R2 3 0
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K4 [{"scope", "channelId", "field", "value"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["scope"]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["channelId"]
        8 GETUPVAL                         R3 3
        9 SETTABLEKS                       R3 R2 K2 ["field"]
       11 SETTABLEKS                       R0 R2 K3 ["value"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAttribute"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 2
        6 DUPTABLE                         R2 K5 [{"scope", "channelId", "field", "value"}]
        7 GETUPVAL                         R3 3
        8 SETTABLEKS                       R3 R2 K1 ["scope"]
       10 GETUPVAL                         R3 4
       11 SETTABLEKS                       R3 R2 K2 ["channelId"]
       13 GETUPVAL                         R3 1
       14 SETTABLEKS                       R3 R2 K3 ["field"]
       16 SETTABLEKS                       R0 R2 K4 ["value"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

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
       19 JUMPIFNOT                        R0 ; [+33]
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
       39 DUPTABLE                         R3 K9 [{"scope", "channelId", "field", "value"}]
       40 GETUPVAL                         R4 6
       41 SETTABLEKS                       R4 R3 K5 ["scope"]
       43 GETUPVAL                         R4 7
       44 SETTABLEKS                       R4 R3 K6 ["channelId"]
       46 GETUPVAL                         R4 4
       47 SETTABLEKS                       R4 R3 K7 ["field"]
       49 SETTABLEKS                       R1 R3 K8 ["value"]
       51 CALL                             R2 1 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R1 5
       54 DUPTABLE                         R2 K11 [{["scope"], ["channelId"], ["field"], ["value"] = }]
       55 GETUPVAL                         R3 6
       56 SETTABLEKS                       R3 R2 K5 ["scope"]
       58 GETUPVAL                         R3 7
       59 SETTABLEKS                       R3 R2 K6 ["channelId"]
       61 GETUPVAL                         R3 4
       62 SETTABLEKS                       R3 R2 K7 ["field"]
       64 CALL                             R1 1 0
       65 RETURN                           R0 0

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
       16 JUMPIFNOT                        R8 ; [+36]
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
       37 MOVE                             R11 R1
       38 DUPTABLE                         R12 K10 [{"scope", "channelId", "field", "value"}]
       39 GETTABLEKS                       R13 R0 K2 ["scope"]
       41 SETTABLEKS                       R13 R12 K2 ["scope"]
       43 GETTABLEKS                       R13 R0 K3 ["channelId"]
       45 SETTABLEKS                       R13 R12 K3 ["channelId"]
       47 SETTABLEKS                       R6 R12 K8 ["field"]
       49 SETTABLEKS                       R10 R12 K9 ["value"]
       51 CALL                             R11 1 0
       52 JUMP                             ; [+39]
       53 GETUPVAL                         R9 1
       54 DUPTABLE                         R10 K12 [{["refs"] = 1, ["disconnect"]}]
       55 GETUPVAL                         R11 2
       56 MOVE                             R12 R1
       57 GETTABLEKS                       R13 R0 K2 ["scope"]
       59 GETTABLEKS                       R14 R0 K3 ["channelId"]
       61 MOVE                             R15 R6
       62 CALL                             R11 4 1
       63 SETTABLEKS                       R11 R10 K11 ["disconnect"]
       65 SETTABLE                         R10 R9 R7
       66 GETUPVAL                         R9 3
       67 GETTABLEKS                       R9 R9 K13 ["FFlagAssistantUseNewDMNetworking"]
       69 JUMPIFNOT                        R9 ; [+22]
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K6 ["find"]
       73 GETTABLEKS                       R10 R0 K2 ["scope"]
       75 GETTABLEKS                       R11 R0 K3 ["channelId"]
       77 CALL                             R9 2 1
       78 JUMPIF                           R9 ; [+13]
       79 MOVE                             R9 R1
       80 DUPTABLE                         R10 K15 [{["scope"], ["channelId"], ["field"], ["value"] = }]
       81 GETTABLEKS                       R11 R0 K2 ["scope"]
       83 SETTABLEKS                       R11 R10 K2 ["scope"]
       85 GETTABLEKS                       R11 R0 K3 ["channelId"]
       87 SETTABLEKS                       R11 R10 K3 ["channelId"]
       89 SETTABLEKS                       R6 R10 K8 ["field"]
       91 CALL                             R9 1 0
       92 FORGLOOP                         R2 2 ; [-88]
       94 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["fields"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K1 ["getFieldKey"]
        8 GETTABLEKS                       R7 R0 K2 ["scope"]
       10 GETTABLEKS                       R8 R0 K3 ["channelId"]
       12 MOVE                             R9 R5
       13 CALL                             R6 3 1
       14 GETUPVAL                         R8 1
       15 GETTABLE                         R7 R8 R6
       16 JUMPIFNOT                        R7 ; [+16]
       17 GETTABLEKS                       R8 R7 K4 ["refs"]
       19 SUBK                             R8 R8 K5 [1]
       20 SETTABLEKS                       R8 R7 K4 ["refs"]
       22 GETTABLEKS                       R8 R7 K4 ["refs"]
       24 LOADN                            R9 0
       25 JUMPIFNOTLE                      R8 R9 ; [+7]
       27 GETTABLEKS                       R8 R7 K6 ["disconnect"]
       29 CALL                             R8 0 0
       30 GETUPVAL                         R8 1
       31 LOADNIL                          R9
       32 SETTABLE                         R9 R8 R6
       33 FORGLOOP                         R1 2 ; [-29]
       35 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 GETTABLEKS                       R4 R0 K1 ["scope"]
        5 GETTABLEKS                       R5 R0 K2 ["channelId"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+2]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 GETTABLEKS                       R6 R0 K3 ["field"]
       13 GETTABLEKS                       R7 R0 K4 ["value"]
       15 NAMECALL                         R4 R3 K5 ["Set"]
       17 CALL                             R4 3 0
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["bridge"]
        4 GETTABLEKS                       R4 R4 K1 ["onUpdate"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 GETTABLEKS                       R4 R1 K1 ["scope"]
        5 GETTABLEKS                       R5 R1 K2 ["channelId"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+2]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 GETTABLEKS                       R6 R1 K3 ["field"]
       13 GETTABLEKS                       R7 R1 K4 ["value"]
       15 NAMECALL                         R4 R3 K5 ["Set"]
       17 CALL                             R4 3 0
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onUpdate"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["new"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R6 R2 K1 ["send"]
       11 DUPCLOSURE                       R8 K2 [PROTO_11]
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R6 R6 K3 ["Connect"]
       15 CALL                             R6 2 -1
       16 NAMECALL                         R4 R3 K4 ["Add"]
       18 CALL                             R4 -1 0
       19 GETTABLEKS                       R6 R2 K5 ["subscribe"]
       21 NEWCLOSURE                       R8 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U3
       24 NAMECALL                         R6 R6 K3 ["Connect"]
       26 CALL                             R6 2 -1
       27 NAMECALL                         R4 R3 K4 ["Add"]
       29 CALL                             R4 -1 0
       30 GETTABLEKS                       R6 R2 K6 ["unsubscribe"]
       32 DUPCLOSURE                       R8 K7 [PROTO_14]
       33 CAPTURE                          UPVAL U4
       34 NAMECALL                         R6 R6 K3 ["Connect"]
       36 CALL                             R6 2 -1
       37 NAMECALL                         R4 R3 K4 ["Add"]
       39 CALL                             R4 -1 0
       40 GETTABLEKS                       R4 R1 K8 ["Destroying"]
       42 NEWCLOSURE                       R6 P3
       43 CAPTURE                          VAL R3
       44 NAMECALL                         R4 R4 K9 ["Once"]
       46 CALL                             R4 2 0
       47 RETURN                           R0 0

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
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Bin"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["DMNetworking"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Bridges"]
       29 GETTABLEKS                       R6 R6 K14 ["createChannelBridge"]
       31 GETTABLEKS                       R6 R6 K15 ["ChannelBridgeTypes"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K10 [require]
       36 GETTABLEKS                       R7 R0 K16 ["Remotes"]
       38 GETTABLEKS                       R7 R7 K17 ["ChannelRemotes"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K10 [require]
       43 GETTABLEKS                       R8 R0 K18 ["Guest"]
       45 GETTABLEKS                       R8 R8 K19 ["Environment"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K10 [require]
       50 GETTABLEKS                       R9 R0 K20 ["Flags"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K10 [require]
       55 GETTABLEKS                       R10 R0 K21 ["Util"]
       57 GETTABLEKS                       R10 R10 K22 ["InstanceChannel"]
       59 GETTABLEKS                       R10 R10 K22 ["InstanceChannel"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K10 [require]
       64 GETTABLEKS                       R11 R0 K21 ["Util"]
       66 GETTABLEKS                       R11 R11 K23 ["Tagging"]
       68 CALL                             R10 1 1
       69 NEWTABLE                         R11 0 0
       71 DUPCLOSURE                       R12 K24 [PROTO_0]
       72 CAPTURE                          VAL R9
       73 DUPCLOSURE                       R13 K25 [PROTO_5]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R1
       77 DUPCLOSURE                       R14 K26 [PROTO_6]
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R8
       82 DUPCLOSURE                       R15 K27 [PROTO_7]
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R11
       85 DUPTABLE                         R16 K31 [{"sendAsync", "subscribe", "unsubscribe"}]
       86 DUPCLOSURE                       R17 K32 [PROTO_8]
       87 CAPTURE                          VAL R9
       88 SETTABLEKS                       R17 R16 K28 ["sendAsync"]
       90 DUPCLOSURE                       R17 K33 [PROTO_9]
       91 CAPTURE                          VAL R14
       92 SETTABLEKS                       R17 R16 K29 ["subscribe"]
       94 DUPCLOSURE                       R17 K34 [PROTO_10]
       95 CAPTURE                          VAL R15
       96 SETTABLEKS                       R17 R16 K30 ["unsubscribe"]
       98 DUPCLOSURE                       R17 K35 [PROTO_16]
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R15
      104 DUPTABLE                         R18 K38 [{"bridge", "connectRemotes"}]
      105 SETTABLEKS                       R16 R18 K36 ["bridge"]
      107 SETTABLEKS                       R17 R18 K37 ["connectRemotes"]
      109 RETURN                           R18 1
