PROTO_0:
        0 GETUPVAL                         R4 0
        1 LOADK                            R6 K0 ["CreateGraphContext.createGraphFromIdAsync"]
        2 LOADK                            R7 K1 ["Import graph from Roblox"]
        3 NAMECALL                         R4 R4 K2 ["TryBeginRecording"]
        5 CALL                             R4 3 1
        6 LOADK                            R7 K3 ["AnimationGraphDefinition"]
        7 NAMECALL                         R5 R1 K4 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIFNOT                        R5 ; [+47]
       11 LOADK                            R8 K5 ["Model"]
       12 NAMECALL                         R6 R2 K4 ["IsA"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+2]
       16 MOVE                             R5 R2
       17 JUMP                             ; [+4]
       18 LOADK                            R7 K5 ["Model"]
       19 NAMECALL                         R5 R2 K6 ["FindFirstAncestorWhichIsA"]
       21 CALL                             R5 2 1
       22 JUMPIFNOTEQKNIL                  R5 ; [+2]
       24 RETURN                           R0 0
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K7 ["getOrCreateAnimSavesFolder"]
       28 MOVE                             R7 R5
       29 CALL                             R6 1 1
       30 JUMPIFNOTEQKNIL                  R6 ; [+2]
       32 LOADB                            R8 0 +1
       33 LOADB                            R8 1
       34 FASTCALL2K                       ASSERT R8 K8 ; [+4]
       36 LOADK                            R9 K8 ["Couldn't create animation saves folder"]
       37 GETIMPORT                        R7 K10 [assert]
       39 CALL                             R7 2 0
       40 GETUPVAL                         R7 2
       41 MOVE                             R8 R6
       42 GETTABLEKS                       R9 R1 K11 ["Name"]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R1 K11 ["Name"]
       47 SETTABLEKS                       R6 R1 K12 ["Parent"]
       49 NEWTABLE                         R9 0 1
       51 MOVE                             R10 R1
       52 SETLIST                          R9 R10 1 [1]
       54 NAMECALL                         R7 R3 K13 ["Set"]
       56 CALL                             R7 2 0
       57 JUMP                             ; [+65]
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R5 R6 K14 ["createNewAnimationGraph"]
       61 MOVE                             R6 R2
       62 GETTABLEKS                       R7 R1 K11 ["Name"]
       64 CALL                             R5 2 1
       65 JUMPIFNOTEQKNIL                  R5 ; [+2]
       67 LOADB                            R7 0 +1
       68 LOADB                            R7 1
       69 FASTCALL2K                       ASSERT R7 K15 ; [+4]
       71 LOADK                            R8 K15 ["Couldn't create graph"]
       72 GETIMPORT                        R6 K10 [assert]
       74 CALL                             R6 2 0
       75 LOADK                            R8 K16 ["GraphOutput"]
       76 NAMECALL                         R6 R5 K17 ["FindFirstChild"]
       78 CALL                             R6 2 1
       79 JUMPIFNOTEQKNIL                  R6 ; [+2]
       81 LOADB                            R8 0 +1
       82 LOADB                            R8 1
       83 FASTCALL2K                       ASSERT R8 K18 ; [+4]
       85 LOADK                            R9 K18 ["No GraphOutput"]
       86 GETIMPORT                        R7 K10 [assert]
       88 CALL                             R7 2 0
       89 GETUPVAL                         R8 3
       90 GETTABLEKS                       R7 R8 K19 ["createNodeOfType"]
       92 GETIMPORT                        R8 K23 [Enum.AnimationNodeType.ClipNode]
       94 GETIMPORT                        R9 K26 [Vector2.new]
       96 LOADN                            R10 6
       97 LOADN                            R11 0
       98 CALL                             R9 2 1
       99 MOVE                             R10 R5
      100 CALL                             R7 3 1
      101 LOADK                            R10 K27 ["AnimationId"]
      102 MOVE                             R11 R0
      103 NAMECALL                         R8 R7 K28 ["SetAttribute"]
      105 CALL                             R8 3 0
      106 GETIMPORT                        R8 K30 [Instance.new]
      108 LOADK                            R9 K31 ["ObjectValue"]
      109 CALL                             R8 1 1
      110 LOADK                            R9 K32 ["Pose"]
      111 SETTABLEKS                       R9 R8 K11 ["Name"]
      113 SETTABLEKS                       R7 R8 K12 ["Parent"]
      115 NEWTABLE                         R11 0 1
      117 MOVE                             R12 R5
      118 SETLIST                          R11 R12 1 [1]
      120 NAMECALL                         R9 R3 K13 ["Set"]
      122 CALL                             R9 2 0
      123 JUMPIFNOT                        R4 ; [+7]
      124 GETUPVAL                         R5 0
      125 MOVE                             R7 R4
      126 GETIMPORT                        R8 K35 [Enum.FinishRecordingOperation.Commit]
      128 NAMECALL                         R5 R5 K36 ["FinishRecording"]
      130 CALL                             R5 3 0
      131 RETURN                           R0 0

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
       15 GETTABLEKS                       R5 R1 K10 ["Util"]
       17 GETTABLEKS                       R4 R5 K11 ["Rig"]
       19 GETTABLEKS                       R3 R4 K12 ["AnimationRigDataUtils"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R1 K13 ["Contexts"]
       26 GETTABLEKS                       R5 R6 K14 ["NativeGraphContext"]
       28 GETTABLEKS                       R4 R5 K15 ["NativeGraphUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R6 R1 K10 ["Util"]
       35 GETTABLEKS                       R5 R6 K16 ["getDeduplicatedName"]
       37 CALL                             R4 1 1
       38 DUPCLOSURE                       R5 K17 [PROTO_0]
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 RETURN                           R5 1
