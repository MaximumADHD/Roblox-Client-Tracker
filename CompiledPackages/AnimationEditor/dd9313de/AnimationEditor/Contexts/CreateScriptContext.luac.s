PROTO_0:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+8]
        5 LOADK                            R6 K1 ["StringValue"]
        6 NAMECALL                         R4 R3 K2 ["IsA"]
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R4 ; [+3]
       10 SETTABLEKS                       R2 R3 K3 ["Value"]
       12 RETURN                           R0 0
       13 GETIMPORT                        R4 K6 [Instance.new]
       15 LOADK                            R5 K1 ["StringValue"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R1 R4 K7 ["Name"]
       19 SETTABLEKS                       R2 R4 K3 ["Value"]
       21 SETTABLEKS                       R0 R4 K8 ["Parent"]
       23 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R5 K0 ["GraphName"]
        1 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+8]
        5 LOADK                            R6 K2 ["StringValue"]
        6 NAMECALL                         R4 R3 K3 ["IsA"]
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R4 ; [+3]
       10 SETTABLEKS                       R1 R3 K4 ["Value"]
       12 JUMP                             ; [+11]
       13 GETIMPORT                        R4 K7 [Instance.new]
       15 LOADK                            R5 K2 ["StringValue"]
       16 CALL                             R4 1 1
       17 LOADK                            R5 K0 ["GraphName"]
       18 SETTABLEKS                       R5 R4 K8 ["Name"]
       20 SETTABLEKS                       R1 R4 K4 ["Value"]
       22 SETTABLEKS                       R0 R4 K9 ["Parent"]
       24 LOADK                            R5 K10 ["CharacterName"]
       25 NAMECALL                         R3 R0 K1 ["FindFirstChild"]
       27 CALL                             R3 2 1
       28 JUMPIFNOT                        R3 ; [+8]
       29 LOADK                            R6 K2 ["StringValue"]
       30 NAMECALL                         R4 R3 K3 ["IsA"]
       32 CALL                             R4 2 1
       33 JUMPIFNOT                        R4 ; [+3]
       34 SETTABLEKS                       R2 R3 K4 ["Value"]
       36 RETURN                           R0 0
       37 GETIMPORT                        R4 K7 [Instance.new]
       39 LOADK                            R5 K2 ["StringValue"]
       40 CALL                             R4 1 1
       41 LOADK                            R5 K10 ["CharacterName"]
       42 SETTABLEKS                       R5 R4 K8 ["Name"]
       44 SETTABLEKS                       R2 R4 K4 ["Value"]
       46 SETTABLEKS                       R0 R4 K9 ["Parent"]
       48 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R4 R0 K0 ["GetChildren"]
        2 CALL                             R4 1 3
        3 FORGPREP                         R4
        4 LOADK                            R11 K1 ["AnimationEditor_AnimateScript"]
        5 NAMECALL                         R9 R8 K2 ["HasTag"]
        7 CALL                             R9 2 1
        8 JUMPIFNOT                        R9 ; [+49]
        9 LOADK                            R11 K3 ["GraphName"]
       10 NAMECALL                         R9 R8 K4 ["FindFirstChild"]
       12 CALL                             R9 2 1
       13 JUMPIFNOT                        R9 ; [+8]
       14 LOADK                            R12 K5 ["StringValue"]
       15 NAMECALL                         R10 R9 K6 ["IsA"]
       17 CALL                             R10 2 1
       18 JUMPIFNOT                        R10 ; [+3]
       19 SETTABLEKS                       R2 R9 K7 ["Value"]
       21 JUMP                             ; [+11]
       22 GETIMPORT                        R10 K10 [Instance.new]
       24 LOADK                            R11 K5 ["StringValue"]
       25 CALL                             R10 1 1
       26 LOADK                            R11 K3 ["GraphName"]
       27 SETTABLEKS                       R11 R10 K11 ["Name"]
       29 SETTABLEKS                       R2 R10 K7 ["Value"]
       31 SETTABLEKS                       R8 R10 K12 ["Parent"]
       33 LOADK                            R11 K13 ["CharacterName"]
       34 NAMECALL                         R9 R8 K4 ["FindFirstChild"]
       36 CALL                             R9 2 1
       37 JUMPIFNOT                        R9 ; [+8]
       38 LOADK                            R12 K5 ["StringValue"]
       39 NAMECALL                         R10 R9 K6 ["IsA"]
       41 CALL                             R10 2 1
       42 JUMPIFNOT                        R10 ; [+3]
       43 SETTABLEKS                       R3 R9 K7 ["Value"]
       45 RETURN                           R8 1
       46 GETIMPORT                        R10 K10 [Instance.new]
       48 LOADK                            R11 K5 ["StringValue"]
       49 CALL                             R10 1 1
       50 LOADK                            R11 K13 ["CharacterName"]
       51 SETTABLEKS                       R11 R10 K11 ["Name"]
       53 SETTABLEKS                       R3 R10 K7 ["Value"]
       55 SETTABLEKS                       R8 R10 K12 ["Parent"]
       57 RETURN                           R8 1
       58 FORGLOOP                         R4 2 ; [-55]
       60 LOADNIL                          R4
       61 JUMPIFNOTEQKS                    R1 K14 ["StarterPlayer"] ; [+7]
       63 GETIMPORT                        R5 K10 [Instance.new]
       65 LOADK                            R6 K15 ["LocalScript"]
       66 CALL                             R5 1 1
       67 MOVE                             R4 R5
       68 JUMP                             ; [+11]
       69 JUMPIFNOTEQKS                    R1 K16 ["Rig"] ; [+10]
       71 GETIMPORT                        R5 K10 [Instance.new]
       73 LOADK                            R6 K17 ["Script"]
       74 CALL                             R5 1 1
       75 MOVE                             R4 R5
       76 GETIMPORT                        R5 K21 [Enum.RunContext.Client]
       78 SETTABLEKS                       R5 R4 K19 ["RunContext"]
       80 LOADK                            R5 K22 ["Animate"]
       81 SETTABLEKS                       R5 R4 K11 ["Name"]
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R5 R6 K23 ["template"]
       86 CALL                             R5 0 1
       87 SETTABLEKS                       R5 R4 K24 ["Source"]
       89 LOADK                            R7 K1 ["AnimationEditor_AnimateScript"]
       90 NAMECALL                         R5 R4 K25 ["AddTag"]
       92 CALL                             R5 2 0
       93 SETTABLEKS                       R0 R4 K12 ["Parent"]
       95 MOVE                             R5 R4
       96 LOADK                            R8 K3 ["GraphName"]
       97 NAMECALL                         R6 R5 K4 ["FindFirstChild"]
       99 CALL                             R6 2 1
      100 JUMPIFNOT                        R6 ; [+8]
      101 LOADK                            R9 K5 ["StringValue"]
      102 NAMECALL                         R7 R6 K6 ["IsA"]
      104 CALL                             R7 2 1
      105 JUMPIFNOT                        R7 ; [+3]
      106 SETTABLEKS                       R2 R6 K7 ["Value"]
      108 JUMP                             ; [+11]
      109 GETIMPORT                        R7 K10 [Instance.new]
      111 LOADK                            R8 K5 ["StringValue"]
      112 CALL                             R7 1 1
      113 LOADK                            R8 K3 ["GraphName"]
      114 SETTABLEKS                       R8 R7 K11 ["Name"]
      116 SETTABLEKS                       R2 R7 K7 ["Value"]
      118 SETTABLEKS                       R5 R7 K12 ["Parent"]
      120 LOADK                            R8 K13 ["CharacterName"]
      121 NAMECALL                         R6 R5 K4 ["FindFirstChild"]
      123 CALL                             R6 2 1
      124 JUMPIFNOT                        R6 ; [+8]
      125 LOADK                            R9 K5 ["StringValue"]
      126 NAMECALL                         R7 R6 K6 ["IsA"]
      128 CALL                             R7 2 1
      129 JUMPIFNOT                        R7 ; [+3]
      130 SETTABLEKS                       R3 R6 K7 ["Value"]
      132 RETURN                           R4 1
      133 GETIMPORT                        R7 K10 [Instance.new]
      135 LOADK                            R8 K5 ["StringValue"]
      136 CALL                             R7 1 1
      137 LOADK                            R8 K13 ["CharacterName"]
      138 SETTABLEKS                       R8 R7 K11 ["Name"]
      140 SETTABLEKS                       R3 R7 K7 ["Value"]
      142 SETTABLEKS                       R5 R7 K12 ["Parent"]
      144 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIF                           R0 ; [+5]
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R2 K3 ["[CreateScriptContext] No graph selected"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K4 ["selectionService"]
       12 NAMECALL                         R1 R1 K5 ["Get"]
       14 CALL                             R1 1 1
       15 LOADNIL                          R2
       16 JUMPIFNOT                        R1 ; [+38]
       17 LENGTH                           R3 R1
       18 LOADN                            R4 0
       19 JUMPIFNOTLT                      R4 R3 ; [+35]
       21 GETTABLEN                        R3 R1 1
       22 LOADK                            R6 K6 ["Humanoid"]
       23 NAMECALL                         R4 R3 K7 ["IsA"]
       25 CALL                             R4 2 1
       26 JUMPIFNOT                        R4 ; [+3]
       27 GETTABLEKS                       R2 R3 K8 ["Parent"]
       29 JUMP                             ; [+25]
       30 LOADK                            R6 K6 ["Humanoid"]
       31 NAMECALL                         R4 R3 K9 ["FindFirstChildWhichIsA"]
       33 CALL                             R4 2 1
       34 JUMPIFNOT                        R4 ; [+2]
       35 MOVE                             R2 R3
       36 JUMP                             ; [+18]
       37 LOADK                            R6 K10 ["Model"]
       38 NAMECALL                         R4 R3 K11 ["FindFirstAncestorWhichIsA"]
       40 CALL                             R4 2 1
       41 JUMPIFNOT                        R4 ; [+13]
       42 LOADK                            R7 K6 ["Humanoid"]
       43 NAMECALL                         R5 R4 K9 ["FindFirstChildWhichIsA"]
       45 CALL                             R5 2 1
       46 JUMPIFNOT                        R5 ; [+2]
       47 MOVE                             R2 R4
       48 JUMP                             ; [+6]
       49 LOADK                            R7 K10 ["Model"]
       50 NAMECALL                         R5 R4 K11 ["FindFirstAncestorWhichIsA"]
       52 CALL                             R5 2 1
       53 MOVE                             R4 R5
       54 JUMPBACK                         ; [-14]
       55 LOADK                            R5 K12 ["ObjectValue"]
       56 NAMECALL                         R3 R0 K11 ["FindFirstAncestorWhichIsA"]
       58 CALL                             R3 2 1
       59 JUMPIF                           R2 ; [+6]
       60 JUMPIFNOT                        R3 ; [+5]
       61 GETTABLEKS                       R4 R3 K13 ["Value"]
       63 JUMPIFNOT                        R4 ; [+2]
       64 GETTABLEKS                       R2 R3 K13 ["Value"]
       66 JUMPIF                           R2 ; [+5]
       67 GETIMPORT                        R4 K2 [warn]
       69 LOADK                            R5 K14 ["[CreateScriptContext] No character found in selection or graph"]
       70 CALL                             R4 1 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R4 2
       73 LOADK                            R6 K15 ["NativeGraphContext"]
       74 LOADK                            R7 K16 ["createScriptForSelectedGraphAsync"]
       75 NAMECALL                         R4 R4 K17 ["TryBeginRecording"]
       77 CALL                             R4 3 1
       78 JUMPIFNOT                        R3 ; [+3]
       79 GETTABLEKS                       R5 R3 K18 ["Name"]
       81 JUMP                             ; [+2]
       82 GETTABLEKS                       R5 R2 K18 ["Name"]
       84 GETUPVAL                         R6 3
       85 MOVE                             R7 R2
       86 LOADK                            R8 K19 ["Rig"]
       87 GETTABLEKS                       R9 R0 K18 ["Name"]
       89 MOVE                             R10 R5
       90 CALL                             R6 4 1
       91 GETUPVAL                         R8 1
       92 GETTABLEKS                       R7 R8 K4 ["selectionService"]
       94 NEWTABLE                         R9 0 1
       96 MOVE                             R10 R6
       97 SETLIST                          R9 R10 1 [1]
       99 NAMECALL                         R7 R7 K20 ["Set"]
      101 CALL                             R7 2 0
      102 JUMPIFNOT                        R4 ; [+7]
      103 GETUPVAL                         R7 2
      104 MOVE                             R9 R4
      105 GETIMPORT                        R10 K24 [Enum.FinishRecordingOperation.Commit]
      107 NAMECALL                         R7 R7 K25 ["FinishRecording"]
      109 CALL                             R7 3 0
      110 RETURN                           R0 0

PROTO_4:
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
       26 LOADK                            R5 K10 ["ObjectValue"]
       27 NAMECALL                         R3 R0 K11 ["FindFirstAncestorWhichIsA"]
       29 CALL                             R3 2 1
       30 JUMPIFNOT                        R3 ; [+3]
       31 GETTABLEKS                       R4 R3 K12 ["Name"]
       33 JUMP                             ; [+1]
       34 LOADK                            R4 K13 [""]
       35 GETUPVAL                         R5 3
       36 MOVE                             R6 R1
       37 LOADK                            R7 K14 ["StarterPlayer"]
       38 GETTABLEKS                       R8 R0 K12 ["Name"]
       40 MOVE                             R9 R4
       41 CALL                             R5 4 1
       42 GETUPVAL                         R7 4
       43 GETTABLEKS                       R6 R7 K15 ["selectionService"]
       45 NEWTABLE                         R8 0 1
       47 MOVE                             R9 R5
       48 SETLIST                          R8 R9 1 [1]
       50 NAMECALL                         R6 R6 K16 ["Set"]
       52 CALL                             R6 2 0
       53 JUMPIFNOT                        R2 ; [+7]
       54 GETUPVAL                         R6 2
       55 MOVE                             R8 R2
       56 GETIMPORT                        R9 K20 [Enum.FinishRecordingOperation.Commit]
       58 NAMECALL                         R6 R6 K21 ["FinishRecording"]
       60 CALL                             R6 3 0
       61 RETURN                           R0 0

PROTO_5:
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
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 NEWTABLE                         R5 0 2
       24 GETTABLEKS                       R6 R2 K3 ["selectionService"]
       26 GETTABLEKS                       R7 R1 K4 ["selectedGraphInstance"]
       28 SETLIST                          R5 R6 2 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R6 0 2
       42 GETTABLEKS                       R7 R2 K3 ["selectionService"]
       44 GETTABLEKS                       R8 R1 K4 ["selectedGraphInstance"]
       46 SETLIST                          R6 R7 2 [1]
       48 CALL                             R4 2 1
       49 DUPTABLE                         R5 K7 [{"createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
       50 SETTABLEKS                       R3 R5 K5 ["createScriptForSelectedGraphAsync"]
       52 SETTABLEKS                       R4 R5 K6 ["createScriptForStarterPlayerAsync"]
       54 GETUPVAL                         R7 6
       55 GETTABLEKS                       R6 R7 K8 ["useBoundAction"]
       57 GETUPVAL                         R8 7
       58 GETTABLEKS                       R7 R8 K9 ["CREATE_SCRIPT_FOR_SELECTED_GRAPH"]
       60 MOVE                             R8 R3
       61 CALL                             R6 2 0
       62 GETUPVAL                         R7 6
       63 GETTABLEKS                       R6 R7 K8 ["useBoundAction"]
       65 GETUPVAL                         R8 7
       66 GETTABLEKS                       R7 R8 K10 ["CREATE_SCRIPT_FOR_STARTER_PLAYER"]
       68 MOVE                             R8 R4
       69 CALL                             R6 2 0
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R6 R7 K11 ["createElement"]
       73 GETUPVAL                         R8 8
       74 GETTABLEKS                       R7 R8 K12 ["Provider"]
       76 DUPTABLE                         R8 K14 [{"value"}]
       77 SETTABLEKS                       R5 R8 K13 ["value"]
       79 GETTABLEKS                       R9 R0 K15 ["children"]
       81 CALL                             R6 3 -1
       82 RETURN                           R6 -1

PROTO_6:
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
       30 GETTABLEKS                       R6 R0 K14 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K15 ["NativeGraphContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R8 R0 K16 ["Util"]
       39 GETTABLEKS                       R7 R8 K17 ["Networking"]
       41 GETTABLEKS                       R6 R7 K18 ["NetworkUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R8 R0 K19 ["Parent"]
       48 GETTABLEKS                       R7 R8 K20 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R9 R0 K19 ["Parent"]
       55 GETTABLEKS                       R8 R9 K21 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R10 R0 K14 ["Contexts"]
       62 GETTABLEKS                       R9 R10 K22 ["SelectionServiceContext"]
       64 CALL                             R8 1 1
       65 DUPTABLE                         R9 K25 [{"createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
       66 GETTABLEKS                       R10 R7 K26 ["createUnimplemented"]
       68 LOADK                            R11 K23 ["createScriptForSelectedGraphAsync"]
       69 CALL                             R10 1 1
       70 SETTABLEKS                       R10 R9 K23 ["createScriptForSelectedGraphAsync"]
       72 GETTABLEKS                       R10 R7 K26 ["createUnimplemented"]
       74 LOADK                            R11 K24 ["createScriptForStarterPlayerAsync"]
       75 CALL                             R10 1 1
       76 SETTABLEKS                       R10 R9 K24 ["createScriptForStarterPlayerAsync"]
       78 GETTABLEKS                       R10 R6 K27 ["createContext"]
       80 MOVE                             R11 R9
       81 CALL                             R10 1 1
       82 DUPTABLE                         R11 K30 [{"CREATE_SCRIPT_FOR_SELECTED_GRAPH", "CREATE_SCRIPT_FOR_STARTER_PLAYER"}]
       83 LOADK                            R12 K31 ["CreateScriptContext_CreateScriptForSelectedGraphAsync"]
       84 SETTABLEKS                       R12 R11 K28 ["CREATE_SCRIPT_FOR_SELECTED_GRAPH"]
       86 LOADK                            R12 K32 ["CreateScriptContext_CreateScriptForStarterPlayerAsync"]
       87 SETTABLEKS                       R12 R11 K29 ["CREATE_SCRIPT_FOR_STARTER_PLAYER"]
       89 DUPCLOSURE                       R12 K33 [PROTO_0]
       90 DUPCLOSURE                       R13 K34 [PROTO_1]
       91 DUPCLOSURE                       R14 K35 [PROTO_2]
       92 CAPTURE                          VAL R3
       93 DUPCLOSURE                       R15 K36 [PROTO_5]
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R10
      103 DUPCLOSURE                       R16 K37 [PROTO_6]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R10
      108 DUPTABLE                         R17 K42 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "_getOrCreateAnimateScript"}]
      109 SETTABLEKS                       R10 R17 K38 ["Context"]
      111 SETTABLEKS                       R15 R17 K39 ["EditableDataModelProvider"]
      113 SETTABLEKS                       R16 R17 K40 ["UIDataModelProvider"]
      115 SETTABLEKS                       R14 R17 K41 ["_getOrCreateAnimateScript"]
      117 RETURN                           R17 1
