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
       20 JUMPIFNOT                        R7 ; [+67]
       21 LOADNIL                          R7
       22 GETUPVAL                         R8 3
       23 CALL                             R8 0 1
       24 JUMPIFNOT                        R8 ; [+7]
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R8 R8 K6 ["getOrCreateParentForNewGraph"]
       28 MOVE                             R9 R2
       29 CALL                             R8 1 1
       30 MOVE                             R7 R8
       31 JUMP                             ; [+20]
       32 LOADK                            R11 K7 ["Model"]
       33 NAMECALL                         R9 R2 K5 ["IsA"]
       35 CALL                             R9 2 1
       36 JUMPIFNOT                        R9 ; [+2]
       37 MOVE                             R8 R2
       38 JUMP                             ; [+4]
       39 LOADK                            R10 K7 ["Model"]
       40 NAMECALL                         R8 R2 K8 ["FindFirstAncestorWhichIsA"]
       42 CALL                             R8 2 1
       43 JUMPIFNOTEQKNIL                  R8 ; [+2]
       45 RETURN                           R0 0
       46 GETUPVAL                         R9 5
       47 GETTABLEKS                       R9 R9 K9 ["getOrCreateAnimSavesFolder"]
       49 MOVE                             R10 R8
       50 CALL                             R9 1 1
       51 MOVE                             R7 R9
       52 GETUPVAL                         R8 0
       53 CALL                             R8 0 1
       54 JUMPIFNOT                        R8 ; [+15]
       55 GETUPVAL                         R10 6
       56 GETTABLEKS                       R10 R10 K10 ["SOURCE_ASSET_ID_ATTRIBUTE_NAME"]
       58 GETIMPORT                        R12 K13 [string.match]
       60 MOVE                             R13 R0
       61 LOADK                            R14 K14 ["%d+$"]
       62 CALL                             R12 2 -1
       63 FASTCALL                         TONUMBER ; [+2]
       64 GETIMPORT                        R11 K16 [tonumber]
       66 CALL                             R11 -1 1
       67 NAMECALL                         R8 R1 K17 ["SetAttribute"]
       69 CALL                             R8 3 0
       70 GETUPVAL                         R8 7
       71 MOVE                             R9 R7
       72 GETTABLEKS                       R10 R1 K18 ["Name"]
       74 CALL                             R8 2 1
       75 SETTABLEKS                       R8 R1 K18 ["Name"]
       77 SETTABLEKS                       R7 R1 K19 ["Parent"]
       79 NEWTABLE                         R10 0 1
       81 MOVE                             R11 R1
       82 SETLIST                          R10 R11 1 [1]
       84 NAMECALL                         R8 R3 K20 ["Set"]
       86 CALL                             R8 2 0
       87 JUMP                             ; [+67]
       88 GETUPVAL                         R7 4
       89 GETTABLEKS                       R7 R7 K21 ["createNewAnimationGraph"]
       91 MOVE                             R8 R2
       92 GETTABLEKS                       R9 R1 K18 ["Name"]
       94 CALL                             R7 2 1
       95 JUMPIFNOTEQKNIL                  R7 ; [+2]
       97 LOADB                            R9 0 +1
       98 LOADB                            R9 1
       99 FASTCALL2K                       ASSERT R9 K22 ; [+4]
      101 LOADK                            R10 K22 ["Couldn't create graph"]
      102 GETIMPORT                        R8 K24 [assert]
      104 CALL                             R8 2 0
      105 LOADK                            R10 K25 ["GraphOutput"]
      106 NAMECALL                         R8 R7 K26 ["FindFirstChild"]
      108 CALL                             R8 2 1
      109 JUMPIFNOTEQKNIL                  R8 ; [+2]
      111 LOADB                            R10 0 +1
      112 LOADB                            R10 1
      113 FASTCALL2K                       ASSERT R10 K27 ; [+4]
      115 LOADK                            R11 K27 ["No GraphOutput"]
      116 GETIMPORT                        R9 K24 [assert]
      118 CALL                             R9 2 0
      119 GETUPVAL                         R9 4
      120 GETTABLEKS                       R9 R9 K28 ["createNodeOfType"]
      122 GETIMPORT                        R10 K32 [Enum.AnimationNodeType.ClipNode]
      124 GETIMPORT                        R11 K35 [Vector2.new]
      126 LOADN                            R12 -250
      127 LOADN                            R13 0
      128 CALL                             R11 2 1
      129 MOVE                             R12 R7
      130 CALL                             R9 3 1
      131 LOADK                            R12 K36 ["AnimationId"]
      132 MOVE                             R13 R0
      133 NAMECALL                         R10 R9 K17 ["SetAttribute"]
      135 CALL                             R10 3 0
      136 GETIMPORT                        R10 K38 [Instance.new]
      138 LOADK                            R11 K39 ["ObjectValue"]
      139 CALL                             R10 1 1
      140 LOADK                            R11 K40 ["Pose"]
      141 SETTABLEKS                       R11 R10 K18 ["Name"]
      143 SETTABLEKS                       R9 R10 K41 ["Value"]
      145 SETTABLEKS                       R8 R10 K19 ["Parent"]
      147 NEWTABLE                         R13 0 1
      149 MOVE                             R14 R7
      150 SETLIST                          R13 R14 1 [1]
      152 NAMECALL                         R11 R3 K20 ["Set"]
      154 CALL                             R11 2 0
      155 JUMPIFNOT                        R6 ; [+7]
      156 GETUPVAL                         R7 2
      157 MOVE                             R9 R6
      158 GETIMPORT                        R10 K44 [Enum.FinishRecordingOperation.Commit]
      160 NAMECALL                         R7 R7 K45 ["FinishRecording"]
      162 CALL                             R7 3 0
      163 RETURN                           R0 0

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
       26 GETTABLEKS                       R4 R4 K14 ["GraphDirtyStateContext"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K13 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K15 ["NativeGraphContext"]
       35 GETTABLEKS                       R5 R5 K16 ["NativeGraphUtils"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R1 K13 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K17 ["OpenableAssetTypeContext"]
       44 GETTABLEKS                       R6 R6 K18 ["OpenableAssetTypeUtils"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R1 K19 ["Types"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K10 ["Util"]
       56 GETTABLEKS                       R8 R8 K20 ["getDeduplicatedName"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R1 K21 ["Flags"]
       63 GETTABLEKS                       R9 R9 K22 ["getFFlagAnimGraphUI_RunTimeDebug"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R1 K21 ["Flags"]
       70 GETTABLEKS                       R10 R10 K23 ["getFFlagAnimationEditorAnimationTypes"]
       72 CALL                             R9 1 1
       73 DUPCLOSURE                       R10 K24 [PROTO_0]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R7
       82 RETURN                           R10 1
