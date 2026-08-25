PROTO_0:
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

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["animationGen"]
        5 GETTABLEKS                       R0 R0 K2 ["generateAnimationAsync"]
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R2 K5 [{"numFrames", "loop"}]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K3 ["numFrames"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K4 ["loop"]
       15 SETTABLEKS                       R3 R2 K4 ["loop"]
       17 CALL                             R0 2 1
       18 LOADK                            R2 K6 ["AssistantAnimation_"]
       19 GETUPVAL                         R3 4
       20 LOADN                            R5 1
       21 LOADN                            R6 8
       22 NAMECALL                         R3 R3 K7 ["sub"]
       24 CALL                             R3 3 1
       25 CONCAT                           R1 R2 R3
       26 GETTABLEKS                       R2 R0 K8 ["fbxFilePath"]
       28 JUMPIFEQKNIL                     R2 ; [+12]
       30 GETTABLEKS                       R2 R0 K8 ["fbxFilePath"]
       32 LOADK                            R4 K9 ["([^/\\]+)%.fbx$"]
       33 NAMECALL                         R2 R2 K10 ["match"]
       35 CALL                             R2 2 1
       36 JUMPIFEQKNIL                     R2 ; [+4]
       38 JUMPIFEQKS                       R2 K11 [""] ; [+2]
       40 MOVE                             R1 R2
       41 GETTABLEKS                       R2 R0 K12 ["animationClip"]
       43 LOADK                            R3 K11 [""]
       44 JUMPIFEQKNIL                     R2 ; [+20]
       46 GETUPVAL                         R4 5
       47 MOVE                             R5 R2
       48 CALL                             R4 1 1
       49 MOVE                             R2 R4
       50 SETTABLEKS                       R1 R2 K13 ["Name"]
       52 GETUPVAL                         R6 6
       53 GETUPVAL                         R7 4
       54 CALL                             R6 1 -1
       55 NAMECALL                         R4 R2 K14 ["AddTag"]
       57 CALL                             R4 -1 0
       58 GETUPVAL                         R4 7
       59 MOVE                             R5 R2
       60 GETUPVAL                         R6 3
       61 GETTABLEKS                       R6 R6 K15 ["rig"]
       63 CALL                             R4 2 1
       64 MOVE                             R3 R4
       65 DUPTABLE                         R4 K20 [{"name", "generationId", "fbxFilePath", "rigName", "keyframeSequence"}]
       66 SETTABLEKS                       R1 R4 K16 ["name"]
       68 GETUPVAL                         R5 4
       69 SETTABLEKS                       R5 R4 K17 ["generationId"]
       71 GETTABLEKS                       R5 R0 K8 ["fbxFilePath"]
       73 SETTABLEKS                       R5 R4 K8 ["fbxFilePath"]
       75 SETTABLEKS                       R3 R4 K18 ["rigName"]
       77 SETTABLEKS                       R2 R4 K19 ["keyframeSequence"]
       79 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["prompt"]
        2 GETTABLEKS                       R7 R0 K2 ["duration"]
        4 ORK                              R6 R7 K1 [3]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K3 ["DEFAULT_GENERATION_FPS"]
        8 MUL                              R5 R6 R7
        9 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       10 GETIMPORT                        R4 K6 [math.floor]
       12 CALL                             R4 1 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K7 ["MIN_GENERATION_FRAMES"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K8 ["MAX_GENERATION_FRAMES"]
       19 FASTCALL                         MATH_CLAMP ; [+2]
       20 GETIMPORT                        R3 K10 [math.clamp]
       22 CALL                             R3 3 1
       23 GETUPVAL                         R4 1
       24 LOADB                            R6 0
       25 NAMECALL                         R4 R4 K11 ["GenerateGUID"]
       27 CALL                             R4 2 1
       28 GETTABLEKS                       R5 R1 K12 ["startRecording"]
       30 MOVE                             R6 R4
       31 CALL                             R5 1 0
       32 GETIMPORT                        R5 K14 [pcall]
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U4
       43 CALL                             R5 1 2
       44 GETTABLEKS                       R7 R1 K15 ["endRecording"]
       46 MOVE                             R8 R4
       47 CALL                             R7 1 0
       48 JUMPIF                           R5 ; [+18]
       49 GETIMPORT                        R7 K17 [warn]
       51 LOADK                            R8 K18 ["[AnimationGenTool] Generation failed:"]
       52 FASTCALL1                        TOSTRING R6 ; [+3]
       53 MOVE                             R10 R6
       54 GETIMPORT                        R9 K20 [tostring]
       56 CALL                             R9 1 1
       57 CALL                             R7 2 0
       58 DUPTABLE                         R7 K24 [{["success"] = False, ["errorMessage"]}]
       59 FASTCALL1                        TOSTRING R6 ; [+3]
       60 MOVE                             R9 R6
       61 GETIMPORT                        R8 K20 [tostring]
       63 CALL                             R8 1 1
       64 SETTABLEKS                       R8 R7 K23 ["errorMessage"]
       66 RETURN                           R7 1
       67 DUPTABLE                         R7 K32 [{["success"] = True, ["name"], ["generationId"], ["fbxFilePath"], ["rigName"], ["keyframeSequence"], ["id"]}]
       68 GETTABLEKS                       R8 R6 K26 ["name"]
       70 SETTABLEKS                       R8 R7 K26 ["name"]
       72 GETTABLEKS                       R8 R6 K27 ["generationId"]
       74 SETTABLEKS                       R8 R7 K27 ["generationId"]
       76 GETTABLEKS                       R8 R6 K28 ["fbxFilePath"]
       78 SETTABLEKS                       R8 R7 K28 ["fbxFilePath"]
       80 GETTABLEKS                       R8 R6 K29 ["rigName"]
       82 SETTABLEKS                       R8 R7 K29 ["rigName"]
       84 GETTABLEKS                       R8 R6 K30 ["keyframeSequence"]
       86 SETTABLEKS                       R8 R7 K30 ["keyframeSequence"]
       88 GETTABLEKS                       R8 R0 K31 ["id"]
       90 SETTABLEKS                       R8 R7 K31 ["id"]
       92 RETURN                           R7 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 DUPCLOSURE                       R1 K0 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 DUPCLOSURE                       R2 K1 [PROTO_1]
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 NEWCLOSURE                       R3 P2
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 NEWCLOSURE                       R4 P3
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R3
       16 NEWCLOSURE                       R5 P4
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          VAL R4
       22 DUPTABLE                         R6 K3 [{"generateAndSaveAnimationAsync"}]
       23 SETTABLEKS                       R5 R6 K2 ["generateAndSaveAnimationAsync"]
       25 RETURN                           R6 1

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
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Util"]
       23 GETTABLEKS                       R4 R4 K12 ["AnimationGen"]
       25 GETTABLEKS                       R4 R4 K13 ["AnimationGenConstants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["AnimationGen"]
       34 GETTABLEKS                       R5 R5 K14 ["AnimationGenTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R6 R2 K15 ["Guest"]
       41 GETTABLEKS                       R6 R6 K16 ["Environment"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R7 R2 K11 ["Util"]
       48 GETTABLEKS                       R7 R7 K12 ["AnimationGen"]
       50 GETTABLEKS                       R7 R7 K17 ["addHumanoidRootPartToKeyframeSequence"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R3 K18 ["RBX_ANIMSAVES_FOLDER_NAME"]
       55 GETTABLEKS                       R8 R3 K19 ["ANIM_SAVES_INSTANCE_NAME"]
       57 GETTABLEKS                       R9 R4 K20 ["getLinkTag"]
       59 DUPCLOSURE                       R10 K21 [PROTO_8]
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R9
       67 RETURN                           R10 1
