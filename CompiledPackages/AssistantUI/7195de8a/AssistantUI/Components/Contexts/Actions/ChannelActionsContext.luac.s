PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R1 K2 [table.find]
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 2
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+8]
       11 LENGTH                           R3 R0
       12 GETTABLE                         R2 R0 R3
       13 SETTABLE                         R2 R0 R1
       14 GETIMPORT                        R2 K4 [table.remove]
       16 MOVE                             R3 R0
       17 LENGTH                           R4 R0
       18 CALL                             R2 2 0
       19 LENGTH                           R2 R0
       20 JUMPIFNOTEQKN                    R2 K5 [0] ; [+5]
       22 GETUPVAL                         R2 0
       23 GETUPVAL                         R3 1
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R2 R3
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getFieldKey"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R4 3 1
        7 GETUPVAL                         R6 1
        8 GETTABLE                         R5 R6 R4
        9 JUMPIF                           R5 ; [+4]
       10 GETUPVAL                         R5 1
       11 NEWTABLE                         R6 0 0
       13 SETTABLE                         R6 R5 R4
       14 GETUPVAL                         R7 1
       15 GETTABLE                         R6 R7 R4
       16 FASTCALL2                        TABLE_INSERT R6 R3 ; [+4]
       18 MOVE                             R7 R3
       19 GETIMPORT                        R5 K3 [table.insert]
       21 CALL                             R5 2 0
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFieldKey"]
        3 GETTABLEKS                       R3 R0 K1 ["scope"]
        5 GETTABLEKS                       R4 R0 K2 ["channelId"]
        7 GETTABLEKS                       R5 R0 K3 ["field"]
        9 CALL                             R2 3 1
       10 GETUPVAL                         R4 1
       11 GETTABLE                         R3 R4 R2
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 MOVE                             R4 R3
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETIMPORT                        R9 K6 [task.spawn]
       20 MOVE                             R10 R8
       21 GETTABLEKS                       R11 R0 K7 ["value"]
       23 CALL                             R9 2 0
       24 FORGLOOP                         R4 2 ; [-7]
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unsubscribe"]
        5 DUPTABLE                         R1 K4 [{"scope", "channelId", "fields"}]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K1 ["scope"]
        9 GETUPVAL                         R2 3
       10 SETTABLEKS                       R2 R1 K2 ["channelId"]
       12 NEWTABLE                         R2 0 1
       14 GETUPVAL                         R3 4
       15 SETLIST                          R2 R3 1 [1]
       17 SETTABLEKS                       R2 R1 K3 ["fields"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETUPVAL                         R0 2
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R1 4
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 5
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U0
       14 CALL                             R0 4 1
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K0 ["subscribe"]
       18 DUPTABLE                         R2 K4 [{"scope", "channelId", "fields"}]
       19 GETUPVAL                         R3 4
       20 SETTABLEKS                       R3 R2 K1 ["scope"]
       22 GETUPVAL                         R3 2
       23 SETTABLEKS                       R3 R2 K2 ["channelId"]
       25 NEWTABLE                         R3 0 1
       27 GETUPVAL                         R4 5
       28 SETLIST                          R3 R4 1 [1]
       30 SETTABLEKS                       R3 R2 K3 ["fields"]
       32 CALL                             R1 1 0
       33 NEWCLOSURE                       R1 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U5
       39 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useState"]
        8 LOADNIL                          R5
        9 CALL                             R4 1 2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K2 ["useEffect"]
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          VAL R5
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R8 0 4
       22 MOVE                             R9 R3
       23 MOVE                             R10 R0
       24 MOVE                             R11 R1
       25 MOVE                             R12 R2
       26 SETLIST                          R8 R9 4 [1]
       28 CALL                             R6 2 0
       29 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["value"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["Provider"]
       16 DUPTABLE                         R4 K3 [{"value"}]
       17 SETTABLEKS                       R1 R4 K1 ["value"]
       19 GETTABLEKS                       R5 R0 K4 ["children"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 GETTABLEKS                       R2 R2 K7 ["createChannelBridge"]
       13 GETTABLEKS                       R2 R2 K8 ["ChannelBridgeTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["InstanceChannel"]
       22 GETTABLEKS                       R3 R3 K10 ["InstanceChannel"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K13 ["createElement"]
       34 GETTABLEKS                       R5 R3 K14 ["createContext"]
       36 LOADNIL                          R6
       37 CALL                             R5 1 1
       38 NEWTABLE                         R6 0 0
       40 DUPCLOSURE                       R7 K15 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R6
       43 DUPTABLE                         R8 K17 [{"onUpdate"}]
       44 DUPCLOSURE                       R9 K18 [PROTO_2]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R6
       47 SETTABLEKS                       R9 R8 K16 ["onUpdate"]
       49 DUPCLOSURE                       R9 K19 [PROTO_6]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R7
       53 DUPCLOSURE                       R10 K20 [PROTO_8]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 DUPTABLE                         R11 K25 [{"Context", "Provider", "guestBridgeImplementation", "useChannel"}]
       58 SETTABLEKS                       R5 R11 K21 ["Context"]
       60 SETTABLEKS                       R10 R11 K22 ["Provider"]
       62 SETTABLEKS                       R8 R11 K23 ["guestBridgeImplementation"]
       64 SETTABLEKS                       R9 R11 K24 ["useChannel"]
       66 RETURN                           R11 1
