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
        0 LOADK                            R6 K0 ["GraphName"]
        1 NAMECALL                         R4 R0 K1 ["FindFirstChild"]
        3 CALL                             R4 2 1
        4 JUMPIFNOT                        R4 ; [+8]
        5 LOADK                            R7 K2 ["StringValue"]
        6 NAMECALL                         R5 R4 K3 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+3]
       10 SETTABLEKS                       R1 R4 K4 ["Value"]
       12 JUMP                             ; [+11]
       13 GETIMPORT                        R5 K7 [Instance.new]
       15 LOADK                            R6 K2 ["StringValue"]
       16 CALL                             R5 1 1
       17 LOADK                            R6 K0 ["GraphName"]
       18 SETTABLEKS                       R6 R5 K8 ["Name"]
       20 SETTABLEKS                       R1 R5 K4 ["Value"]
       22 SETTABLEKS                       R0 R5 K9 ["Parent"]
       24 LOADK                            R6 K10 ["CharacterName"]
       25 NAMECALL                         R4 R0 K1 ["FindFirstChild"]
       27 CALL                             R4 2 1
       28 JUMPIFNOT                        R4 ; [+8]
       29 LOADK                            R7 K2 ["StringValue"]
       30 NAMECALL                         R5 R4 K3 ["IsA"]
       32 CALL                             R5 2 1
       33 JUMPIFNOT                        R5 ; [+3]
       34 SETTABLEKS                       R2 R4 K4 ["Value"]
       36 JUMP                             ; [+11]
       37 GETIMPORT                        R5 K7 [Instance.new]
       39 LOADK                            R6 K2 ["StringValue"]
       40 CALL                             R5 1 1
       41 LOADK                            R6 K10 ["CharacterName"]
       42 SETTABLEKS                       R6 R5 K8 ["Name"]
       44 SETTABLEKS                       R2 R5 K4 ["Value"]
       46 SETTABLEKS                       R0 R5 K9 ["Parent"]
       48 JUMPIFNOT                        R3 ; [+5]
       49 LOADK                            R6 K11 ["RBX_SourceAssetId"]
       50 NAMECALL                         R4 R3 K12 ["GetAttribute"]
       52 CALL                             R4 2 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R4
       55 JUMPIFNOT                        R4 ; [+6]
       56 FASTCALL1                        TOSTRING R4 ; [+3]
       57 MOVE                             R6 R4
       58 GETIMPORT                        R5 K14 [tostring]
       60 CALL                             R5 1 1
       61 JUMP                             ; [+1]
       62 LOADK                            R5 K15 [""]
       63 LOADK                            R8 K16 ["SourceAssetId"]
       64 NAMECALL                         R6 R0 K1 ["FindFirstChild"]
       66 CALL                             R6 2 1
       67 JUMPIFNOT                        R6 ; [+8]
       68 LOADK                            R9 K2 ["StringValue"]
       69 NAMECALL                         R7 R6 K3 ["IsA"]
       71 CALL                             R7 2 1
       72 JUMPIFNOT                        R7 ; [+3]
       73 SETTABLEKS                       R5 R6 K4 ["Value"]
       75 RETURN                           R0 0
       76 GETIMPORT                        R7 K7 [Instance.new]
       78 LOADK                            R8 K2 ["StringValue"]
       79 CALL                             R7 1 1
       80 LOADK                            R8 K16 ["SourceAssetId"]
       81 SETTABLEKS                       R8 R7 K8 ["Name"]
       83 SETTABLEKS                       R5 R7 K4 ["Value"]
       85 SETTABLEKS                       R0 R7 K9 ["Parent"]
       87 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetChildren"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 LOADK                            R9 K1 ["Folder"]
        7 NAMECALL                         R7 R6 K2 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+47]
       11 LOADK                            R9 K3 ["AnimGraph_BindingName"]
       12 NAMECALL                         R7 R6 K4 ["GetAttribute"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+42]
       16 GETIMPORT                        R8 K7 [string.match]
       18 GETTABLEKS                       R9 R6 K8 ["Name"]
       20 LOADK                            R10 K9 ["^Parameter_.+$"]
       21 CALL                             R8 2 1
       22 JUMPIFNOT                        R8 ; [+35]
       23 LOADK                            R11 K11 ["AnimGraph_ParameterType"]
       24 NAMECALL                         R9 R6 K4 ["GetAttribute"]
       26 CALL                             R9 2 1
       27 ORK                              R8 R9 K10 ["Number"]
       28 MOVE                             R11 R7
       29 NAMECALL                         R9 R0 K4 ["GetAttribute"]
       31 CALL                             R9 2 1
       32 JUMPIFNOTEQKNIL                  R9 ; [+12]
       34 JUMPIFNOTEQKS                    R8 K12 ["Boolean"] ; [+3]
       36 LOADB                            R9 0
       37 JUMP                             ; [+7]
       38 JUMPIFEQKS                       R8 K13 ["String"] ; [+3]
       40 JUMPIFNOTEQKS                    R8 K14 ["Enum"] ; [+3]
       42 LOADK                            R9 K15 [""]
       43 JUMP                             ; [+1]
       44 LOADN                            R9 0
       45 DUPTABLE                         R12 K19 [{"name", "type", "defaultValue"}]
       46 SETTABLEKS                       R7 R12 K16 ["name"]
       48 SETTABLEKS                       R8 R12 K17 ["type"]
       50 SETTABLEKS                       R9 R12 K18 ["defaultValue"]
       52 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       54 MOVE                             R11 R1
       55 GETIMPORT                        R10 K22 [table.insert]
       57 CALL                             R10 2 0
       58 FORGLOOP                         R2 2 ; [-53]
       60 GETIMPORT                        R2 K24 [table.sort]
       62 MOVE                             R3 R1
       63 DUPCLOSURE                       R4 K25 [PROTO_2]
       64 CALL                             R2 2 0
       65 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["BaseScript"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+5]
        9 GETTABLEKS                       R6 R5 K3 ["Name"]
       11 JUMPIFNOTEQKS                    R6 K4 ["Animate"] ; [+2]
       13 RETURN                           R5 1
       14 FORGLOOP                         R1 2 ; [-11]
       16 LOADNIL                          R1
       17 RETURN                           R1 1

PROTO_5:
        0 NAMECALL                         R2 R1 K0 ["Get"]
        2 CALL                             R2 1 1
        3 LOADNIL                          R3
        4 JUMPIFNOT                        R2 ; [+53]
        5 LENGTH                           R4 R2
        6 LOADN                            R5 0
        7 JUMPIFNOTLT                      R5 R4 ; [+50]
        9 GETTABLEN                        R4 R2 1
       10 LOADK                            R7 K1 ["Humanoid"]
       11 NAMECALL                         R5 R4 K2 ["IsA"]
       13 CALL                             R5 2 1
       14 JUMPIF                           R5 ; [+5]
       15 LOADK                            R7 K3 ["AnimationController"]
       16 NAMECALL                         R5 R4 K2 ["IsA"]
       18 CALL                             R5 2 1
       19 JUMPIFNOT                        R5 ; [+3]
       20 GETTABLEKS                       R3 R4 K4 ["Parent"]
       22 JUMP                             ; [+35]
       23 LOADK                            R7 K1 ["Humanoid"]
       24 NAMECALL                         R5 R4 K5 ["FindFirstChildWhichIsA"]
       26 CALL                             R5 2 1
       27 JUMPIF                           R5 ; [+5]
       28 LOADK                            R7 K3 ["AnimationController"]
       29 NAMECALL                         R5 R4 K5 ["FindFirstChildWhichIsA"]
       31 CALL                             R5 2 1
       32 JUMPIFNOT                        R5 ; [+2]
       33 MOVE                             R3 R4
       34 JUMP                             ; [+23]
       35 LOADK                            R7 K6 ["Model"]
       36 NAMECALL                         R5 R4 K7 ["FindFirstAncestorWhichIsA"]
       38 CALL                             R5 2 1
       39 JUMPIFNOT                        R5 ; [+18]
       40 LOADK                            R8 K1 ["Humanoid"]
       41 NAMECALL                         R6 R5 K5 ["FindFirstChildWhichIsA"]
       43 CALL                             R6 2 1
       44 JUMPIF                           R6 ; [+5]
       45 LOADK                            R8 K3 ["AnimationController"]
       46 NAMECALL                         R6 R5 K5 ["FindFirstChildWhichIsA"]
       48 CALL                             R6 2 1
       49 JUMPIFNOT                        R6 ; [+2]
       50 MOVE                             R3 R5
       51 JUMP                             ; [+6]
       52 LOADK                            R8 K6 ["Model"]
       53 NAMECALL                         R6 R5 K7 ["FindFirstAncestorWhichIsA"]
       55 CALL                             R6 2 1
       56 MOVE                             R5 R6
       57 JUMPBACK                         ; [-19]
       58 LOADK                            R6 K8 ["ObjectValue"]
       59 NAMECALL                         R4 R0 K7 ["FindFirstAncestorWhichIsA"]
       61 CALL                             R4 2 1
       62 JUMPIF                           R3 ; [+6]
       63 JUMPIFNOT                        R4 ; [+5]
       64 GETTABLEKS                       R5 R4 K9 ["Value"]
       66 JUMPIFNOT                        R5 ; [+2]
       67 GETTABLEKS                       R3 R4 K9 ["Value"]
       69 RETURN                           R3 2

PROTO_6:
        0 LOADK                            R5 K0 ["DialogManager"]
        1 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
        3 CALL                             R3 2 1
        4 DUPTABLE                         R6 K4 [{"PluginId", "ItemId"}]
        5 LOADK                            R7 K5 ["AnimationEditor"]
        6 SETTABLEKS                       R7 R6 K2 ["PluginId"]
        8 LOADK                            R7 K6 ["ConfirmOverwrite"]
        9 SETTABLEKS                       R7 R6 K3 ["ItemId"]
       11 DUPTABLE                         R7 K12 [{"Type", "Title", "Description", "PrimaryButton", "SecondaryButton"}]
       12 LOADK                            R8 K13 ["Warning"]
       13 SETTABLEKS                       R8 R7 K7 ["Type"]
       15 LOADK                            R10 K14 ["Common"]
       16 LOADK                            R11 K5 ["AnimationEditor"]
       17 LOADK                            R12 K15 ["CreateScript"]
       18 LOADK                            R13 K16 ["ScriptAlreadyExistsTitle"]
       19 NAMECALL                         R8 R2 K17 ["getExternalText"]
       21 CALL                             R8 5 1
       22 SETTABLEKS                       R8 R7 K8 ["Title"]
       24 LOADK                            R10 K14 ["Common"]
       25 LOADK                            R11 K5 ["AnimationEditor"]
       26 LOADK                            R12 K15 ["CreateScript"]
       27 LOADK                            R13 K18 ["ScriptAlreadyExistsDescription"]
       28 DUPTABLE                         R14 K20 [{"targetName"}]
       29 SETTABLEKS                       R1 R14 K19 ["targetName"]
       31 NAMECALL                         R8 R2 K17 ["getExternalText"]
       33 CALL                             R8 6 1
       34 SETTABLEKS                       R8 R7 K9 ["Description"]
       36 DUPTABLE                         R8 K23 [{"Uri", "Text"}]
       37 DUPTABLE                         R9 K4 [{"PluginId", "ItemId"}]
       38 LOADK                            R10 K5 ["AnimationEditor"]
       39 SETTABLEKS                       R10 R9 K2 ["PluginId"]
       41 LOADK                            R10 K24 ["ConfirmOverwrite/Overwrite"]
       42 SETTABLEKS                       R10 R9 K3 ["ItemId"]
       44 SETTABLEKS                       R9 R8 K21 ["Uri"]
       46 LOADK                            R11 K14 ["Common"]
       47 LOADK                            R12 K5 ["AnimationEditor"]
       48 LOADK                            R13 K15 ["CreateScript"]
       49 LOADK                            R14 K25 ["Overwrite"]
       50 NAMECALL                         R9 R2 K17 ["getExternalText"]
       52 CALL                             R9 5 1
       53 SETTABLEKS                       R9 R8 K22 ["Text"]
       55 SETTABLEKS                       R8 R7 K10 ["PrimaryButton"]
       57 DUPTABLE                         R8 K23 [{"Uri", "Text"}]
       58 DUPTABLE                         R9 K4 [{"PluginId", "ItemId"}]
       59 LOADK                            R10 K5 ["AnimationEditor"]
       60 SETTABLEKS                       R10 R9 K2 ["PluginId"]
       62 LOADK                            R10 K26 ["ConfirmOverwrite/Cancel"]
       63 SETTABLEKS                       R10 R9 K3 ["ItemId"]
       65 SETTABLEKS                       R9 R8 K21 ["Uri"]
       67 LOADK                            R11 K14 ["Common"]
       68 LOADK                            R12 K5 ["AnimationEditor"]
       69 LOADK                            R13 K15 ["CreateScript"]
       70 LOADK                            R14 K27 ["Cancel"]
       71 NAMECALL                         R9 R2 K17 ["getExternalText"]
       73 CALL                             R9 5 1
       74 SETTABLEKS                       R9 R8 K22 ["Text"]
       76 SETTABLEKS                       R8 R7 K11 ["SecondaryButton"]
       78 NAMECALL                         R4 R3 K28 ["ShowDialogAsync"]
       80 CALL                             R4 3 1
       81 GETTABLEKS                       R6 R4 K29 ["SelectedButtonUri"]
       83 GETTABLEKS                       R6 R6 K3 ["ItemId"]
       85 JUMPIFEQKS                       R6 K24 ["ConfirmOverwrite/Overwrite"] ; [+2]
       87 LOADB                            R5 0 +1
       88 LOADB                            R5 1
       89 RETURN                           R5 1

PROTO_7:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R2
        2 RETURN                           R2 1
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 2
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R4
        9 RETURN                           R4 1
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R2
       12 CALL                             R4 1 1
       13 DUPTABLE                         R5 K2 [{"exists", "targetName"}]
       14 JUMPIFNOTEQKNIL                  R4 ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 SETTABLEKS                       R6 R5 K0 ["exists"]
       20 GETTABLEKS                       R6 R2 K3 ["Name"]
       22 SETTABLEKS                       R6 R5 K1 ["targetName"]
       24 RETURN                           R5 1

PROTO_8:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 LOADK                            R3 K0 ["StarterCharacterScripts"]
        5 NAMECALL                         R1 R1 K1 ["FindFirstChildWhichIsA"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 DUPTABLE                         R3 K4 [{"exists", "targetName"}]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K2 ["exists"]
       21 LOADK                            R4 K0 ["StarterCharacterScripts"]
       22 SETTABLEKS                       R4 R3 K3 ["targetName"]
       24 RETURN                           R3 1

PROTO_9:
        0 JUMPIFNOT                        R4 ; [+4]
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R4
        3 CALL                             R5 1 1
        4 JUMP                             ; [+2]
        5 NEWTABLE                         R5 0 0
        7 NAMECALL                         R6 R0 K0 ["GetChildren"]
        9 CALL                             R6 1 3
       10 FORGPREP                         R6
       11 LOADK                            R13 K1 ["BaseScript"]
       12 NAMECALL                         R11 R10 K2 ["IsA"]
       14 CALL                             R11 2 1
       15 JUMPIFNOT                        R11 ; [+8]
       16 GETTABLEKS                       R11 R10 K3 ["Name"]
       18 JUMPIFNOTEQKS                    R11 K4 ["Animate"] ; [+5]
       20 NAMECALL                         R11 R10 K5 ["Destroy"]
       22 CALL                             R11 1 0
       23 JUMP                             ; [+2]
       24 FORGLOOP                         R6 2 ; [-14]
       26 LOADNIL                          R6
       27 JUMPIFNOTEQKS                    R1 K6 ["StarterPlayer"] ; [+7]
       29 GETIMPORT                        R7 K9 [Instance.new]
       31 LOADK                            R8 K10 ["LocalScript"]
       32 CALL                             R7 1 1
       33 MOVE                             R6 R7
       34 JUMP                             ; [+11]
       35 JUMPIFNOTEQKS                    R1 K11 ["Rig"] ; [+10]
       37 GETIMPORT                        R7 K9 [Instance.new]
       39 LOADK                            R8 K12 ["Script"]
       40 CALL                             R7 1 1
       41 MOVE                             R6 R7
       42 GETIMPORT                        R7 K16 [Enum.RunContext.Client]
       44 SETTABLEKS                       R7 R6 K14 ["RunContext"]
       46 LOADK                            R7 K4 ["Animate"]
       47 SETTABLEKS                       R7 R6 K3 ["Name"]
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R7 R7 K17 ["template"]
       52 MOVE                             R8 R5
       53 CALL                             R7 1 1
       54 SETTABLEKS                       R7 R6 K18 ["Source"]
       56 LOADK                            R9 K19 ["AnimationEditor_AnimateScript"]
       57 NAMECALL                         R7 R6 K20 ["AddTag"]
       59 CALL                             R7 2 0
       60 SETTABLEKS                       R0 R6 K21 ["Parent"]
       62 GETUPVAL                         R7 2
       63 MOVE                             R8 R6
       64 MOVE                             R9 R2
       65 MOVE                             R10 R3
       66 MOVE                             R11 R4
       67 CALL                             R7 4 0
       68 RETURN                           R6 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["[CreateScriptContext] No graph selected"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["selectionService"]
       12 CALL                             R0 2 2
       13 JUMPIF                           R0 ; [+5]
       14 GETIMPORT                        R2 K1 [warn]
       16 LOADK                            R3 K4 ["[CreateScriptContext] No character found in selection or graph"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 3
       20 LOADK                            R4 K5 ["NativeGraphContext"]
       21 LOADK                            R5 K6 ["createScriptForSelectedGraphAsync"]
       22 NAMECALL                         R2 R2 K7 ["TryBeginRecording"]
       24 CALL                             R2 3 1
       25 JUMPIFNOT                        R1 ; [+3]
       26 GETTABLEKS                       R3 R1 K8 ["Name"]
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R3 R0 K8 ["Name"]
       31 GETUPVAL                         R4 4
       32 MOVE                             R5 R0
       33 LOADK                            R6 K9 ["Rig"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K8 ["Name"]
       37 MOVE                             R8 R3
       38 GETUPVAL                         R9 0
       39 CALL                             R4 5 1
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R5 R5 K3 ["selectionService"]
       43 NEWTABLE                         R7 0 1
       45 MOVE                             R8 R4
       46 SETLIST                          R7 R8 1 [1]
       48 NAMECALL                         R5 R5 K10 ["Set"]
       50 CALL                             R5 2 0
       51 JUMPIFNOT                        R2 ; [+7]
       52 GETUPVAL                         R5 3
       53 MOVE                             R7 R2
       54 GETIMPORT                        R8 K14 [Enum.FinishRecordingOperation.Commit]
       56 NAMECALL                         R5 R5 K15 ["FinishRecording"]
       58 CALL                             R5 3 0
       59 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["[CreateScriptContext] No graph selected"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 LOADK                            R2 K3 ["StarterCharacterScripts"]
        9 NAMECALL                         R0 R0 K4 ["FindFirstChildWhichIsA"]
       11 CALL                             R0 2 1
       12 JUMPIF                           R0 ; [+5]
       13 GETIMPORT                        R1 K1 [warn]
       15 LOADK                            R2 K5 ["[CreateScriptContext] starterCharacterScripts not found under StarterPlayer"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 0
       19 LOADK                            R3 K6 ["ObjectValue"]
       20 NAMECALL                         R1 R1 K7 ["FindFirstAncestorWhichIsA"]
       22 CALL                             R1 2 1
       23 JUMPIFNOT                        R1 ; [+3]
       24 GETTABLEKS                       R2 R1 K8 ["Name"]
       26 JUMP                             ; [+1]
       27 LOADK                            R2 K9 [""]
       28 GETUPVAL                         R3 2
       29 LOADK                            R5 K10 ["NativeGraphContext"]
       30 LOADK                            R6 K11 ["createScriptForStarterPlayerAsync"]
       31 NAMECALL                         R3 R3 K12 ["TryBeginRecording"]
       33 CALL                             R3 3 1
       34 GETUPVAL                         R4 3
       35 MOVE                             R5 R0
       36 LOADK                            R6 K13 ["StarterPlayer"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K8 ["Name"]
       40 MOVE                             R8 R2
       41 GETUPVAL                         R9 0
       42 CALL                             R4 5 1
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R5 R5 K14 ["selectionService"]
       46 NEWTABLE                         R7 0 1
       48 MOVE                             R8 R4
       49 SETLIST                          R7 R8 1 [1]
       51 NAMECALL                         R5 R5 K15 ["Set"]
       53 CALL                             R5 2 0
       54 JUMPIFNOT                        R3 ; [+7]
       55 GETUPVAL                         R5 2
       56 MOVE                             R7 R3
       57 GETIMPORT                        R8 K19 [Enum.FinishRecordingOperation.Commit]
       59 NAMECALL                         R5 R5 K20 ["FinishRecording"]
       61 CALL                             R5 3 0
       62 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["selectionService"]
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R1
        9 MOVE                             R5 R2
       10 CALL                             R3 2 2
       11 JUMPIF                           R3 ; [+2]
       12 LOADNIL                          R0
       13 RETURN                           R0 1
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R3
       16 CALL                             R5 1 1
       17 DUPTABLE                         R0 K3 [{"exists", "targetName"}]
       18 JUMPIFNOTEQKNIL                  R5 ; [+2]
       20 LOADB                            R6 0 +1
       21 LOADB                            R6 1
       22 SETTABLEKS                       R6 R0 K1 ["exists"]
       24 GETTABLEKS                       R6 R3 K4 ["Name"]
       26 SETTABLEKS                       R6 R0 K2 ["targetName"]
       28 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K0 ["StarterCharacterScripts"]
        6 NAMECALL                         R2 R2 K1 ["FindFirstChildWhichIsA"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+2]
       10 LOADNIL                          R0
       11 RETURN                           R0 1
       12 GETUPVAL                         R3 2
       13 MOVE                             R4 R2
       14 CALL                             R3 1 1
       15 DUPTABLE                         R0 K4 [{"exists", "targetName"}]
       16 JUMPIFNOTEQKNIL                  R3 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R0 K2 ["exists"]
       22 LOADK                            R4 K0 ["StarterCharacterScripts"]
       23 SETTABLEKS                       R4 R0 K3 ["targetName"]
       25 RETURN                           R0 1

PROTO_14:
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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K2 ["useSignalState"]
       17 GETTABLEKS                       R4 R1 K3 ["observeSelectedGraphInstance"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 NEWTABLE                         R6 0 2
       31 GETTABLEKS                       R7 R2 K5 ["selectionService"]
       33 MOVE                             R8 R3
       34 SETLIST                          R6 R7 2 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R7 0 2
       48 GETTABLEKS                       R8 R2 K5 ["selectionService"]
       50 MOVE                             R9 R3
       51 SETLIST                          R7 R8 2 [1]
       53 CALL                             R5 2 1
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       57 NEWCLOSURE                       R7 P2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U8
       62 NEWTABLE                         R8 0 2
       64 GETTABLEKS                       R9 R2 K5 ["selectionService"]
       66 MOVE                             R10 R3
       67 SETLIST                          R8 R9 2 [1]
       69 CALL                             R6 2 1
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       73 NEWCLOSURE                       R8 P3
       74 CAPTURE                          VAL R3
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          UPVAL U8
       77 NEWTABLE                         R9 0 1
       79 MOVE                             R10 R3
       80 SETLIST                          R9 R10 1 [1]
       82 CALL                             R7 2 1
       83 DUPTABLE                         R8 K8 [{"createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
       84 SETTABLEKS                       R4 R8 K6 ["createScriptForSelectedGraphAsync"]
       86 SETTABLEKS                       R5 R8 K7 ["createScriptForStarterPlayerAsync"]
       88 GETUPVAL                         R9 9
       89 GETTABLEKS                       R9 R9 K9 ["useBoundAction"]
       91 GETUPVAL                         R10 10
       92 GETTABLEKS                       R10 R10 K10 ["CHECK_SCRIPT_EXISTS_FOR_SELECTED_GRAPH"]
       94 MOVE                             R11 R6
       95 CALL                             R9 2 0
       96 GETUPVAL                         R9 9
       97 GETTABLEKS                       R9 R9 K9 ["useBoundAction"]
       99 GETUPVAL                         R10 10
      100 GETTABLEKS                       R10 R10 K11 ["CHECK_SCRIPT_EXISTS_FOR_STARTER_PLAYER"]
      102 MOVE                             R11 R7
      103 CALL                             R9 2 0
      104 GETUPVAL                         R9 9
      105 GETTABLEKS                       R9 R9 K9 ["useBoundAction"]
      107 GETUPVAL                         R10 10
      108 GETTABLEKS                       R10 R10 K12 ["CREATE_SCRIPT_FOR_SELECTED_GRAPH"]
      110 MOVE                             R11 R4
      111 CALL                             R9 2 0
      112 GETUPVAL                         R9 9
      113 GETTABLEKS                       R9 R9 K9 ["useBoundAction"]
      115 GETUPVAL                         R10 10
      116 GETTABLEKS                       R10 R10 K13 ["CREATE_SCRIPT_FOR_STARTER_PLAYER"]
      118 MOVE                             R11 R5
      119 CALL                             R9 2 0
      120 GETUPVAL                         R9 0
      121 GETTABLEKS                       R9 R9 K14 ["createElement"]
      123 GETUPVAL                         R10 11
      124 GETTABLEKS                       R10 R10 K15 ["Provider"]
      126 DUPTABLE                         R11 K17 [{"value"}]
      127 SETTABLEKS                       R8 R11 K16 ["value"]
      129 GETTABLEKS                       R12 R0 K18 ["children"]
      131 CALL                             R9 3 -1
      132 RETURN                           R9 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["exists"]
        6 JUMPIFNOT                        R1 ; [+14]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["plugin"]
       10 JUMPIFNOT                        R1 ; [+10]
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["plugin"]
       15 GETTABLEKS                       R3 R0 K2 ["targetName"]
       17 GETUPVAL                         R4 3
       18 CALL                             R1 3 1
       19 JUMPIF                           R1 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 4
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["exists"]
        6 JUMPIFNOT                        R1 ; [+14]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["plugin"]
       10 JUMPIFNOT                        R1 ; [+10]
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["plugin"]
       15 GETTABLEKS                       R3 R0 K2 ["targetName"]
       17 GETUPVAL                         R4 3
       18 CALL                             R1 3 1
       19 JUMPIF                           R1 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 4
       22 CALL                             R1 0 0
       23 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useBoundAction"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["CHECK_SCRIPT_EXISTS_FOR_SELECTED_GRAPH"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useBoundAction"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K5 ["CHECK_SCRIPT_EXISTS_FOR_STARTER_PLAYER"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K3 ["useBoundAction"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K6 ["CREATE_SCRIPT_FOR_SELECTED_GRAPH"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K3 ["useBoundAction"]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K7 ["CREATE_SCRIPT_FOR_STARTER_PLAYER"]
       35 CALL                             R5 1 1
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K8 ["useCallback"]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 NEWTABLE                         R8 0 4
       47 MOVE                             R9 R2
       48 MOVE                             R10 R4
       49 GETTABLEKS                       R11 R0 K9 ["plugin"]
       51 MOVE                             R12 R1
       52 SETLIST                          R8 R9 4 [1]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       58 NEWCLOSURE                       R8 P1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R5
       64 NEWTABLE                         R9 0 4
       66 MOVE                             R10 R3
       67 MOVE                             R11 R5
       68 GETTABLEKS                       R12 R0 K9 ["plugin"]
       70 MOVE                             R13 R1
       71 SETLIST                          R9 R10 4 [1]
       73 CALL                             R7 2 1
       74 DUPTABLE                         R8 K12 [{"createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
       75 SETTABLEKS                       R6 R8 K10 ["createScriptForSelectedGraphAsync"]
       77 SETTABLEKS                       R7 R8 K11 ["createScriptForStarterPlayerAsync"]
       79 GETUPVAL                         R9 3
       80 GETTABLEKS                       R9 R9 K13 ["createElement"]
       82 GETUPVAL                         R10 5
       83 GETTABLEKS                       R10 R10 K14 ["Provider"]
       85 DUPTABLE                         R11 K16 [{"value"}]
       86 SETTABLEKS                       R8 R11 K15 ["value"]
       88 GETTABLEKS                       R12 R0 K17 ["children"]
       90 CALL                             R9 3 -1
       91 RETURN                           R9 -1

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
       21 GETTABLEKS                       R4 R0 K11 ["Resources"]
       23 GETTABLEKS                       R4 R4 K12 ["ScriptTemplates"]
       25 GETTABLEKS                       R4 R4 K13 ["AnimationGraphRunner"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R0 K14 ["Parent"]
       32 GETTABLEKS                       R5 R5 K15 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Parent"]
       39 GETTABLEKS                       R6 R6 K16 ["SignalsReact"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K17 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K18 ["NativeGraphContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K19 ["Util"]
       53 GETTABLEKS                       R8 R8 K20 ["Networking"]
       55 GETTABLEKS                       R8 R8 K21 ["NetworkUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R0 K14 ["Parent"]
       62 GETTABLEKS                       R9 R9 K22 ["React"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R0 K14 ["Parent"]
       69 GETTABLEKS                       R10 R10 K23 ["ReactUtils"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R11 R0 K17 ["Contexts"]
       76 GETTABLEKS                       R11 R11 K24 ["SelectionServiceContext"]
       78 CALL                             R10 1 1
       79 DUPTABLE                         R11 K27 [{"createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
       80 GETTABLEKS                       R12 R9 K28 ["createUnimplemented"]
       82 LOADK                            R13 K25 ["createScriptForSelectedGraphAsync"]
       83 CALL                             R12 1 1
       84 SETTABLEKS                       R12 R11 K25 ["createScriptForSelectedGraphAsync"]
       86 GETTABLEKS                       R12 R9 K28 ["createUnimplemented"]
       88 LOADK                            R13 K26 ["createScriptForStarterPlayerAsync"]
       89 CALL                             R12 1 1
       90 SETTABLEKS                       R12 R11 K26 ["createScriptForStarterPlayerAsync"]
       92 GETTABLEKS                       R12 R8 K29 ["createContext"]
       94 MOVE                             R13 R11
       95 CALL                             R12 1 1
       96 DUPTABLE                         R13 K34 [{"CREATE_SCRIPT_FOR_SELECTED_GRAPH", "CREATE_SCRIPT_FOR_STARTER_PLAYER", "CHECK_SCRIPT_EXISTS_FOR_SELECTED_GRAPH", "CHECK_SCRIPT_EXISTS_FOR_STARTER_PLAYER"}]
       97 LOADK                            R14 K35 ["CreateScriptContext_CreateScriptForSelectedGraphAsync"]
       98 SETTABLEKS                       R14 R13 K30 ["CREATE_SCRIPT_FOR_SELECTED_GRAPH"]
      100 LOADK                            R14 K36 ["CreateScriptContext_CreateScriptForStarterPlayerAsync"]
      101 SETTABLEKS                       R14 R13 K31 ["CREATE_SCRIPT_FOR_STARTER_PLAYER"]
      103 LOADK                            R14 K37 ["CreateScriptContext_CheckScriptExistsForSelectedGraph"]
      104 SETTABLEKS                       R14 R13 K32 ["CHECK_SCRIPT_EXISTS_FOR_SELECTED_GRAPH"]
      106 LOADK                            R14 K38 ["CreateScriptContext_CheckScriptExistsForStarterPlayer"]
      107 SETTABLEKS                       R14 R13 K33 ["CHECK_SCRIPT_EXISTS_FOR_STARTER_PLAYER"]
      109 DUPCLOSURE                       R14 K39 [PROTO_0]
      110 DUPCLOSURE                       R15 K40 [PROTO_1]
      111 DUPCLOSURE                       R16 K41 [PROTO_3]
      112 DUPCLOSURE                       R17 K42 [PROTO_4]
      113 DUPCLOSURE                       R18 K43 [PROTO_5]
      114 DUPCLOSURE                       R19 K44 [PROTO_6]
      115 DUPCLOSURE                       R20 K45 [PROTO_7]
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R17
      118 DUPCLOSURE                       R21 K46 [PROTO_8]
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R17
      121 DUPCLOSURE                       R22 K47 [PROTO_9]
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R15
      125 DUPCLOSURE                       R23 K48 [PROTO_14]
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R22
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R12
      138 DUPCLOSURE                       R24 K49 [PROTO_17]
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R12
      145 DUPTABLE                         R25 K60 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "_getOrCreateAnimateScript", "_extractGraphParameters", "_findExistingAnimateScript", "_resolveCharacterForGraph", "_checkScriptExistsForGraph", "_checkScriptExistsInStarterPlayer", "_showConfirmOverwrite"}]
      146 SETTABLEKS                       R12 R25 K50 ["Context"]
      148 SETTABLEKS                       R23 R25 K51 ["EditableDataModelProvider"]
      150 SETTABLEKS                       R24 R25 K52 ["UIDataModelProvider"]
      152 SETTABLEKS                       R22 R25 K53 ["_getOrCreateAnimateScript"]
      154 SETTABLEKS                       R16 R25 K54 ["_extractGraphParameters"]
      156 SETTABLEKS                       R17 R25 K55 ["_findExistingAnimateScript"]
      158 SETTABLEKS                       R18 R25 K56 ["_resolveCharacterForGraph"]
      160 SETTABLEKS                       R20 R25 K57 ["_checkScriptExistsForGraph"]
      162 SETTABLEKS                       R21 R25 K58 ["_checkScriptExistsInStarterPlayer"]
      164 SETTABLEKS                       R19 R25 K59 ["_showConfirmOverwrite"]
      166 RETURN                           R25 1
