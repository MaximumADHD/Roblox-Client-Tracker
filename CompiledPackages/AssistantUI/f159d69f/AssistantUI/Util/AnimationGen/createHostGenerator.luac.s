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
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFEQKS                       R0 K0 ["R6"] ; [+10]
        5 DUPTABLE                         R0 K4 [{["failureReason"], ["errorMessage"] = "Upscale only supports R6 animation clips"}]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K5 ["FailureReasons"]
        9 GETTABLEKS                       R1 R1 K6 ["InputClipNotR6"]
       11 SETTABLEKS                       R1 R0 K1 ["failureReason"]
       13 RETURN                           R0 1
       14 DUPTABLE                         R0 K9 [{"keyframeData", "r6Sequence"}]
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R2 1
       17 DUPTABLE                         R3 K12 [{"assetId", "fps"}]
       18 GETUPVAL                         R5 4
       19 LOADK                            R7 K13 ["(%d+)"]
       20 NAMECALL                         R5 R5 K14 ["match"]
       22 CALL                             R5 2 -1
       23 FASTCALL                         TONUMBER ; [+2]
       24 GETIMPORT                        R4 K16 [tonumber]
       26 CALL                             R4 -1 1
       27 SETTABLEKS                       R4 R3 K10 ["assetId"]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K17 ["DEFAULT_GENERATION_FPS"]
       32 SETTABLEKS                       R4 R3 K11 ["fps"]
       34 CALL                             R1 2 1
       35 SETTABLEKS                       R1 R0 K7 ["keyframeData"]
       37 GETUPVAL                         R2 1
       38 LOADK                            R4 K18 ["KeyframeSequence"]
       39 NAMECALL                         R2 R2 K19 ["IsA"]
       41 CALL                             R2 2 1
       42 JUMPIFNOT                        R2 ; [+5]
       43 GETUPVAL                         R1 6
       44 GETUPVAL                         R2 1
       45 LOADB                            R3 0
       46 CALL                             R1 2 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R1
       49 SETTABLEKS                       R1 R0 K8 ["r6Sequence"]
       51 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["animationGen"]
        5 GETTABLEKS                       R0 R0 K2 ["generateAnimationAsync"]
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R2 K8 [{"numFrames", "keyframes", "priorJobId", "outputFileName", "includeReachTakes"}]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K3 ["numFrames"]
       12 GETUPVAL                         R3 3
       13 SETTABLEKS                       R3 R2 K4 ["keyframes"]
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K5 ["priorJobId"]
       18 SETTABLEKS                       R3 R2 K5 ["priorJobId"]
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K6 ["outputFileName"]
       23 SETTABLEKS                       R3 R2 K6 ["outputFileName"]
       25 GETUPVAL                         R3 5
       26 SETTABLEKS                       R3 R2 K7 ["includeReachTakes"]
       28 CALL                             R0 2 1
       29 LOADK                            R2 K9 ["AssistantAnimation_"]
       30 GETUPVAL                         R3 6
       31 LOADN                            R5 1
       32 LOADN                            R6 8
       33 NAMECALL                         R3 R3 K10 ["sub"]
       35 CALL                             R3 3 1
       36 CONCAT                           R1 R2 R3
       37 GETTABLEKS                       R2 R0 K11 ["fbxFilePath"]
       39 JUMPIFEQKNIL                     R2 ; [+12]
       41 GETTABLEKS                       R2 R0 K11 ["fbxFilePath"]
       43 LOADK                            R4 K12 ["([^/\\]+)%.fbx$"]
       44 NAMECALL                         R2 R2 K13 ["match"]
       46 CALL                             R2 2 1
       47 JUMPIFEQKNIL                     R2 ; [+4]
       49 JUMPIFEQKS                       R2 K14 [""] ; [+2]
       51 MOVE                             R1 R2
       52 GETTABLEKS                       R2 R0 K15 ["reachTakes"]
       54 JUMPIFEQKNIL                     R2 ; [+10]
       56 MOVE                             R3 R2
       57 LOADNIL                          R4
       58 LOADNIL                          R5
       59 FORGPREP                         R3
       60 GETUPVAL                         R8 7
       61 MOVE                             R9 R7
       62 CALL                             R8 1 0
       63 FORGLOOP                         R3 2 ; [-4]
       65 GETTABLEKS                       R3 R0 K16 ["animationClip"]
       67 JUMPIFEQKNIL                     R3 ; [+13]
       69 GETUPVAL                         R4 7
       70 MOVE                             R5 R3
       71 CALL                             R4 1 1
       72 MOVE                             R3 R4
       73 SETTABLEKS                       R1 R3 K17 ["Name"]
       75 GETUPVAL                         R6 8
       76 GETUPVAL                         R7 6
       77 CALL                             R6 1 -1
       78 NAMECALL                         R4 R3 K18 ["AddTag"]
       80 CALL                             R4 -1 0
       81 DUPTABLE                         R4 K23 [{"name", "generationId", "fbxFilePath", "keyframeSequence", "reachTakes", "contextId"}]
       82 SETTABLEKS                       R1 R4 K19 ["name"]
       84 GETUPVAL                         R5 6
       85 SETTABLEKS                       R5 R4 K20 ["generationId"]
       87 GETTABLEKS                       R5 R0 K11 ["fbxFilePath"]
       89 SETTABLEKS                       R5 R4 K11 ["fbxFilePath"]
       91 SETTABLEKS                       R3 R4 K21 ["keyframeSequence"]
       93 SETTABLEKS                       R2 R4 K15 ["reachTakes"]
       95 GETTABLEKS                       R6 R0 K22 ["contextId"]
       97 JUMPIFEQKNIL                     R6 ; [+8]
       99 GETTABLEKS                       R6 R0 K22 ["contextId"]
      101 FASTCALL1                        TOSTRING R6 ; [+2]
      102 GETIMPORT                        R5 K25 [tostring]
      104 CALL                             R5 1 1
      105 JUMP                             ; [+1]
      106 LOADNIL                          R5
      107 SETTABLEKS                       R5 R4 K22 ["contextId"]
      109 RETURN                           R4 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["prompt"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 LOADB                            R5 1
        5 GETTABLEKS                       R6 R0 K1 ["generationMode"]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K2 ["GenerationModes"]
       10 GETTABLEKS                       R7 R7 K3 ["EditNew"]
       12 JUMPIFEQ                         R6 R7 ; [+12]
       14 GETTABLEKS                       R6 R0 K1 ["generationMode"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K2 ["GenerationModes"]
       19 GETTABLEKS                       R7 R7 K4 ["EditUpscale"]
       21 JUMPIFEQ                         R6 R7 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 LOADB                            R6 1
       26 GETTABLEKS                       R7 R0 K1 ["generationMode"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K2 ["GenerationModes"]
       31 GETTABLEKS                       R8 R8 K5 ["Upscale"]
       33 JUMPIFEQ                         R7 R8 ; [+12]
       35 GETTABLEKS                       R7 R0 K1 ["generationMode"]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K2 ["GenerationModes"]
       40 GETTABLEKS                       R8 R8 K4 ["EditUpscale"]
       42 JUMPIFEQ                         R7 R8 ; [+2]
       44 LOADB                            R6 0 +1
       45 LOADB                            R6 1
       46 JUMPIFNOT                        R5 ; [+18]
       47 GETTABLEKS                       R7 R0 K6 ["priorJobId"]
       49 JUMPIFEQKNIL                     R7 ; [+5]
       51 GETTABLEKS                       R7 R0 K6 ["priorJobId"]
       53 JUMPIFNOTEQKS                    R7 K7 [""] ; [+11]
       55 DUPTABLE                         R7 K13 [{["success"] = False, ["failureReason"], ["errorMessage"] = "A source animation is required for editing"}]
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K14 ["FailureReasons"]
       59 GETTABLEKS                       R8 R8 K15 ["EditSourceNotFound"]
       61 SETTABLEKS                       R8 R7 K10 ["failureReason"]
       63 CLOSEUPVALS                      R3
       64 RETURN                           R7 1
       65 GETTABLEKS                       R7 R0 K1 ["generationMode"]
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K2 ["GenerationModes"]
       70 GETTABLEKS                       R8 R8 K5 ["Upscale"]
       72 JUMPIFNOTEQ                      R7 R8 ; [+73]
       74 GETTABLEKS                       R7 R0 K16 ["inputAssetId"]
       76 JUMPIFEQKNIL                     R7 ; [+3]
       78 JUMPIFNOTEQKS                    R7 K7 [""] ; [+4]
       80 DUPTABLE                         R8 K18 [{["success"] = False, ["errorMessage"] = "An input animation clip is required for upscaling"}]
       81 CLOSEUPVALS                      R3
       82 RETURN                           R8 1
       83 GETUPVAL                         R8 1
       84 MOVE                             R9 R7
       85 CALL                             R8 1 1
       86 JUMPIFNOTEQKNIL                  R8 ; [+4]
       88 DUPTABLE                         R9 K20 [{["success"] = False, ["errorMessage"] = "Unable to load input animation clip"}]
       89 CLOSEUPVALS                      R3
       90 RETURN                           R9 1
       91 GETIMPORT                        R9 K22 [pcall]
       93 NEWCLOSURE                       R10 P0
       94 CAPTURE                          UPVAL U2
       95 CAPTURE                          VAL R8
       96 CAPTURE                          UPVAL U0
       97 CAPTURE                          UPVAL U3
       98 CAPTURE                          VAL R7
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          UPVAL U5
      101 CALL                             R9 1 2
      102 NAMECALL                         R11 R8 K23 ["Destroy"]
      104 CALL                             R11 1 0
      105 JUMPIFNOT                        R9 ; [+2]
      106 JUMPIFNOTEQKNIL                  R10 ; [+4]
      108 DUPTABLE                         R11 K25 [{["success"] = False, ["errorMessage"] = "Unable to convert input animation clip"}]
      109 CLOSEUPVALS                      R3
      110 RETURN                           R11 1
      111 GETTABLEKS                       R11 R10 K10 ["failureReason"]
      113 JUMPIFEQKNIL                     R11 ; [+12]
      115 DUPTABLE                         R11 K26 [{["success"] = False, ["failureReason"], ["errorMessage"]}]
      116 GETTABLEKS                       R12 R10 K10 ["failureReason"]
      118 SETTABLEKS                       R12 R11 K10 ["failureReason"]
      120 GETTABLEKS                       R12 R10 K11 ["errorMessage"]
      122 SETTABLEKS                       R12 R11 K11 ["errorMessage"]
      124 CLOSEUPVALS                      R3
      125 RETURN                           R11 1
      126 GETTABLEKS                       R11 R10 K27 ["keyframeData"]
      128 JUMPIFNOTEQKNIL                  R11 ; [+13]
      130 GETTABLEKS                       R11 R10 K28 ["r6Sequence"]
      132 JUMPIFEQKNIL                     R11 ; [+6]
      134 GETTABLEKS                       R11 R10 K28 ["r6Sequence"]
      136 NAMECALL                         R11 R11 K23 ["Destroy"]
      138 CALL                             R11 1 0
      139 DUPTABLE                         R11 K25 [{["success"] = False, ["errorMessage"] = "Unable to convert input animation clip"}]
      140 CLOSEUPVALS                      R3
      141 RETURN                           R11 1
      142 GETTABLEKS                       R3 R10 K27 ["keyframeData"]
      144 GETTABLEKS                       R4 R10 K28 ["r6Sequence"]
      146 JUMPIFNOTEQKNIL                  R3 ; [+28]
      148 JUMPIFNOT                        R5 ; [+4]
      149 GETTABLEKS                       R8 R0 K29 ["duration"]
      151 JUMPIFEQKNIL                     R8 ; [+23]
      153 GETTABLEKS                       R11 R0 K29 ["duration"]
      155 ORK                              R10 R11 K30 [3]
      156 GETUPVAL                         R11 4
      157 GETTABLEKS                       R11 R11 K31 ["DEFAULT_GENERATION_FPS"]
      159 MUL                              R9 R10 R11
      160 FASTCALL1                        MATH_FLOOR R9 ; [+2]
      161 GETIMPORT                        R8 K34 [math.floor]
      163 CALL                             R8 1 1
      164 GETUPVAL                         R9 4
      165 GETTABLEKS                       R9 R9 K35 ["MIN_GENERATION_FRAMES"]
      167 GETUPVAL                         R10 4
      168 GETTABLEKS                       R10 R10 K36 ["MAX_GENERATION_FRAMES"]
      170 FASTCALL                         MATH_CLAMP ; [+2]
      171 GETIMPORT                        R7 K38 [math.clamp]
      173 CALL                             R7 3 1
      174 JUMP                             ; [+1]
      175 LOADNIL                          R7
      176 GETUPVAL                         R8 6
      177 LOADB                            R10 0
      178 NAMECALL                         R8 R8 K39 ["GenerateGUID"]
      180 CALL                             R8 2 1
      181 GETIMPORT                        R9 K22 [pcall]
      183 NEWCLOSURE                       R10 P1
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R7
      187 CAPTURE                          REF R3
      188 CAPTURE                          VAL R0
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R8
      191 CAPTURE                          UPVAL U7
      192 CAPTURE                          UPVAL U8
      193 CALL                             R9 1 2
      194 JUMPIF                           R9 ; [+24]
      195 GETIMPORT                        R11 K41 [warn]
      197 LOADK                            R12 K42 ["[AnimationGenTool] Generation failed:"]
      198 FASTCALL1                        TOSTRING R10 ; [+3]
      199 MOVE                             R14 R10
      200 GETIMPORT                        R13 K44 [tostring]
      202 CALL                             R13 1 1
      203 CALL                             R11 2 0
      204 JUMPIFEQKNIL                     R4 ; [+4]
      206 NAMECALL                         R11 R4 K23 ["Destroy"]
      208 CALL                             R11 1 0
      209 DUPTABLE                         R11 K45 [{["success"] = False, ["errorMessage"]}]
      210 FASTCALL1                        TOSTRING R10 ; [+3]
      211 MOVE                             R13 R10
      212 GETIMPORT                        R12 K44 [tostring]
      214 CALL                             R12 1 1
      215 SETTABLEKS                       R12 R11 K11 ["errorMessage"]
      217 CLOSEUPVALS                      R3
      218 RETURN                           R11 1
      219 DUPTABLE                         R11 K54 [{["success"] = True, ["name"], ["generationId"], ["fbxFilePath"], ["keyframeSequence"], ["reachTakes"], ["r6Sequence"], ["id"], ["contextId"]}]
      220 GETTABLEKS                       R12 R10 K47 ["name"]
      222 SETTABLEKS                       R12 R11 K47 ["name"]
      224 GETTABLEKS                       R12 R10 K48 ["generationId"]
      226 SETTABLEKS                       R12 R11 K48 ["generationId"]
      228 GETTABLEKS                       R12 R10 K49 ["fbxFilePath"]
      230 SETTABLEKS                       R12 R11 K49 ["fbxFilePath"]
      232 GETTABLEKS                       R12 R10 K50 ["keyframeSequence"]
      234 SETTABLEKS                       R12 R11 K50 ["keyframeSequence"]
      236 GETTABLEKS                       R12 R10 K51 ["reachTakes"]
      238 SETTABLEKS                       R12 R11 K51 ["reachTakes"]
      240 SETTABLEKS                       R4 R11 K28 ["r6Sequence"]
      242 GETTABLEKS                       R12 R0 K52 ["id"]
      244 SETTABLEKS                       R12 R11 K52 ["id"]
      246 GETTABLEKS                       R12 R10 K53 ["contextId"]
      248 SETTABLEKS                       R12 R11 K53 ["contextId"]
      250 CLOSEUPVALS                      R3
      251 RETURN                           R11 1

PROTO_9:
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
       16 DUPCLOSURE                       R5 K2 [PROTO_8]
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U8
       23 CAPTURE                          UPVAL U9
       24 CAPTURE                          UPVAL U10
       25 CAPTURE                          UPVAL U11
       26 DUPTABLE                         R6 K5 [{"generateAnimationAsync", "saveKeyframeSequence"}]
       27 SETTABLEKS                       R5 R6 K3 ["generateAnimationAsync"]
       29 SETTABLEKS                       R4 R6 K4 ["saveKeyframeSequence"]
       31 RETURN                           R6 1

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
       53 GETIMPORT                        R7 K10 [require]
       55 GETTABLEKS                       R8 R2 K11 ["Util"]
       57 GETTABLEKS                       R8 R8 K12 ["AnimationGen"]
       59 GETTABLEKS                       R8 R8 K18 ["animationClipToBackendTensor"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K10 [require]
       64 GETTABLEKS                       R9 R2 K11 ["Util"]
       66 GETTABLEKS                       R9 R9 K12 ["AnimationGen"]
       68 GETTABLEKS                       R9 R9 K19 ["convertR6ToR15KeyframeSequence"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K10 [require]
       73 GETTABLEKS                       R10 R2 K11 ["Util"]
       75 GETTABLEKS                       R10 R10 K12 ["AnimationGen"]
       77 GETTABLEKS                       R10 R10 K20 ["detectRigType"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K10 [require]
       82 GETTABLEKS                       R11 R2 K11 ["Util"]
       84 GETTABLEKS                       R11 R11 K12 ["AnimationGen"]
       86 GETTABLEKS                       R11 R11 K21 ["loadClipFromAssetId"]
       88 CALL                             R10 1 1
       89 GETTABLEKS                       R11 R3 K22 ["RBX_ANIMSAVES_FOLDER_NAME"]
       91 GETTABLEKS                       R12 R3 K23 ["ANIM_SAVES_INSTANCE_NAME"]
       93 GETTABLEKS                       R13 R4 K24 ["getLinkTag"]
       95 DUPCLOSURE                       R14 K25 [PROTO_9]
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R13
      108 RETURN                           R14 1
