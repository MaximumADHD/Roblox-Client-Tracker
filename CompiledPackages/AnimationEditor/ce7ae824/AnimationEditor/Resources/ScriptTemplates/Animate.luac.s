PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+4]
        2 GETIMPORT                        R1 K1 [script]
        4 GETTABLEKS                       R1 R1 K2 ["Parent"]
        6 MOVE                             R0 R1
        7 JUMPIFNOT                        R0 ; [+5]
        8 LOADK                            R3 K3 ["Model"]
        9 NAMECALL                         R1 R0 K4 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R1 K1 [script]
       16 LOADK                            R3 K5 ["IsServerAuthority"]
       17 NAMECALL                         R1 R1 K6 ["GetAttribute"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+4]
       21 GETIMPORT                        R1 K8 [warn]
       23 LOADK                            R2 K9 ["This Animate script was created while Workspace.AuthorityMode was Server. Previewing an unpublished graph only works in Automatic mode — publish the graph, or recreate the Animate script in Automatic mode, to preview."]
       24 CALL                             R1 1 0
       25 LOADK                            R3 K10 ["Humanoid"]
       26 NAMECALL                         R1 R0 K11 ["WaitForChild"]
       28 CALL                             R1 2 1
       29 LOADK                            R4 K12 ["Animator"]
       30 NAMECALL                         R2 R1 K13 ["FindFirstChildOfClass"]
       32 CALL                             R2 2 1
       33 JUMPIF                           R2 ; [+5]
       34 GETIMPORT                        R3 K8 [warn]
       36 LOADK                            R4 K14 ["Animator not found"]
       37 CALL                             R3 1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R3 0
       40 CALL                             R3 0 2
       41 JUMPIFNOT                        R3 ; [+5]
       42 JUMPIFEQKS                       R3 K15 [""] ; [+4]
       44 JUMPIFNOT                        R4 ; [+2]
       45 JUMPIFNOTEQKS                    R4 K15 [""] ; [+6]
       47 GETIMPORT                        R5 K8 [warn]
       49 LOADK                            R6 K16 ["Missing GraphName or CharacterName for Studio preview"]
       50 CALL                             R5 1 0
       51 RETURN                           R0 0
       52 LOADNIL                          R5
       53 GETUPVAL                         R6 1
       54 NAMECALL                         R6 R6 K17 ["IsServer"]
       56 CALL                             R6 1 1
       57 JUMPIFNOT                        R6 ; [+6]
       58 GETUPVAL                         R6 2
       59 MOVE                             R7 R3
       60 MOVE                             R8 R4
       61 CALL                             R6 2 1
       62 MOVE                             R5 R6
       63 JUMP                             ; [+5]
       64 GETUPVAL                         R6 3
       65 MOVE                             R7 R3
       66 MOVE                             R8 R4
       67 CALL                             R6 2 1
       68 MOVE                             R5 R6
       69 JUMPIF                           R5 ; [+1]
       70 RETURN                           R0 0
       71 GETIMPORT                        R6 K20 [Instance.new]
       73 LOADK                            R7 K21 ["Animation"]
       74 CALL                             R6 1 1
       75 SETTABLEKS                       R5 R6 K22 ["AnimationId"]
       77 LOADK                            R9 K23 ["AnimationEditor_GraphAnimation"]
       78 NAMECALL                         R7 R6 K24 ["AddTag"]
       80 CALL                             R7 2 0
       81 GETIMPORT                        R7 K1 [script]
       83 SETTABLEKS                       R7 R6 K2 ["Parent"]
       85 MOVE                             R9 R6
       86 NAMECALL                         R7 R2 K25 ["LoadAnimation"]
       88 CALL                             R7 2 1
       89 NAMECALL                         R8 R7 K26 ["Play"]
       91 CALL                             R8 1 0
       92 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetPlayingAnimationTracks"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 GETTABLEKS                       R5 R4 K1 ["Animation"]
        7 JUMPIFNOT                        R5 ; [+8]
        8 GETTABLEKS                       R5 R4 K1 ["Animation"]
       10 GETTABLEKS                       R5 R5 K2 ["AnimationId"]
       12 GETUPVAL                         R6 1
       13 JUMPIFNOTEQ                      R5 R6 ; [+2]
       15 RETURN                           R4 1
       16 FORGLOOP                         R0 2 ; [-12]
       18 LOADNIL                          R0
       19 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetPlayingAnimationTracks"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["Animation"]
        7 JUMPIFNOT                        R6 ; [+9]
        8 GETTABLEKS                       R6 R5 K1 ["Animation"]
       10 GETTABLEKS                       R6 R6 K2 ["AnimationId"]
       12 GETUPVAL                         R7 1
       13 JUMPIFNOTEQ                      R6 R7 ; [+3]
       15 MOVE                             R0 R5
       16 JUMP                             ; [+3]
       17 FORGLOOP                         R1 2 ; [-13]
       19 LOADNIL                          R0
       20 JUMPIF                           R0 ; [+9]
       21 GETUPVAL                         R1 0
       22 GETUPVAL                         R3 2
       23 NAMECALL                         R1 R1 K3 ["LoadAnimation"]
       25 CALL                             R1 2 1
       26 MOVE                             R0 R1
       27 NAMECALL                         R1 R0 K4 ["Play"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+4]
        2 GETIMPORT                        R1 K1 [script]
        4 GETTABLEKS                       R1 R1 K2 ["Parent"]
        6 MOVE                             R0 R1
        7 JUMPIFNOT                        R0 ; [+5]
        8 LOADK                            R3 K3 ["Model"]
        9 NAMECALL                         R1 R0 K4 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 LOADK                            R3 K5 ["Humanoid"]
       15 NAMECALL                         R1 R0 K6 ["WaitForChild"]
       17 CALL                             R1 2 1
       18 LOADK                            R4 K7 ["Animator"]
       19 NAMECALL                         R2 R1 K8 ["FindFirstChildOfClass"]
       21 CALL                             R2 2 1
       22 JUMPIF                           R2 ; [+5]
       23 GETIMPORT                        R3 K10 [warn]
       25 LOADK                            R4 K11 ["Animator not found"]
       26 CALL                             R3 1 0
       27 RETURN                           R0 0
       28 GETIMPORT                        R3 K1 [script]
       30 LOADK                            R5 K12 ["SourceAssetId"]
       31 NAMECALL                         R3 R3 K13 ["GetAttribute"]
       33 CALL                             R3 2 1
       34 JUMPIFNOT                        R3 ; [+2]
       35 JUMPIFNOTEQKS                    R3 K14 [""] ; [+2]
       37 RETURN                           R0 0
       38 LOADK                            R5 K15 ["rbxassetid://%*"]
       39 MOVE                             R7 R3
       40 NAMECALL                         R5 R5 K16 ["format"]
       42 CALL                             R5 2 1
       43 MOVE                             R4 R5
       44 GETIMPORT                        R5 K19 [Instance.new]
       46 LOADK                            R6 K20 ["Animation"]
       47 CALL                             R5 1 1
       48 SETTABLEKS                       R4 R5 K21 ["AnimationId"]
       50 LOADK                            R8 K22 ["AnimationEditor_GraphAnimation"]
       51 NAMECALL                         R6 R5 K23 ["AddTag"]
       53 CALL                             R6 2 0
       54 GETIMPORT                        R6 K1 [script]
       56 SETTABLEKS                       R6 R5 K2 ["Parent"]
       58 NEWCLOSURE                       R6 P0
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 LOADNIL                          R7
       62 NEWCLOSURE                       R8 P1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 GETUPVAL                         R9 0
       67 MOVE                             R11 R8
       68 GETIMPORT                        R12 K27 [Enum.StepFrequency.Hz60]
       70 LOADN                            R13 1999
       71 NAMECALL                         R9 R9 K28 ["BindToSimulation"]
       73 CALL                             R9 4 1
       74 MOVE                             R7 R9
       75 GETTABLEKS                       R9 R1 K29 ["Died"]
       77 NEWCLOSURE                       R11 P2
       78 CAPTURE                          REF R7
       79 NAMECALL                         R9 R9 K30 ["Once"]
       81 CALL                             R9 2 0
       82 CLOSEUPVALS                      R7
       83 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [script]
        2 LOADK                            R2 K2 ["GraphName"]
        3 NAMECALL                         R0 R0 K3 ["GetAttribute"]
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K1 [script]
        8 LOADK                            R3 K4 ["CharacterName"]
        9 NAMECALL                         R1 R1 K3 ["GetAttribute"]
       11 CALL                             R1 2 1
       12 RETURN                           R0 2

PROTO_6:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["ServerStorage"]
        3 NAMECALL                         R2 R2 K3 ["GetService"]
        5 CALL                             R2 2 1
        6 GETIMPORT                        R3 K1 [game]
        8 LOADK                            R5 K4 ["AnimationClipProvider"]
        9 NAMECALL                         R3 R3 K3 ["GetService"]
       11 CALL                             R3 2 1
       12 LOADK                            R6 K5 ["RBX_ANIMSAVES"]
       13 NAMECALL                         R4 R2 K6 ["FindFirstChild"]
       15 CALL                             R4 2 1
       16 MOVE                             R5 R4
       17 JUMPIFNOT                        R5 ; [+4]
       18 MOVE                             R7 R1
       19 NAMECALL                         R5 R4 K6 ["FindFirstChild"]
       21 CALL                             R5 2 1
       22 MOVE                             R6 R5
       23 JUMPIFNOT                        R6 ; [+4]
       24 MOVE                             R8 R0
       25 NAMECALL                         R6 R5 K6 ["FindFirstChild"]
       27 CALL                             R6 2 1
       28 JUMPIF                           R6 ; [+12]
       29 GETIMPORT                        R7 K8 [warn]
       31 LOADK                            R9 K9 ["Graph \"%*\" not found in ServerStorage.RBX_ANIMSAVES/%*"]
       32 MOVE                             R11 R0
       33 MOVE                             R12 R1
       34 NAMECALL                         R9 R9 K10 ["format"]
       36 CALL                             R9 3 1
       37 MOVE                             R8 R9
       38 CALL                             R7 1 0
       39 LOADNIL                          R7
       40 RETURN                           R7 1
       41 MOVE                             R9 R6
       42 NAMECALL                         R7 R3 K11 ["RegisterAnimationClip"]
       44 CALL                             R7 2 -1
       45 RETURN                           R7 -1

PROTO_7:
        0 GETIMPORT                        R2 K1 [game]
        2 LOADK                            R4 K2 ["ReplicatedStorage"]
        3 NAMECALL                         R2 R2 K3 ["GetService"]
        5 CALL                             R2 2 1
        6 GETIMPORT                        R3 K1 [game]
        8 LOADK                            R5 K4 ["AnimationClipProvider"]
        9 NAMECALL                         R3 R3 K3 ["GetService"]
       11 CALL                             R3 2 1
       12 LOADK                            R6 K5 ["AnimationGraphEditor"]
       13 LOADN                            R7 30
       14 NAMECALL                         R4 R2 K6 ["WaitForChild"]
       16 CALL                             R4 3 1
       17 JUMPIF                           R4 ; [+6]
       18 GETIMPORT                        R5 K8 [warn]
       20 LOADK                            R6 K9 ["AnimationGraphEditor folder not found in ReplicatedStorage"]
       21 CALL                             R5 1 0
       22 LOADNIL                          R5
       23 RETURN                           R5 1
       24 MOVE                             R6 R1
       25 LOADK                            R7 K10 ["_"]
       26 MOVE                             R8 R0
       27 CONCAT                           R5 R6 R8
       28 MOVE                             R8 R5
       29 LOADN                            R9 30
       30 NAMECALL                         R6 R4 K6 ["WaitForChild"]
       32 CALL                             R6 3 1
       33 JUMPIF                           R6 ; [+11]
       34 GETIMPORT                        R7 K8 [warn]
       36 LOADK                            R9 K11 ["Graph clone \"%*\" not found in ReplicatedStorage.AnimationGraphEditor"]
       37 MOVE                             R11 R5
       38 NAMECALL                         R9 R9 K12 ["format"]
       40 CALL                             R9 2 1
       41 MOVE                             R8 R9
       42 CALL                             R7 1 0
       43 LOADNIL                          R7
       44 RETURN                           R7 1
       45 MOVE                             R9 R6
       46 NAMECALL                         R7 R3 K13 ["RegisterAnimationClip"]
       48 CALL                             R7 2 -1
       49 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 2 0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 LOADNIL                          R4
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          REF R2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          REF R3
       16 CAPTURE                          REF R4
       17 SETTABLEKS                       R5 R1 K4 ["setupPreview"]
       19 DUPCLOSURE                       R5 K5 [PROTO_4]
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R5 R1 K6 ["setup"]
       23 DUPCLOSURE                       R2 K7 [PROTO_5]
       24 DUPCLOSURE                       R3 K8 [PROTO_6]
       25 DUPCLOSURE                       R4 K9 [PROTO_7]
       26 CLOSEUPVALS                      R2
       27 RETURN                           R1 1
