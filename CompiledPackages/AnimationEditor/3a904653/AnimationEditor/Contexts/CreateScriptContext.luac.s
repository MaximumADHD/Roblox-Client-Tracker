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
       15 GETUPVAL                         R6 0
       16 CALL                             R6 0 1
       17 JUMPIFNOT                        R6 ; [+35]
       18 LOADK                            R8 K5 ["GraphName"]
       19 MOVE                             R9 R1
       20 NAMECALL                         R6 R0 K6 ["SetAttribute"]
       22 CALL                             R6 3 0
       23 LOADK                            R8 K7 ["CharacterName"]
       24 MOVE                             R9 R2
       25 NAMECALL                         R6 R0 K6 ["SetAttribute"]
       27 CALL                             R6 3 0
       28 LOADK                            R8 K8 ["SourceAssetId"]
       29 MOVE                             R9 R5
       30 NAMECALL                         R6 R0 K6 ["SetAttribute"]
       32 CALL                             R6 3 0
       33 LOADK                            R8 K9 ["IsServerAuthority"]
       34 GETIMPORT                        R10 K11 [workspace]
       36 GETTABLEKS                       R10 R10 K12 ["AuthorityMode"]
       38 GETIMPORT                        R11 K15 [Enum.AuthorityMode.Server]
       40 JUMPIFEQ                         R10 R11 ; [+2]
       42 LOADB                            R9 0 +1
       43 LOADB                            R9 1
       44 NAMECALL                         R6 R0 K6 ["SetAttribute"]
       46 CALL                             R6 3 0
       47 LOADK                            R8 K16 ["PreviewInStudio"]
       48 LOADB                            R9 1
       49 NAMECALL                         R6 R0 K6 ["SetAttribute"]
       51 CALL                             R6 3 0
       52 RETURN                           R0 0
       53 LOADK                            R8 K5 ["GraphName"]
       54 NAMECALL                         R6 R0 K17 ["FindFirstChild"]
       56 CALL                             R6 2 1
       57 JUMPIFNOT                        R6 ; [+8]
       58 LOADK                            R9 K18 ["StringValue"]
       59 NAMECALL                         R7 R6 K19 ["IsA"]
       61 CALL                             R7 2 1
       62 JUMPIFNOT                        R7 ; [+3]
       63 SETTABLEKS                       R1 R6 K20 ["Value"]
       65 JUMP                             ; [+11]
       66 GETIMPORT                        R7 K23 [Instance.new]
       68 LOADK                            R8 K18 ["StringValue"]
       69 CALL                             R7 1 1
       70 LOADK                            R8 K5 ["GraphName"]
       71 SETTABLEKS                       R8 R7 K24 ["Name"]
       73 SETTABLEKS                       R1 R7 K20 ["Value"]
       75 SETTABLEKS                       R0 R7 K25 ["Parent"]
       77 LOADK                            R8 K7 ["CharacterName"]
       78 NAMECALL                         R6 R0 K17 ["FindFirstChild"]
       80 CALL                             R6 2 1
       81 JUMPIFNOT                        R6 ; [+8]
       82 LOADK                            R9 K18 ["StringValue"]
       83 NAMECALL                         R7 R6 K19 ["IsA"]
       85 CALL                             R7 2 1
       86 JUMPIFNOT                        R7 ; [+3]
       87 SETTABLEKS                       R2 R6 K20 ["Value"]
       89 JUMP                             ; [+11]
       90 GETIMPORT                        R7 K23 [Instance.new]
       92 LOADK                            R8 K18 ["StringValue"]
       93 CALL                             R7 1 1
       94 LOADK                            R8 K7 ["CharacterName"]
       95 SETTABLEKS                       R8 R7 K24 ["Name"]
       97 SETTABLEKS                       R2 R7 K20 ["Value"]
       99 SETTABLEKS                       R0 R7 K25 ["Parent"]
      101 LOADK                            R8 K8 ["SourceAssetId"]
      102 NAMECALL                         R6 R0 K17 ["FindFirstChild"]
      104 CALL                             R6 2 1
      105 JUMPIFNOT                        R6 ; [+8]
      106 LOADK                            R9 K18 ["StringValue"]
      107 NAMECALL                         R7 R6 K19 ["IsA"]
      109 CALL                             R7 2 1
      110 JUMPIFNOT                        R7 ; [+3]
      111 SETTABLEKS                       R5 R6 K20 ["Value"]
      113 RETURN                           R0 0
      114 GETIMPORT                        R7 K23 [Instance.new]
      116 LOADK                            R8 K18 ["StringValue"]
      117 CALL                             R7 1 1
      118 LOADK                            R8 K8 ["SourceAssetId"]
      119 SETTABLEKS                       R8 R7 K24 ["Name"]
      121 SETTABLEKS                       R5 R7 K20 ["Value"]
      123 SETTABLEKS                       R0 R7 K25 ["Parent"]
      125 RETURN                           R0 0

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
        4 GETTABLEKS                       R6 R5 K1 ["Name"]
        6 JUMPIFNOTEQKS                    R6 K2 ["Animate"] ; [+16]
        8 LOADK                            R8 K3 ["BaseScript"]
        9 NAMECALL                         R6 R5 K4 ["IsA"]
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+1]
       13 RETURN                           R5 1
       14 GETUPVAL                         R6 0
       15 CALL                             R6 0 1
       16 JUMPIFNOT                        R6 ; [+6]
       17 LOADK                            R8 K5 ["ModuleScript"]
       18 NAMECALL                         R6 R5 K4 ["IsA"]
       20 CALL                             R6 2 1
       21 JUMPIFNOT                        R6 ; [+1]
       22 RETURN                           R5 1
       23 FORGLOOP                         R1 2 ; [-20]
       25 LOADNIL                          R1
       26 RETURN                           R1 1

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
       14 DUPTABLE                         R3 K4 [{["exists"], ["targetName"] = "StarterCharacterScripts"}]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 LOADB                            R4 0 +1
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K2 ["exists"]
       21 RETURN                           R3 1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 JUMPIFNOT                        R4 ; [+4]
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R4
        3 CALL                             R5 1 1
        4 JUMP                             ; [+2]
        5 NEWTABLE                         R5 0 0
        7 NAMECALL                         R6 R0 K0 ["GetChildren"]
        9 CALL                             R6 1 3
       10 FORGPREP                         R6
       11 GETTABLEKS                       R11 R10 K1 ["Name"]
       13 JUMPIFNOTEQKS                    R11 K2 ["Animate"] ; [+20]
       15 LOADK                            R13 K3 ["BaseScript"]
       16 NAMECALL                         R11 R10 K4 ["IsA"]
       18 CALL                             R11 2 1
       19 JUMPIFNOT                        R11 ; [+3]
       20 NAMECALL                         R11 R10 K5 ["Destroy"]
       22 CALL                             R11 1 0
       23 GETUPVAL                         R11 1
       24 CALL                             R11 0 1
       25 JUMPIFNOT                        R11 ; [+8]
       26 LOADK                            R13 K6 ["ModuleScript"]
       27 NAMECALL                         R11 R10 K4 ["IsA"]
       29 CALL                             R11 2 1
       30 JUMPIFNOT                        R11 ; [+3]
       31 NAMECALL                         R11 R10 K5 ["Destroy"]
       33 CALL                             R11 1 0
       34 FORGLOOP                         R6 2 ; [-24]
       36 GETIMPORT                        R7 K8 [workspace]
       38 GETTABLEKS                       R7 R7 K9 ["AuthorityMode"]
       40 GETIMPORT                        R8 K12 [Enum.AuthorityMode.Server]
       42 JUMPIFEQ                         R7 R8 ; [+2]
       44 LOADB                            R6 0 +1
       45 LOADB                            R6 1
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K13 ["getActiveTemplateSet"]
       49 MOVE                             R8 R1
       50 MOVE                             R9 R5
       51 MOVE                             R10 R6
       52 CALL                             R7 3 1
       53 LOADNIL                          R8
       54 MOVE                             R9 R7
       55 LOADNIL                          R10
       56 LOADNIL                          R11
       57 FORGPREP                         R9
       58 GETUPVAL                         R14 3
       59 MOVE                             R15 R13
       60 CALL                             R14 1 1
       61 GETTABLEKS                       R15 R13 K14 ["isRoot"]
       63 JUMPIFNOT                        R15 ; [+1]
       64 MOVE                             R8 R14
       65 SETTABLEKS                       R0 R14 K15 ["Parent"]
       67 FORGLOOP                         R9 2 ; [-10]
       69 FASTCALL2K                       ASSERT R8 K16 ; [+5]
       71 MOVE                             R10 R8
       72 LOADK                            R11 K16 ["[CreateScriptContext] Template set must contain a root descriptor"]
       73 GETIMPORT                        R9 K18 [assert]
       75 CALL                             R9 2 0
       76 GETUPVAL                         R9 4
       77 MOVE                             R10 R8
       78 MOVE                             R11 R2
       79 MOVE                             R12 R3
       80 MOVE                             R13 R4
       81 CALL                             R9 4 0
       82 GETUPVAL                         R9 1
       83 CALL                             R9 0 1
       84 JUMPIFNOT                        R9 ; [+2]
       85 GETUPVAL                         R9 5
       86 CALL                             R9 0 0
       87 RETURN                           R8 1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 DUPTABLE                         R0 K3 [{"canCreateScript", "createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["canCreateScript"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["createScriptForSelectedGraphAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createScriptForStarterPlayerAsync"]
       10 RETURN                           R0 1

PROTO_18:
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
      160 LOADK                            R13 K11 ["CreateScriptContext_CheckScriptExistsForSelectedGraph"]
      161 MOVE                             R14 R8
      162 CALL                             R12 2 0
      163 GETUPVAL                         R12 13
      164 GETTABLEKS                       R12 R12 K10 ["useBoundAction"]
      166 LOADK                            R13 K12 ["CreateScriptContext_CheckScriptExistsForStarterPlayer"]
      167 MOVE                             R14 R9
      168 CALL                             R12 2 0
      169 GETUPVAL                         R12 13
      170 GETTABLEKS                       R12 R12 K10 ["useBoundAction"]
      172 LOADK                            R13 K13 ["CreateScriptContext_CreateScriptForSelectedGraphAsync"]
      173 MOVE                             R14 R6
      174 CALL                             R12 2 0
      175 GETUPVAL                         R12 13
      176 GETTABLEKS                       R12 R12 K10 ["useBoundAction"]
      178 LOADK                            R13 K14 ["CreateScriptContext_CreateScriptForStarterPlayerAsync"]
      179 MOVE                             R14 R7
      180 CALL                             R12 2 0
      181 GETUPVAL                         R12 1
      182 GETTABLEKS                       R12 R12 K15 ["createElement"]
      184 GETUPVAL                         R13 14
      185 GETTABLEKS                       R13 R13 K16 ["Provider"]
      187 DUPTABLE                         R14 K18 [{"value"}]
      188 SETTABLEKS                       R11 R14 K17 ["value"]
      190 GETTABLEKS                       R15 R0 K19 ["children"]
      192 CALL                             R12 3 -1
      193 CLOSEUPVALS                      R10
      194 RETURN                           R12 -1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 DUPTABLE                         R0 K3 [{"canCreateScript", "createScriptForSelectedGraphAsync", "createScriptForStarterPlayerAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["canCreateScript"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["createScriptForSelectedGraphAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createScriptForStarterPlayerAsync"]
       10 RETURN                           R0 1

PROTO_22:
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
       23 LOADK                            R4 K6 ["CreateScriptContext_CheckScriptExistsForSelectedGraph"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K5 ["useBoundAction"]
       28 LOADK                            R5 K7 ["CreateScriptContext_CheckScriptExistsForStarterPlayer"]
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K5 ["useBoundAction"]
       33 LOADK                            R6 K8 ["CreateScriptContext_CreateScriptForSelectedGraphAsync"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R6 R6 K5 ["useBoundAction"]
       38 LOADK                            R7 K9 ["CreateScriptContext_CreateScriptForStarterPlayerAsync"]
       39 CALL                             R6 1 1
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K10 ["useCallback"]
       43 NEWCLOSURE                       R8 P0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 NEWTABLE                         R9 0 4
       51 MOVE                             R10 R3
       52 MOVE                             R11 R5
       53 GETTABLEKS                       R12 R0 K11 ["plugin"]
       55 MOVE                             R13 R1
       56 SETLIST                          R9 R10 4 [1]
       58 CALL                             R7 2 1
       59 GETUPVAL                         R8 2
       60 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       62 NEWCLOSURE                       R9 P1
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R6
       68 NEWTABLE                         R10 0 4
       70 MOVE                             R11 R4
       71 MOVE                             R12 R6
       72 GETTABLEKS                       R13 R0 K11 ["plugin"]
       74 MOVE                             R14 R1
       75 SETLIST                          R10 R11 4 [1]
       77 CALL                             R8 2 1
       78 LOADNIL                          R9
       79 GETUPVAL                         R10 1
       80 CALL                             R10 0 1
       81 JUMPIFNOT                        R10 ; [+10]
       82 GETUPVAL                         R10 6
       83 GETTABLEKS                       R10 R10 K12 ["useConsumer"]
       85 LOADB                            R11 0
       86 CALL                             R10 1 1
       87 MOVE                             R9 R10
       88 GETTABLEKS                       R10 R2 K13 ["isPreviewRunning"]
       90 JUMPIFNOT                        R10 ; [+1]
       91 LOADB                            R9 0
       92 GETUPVAL                         R10 2
       93 GETTABLEKS                       R10 R10 K14 ["useMemo"]
       95 NEWCLOSURE                       R11 P2
       96 CAPTURE                          REF R9
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R8
       99 NEWTABLE                         R12 0 3
      101 MOVE                             R13 R9
      102 MOVE                             R14 R7
      103 MOVE                             R15 R8
      104 SETLIST                          R12 R13 3 [1]
      106 CALL                             R10 2 1
      107 GETUPVAL                         R11 2
      108 GETTABLEKS                       R11 R11 K15 ["createElement"]
      110 GETUPVAL                         R12 7
      111 GETTABLEKS                       R12 R12 K16 ["Provider"]
      113 DUPTABLE                         R13 K18 [{"value"}]
      114 SETTABLEKS                       R10 R13 K17 ["value"]
      116 GETTABLEKS                       R14 R0 K19 ["children"]
      118 CALL                             R11 3 -1
      119 CLOSEUPVALS                      R9
      120 RETURN                           R11 -1

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
       47 GETTABLEKS                       R8 R0 K15 ["Contexts"]
       49 GETTABLEKS                       R8 R8 K17 ["NativeGraphContext"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K12 [require]
       54 GETTABLEKS                       R9 R0 K18 ["Util"]
       56 GETTABLEKS                       R9 R9 K19 ["Networking"]
       58 GETTABLEKS                       R9 R9 K20 ["NetworkUtils"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K12 [require]
       63 GETTABLEKS                       R10 R0 K13 ["Parent"]
       65 GETTABLEKS                       R10 R10 K21 ["React"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K12 [require]
       70 GETTABLEKS                       R11 R0 K13 ["Parent"]
       72 GETTABLEKS                       R11 R11 K22 ["ReactUtils"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K12 [require]
       77 GETTABLEKS                       R12 R0 K23 ["Resources"]
       79 GETTABLEKS                       R12 R12 K24 ["ScriptTemplates"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K12 [require]
       84 GETTABLEKS                       R13 R0 K15 ["Contexts"]
       86 GETTABLEKS                       R13 R13 K25 ["SelectedGraphContext"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K12 [require]
       91 GETTABLEKS                       R14 R0 K15 ["Contexts"]
       93 GETTABLEKS                       R14 R14 K26 ["SelectionServiceContext"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K12 [require]
       98 GETTABLEKS                       R15 R0 K13 ["Parent"]
      100 GETTABLEKS                       R15 R15 K27 ["SignalsReact"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K12 [require]
      105 GETTABLEKS                       R16 R0 K28 ["Flags"]
      107 GETTABLEKS                       R16 R16 K29 ["getFFlagAnimGraphCreateSAScript"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K12 [require]
      112 GETTABLEKS                       R17 R0 K28 ["Flags"]
      114 GETTABLEKS                       R17 R17 K30 ["getFFlagAnimGraphUI_RunTimeDebug"]
      116 CALL                             R16 1 1
      117 DUPTABLE                         R17 K35 [{["canCreateScript"] = False, ["createScriptForSelectedGraphAsync"], ["createScriptForStarterPlayerAsync"]}]
      118 GETTABLEKS                       R18 R10 K36 ["createUnimplemented"]
      120 LOADK                            R19 K33 ["createScriptForSelectedGraphAsync"]
      121 CALL                             R18 1 1
      122 SETTABLEKS                       R18 R17 K33 ["createScriptForSelectedGraphAsync"]
      124 GETTABLEKS                       R18 R10 K36 ["createUnimplemented"]
      126 LOADK                            R19 K34 ["createScriptForStarterPlayerAsync"]
      127 CALL                             R18 1 1
      128 SETTABLEKS                       R18 R17 K34 ["createScriptForStarterPlayerAsync"]
      130 GETTABLEKS                       R18 R9 K37 ["createContext"]
      132 MOVE                             R19 R17
      133 CALL                             R18 1 1
      134 DUPTABLE                         R19 K46 [{["CREATE_SCRIPT_FOR_SELECTED_GRAPH"] = "CreateScriptContext_CreateScriptForSelectedGraphAsync", ["CREATE_SCRIPT_FOR_STARTER_PLAYER"] = "CreateScriptContext_CreateScriptForStarterPlayerAsync", ["CHECK_SCRIPT_EXISTS_FOR_SELECTED_GRAPH"] = "CreateScriptContext_CheckScriptExistsForSelectedGraph", ["CHECK_SCRIPT_EXISTS_FOR_STARTER_PLAYER"] = "CreateScriptContext_CheckScriptExistsForStarterPlayer"}]
      135 GETTABLEKS                       R20 R8 K47 ["createReplicatedState"]
      137 LOADK                            R21 K48 ["CreateScriptContext_CanCreateScript"]
      138 CALL                             R20 1 1
      139 DUPCLOSURE                       R21 K49 [PROTO_0]
      140 DUPCLOSURE                       R22 K50 [PROTO_1]
      141 CAPTURE                          VAL R15
      142 DUPCLOSURE                       R23 K51 [PROTO_3]
      143 DUPCLOSURE                       R24 K52 [PROTO_4]
      144 CAPTURE                          VAL R15
      145 DUPCLOSURE                       R25 K53 [PROTO_5]
      146 DUPCLOSURE                       R26 K54 [PROTO_6]
      147 DUPCLOSURE                       R27 K55 [PROTO_7]
      148 CAPTURE                          VAL R25
      149 CAPTURE                          VAL R24
      150 DUPCLOSURE                       R28 K56 [PROTO_8]
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R24
      153 DUPCLOSURE                       R29 K57 [PROTO_9]
      154 CAPTURE                          VAL R29
      155 DUPCLOSURE                       R30 K58 [PROTO_10]
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R3
      159 DUPCLOSURE                       R31 K59 [PROTO_11]
      160 CAPTURE                          VAL R23
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R29
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R30
      166 DUPCLOSURE                       R32 K60 [PROTO_18]
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R25
      175 CAPTURE                          VAL R1
      176 CAPTURE                          VAL R31
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R24
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R18
      182 DUPCLOSURE                       R33 K61 [PROTO_22]
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R16
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R26
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R18
      191 DUPTABLE                         R34 K72 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "_getOrCreateAnimateScript", "_extractGraphParameters", "_findExistingAnimateScript", "_resolveCharacterForGraph", "_checkScriptExistsForGraph", "_checkScriptExistsInStarterPlayer", "_showConfirmOverwrite"}]
      192 SETTABLEKS                       R18 R34 K62 ["Context"]
      194 SETTABLEKS                       R32 R34 K63 ["EditableDataModelProvider"]
      196 SETTABLEKS                       R33 R34 K64 ["UIDataModelProvider"]
      198 SETTABLEKS                       R31 R34 K65 ["_getOrCreateAnimateScript"]
      200 SETTABLEKS                       R23 R34 K66 ["_extractGraphParameters"]
      202 SETTABLEKS                       R24 R34 K67 ["_findExistingAnimateScript"]
      204 SETTABLEKS                       R25 R34 K68 ["_resolveCharacterForGraph"]
      206 SETTABLEKS                       R27 R34 K69 ["_checkScriptExistsForGraph"]
      208 SETTABLEKS                       R28 R34 K70 ["_checkScriptExistsInStarterPlayer"]
      210 SETTABLEKS                       R26 R34 K71 ["_showConfirmOverwrite"]
      212 RETURN                           R34 1
