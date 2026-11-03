PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeAllGraphItems"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["instanceRegistry"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["observeSelectedGraphInstanceId"]
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSelectedGraphInstance"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceRegistry"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["idToInstance"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+7]
        9 GETIMPORT                        R2 K3 [warn]
       11 LOADK                            R3 K4 ["GraphDropdownContext: selectGraphByIdAsync: No instance found with id"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["observeSelectedGraphInstance"]
       18 LOADB                            R3 0
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQ                      R2 R1 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K6 ["updateGraphTimestamp"]
       26 MOVE                             R4 R1
       27 CALL                             R3 1 0
       28 GETUPVAL                         R4 3
       29 CALL                             R4 0 1
       30 JUMPIFNOT                        R4 ; [+6]
       31 GETUPVAL                         R3 4
       32 GETTABLEKS                       R3 R3 K7 ["getClassName"]
       34 GETUPVAL                         R4 5
       35 CALL                             R3 1 1
       36 JUMP                             ; [+1]
       37 LOADK                            R3 K8 ["AnimationGraphDefinition"]
       38 MOVE                             R6 R3
       39 NAMECALL                         R4 R1 K9 ["IsA"]
       41 CALL                             R4 2 1
       42 JUMPIFNOT                        R4 ; [+6]
       43 GETIMPORT                        R4 K12 [task.spawn]
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R1
       48 CALL                             R4 1 0
       49 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["instanceRegistry"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K1 ["idToInstance"]
        6 CALL                             R2 2 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+7]
        9 GETIMPORT                        R3 K3 [warn]
       11 LOADK                            R4 K4 ["GraphDropdownContext: renameGraphByIdAsync: No instance found with id"]
       12 MOVE                             R5 R0
       13 CALL                             R3 2 0
       14 RETURN                           R0 0
       15 SETTABLEKS                       R1 R2 K5 ["Name"]
       17 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"graphItems", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["graphItems"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["selectGraphByIdAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["renameGraphByIdAsync"]
       10 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R1 R1 K2 ["assetType"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K0 ["useContext"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K1 ["Context"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K0 ["useContext"]
       24 GETUPVAL                         R4 4
       25 GETTABLEKS                       R4 R4 K1 ["Context"]
       27 CALL                             R3 1 1
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K0 ["useContext"]
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R5 R5 K1 ["Context"]
       34 CALL                             R4 1 1
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 NEWTABLE                         R7 0 3
       45 GETTABLEKS                       R8 R3 K4 ["instanceRegistry"]
       47 GETTABLEKS                       R9 R2 K5 ["observeSelectedGraphInstanceId"]
       49 GETUPVAL                         R11 0
       50 CALL                             R11 0 1
       51 JUMPIFNOT                        R11 ; [+2]
       52 MOVE                             R10 R1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R10
       55 SETLIST                          R7 R8 3 [1]
       57 CALL                             R5 2 1
       58 GETUPVAL                         R6 7
       59 GETTABLEKS                       R6 R6 K6 ["useSignalState"]
       61 MOVE                             R7 R5
       62 CALL                             R6 1 1
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       66 NEWCLOSURE                       R8 P1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R4
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          VAL R1
       73 NEWTABLE                         R9 0 5
       75 GETTABLEKS                       R10 R3 K4 ["instanceRegistry"]
       77 GETTABLEKS                       R11 R2 K8 ["setSelectedGraphInstance"]
       79 GETTABLEKS                       R12 R2 K9 ["observeSelectedGraphInstance"]
       81 GETTABLEKS                       R13 R4 K10 ["updateGraphTimestamp"]
       83 GETUPVAL                         R15 0
       84 CALL                             R15 0 1
       85 JUMPIFNOT                        R15 ; [+2]
       86 MOVE                             R14 R1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R14
       89 SETLIST                          R9 R10 5 [1]
       91 CALL                             R7 2 1
       92 GETUPVAL                         R8 1
       93 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       95 NEWCLOSURE                       R9 P2
       96 CAPTURE                          VAL R3
       97 NEWTABLE                         R10 0 1
       99 GETTABLEKS                       R11 R3 K4 ["instanceRegistry"]
      101 SETLIST                          R10 R11 1 [1]
      103 CALL                             R8 2 1
      104 GETUPVAL                         R9 9
      105 GETTABLEKS                       R9 R9 K11 ["useBoundAction"]
      107 LOADK                            R10 K12 ["GraphDropdownContext_SelectGraphByIdAsync"]
      108 MOVE                             R11 R7
      109 CALL                             R9 2 0
      110 GETUPVAL                         R9 9
      111 GETTABLEKS                       R9 R9 K11 ["useBoundAction"]
      113 LOADK                            R10 K13 ["GraphDropdownContext_RenameGraphByIdAsync"]
      114 MOVE                             R11 R8
      115 CALL                             R9 2 0
      116 GETUPVAL                         R9 9
      117 GETTABLEKS                       R9 R9 K14 ["useReplicatedState"]
      119 LOADK                            R10 K15 ["GraphDropdownContext_GraphItems"]
      120 MOVE                             R11 R6
      121 CALL                             R9 2 0
      122 GETUPVAL                         R9 1
      123 GETTABLEKS                       R9 R9 K3 ["useMemo"]
      125 NEWCLOSURE                       R10 P3
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R8
      129 NEWTABLE                         R11 0 3
      131 MOVE                             R12 R6
      132 MOVE                             R13 R7
      133 MOVE                             R14 R8
      134 SETLIST                          R11 R12 3 [1]
      136 CALL                             R9 2 1
      137 GETUPVAL                         R10 1
      138 GETTABLEKS                       R10 R10 K16 ["createElement"]
      140 GETUPVAL                         R11 10
      141 GETTABLEKS                       R11 R11 K17 ["Provider"]
      143 DUPTABLE                         R12 K19 [{"value"}]
      144 SETTABLEKS                       R9 R12 K18 ["value"]
      146 GETTABLEKS                       R13 R0 K20 ["children"]
      148 CALL                             R10 3 -1
      149 RETURN                           R10 -1

PROTO_6:
        0 DUPTABLE                         R0 K3 [{"graphItems", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["graphItems"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["selectGraphByIdAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["renameGraphByIdAsync"]
       10 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 LOADK                            R2 K1 ["GraphDropdownContext_GraphItems"]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useBoundAction"]
       10 LOADK                            R3 K3 ["GraphDropdownContext_SelectGraphByIdAsync"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["useBoundAction"]
       15 LOADK                            R4 K4 ["GraphDropdownContext_RenameGraphByIdAsync"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R6 0 3
       26 MOVE                             R7 R1
       27 MOVE                             R8 R2
       28 MOVE                             R9 R3
       29 SETLIST                          R6 R7 3 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K6 ["createElement"]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K7 ["Provider"]
       38 DUPTABLE                         R7 K9 [{"value"}]
       39 SETTABLEKS                       R4 R7 K8 ["value"]
       41 GETTABLEKS                       R8 R0 K10 ["children"]
       43 CALL                             R5 3 -1
       44 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphDropdownContextUtils"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["GraphTimestampContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["InstanceRegistryContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["Networking"]
       36 GETTABLEKS                       R5 R5 K13 ["NetworkUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       43 GETTABLEKS                       R6 R6 K14 ["OpenableAssetTypeContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K14 ["OpenableAssetTypeContext"]
       52 GETTABLEKS                       R7 R7 K15 ["OpenableAssetTypeUtils"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Parent"]
       59 GETTABLEKS                       R8 R8 K16 ["React"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K9 ["Parent"]
       66 GETTABLEKS                       R9 R9 K17 ["ReactUtils"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       73 GETTABLEKS                       R10 R10 K18 ["SelectedGraphContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K9 ["Parent"]
       80 GETTABLEKS                       R11 R11 K19 ["SignalsReact"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K20 ["Types"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K21 ["Flags"]
       92 GETTABLEKS                       R13 R13 K22 ["getFFlagAnimationEditorAnimationTypes"]
       94 CALL                             R12 1 1
       95 DUPTABLE                         R13 K26 [{"graphItems", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
       96 GETIMPORT                        R14 K29 [table.freeze]
       98 NEWTABLE                         R15 0 0
      100 CALL                             R14 1 1
      101 SETTABLEKS                       R14 R13 K23 ["graphItems"]
      103 GETTABLEKS                       R14 R8 K30 ["createUnimplemented"]
      105 LOADK                            R15 K24 ["selectGraphByIdAsync"]
      106 CALL                             R14 1 1
      107 SETTABLEKS                       R14 R13 K24 ["selectGraphByIdAsync"]
      109 GETTABLEKS                       R14 R8 K30 ["createUnimplemented"]
      111 LOADK                            R15 K25 ["renameGraphByIdAsync"]
      112 CALL                             R14 1 1
      113 SETTABLEKS                       R14 R13 K25 ["renameGraphByIdAsync"]
      115 GETTABLEKS                       R14 R7 K31 ["createContext"]
      117 MOVE                             R15 R13
      118 CALL                             R14 1 1
      119 DUPTABLE                         R15 K34 [{["GRAPH_ITEMS"] = "GraphDropdownContext_GraphItems"}]
      120 DUPTABLE                         R16 K39 [{["SELECT_GRAPH_BY_ID_ASYNC"] = "GraphDropdownContext_SelectGraphByIdAsync", ["RENAME_GRAPH_BY_ID_ASYNC"] = "GraphDropdownContext_RenameGraphByIdAsync"}]
      121 DUPCLOSURE                       R17 K40 [PROTO_5]
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R14
      133 DUPCLOSURE                       R18 K41 [PROTO_7]
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R14
      137 DUPTABLE                         R19 K45 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      138 SETTABLEKS                       R14 R19 K42 ["Context"]
      140 SETTABLEKS                       R17 R19 K43 ["EditableDataModelProvider"]
      142 SETTABLEKS                       R18 R19 K44 ["UIDataModelProvider"]
      144 RETURN                           R19 1
