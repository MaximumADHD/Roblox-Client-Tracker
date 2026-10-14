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
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+4]
        3 GETUPVAL                         R2 0
        4 NEWTABLE                         R3 0 0
        6 SETTABLE                         R3 R2 R0
        7 GETUPVAL                         R4 0
        8 GETTABLE                         R3 R4 R0
        9 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R2 K2 [table.insert]
       14 CALL                             R2 2 0
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["tag"]
        2 GETTABLEKS                       R2 R0 K1 ["info"]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R1
        6 JUMPIF                           R3 ; [+1]
        7 RETURN                           R0 0
        8 MOVE                             R4 R3
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETIMPORT                        R9 K4 [task.spawn]
       14 MOVE                             R10 R8
       15 MOVE                             R11 R2
       16 CALL                             R9 2 0
       17 FORGLOOP                         R4 2 ; [-6]
       19 RETURN                           R0 0

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
        3 GETTABLEKS                       R0 R0 K0 ["unobserveTag"]
        5 DUPTABLE                         R1 K3 [{"tag", "options"}]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K1 ["tag"]
        9 GETUPVAL                         R2 3
       10 SETTABLEKS                       R2 R1 K2 ["options"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIF                           R0 ; [+7]
        7 GETUPVAL                         R0 3
        8 JUMPIF                           R0 ; [+5]
        9 GETUPVAL                         R0 4
       10 JUMPIF                           R0 ; [+3]
       11 GETUPVAL                         R0 5
       12 JUMPIF                           R0 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U6
       17 GETUPVAL                         R4 7
       18 GETTABLE                         R3 R4 R1
       19 JUMPIF                           R3 ; [+4]
       20 GETUPVAL                         R3 7
       21 NEWTABLE                         R4 0 0
       23 SETTABLE                         R4 R3 R1
       24 GETUPVAL                         R5 7
       25 GETTABLE                         R4 R5 R1
       26 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       28 MOVE                             R5 R2
       29 GETIMPORT                        R3 K2 [table.insert]
       31 CALL                             R3 2 0
       32 NEWCLOSURE                       R0 P1
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 DUPTABLE                         R1 K7 [{"includeCount", "includeName", "includeClassName", "includeUniqueId"}]
       37 GETUPVAL                         R2 2
       38 SETTABLEKS                       R2 R1 K3 ["includeCount"]
       40 GETUPVAL                         R2 3
       41 SETTABLEKS                       R2 R1 K4 ["includeName"]
       43 GETUPVAL                         R2 4
       44 SETTABLEKS                       R2 R1 K5 ["includeClassName"]
       46 GETUPVAL                         R2 5
       47 SETTABLEKS                       R2 R1 K6 ["includeUniqueId"]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K8 ["observeTag"]
       52 DUPTABLE                         R3 K11 [{"tag", "options"}]
       53 GETUPVAL                         R4 1
       54 SETTABLEKS                       R4 R3 K9 ["tag"]
       56 SETTABLEKS                       R1 R3 K10 ["options"]
       58 CALL                             R2 1 0
       59 NEWCLOSURE                       R2 P2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U0
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R1
       64 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useState"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 2
       10 GETTABLEKS                       R5 R1 K2 ["includeCount"]
       12 GETTABLEKS                       R6 R1 K3 ["includeName"]
       14 GETTABLEKS                       R7 R1 K4 ["includeClassName"]
       16 GETTABLEKS                       R8 R1 K5 ["includeUniqueId"]
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R9 R9 K6 ["useEffect"]
       21 NEWCLOSURE                       R10 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R6
       26 CAPTURE                          VAL R7
       27 CAPTURE                          VAL R8
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U2
       30 NEWTABLE                         R11 0 6
       32 MOVE                             R12 R2
       33 MOVE                             R13 R0
       34 MOVE                             R14 R5
       35 MOVE                             R15 R6
       36 MOVE                             R16 R7
       37 MOVE                             R17 R8
       38 SETLIST                          R11 R12 6 [1]
       40 CALL                             R9 2 0
       41 RETURN                           R3 1

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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["tag"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["current"]
        8 GETTABLEKS                       R3 R1 K0 ["tag"]
       10 SETTABLE                         R0 R2 R3
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

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
        5 GETTABLEKS                       R3 R3 K1 ["onTagChanged"]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 NAMECALL                         R3 R3 K2 ["Connect"]
       13 CALL                             R3 2 -1
       14 NAMECALL                         R1 R0 K3 ["Add"]
       16 CALL                             R1 -1 0
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLEKS                       R3 R0 K1 ["tag"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIF                           R1 ; [+3]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["FOCUSED"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["observeTag"]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R0
       15 NAMECALL                         R2 R2 K4 ["Fire"]
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLEKS                       R3 R0 K1 ["tag"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIF                           R1 ; [+3]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["FOCUSED"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["unobserveTag"]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R0
       15 NAMECALL                         R2 R2 K4 ["Fire"]
       17 CALL                             R2 3 0
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R4 R0 K1 ["tag"]
       21 GETTABLE                         R2 R3 R4
       22 JUMPIF                           R2 ; [+7]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K0 ["current"]
       26 GETTABLEKS                       R3 R0 K1 ["tag"]
       28 LOADNIL                          R4
       29 SETTABLE                         R4 R2 R3
       30 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETTABLEKS                       R3 R0 K1 ["tag"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIF                           R1 ; [+3]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["FOCUSED"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["selectTaggedInstances"]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R0
       15 NAMECALL                         R2 R2 K4 ["Fire"]
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R0 K3 [{"observeTag", "unobserveTag", "selectTaggedInstances"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 SETTABLEKS                       R1 R0 K0 ["observeTag"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 SETTABLEKS                       R1 R0 K1 ["unobserveTag"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R1 R0 K2 ["selectTaggedInstances"]
       20 RETURN                           R0 1

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
       27 CAPTURE                          VAL R3
       28 CAPTURE                          UPVAL U5
       29 NEWTABLE                         R6 0 1
       31 MOVE                             R7 R2
       32 SETLIST                          R6 R7 1 [1]
       34 CALL                             R4 2 0
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       38 NEWCLOSURE                       R5 P2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U4
       43 NEWTABLE                         R6 0 1
       45 MOVE                             R7 R2
       46 SETLIST                          R6 R7 1 [1]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 7
       50 GETUPVAL                         R6 8
       51 GETTABLEKS                       R6 R6 K3 ["Provider"]
       53 DUPTABLE                         R7 K5 [{"value"}]
       54 SETTABLEKS                       R4 R7 K4 ["value"]
       56 GETTABLEKS                       R8 R0 K6 ["children"]
       58 CALL                             R5 3 -1
       59 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R5 K10 ["Bin"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Bridges"]
       30 GETTABLEKS                       R6 R6 K12 ["createInstanceBridge"]
       32 GETTABLEKS                       R6 R6 K13 ["InstanceBridgeTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Remotes"]
       39 GETTABLEKS                       R7 R7 K15 ["InstanceRemotes"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K16 ["Hooks"]
       46 GETTABLEKS                       R8 R8 K17 ["useNetworking"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R3 K18 ["createElement"]
       51 GETTABLEKS                       R9 R3 K19 ["createContext"]
       53 LOADNIL                          R10
       54 CALL                             R9 1 1
       55 NEWTABLE                         R10 0 0
       57 DUPCLOSURE                       R11 K20 [PROTO_1]
       58 CAPTURE                          VAL R10
       59 DUPCLOSURE                       R12 K21 [PROTO_2]
       60 CAPTURE                          VAL R10
       61 DUPTABLE                         R13 K23 [{"onTagChanged"}]
       62 DUPCLOSURE                       R14 K24 [PROTO_3]
       63 CAPTURE                          VAL R12
       64 SETTABLEKS                       R14 R13 K22 ["onTagChanged"]
       66 DUPCLOSURE                       R14 K25 [PROTO_7]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R10
       70 DUPCLOSURE                       R15 K26 [PROTO_9]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R9
       74 DUPCLOSURE                       R16 K27 [PROTO_18]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R9
       84 DUPTABLE                         R17 K34 [{"Context", "ProviderOLD", "Provider", "guestBridgeImplementation", "useTag", "_tests"}]
       85 SETTABLEKS                       R9 R17 K28 ["Context"]
       87 SETTABLEKS                       R15 R17 K29 ["ProviderOLD"]
       89 SETTABLEKS                       R16 R17 K30 ["Provider"]
       91 SETTABLEKS                       R13 R17 K31 ["guestBridgeImplementation"]
       93 SETTABLEKS                       R14 R17 K32 ["useTag"]
       95 DUPTABLE                         R18 K36 [{"dispatchTagChanged"}]
       96 SETTABLEKS                       R12 R18 K35 ["dispatchTagChanged"]
       98 SETTABLEKS                       R18 R17 K33 ["_tests"]
      100 RETURN                           R17 1
