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
       14 DUPTABLE                         R0 K8 [{"keyframeData"}]
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R2 1
       17 DUPTABLE                         R3 K11 [{"assetId", "fps"}]
       18 GETUPVAL                         R5 4
       19 LOADK                            R7 K12 ["(%d+)"]
       20 NAMECALL                         R5 R5 K13 ["match"]
       22 CALL                             R5 2 -1
       23 FASTCALL                         TONUMBER ; [+2]
       24 GETIMPORT                        R4 K15 [tonumber]
       26 CALL                             R4 -1 1
       27 SETTABLEKS                       R4 R3 K9 ["assetId"]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K16 ["DEFAULT_GENERATION_FPS"]
       32 SETTABLEKS                       R4 R3 K10 ["fps"]
       34 CALL                             R1 2 1
       35 SETTABLEKS                       R1 R0 K7 ["keyframeData"]
       37 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["animationGen"]
        5 GETTABLEKS                       R0 R0 K2 ["generateAnimationAsync"]
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R2 K8 [{"numFrames", "loop", "keyframes", "priorJobId", "includeReachTakes"}]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K3 ["numFrames"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K4 ["loop"]
       15 SETTABLEKS                       R3 R2 K4 ["loop"]
       17 GETUPVAL                         R3 4
       18 SETTABLEKS                       R3 R2 K5 ["keyframes"]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K6 ["priorJobId"]
       23 SETTABLEKS                       R3 R2 K6 ["priorJobId"]
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
        3 LOADB                            R4 1
        4 GETTABLEKS                       R5 R0 K1 ["generationMode"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K2 ["GenerationModes"]
        9 GETTABLEKS                       R6 R6 K3 ["EditNew"]
       11 JUMPIFEQ                         R5 R6 ; [+12]
       13 GETTABLEKS                       R5 R0 K1 ["generationMode"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K2 ["GenerationModes"]
       18 GETTABLEKS                       R6 R6 K4 ["EditUpscale"]
       20 JUMPIFEQ                         R5 R6 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 LOADB                            R5 1
       25 GETTABLEKS                       R6 R0 K1 ["generationMode"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K2 ["GenerationModes"]
       30 GETTABLEKS                       R7 R7 K5 ["Upscale"]
       32 JUMPIFEQ                         R6 R7 ; [+12]
       34 GETTABLEKS                       R6 R0 K1 ["generationMode"]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K2 ["GenerationModes"]
       39 GETTABLEKS                       R7 R7 K4 ["EditUpscale"]
       41 JUMPIFEQ                         R6 R7 ; [+2]
       43 LOADB                            R5 0 +1
       44 LOADB                            R5 1
       45 JUMPIFNOT                        R4 ; [+18]
       46 GETTABLEKS                       R6 R0 K6 ["priorJobId"]
       48 JUMPIFEQKNIL                     R6 ; [+5]
       50 GETTABLEKS                       R6 R0 K6 ["priorJobId"]
       52 JUMPIFNOTEQKS                    R6 K7 [""] ; [+11]
       54 DUPTABLE                         R6 K13 [{["success"] = False, ["failureReason"], ["errorMessage"] = "A source animation is required for editing"}]
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K14 ["FailureReasons"]
       58 GETTABLEKS                       R7 R7 K15 ["EditSourceNotFound"]
       60 SETTABLEKS                       R7 R6 K10 ["failureReason"]
       62 CLOSEUPVALS                      R3
       63 RETURN                           R6 1
       64 GETTABLEKS                       R6 R0 K1 ["generationMode"]
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K2 ["GenerationModes"]
       69 GETTABLEKS                       R7 R7 K5 ["Upscale"]
       71 JUMPIFNOTEQ                      R6 R7 ; [+61]
       73 GETTABLEKS                       R6 R0 K16 ["inputAssetId"]
       75 JUMPIFEQKNIL                     R6 ; [+3]
       77 JUMPIFNOTEQKS                    R6 K7 [""] ; [+4]
       79 DUPTABLE                         R7 K18 [{["success"] = False, ["errorMessage"] = "An input animation clip is required for upscaling"}]
       80 CLOSEUPVALS                      R3
       81 RETURN                           R7 1
       82 GETUPVAL                         R7 1
       83 MOVE                             R8 R6
       84 CALL                             R7 1 1
       85 JUMPIFNOTEQKNIL                  R7 ; [+4]
       87 DUPTABLE                         R8 K20 [{["success"] = False, ["errorMessage"] = "Unable to load input animation clip"}]
       88 CLOSEUPVALS                      R3
       89 RETURN                           R8 1
       90 GETIMPORT                        R8 K22 [pcall]
       92 NEWCLOSURE                       R9 P0
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          VAL R7
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          UPVAL U3
       97 CAPTURE                          VAL R6
       98 CAPTURE                          UPVAL U4
       99 CALL                             R8 1 2
      100 NAMECALL                         R10 R7 K23 ["Destroy"]
      102 CALL                             R10 1 0
      103 JUMPIFNOT                        R8 ; [+2]
      104 JUMPIFNOTEQKNIL                  R9 ; [+4]
      106 DUPTABLE                         R10 K25 [{["success"] = False, ["errorMessage"] = "Unable to convert input animation clip"}]
      107 CLOSEUPVALS                      R3
      108 RETURN                           R10 1
      109 GETTABLEKS                       R10 R9 K10 ["failureReason"]
      111 JUMPIFEQKNIL                     R10 ; [+12]
      113 DUPTABLE                         R10 K26 [{["success"] = False, ["failureReason"], ["errorMessage"]}]
      114 GETTABLEKS                       R11 R9 K10 ["failureReason"]
      116 SETTABLEKS                       R11 R10 K10 ["failureReason"]
      118 GETTABLEKS                       R11 R9 K11 ["errorMessage"]
      120 SETTABLEKS                       R11 R10 K11 ["errorMessage"]
      122 CLOSEUPVALS                      R3
      123 RETURN                           R10 1
      124 GETTABLEKS                       R10 R9 K27 ["keyframeData"]
      126 JUMPIFNOTEQKNIL                  R10 ; [+4]
      128 DUPTABLE                         R10 K25 [{["success"] = False, ["errorMessage"] = "Unable to convert input animation clip"}]
      129 CLOSEUPVALS                      R3
      130 RETURN                           R10 1
      131 GETTABLEKS                       R3 R9 K27 ["keyframeData"]
      133 JUMPIFNOTEQKNIL                  R3 ; [+28]
      135 JUMPIFNOT                        R4 ; [+4]
      136 GETTABLEKS                       R7 R0 K28 ["duration"]
      138 JUMPIFEQKNIL                     R7 ; [+23]
      140 GETTABLEKS                       R10 R0 K28 ["duration"]
      142 ORK                              R9 R10 K29 [3]
      143 GETUPVAL                         R10 4
      144 GETTABLEKS                       R10 R10 K30 ["DEFAULT_GENERATION_FPS"]
      146 MUL                              R8 R9 R10
      147 FASTCALL1                        MATH_FLOOR R8 ; [+2]
      148 GETIMPORT                        R7 K33 [math.floor]
      150 CALL                             R7 1 1
      151 GETUPVAL                         R8 4
      152 GETTABLEKS                       R8 R8 K34 ["MIN_GENERATION_FRAMES"]
      154 GETUPVAL                         R9 4
      155 GETTABLEKS                       R9 R9 K35 ["MAX_GENERATION_FRAMES"]
      157 FASTCALL                         MATH_CLAMP ; [+2]
      158 GETIMPORT                        R6 K37 [math.clamp]
      160 CALL                             R6 3 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R6
      163 GETUPVAL                         R7 5
      164 LOADB                            R9 0
      165 NAMECALL                         R7 R7 K38 ["GenerateGUID"]
      167 CALL                             R7 2 1
      168 GETIMPORT                        R8 K22 [pcall]
      170 NEWCLOSURE                       R9 P1
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R0
      175 CAPTURE                          REF R3
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R7
      178 CAPTURE                          UPVAL U6
      179 CAPTURE                          UPVAL U7
      180 CALL                             R8 1 2
      181 JUMPIF                           R8 ; [+19]
      182 GETIMPORT                        R10 K40 [warn]
      184 LOADK                            R11 K41 ["[AnimationGenTool] Generation failed:"]
      185 FASTCALL1                        TOSTRING R9 ; [+3]
      186 MOVE                             R13 R9
      187 GETIMPORT                        R12 K43 [tostring]
      189 CALL                             R12 1 1
      190 CALL                             R10 2 0
      191 DUPTABLE                         R10 K44 [{["success"] = False, ["errorMessage"]}]
      192 FASTCALL1                        TOSTRING R9 ; [+3]
      193 MOVE                             R12 R9
      194 GETIMPORT                        R11 K43 [tostring]
      196 CALL                             R11 1 1
      197 SETTABLEKS                       R11 R10 K11 ["errorMessage"]
      199 CLOSEUPVALS                      R3
      200 RETURN                           R10 1
      201 DUPTABLE                         R10 K53 [{["success"] = True, ["name"], ["generationId"], ["fbxFilePath"], ["keyframeSequence"], ["reachTakes"], ["id"], ["contextId"]}]
      202 GETTABLEKS                       R11 R9 K46 ["name"]
      204 SETTABLEKS                       R11 R10 K46 ["name"]
      206 GETTABLEKS                       R11 R9 K47 ["generationId"]
      208 SETTABLEKS                       R11 R10 K47 ["generationId"]
      210 GETTABLEKS                       R11 R9 K48 ["fbxFilePath"]
      212 SETTABLEKS                       R11 R10 K48 ["fbxFilePath"]
      214 GETTABLEKS                       R11 R9 K49 ["keyframeSequence"]
      216 SETTABLEKS                       R11 R10 K49 ["keyframeSequence"]
      218 GETTABLEKS                       R11 R9 K50 ["reachTakes"]
      220 SETTABLEKS                       R11 R10 K50 ["reachTakes"]
      222 GETTABLEKS                       R11 R0 K51 ["id"]
      224 SETTABLEKS                       R11 R10 K51 ["id"]
      226 GETTABLEKS                       R11 R9 K52 ["contextId"]
      228 SETTABLEKS                       R11 R10 K52 ["contextId"]
      230 CLOSEUPVALS                      R3
      231 RETURN                           R10 1

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
       25 DUPTABLE                         R6 K5 [{"generateAnimationAsync", "saveKeyframeSequence"}]
       26 SETTABLEKS                       R5 R6 K3 ["generateAnimationAsync"]
       28 SETTABLEKS                       R4 R6 K4 ["saveKeyframeSequence"]
       30 RETURN                           R6 1

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
       68 GETTABLEKS                       R9 R9 K19 ["detectRigType"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K10 [require]
       73 GETTABLEKS                       R10 R2 K11 ["Util"]
       75 GETTABLEKS                       R10 R10 K12 ["AnimationGen"]
       77 GETTABLEKS                       R10 R10 K20 ["loadClipFromAssetId"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R10 R3 K21 ["RBX_ANIMSAVES_FOLDER_NAME"]
       82 GETTABLEKS                       R11 R3 K22 ["ANIM_SAVES_INSTANCE_NAME"]
       84 GETTABLEKS                       R12 R4 K23 ["getLinkTag"]
       86 DUPCLOSURE                       R13 K24 [PROTO_9]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R12
       98 RETURN                           R13 1
