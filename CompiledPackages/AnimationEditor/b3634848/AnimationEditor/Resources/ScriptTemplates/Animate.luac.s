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
       33 JUMPIF                           R2 ; [+31]
       34 GETUPVAL                         R3 0
       35 NAMECALL                         R3 R3 K14 ["IsServer"]
       37 CALL                             R3 1 1
       38 JUMPIFNOT                        R3 ; [+11]
       39 GETIMPORT                        R3 K17 [Instance.new]
       41 LOADK                            R4 K12 ["Animator"]
       42 CALL                             R3 1 1
       43 MOVE                             R2 R3
       44 LOADK                            R3 K12 ["Animator"]
       45 SETTABLEKS                       R3 R2 K18 ["Name"]
       47 SETTABLEKS                       R1 R2 K2 ["Parent"]
       49 JUMP                             ; [+15]
       50 LOADK                            R5 K12 ["Animator"]
       51 NAMECALL                         R3 R1 K11 ["WaitForChild"]
       53 CALL                             R3 2 1
       54 MOVE                             R2 R3
       55 LOADK                            R6 K12 ["Animator"]
       56 NAMECALL                         R4 R2 K4 ["IsA"]
       58 CALL                             R4 2 1
       59 FASTCALL2K                       ASSERT R4 K19 ; [+4]
       61 LOADK                            R5 K19 ["Animator is not an Animator"]
       62 GETIMPORT                        R3 K21 [assert]
       64 CALL                             R3 2 0
       65 JUMPIF                           R2 ; [+5]
       66 GETIMPORT                        R3 K8 [warn]
       68 LOADK                            R4 K22 ["Animator not found"]
       69 CALL                             R3 1 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R3 1
       72 CALL                             R3 0 2
       73 JUMPIFNOT                        R3 ; [+5]
       74 JUMPIFEQKS                       R3 K23 [""] ; [+4]
       76 JUMPIFNOT                        R4 ; [+2]
       77 JUMPIFNOTEQKS                    R4 K23 [""] ; [+6]
       79 GETIMPORT                        R5 K8 [warn]
       81 LOADK                            R6 K24 ["Missing GraphName or CharacterName for Studio preview"]
       82 CALL                             R5 1 0
       83 RETURN                           R0 0
       84 LOADNIL                          R5
       85 GETUPVAL                         R6 0
       86 NAMECALL                         R6 R6 K14 ["IsServer"]
       88 CALL                             R6 1 1
       89 JUMPIFNOT                        R6 ; [+6]
       90 GETUPVAL                         R6 2
       91 MOVE                             R7 R3
       92 MOVE                             R8 R4
       93 CALL                             R6 2 1
       94 MOVE                             R5 R6
       95 JUMP                             ; [+5]
       96 GETUPVAL                         R6 3
       97 MOVE                             R7 R3
       98 MOVE                             R8 R4
       99 CALL                             R6 2 1
      100 MOVE                             R5 R6
      101 JUMPIF                           R5 ; [+1]
      102 RETURN                           R0 0
      103 GETIMPORT                        R6 K17 [Instance.new]
      105 LOADK                            R7 K25 ["Animation"]
      106 CALL                             R6 1 1
      107 SETTABLEKS                       R5 R6 K26 ["AnimationId"]
      109 LOADK                            R9 K27 ["AnimationEditor_GraphAnimation"]
      110 NAMECALL                         R7 R6 K28 ["AddTag"]
      112 CALL                             R7 2 0
      113 GETIMPORT                        R7 K1 [script]
      115 SETTABLEKS                       R7 R6 K2 ["Parent"]
      117 MOVE                             R9 R6
      118 NAMECALL                         R7 R2 K29 ["LoadAnimation"]
      120 CALL                             R7 2 1
      121 NAMECALL                         R8 R7 K30 ["Play"]
      123 CALL                             R8 1 0
      124 RETURN                           R0 0

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
       22 JUMPIF                           R2 ; [+31]
       23 GETUPVAL                         R3 0
       24 NAMECALL                         R3 R3 K9 ["IsServer"]
       26 CALL                             R3 1 1
       27 JUMPIFNOT                        R3 ; [+11]
       28 GETIMPORT                        R3 K12 [Instance.new]
       30 LOADK                            R4 K7 ["Animator"]
       31 CALL                             R3 1 1
       32 MOVE                             R2 R3
       33 LOADK                            R3 K7 ["Animator"]
       34 SETTABLEKS                       R3 R2 K13 ["Name"]
       36 SETTABLEKS                       R1 R2 K2 ["Parent"]
       38 JUMP                             ; [+15]
       39 LOADK                            R5 K7 ["Animator"]
       40 NAMECALL                         R3 R1 K6 ["WaitForChild"]
       42 CALL                             R3 2 1
       43 MOVE                             R2 R3
       44 LOADK                            R6 K7 ["Animator"]
       45 NAMECALL                         R4 R2 K4 ["IsA"]
       47 CALL                             R4 2 1
       48 FASTCALL2K                       ASSERT R4 K14 ; [+4]
       50 LOADK                            R5 K14 ["Animator is not an Animator"]
       51 GETIMPORT                        R3 K16 [assert]
       53 CALL                             R3 2 0
       54 JUMPIF                           R2 ; [+6]
       55 GETIMPORT                        R3 K18 [warn]
       57 LOADK                            R4 K19 ["Animator not found"]
       58 CALL                             R3 1 0
       59 CLOSEUPVALS                      R2
       60 RETURN                           R0 0
       61 GETIMPORT                        R3 K1 [script]
       63 LOADK                            R5 K20 ["SourceAssetId"]
       64 NAMECALL                         R3 R3 K21 ["GetAttribute"]
       66 CALL                             R3 2 1
       67 JUMPIFNOT                        R3 ; [+2]
       68 JUMPIFNOTEQKS                    R3 K22 [""] ; [+3]
       70 CLOSEUPVALS                      R2
       71 RETURN                           R0 0
       72 LOADK                            R5 K23 ["rbxassetid://%*"]
       73 MOVE                             R7 R3
       74 NAMECALL                         R5 R5 K24 ["format"]
       76 CALL                             R5 2 1
       77 MOVE                             R4 R5
       78 GETIMPORT                        R5 K12 [Instance.new]
       80 LOADK                            R6 K25 ["Animation"]
       81 CALL                             R5 1 1
       82 SETTABLEKS                       R4 R5 K26 ["AnimationId"]
       84 LOADK                            R8 K27 ["AnimationEditor_GraphAnimation"]
       85 NAMECALL                         R6 R5 K28 ["AddTag"]
       87 CALL                             R6 2 0
       88 GETIMPORT                        R6 K1 [script]
       90 SETTABLEKS                       R6 R5 K2 ["Parent"]
       92 NEWCLOSURE                       R6 P0
       93 CAPTURE                          REF R2
       94 CAPTURE                          VAL R4
       95 LOADNIL                          R7
       96 NEWCLOSURE                       R8 P1
       97 CAPTURE                          REF R2
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 GETUPVAL                         R9 0
      101 MOVE                             R11 R8
      102 GETIMPORT                        R12 K32 [Enum.StepFrequency.Hz60]
      104 LOADN                            R13 1999
      105 NAMECALL                         R9 R9 K33 ["BindToSimulation"]
      107 CALL                             R9 4 1
      108 MOVE                             R7 R9
      109 GETTABLEKS                       R9 R1 K34 ["Died"]
      111 NEWCLOSURE                       R11 P2
      112 CAPTURE                          REF R7
      113 NAMECALL                         R9 R9 K35 ["Once"]
      115 CALL                             R9 2 0
      116 CLOSEUPVALS                      R2
      117 RETURN                           R0 0

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
       13 CAPTURE                          VAL R0
       14 CAPTURE                          REF R2
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
