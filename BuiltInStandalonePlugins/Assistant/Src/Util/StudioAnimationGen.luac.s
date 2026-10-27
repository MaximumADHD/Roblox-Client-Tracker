PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADNIL                          R4
        4 NAMECALL                         R0 R0 K0 ["GenerateAnimationAsync"]
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

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
       13 DUPTABLE                         R3 K10 [{"NumFrames", "OutputPath", "OutputFileName", "GuidanceParameter", "PriorJobId"}]
       14 MOVE                             R4 R1
       15 JUMPIFNOT                        R4 ; [+2]
       16 GETTABLEKS                       R4 R1 K11 ["numFrames"]
       18 SETTABLEKS                       R4 R3 K5 ["NumFrames"]
       20 SETTABLEKS                       R2 R3 K6 ["OutputPath"]
       22 MOVE                             R4 R1
       23 JUMPIFNOT                        R4 ; [+2]
       24 GETTABLEKS                       R4 R1 K12 ["outputFileName"]
       26 SETTABLEKS                       R4 R3 K7 ["OutputFileName"]
       28 MOVE                             R4 R1
       29 JUMPIFNOT                        R4 ; [+2]
       30 GETTABLEKS                       R4 R1 K13 ["guidanceParameter"]
       32 SETTABLEKS                       R4 R3 K8 ["GuidanceParameter"]
       34 MOVE                             R4 R1
       35 JUMPIFNOT                        R4 ; [+2]
       36 GETTABLEKS                       R4 R1 K14 ["priorJobId"]
       38 SETTABLEKS                       R4 R3 K9 ["PriorJobId"]
       40 DUPTABLE                         R4 K16 [{"Prompt"}]
       41 SETTABLEKS                       R0 R4 K15 ["Prompt"]
       43 JUMPIFNOT                        R1 ; [+7]
       44 GETTABLEKS                       R5 R1 K17 ["keyframes"]
       46 JUMPIFNOT                        R5 ; [+4]
       47 GETTABLEKS                       R5 R1 K17 ["keyframes"]
       49 SETTABLEKS                       R5 R4 K18 ["Animation"]
       51 GETIMPORT                        R5 K20 [pcall]
       53 NEWCLOSURE                       R6 P0
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 CALL                             R5 1 3
       58 JUMPIF                           R5 ; [+10]
       59 GETIMPORT                        R8 K1 [error]
       61 LOADK                            R10 K21 ["GenerateAnimationAsync failed: "]
       62 FASTCALL1                        TOSTRING R6 ; [+3]
       63 MOVE                             R12 R6
       64 GETIMPORT                        R11 K23 [tostring]
       66 CALL                             R11 1 1
       67 CONCAT                           R9 R10 R11
       68 CALL                             R8 1 0
       69 JUMPIFEQKNIL                     R6 ; [+3]
       71 JUMPIFNOTEQKS                    R6 K24 [""] ; [+5]
       73 GETIMPORT                        R8 K1 [error]
       75 LOADK                            R9 K25 ["Animation generation failed: no FBX file returned"]
       76 CALL                             R8 1 0
       77 GETUPVAL                         R8 1
       78 MOVE                             R10 R6
       79 NAMECALL                         R8 R8 K26 ["StartSessionWithPathAsync"]
       81 CALL                             R8 2 1
       82 NAMECALL                         R9 R8 K27 ["GetKeyframeSequences"]
       84 CALL                             R9 1 1
       85 NAMECALL                         R10 R8 K28 ["Destroy"]
       87 CALL                             R10 1 0
       88 LENGTH                           R10 R9
       89 JUMPIFNOTEQKN                    R10 K29 [0] ; [+5]
       91 GETIMPORT                        R10 K1 [error]
       93 LOADK                            R11 K30 ["Animation generation failed: no KeyframeSequence extracted from FBX"]
       94 CALL                             R10 1 0
       95 GETUPVAL                         R10 2
       96 MOVE                             R11 R9
       97 CALL                             R10 1 1
       98 JUMPIFEQKNIL                     R6 ; [+11]
      100 LOADK                            R13 K31 ["([^/\\]+)%.fbx$"]
      101 NAMECALL                         R11 R6 K32 ["match"]
      103 CALL                             R11 2 1
      104 JUMPIF                           R11 ; [+6]
      105 LOADK                            R13 K33 ["([^/\\]+)$"]
      106 NAMECALL                         R11 R6 K32 ["match"]
      108 CALL                             R11 2 1
      109 JUMP                             ; [+1]
      110 LOADK                            R11 K34 ["GeneratedAnim"]
      111 SETTABLEKS                       R11 R10 K35 ["Name"]
      113 GETUPVAL                         R12 3
      114 GETTABLEKS                       R12 R12 K36 ["FFlagDebugLogAssistantUI"]
      116 JUMPIFNOT                        R12 ; [+10]
      117 GETIMPORT                        R12 K38 [print]
      119 LOADK                            R14 K39 ["[AnimationGen] FBX saved: "]
      120 FASTCALL1                        TOSTRING R6 ; [+3]
      121 MOVE                             R16 R6
      122 GETIMPORT                        R15 K23 [tostring]
      124 CALL                             R15 1 1
      125 CONCAT                           R13 R14 R15
      126 CALL                             R12 1 0
      127 DUPTABLE                         R12 K43 [{"animationClip", "contextId", "fbxFilePath"}]
      128 SETTABLEKS                       R10 R12 K40 ["animationClip"]
      130 SETTABLEKS                       R7 R12 K41 ["contextId"]
      132 SETTABLEKS                       R6 R12 K42 ["fbxFilePath"]
      134 RETURN                           R12 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.AssetType.Animation]
        4 GETUPVAL                         R4 2
        5 NAMECALL                         R0 R0 K4 ["PromptSaveInstanceToRobloxAsync"]
        7 CALL                             R0 4 -1
        8 RETURN                           R0 -1

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
       20 JUMPIF                           R2 ; [+10]
       21 GETIMPORT                        R4 K10 [warn]
       23 LOADK                            R6 K11 ["[AnimationGen] Save to Roblox failed: "]
       24 FASTCALL1                        TOSTRING R3 ; [+3]
       25 MOVE                             R8 R3
       26 GETIMPORT                        R7 K13 [tostring]
       28 CALL                             R7 1 1
       29 CONCAT                           R5 R6 R7
       30 CALL                             R4 1 0
       31 CLOSEUPVALS                      R1
       32 RETURN                           R0 0

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
        3 DUPTABLE                         R2 K3 [{"generateAnimationAsync", "openAnimationClipEditorAsync", "publishAnimationAsync"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K0 ["generateAnimationAsync"]
        7 SETTABLEKS                       R1 R2 K1 ["openAnimationClipEditorAsync"]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K2 ["publishAnimationAsync"]
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
       51 GETIMPORT                        R9 K13 [require]
       53 GETTABLEKS                       R10 R6 K14 ["Src"]
       55 GETTABLEKS                       R10 R10 K18 ["Util"]
       57 GETTABLEKS                       R10 R10 K19 ["selectMainAnimation"]
       59 CALL                             R9 1 1
       60 DUPCLOSURE                       R10 K20 [PROTO_1]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R7
       65 DUPCLOSURE                       R11 K21 [PROTO_3]
       66 CAPTURE                          VAL R5
       67 DUPCLOSURE                       R12 K22 [PROTO_5]
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R11
       71 DUPTABLE                         R13 K24 [{"create"}]
       72 SETTABLEKS                       R12 R13 K23 ["create"]
       74 RETURN                           R13 1
