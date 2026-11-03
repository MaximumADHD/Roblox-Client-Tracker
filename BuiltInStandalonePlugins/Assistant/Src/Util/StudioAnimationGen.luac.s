PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 JUMPIFNOT                        R4 ; [+3]
        5 GETUPVAL                         R4 3
        6 GETTABLEKS                       R4 R4 K0 ["onProgress"]
        8 NAMECALL                         R0 R0 K1 ["GenerateAnimationAsync"]
       10 CALL                             R0 4 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETUPVAL                         R2 1
        3 JUMPIF                           R2 ; [+4]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R3 K2 ["AnimationGen services are unavailable"]
        7 CALL                             R2 1 0
        8 DUPTABLE                         R2 K7 [{"NumFrames", "OutputFileName", "GuidanceParameter", "PriorJobId"}]
        9 MOVE                             R3 R1
       10 JUMPIFNOT                        R3 ; [+2]
       11 GETTABLEKS                       R3 R1 K8 ["numFrames"]
       13 SETTABLEKS                       R3 R2 K3 ["NumFrames"]
       15 MOVE                             R3 R1
       16 JUMPIFNOT                        R3 ; [+2]
       17 GETTABLEKS                       R3 R1 K9 ["outputFileName"]
       19 SETTABLEKS                       R3 R2 K4 ["OutputFileName"]
       21 MOVE                             R3 R1
       22 JUMPIFNOT                        R3 ; [+2]
       23 GETTABLEKS                       R3 R1 K10 ["guidanceParameter"]
       25 SETTABLEKS                       R3 R2 K5 ["GuidanceParameter"]
       27 MOVE                             R3 R1
       28 JUMPIFNOT                        R3 ; [+2]
       29 GETTABLEKS                       R3 R1 K11 ["priorJobId"]
       31 SETTABLEKS                       R3 R2 K6 ["PriorJobId"]
       33 DUPTABLE                         R3 K13 [{"Prompt"}]
       34 SETTABLEKS                       R0 R3 K12 ["Prompt"]
       36 JUMPIFNOT                        R1 ; [+7]
       37 GETTABLEKS                       R4 R1 K14 ["keyframes"]
       39 JUMPIFNOT                        R4 ; [+4]
       40 GETTABLEKS                       R4 R1 K14 ["keyframes"]
       42 SETTABLEKS                       R4 R3 K15 ["Animation"]
       44 GETIMPORT                        R4 K17 [pcall]
       46 NEWCLOSURE                       R5 P0
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 CALL                             R4 1 3
       52 JUMPIF                           R4 ; [+10]
       53 GETIMPORT                        R7 K1 [error]
       55 LOADK                            R9 K18 ["GenerateAnimationAsync failed: "]
       56 FASTCALL1                        TOSTRING R5 ; [+3]
       57 MOVE                             R11 R5
       58 GETIMPORT                        R10 K20 [tostring]
       60 CALL                             R10 1 1
       61 CONCAT                           R8 R9 R10
       62 CALL                             R7 1 0
       63 JUMPIFEQKNIL                     R5 ; [+3]
       65 JUMPIFNOTEQKS                    R5 K21 [""] ; [+5]
       67 GETIMPORT                        R7 K1 [error]
       69 LOADK                            R8 K22 ["Animation generation failed: no FBX file returned"]
       70 CALL                             R7 1 0
       71 GETUPVAL                         R7 1
       72 MOVE                             R9 R5
       73 NAMECALL                         R7 R7 K23 ["StartSessionWithPathAsync"]
       75 CALL                             R7 2 1
       76 NAMECALL                         R8 R7 K24 ["GetKeyframeSequences"]
       78 CALL                             R8 1 1
       79 NAMECALL                         R9 R7 K25 ["Destroy"]
       81 CALL                             R9 1 0
       82 LENGTH                           R9 R8
       83 JUMPIFNOTEQKN                    R9 K26 [0] ; [+5]
       85 GETIMPORT                        R9 K1 [error]
       87 LOADK                            R10 K27 ["Animation generation failed: no KeyframeSequence extracted from FBX"]
       88 CALL                             R9 1 0
       89 GETUPVAL                         R9 2
       90 MOVE                             R10 R8
       91 CALL                             R9 1 1
       92 JUMPIFEQKNIL                     R5 ; [+11]
       94 LOADK                            R12 K28 ["([^/\\]+)%.fbx$"]
       95 NAMECALL                         R10 R5 K29 ["match"]
       97 CALL                             R10 2 1
       98 JUMPIF                           R10 ; [+6]
       99 LOADK                            R12 K30 ["([^/\\]+)$"]
      100 NAMECALL                         R10 R5 K29 ["match"]
      102 CALL                             R10 2 1
      103 JUMP                             ; [+1]
      104 LOADK                            R10 K31 ["GeneratedAnim"]
      105 SETTABLEKS                       R10 R9 K32 ["Name"]
      107 GETUPVAL                         R11 3
      108 GETTABLEKS                       R11 R11 K33 ["FFlagDebugLogAssistantUI"]
      110 JUMPIFNOT                        R11 ; [+10]
      111 GETIMPORT                        R11 K35 [print]
      113 LOADK                            R13 K36 ["[AnimationGen] FBX saved: "]
      114 FASTCALL1                        TOSTRING R5 ; [+3]
      115 MOVE                             R15 R5
      116 GETIMPORT                        R14 K20 [tostring]
      118 CALL                             R14 1 1
      119 CONCAT                           R12 R13 R14
      120 CALL                             R11 1 0
      121 DUPTABLE                         R11 K40 [{"animationClip", "contextId", "fbxFilePath"}]
      122 SETTABLEKS                       R9 R11 K37 ["animationClip"]
      124 SETTABLEKS                       R6 R11 K38 ["contextId"]
      126 SETTABLEKS                       R5 R11 K39 ["fbxFilePath"]
      128 RETURN                           R11 1

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
       20 JUMPIF                           R2 ; [+13]
       21 GETIMPORT                        R4 K10 [warn]
       23 LOADK                            R6 K11 ["[AnimationGen] Save to Roblox failed: "]
       24 FASTCALL1                        TOSTRING R3 ; [+3]
       25 MOVE                             R8 R3
       26 GETIMPORT                        R7 K13 [tostring]
       28 CALL                             R7 1 1
       29 CONCAT                           R5 R6 R7
       30 CALL                             R4 1 0
       31 LOADNIL                          R4
       32 CLOSEUPVALS                      R1
       33 RETURN                           R4 1
       34 CLOSEUPVALS                      R1
       35 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.AssetType.Animation]
        4 GETUPVAL                         R4 2
        5 NAMECALL                         R0 R0 K4 ["CreateAssetAsync"]
        7 CALL                             R0 4 -1
        8 RETURN                           R0 -1

PROTO_5:
        0 DUPTABLE                         R2 K1 [{"Name"}]
        1 SETTABLEKS                       R1 R2 K0 ["Name"]
        3 GETIMPORT                        R3 K3 [game]
        5 GETTABLEKS                       R3 R3 K4 ["CreatorType"]
        7 GETIMPORT                        R4 K7 [Enum.CreatorType.Group]
        9 JUMPIFNOTEQ                      R3 R4 ; [+11]
       11 GETIMPORT                        R3 K3 [game]
       13 GETTABLEKS                       R3 R3 K8 ["CreatorId"]
       15 SETTABLEKS                       R3 R2 K8 ["CreatorId"]
       17 GETIMPORT                        R3 K10 [Enum.AssetCreatorType.Group]
       19 SETTABLEKS                       R3 R2 K4 ["CreatorType"]
       21 GETIMPORT                        R3 K12 [pcall]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 CALL                             R3 1 3
       28 JUMPIF                           R3 ; [+7]
       29 LOADNIL                          R6
       30 FASTCALL1                        TOSTRING R4 ; [+3]
       31 MOVE                             R8 R4
       32 GETIMPORT                        R7 K14 [tostring]
       34 CALL                             R7 1 1
       35 RETURN                           R6 2
       36 GETIMPORT                        R6 K17 [Enum.CreateAssetResult.Success]
       38 JUMPIFEQ                         R4 R6 ; [+14]
       40 LOADNIL                          R6
       41 LOADK                            R7 K18 ["%*: %*"]
       42 GETTABLEKS                       R9 R4 K0 ["Name"]
       44 FASTCALL1                        TOSTRING R5 ; [+3]
       45 MOVE                             R11 R5
       46 GETIMPORT                        R10 K14 [tostring]
       48 CALL                             R10 1 1
       49 NAMECALL                         R7 R7 K19 ["format"]
       51 CALL                             R7 3 1
       52 RETURN                           R6 2
       53 MOVE                             R6 R5
       54 LOADNIL                          R7
       55 RETURN                           R6 2

PROTO_6:
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

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 DUPTABLE                         R2 K4 [{"generateAnimationAsync", "openAnimationClipEditorAsync", "publishAnimationAsync", "publishAnimationHeadlessAsync"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K0 ["generateAnimationAsync"]
        7 SETTABLEKS                       R1 R2 K1 ["openAnimationClipEditorAsync"]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K2 ["publishAnimationAsync"]
       12 GETUPVAL                         R3 3
       13 SETTABLEKS                       R3 R2 K3 ["publishAnimationHeadlessAsync"]
       15 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [pcall]
        9 GETIMPORT                        R2 K1 [game]
       11 GETTABLEKS                       R2 R2 K3 ["GetService"]
       13 GETIMPORT                        R3 K1 [game]
       15 LOADK                            R4 K6 ["AssetImportService"]
       16 CALL                             R1 3 2
       17 GETIMPORT                        R3 K5 [pcall]
       19 GETIMPORT                        R4 K1 [game]
       21 GETTABLEKS                       R4 R4 K3 ["GetService"]
       23 GETIMPORT                        R5 K1 [game]
       25 LOADK                            R6 K7 ["GenerationService"]
       26 CALL                             R3 3 2
       27 GETIMPORT                        R5 K5 [pcall]
       29 GETIMPORT                        R6 K1 [game]
       31 GETTABLEKS                       R6 R6 K3 ["GetService"]
       33 GETIMPORT                        R7 K1 [game]
       35 LOADK                            R8 K8 ["StudioAssetService"]
       36 CALL                             R5 3 2
       37 GETIMPORT                        R7 K10 [script]
       39 LOADK                            R9 K11 ["Assistant"]
       40 NAMECALL                         R7 R7 K12 ["FindFirstAncestor"]
       42 CALL                             R7 2 1
       43 GETIMPORT                        R8 K14 [require]
       45 GETTABLEKS                       R9 R7 K15 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Flags"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K14 [require]
       52 GETTABLEKS                       R10 R7 K17 ["Packages"]
       54 GETTABLEKS                       R10 R10 K18 ["StudioFoundation"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K14 [require]
       59 GETTABLEKS                       R11 R7 K15 ["Src"]
       61 GETTABLEKS                       R11 R11 K19 ["Util"]
       63 GETTABLEKS                       R11 R11 K20 ["selectMainAnimation"]
       65 CALL                             R10 1 1
       66 DUPCLOSURE                       R11 K21 [PROTO_1]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R8
       71 DUPCLOSURE                       R12 K22 [PROTO_3]
       72 CAPTURE                          VAL R6
       73 DUPCLOSURE                       R13 K23 [PROTO_5]
       74 CAPTURE                          VAL R0
       75 DUPCLOSURE                       R14 K24 [PROTO_7]
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R13
       80 DUPTABLE                         R15 K26 [{"create"}]
       81 SETTABLEKS                       R14 R15 K25 ["create"]
       83 RETURN                           R15 1
