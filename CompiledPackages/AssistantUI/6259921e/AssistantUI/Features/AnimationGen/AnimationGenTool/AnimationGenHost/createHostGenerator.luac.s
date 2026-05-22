PROTO_0:
        0 LOADK                            R2 K0 ["Assistant-AnimationGenLink-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["Name"]
        2 GETTABLEKS                       R4 R0 K0 ["Name"]
        4 JUMPIFNOTEQ                      R3 R4 ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R5 R0 K0 ["Name"]
        9 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       11 CALL                             R3 2 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+6]
       14 GETTABLEKS                       R4 R0 K0 ["Name"]
       16 SETTABLEKS                       R4 R1 K0 ["Name"]
       18 RETURN                           R0 0
       19 JUMPIFEQ                         R3 R1 ; [+17]
       21 GETIMPORT                        R4 K3 [warn]
       23 LOADK                            R6 K4 ["[AnimationGen] "]
       24 GETUPVAL                         R7 0
       25 LOADK                            R8 K5 [" already has a child named"]
       26 CONCAT                           R5 R6 R8
       27 GETTABLEKS                       R6 R0 K0 ["Name"]
       29 LOADK                            R8 K6 ["; leaving "]
       30 GETUPVAL                         R9 1
       31 LOADK                            R10 K7 [" folder as"]
       32 CONCAT                           R7 R8 R10
       33 GETTABLEKS                       R8 R1 K0 ["Name"]
       35 LOADK                            R9 K8 ["to avoid a name collision."]
       36 CALL                             R4 5 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+8]
        5 LOADK                            R4 K1 ["ObjectValue"]
        6 NAMECALL                         R2 R1 K2 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETTABLEKS                       R2 R1 K3 ["Value"]
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R2 R1 K3 ["Value"]
       16 LOADK                            R5 K1 ["ObjectValue"]
       17 NAMECALL                         R3 R2 K2 ["IsA"]
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+4]
       21 GETTABLEKS                       R3 R2 K3 ["Value"]
       23 JUMPIFEQ                         R3 R0 ; [+2]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R3 R2 K4 ["Parent"]
       28 JUMPIFNOT                        R3 ; [+5]
       29 GETTABLEKS                       R4 R3 K5 ["Name"]
       31 GETUPVAL                         R5 1
       32 JUMPIFEQ                         R4 R5 ; [+2]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R4 R2 K5 ["Name"]
       37 GETTABLEKS                       R5 R0 K5 ["Name"]
       39 JUMPIFNOTEQ                      R4 R5 ; [+2]
       41 RETURN                           R0 0
       42 GETTABLEKS                       R6 R0 K5 ["Name"]
       44 NAMECALL                         R4 R3 K0 ["FindFirstChild"]
       46 CALL                             R4 2 1
       47 JUMPIFNOTEQKNIL                  R4 ; [+6]
       49 GETTABLEKS                       R5 R0 K5 ["Name"]
       51 SETTABLEKS                       R5 R2 K5 ["Name"]
       53 RETURN                           R0 0
       54 JUMPIFEQ                         R4 R2 ; [+17]
       56 GETIMPORT                        R5 K7 [warn]
       58 LOADK                            R7 K8 ["[AnimationGen] "]
       59 GETUPVAL                         R8 1
       60 LOADK                            R9 K9 [" already has a child named"]
       61 CONCAT                           R6 R7 R9
       62 GETTABLEKS                       R7 R0 K5 ["Name"]
       64 LOADK                            R9 K10 ["; leaving "]
       65 GETUPVAL                         R10 0
       66 LOADK                            R11 K11 [" folder as"]
       67 CONCAT                           R8 R9 R11
       68 GETTABLEKS                       R9 R2 K5 ["Name"]
       70 LOADK                            R10 K12 ["to avoid a name collision."]
       71 CALL                             R5 5 0
       72 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 JUMPIFNOT                        R0 ; [+7]
        4 NAMECALL                         R1 R0 K0 ["Disconnect"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 LOADNIL                          R3
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R1 R2 R0
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 LOADK                            R3 K0 ["Name"]
        8 NAMECALL                         R1 R0 K1 ["GetPropertyChangedSignal"]
       10 CALL                             R1 2 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 NAMECALL                         R1 R1 K2 ["Connect"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 1
       18 SETTABLE                         R1 R2 R0
       19 GETTABLEKS                       R2 R0 K3 ["Destroying"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R0
       24 NAMECALL                         R2 R2 K4 ["Once"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R1 ; [+9]
        2 GETIMPORT                        R2 K1 [game]
        4 GETTABLEKS                       R2 R2 K2 ["Workspace"]
        6 SETTABLEKS                       R2 R0 K3 ["Parent"]
        8 LOADK                            R2 K4 [""]
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 0
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R2 R2 K5 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+11]
       16 GETIMPORT                        R3 K8 [Instance.new]
       18 LOADK                            R4 K9 ["Model"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 1
       21 SETTABLEKS                       R4 R3 K10 ["Name"]
       23 GETUPVAL                         R4 0
       24 SETTABLEKS                       R4 R3 K3 ["Parent"]
       26 MOVE                             R2 R3
       27 LOADNIL                          R3
       28 GETUPVAL                         R6 2
       29 NAMECALL                         R4 R1 K5 ["FindFirstChild"]
       31 CALL                             R4 2 1
       32 JUMPIFNOT                        R4 ; [+7]
       33 LOADK                            R7 K11 ["ObjectValue"]
       34 NAMECALL                         R5 R4 K12 ["IsA"]
       36 CALL                             R5 2 1
       37 JUMPIFNOT                        R5 ; [+2]
       38 MOVE                             R3 R4
       39 JUMP                             ; [+22]
       40 GETIMPORT                        R5 K8 [Instance.new]
       42 LOADK                            R6 K11 ["ObjectValue"]
       43 CALL                             R5 1 1
       44 GETUPVAL                         R6 2
       45 SETTABLEKS                       R6 R5 K10 ["Name"]
       47 SETTABLEKS                       R1 R5 K3 ["Parent"]
       49 JUMPIFNOT                        R4 ; [+11]
       50 NAMECALL                         R6 R4 K13 ["GetChildren"]
       52 CALL                             R6 1 3
       53 FORGPREP                         R6
       54 SETTABLEKS                       R5 R10 K3 ["Parent"]
       56 FORGLOOP                         R6 2 ; [-3]
       58 NAMECALL                         R6 R4 K14 ["Destroy"]
       60 CALL                             R6 1 0
       61 MOVE                             R3 R5
       62 GETTABLEKS                       R5 R3 K15 ["Value"]
       64 JUMPIFNOT                        R5 ; [+9]
       65 LOADK                            R8 K11 ["ObjectValue"]
       66 NAMECALL                         R6 R5 K12 ["IsA"]
       68 CALL                             R6 2 1
       69 JUMPIFNOT                        R6 ; [+4]
       70 GETTABLEKS                       R6 R5 K15 ["Value"]
       72 JUMPIFEQ                         R6 R1 ; [+17]
       74 GETIMPORT                        R6 K8 [Instance.new]
       76 LOADK                            R7 K11 ["ObjectValue"]
       77 CALL                             R6 1 1
       78 GETTABLEKS                       R7 R1 K10 ["Name"]
       80 SETTABLEKS                       R7 R6 K10 ["Name"]
       82 SETTABLEKS                       R2 R6 K3 ["Parent"]
       84 SETTABLEKS                       R1 R6 K15 ["Value"]
       86 MOVE                             R5 R6
       87 SETTABLEKS                       R5 R3 K15 ["Value"]
       89 JUMP                             ; [+39]
       90 MOVE                             R6 R5
       91 MOVE                             R7 R2
       92 GETTABLEKS                       R8 R6 K10 ["Name"]
       94 GETTABLEKS                       R9 R1 K10 ["Name"]
       96 JUMPIFNOTEQ                      R8 R9 ; [+2]
       98 JUMP                             ; [+30]
       99 GETTABLEKS                       R10 R1 K10 ["Name"]
      101 NAMECALL                         R8 R7 K5 ["FindFirstChild"]
      103 CALL                             R8 2 1
      104 JUMPIFNOTEQKNIL                  R8 ; [+6]
      106 GETTABLEKS                       R9 R1 K10 ["Name"]
      108 SETTABLEKS                       R9 R6 K10 ["Name"]
      110 JUMP                             ; [+18]
      111 JUMPIFEQ                         R8 R6 ; [+17]
      113 GETIMPORT                        R9 K17 [warn]
      115 LOADK                            R11 K18 ["[AnimationGen] "]
      116 GETUPVAL                         R12 1
      117 LOADK                            R13 K19 [" already has a child named"]
      118 CONCAT                           R10 R11 R13
      119 GETTABLEKS                       R11 R1 K10 ["Name"]
      121 LOADK                            R13 K20 ["; leaving "]
      122 GETUPVAL                         R14 2
      123 LOADK                            R15 K21 [" folder as"]
      124 CONCAT                           R12 R13 R15
      125 GETTABLEKS                       R13 R6 K10 ["Name"]
      127 LOADK                            R14 K22 ["to avoid a name collision."]
      128 CALL                             R9 5 0
      129 GETUPVAL                         R6 3
      130 MOVE                             R7 R1
      131 CALL                             R6 1 0
      132 SETTABLEKS                       R5 R0 K3 ["Parent"]
      134 GETTABLEKS                       R6 R1 K10 ["Name"]
      136 RETURN                           R6 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["animationGen"]
        5 GETTABLEKS                       R0 R0 K2 ["generateAnimationAsync"]
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R2 K4 [{"duration"}]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K3 ["duration"]
       12 CALL                             R0 2 1
       13 LOADK                            R2 K5 ["AssistantAnimation_"]
       14 GETUPVAL                         R3 3
       15 LOADN                            R5 1
       16 LOADN                            R6 8
       17 NAMECALL                         R3 R3 K6 ["sub"]
       19 CALL                             R3 3 1
       20 CONCAT                           R1 R2 R3
       21 GETTABLEKS                       R2 R0 K7 ["fbxFilePath"]
       23 JUMPIFEQKNIL                     R2 ; [+12]
       25 GETTABLEKS                       R2 R0 K7 ["fbxFilePath"]
       27 LOADK                            R4 K8 ["([^/\\]+)%.fbx$"]
       28 NAMECALL                         R2 R2 K9 ["match"]
       30 CALL                             R2 2 1
       31 JUMPIFEQKNIL                     R2 ; [+4]
       33 JUMPIFEQKS                       R2 K10 [""] ; [+2]
       35 MOVE                             R1 R2
       36 GETTABLEKS                       R2 R0 K11 ["animationClip"]
       38 LOADK                            R3 K10 [""]
       39 JUMPIFEQKNIL                     R2 ; [+24]
       41 GETUPVAL                         R4 4
       42 MOVE                             R5 R2
       43 CALL                             R4 1 1
       44 MOVE                             R2 R4
       45 SETTABLEKS                       R1 R2 K12 ["Name"]
       47 GETUPVAL                         R4 5
       48 GETTABLEKS                       R4 R4 K13 ["addAssistantLink"]
       50 MOVE                             R5 R2
       51 GETUPVAL                         R7 3
       52 LOADK                            R8 K14 ["Assistant-AnimationGenLink-%*"]
       53 MOVE                             R10 R7
       54 NAMECALL                         R8 R8 K15 ["format"]
       56 CALL                             R8 2 1
       57 MOVE                             R6 R8
       58 CALL                             R4 2 0
       59 GETUPVAL                         R4 6
       60 MOVE                             R5 R2
       61 GETUPVAL                         R6 7
       62 CALL                             R4 2 1
       63 MOVE                             R3 R4
       64 DUPTABLE                         R4 K20 [{"name", "generationId", "fbxFilePath", "rigName", "keyframeSequence"}]
       65 SETTABLEKS                       R1 R4 K16 ["name"]
       67 GETUPVAL                         R5 3
       68 SETTABLEKS                       R5 R4 K17 ["generationId"]
       70 GETTABLEKS                       R5 R0 K7 ["fbxFilePath"]
       72 SETTABLEKS                       R5 R4 K7 ["fbxFilePath"]
       74 SETTABLEKS                       R3 R4 K18 ["rigName"]
       76 SETTABLEKS                       R2 R4 K19 ["keyframeSequence"]
       78 RETURN                           R4 1

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["toolArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 GETTABLEKS                       R3 R0 K2 ["prompt"]
        6 GETTABLEKS                       R5 R0 K4 ["duration"]
        8 ORK                              R4 R5 K3 [3]
        9 GETTABLEKS                       R5 R0 K5 ["rig"]
       11 GETUPVAL                         R6 0
       12 LOADB                            R8 0
       13 NAMECALL                         R6 R6 K6 ["GenerateGUID"]
       15 CALL                             R6 2 1
       16 GETTABLEKS                       R7 R2 K7 ["startRecording"]
       18 MOVE                             R8 R6
       19 CALL                             R7 1 0
       20 GETIMPORT                        R7 K9 [pcall]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R6
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R5
       31 CALL                             R7 1 2
       32 GETTABLEKS                       R9 R2 K10 ["endRecording"]
       34 MOVE                             R10 R6
       35 CALL                             R9 1 0
       36 JUMPIF                           R7 ; [+21]
       37 GETIMPORT                        R9 K12 [warn]
       39 LOADK                            R10 K13 ["[AnimationGenTool] Generation failed:"]
       40 FASTCALL1                        TOSTRING R8 ; [+3]
       41 MOVE                             R12 R8
       42 GETIMPORT                        R11 K15 [tostring]
       44 CALL                             R11 1 1
       45 CALL                             R9 2 0
       46 DUPTABLE                         R9 K18 [{"success", "errorMessage"}]
       47 LOADB                            R10 0
       48 SETTABLEKS                       R10 R9 K16 ["success"]
       50 FASTCALL1                        TOSTRING R8 ; [+3]
       51 MOVE                             R11 R8
       52 GETIMPORT                        R10 K15 [tostring]
       54 CALL                             R10 1 1
       55 SETTABLEKS                       R10 R9 K17 ["errorMessage"]
       57 RETURN                           R9 1
       58 DUPTABLE                         R9 K26 [{"success", "name", "generationId", "fbxFilePath", "rigName", "keyframeSequence", "messageId", "contentId"}]
       59 LOADB                            R10 1
       60 SETTABLEKS                       R10 R9 K16 ["success"]
       62 GETTABLEKS                       R10 R8 K19 ["name"]
       64 SETTABLEKS                       R10 R9 K19 ["name"]
       66 GETTABLEKS                       R10 R8 K20 ["generationId"]
       68 SETTABLEKS                       R10 R9 K20 ["generationId"]
       70 GETTABLEKS                       R10 R8 K21 ["fbxFilePath"]
       72 SETTABLEKS                       R10 R9 K21 ["fbxFilePath"]
       74 GETTABLEKS                       R10 R8 K22 ["rigName"]
       76 SETTABLEKS                       R10 R9 K22 ["rigName"]
       78 GETTABLEKS                       R10 R8 K23 ["keyframeSequence"]
       80 SETTABLEKS                       R10 R9 K23 ["keyframeSequence"]
       82 GETTABLEKS                       R10 R0 K24 ["messageId"]
       84 SETTABLEKS                       R10 R9 K24 ["messageId"]
       86 GETTABLEKS                       R10 R0 K25 ["contentId"]
       88 SETTABLEKS                       R10 R9 K25 ["contentId"]
       90 RETURN                           R9 1

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 DUPCLOSURE                       R1 K0 [PROTO_0]
        3 DUPCLOSURE                       R2 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 DUPCLOSURE                       R3 K2 [PROTO_2]
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 NEWCLOSURE                       R4 P3
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R0
       12 NEWCLOSURE                       R5 P4
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R4
       17 NEWCLOSURE                       R6 P5
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R5
       22 DUPTABLE                         R7 K4 [{"generateAndSaveAnimationAsync"}]
       23 SETTABLEKS                       R6 R7 K3 ["generateAndSaveAnimationAsync"]
       25 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ServerStorage"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AssistantUI"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K6 [script]
       21 LOADK                            R5 K9 ["AnimationGen"]
       22 NAMECALL                         R3 R3 K8 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["AnimationGenTool"]
       29 GETTABLEKS                       R5 R5 K13 ["AnimationGenBridgeTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K14 ["AnimationGenConstants"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K11 [require]
       39 GETTABLEKS                       R7 R2 K15 ["Util"]
       41 GETTABLEKS                       R7 R7 K16 ["ToolUtils"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K11 [require]
       46 GETTABLEKS                       R8 R3 K12 ["AnimationGenTool"]
       48 GETTABLEKS                       R8 R8 K15 ["Util"]
       50 GETTABLEKS                       R8 R8 K17 ["addHumanoidRootPartToKeyframeSequence"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R5 K18 ["RBX_ANIMSAVES_FOLDER_NAME"]
       55 GETTABLEKS                       R9 R5 K19 ["ANIM_SAVES_INSTANCE_NAME"]
       57 DUPCLOSURE                       R10 K20 [PROTO_9]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 RETURN                           R10 1
