PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["Name"]
        8 LOADK                            R9 K1 ["Reach_(%d+)$"]
        9 NAMECALL                         R7 R7 K2 ["match"]
       11 CALL                             R7 2 1
       12 JUMPIFEQKNIL                     R7 ; [+8]
       14 FASTCALL1                        TONUMBER R7 ; [+3]
       15 MOVE                             R10 R7
       16 GETIMPORT                        R9 K5 [tonumber]
       18 CALL                             R9 1 1
       19 DIVK                             R8 R9 K3 [100]
       20 SETTABLE                         R6 R1 R8
       21 FORGLOOP                         R2 2 ; [-16]
       23 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADNIL                          R4
        4 NAMECALL                         R0 R0 K0 ["GenerateAnimationAsync"]
        6 CALL                             R0 4 -1
        7 RETURN                           R0 -1

PROTO_2:
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
       95 GETTABLEN                        R10 R9 1
       96 LOADNIL                          R11
       97 JUMPIFNOT                        R1 ; [+15]
       98 GETTABLEKS                       R12 R1 K31 ["includeReachTakes"]
      100 JUMPIFNOT                        R12 ; [+12]
      101 GETUPVAL                         R12 2
      102 MOVE                             R13 R9
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K33 [next]
      106 MOVE                             R14 R12
      107 CALL                             R13 1 1
      108 JUMPIFEQKNIL                     R13 ; [+4]
      110 MOVE                             R11 R12
      111 GETTABLEN                        R13 R12 1
      112 OR                               R10 R13 R10
      113 JUMPIFEQKNIL                     R6 ; [+11]
      115 LOADK                            R14 K34 ["([^/\\]+)%.fbx$"]
      116 NAMECALL                         R12 R6 K35 ["match"]
      118 CALL                             R12 2 1
      119 JUMPIF                           R12 ; [+6]
      120 LOADK                            R14 K36 ["([^/\\]+)$"]
      121 NAMECALL                         R12 R6 K35 ["match"]
      123 CALL                             R12 2 1
      124 JUMP                             ; [+1]
      125 LOADK                            R12 K37 ["GeneratedAnim"]
      126 SETTABLEKS                       R12 R10 K38 ["Name"]
      128 GETUPVAL                         R13 3
      129 GETTABLEKS                       R13 R13 K39 ["FFlagDebugLogAssistantUI"]
      131 JUMPIFNOT                        R13 ; [+10]
      132 GETIMPORT                        R13 K41 [print]
      134 LOADK                            R15 K42 ["[AnimationGen] FBX saved: "]
      135 FASTCALL1                        TOSTRING R6 ; [+3]
      136 MOVE                             R17 R6
      137 GETIMPORT                        R16 K23 [tostring]
      139 CALL                             R16 1 1
      140 CONCAT                           R14 R15 R16
      141 CALL                             R13 1 0
      142 DUPTABLE                         R13 K47 [{"animationClip", "contextId", "fbxFilePath", "reachTakes"}]
      143 SETTABLEKS                       R10 R13 K43 ["animationClip"]
      145 SETTABLEKS                       R7 R13 K44 ["contextId"]
      147 SETTABLEKS                       R6 R13 K45 ["fbxFilePath"]
      149 SETTABLEKS                       R11 R13 K46 ["reachTakes"]
      151 RETURN                           R13 1

PROTO_3:
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

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 DUPTABLE                         R2 K2 [{"generateAnimationAsync", "openAnimationClipEditorAsync"}]
        4 GETUPVAL                         R3 1
        5 SETTABLEKS                       R3 R2 K0 ["generateAnimationAsync"]
        7 SETTABLEKS                       R1 R2 K1 ["openAnimationClipEditorAsync"]
        9 RETURN                           R2 1

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
       29 GETTABLEKS                       R6 R4 K13 ["Src"]
       31 GETTABLEKS                       R6 R6 K14 ["Flags"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K12 [require]
       36 GETTABLEKS                       R7 R4 K15 ["Packages"]
       38 GETTABLEKS                       R7 R7 K16 ["StudioFoundation"]
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K17 [PROTO_0]
       42 DUPCLOSURE                       R8 K18 [PROTO_2]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R5
       47 DUPCLOSURE                       R9 K19 [PROTO_4]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R8
       50 DUPTABLE                         R10 K21 [{"create"}]
       51 SETTABLEKS                       R9 R10 K20 ["create"]
       53 RETURN                           R10 1
