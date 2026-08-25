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
       13 DUPTABLE                         R3 K10 [{"NumFrames", "OutputPath", "GuidanceParameter", "Loop", "PriorJobId"}]
       14 MOVE                             R4 R1
       15 JUMPIFNOT                        R4 ; [+2]
       16 GETTABLEKS                       R4 R1 K11 ["numFrames"]
       18 SETTABLEKS                       R4 R3 K5 ["NumFrames"]
       20 SETTABLEKS                       R2 R3 K6 ["OutputPath"]
       22 MOVE                             R4 R1
       23 JUMPIFNOT                        R4 ; [+2]
       24 GETTABLEKS                       R4 R1 K12 ["guidanceParameter"]
       26 SETTABLEKS                       R4 R3 K7 ["GuidanceParameter"]
       28 MOVE                             R4 R1
       29 JUMPIFNOT                        R4 ; [+2]
       30 GETTABLEKS                       R4 R1 K13 ["loop"]
       32 SETTABLEKS                       R4 R3 K8 ["Loop"]
       34 MOVE                             R4 R1
       35 JUMPIFNOT                        R4 ; [+2]
       36 GETTABLEKS                       R4 R1 K14 ["priorJobId"]
       38 SETTABLEKS                       R4 R3 K9 ["PriorJobId"]
       40 GETIMPORT                        R4 K16 [pcall]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R3
       46 CALL                             R4 1 3
       47 JUMPIF                           R4 ; [+10]
       48 GETIMPORT                        R7 K1 [error]
       50 LOADK                            R9 K17 ["GenerateAnimationAsync failed: "]
       51 FASTCALL1                        TOSTRING R5 ; [+3]
       52 MOVE                             R11 R5
       53 GETIMPORT                        R10 K19 [tostring]
       55 CALL                             R10 1 1
       56 CONCAT                           R8 R9 R10
       57 CALL                             R7 1 0
       58 JUMPIFEQKNIL                     R5 ; [+3]
       60 JUMPIFNOTEQKS                    R5 K20 [""] ; [+5]
       62 GETIMPORT                        R7 K1 [error]
       64 LOADK                            R8 K21 ["Animation generation failed: no FBX file returned"]
       65 CALL                             R7 1 0
       66 GETUPVAL                         R7 1
       67 MOVE                             R9 R5
       68 NAMECALL                         R7 R7 K22 ["StartSessionWithPathAsync"]
       70 CALL                             R7 2 1
       71 NAMECALL                         R8 R7 K23 ["GetKeyframeSequences"]
       73 CALL                             R8 1 1
       74 NAMECALL                         R9 R7 K24 ["Destroy"]
       76 CALL                             R9 1 0
       77 LENGTH                           R9 R8
       78 JUMPIFNOTEQKN                    R9 K25 [0] ; [+5]
       80 GETIMPORT                        R9 K1 [error]
       82 LOADK                            R10 K26 ["Animation generation failed: no KeyframeSequence extracted from FBX"]
       83 CALL                             R9 1 0
       84 JUMPIFEQKNIL                     R5 ; [+11]
       86 LOADK                            R11 K27 ["([^/\\]+)%.fbx$"]
       87 NAMECALL                         R9 R5 K28 ["match"]
       89 CALL                             R9 2 1
       90 JUMPIF                           R9 ; [+6]
       91 LOADK                            R11 K29 ["([^/\\]+)$"]
       92 NAMECALL                         R9 R5 K28 ["match"]
       94 CALL                             R9 2 1
       95 JUMP                             ; [+1]
       96 LOADK                            R9 K30 ["GeneratedAnim"]
       97 GETTABLEN                        R10 R8 1
       98 SETTABLEKS                       R9 R10 K31 ["Name"]
      100 GETUPVAL                         R10 2
      101 GETTABLEKS                       R10 R10 K32 ["FFlagDebugLogAssistantUI"]
      103 JUMPIFNOT                        R10 ; [+10]
      104 GETIMPORT                        R10 K34 [print]
      106 LOADK                            R12 K35 ["[AnimationGen] FBX saved: "]
      107 FASTCALL1                        TOSTRING R5 ; [+3]
      108 MOVE                             R14 R5
      109 GETIMPORT                        R13 K19 [tostring]
      111 CALL                             R13 1 1
      112 CONCAT                           R11 R12 R13
      113 CALL                             R10 1 0
      114 DUPTABLE                         R10 K39 [{"animationClip", "contextId", "fbxFilePath"}]
      115 GETTABLEN                        R11 R8 1
      116 SETTABLEKS                       R11 R10 K36 ["animationClip"]
      118 SETTABLEKS                       R6 R10 K37 ["contextId"]
      120 SETTABLEKS                       R5 R10 K38 ["fbxFilePath"]
      122 RETURN                           R10 1

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
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["Util"]
        8 GETTABLEKS                       R1 R1 K3 ["StudioUri"]
       10 GETTABLEKS                       R1 R1 K4 ["fromAction"]
       12 LOADK                            R2 K5 ["AnimationEditor"]
       13 LOADK                            R3 K6 ["Toggle"]
       14 CALL                             R1 2 1
       15 NEWTABLE                         R4 0 1
       17 MOVE                             R5 R1
       18 SETLIST                          R4 R5 1 [1]
       20 NAMECALL                         R2 R0 K7 ["GetAsync"]
       22 CALL                             R2 2 1
       23 GETTABLEN                        R3 R2 1
       24 GETTABLEKS                       R3 R3 K8 ["Checked"]
       26 JUMPIF                           R3 ; [+4]
       27 MOVE                             R6 R1
       28 NAMECALL                         R4 R0 K9 ["ActivateAsync"]
       30 CALL                             R4 2 0
       31 RETURN                           R3 1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 DUPTABLE                         R2 K3 [{"generateAnimationAsync", "publishAnimationAsync", "openAnimationClipEditorAsync"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K0 ["generateAnimationAsync"]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K1 ["publishAnimationAsync"]
       10 SETTABLEKS                       R1 R2 K2 ["openAnimationClipEditorAsync"]
       12 RETURN                           R2 1

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
       44 GETIMPORT                        R8 K13 [require]
       46 GETTABLEKS                       R9 R6 K16 ["Packages"]
       48 GETTABLEKS                       R9 R9 K17 ["StudioFoundation"]
       50 CALL                             R8 1 1
       51 DUPCLOSURE                       R9 K18 [PROTO_1]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R7
       55 DUPCLOSURE                       R10 K19 [PROTO_3]
       56 CAPTURE                          VAL R5
       57 DUPCLOSURE                       R11 K20 [PROTO_5]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 DUPTABLE                         R12 K22 [{"create"}]
       62 SETTABLEKS                       R11 R12 K21 ["create"]
       64 RETURN                           R12 1
