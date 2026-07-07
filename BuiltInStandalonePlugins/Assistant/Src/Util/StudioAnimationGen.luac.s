PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"Prompt"}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["Prompt"]
        5 GETUPVAL                         R3 2
        6 LOADNIL                          R4
        7 NAMECALL                         R0 R0 K2 ["GenerateAnimationAsync"]
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETUPVAL                         R2 1
        3 JUMPIF                           R2 ; [+4]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R3 K2 ["AnimationGen services are unavailable"]
        7 CALL                             R2 1 0
        8 JUMPIFNOT                        R1 ; [+3]
        9 GETTABLEKS                       R2 R1 K3 ["outputPath"]
       11 JUMPIF                           R2 ; [+1]
       12 LOADK                            R2 K4 ["/tmp"]
       13 DUPTABLE                         R3 K15 [{"NumFrames", "OutputPath", "GuidanceParameter", "Loop", "PriorJobId", "EditStartFrame", "EditEndFrame", "Style", "StyleConstraint", "StyleConstraintKeyframes"}]
       14 MOVE                             R4 R1
       15 JUMPIFNOT                        R4 ; [+2]
       16 GETTABLEKS                       R4 R1 K16 ["numFrames"]
       18 SETTABLEKS                       R4 R3 K5 ["NumFrames"]
       20 SETTABLEKS                       R2 R3 K6 ["OutputPath"]
       22 MOVE                             R4 R1
       23 JUMPIFNOT                        R4 ; [+2]
       24 GETTABLEKS                       R4 R1 K17 ["guidanceParameter"]
       26 SETTABLEKS                       R4 R3 K7 ["GuidanceParameter"]
       28 MOVE                             R4 R1
       29 JUMPIFNOT                        R4 ; [+2]
       30 GETTABLEKS                       R4 R1 K18 ["loop"]
       32 SETTABLEKS                       R4 R3 K8 ["Loop"]
       34 MOVE                             R4 R1
       35 JUMPIFNOT                        R4 ; [+2]
       36 GETTABLEKS                       R4 R1 K19 ["priorJobId"]
       38 SETTABLEKS                       R4 R3 K9 ["PriorJobId"]
       40 MOVE                             R4 R1
       41 JUMPIFNOT                        R4 ; [+2]
       42 GETTABLEKS                       R4 R1 K20 ["startFrame"]
       44 SETTABLEKS                       R4 R3 K10 ["EditStartFrame"]
       46 MOVE                             R4 R1
       47 JUMPIFNOT                        R4 ; [+2]
       48 GETTABLEKS                       R4 R1 K21 ["endFrame"]
       50 SETTABLEKS                       R4 R3 K11 ["EditEndFrame"]
       52 MOVE                             R4 R1
       53 JUMPIFNOT                        R4 ; [+2]
       54 GETTABLEKS                       R4 R1 K22 ["style"]
       56 SETTABLEKS                       R4 R3 K12 ["Style"]
       58 MOVE                             R4 R1
       59 JUMPIFNOT                        R4 ; [+2]
       60 GETTABLEKS                       R4 R1 K23 ["styleConstraint"]
       62 SETTABLEKS                       R4 R3 K13 ["StyleConstraint"]
       64 MOVE                             R4 R1
       65 JUMPIFNOT                        R4 ; [+2]
       66 GETTABLEKS                       R4 R1 K24 ["styleConstraintKeyframes"]
       68 SETTABLEKS                       R4 R3 K14 ["StyleConstraintKeyframes"]
       70 GETIMPORT                        R4 K26 [pcall]
       72 NEWCLOSURE                       R5 P0
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R3
       76 CALL                             R4 1 3
       77 JUMPIF                           R4 ; [+10]
       78 GETIMPORT                        R7 K1 [error]
       80 LOADK                            R9 K27 ["GenerateAnimationAsync failed: "]
       81 FASTCALL1                        TOSTRING R5 ; [+3]
       82 MOVE                             R11 R5
       83 GETIMPORT                        R10 K29 [tostring]
       85 CALL                             R10 1 1
       86 CONCAT                           R8 R9 R10
       87 CALL                             R7 1 0
       88 JUMPIFEQKNIL                     R5 ; [+3]
       90 JUMPIFNOTEQKS                    R5 K30 [""] ; [+5]
       92 GETIMPORT                        R7 K1 [error]
       94 LOADK                            R8 K31 ["Animation generation failed: no FBX file returned"]
       95 CALL                             R7 1 0
       96 GETUPVAL                         R7 1
       97 MOVE                             R9 R5
       98 NAMECALL                         R7 R7 K32 ["StartSessionWithPathAsync"]
      100 CALL                             R7 2 1
      101 NAMECALL                         R8 R7 K33 ["GetKeyframeSequences"]
      103 CALL                             R8 1 1
      104 NAMECALL                         R9 R7 K34 ["Destroy"]
      106 CALL                             R9 1 0
      107 LENGTH                           R9 R8
      108 JUMPIFNOTEQKN                    R9 K35 [0] ; [+5]
      110 GETIMPORT                        R9 K1 [error]
      112 LOADK                            R10 K36 ["Animation generation failed: no KeyframeSequence extracted from FBX"]
      113 CALL                             R9 1 0
      114 JUMPIFEQKNIL                     R5 ; [+11]
      116 LOADK                            R11 K37 ["([^/\\]+)%.fbx$"]
      117 NAMECALL                         R9 R5 K38 ["match"]
      119 CALL                             R9 2 1
      120 JUMPIF                           R9 ; [+6]
      121 LOADK                            R11 K39 ["([^/\\]+)$"]
      122 NAMECALL                         R9 R5 K38 ["match"]
      124 CALL                             R9 2 1
      125 JUMP                             ; [+1]
      126 LOADK                            R9 K40 ["GeneratedAnim"]
      127 GETTABLEN                        R10 R8 1
      128 SETTABLEKS                       R9 R10 K41 ["Name"]
      130 GETUPVAL                         R10 2
      131 GETTABLEKS                       R10 R10 K42 ["FFlagDebugLogAssistantUI"]
      133 JUMPIFNOT                        R10 ; [+10]
      134 GETIMPORT                        R10 K44 [print]
      136 LOADK                            R12 K45 ["[AnimationGen] FBX saved: "]
      137 FASTCALL1                        TOSTRING R5 ; [+3]
      138 MOVE                             R14 R5
      139 GETIMPORT                        R13 K29 [tostring]
      141 CALL                             R13 1 1
      142 CONCAT                           R11 R12 R13
      143 CALL                             R10 1 0
      144 DUPTABLE                         R10 K49 [{"animationClip", "contextId", "fbxFilePath"}]
      145 GETTABLEN                        R11 R8 1
      146 SETTABLEKS                       R11 R10 K46 ["animationClip"]
      148 SETTABLEKS                       R6 R10 K47 ["contextId"]
      150 SETTABLEKS                       R5 R10 K48 ["fbxFilePath"]
      152 RETURN                           R10 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["keyframeSequence"]
        4 GETIMPORT                        R3 K4 [Enum.AssetType.Animation]
        6 GETUPVAL                         R4 2
        7 NAMECALL                         R0 R0 K5 ["PromptSaveInstanceToRobloxAsync"]
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [game]
        3 GETTABLEKS                       R2 R2 K2 ["CreatorType"]
        5 GETIMPORT                        R3 K5 [Enum.CreatorType.Group]
        7 JUMPIFNOTEQ                      R2 R3 ; [+5]
        9 GETIMPORT                        R2 K1 [game]
       11 GETTABLEKS                       R1 R2 K6 ["CreatorId"]
       13 GETIMPORT                        R2 K8 [pcall]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          REF R1
       19 CALL                             R2 1 2
       20 CLOSEUPVALS                      R1
       21 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"generateAnimationAsync", "publishAnimationAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["generateAnimationAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["publishAnimationAsync"]
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [pcall]
        3 GETIMPORT                        R1 K3 [game]
        5 GETTABLEKS                       R1 R1 K4 ["GetService"]
        7 GETIMPORT                        R2 K3 [game]
        9 LOADK                            R3 K5 ["AssetImportService"]
       10 CALL                             R0 3 2
       11 GETIMPORT                        R2 K1 [pcall]
       13 GETIMPORT                        R3 K3 [game]
       15 GETTABLEKS                       R3 R3 K4 ["GetService"]
       17 GETIMPORT                        R4 K3 [game]
       19 LOADK                            R5 K6 ["GenerationService"]
       20 CALL                             R2 3 2
       21 GETIMPORT                        R4 K1 [pcall]
       23 GETIMPORT                        R5 K3 [game]
       25 GETTABLEKS                       R5 R5 K4 ["GetService"]
       27 GETIMPORT                        R6 K3 [game]
       29 LOADK                            R7 K7 ["StudioAssetService"]
       30 CALL                             R4 3 2
       31 GETIMPORT                        R6 K9 [script]
       33 LOADK                            R8 K10 ["Assistant"]
       34 NAMECALL                         R6 R6 K11 ["FindFirstAncestor"]
       36 CALL                             R6 2 1
       37 GETIMPORT                        R7 K13 [require]
       39 GETTABLEKS                       R8 R6 K14 ["Src"]
       41 GETTABLEKS                       R8 R8 K15 ["Flags"]
       43 CALL                             R7 1 1
       44 DUPCLOSURE                       R8 K16 [PROTO_1]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R7
       48 DUPCLOSURE                       R9 K17 [PROTO_3]
       49 CAPTURE                          VAL R5
       50 DUPCLOSURE                       R10 K18 [PROTO_4]
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R9
       53 DUPTABLE                         R11 K20 [{"create"}]
       54 SETTABLEKS                       R10 R11 K19 ["create"]
       56 RETURN                           R11 1
