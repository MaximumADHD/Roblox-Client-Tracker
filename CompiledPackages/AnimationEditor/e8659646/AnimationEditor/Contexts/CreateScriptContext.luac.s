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
       10 JUMPIFNOT                        R7 ; [+53]
       11 LOADK                            R9 K3 ["AnimGraph_BindingName"]
       12 NAMECALL                         R7 R6 K4 ["GetAttribute"]
       14 CALL                             R7 2 1
       15 FASTCALL1                        TYPE R7 ; [+3]
       16 MOVE                             R9 R7
       17 GETIMPORT                        R8 K6 [type]
       19 CALL                             R8 1 1
       20 JUMPIFNOTEQKS                    R8 K7 ["string"] ; [+43]
       22 GETIMPORT                        R8 K9 [string.match]
       24 GETTABLEKS                       R9 R6 K10 ["Name"]
       26 LOADK                            R10 K11 ["^Parameter_.+$"]
       27 CALL                             R8 2 1
       28 JUMPIFNOT                        R8 ; [+35]
       29 LOADK                            R11 K13 ["AnimGraph_ParameterType"]
       30 NAMECALL                         R9 R6 K4 ["GetAttribute"]
       32 CALL                             R9 2 1
       33 ORK                              R8 R9 K12 ["Number"]
       34 MOVE                             R11 R7
       35 NAMECALL                         R9 R0 K4 ["GetAttribute"]
       37 CALL                             R9 2 1
       38 JUMPIFNOTEQKNIL                  R9 ; [+12]
       40 JUMPIFNOTEQKS                    R8 K14 ["Boolean"] ; [+3]
       42 LOADB                            R9 0
       43 JUMP                             ; [+7]
       44 JUMPIFEQKS                       R8 K15 ["String"] ; [+3]
       46 JUMPIFNOTEQKS                    R8 K16 ["Enum"] ; [+3]
       48 LOADK                            R9 K17 [""]
       49 JUMP                             ; [+1]
       50 LOADN                            R9 0
       51 DUPTABLE                         R12 K20 [{"name", "type", "defaultValue"}]
       52 SETTABLEKS                       R7 R12 K18 ["name"]
       54 SETTABLEKS                       R8 R12 K5 ["type"]
       56 SETTABLEKS                       R9 R12 K19 ["defaultValue"]
       58 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       60 MOVE                             R11 R1
       61 GETIMPORT                        R10 K23 [table.insert]
       63 CALL                             R10 2 0
       64 FORGLOOP                         R2 2 ; [-59]
       66 GETIMPORT                        R2 K25 [table.sort]
       68 MOVE                             R3 R1
       69 DUPCLOSURE                       R4 K26 [PROTO_2]
       70 CALL                             R2 2 0
       71 RETURN                           R1 1

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
       49 GETUPVAL                         R8 1
       50 CALL                             R8 0 1
       51 JUMPIFNOT                        R8 ; [+6]
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K17 ["template"]
       55 MOVE                             R8 R5
       56 CALL                             R7 1 1
       57 JUMP                             ; [+5]
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R7 R7 K18 ["templateLegacy"]
       61 MOVE                             R8 R5
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K19 ["Source"]
       65 LOADK                            R9 K20 ["AnimationEditor_AnimateScript"]
       66 NAMECALL                         R7 R6 K21 ["AddTag"]
       68 CALL                             R7 2 0
       69 SETTABLEKS                       R0 R6 K22 ["Parent"]
       71 GETUPVAL                         R7 3
       72 MOVE                             R8 R6
       73 MOVE                             R9 R2
       74 MOVE                             R10 R3
       75 MOVE                             R11 R4
       76 CALL                             R7 4 0
       77 RETURN                           R6 1

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
       34 LOADNIL                          R4
       35 GETUPVAL                         R5 3
       36 MOVE                             R6 R0
       37 LOADK                            R7 K13 ["StarterPlayer"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K8 ["Name"]
       41 MOVE                             R9 R2
       42 GETUPVAL                         R10 0
       43 CALL                             R5 5 1
       44 MOVE                             R4 R5
       45 GETUPVAL                         R5 4
       46 GETTABLEKS                       R5 R5 K14 ["selectionService"]
       48 NEWTABLE                         R7 0 1
       50 MOVE                             R8 R4
       51 SETLIST                          R7 R8 1 [1]
       53 NAMECALL                         R5 R5 K15 ["Set"]
       55 CALL                             R5 2 0
       56 JUMPIFNOT                        R3 ; [+7]
       57 GETUPVAL                         R5 2
       58 MOVE                             R7 R3
       59 GETIMPORT                        R8 K19 [Enum.FinishRecordingOperation.Commit]
       61 NAMECALL                         R5 R5 K20 ["FinishRecording"]
       63 CALL                             R5 3 0
       64 RETURN                           R0 0

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

PROTO_15:
        0 DUPTABLE                         R0 K3 [{"canCreateScript", "createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["canCreateScript"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["createScriptForSelectedGraphAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createScriptForStarterPlayerAsync"]
       10 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R3 0
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+2]
       15 LOADNIL                          R2
       16 JUMP                             ; [+7]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K0 ["useContext"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K1 ["Context"]
       23 CALL                             R2 1 1
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K0 ["useContext"]
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K1 ["Context"]
       30 CALL                             R3 1 1
       31 GETUPVAL                         R4 5
       32 GETTABLEKS                       R4 R4 K2 ["useSignalState"]
       34 GETUPVAL                         R6 0
       35 CALL                             R6 0 1
       36 JUMPIFNOT                        R6 ; [+3]
       37 GETTABLEKS                       R5 R1 K3 ["observeSelectedGraphInstance"]
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R5 R2 K4 ["observeSelectedGraphInstance_DEPRECATED"]
       42 CALL                             R4 1 1
       43 GETUPVAL                         R6 0
       44 CALL                             R6 0 1
       45 JUMPIFNOT                        R6 ; [+8]
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R5 R5 K0 ["useContext"]
       49 GETUPVAL                         R6 6
       50 GETTABLEKS                       R6 R6 K1 ["Context"]
       52 CALL                             R5 1 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R5
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       58 NEWCLOSURE                       R7 P0
       59 CAPTURE                          VAL R4
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          VAL R3
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U9
       64 NEWTABLE                         R8 0 2
       66 GETTABLEKS                       R9 R3 K6 ["selectionService"]
       68 MOVE                             R10 R4
       69 SETLIST                          R8 R9 2 [1]
       71 CALL                             R6 2 1
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       75 NEWCLOSURE                       R8 P1
       76 CAPTURE                          VAL R4
       77 CAPTURE                          UPVAL U10
       78 CAPTURE                          UPVAL U8
       79 CAPTURE                          UPVAL U9
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R9 0 2
       83 GETTABLEKS                       R10 R3 K6 ["selectionService"]
       85 MOVE                             R11 R4
       86 SETLIST                          R9 R10 2 [1]
       88 CALL                             R7 2 1
       89 GETUPVAL                         R8 1
       90 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       92 NEWCLOSURE                       R9 P2
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R3
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          UPVAL U11
       97 NEWTABLE                         R10 0 2
       99 GETTABLEKS                       R11 R3 K6 ["selectionService"]
      101 MOVE                             R12 R4
      102 SETLIST                          R10 R11 2 [1]
      104 CALL                             R8 2 1
      105 GETUPVAL                         R9 1
      106 GETTABLEKS                       R9 R9 K5 ["useCallback"]
      108 NEWCLOSURE                       R10 P3
      109 CAPTURE                          VAL R4
      110 CAPTURE                          UPVAL U10
      111 CAPTURE                          UPVAL U11
      112 NEWTABLE                         R11 0 1
      114 MOVE                             R12 R4
      115 SETLIST                          R11 R12 1 [1]
      117 CALL                             R9 2 1
      118 LOADNIL                          R10
      119 GETUPVAL                         R11 0
      120 CALL                             R11 0 1
      121 JUMPIFNOT                        R11 ; [+15]
      122 GETUPVAL                         R11 1
      123 GETTABLEKS                       R11 R11 K7 ["useMemo"]
      125 NEWCLOSURE                       R12 P4
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R4
      128 NEWTABLE                         R13 0 2
      130 MOVE                             R14 R4
      131 GETTABLEKS                       R15 R5 K8 ["isPreviewRunning"]
      133 SETLIST                          R13 R14 2 [1]
      135 CALL                             R11 2 1
      136 MOVE                             R10 R11
      137 GETUPVAL                         R11 1
      138 GETTABLEKS                       R11 R11 K7 ["useMemo"]
      140 NEWCLOSURE                       R12 P5
      141 CAPTURE                          REF R10
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R7
      144 NEWTABLE                         R13 0 3
      146 MOVE                             R14 R10
      147 MOVE                             R15 R6
      148 MOVE                             R16 R7
      149 SETLIST                          R13 R14 3 [1]
      151 CALL                             R11 2 1
      152 GETUPVAL                         R12 12
      153 GETTABLEKS                       R12 R12 K9 ["useProducer"]
      155 MOVE                             R13 R10
      156 CALL                             R12 1 0
      157 GETUPVAL                         R12 13
      158 GETTABLEKS                       R12 R12 K10 ["useBoundAction"]
      160 GETUPVAL                         R13 14
      161 GETTABLEKS                       R13 R13 K11 ["CHECK_SCRIPT_EXISTS_FOR_SELECTED_GRAPH"]
      163 MOVE                             R14 R8
      164 CALL                             R12 2 0
      165 GETUPVAL                         R12 13
      166 GETTABLEKS                       R12 R12 K10 ["useBoundAction"]
      168 GETUPVAL                         R13 14
      169 GETTABLEKS                       R13 R13 K12 ["CHECK_SCRIPT_EXISTS_FOR_STARTER_PLAYER"]
      171 MOVE                             R14 R9
      172 CALL                             R12 2 0
      173 GETUPVAL                         R12 13
      174 GETTABLEKS                       R12 R12 K10 ["useBoundAction"]
      176 GETUPVAL                         R13 14
      177 GETTABLEKS                       R13 R13 K13 ["CREATE_SCRIPT_FOR_SELECTED_GRAPH"]
      179 MOVE                             R14 R6
      180 CALL                             R12 2 0
      181 GETUPVAL                         R12 13
      182 GETTABLEKS                       R12 R12 K10 ["useBoundAction"]
      184 GETUPVAL                         R13 14
      185 GETTABLEKS                       R13 R13 K14 ["CREATE_SCRIPT_FOR_STARTER_PLAYER"]
      187 MOVE                             R14 R7
      188 CALL                             R12 2 0
      189 GETUPVAL                         R12 1
      190 GETTABLEKS                       R12 R12 K15 ["createElement"]
      192 GETUPVAL                         R13 15
      193 GETTABLEKS                       R13 R13 K16 ["Provider"]
      195 DUPTABLE                         R14 K18 [{"value"}]
      196 SETTABLEKS                       R11 R14 K17 ["value"]
      198 GETTABLEKS                       R15 R0 K19 ["children"]
      200 CALL                             R12 3 -1
      201 CLOSEUPVALS                      R10
      202 RETURN                           R12 -1

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

PROTO_19:
        0 DUPTABLE                         R0 K3 [{"canCreateScript", "createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["canCreateScript"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["createScriptForSelectedGraphAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createScriptForStarterPlayerAsync"]
       10 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+8]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["useContext"]
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K4 ["Context"]
       17 CALL                             R2 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K5 ["useBoundAction"]
       23 GETUPVAL                         R4 5
       24 GETTABLEKS                       R4 R4 K6 ["CHECK_SCRIPT_EXISTS_FOR_SELECTED_GRAPH"]
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K5 ["useBoundAction"]
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K7 ["CHECK_SCRIPT_EXISTS_FOR_STARTER_PLAYER"]
       33 CALL                             R4 1 1
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K5 ["useBoundAction"]
       37 GETUPVAL                         R6 5
       38 GETTABLEKS                       R6 R6 K8 ["CREATE_SCRIPT_FOR_SELECTED_GRAPH"]
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 4
       42 GETTABLEKS                       R6 R6 K5 ["useBoundAction"]
       44 GETUPVAL                         R7 5
       45 GETTABLEKS                       R7 R7 K9 ["CREATE_SCRIPT_FOR_STARTER_PLAYER"]
       47 CALL                             R6 1 1
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       51 NEWCLOSURE                       R8 P0
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R5
       57 NEWTABLE                         R9 0 4
       59 MOVE                             R10 R3
       60 MOVE                             R11 R5
       61 GETTABLEKS                       R12 R0 K11 ["plugin"]
       63 MOVE                             R13 R1
       64 SETLIST                          R9 R10 4 [1]
       66 CALL                             R7 2 1
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       70 NEWCLOSURE                       R9 P1
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R6
       76 NEWTABLE                         R10 0 4
       78 MOVE                             R11 R4
       79 MOVE                             R12 R6
       80 GETTABLEKS                       R13 R0 K11 ["plugin"]
       82 MOVE                             R14 R1
       83 SETLIST                          R10 R11 4 [1]
       85 CALL                             R8 2 1
       86 LOADNIL                          R9
       87 GETUPVAL                         R10 1
       88 CALL                             R10 0 1
       89 JUMPIFNOT                        R10 ; [+10]
       90 GETUPVAL                         R10 7
       91 GETTABLEKS                       R10 R10 K12 ["useConsumer"]
       93 LOADB                            R11 0
       94 CALL                             R10 1 1
       95 MOVE                             R9 R10
       96 GETTABLEKS                       R10 R2 K13 ["isPreviewRunning"]
       98 JUMPIFNOT                        R10 ; [+1]
       99 LOADB                            R9 0
      100 GETUPVAL                         R10 2
      101 GETTABLEKS                       R10 R10 K14 ["useMemo"]
      103 NEWCLOSURE                       R11 P2
      104 CAPTURE                          REF R9
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R8
      107 NEWTABLE                         R12 0 3
      109 MOVE                             R13 R9
      110 MOVE                             R14 R7
      111 MOVE                             R15 R8
      112 SETLIST                          R12 R13 3 [1]
      114 CALL                             R10 2 1
      115 GETUPVAL                         R11 2
      116 GETTABLEKS                       R11 R11 K15 ["createElement"]
      118 GETUPVAL                         R12 8
      119 GETTABLEKS                       R12 R12 K16 ["Provider"]
      121 DUPTABLE                         R13 K18 [{"value"}]
      122 SETTABLEKS                       R10 R13 K17 ["value"]
      124 GETTABLEKS                       R14 R0 K19 ["children"]
      126 CALL                             R11 3 -1
      127 CLOSEUPVALS                      R9
      128 RETURN                           R11 -1

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
       37 GETTABLEKS                       R6 R0 K16 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K17 ["GraphPlayedContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K16 ["Contexts"]
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
       74 GETTABLEKS                       R11 R0 K16 ["Contexts"]
       76 GETTABLEKS                       R11 R11 K24 ["SelectedGraphContext"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R12 R0 K16 ["Contexts"]
       83 GETTABLEKS                       R12 R12 K25 ["SelectionServiceContext"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R13 R0 K14 ["Parent"]
       90 GETTABLEKS                       R13 R13 K26 ["SignalsReact"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R14 R0 K27 ["Flags"]
       97 GETTABLEKS                       R14 R14 K28 ["getFFlagAnimGraphStarterPlayerScriptRefactor"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R15 R0 K27 ["Flags"]
      104 GETTABLEKS                       R15 R15 K29 ["getFFlagAnimGraphUI_RunTimeDebug"]
      106 CALL                             R14 1 1
      107 DUPTABLE                         R15 K33 [{"canCreateScript", "createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
      108 LOADB                            R16 0
      109 SETTABLEKS                       R16 R15 K30 ["canCreateScript"]
      111 GETTABLEKS                       R16 R9 K34 ["createUnimplemented"]
      113 LOADK                            R17 K31 ["createScriptForSelectedGraphAsync"]
      114 CALL                             R16 1 1
      115 SETTABLEKS                       R16 R15 K31 ["createScriptForSelectedGraphAsync"]
      117 GETTABLEKS                       R16 R9 K34 ["createUnimplemented"]
      119 LOADK                            R17 K32 ["createScriptForStarterPlayerAsync"]
      120 CALL                             R16 1 1
      121 SETTABLEKS                       R16 R15 K32 ["createScriptForStarterPlayerAsync"]
      123 GETTABLEKS                       R16 R8 K35 ["createContext"]
      125 MOVE                             R17 R15
      126 CALL                             R16 1 1
      127 DUPTABLE                         R17 K40 [{"CREATE_SCRIPT_FOR_SELECTED_GRAPH", "CREATE_SCRIPT_FOR_STARTER_PLAYER", "CHECK_SCRIPT_EXISTS_FOR_SELECTED_GRAPH", "CHECK_SCRIPT_EXISTS_FOR_STARTER_PLAYER"}]
      128 LOADK                            R18 K41 ["CreateScriptContext_CreateScriptForSelectedGraphAsync"]
      129 SETTABLEKS                       R18 R17 K36 ["CREATE_SCRIPT_FOR_SELECTED_GRAPH"]
      131 LOADK                            R18 K42 ["CreateScriptContext_CreateScriptForStarterPlayerAsync"]
      132 SETTABLEKS                       R18 R17 K37 ["CREATE_SCRIPT_FOR_STARTER_PLAYER"]
      134 LOADK                            R18 K43 ["CreateScriptContext_CheckScriptExistsForSelectedGraph"]
      135 SETTABLEKS                       R18 R17 K38 ["CHECK_SCRIPT_EXISTS_FOR_SELECTED_GRAPH"]
      137 LOADK                            R18 K44 ["CreateScriptContext_CheckScriptExistsForStarterPlayer"]
      138 SETTABLEKS                       R18 R17 K39 ["CHECK_SCRIPT_EXISTS_FOR_STARTER_PLAYER"]
      140 GETTABLEKS                       R18 R7 K45 ["createReplicatedState"]
      142 LOADK                            R19 K46 ["CreateScriptContext_CanCreateScript"]
      143 CALL                             R18 1 1
      144 DUPCLOSURE                       R19 K47 [PROTO_0]
      145 DUPCLOSURE                       R20 K48 [PROTO_1]
      146 DUPCLOSURE                       R21 K49 [PROTO_3]
      147 DUPCLOSURE                       R22 K50 [PROTO_4]
      148 DUPCLOSURE                       R23 K51 [PROTO_5]
      149 DUPCLOSURE                       R24 K52 [PROTO_6]
      150 DUPCLOSURE                       R25 K53 [PROTO_7]
      151 CAPTURE                          VAL R23
      152 CAPTURE                          VAL R22
      153 DUPCLOSURE                       R26 K54 [PROTO_8]
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R22
      156 DUPCLOSURE                       R27 K55 [PROTO_9]
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R20
      161 DUPCLOSURE                       R28 K56 [PROTO_16]
      162 CAPTURE                          VAL R14
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R5
      169 CAPTURE                          VAL R23
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R27
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R16
      178 DUPCLOSURE                       R29 K57 [PROTO_20]
      179 CAPTURE                          VAL R4
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R7
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R24
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R16
      188 DUPTABLE                         R30 K68 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "_getOrCreateAnimateScript", "_extractGraphParameters", "_findExistingAnimateScript", "_resolveCharacterForGraph", "_checkScriptExistsForGraph", "_checkScriptExistsInStarterPlayer", "_showConfirmOverwrite"}]
      189 SETTABLEKS                       R16 R30 K58 ["Context"]
      191 SETTABLEKS                       R28 R30 K59 ["EditableDataModelProvider"]
      193 SETTABLEKS                       R29 R30 K60 ["UIDataModelProvider"]
      195 SETTABLEKS                       R27 R30 K61 ["_getOrCreateAnimateScript"]
      197 SETTABLEKS                       R21 R30 K62 ["_extractGraphParameters"]
      199 SETTABLEKS                       R22 R30 K63 ["_findExistingAnimateScript"]
      201 SETTABLEKS                       R23 R30 K64 ["_resolveCharacterForGraph"]
      203 SETTABLEKS                       R25 R30 K65 ["_checkScriptExistsForGraph"]
      205 SETTABLEKS                       R26 R30 K66 ["_checkScriptExistsInStarterPlayer"]
      207 SETTABLEKS                       R24 R30 K67 ["_showConfirmOverwrite"]
      209 RETURN                           R30 1
