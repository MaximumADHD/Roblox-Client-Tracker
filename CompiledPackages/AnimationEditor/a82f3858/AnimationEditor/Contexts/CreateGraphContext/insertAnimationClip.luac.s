PROTO_0:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 JUMPIFNOT                        R6 ; [+6]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["getClassName"]
        6 MOVE                             R6 R4
        7 CALL                             R5 1 1
        8 JUMP                             ; [+1]
        9 LOADK                            R5 K1 ["AnimationGraphDefinition"]
       10 GETUPVAL                         R6 2
       11 LOADK                            R8 K2 ["CreateGraphContext.createGraphFromIdAsync"]
       12 LOADK                            R9 K3 ["Import graph from Roblox"]
       13 NAMECALL                         R6 R6 K4 ["TryBeginRecording"]
       15 CALL                             R6 3 1
       16 MOVE                             R9 R5
       17 NAMECALL                         R7 R1 K5 ["IsA"]
       19 CALL                             R7 2 1
       20 JUMPIFNOT                        R7 ; [+41]
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R7 R7 K6 ["getOrCreateParentForNewGraph"]
       24 MOVE                             R8 R2
       25 CALL                             R7 1 1
       26 GETUPVAL                         R8 0
       27 CALL                             R8 0 1
       28 JUMPIFNOT                        R8 ; [+15]
       29 GETUPVAL                         R10 4
       30 GETTABLEKS                       R10 R10 K7 ["SOURCE_ASSET_ID_ATTRIBUTE_NAME"]
       32 GETIMPORT                        R12 K10 [string.match]
       34 MOVE                             R13 R0
       35 LOADK                            R14 K11 ["%d+$"]
       36 CALL                             R12 2 -1
       37 FASTCALL                         TONUMBER ; [+2]
       38 GETIMPORT                        R11 K13 [tonumber]
       40 CALL                             R11 -1 1
       41 NAMECALL                         R8 R1 K14 ["SetAttribute"]
       43 CALL                             R8 3 0
       44 GETUPVAL                         R8 5
       45 MOVE                             R9 R7
       46 GETTABLEKS                       R10 R1 K15 ["Name"]
       48 CALL                             R8 2 1
       49 SETTABLEKS                       R8 R1 K15 ["Name"]
       51 SETTABLEKS                       R7 R1 K16 ["Parent"]
       53 NEWTABLE                         R10 0 1
       55 MOVE                             R11 R1
       56 SETLIST                          R10 R11 1 [1]
       58 NAMECALL                         R8 R3 K17 ["Set"]
       60 CALL                             R8 2 0
       61 JUMP                             ; [+67]
       62 GETUPVAL                         R7 3
       63 GETTABLEKS                       R7 R7 K18 ["createNewAnimationGraph"]
       65 MOVE                             R8 R2
       66 GETTABLEKS                       R9 R1 K15 ["Name"]
       68 CALL                             R7 2 1
       69 JUMPIFNOTEQKNIL                  R7 ; [+2]
       71 LOADB                            R9 0 +1
       72 LOADB                            R9 1
       73 FASTCALL2K                       ASSERT R9 K19 ; [+4]
       75 LOADK                            R10 K19 ["Couldn't create graph"]
       76 GETIMPORT                        R8 K21 [assert]
       78 CALL                             R8 2 0
       79 LOADK                            R10 K22 ["GraphOutput"]
       80 NAMECALL                         R8 R7 K23 ["FindFirstChild"]
       82 CALL                             R8 2 1
       83 JUMPIFNOTEQKNIL                  R8 ; [+2]
       85 LOADB                            R10 0 +1
       86 LOADB                            R10 1
       87 FASTCALL2K                       ASSERT R10 K24 ; [+4]
       89 LOADK                            R11 K24 ["No GraphOutput"]
       90 GETIMPORT                        R9 K21 [assert]
       92 CALL                             R9 2 0
       93 GETUPVAL                         R9 3
       94 GETTABLEKS                       R9 R9 K25 ["createNodeOfType"]
       96 GETIMPORT                        R10 K29 [Enum.AnimationNodeType.ClipNode]
       98 GETIMPORT                        R11 K32 [Vector2.new]
      100 LOADN                            R12 -250
      101 LOADN                            R13 0
      102 CALL                             R11 2 1
      103 MOVE                             R12 R7
      104 CALL                             R9 3 1
      105 LOADK                            R12 K33 ["AnimationId"]
      106 MOVE                             R13 R0
      107 NAMECALL                         R10 R9 K14 ["SetAttribute"]
      109 CALL                             R10 3 0
      110 GETIMPORT                        R10 K35 [Instance.new]
      112 LOADK                            R11 K36 ["ObjectValue"]
      113 CALL                             R10 1 1
      114 LOADK                            R11 K37 ["Pose"]
      115 SETTABLEKS                       R11 R10 K15 ["Name"]
      117 SETTABLEKS                       R9 R10 K38 ["Value"]
      119 SETTABLEKS                       R8 R10 K16 ["Parent"]
      121 NEWTABLE                         R13 0 1
      123 MOVE                             R14 R7
      124 SETLIST                          R13 R14 1 [1]
      126 NAMECALL                         R11 R3 K17 ["Set"]
      128 CALL                             R11 2 0
      129 JUMPIFNOT                        R6 ; [+7]
      130 GETUPVAL                         R7 2
      131 MOVE                             R9 R6
      132 GETIMPORT                        R10 K41 [Enum.FinishRecordingOperation.Commit]
      134 NAMECALL                         R7 R7 K42 ["FinishRecording"]
      136 CALL                             R7 3 0
      137 RETURN                           R0 0

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
       15 GETTABLEKS                       R3 R1 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R3 K11 ["GraphDirtyStateContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Contexts"]
       24 GETTABLEKS                       R4 R4 K12 ["NativeGraphContext"]
       26 GETTABLEKS                       R4 R4 K13 ["NativeGraphUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K10 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K14 ["OpenableAssetTypeContext"]
       35 GETTABLEKS                       R5 R5 K15 ["OpenableAssetTypeUtils"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R1 K16 ["Types"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K17 ["Util"]
       47 GETTABLEKS                       R7 R7 K18 ["getDeduplicatedName"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R1 K19 ["Flags"]
       54 GETTABLEKS                       R8 R8 K20 ["getFFlagAnimationEditorAnimationTypes"]
       56 CALL                             R7 1 1
       57 DUPCLOSURE                       R8 K21 [PROTO_0]
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R6
       64 RETURN                           R8 1
