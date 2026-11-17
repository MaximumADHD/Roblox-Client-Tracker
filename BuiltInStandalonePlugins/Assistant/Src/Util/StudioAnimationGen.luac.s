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
       44 NEWCLOSURE                       R5 P0
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 FASTPCALL                        pcall 1 ; [+2]
       50 GETIMPORT                        R4 K17 [pcall]
       52 CALL                             R4 1 3
       53 JUMPIF                           R4 ; [+10]
       54 GETIMPORT                        R7 K1 [error]
       56 LOADK                            R9 K18 ["GenerateAnimationAsync failed: "]
       57 FASTCALL1                        TOSTRING R5 ; [+3]
       58 MOVE                             R11 R5
       59 GETIMPORT                        R10 K20 [tostring]
       61 CALL                             R10 1 1
       62 CONCAT                           R8 R9 R10
       63 CALL                             R7 1 0
       64 JUMPIFEQKNIL                     R5 ; [+3]
       66 JUMPIFNOTEQKS                    R5 K21 [""] ; [+5]
       68 GETIMPORT                        R7 K1 [error]
       70 LOADK                            R8 K22 ["Animation generation failed: no FBX file returned"]
       71 CALL                             R7 1 0
       72 GETUPVAL                         R7 1
       73 MOVE                             R9 R5
       74 NAMECALL                         R7 R7 K23 ["StartSessionWithPathAsync"]
       76 CALL                             R7 2 1
       77 NAMECALL                         R8 R7 K24 ["GetKeyframeSequences"]
       79 CALL                             R8 1 1
       80 NAMECALL                         R9 R7 K25 ["Destroy"]
       82 CALL                             R9 1 0
       83 LENGTH                           R9 R8
       84 JUMPIFNOTEQKN                    R9 K26 [0] ; [+5]
       86 GETIMPORT                        R9 K1 [error]
       88 LOADK                            R10 K27 ["Animation generation failed: no KeyframeSequence extracted from FBX"]
       89 CALL                             R9 1 0
       90 GETUPVAL                         R9 2
       91 MOVE                             R10 R8
       92 CALL                             R9 1 1
       93 JUMPIFEQKNIL                     R5 ; [+11]
       95 LOADK                            R12 K28 ["([^/\\]+)%.fbx$"]
       96 NAMECALL                         R10 R5 K29 ["match"]
       98 CALL                             R10 2 1
       99 JUMPIF                           R10 ; [+6]
      100 LOADK                            R12 K30 ["([^/\\]+)$"]
      101 NAMECALL                         R10 R5 K29 ["match"]
      103 CALL                             R10 2 1
      104 JUMP                             ; [+1]
      105 LOADK                            R10 K31 ["GeneratedAnim"]
      106 SETTABLEKS                       R10 R9 K32 ["Name"]
      108 GETUPVAL                         R11 3
      109 GETTABLEKS                       R11 R11 K33 ["FFlagDebugLogAssistantUI"]
      111 JUMPIFNOT                        R11 ; [+10]
      112 GETIMPORT                        R11 K35 [print]
      114 LOADK                            R13 K36 ["[AnimationGen] FBX saved: "]
      115 FASTCALL1                        TOSTRING R5 ; [+3]
      116 MOVE                             R15 R5
      117 GETIMPORT                        R14 K20 [tostring]
      119 CALL                             R14 1 1
      120 CONCAT                           R12 R13 R14
      121 CALL                             R11 1 0
      122 DUPTABLE                         R11 K40 [{"animationClip", "contextId", "fbxFilePath"}]
      123 SETTABLEKS                       R9 R11 K37 ["animationClip"]
      125 SETTABLEKS                       R6 R11 K38 ["contextId"]
      127 SETTABLEKS                       R5 R11 K39 ["fbxFilePath"]
      129 RETURN                           R11 1

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
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          REF R1
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R2 K8 [pcall]
       20 CALL                             R2 1 2
       21 JUMPIF                           R2 ; [+13]
       22 GETIMPORT                        R4 K10 [warn]
       24 LOADK                            R6 K11 ["[AnimationGen] Save to Roblox failed: "]
       25 FASTCALL1                        TOSTRING R3 ; [+3]
       26 MOVE                             R8 R3
       27 GETIMPORT                        R7 K13 [tostring]
       29 CALL                             R7 1 1
       30 CONCAT                           R5 R6 R7
       31 CALL                             R4 1 0
       32 LOADNIL                          R4
       33 CLOSEUPVALS                      R1
       34 RETURN                           R4 1
       35 CLOSEUPVALS                      R1
       36 RETURN                           R3 1

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
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 FASTPCALL                        pcall 1 ; [+2]
       26 GETIMPORT                        R3 K12 [pcall]
       28 CALL                             R3 1 3
       29 JUMPIF                           R3 ; [+7]
       30 LOADNIL                          R6
       31 FASTCALL1                        TOSTRING R4 ; [+3]
       32 MOVE                             R8 R4
       33 GETIMPORT                        R7 K14 [tostring]
       35 CALL                             R7 1 1
       36 RETURN                           R6 2
       37 GETIMPORT                        R6 K17 [Enum.CreateAssetResult.Success]
       39 JUMPIFEQ                         R4 R6 ; [+14]
       41 LOADNIL                          R6
       42 LOADK                            R7 K18 ["%*: %*"]
       43 GETTABLEKS                       R9 R4 K0 ["Name"]
       45 FASTCALL1                        TOSTRING R5 ; [+3]
       46 MOVE                             R11 R5
       47 GETIMPORT                        R10 K14 [tostring]
       49 CALL                             R10 1 1
       50 NAMECALL                         R7 R7 K19 ["format"]
       52 CALL                             R7 3 1
       53 RETURN                           R6 2
       54 MOVE                             R6 R5
       55 LOADNIL                          R7
       56 RETURN                           R6 2

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
        7 GETIMPORT                        R2 K1 [game]
        9 GETTABLEKS                       R2 R2 K3 ["GetService"]
       11 GETIMPORT                        R3 K1 [game]
       13 LOADK                            R4 K4 ["AssetImportService"]
       14 FASTPCALL                        pcall 3 ; [+2]
       15 GETIMPORT                        R1 K6 [pcall]
       17 CALL                             R1 3 2
       18 GETIMPORT                        R4 K1 [game]
       20 GETTABLEKS                       R4 R4 K3 ["GetService"]
       22 GETIMPORT                        R5 K1 [game]
       24 LOADK                            R6 K7 ["GenerationService"]
       25 FASTPCALL                        pcall 3 ; [+2]
       26 GETIMPORT                        R3 K6 [pcall]
       28 CALL                             R3 3 2
       29 GETIMPORT                        R6 K1 [game]
       31 GETTABLEKS                       R6 R6 K3 ["GetService"]
       33 GETIMPORT                        R7 K1 [game]
       35 LOADK                            R8 K8 ["StudioAssetService"]
       36 FASTPCALL                        pcall 3 ; [+2]
       37 GETIMPORT                        R5 K6 [pcall]
       39 CALL                             R5 3 2
       40 GETIMPORT                        R7 K10 [script]
       42 LOADK                            R9 K11 ["Assistant"]
       43 NAMECALL                         R7 R7 K12 ["FindFirstAncestor"]
       45 CALL                             R7 2 1
       46 GETIMPORT                        R8 K14 [require]
       48 GETTABLEKS                       R9 R7 K15 ["Src"]
       50 GETTABLEKS                       R9 R9 K16 ["Flags"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K14 [require]
       55 GETTABLEKS                       R10 R7 K17 ["Packages"]
       57 GETTABLEKS                       R10 R10 K18 ["StudioFoundation"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K14 [require]
       62 GETTABLEKS                       R11 R7 K15 ["Src"]
       64 GETTABLEKS                       R11 R11 K19 ["Util"]
       66 GETTABLEKS                       R11 R11 K20 ["selectMainAnimation"]
       68 CALL                             R10 1 1
       69 DUPCLOSURE                       R11 K21 [PROTO_1]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R8
       74 DUPCLOSURE                       R12 K22 [PROTO_3]
       75 CAPTURE                          VAL R6
       76 DUPCLOSURE                       R13 K23 [PROTO_5]
       77 CAPTURE                          VAL R0
       78 DUPCLOSURE                       R14 K24 [PROTO_7]
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R13
       83 DUPTABLE                         R15 K26 [{"create"}]
       84 SETTABLEKS                       R14 R15 K25 ["create"]
       86 RETURN                           R15 1
