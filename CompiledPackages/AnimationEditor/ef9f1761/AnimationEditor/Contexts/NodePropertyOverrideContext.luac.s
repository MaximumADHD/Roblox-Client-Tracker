PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setNodeOverride"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K6 [{"nodeId", "propertyName", "inputPinName", "parameterName", "value"}]
        5 GETUPVAL                         R4 1
        6 SETTABLEKS                       R4 R3 K1 ["nodeId"]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K2 ["propertyName"]
       11 GETUPVAL                         R4 3
       12 SETTABLEKS                       R4 R3 K3 ["inputPinName"]
       14 GETUPVAL                         R4 4
       15 SETTABLEKS                       R4 R3 K4 ["parameterName"]
       17 GETUPVAL                         R4 5
       18 SETTABLEKS                       R4 R3 K5 ["value"]
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 NEWCLOSURE                       R6 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R4
        7 CAPTURE                          VAL R3
        8 CALL                             R5 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["removeNodeOverride"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 2
        8 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R1 R0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["parameterName"]
        7 GETUPVAL                         R8 0
        8 JUMPIFNOTEQ                      R7 R8 ; [+27]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K1 ["instanceRegistry"]
       13 GETTABLEKS                       R9 R6 K2 ["nodeId"]
       15 NAMECALL                         R7 R7 K3 ["idToInstance"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+17]
       19 GETUPVAL                         R10 2
       20 NAMECALL                         R8 R7 K4 ["IsDescendantOf"]
       22 CALL                             R8 2 1
       23 JUMPIFNOT                        R8 ; [+12]
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R8 R8 K5 ["removeNodeOverride"]
       27 MOVE                             R9 R1
       28 GETTABLEKS                       R10 R6 K2 ["nodeId"]
       30 GETTABLEKS                       R11 R6 K6 ["propertyName"]
       32 GETTABLEKS                       R12 R6 K7 ["inputPinName"]
       34 CALL                             R8 4 2
       35 MOVE                             R1 R9
       36 FORGLOOP                         R2 2 ; [-32]
       38 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U3
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R1 R0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R6 K0 ["nodeId"]
        7 GETUPVAL                         R8 0
        8 JUMPIFNOTEQ                      R7 R8 ; [+13]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K1 ["removeNodeOverride"]
       13 MOVE                             R8 R1
       14 GETTABLEKS                       R9 R6 K0 ["nodeId"]
       16 GETTABLEKS                       R10 R6 K2 ["propertyName"]
       18 GETTABLEKS                       R11 R6 K3 ["inputPinName"]
       20 CALL                             R7 4 2
       21 MOVE                             R1 R8
       22 FORGLOOP                         R2 2 ; [-18]
       24 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K0 ["nodeId"]
       10 GETTABLE                         R8 R1 R7
       11 JUMPIF                           R8 ; [+25]
       12 LOADB                            R8 1
       13 SETTABLE                         R8 R1 R7
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R8 R8 K1 ["instanceRegistry"]
       17 MOVE                             R10 R7
       18 NAMECALL                         R8 R8 K2 ["idToInstance"]
       20 CALL                             R8 2 1
       21 JUMPIFNOT                        R8 ; [+15]
       22 MOVE                             R10 R0
       23 GETTABLEKS                       R11 R8 K3 ["AncestryChanged"]
       25 NEWCLOSURE                       R13 P0
       26 CAPTURE                          VAL R8
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R7
       29 CAPTURE                          UPVAL U3
       30 NAMECALL                         R11 R11 K4 ["Connect"]
       32 CALL                             R11 2 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R9 K7 [table.insert]
       36 CALL                             R9 -1 0
       37 FORGLOOP                         R2 2 ; [-30]
       39 NEWCLOSURE                       R2 P1
       40 CAPTURE                          VAL R0
       41 RETURN                           R2 1

PROTO_10:
        0 DUPTABLE                         R0 K4 [{"nodeOverrides", "setNodeOverride", "removeNodeOverride", "removeParameterOverrides"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["nodeOverrides"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setNodeOverride"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["removeNodeOverride"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["removeParameterOverrides"]
       13 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useState"]
       17 NEWTABLE                         R4 0 0
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R4
       25 CAPTURE                          UPVAL U3
       26 NEWTABLE                         R7 0 1
       28 MOVE                             R8 R4
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U3
       38 NEWTABLE                         R8 0 1
       40 MOVE                             R9 R4
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       47 NEWCLOSURE                       R8 P2
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U3
       52 NEWTABLE                         R9 0 3
       54 GETTABLEKS                       R10 R2 K4 ["observeSelectedGraphInstance"]
       56 GETTABLEKS                       R11 R1 K5 ["instanceRegistry"]
       58 MOVE                             R12 R4
       59 SETLIST                          R9 R10 3 [1]
       61 CALL                             R7 2 1
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K6 ["useEffect"]
       65 NEWCLOSURE                       R9 P3
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R4
       69 CAPTURE                          UPVAL U3
       70 NEWTABLE                         R10 0 3
       72 MOVE                             R11 R3
       73 GETTABLEKS                       R12 R1 K5 ["instanceRegistry"]
       75 MOVE                             R13 R4
       76 SETLIST                          R10 R11 3 [1]
       78 CALL                             R8 2 0
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K7 ["useMemo"]
       82 NEWCLOSURE                       R9 P4
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 NEWTABLE                         R10 0 4
       89 MOVE                             R11 R3
       90 MOVE                             R12 R5
       91 MOVE                             R13 R6
       92 MOVE                             R14 R7
       93 SETLIST                          R10 R11 4 [1]
       95 CALL                             R8 2 1
       96 GETUPVAL                         R9 4
       97 GETTABLEKS                       R9 R9 K8 ["useReplicatedState"]
       99 LOADK                            R10 K9 ["NodePropertyOverrideContext_NodeOverridesState"]
      100 MOVE                             R11 R3
      101 CALL                             R9 2 0
      102 GETUPVAL                         R9 4
      103 GETTABLEKS                       R9 R9 K10 ["useBoundAction"]
      105 LOADK                            R10 K11 ["NodePropertyOverrideContext_SetNodeOverride"]
      106 MOVE                             R11 R5
      107 CALL                             R9 2 0
      108 GETUPVAL                         R9 4
      109 GETTABLEKS                       R9 R9 K10 ["useBoundAction"]
      111 LOADK                            R10 K12 ["NodePropertyOverrideContext_RemoveNodeOverride"]
      112 MOVE                             R11 R6
      113 CALL                             R9 2 0
      114 GETUPVAL                         R9 4
      115 GETTABLEKS                       R9 R9 K10 ["useBoundAction"]
      117 LOADK                            R10 K13 ["NodePropertyOverrideContext_RemoveParameterOverrides"]
      118 MOVE                             R11 R7
      119 CALL                             R9 2 0
      120 GETUPVAL                         R9 0
      121 GETTABLEKS                       R9 R9 K14 ["createElement"]
      123 GETUPVAL                         R10 3
      124 GETTABLEKS                       R10 R10 K1 ["Context"]
      126 GETTABLEKS                       R10 R10 K15 ["Provider"]
      128 DUPTABLE                         R11 K17 [{"value"}]
      129 SETTABLEKS                       R8 R11 K16 ["value"]
      131 GETTABLEKS                       R12 R0 K18 ["children"]
      133 CALL                             R9 3 -1
      134 RETURN                           R9 -1

PROTO_12:
        0 GETIMPORT                        R5 K2 [task.spawn]
        2 GETUPVAL                         R6 0
        3 MOVE                             R7 R0
        4 MOVE                             R8 R1
        5 MOVE                             R9 R2
        6 MOVE                             R10 R3
        7 MOVE                             R11 R4
        8 CALL                             R5 6 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R3 K2 [task.spawn]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R0 K4 [{"nodeOverrides", "setNodeOverride", "removeNodeOverride", "removeParameterOverrides"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["nodeOverrides"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setNodeOverride"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["removeNodeOverride"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["removeParameterOverrides"]
       13 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 LOADK                            R2 K1 ["NodePropertyOverrideContext_NodeOverridesState"]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useBoundAction"]
       10 LOADK                            R3 K3 ["NodePropertyOverrideContext_SetNodeOverride"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["useBoundAction"]
       15 LOADK                            R4 K4 ["NodePropertyOverrideContext_RemoveNodeOverride"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K2 ["useBoundAction"]
       20 LOADK                            R5 K5 ["NodePropertyOverrideContext_RemoveParameterOverrides"]
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R7 0 1
       29 MOVE                             R8 R2
       30 SETLIST                          R7 R8 1 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R3
       38 NEWTABLE                         R8 0 1
       40 MOVE                             R9 R3
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       47 NEWCLOSURE                       R8 P2
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R9 0 1
       51 MOVE                             R10 R4
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R7 2 1
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K7 ["useMemo"]
       58 NEWCLOSURE                       R9 P3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 NEWTABLE                         R10 0 4
       65 MOVE                             R11 R1
       66 MOVE                             R12 R5
       67 MOVE                             R13 R6
       68 MOVE                             R14 R7
       69 SETLIST                          R10 R11 4 [1]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R9 R9 K8 ["createElement"]
       75 GETUPVAL                         R10 2
       76 GETTABLEKS                       R10 R10 K9 ["Context"]
       78 GETTABLEKS                       R10 R10 K10 ["Provider"]
       80 DUPTABLE                         R11 K12 [{"value"}]
       81 SETTABLEKS                       R8 R11 K11 ["value"]
       83 GETTABLEKS                       R12 R0 K13 ["children"]
       85 CALL                             R9 3 -1
       86 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["InstanceRegistryContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Networking"]
       20 GETTABLEKS                       R3 R3 K10 ["NetworkUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["NodeGraphing"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       41 GETTABLEKS                       R6 R6 K14 ["SelectedGraphContext"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K15 ["NodePropertyOverrideContext"]
       46 DUPTABLE                         R7 K18 [{["NODE_OVERRIDES_MAP"] = "NodePropertyOverrideContext_NodeOverridesState"}]
       47 DUPTABLE                         R8 K25 [{["SET_NODE_OVERRIDE"] = "NodePropertyOverrideContext_SetNodeOverride", ["REMOVE_NODE_OVERRIDE"] = "NodePropertyOverrideContext_RemoveNodeOverride", ["REMOVE_PARAMETER_OVERRIDES"] = "NodePropertyOverrideContext_RemoveParameterOverrides"}]
       48 DUPCLOSURE                       R9 K26 [PROTO_11]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 DUPCLOSURE                       R10 K27 [PROTO_16]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 DUPTABLE                         R11 K30 [{"EditableDataModelProvider", "UIDataModelProvider"}]
       59 SETTABLEKS                       R9 R11 K28 ["EditableDataModelProvider"]
       61 SETTABLEKS                       R10 R11 K29 ["UIDataModelProvider"]
       63 RETURN                           R11 1
