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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFieldKey"]
        3 GETTABLEKS                       R2 R0 K1 ["scope"]
        5 GETTABLEKS                       R3 R0 K2 ["channelId"]
        7 GETTABLEKS                       R4 R0 K3 ["field"]
        9 CALL                             R1 3 1
       10 GETUPVAL                         R3 1
       11 GETTABLE                         R2 R3 R1
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 MOVE                             R3 R2
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETIMPORT                        R8 K6 [task.spawn]
       20 MOVE                             R9 R7
       21 GETTABLEKS                       R10 R0 K7 ["value"]
       23 CALL                             R8 2 0
       24 FORGLOOP                         R3 2 ; [-7]
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getFieldKey"]
        3 GETTABLEKS                       R3 R1 K1 ["scope"]
        5 GETTABLEKS                       R4 R1 K2 ["channelId"]
        7 GETTABLEKS                       R5 R1 K3 ["field"]
        9 CALL                             R2 3 1
       10 GETUPVAL                         R4 1
       11 GETTABLE                         R3 R4 R2
       12 JUMPIFNOT                        R3 ; [+4]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["current"]
       16 SETTABLE                         R0 R3 R2
       17 GETUPVAL                         R3 3
       18 MOVE                             R4 R1
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["onUpdate"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 NAMECALL                         R3 R3 K2 ["Connect"]
       14 CALL                             R3 2 -1
       15 NAMECALL                         R1 R0 K3 ["Add"]
       17 CALL                             R1 -1 0
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["send"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K2 ["InvokeAsync"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_15:
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
       15 GETTABLEKS                       R8 R8 K4 ["current"]
       17 GETTABLE                         R7 R8 R6
       18 JUMPIF                           R7 ; [+3]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K5 ["FOCUSED"]
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R8 R8 K6 ["subscribe"]
       25 MOVE                             R10 R7
       26 DUPTABLE                         R11 K7 [{"scope", "channelId", "fields"}]
       27 GETTABLEKS                       R12 R0 K2 ["scope"]
       29 SETTABLEKS                       R12 R11 K2 ["scope"]
       31 GETTABLEKS                       R12 R0 K3 ["channelId"]
       33 SETTABLEKS                       R12 R11 K3 ["channelId"]
       35 NEWTABLE                         R12 0 1
       37 MOVE                             R13 R5
       38 SETLIST                          R12 R13 1 [1]
       40 SETTABLEKS                       R12 R11 K0 ["fields"]
       42 NAMECALL                         R8 R8 K8 ["Fire"]
       44 CALL                             R8 3 0
       45 FORGLOOP                         R1 2 ; [-41]
       47 RETURN                           R0 0

PROTO_16:
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
       15 GETTABLEKS                       R8 R8 K4 ["current"]
       17 GETTABLE                         R7 R8 R6
       18 JUMPIF                           R7 ; [+3]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K5 ["FOCUSED"]
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R8 R8 K6 ["unsubscribe"]
       25 MOVE                             R10 R7
       26 DUPTABLE                         R11 K7 [{"scope", "channelId", "fields"}]
       27 GETTABLEKS                       R12 R0 K2 ["scope"]
       29 SETTABLEKS                       R12 R11 K2 ["scope"]
       31 GETTABLEKS                       R12 R0 K3 ["channelId"]
       33 SETTABLEKS                       R12 R11 K3 ["channelId"]
       35 NEWTABLE                         R12 0 1
       37 MOVE                             R13 R5
       38 SETLIST                          R12 R13 1 [1]
       40 SETTABLEKS                       R12 R11 K0 ["fields"]
       42 NAMECALL                         R8 R8 K8 ["Fire"]
       44 CALL                             R8 3 0
       45 GETUPVAL                         R9 4
       46 GETTABLE                         R8 R9 R6
       47 JUMPIF                           R8 ; [+5]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K4 ["current"]
       51 LOADNIL                          R9
       52 SETTABLE                         R9 R8 R6
       53 FORGLOOP                         R1 2 ; [-49]
       55 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R0 K3 [{"sendAsync", "subscribe", "unsubscribe"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["sendAsync"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R1 R0 K1 ["subscribe"]
       13 NEWCLOSURE                       R1 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U4
       19 SETTABLEKS                       R1 R0 K2 ["unsubscribe"]
       21 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R1
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R1
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K1 ["useRef"]
       17 NEWTABLE                         R4 0 0
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K2 ["useLayoutEffect"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U6
       30 NEWTABLE                         R6 0 1
       32 MOVE                             R7 R2
       33 SETLIST                          R6 R7 1 [1]
       35 CALL                             R4 2 0
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       39 NEWCLOSURE                       R5 P2
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U5
       45 NEWTABLE                         R6 0 1
       47 MOVE                             R7 R2
       48 SETLIST                          R6 R7 1 [1]
       50 CALL                             R4 2 1
       51 GETUPVAL                         R5 8
       52 GETUPVAL                         R6 9
       53 GETTABLEKS                       R6 R6 K3 ["Provider"]
       55 DUPTABLE                         R7 K5 [{"value"}]
       56 SETTABLEKS                       R4 R7 K4 ["value"]
       58 GETTABLEKS                       R8 R0 K6 ["children"]
       60 CALL                             R5 3 -1
       61 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Bridges"]
       28 GETTABLEKS                       R6 R6 K11 ["createChannelBridge"]
       30 GETTABLEKS                       R6 R6 K12 ["ChannelBridgeTypes"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Remotes"]
       37 GETTABLEKS                       R7 R7 K14 ["ChannelRemotes"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K15 ["Util"]
       44 GETTABLEKS                       R8 R8 K16 ["InstanceChannel"]
       46 GETTABLEKS                       R8 R8 K16 ["InstanceChannel"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K17 ["Hooks"]
       53 GETTABLEKS                       R9 R9 K18 ["useNetworking"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R4 K19 ["createElement"]
       58 GETTABLEKS                       R10 R4 K20 ["createContext"]
       60 LOADNIL                          R11
       61 CALL                             R10 1 1
       62 NEWTABLE                         R11 0 0
       64 DUPCLOSURE                       R12 K21 [PROTO_1]
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R11
       67 DUPCLOSURE                       R13 K22 [PROTO_2]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R11
       70 DUPTABLE                         R14 K24 [{"onUpdate"}]
       71 DUPCLOSURE                       R15 K25 [PROTO_3]
       72 CAPTURE                          VAL R13
       73 SETTABLEKS                       R15 R14 K23 ["onUpdate"]
       75 DUPCLOSURE                       R15 K26 [PROTO_7]
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R12
       79 DUPCLOSURE                       R16 K27 [PROTO_9]
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R10
       83 DUPCLOSURE                       R17 K28 [PROTO_18]
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 DUPTABLE                         R18 K35 [{"Context", "ProviderOLD", "Provider", "guestBridgeImplementation", "useChannel", "_tests"}]
       95 SETTABLEKS                       R10 R18 K29 ["Context"]
       97 SETTABLEKS                       R16 R18 K30 ["ProviderOLD"]
       99 SETTABLEKS                       R17 R18 K31 ["Provider"]
      101 SETTABLEKS                       R14 R18 K32 ["guestBridgeImplementation"]
      103 SETTABLEKS                       R15 R18 K33 ["useChannel"]
      105 DUPTABLE                         R19 K37 [{"dispatchUpdate"}]
      106 SETTABLEKS                       R13 R19 K36 ["dispatchUpdate"]
      108 SETTABLEKS                       R19 R18 K34 ["_tests"]
      110 RETURN                           R18 1
