PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["AnimationEditor_AnimateScript"]
        5 NAMECALL                         R7 R6 K2 ["HasTag"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+1]
        9 RETURN                           R6 1
       10 FORGLOOP                         R2 2 ; [-7]
       12 LOADNIL                          R2
       13 JUMPIFNOTEQKS                    R1 K3 ["StarterPlayer"] ; [+7]
       15 GETIMPORT                        R3 K6 [Instance.new]
       17 LOADK                            R4 K7 ["LocalScript"]
       18 CALL                             R3 1 1
       19 MOVE                             R2 R3
       20 JUMP                             ; [+11]
       21 JUMPIFNOTEQKS                    R1 K8 ["Rig"] ; [+10]
       23 GETIMPORT                        R3 K6 [Instance.new]
       25 LOADK                            R4 K9 ["Script"]
       26 CALL                             R3 1 1
       27 MOVE                             R2 R3
       28 GETIMPORT                        R3 K13 [Enum.RunContext.Client]
       30 SETTABLEKS                       R3 R2 K11 ["RunContext"]
       32 LOADK                            R3 K14 ["Animate"]
       33 SETTABLEKS                       R3 R2 K15 ["Name"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K16 ["template"]
       38 CALL                             R3 0 1
       39 SETTABLEKS                       R3 R2 K17 ["Source"]
       41 LOADK                            R5 K1 ["AnimationEditor_AnimateScript"]
       42 NAMECALL                         R3 R2 K18 ["AddTag"]
       44 CALL                             R3 2 0
       45 SETTABLEKS                       R0 R2 K19 ["Parent"]
       47 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIF                           R0 ; [+5]
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R2 K3 ["[CreateScriptContext] No graph selected"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K4 ["findAnimatorParent"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 JUMPIF                           R1 ; [+5]
       15 GETIMPORT                        R2 K2 [warn]
       17 LOADK                            R3 K5 ["[CreateScriptContext] No rig found for selected graph"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R1 K6 ["Parent"]
       22 JUMPIF                           R2 ; [+5]
       23 GETIMPORT                        R3 K2 [warn]
       25 LOADK                            R4 K7 ["[CreateScriptContext] No character found for rig"]
       26 CALL                             R3 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R3 2
       29 LOADK                            R5 K8 ["NativeGraphContext"]
       30 LOADK                            R6 K9 ["createScriptForSelectedGraphAsync"]
       31 NAMECALL                         R3 R3 K10 ["TryBeginRecording"]
       33 CALL                             R3 3 1
       34 GETUPVAL                         R4 3
       35 MOVE                             R5 R2
       36 LOADK                            R6 K11 ["Rig"]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R5 R6 K12 ["selectionService"]
       41 NEWTABLE                         R7 0 1
       43 MOVE                             R8 R4
       44 SETLIST                          R7 R8 1 [1]
       46 NAMECALL                         R5 R5 K13 ["Set"]
       48 CALL                             R5 2 0
       49 JUMPIFNOT                        R3 ; [+7]
       50 GETUPVAL                         R5 2
       51 MOVE                             R7 R3
       52 GETIMPORT                        R8 K17 [Enum.FinishRecordingOperation.Commit]
       54 NAMECALL                         R5 R5 K18 ["FinishRecording"]
       56 CALL                             R5 3 0
       57 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIF                           R0 ; [+5]
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R2 K3 ["[CreateScriptContext] No graph selected"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 LOADK                            R3 K4 ["StarterCharacterScripts"]
       11 NAMECALL                         R1 R1 K5 ["FindFirstChildWhichIsA"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+5]
       15 GETIMPORT                        R2 K2 [warn]
       17 LOADK                            R3 K6 ["[CreateScriptContext] starterCharacterScripts not found under StarterPlayer"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 LOADK                            R4 K7 ["NativeGraphContext"]
       22 LOADK                            R5 K8 ["createScriptForStarterPlayerAsync"]
       23 NAMECALL                         R2 R2 K9 ["TryBeginRecording"]
       25 CALL                             R2 3 1
       26 GETUPVAL                         R3 3
       27 MOVE                             R4 R1
       28 LOADK                            R5 K10 ["StarterPlayer"]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R4 R5 K11 ["selectionService"]
       33 NEWTABLE                         R6 0 1
       35 MOVE                             R7 R3
       36 SETLIST                          R6 R7 1 [1]
       38 NAMECALL                         R4 R4 K12 ["Set"]
       40 CALL                             R4 2 0
       41 JUMPIFNOT                        R2 ; [+7]
       42 GETUPVAL                         R4 2
       43 MOVE                             R6 R2
       44 GETIMPORT                        R7 K16 [Enum.FinishRecordingOperation.Commit]
       46 NAMECALL                         R4 R4 K17 ["FinishRecording"]
       48 CALL                             R4 3 0
       49 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R5 0 2
       25 GETTABLEKS                       R6 R2 K3 ["selectionService"]
       27 GETTABLEKS                       R7 R1 K4 ["selectedGraphInstance"]
       29 SETLIST                          R5 R6 2 [1]
       31 CALL                             R3 2 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R6 0 2
       43 GETTABLEKS                       R7 R2 K3 ["selectionService"]
       45 GETTABLEKS                       R8 R1 K4 ["selectedGraphInstance"]
       47 SETLIST                          R6 R7 2 [1]
       49 CALL                             R4 2 1
       50 DUPTABLE                         R5 K7 [{"createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
       51 SETTABLEKS                       R3 R5 K5 ["createScriptForSelectedGraphAsync"]
       53 SETTABLEKS                       R4 R5 K6 ["createScriptForStarterPlayerAsync"]
       55 GETUPVAL                         R7 7
       56 GETTABLEKS                       R6 R7 K8 ["useBoundAction"]
       58 GETUPVAL                         R8 8
       59 GETTABLEKS                       R7 R8 K9 ["CREATE_SCRIPT_FOR_SELECTED_GRAPH"]
       61 MOVE                             R8 R3
       62 CALL                             R6 2 0
       63 GETUPVAL                         R7 7
       64 GETTABLEKS                       R6 R7 K8 ["useBoundAction"]
       66 GETUPVAL                         R8 8
       67 GETTABLEKS                       R7 R8 K10 ["CREATE_SCRIPT_FOR_STARTER_PLAYER"]
       69 MOVE                             R8 R4
       70 CALL                             R6 2 0
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R6 R7 K11 ["createElement"]
       74 GETUPVAL                         R8 9
       75 GETTABLEKS                       R7 R8 K12 ["Provider"]
       77 DUPTABLE                         R8 K14 [{"value"}]
       78 SETTABLEKS                       R5 R8 K13 ["value"]
       80 GETTABLEKS                       R9 R0 K15 ["children"]
       82 CALL                             R6 3 -1
       83 RETURN                           R6 -1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["useBoundAction"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K4 ["CREATE_SCRIPT_FOR_SELECTED_GRAPH"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K0 ["createScriptForSelectedGraphAsync"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["useBoundAction"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K5 ["CREATE_SCRIPT_FOR_STARTER_PLAYER"]
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K1 ["createScriptForStarterPlayerAsync"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K6 ["createElement"]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R3 R4 K7 ["Provider"]
       25 DUPTABLE                         R4 K9 [{"value"}]
       26 SETTABLEKS                       R1 R4 K8 ["value"]
       28 GETTABLEKS                       R5 R0 K10 ["children"]
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["StarterPlayer"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R6 R0 K11 ["Resources"]
       23 GETTABLEKS                       R5 R6 K12 ["ScriptTemplates"]
       25 GETTABLEKS                       R4 R5 K13 ["AnimationGraphRunner"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R7 R0 K14 ["Util"]
       32 GETTABLEKS                       R6 R7 K15 ["Rig"]
       34 GETTABLEKS                       R5 R6 K16 ["AnimationRigDataUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R7 R0 K17 ["Contexts"]
       41 GETTABLEKS                       R6 R7 K18 ["NativeGraphContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R9 R0 K14 ["Util"]
       48 GETTABLEKS                       R8 R9 K19 ["Networking"]
       50 GETTABLEKS                       R7 R8 K20 ["NetworkUtils"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K10 [require]
       55 GETTABLEKS                       R9 R0 K21 ["Parent"]
       57 GETTABLEKS                       R8 R9 K22 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K10 [require]
       62 GETTABLEKS                       R10 R0 K21 ["Parent"]
       64 GETTABLEKS                       R9 R10 K23 ["ReactUtils"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R11 R0 K17 ["Contexts"]
       71 GETTABLEKS                       R10 R11 K24 ["SelectionServiceContext"]
       73 CALL                             R9 1 1
       74 DUPTABLE                         R10 K27 [{"createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
       75 GETTABLEKS                       R11 R8 K28 ["createUnimplemented"]
       77 LOADK                            R12 K25 ["createScriptForSelectedGraphAsync"]
       78 CALL                             R11 1 1
       79 SETTABLEKS                       R11 R10 K25 ["createScriptForSelectedGraphAsync"]
       81 GETTABLEKS                       R11 R8 K28 ["createUnimplemented"]
       83 LOADK                            R12 K26 ["createScriptForStarterPlayerAsync"]
       84 CALL                             R11 1 1
       85 SETTABLEKS                       R11 R10 K26 ["createScriptForStarterPlayerAsync"]
       87 GETTABLEKS                       R11 R7 K29 ["createContext"]
       89 MOVE                             R12 R10
       90 CALL                             R11 1 1
       91 DUPTABLE                         R12 K32 [{"CREATE_SCRIPT_FOR_SELECTED_GRAPH", "CREATE_SCRIPT_FOR_STARTER_PLAYER"}]
       92 LOADK                            R13 K33 ["CreateScriptContext_CreateScriptForSelectedGraphAsync"]
       93 SETTABLEKS                       R13 R12 K30 ["CREATE_SCRIPT_FOR_SELECTED_GRAPH"]
       95 LOADK                            R13 K34 ["CreateScriptContext_CreateScriptForStarterPlayerAsync"]
       96 SETTABLEKS                       R13 R12 K31 ["CREATE_SCRIPT_FOR_STARTER_PLAYER"]
       98 DUPCLOSURE                       R13 K35 [PROTO_0]
       99 CAPTURE                          VAL R3
      100 DUPCLOSURE                       R14 K36 [PROTO_3]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R11
      111 DUPCLOSURE                       R15 K37 [PROTO_4]
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R11
      116 DUPTABLE                         R16 K42 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "_getOrCreateAnimateScript"}]
      117 SETTABLEKS                       R11 R16 K38 ["Context"]
      119 SETTABLEKS                       R14 R16 K39 ["EditableDataModelProvider"]
      121 SETTABLEKS                       R15 R16 K40 ["UIDataModelProvider"]
      123 SETTABLEKS                       R13 R16 K41 ["_getOrCreateAnimateScript"]
      125 RETURN                           R16 1
