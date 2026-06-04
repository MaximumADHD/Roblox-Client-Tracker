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
      131 CALL                             R10 0 1
      132 JUMPIFNOT                        R10 ; [+10]
      133 GETIMPORT                        R10 K43 [print]
      135 LOADK                            R12 K44 ["[AnimationGen] FBX saved: "]
      136 FASTCALL1                        TOSTRING R5 ; [+3]
      137 MOVE                             R14 R5
      138 GETIMPORT                        R13 K29 [tostring]
      140 CALL                             R13 1 1
      141 CONCAT                           R11 R12 R13
      142 CALL                             R10 1 0
      143 DUPTABLE                         R10 K48 [{"animationClip", "contextId", "fbxFilePath"}]
      144 GETTABLEN                        R11 R8 1
      145 SETTABLEKS                       R11 R10 K45 ["animationClip"]
      147 SETTABLEKS                       R6 R10 K46 ["contextId"]
      149 SETTABLEKS                       R5 R10 K47 ["fbxFilePath"]
      151 RETURN                           R10 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["animationClip"]
        2 DUPTABLE                         R2 K4 [{"assetId", "keyframeSequence", "fbxFilePath"}]
        3 LOADN                            R3 0
        4 SETTABLEKS                       R3 R2 K1 ["assetId"]
        6 SETTABLEKS                       R1 R2 K2 ["keyframeSequence"]
        8 GETTABLEKS                       R3 R0 K3 ["fbxFilePath"]
       10 SETTABLEKS                       R3 R2 K3 ["fbxFilePath"]
       12 RETURN                           R2 1

PROTO_3:
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
       21 GETIMPORT                        R4 K8 [script]
       23 LOADK                            R6 K9 ["Assistant"]
       24 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K12 [require]
       29 GETTABLEKS                       R6 R4 K13 ["Packages"]
       31 GETTABLEKS                       R6 R6 K14 ["AssistantUI"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K15 ["Flags"]
       36 GETTABLEKS                       R6 R6 K16 ["Shared"]
       38 GETTABLEKS                       R6 R6 K17 ["FFlagDebugLogAssistantUI"]
       40 DUPCLOSURE                       R7 K18 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R6
       44 DUPCLOSURE                       R8 K19 [PROTO_2]
       45 DUPCLOSURE                       R9 K20 [PROTO_3]
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R8
       48 DUPTABLE                         R10 K22 [{"create"}]
       49 SETTABLEKS                       R9 R10 K21 ["create"]
       51 RETURN                           R10 1
