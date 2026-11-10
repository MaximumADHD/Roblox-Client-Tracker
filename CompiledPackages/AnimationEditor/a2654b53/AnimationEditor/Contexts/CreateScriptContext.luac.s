PROTO_0:
        0 JUMPIFNOT                        R3 ; [+5]
        1 LOADK                            R6 K0 ["RBX_SourceAssetId"]
        2 NAMECALL                         R4 R3 K1 ["GetAttribute"]
        4 CALL                             R4 2 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R4
        7 JUMPIFNOT                        R4 ; [+6]
        8 FASTCALL1                        TOSTRING R4 ; [+3]
        9 MOVE                             R6 R4
       10 GETIMPORT                        R5 K3 [tostring]
       12 CALL                             R5 1 1
       13 JUMP                             ; [+1]
       14 LOADK                            R5 K4 [""]
       15 LOADK                            R8 K5 ["GraphName"]
       16 MOVE                             R9 R1
       17 NAMECALL                         R6 R0 K6 ["SetAttribute"]
       19 CALL                             R6 3 0
       20 LOADK                            R8 K7 ["CharacterName"]
       21 MOVE                             R9 R2
       22 NAMECALL                         R6 R0 K6 ["SetAttribute"]
       24 CALL                             R6 3 0
       25 LOADK                            R8 K8 ["SourceAssetId"]
       26 MOVE                             R9 R5
       27 NAMECALL                         R6 R0 K6 ["SetAttribute"]
       29 CALL                             R6 3 0
       30 LOADK                            R8 K9 ["IsServerAuthority"]
       31 GETIMPORT                        R10 K11 [workspace]
       33 GETTABLEKS                       R10 R10 K12 ["AuthorityMode"]
       35 GETIMPORT                        R11 K15 [Enum.AuthorityMode.Server]
       37 JUMPIFEQ                         R10 R11 ; [+2]
       39 LOADB                            R9 0 +1
       40 LOADB                            R9 1
       41 NAMECALL                         R6 R0 K6 ["SetAttribute"]
       43 CALL                             R6 3 0
       44 LOADK                            R8 K16 ["PreviewInStudio"]
       45 LOADB                            R9 1
       46 NAMECALL                         R6 R0 K6 ["SetAttribute"]
       48 CALL                             R6 3 0
       49 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K1 ["Name"]
        6 JUMPIFNOTEQKS                    R6 K2 ["Animate"] ; [+13]
        8 LOADK                            R8 K3 ["BaseScript"]
        9 NAMECALL                         R6 R5 K4 ["IsA"]
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+1]
       13 RETURN                           R5 1
       14 LOADK                            R8 K5 ["ModuleScript"]
       15 NAMECALL                         R6 R5 K4 ["IsA"]
       17 CALL                             R6 2 1
       18 JUMPIFNOT                        R6 ; [+1]
       19 RETURN                           R5 1
       20 FORGLOOP                         R1 2 ; [-17]
       22 LOADNIL                          R1
       23 RETURN                           R1 1

PROTO_2:
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

PROTO_3:
        0 LOADK                            R5 K0 ["DialogManager"]
        1 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
        3 CALL                             R3 2 1
        4 DUPTABLE                         R6 K6 [{["PluginId"] = "AnimationEditor", ["ItemId"] = "ConfirmOverwrite"}]
        5 DUPTABLE                         R7 K13 [{["Type"] = "Warning", ["Title"], ["Description"], ["PrimaryButton"], ["SecondaryButton"]}]
        6 LOADK                            R10 K14 ["Common"]
        7 LOADK                            R11 K3 ["AnimationEditor"]
        8 LOADK                            R12 K15 ["CreateScript"]
        9 LOADK                            R13 K16 ["ScriptAlreadyExistsTitle"]
       10 NAMECALL                         R8 R2 K17 ["getExternalText"]
       12 CALL                             R8 5 1
       13 SETTABLEKS                       R8 R7 K9 ["Title"]
       15 LOADK                            R10 K14 ["Common"]
       16 LOADK                            R11 K3 ["AnimationEditor"]
       17 LOADK                            R12 K15 ["CreateScript"]
       18 LOADK                            R13 K18 ["ScriptAlreadyExistsDescription"]
       19 DUPTABLE                         R14 K20 [{"targetName"}]
       20 SETTABLEKS                       R1 R14 K19 ["targetName"]
       22 NAMECALL                         R8 R2 K17 ["getExternalText"]
       24 CALL                             R8 6 1
       25 SETTABLEKS                       R8 R7 K10 ["Description"]
       27 DUPTABLE                         R8 K23 [{"Uri", "Text"}]
       28 DUPTABLE                         R9 K25 [{["PluginId"] = "AnimationEditor", ["ItemId"] = "ConfirmOverwrite/Overwrite"}]
       29 SETTABLEKS                       R9 R8 K21 ["Uri"]
       31 LOADK                            R11 K14 ["Common"]
       32 LOADK                            R12 K3 ["AnimationEditor"]
       33 LOADK                            R13 K15 ["CreateScript"]
       34 LOADK                            R14 K26 ["Overwrite"]
       35 NAMECALL                         R9 R2 K17 ["getExternalText"]
       37 CALL                             R9 5 1
       38 SETTABLEKS                       R9 R8 K22 ["Text"]
       40 SETTABLEKS                       R8 R7 K11 ["PrimaryButton"]
       42 DUPTABLE                         R8 K23 [{"Uri", "Text"}]
       43 DUPTABLE                         R9 K28 [{["PluginId"] = "AnimationEditor", ["ItemId"] = "ConfirmOverwrite/Cancel"}]
       44 SETTABLEKS                       R9 R8 K21 ["Uri"]
       46 LOADK                            R11 K14 ["Common"]
       47 LOADK                            R12 K3 ["AnimationEditor"]
       48 LOADK                            R13 K15 ["CreateScript"]
       49 LOADK                            R14 K29 ["Cancel"]
       50 NAMECALL                         R9 R2 K17 ["getExternalText"]
       52 CALL                             R9 5 1
       53 SETTABLEKS                       R9 R8 K22 ["Text"]
       55 SETTABLEKS                       R8 R7 K12 ["SecondaryButton"]
       57 NAMECALL                         R4 R3 K30 ["ShowDialogAsync"]
       59 CALL                             R4 3 1
       60 GETTABLEKS                       R6 R4 K31 ["SelectedButtonUri"]
       62 GETTABLEKS                       R6 R6 K4 ["ItemId"]
       64 JUMPIFEQKS                       R6 K24 ["ConfirmOverwrite/Overwrite"] ; [+2]
       66 LOADB                            R5 0 +1
       67 LOADB                            R5 1
       68 RETURN                           R5 1

PROTO_4:
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

PROTO_5:
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
       14 DUPTABLE                         R3 K4 [{["exists"], ["targetName"] = "StarterCharacterScripts"}]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K2 ["exists"]
       21 RETURN                           R3 1

PROTO_6:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["className"]
        3 JUMPIFNOTEQKS                    R2 K1 ["ModuleScript"] ; [+7]
        5 GETIMPORT                        R2 K4 [Instance.new]
        7 LOADK                            R3 K1 ["ModuleScript"]
        8 CALL                             R2 1 1
        9 MOVE                             R1 R2
       10 JUMP                             ; [+15]
       11 GETTABLEKS                       R2 R0 K0 ["className"]
       13 JUMPIFNOTEQKS                    R2 K5 ["LocalScript"] ; [+7]
       15 GETIMPORT                        R2 K4 [Instance.new]
       17 LOADK                            R3 K5 ["LocalScript"]
       18 CALL                             R2 1 1
       19 MOVE                             R1 R2
       20 JUMP                             ; [+5]
       21 GETIMPORT                        R2 K4 [Instance.new]
       23 LOADK                            R3 K6 ["Script"]
       24 CALL                             R2 1 1
       25 MOVE                             R1 R2
       26 GETTABLEKS                       R2 R0 K7 ["name"]
       28 SETTABLEKS                       R2 R1 K8 ["Name"]
       30 GETTABLEKS                       R2 R0 K9 ["runContext"]
       32 JUMPIFNOT                        R2 ; [+4]
       33 GETTABLEKS                       R2 R0 K9 ["runContext"]
       35 SETTABLEKS                       R2 R1 K10 ["RunContext"]
       37 GETTABLEKS                       R2 R0 K11 ["source"]
       39 SETTABLEKS                       R2 R1 K12 ["Source"]
       41 GETTABLEKS                       R2 R0 K13 ["isRoot"]
       43 JUMPIFNOT                        R2 ; [+4]
       44 LOADK                            R4 K14 ["AnimationEditor_AnimateScript"]
       45 NAMECALL                         R2 R1 K15 ["AddTag"]
       47 CALL                             R2 2 0
       48 GETTABLEKS                       R2 R0 K16 ["children"]
       50 JUMPIFNOT                        R2 ; [+12]
       51 GETTABLEKS                       R2 R0 K16 ["children"]
       53 LOADNIL                          R3
       54 LOADNIL                          R4
       55 FORGPREP                         R2
       56 GETUPVAL                         R7 0
       57 MOVE                             R8 R6
       58 CALL                             R7 1 1
       59 SETTABLEKS                       R1 R7 K17 ["Parent"]
       61 FORGLOOP                         R2 2 ; [-6]
       63 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AnimationEditor_PreviewStaging"]
        2 NAMECALL                         R1 R1 K1 ["GetTagged"]
        4 CALL                             R1 2 1
        5 LENGTH                           R0 R1
        6 LOADN                            R1 0
        7 JUMPIFNOTLT                      R1 R0 ; [+2]
        9 RETURN                           R0 0
       10 GETIMPORT                        R0 K4 [Instance.new]
       12 LOADK                            R1 K5 ["Script"]
       13 CALL                             R0 1 1
       14 LOADK                            R1 K6 ["AnimationGraphPreviewStaging"]
       15 SETTABLEKS                       R1 R0 K7 ["Name"]
       17 GETIMPORT                        R1 K11 [Enum.RunContext.Server]
       19 SETTABLEKS                       R1 R0 K9 ["RunContext"]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K12 ["getPreviewStagingSource"]
       24 CALL                             R1 0 1
       25 SETTABLEKS                       R1 R0 K13 ["Source"]
       27 LOADK                            R3 K0 ["AnimationEditor_PreviewStaging"]
       28 NAMECALL                         R1 R0 K14 ["AddTag"]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 2
       32 SETTABLEKS                       R1 R0 K15 ["Parent"]
       34 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R5 R0 K0 ["GetChildren"]
        2 CALL                             R5 1 3
        3 FORGPREP                         R5
        4 GETTABLEKS                       R10 R9 K1 ["Name"]
        6 JUMPIFNOTEQKS                    R10 K2 ["Animate"] ; [+17]
        8 LOADK                            R12 K3 ["BaseScript"]
        9 NAMECALL                         R10 R9 K4 ["IsA"]
       11 CALL                             R10 2 1
       12 JUMPIFNOT                        R10 ; [+3]
       13 NAMECALL                         R10 R9 K5 ["Destroy"]
       15 CALL                             R10 1 0
       16 LOADK                            R12 K6 ["ModuleScript"]
       17 NAMECALL                         R10 R9 K4 ["IsA"]
       19 CALL                             R10 2 1
       20 JUMPIFNOT                        R10 ; [+3]
       21 NAMECALL                         R10 R9 K5 ["Destroy"]
       23 CALL                             R10 1 0
       24 FORGLOOP                         R5 2 ; [-21]
       26 GETIMPORT                        R6 K8 [workspace]
       28 GETTABLEKS                       R6 R6 K9 ["AuthorityMode"]
       30 GETIMPORT                        R7 K12 [Enum.AuthorityMode.Server]
       32 JUMPIFEQ                         R6 R7 ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K13 ["getActiveTemplateSet"]
       39 MOVE                             R7 R1
       40 MOVE                             R8 R5
       41 CALL                             R6 2 1
       42 LOADNIL                          R7
       43 MOVE                             R8 R6
       44 LOADNIL                          R9
       45 LOADNIL                          R10
       46 FORGPREP                         R8
       47 GETUPVAL                         R13 1
       48 MOVE                             R14 R12
       49 CALL                             R13 1 1
       50 GETTABLEKS                       R14 R12 K14 ["isRoot"]
       52 JUMPIFNOT                        R14 ; [+1]
       53 MOVE                             R7 R13
       54 SETTABLEKS                       R0 R13 K15 ["Parent"]
       56 FORGLOOP                         R8 2 ; [-10]
       58 FASTCALL2K                       ASSERT R7 K16 ; [+5]
       60 MOVE                             R9 R7
       61 LOADK                            R10 K16 ["[CreateScriptContext] Template set must contain a root descriptor"]
       62 GETIMPORT                        R8 K18 [assert]
       64 CALL                             R8 2 0
       65 GETUPVAL                         R8 2
       66 MOVE                             R9 R7
       67 MOVE                             R10 R2
       68 MOVE                             R11 R3
       69 MOVE                             R12 R4
       70 CALL                             R8 4 0
       71 GETUPVAL                         R8 3
       72 CALL                             R8 0 0
       73 RETURN                           R7 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+20]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+12]
        5 GETIMPORT                        R0 K1 [warn]
        7 GETUPVAL                         R1 2
        8 LOADK                            R3 K2 ["Common"]
        9 LOADK                            R4 K3 ["AnimationEditor"]
       10 LOADK                            R5 K4 ["Output"]
       11 LOADK                            R6 K5 ["CreateScriptNoGraph"]
       12 NAMECALL                         R1 R1 K6 ["getExternalText"]
       14 CALL                             R1 5 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0
       17 GETIMPORT                        R0 K1 [warn]
       19 LOADK                            R1 K7 ["[CreateScriptContext] No graph selected"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 3
       23 GETUPVAL                         R1 0
       24 GETUPVAL                         R2 4
       25 GETTABLEKS                       R2 R2 K8 ["selectionService"]
       27 CALL                             R0 2 2
       28 JUMPIF                           R0 ; [+20]
       29 GETUPVAL                         R2 1
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+12]
       32 GETIMPORT                        R2 K1 [warn]
       34 GETUPVAL                         R3 2
       35 LOADK                            R5 K2 ["Common"]
       36 LOADK                            R6 K3 ["AnimationEditor"]
       37 LOADK                            R7 K4 ["Output"]
       38 LOADK                            R8 K9 ["CreateScriptNoCharacter"]
       39 NAMECALL                         R3 R3 K6 ["getExternalText"]
       41 CALL                             R3 5 -1
       42 CALL                             R2 -1 0
       43 RETURN                           R0 0
       44 GETIMPORT                        R2 K1 [warn]
       46 LOADK                            R3 K10 ["[CreateScriptContext] No character found in selection or graph"]
       47 CALL                             R2 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R2 5
       50 LOADK                            R4 K11 ["NativeGraphContext"]
       51 LOADK                            R5 K12 ["createScriptForSelectedGraphAsync"]
       52 NAMECALL                         R2 R2 K13 ["TryBeginRecording"]
       54 CALL                             R2 3 1
       55 JUMPIFNOT                        R1 ; [+3]
       56 GETTABLEKS                       R3 R1 K14 ["Name"]
       58 JUMP                             ; [+2]
       59 GETTABLEKS                       R3 R0 K14 ["Name"]
       61 GETUPVAL                         R4 6
       62 MOVE                             R5 R0
       63 LOADK                            R6 K15 ["Rig"]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K14 ["Name"]
       67 MOVE                             R8 R3
       68 GETUPVAL                         R9 0
       69 CALL                             R4 5 1
       70 GETUPVAL                         R5 4
       71 GETTABLEKS                       R5 R5 K8 ["selectionService"]
       73 NEWTABLE                         R7 0 1
       75 MOVE                             R8 R4
       76 SETLIST                          R7 R8 1 [1]
       78 NAMECALL                         R5 R5 K16 ["Set"]
       80 CALL                             R5 2 0
       81 JUMPIFNOT                        R2 ; [+7]
       82 GETUPVAL                         R5 5
       83 MOVE                             R7 R2
       84 GETIMPORT                        R8 K20 [Enum.FinishRecordingOperation.Commit]
       86 NAMECALL                         R5 R5 K21 ["FinishRecording"]
       88 CALL                             R5 3 0
       89 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+20]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+12]
        5 GETIMPORT                        R0 K1 [warn]
        7 GETUPVAL                         R1 2
        8 LOADK                            R3 K2 ["Common"]
        9 LOADK                            R4 K3 ["AnimationEditor"]
       10 LOADK                            R5 K4 ["Output"]
       11 LOADK                            R6 K5 ["CreateScriptNoGraph"]
       12 NAMECALL                         R1 R1 K6 ["getExternalText"]
       14 CALL                             R1 5 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0
       17 GETIMPORT                        R0 K1 [warn]
       19 LOADK                            R1 K7 ["[CreateScriptContext] No graph selected"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 3
       23 LOADK                            R2 K8 ["StarterCharacterScripts"]
       24 NAMECALL                         R0 R0 K9 ["FindFirstChildWhichIsA"]
       26 CALL                             R0 2 1
       27 JUMPIF                           R0 ; [+20]
       28 GETUPVAL                         R1 1
       29 CALL                             R1 0 1
       30 JUMPIFNOT                        R1 ; [+12]
       31 GETIMPORT                        R1 K1 [warn]
       33 GETUPVAL                         R2 2
       34 LOADK                            R4 K2 ["Common"]
       35 LOADK                            R5 K3 ["AnimationEditor"]
       36 LOADK                            R6 K4 ["Output"]
       37 LOADK                            R7 K10 ["CreateScriptNoStarterCharacterScripts"]
       38 NAMECALL                         R2 R2 K6 ["getExternalText"]
       40 CALL                             R2 5 -1
       41 CALL                             R1 -1 0
       42 RETURN                           R0 0
       43 GETIMPORT                        R1 K1 [warn]
       45 LOADK                            R2 K11 ["[CreateScriptContext] starterCharacterScripts not found under StarterPlayer"]
       46 CALL                             R1 1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R1 0
       49 LOADK                            R3 K12 ["ObjectValue"]
       50 NAMECALL                         R1 R1 K13 ["FindFirstAncestorWhichIsA"]
       52 CALL                             R1 2 1
       53 JUMPIFNOT                        R1 ; [+3]
       54 GETTABLEKS                       R2 R1 K14 ["Name"]
       56 JUMP                             ; [+1]
       57 LOADK                            R2 K15 [""]
       58 GETUPVAL                         R3 4
       59 LOADK                            R5 K16 ["NativeGraphContext"]
       60 LOADK                            R6 K17 ["createScriptForStarterPlayerAsync"]
       61 NAMECALL                         R3 R3 K18 ["TryBeginRecording"]
       63 CALL                             R3 3 1
       64 LOADNIL                          R4
       65 GETUPVAL                         R5 5
       66 MOVE                             R6 R0
       67 LOADK                            R7 K19 ["StarterPlayer"]
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R8 R8 K14 ["Name"]
       71 MOVE                             R9 R2
       72 GETUPVAL                         R10 0
       73 CALL                             R5 5 1
       74 MOVE                             R4 R5
       75 GETUPVAL                         R5 6
       76 GETTABLEKS                       R5 R5 K20 ["selectionService"]
       78 NEWTABLE                         R7 0 1
       80 MOVE                             R8 R4
       81 SETLIST                          R7 R8 1 [1]
       83 NAMECALL                         R5 R5 K21 ["Set"]
       85 CALL                             R5 2 0
       86 JUMPIFNOT                        R3 ; [+7]
       87 GETUPVAL                         R5 4
       88 MOVE                             R7 R3
       89 GETIMPORT                        R8 K25 [Enum.FinishRecordingOperation.Commit]
       91 NAMECALL                         R5 R5 K26 ["FinishRecording"]
       93 CALL                             R5 3 0
       94 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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
       15 DUPTABLE                         R0 K4 [{["exists"], ["targetName"] = "StarterCharacterScripts"}]
       16 JUMPIFNOTEQKNIL                  R3 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R0 K2 ["exists"]
       22 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isPreviewRunning"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADB                            R0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 RETURN                           R0 1

PROTO_14:
        0 DUPTABLE                         R0 K3 [{"canCreateScript", "createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["canCreateScript"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["createScriptForSelectedGraphAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createScriptForStarterPlayerAsync"]
       10 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K5 ["useSignalState"]
       25 GETTABLEKS                       R5 R2 K6 ["observeSelectedGraphInstance"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K3 ["useContext"]
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R6 R6 K4 ["Context"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          UPVAL U9
       46 NEWTABLE                         R8 0 3
       48 GETTABLEKS                       R9 R3 K8 ["selectionService"]
       50 MOVE                             R10 R4
       51 MOVE                             R11 R1
       52 SETLIST                          R8 R9 3 [1]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R7 1
       56 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       58 NEWCLOSURE                       R8 P1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          VAL R1
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          UPVAL U9
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R9 0 3
       68 GETTABLEKS                       R10 R3 K8 ["selectionService"]
       70 MOVE                             R11 R4
       71 MOVE                             R12 R1
       72 SETLIST                          R9 R10 3 [1]
       74 CALL                             R7 2 1
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       78 NEWCLOSURE                       R9 P2
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R3
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          UPVAL U11
       83 NEWTABLE                         R10 0 2
       85 GETTABLEKS                       R11 R3 K8 ["selectionService"]
       87 MOVE                             R12 R4
       88 SETLIST                          R10 R11 2 [1]
       90 CALL                             R8 2 1
       91 GETUPVAL                         R9 1
       92 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       94 NEWCLOSURE                       R10 P3
       95 CAPTURE                          VAL R4
       96 CAPTURE                          UPVAL U10
       97 CAPTURE                          UPVAL U11
       98 NEWTABLE                         R11 0 1
      100 MOVE                             R12 R4
      101 SETLIST                          R11 R12 1 [1]
      103 CALL                             R9 2 1
      104 GETUPVAL                         R10 1
      105 GETTABLEKS                       R10 R10 K9 ["useMemo"]
      107 NEWCLOSURE                       R11 P4
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R4
      110 NEWTABLE                         R12 0 2
      112 MOVE                             R13 R4
      113 GETTABLEKS                       R14 R5 K10 ["isPreviewRunning"]
      115 SETLIST                          R12 R13 2 [1]
      117 CALL                             R10 2 1
      118 GETUPVAL                         R11 1
      119 GETTABLEKS                       R11 R11 K9 ["useMemo"]
      121 NEWCLOSURE                       R12 P5
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R7
      125 NEWTABLE                         R13 0 3
      127 MOVE                             R14 R10
      128 MOVE                             R15 R6
      129 MOVE                             R16 R7
      130 SETLIST                          R13 R14 3 [1]
      132 CALL                             R11 2 1
      133 GETUPVAL                         R12 12
      134 GETTABLEKS                       R12 R12 K11 ["useProducer"]
      136 MOVE                             R13 R10
      137 CALL                             R12 1 0
      138 GETUPVAL                         R12 13
      139 GETTABLEKS                       R12 R12 K12 ["useBoundAction"]
      141 LOADK                            R13 K13 ["CreateScriptContext_CheckScriptExistsForSelectedGraph"]
      142 MOVE                             R14 R8
      143 CALL                             R12 2 0
      144 GETUPVAL                         R12 13
      145 GETTABLEKS                       R12 R12 K12 ["useBoundAction"]
      147 LOADK                            R13 K14 ["CreateScriptContext_CheckScriptExistsForStarterPlayer"]
      148 MOVE                             R14 R9
      149 CALL                             R12 2 0
      150 GETUPVAL                         R12 13
      151 GETTABLEKS                       R12 R12 K12 ["useBoundAction"]
      153 LOADK                            R13 K15 ["CreateScriptContext_CreateScriptForSelectedGraphAsync"]
      154 MOVE                             R14 R6
      155 CALL                             R12 2 0
      156 GETUPVAL                         R12 13
      157 GETTABLEKS                       R12 R12 K12 ["useBoundAction"]
      159 LOADK                            R13 K16 ["CreateScriptContext_CreateScriptForStarterPlayerAsync"]
      160 MOVE                             R14 R7
      161 CALL                             R12 2 0
      162 GETUPVAL                         R12 1
      163 GETTABLEKS                       R12 R12 K17 ["createElement"]
      165 GETUPVAL                         R13 14
      166 GETTABLEKS                       R13 R13 K18 ["Provider"]
      168 DUPTABLE                         R14 K20 [{"value"}]
      169 SETTABLEKS                       R11 R14 K19 ["value"]
      171 GETTABLEKS                       R15 R0 K21 ["children"]
      173 CALL                             R12 3 -1
      174 RETURN                           R12 -1

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

PROTO_18:
        0 DUPTABLE                         R0 K3 [{"canCreateScript", "createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["canCreateScript"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["createScriptForSelectedGraphAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createScriptForStarterPlayerAsync"]
       10 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["useBoundAction"]
       18 LOADK                            R4 K6 ["CreateScriptContext_CheckScriptExistsForSelectedGraph"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K5 ["useBoundAction"]
       23 LOADK                            R5 K7 ["CreateScriptContext_CheckScriptExistsForStarterPlayer"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K5 ["useBoundAction"]
       28 LOADK                            R6 K8 ["CreateScriptContext_CreateScriptForSelectedGraphAsync"]
       29 CALL                             R5 1 1
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K5 ["useBoundAction"]
       33 LOADK                            R7 K9 ["CreateScriptContext_CreateScriptForStarterPlayerAsync"]
       34 CALL                             R6 1 1
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 NEWTABLE                         R9 0 4
       46 MOVE                             R10 R3
       47 MOVE                             R11 R5
       48 GETTABLEKS                       R12 R0 K11 ["plugin"]
       50 MOVE                             R13 R1
       51 SETLIST                          R9 R10 4 [1]
       53 CALL                             R7 2 1
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       57 NEWCLOSURE                       R9 P1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R6
       63 NEWTABLE                         R10 0 4
       65 MOVE                             R11 R4
       66 MOVE                             R12 R6
       67 GETTABLEKS                       R13 R0 K11 ["plugin"]
       69 MOVE                             R14 R1
       70 SETLIST                          R10 R11 4 [1]
       72 CALL                             R8 2 1
       73 GETUPVAL                         R9 5
       74 GETTABLEKS                       R9 R9 K12 ["useConsumer"]
       76 LOADB                            R10 0
       77 CALL                             R9 1 1
       78 MOVE                             R10 R9
       79 JUMPIFNOT                        R10 ; [+3]
       80 GETTABLEKS                       R11 R2 K13 ["isPreviewRunning"]
       82 NOT                              R10 R11
       83 GETUPVAL                         R11 1
       84 GETTABLEKS                       R11 R11 K14 ["useMemo"]
       86 NEWCLOSURE                       R12 P2
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R8
       90 NEWTABLE                         R13 0 3
       92 MOVE                             R14 R10
       93 MOVE                             R15 R7
       94 MOVE                             R16 R8
       95 SETLIST                          R13 R14 3 [1]
       97 CALL                             R11 2 1
       98 GETUPVAL                         R12 1
       99 GETTABLEKS                       R12 R12 K15 ["createElement"]
      101 GETUPVAL                         R13 6
      102 GETTABLEKS                       R13 R13 K16 ["Provider"]
      104 DUPTABLE                         R14 K18 [{"value"}]
      105 SETTABLEKS                       R11 R14 K17 ["value"]
      107 GETTABLEKS                       R15 R0 K19 ["children"]
      109 CALL                             R12 3 -1
      110 RETURN                           R12 -1

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
       15 LOADK                            R4 K8 ["CollectionService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["ServerScriptService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["StarterPlayer"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R0 K13 ["Parent"]
       35 GETTABLEKS                       R6 R6 K14 ["Framework"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R0 K15 ["Contexts"]
       42 GETTABLEKS                       R7 R7 K16 ["GraphPlayedContext"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K12 [require]
       47 GETTABLEKS                       R8 R0 K17 ["Util"]
       49 GETTABLEKS                       R8 R8 K18 ["Networking"]
       51 GETTABLEKS                       R8 R8 K19 ["NetworkUtils"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K12 [require]
       56 GETTABLEKS                       R9 R0 K13 ["Parent"]
       58 GETTABLEKS                       R9 R9 K20 ["React"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K12 [require]
       63 GETTABLEKS                       R10 R0 K13 ["Parent"]
       65 GETTABLEKS                       R10 R10 K21 ["ReactUtils"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K12 [require]
       70 GETTABLEKS                       R11 R0 K22 ["Resources"]
       72 GETTABLEKS                       R11 R11 K23 ["ScriptTemplates"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K12 [require]
       77 GETTABLEKS                       R12 R0 K15 ["Contexts"]
       79 GETTABLEKS                       R12 R12 K24 ["SelectedGraphContext"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K12 [require]
       84 GETTABLEKS                       R13 R0 K15 ["Contexts"]
       86 GETTABLEKS                       R13 R13 K25 ["SelectionServiceContext"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K12 [require]
       91 GETTABLEKS                       R14 R0 K13 ["Parent"]
       93 GETTABLEKS                       R14 R14 K26 ["SignalsReact"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K12 [require]
       98 GETTABLEKS                       R15 R0 K27 ["Flags"]
      100 GETTABLEKS                       R15 R15 K28 ["getFFlagAnimGraphUI_Localization2"]
      102 CALL                             R14 1 1
      103 DUPTABLE                         R15 K33 [{["canCreateScript"] = False, ["createScriptForSelectedGraphAsync"], ["createScriptForStarterPlayerAsync"]}]
      104 GETTABLEKS                       R16 R9 K34 ["createUnimplemented"]
      106 LOADK                            R17 K31 ["createScriptForSelectedGraphAsync"]
      107 CALL                             R16 1 1
      108 SETTABLEKS                       R16 R15 K31 ["createScriptForSelectedGraphAsync"]
      110 GETTABLEKS                       R16 R9 K34 ["createUnimplemented"]
      112 LOADK                            R17 K32 ["createScriptForStarterPlayerAsync"]
      113 CALL                             R16 1 1
      114 SETTABLEKS                       R16 R15 K32 ["createScriptForStarterPlayerAsync"]
      116 GETTABLEKS                       R16 R8 K35 ["createContext"]
      118 MOVE                             R17 R15
      119 CALL                             R16 1 1
      120 DUPTABLE                         R17 K44 [{["CREATE_SCRIPT_FOR_SELECTED_GRAPH"] = "CreateScriptContext_CreateScriptForSelectedGraphAsync", ["CREATE_SCRIPT_FOR_STARTER_PLAYER"] = "CreateScriptContext_CreateScriptForStarterPlayerAsync", ["CHECK_SCRIPT_EXISTS_FOR_SELECTED_GRAPH"] = "CreateScriptContext_CheckScriptExistsForSelectedGraph", ["CHECK_SCRIPT_EXISTS_FOR_STARTER_PLAYER"] = "CreateScriptContext_CheckScriptExistsForStarterPlayer"}]
      121 GETTABLEKS                       R18 R7 K45 ["createReplicatedState"]
      123 LOADK                            R19 K46 ["CreateScriptContext_CanCreateScript"]
      124 CALL                             R18 1 1
      125 DUPCLOSURE                       R19 K47 [PROTO_0]
      126 DUPCLOSURE                       R20 K48 [PROTO_1]
      127 DUPCLOSURE                       R21 K49 [PROTO_2]
      128 DUPCLOSURE                       R22 K50 [PROTO_3]
      129 DUPCLOSURE                       R23 K51 [PROTO_4]
      130 CAPTURE                          VAL R21
      131 CAPTURE                          VAL R20
      132 DUPCLOSURE                       R24 K52 [PROTO_5]
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R20
      135 DUPCLOSURE                       R25 K53 [PROTO_6]
      136 CAPTURE                          VAL R25
      137 DUPCLOSURE                       R26 K54 [PROTO_7]
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R3
      141 DUPCLOSURE                       R27 K55 [PROTO_8]
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R25
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R26
      146 DUPCLOSURE                       R28 K56 [PROTO_15]
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R27
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R16
      162 DUPCLOSURE                       R29 K57 [PROTO_19]
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R16
      170 DUPTABLE                         R30 K67 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "_getOrCreateAnimateScript", "_findExistingAnimateScript", "_resolveCharacterForGraph", "_checkScriptExistsForGraph", "_checkScriptExistsInStarterPlayer", "_showConfirmOverwrite"}]
      171 SETTABLEKS                       R16 R30 K58 ["Context"]
      173 SETTABLEKS                       R28 R30 K59 ["EditableDataModelProvider"]
      175 SETTABLEKS                       R29 R30 K60 ["UIDataModelProvider"]
      177 SETTABLEKS                       R27 R30 K61 ["_getOrCreateAnimateScript"]
      179 SETTABLEKS                       R20 R30 K62 ["_findExistingAnimateScript"]
      181 SETTABLEKS                       R21 R30 K63 ["_resolveCharacterForGraph"]
      183 SETTABLEKS                       R23 R30 K64 ["_checkScriptExistsForGraph"]
      185 SETTABLEKS                       R24 R30 K65 ["_checkScriptExistsInStarterPlayer"]
      187 SETTABLEKS                       R22 R30 K66 ["_showConfirmOverwrite"]
      189 RETURN                           R30 1
