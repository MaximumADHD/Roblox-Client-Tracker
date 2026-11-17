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
       15 GETUPVAL                         R4 1
       16 CALL                             R4 0 1
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETUPVAL                         R3 2
       19 LOADK                            R5 K5 ["GraphDropdownContext"]
       20 LOADK                            R6 K6 ["renameGraphByIdAsync"]
       21 NAMECALL                         R3 R3 K7 ["TryBeginRecording"]
       23 CALL                             R3 3 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R1 R2 K8 ["Name"]
       28 GETUPVAL                         R4 1
       29 CALL                             R4 0 1
       30 JUMPIFNOT                        R4 ; [+5]
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K9 ["markDirty"]
       34 MOVE                             R5 R2
       35 CALL                             R4 1 0
       36 JUMPIFNOT                        R3 ; [+7]
       37 GETUPVAL                         R4 2
       38 MOVE                             R6 R3
       39 GETIMPORT                        R7 K13 [Enum.FinishRecordingOperation.Commit]
       41 NAMECALL                         R4 R4 K14 ["FinishRecording"]
       43 CALL                             R4 3 0
       44 RETURN                           R0 0

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
       97 CAPTURE                          UPVAL U9
       98 CAPTURE                          UPVAL U10
       99 CAPTURE                          UPVAL U11
      100 NEWTABLE                         R10 0 1
      102 GETTABLEKS                       R11 R3 K4 ["instanceRegistry"]
      104 SETLIST                          R10 R11 1 [1]
      106 CALL                             R8 2 1
      107 GETUPVAL                         R9 12
      108 GETTABLEKS                       R9 R9 K11 ["useBoundAction"]
      110 LOADK                            R10 K12 ["GraphDropdownContext_SelectGraphByIdAsync"]
      111 MOVE                             R11 R7
      112 CALL                             R9 2 0
      113 GETUPVAL                         R9 12
      114 GETTABLEKS                       R9 R9 K11 ["useBoundAction"]
      116 LOADK                            R10 K13 ["GraphDropdownContext_RenameGraphByIdAsync"]
      117 MOVE                             R11 R8
      118 CALL                             R9 2 0
      119 GETUPVAL                         R9 12
      120 GETTABLEKS                       R9 R9 K14 ["useReplicatedState"]
      122 LOADK                            R10 K15 ["GraphDropdownContext_GraphItems"]
      123 MOVE                             R11 R6
      124 CALL                             R9 2 0
      125 GETUPVAL                         R9 1
      126 GETTABLEKS                       R9 R9 K3 ["useMemo"]
      128 NEWCLOSURE                       R10 P3
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R8
      132 NEWTABLE                         R11 0 3
      134 MOVE                             R12 R6
      135 MOVE                             R13 R7
      136 MOVE                             R14 R8
      137 SETLIST                          R11 R12 3 [1]
      139 CALL                             R9 2 1
      140 GETUPVAL                         R10 1
      141 GETTABLEKS                       R10 R10 K16 ["createElement"]
      143 GETUPVAL                         R11 13
      144 GETTABLEKS                       R11 R11 K17 ["Provider"]
      146 DUPTABLE                         R12 K19 [{"value"}]
      147 SETTABLEKS                       R9 R12 K18 ["value"]
      149 GETTABLEKS                       R13 R0 K20 ["children"]
      151 CALL                             R10 3 -1
      152 RETURN                           R10 -1

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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R3 K11 ["GraphDirtyStateContext"]
       19 GETTABLEKS                       R3 R3 K12 ["GraphDirtyUtils"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Contexts"]
       26 GETTABLEKS                       R4 R4 K13 ["GraphDropdownContextUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K10 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K14 ["GraphTimestampContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETIMPORT                        R6 K5 [script]
       40 GETTABLEKS                       R6 R6 K15 ["Parent"]
       42 GETTABLEKS                       R6 R6 K16 ["InstanceRegistryContext"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K17 ["Util"]
       49 GETTABLEKS                       R7 R7 K18 ["Networking"]
       51 GETTABLEKS                       R7 R7 K19 ["NetworkUtils"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K10 ["Contexts"]
       58 GETTABLEKS                       R8 R8 K20 ["OpenableAssetTypeContext"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R1 K10 ["Contexts"]
       65 GETTABLEKS                       R9 R9 K20 ["OpenableAssetTypeContext"]
       67 GETTABLEKS                       R9 R9 K21 ["OpenableAssetTypeUtils"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R1 K15 ["Parent"]
       74 GETTABLEKS                       R10 R10 K22 ["React"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K9 [require]
       79 GETTABLEKS                       R11 R1 K15 ["Parent"]
       81 GETTABLEKS                       R11 R11 K23 ["ReactUtils"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R1 K10 ["Contexts"]
       88 GETTABLEKS                       R12 R12 K24 ["SelectedGraphContext"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K9 [require]
       93 GETTABLEKS                       R13 R1 K15 ["Parent"]
       95 GETTABLEKS                       R13 R13 K25 ["SignalsReact"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K9 [require]
      100 GETTABLEKS                       R14 R1 K26 ["Types"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K9 [require]
      105 GETTABLEKS                       R15 R1 K27 ["Flags"]
      107 GETTABLEKS                       R15 R15 K28 ["getFFlagAnimGraphUI_FixUndoHistory"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K9 [require]
      112 GETTABLEKS                       R16 R1 K27 ["Flags"]
      114 GETTABLEKS                       R16 R16 K29 ["getFFlagAnimationEditorAnimationTypes"]
      116 CALL                             R15 1 1
      117 DUPTABLE                         R16 K33 [{"graphItems", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
      118 GETIMPORT                        R17 K36 [table.freeze]
      120 NEWTABLE                         R18 0 0
      122 CALL                             R17 1 1
      123 SETTABLEKS                       R17 R16 K30 ["graphItems"]
      125 GETTABLEKS                       R17 R10 K37 ["createUnimplemented"]
      127 LOADK                            R18 K31 ["selectGraphByIdAsync"]
      128 CALL                             R17 1 1
      129 SETTABLEKS                       R17 R16 K31 ["selectGraphByIdAsync"]
      131 GETTABLEKS                       R17 R10 K37 ["createUnimplemented"]
      133 LOADK                            R18 K32 ["renameGraphByIdAsync"]
      134 CALL                             R17 1 1
      135 SETTABLEKS                       R17 R16 K32 ["renameGraphByIdAsync"]
      137 GETTABLEKS                       R17 R9 K38 ["createContext"]
      139 MOVE                             R18 R16
      140 CALL                             R17 1 1
      141 DUPTABLE                         R18 K41 [{["GRAPH_ITEMS"] = "GraphDropdownContext_GraphItems"}]
      142 DUPTABLE                         R19 K46 [{["SELECT_GRAPH_BY_ID_ASYNC"] = "GraphDropdownContext_SelectGraphByIdAsync", ["RENAME_GRAPH_BY_ID_ASYNC"] = "GraphDropdownContext_RenameGraphByIdAsync"}]
      143 DUPCLOSURE                       R20 K47 [PROTO_5]
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R4
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R17
      158 DUPCLOSURE                       R21 K48 [PROTO_7]
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R17
      162 DUPTABLE                         R22 K52 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      163 SETTABLEKS                       R17 R22 K49 ["Context"]
      165 SETTABLEKS                       R20 R22 K50 ["EditableDataModelProvider"]
      167 SETTABLEKS                       R21 R22 K51 ["UIDataModelProvider"]
      169 RETURN                           R22 1
