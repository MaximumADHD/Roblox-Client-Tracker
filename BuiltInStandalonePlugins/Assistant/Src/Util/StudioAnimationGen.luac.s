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
        8 LOADN                            R2 196
        9 JUMPIFEQKNIL                     R1 ; [+26]
       11 GETTABLEKS                       R3 R1 K3 ["duration"]
       13 JUMPIFEQKNIL                     R3 ; [+22]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K4 ["DEFAULT_GENERATION_FPS"]
       18 GETTABLEKS                       R7 R1 K3 ["duration"]
       20 MUL                              R6 R7 R3
       21 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       22 GETIMPORT                        R5 K7 [math.floor]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K8 ["MIN_GENERATION_FRAMES"]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K9 ["MAX_GENERATION_FRAMES"]
       31 FASTCALL                         MATH_CLAMP ; [+2]
       32 GETIMPORT                        R4 K11 [math.clamp]
       34 CALL                             R4 3 1
       35 MOVE                             R2 R4
       36 JUMPIFNOT                        R1 ; [+3]
       37 GETTABLEKS                       R3 R1 K12 ["outputPath"]
       39 JUMPIF                           R3 ; [+1]
       40 LOADK                            R3 K13 ["/tmp"]
       41 DUPTABLE                         R4 K17 [{"NumFrames", "OutputPath", "GuidanceParameter"}]
       42 SETTABLEKS                       R2 R4 K14 ["NumFrames"]
       44 SETTABLEKS                       R3 R4 K15 ["OutputPath"]
       46 JUMPIFNOT                        R1 ; [+10]
       47 GETTABLEKS                       R6 R1 K18 ["guidanceParameter"]
       49 JUMPIFNOT                        R6 ; [+7]
       50 GETTABLEKS                       R6 R1 K18 ["guidanceParameter"]
       52 FASTCALL1                        TOSTRING R6 ; [+2]
       53 GETIMPORT                        R5 K20 [tostring]
       55 CALL                             R5 1 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R5
       58 SETTABLEKS                       R5 R4 K16 ["GuidanceParameter"]
       60 GETIMPORT                        R5 K22 [pcall]
       62 NEWCLOSURE                       R6 P0
       63 CAPTURE                          UPVAL U0
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R4
       66 CALL                             R5 1 3
       67 JUMPIF                           R5 ; [+10]
       68 GETIMPORT                        R8 K1 [error]
       70 LOADK                            R10 K23 ["GenerateAnimationAsync failed: "]
       71 FASTCALL1                        TOSTRING R6 ; [+3]
       72 MOVE                             R12 R6
       73 GETIMPORT                        R11 K20 [tostring]
       75 CALL                             R11 1 1
       76 CONCAT                           R9 R10 R11
       77 CALL                             R8 1 0
       78 JUMPIFEQKNIL                     R6 ; [+3]
       80 JUMPIFNOTEQKS                    R6 K24 [""] ; [+5]
       82 GETIMPORT                        R8 K1 [error]
       84 LOADK                            R9 K25 ["Animation generation failed: no FBX file returned"]
       85 CALL                             R8 1 0
       86 GETUPVAL                         R8 1
       87 MOVE                             R10 R6
       88 NAMECALL                         R8 R8 K26 ["StartSessionWithPathAsync"]
       90 CALL                             R8 2 1
       91 NAMECALL                         R9 R8 K27 ["GetKeyframeSequences"]
       93 CALL                             R9 1 1
       94 NAMECALL                         R10 R8 K28 ["Destroy"]
       96 CALL                             R10 1 0
       97 LENGTH                           R10 R9
       98 JUMPIFNOTEQKN                    R10 K29 [0] ; [+5]
      100 GETIMPORT                        R10 K1 [error]
      102 LOADK                            R11 K30 ["Animation generation failed: no KeyframeSequence extracted from FBX"]
      103 CALL                             R10 1 0
      104 JUMPIFEQKNIL                     R6 ; [+11]
      106 LOADK                            R12 K31 ["([^/\\]+)%.fbx$"]
      107 NAMECALL                         R10 R6 K32 ["match"]
      109 CALL                             R10 2 1
      110 JUMPIF                           R10 ; [+6]
      111 LOADK                            R12 K33 ["([^/\\]+)$"]
      112 NAMECALL                         R10 R6 K32 ["match"]
      114 CALL                             R10 2 1
      115 JUMP                             ; [+1]
      116 LOADK                            R10 K34 ["GeneratedAnim"]
      117 GETTABLEN                        R11 R9 1
      118 SETTABLEKS                       R10 R11 K35 ["Name"]
      120 GETUPVAL                         R11 3
      121 CALL                             R11 0 1
      122 JUMPIFNOT                        R11 ; [+10]
      123 GETIMPORT                        R11 K37 [print]
      125 LOADK                            R13 K38 ["[AnimationGen] FBX saved: "]
      126 FASTCALL1                        TOSTRING R6 ; [+3]
      127 MOVE                             R15 R6
      128 GETIMPORT                        R14 K20 [tostring]
      130 CALL                             R14 1 1
      131 CONCAT                           R12 R13 R14
      132 CALL                             R11 1 0
      133 DUPTABLE                         R11 K42 [{"animationClip", "contextId", "fbxFilePath"}]
      134 GETTABLEN                        R12 R9 1
      135 SETTABLEKS                       R12 R11 K39 ["animationClip"]
      137 SETTABLEKS                       R7 R11 K40 ["contextId"]
      139 SETTABLEKS                       R6 R11 K41 ["fbxFilePath"]
      141 RETURN                           R11 1

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
       34 GETTABLEKS                       R6 R5 K15 ["Features"]
       36 GETTABLEKS                       R6 R6 K16 ["AnimationGen"]
       38 GETTABLEKS                       R6 R6 K17 ["AnimationGenConstants"]
       40 GETTABLEKS                       R7 R5 K18 ["Flags"]
       42 GETTABLEKS                       R7 R7 K19 ["Shared"]
       44 GETTABLEKS                       R7 R7 K20 ["FFlagDebugLogAssistantUI"]
       46 DUPCLOSURE                       R8 K21 [PROTO_1]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 DUPCLOSURE                       R9 K22 [PROTO_2]
       52 DUPCLOSURE                       R10 K23 [PROTO_3]
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R9
       55 DUPTABLE                         R11 K25 [{"create"}]
       56 SETTABLEKS                       R10 R11 K24 ["create"]
       58 RETURN                           R11 1
