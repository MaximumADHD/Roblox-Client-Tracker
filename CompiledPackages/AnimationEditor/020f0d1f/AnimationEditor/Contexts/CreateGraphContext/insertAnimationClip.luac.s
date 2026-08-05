PROTO_0:
        0 GETUPVAL                         R4 0
        1 LOADK                            R6 K0 ["CreateGraphContext.createGraphFromIdAsync"]
        2 LOADK                            R7 K1 ["Import graph from Roblox"]
        3 NAMECALL                         R4 R4 K2 ["TryBeginRecording"]
        5 CALL                             R4 3 1
        6 LOADK                            R7 K3 ["AnimationGraphDefinition"]
        7 NAMECALL                         R5 R1 K4 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIFNOT                        R5 ; [+49]
       11 LOADNIL                          R5
       12 GETUPVAL                         R6 1
       13 CALL                             R6 0 1
       14 JUMPIFNOT                        R6 ; [+7]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K5 ["getOrCreateParentForNewGraph"]
       18 MOVE                             R7 R2
       19 CALL                             R6 1 1
       20 MOVE                             R5 R6
       21 JUMP                             ; [+20]
       22 LOADK                            R9 K6 ["Model"]
       23 NAMECALL                         R7 R2 K4 ["IsA"]
       25 CALL                             R7 2 1
       26 JUMPIFNOT                        R7 ; [+2]
       27 MOVE                             R6 R2
       28 JUMP                             ; [+4]
       29 LOADK                            R8 K6 ["Model"]
       30 NAMECALL                         R6 R2 K7 ["FindFirstAncestorWhichIsA"]
       32 CALL                             R6 2 1
       33 JUMPIFNOTEQKNIL                  R6 ; [+2]
       35 RETURN                           R0 0
       36 GETUPVAL                         R7 3
       37 GETTABLEKS                       R7 R7 K8 ["getOrCreateAnimSavesFolder"]
       39 MOVE                             R8 R6
       40 CALL                             R7 1 1
       41 MOVE                             R5 R7
       42 GETUPVAL                         R6 4
       43 MOVE                             R7 R5
       44 GETTABLEKS                       R8 R1 K9 ["Name"]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R1 K9 ["Name"]
       49 SETTABLEKS                       R5 R1 K10 ["Parent"]
       51 NEWTABLE                         R8 0 1
       53 MOVE                             R9 R1
       54 SETLIST                          R8 R9 1 [1]
       56 NAMECALL                         R6 R3 K11 ["Set"]
       58 CALL                             R6 2 0
       59 JUMP                             ; [+67]
       60 GETUPVAL                         R5 2
       61 GETTABLEKS                       R5 R5 K12 ["createNewAnimationGraph"]
       63 MOVE                             R6 R2
       64 GETTABLEKS                       R7 R1 K9 ["Name"]
       66 CALL                             R5 2 1
       67 JUMPIFNOTEQKNIL                  R5 ; [+2]
       69 LOADB                            R7 0 +1
       70 LOADB                            R7 1
       71 FASTCALL2K                       ASSERT R7 K13 ; [+4]
       73 LOADK                            R8 K13 ["Couldn't create graph"]
       74 GETIMPORT                        R6 K15 [assert]
       76 CALL                             R6 2 0
       77 LOADK                            R8 K16 ["GraphOutput"]
       78 NAMECALL                         R6 R5 K17 ["FindFirstChild"]
       80 CALL                             R6 2 1
       81 JUMPIFNOTEQKNIL                  R6 ; [+2]
       83 LOADB                            R8 0 +1
       84 LOADB                            R8 1
       85 FASTCALL2K                       ASSERT R8 K18 ; [+4]
       87 LOADK                            R9 K18 ["No GraphOutput"]
       88 GETIMPORT                        R7 K15 [assert]
       90 CALL                             R7 2 0
       91 GETUPVAL                         R7 2
       92 GETTABLEKS                       R7 R7 K19 ["createNodeOfType"]
       94 GETIMPORT                        R8 K23 [Enum.AnimationNodeType.ClipNode]
       96 GETIMPORT                        R9 K26 [Vector2.new]
       98 LOADN                            R10 -250
       99 LOADN                            R11 0
      100 CALL                             R9 2 1
      101 MOVE                             R10 R5
      102 CALL                             R7 3 1
      103 LOADK                            R10 K27 ["AnimationId"]
      104 MOVE                             R11 R0
      105 NAMECALL                         R8 R7 K28 ["SetAttribute"]
      107 CALL                             R8 3 0
      108 GETIMPORT                        R8 K30 [Instance.new]
      110 LOADK                            R9 K31 ["ObjectValue"]
      111 CALL                             R8 1 1
      112 LOADK                            R9 K32 ["Pose"]
      113 SETTABLEKS                       R9 R8 K9 ["Name"]
      115 SETTABLEKS                       R7 R8 K33 ["Value"]
      117 SETTABLEKS                       R6 R8 K10 ["Parent"]
      119 NEWTABLE                         R11 0 1
      121 MOVE                             R12 R5
      122 SETLIST                          R11 R12 1 [1]
      124 NAMECALL                         R9 R3 K11 ["Set"]
      126 CALL                             R9 2 0
      127 JUMPIFNOT                        R4 ; [+7]
      128 GETUPVAL                         R5 0
      129 MOVE                             R7 R4
      130 GETIMPORT                        R8 K36 [Enum.FinishRecordingOperation.Commit]
      132 NAMECALL                         R5 R5 K37 ["FinishRecording"]
      134 CALL                             R5 3 0
      135 RETURN                           R0 0

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
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Rig"]
       19 GETTABLEKS                       R3 R3 K12 ["AnimationRigDataUtils"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["Contexts"]
       26 GETTABLEKS                       R4 R4 K14 ["NativeGraphContext"]
       28 GETTABLEKS                       R4 R4 K15 ["NativeGraphUtils"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R1 K10 ["Util"]
       35 GETTABLEKS                       R5 R5 K16 ["getDeduplicatedName"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R1 K17 ["Flags"]
       42 GETTABLEKS                       R6 R6 K18 ["getFFlagAnimGraphUI_RunTimeDebug"]
       44 CALL                             R5 1 1
       45 DUPCLOSURE                       R6 K19 [PROTO_0]
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R4
       51 RETURN                           R6 1
