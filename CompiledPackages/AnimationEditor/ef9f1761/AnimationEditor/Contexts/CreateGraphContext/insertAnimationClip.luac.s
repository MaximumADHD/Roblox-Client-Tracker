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
       20 JUMPIFNOT                        R7 ; [+49]
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
       53 GETUPVAL                         R8 6
       54 CALL                             R8 0 1
       55 JUMPIFNOT                        R8 ; [+5]
       56 GETUPVAL                         R8 7
       57 GETTABLEKS                       R8 R8 K17 ["markSaved"]
       59 MOVE                             R9 R1
       60 CALL                             R8 1 0
       61 NEWTABLE                         R10 0 1
       63 MOVE                             R11 R1
       64 SETLIST                          R10 R11 1 [1]
       66 NAMECALL                         R8 R3 K18 ["Set"]
       68 CALL                             R8 2 0
       69 JUMP                             ; [+67]
       70 GETUPVAL                         R7 3
       71 GETTABLEKS                       R7 R7 K19 ["createNewAnimationGraph"]
       73 MOVE                             R8 R2
       74 GETTABLEKS                       R9 R1 K15 ["Name"]
       76 CALL                             R7 2 1
       77 JUMPIFNOTEQKNIL                  R7 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 FASTCALL2K                       ASSERT R9 K20 ; [+4]
       83 LOADK                            R10 K20 ["Couldn't create graph"]
       84 GETIMPORT                        R8 K22 [assert]
       86 CALL                             R8 2 0
       87 LOADK                            R10 K23 ["GraphOutput"]
       88 NAMECALL                         R8 R7 K24 ["FindFirstChild"]
       90 CALL                             R8 2 1
       91 JUMPIFNOTEQKNIL                  R8 ; [+2]
       93 LOADB                            R10 0 +1
       94 LOADB                            R10 1
       95 FASTCALL2K                       ASSERT R10 K25 ; [+4]
       97 LOADK                            R11 K25 ["No GraphOutput"]
       98 GETIMPORT                        R9 K22 [assert]
      100 CALL                             R9 2 0
      101 GETUPVAL                         R9 3
      102 GETTABLEKS                       R9 R9 K26 ["createNodeOfType"]
      104 GETIMPORT                        R10 K30 [Enum.AnimationNodeType.ClipNode]
      106 GETIMPORT                        R11 K33 [Vector2.new]
      108 LOADN                            R12 -250
      109 LOADN                            R13 0
      110 CALL                             R11 2 1
      111 MOVE                             R12 R7
      112 CALL                             R9 3 1
      113 LOADK                            R12 K34 ["AnimationId"]
      114 MOVE                             R13 R0
      115 NAMECALL                         R10 R9 K14 ["SetAttribute"]
      117 CALL                             R10 3 0
      118 GETIMPORT                        R10 K36 [Instance.new]
      120 LOADK                            R11 K37 ["ObjectValue"]
      121 CALL                             R10 1 1
      122 LOADK                            R11 K38 ["Pose"]
      123 SETTABLEKS                       R11 R10 K15 ["Name"]
      125 SETTABLEKS                       R9 R10 K39 ["Value"]
      127 SETTABLEKS                       R8 R10 K16 ["Parent"]
      129 NEWTABLE                         R13 0 1
      131 MOVE                             R14 R7
      132 SETLIST                          R13 R14 1 [1]
      134 NAMECALL                         R11 R3 K18 ["Set"]
      136 CALL                             R11 2 0
      137 JUMPIFNOT                        R6 ; [+7]
      138 GETUPVAL                         R7 2
      139 MOVE                             R9 R6
      140 GETIMPORT                        R10 K42 [Enum.FinishRecordingOperation.Commit]
      142 NAMECALL                         R7 R7 K43 ["FinishRecording"]
      144 CALL                             R7 3 0
      145 RETURN                           R0 0

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
       24 GETTABLEKS                       R4 R4 K11 ["GraphDirtyStateContext"]
       26 GETTABLEKS                       R4 R4 K12 ["GraphDirtyUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K10 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K13 ["NativeGraphContext"]
       35 GETTABLEKS                       R5 R5 K14 ["NativeGraphUtils"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R1 K10 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K15 ["OpenableAssetTypeContext"]
       44 GETTABLEKS                       R6 R6 K16 ["OpenableAssetTypeUtils"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R1 K17 ["Types"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K18 ["Util"]
       56 GETTABLEKS                       R8 R8 K19 ["getDeduplicatedName"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R1 K20 ["Flags"]
       63 GETTABLEKS                       R9 R9 K21 ["getFFlagAnimGraphUI_FixUndoHistory"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R1 K20 ["Flags"]
       70 GETTABLEKS                       R10 R10 K22 ["getFFlagAnimationEditorAnimationTypes"]
       72 CALL                             R9 1 1
       73 DUPCLOSURE                       R10 K23 [PROTO_0]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R3
       82 RETURN                           R10 1
