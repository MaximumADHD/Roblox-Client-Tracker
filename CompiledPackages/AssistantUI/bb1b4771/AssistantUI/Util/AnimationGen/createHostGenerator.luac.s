PROTO_0:
        0 ORK                              R4 R1 K0 [7]
        1 FASTCALL1                        MATH_ROUND R4 ; [+2]
        2 GETIMPORT                        R3 K3 [math.round]
        4 CALL                             R3 1 1
        5 LOADN                            R4 1
        6 GETUPVAL                         R6 0
        7 LENGTH                           R5 R6
        8 FASTCALL                         MATH_CLAMP ; [+2]
        9 GETIMPORT                        R2 K5 [math.clamp]
       11 CALL                             R2 3 1
       12 GETUPVAL                         R4 0
       13 GETTABLE                         R3 R4 R2
       14 LOADN                            R5 2
       15 DIV                              R7 R0 R3
       16 FASTCALL1                        MATH_ROUND R7 ; [+2]
       17 GETIMPORT                        R6 K3 [math.round]
       19 CALL                             R6 1 1
       20 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       22 GETIMPORT                        R4 K7 [math.max]
       24 CALL                             R4 2 1
       25 RETURN                           R4 1

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
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["AnimationGenMode"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["mode"]
        7 GETTABLEKS                       R3 R1 K2 ["New"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+21]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["tools"]
       14 GETTABLEKS                       R2 R2 K4 ["animationGen"]
       16 GETTABLEKS                       R2 R2 K5 ["generateAnimationAsync"]
       18 GETUPVAL                         R3 3
       19 DUPTABLE                         R4 K8 [{"numFrames", "loop"}]
       20 GETUPVAL                         R5 4
       21 SETTABLEKS                       R5 R4 K6 ["numFrames"]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K7 ["loop"]
       26 SETTABLEKS                       R5 R4 K7 ["loop"]
       28 CALL                             R2 2 1
       29 MOVE                             R0 R2
       30 JUMP                             ; [+106]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K1 ["mode"]
       34 GETTABLEKS                       R3 R1 K9 ["Edit"]
       36 JUMPIFNOTEQ                      R2 R3 ; [+26]
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R2 R2 K3 ["tools"]
       41 GETTABLEKS                       R2 R2 K4 ["animationGen"]
       43 GETTABLEKS                       R2 R2 K5 ["generateAnimationAsync"]
       45 GETUPVAL                         R3 3
       46 DUPTABLE                         R4 K13 [{"priorJobId", "startFrame", "endFrame"}]
       47 GETUPVAL                         R5 5
       48 SETTABLEKS                       R5 R4 K10 ["priorJobId"]
       50 GETUPVAL                         R5 1
       51 GETTABLEKS                       R5 R5 K11 ["startFrame"]
       53 SETTABLEKS                       R5 R4 K11 ["startFrame"]
       55 GETUPVAL                         R5 1
       56 GETTABLEKS                       R5 R5 K12 ["endFrame"]
       58 SETTABLEKS                       R5 R4 K12 ["endFrame"]
       60 CALL                             R2 2 1
       61 MOVE                             R0 R2
       62 JUMP                             ; [+74]
       63 GETUPVAL                         R2 1
       64 GETTABLEKS                       R2 R2 K1 ["mode"]
       66 GETTABLEKS                       R3 R1 K14 ["Style"]
       68 JUMPIFNOTEQ                      R2 R3 ; [+57]
       70 GETUPVAL                         R4 1
       71 GETTABLEKS                       R4 R4 K16 ["numPriorFrames"]
       73 ORK                              R3 R4 K15 [0]
       74 GETUPVAL                         R4 1
       75 GETTABLEKS                       R4 R4 K17 ["styleStrength"]
       77 ORK                              R7 R4 K18 [7]
       78 FASTCALL1                        MATH_ROUND R7 ; [+2]
       79 GETIMPORT                        R6 K21 [math.round]
       81 CALL                             R6 1 1
       82 LOADN                            R7 1
       83 GETUPVAL                         R9 6
       84 LENGTH                           R8 R9
       85 FASTCALL                         MATH_CLAMP ; [+2]
       86 GETIMPORT                        R5 K23 [math.clamp]
       88 CALL                             R5 3 1
       89 GETUPVAL                         R7 6
       90 GETTABLE                         R6 R7 R5
       91 LOADN                            R8 2
       92 DIV                              R10 R3 R6
       93 FASTCALL1                        MATH_ROUND R10 ; [+2]
       94 GETIMPORT                        R9 K21 [math.round]
       96 CALL                             R9 1 1
       97 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       99 GETIMPORT                        R7 K25 [math.max]
      101 CALL                             R7 2 1
      102 MOVE                             R2 R7
      103 GETUPVAL                         R3 2
      104 GETTABLEKS                       R3 R3 K3 ["tools"]
      106 GETTABLEKS                       R3 R3 K4 ["animationGen"]
      108 GETTABLEKS                       R3 R3 K5 ["generateAnimationAsync"]
      110 GETUPVAL                         R4 3
      111 DUPTABLE                         R5 K30 [{["priorJobId"], ["style"] = True, ["styleConstraint"], ["styleConstraintKeyframes"]}]
      112 GETUPVAL                         R6 5
      113 SETTABLEKS                       R6 R5 K10 ["priorJobId"]
      115 GETUPVAL                         R7 1
      116 GETTABLEKS                       R7 R7 K28 ["styleConstraint"]
      118 ORK                              R6 R7 K31 ["Body"]
      119 SETTABLEKS                       R6 R5 K28 ["styleConstraint"]
      121 SETTABLEKS                       R2 R5 K29 ["styleConstraintKeyframes"]
      123 CALL                             R3 2 1
      124 MOVE                             R0 R3
      125 JUMP                             ; [+11]
      126 GETIMPORT                        R2 K33 [error]
      128 LOADK                            R4 K34 ["Unexpected mode: %*"]
      129 GETUPVAL                         R6 1
      130 GETTABLEKS                       R6 R6 K1 ["mode"]
      132 NAMECALL                         R4 R4 K35 ["format"]
      134 CALL                             R4 2 1
      135 MOVE                             R3 R4
      136 CALL                             R2 1 0
      137 LOADK                            R3 K36 ["AssistantAnimation_"]
      138 GETUPVAL                         R4 7
      139 LOADN                            R6 1
      140 LOADN                            R7 8
      141 NAMECALL                         R4 R4 K37 ["sub"]
      143 CALL                             R4 3 1
      144 CONCAT                           R2 R3 R4
      145 GETTABLEKS                       R3 R0 K38 ["fbxFilePath"]
      147 JUMPIFEQKNIL                     R3 ; [+12]
      149 GETTABLEKS                       R3 R0 K38 ["fbxFilePath"]
      151 LOADK                            R5 K39 ["([^/\\]+)%.fbx$"]
      152 NAMECALL                         R3 R3 K40 ["match"]
      154 CALL                             R3 2 1
      155 JUMPIFEQKNIL                     R3 ; [+4]
      157 JUMPIFEQKS                       R3 K41 [""] ; [+2]
      159 MOVE                             R2 R3
      160 GETTABLEKS                       R3 R0 K42 ["animationClip"]
      162 LOADK                            R4 K41 [""]
      163 JUMPIFEQKNIL                     R3 ; [+20]
      165 GETUPVAL                         R5 8
      166 MOVE                             R6 R3
      167 CALL                             R5 1 1
      168 MOVE                             R3 R5
      169 SETTABLEKS                       R2 R3 K43 ["Name"]
      171 GETUPVAL                         R7 9
      172 GETUPVAL                         R8 7
      173 CALL                             R7 1 -1
      174 NAMECALL                         R5 R3 K44 ["AddTag"]
      176 CALL                             R5 -1 0
      177 GETUPVAL                         R5 10
      178 MOVE                             R6 R3
      179 GETUPVAL                         R7 1
      180 GETTABLEKS                       R7 R7 K45 ["rig"]
      182 CALL                             R5 2 1
      183 MOVE                             R4 R5
      184 DUPTABLE                         R5 K51 [{"name", "generationId", "fbxFilePath", "rigName", "keyframeSequence", "contextId"}]
      185 SETTABLEKS                       R2 R5 K46 ["name"]
      187 GETUPVAL                         R6 7
      188 SETTABLEKS                       R6 R5 K47 ["generationId"]
      190 GETTABLEKS                       R6 R0 K38 ["fbxFilePath"]
      192 SETTABLEKS                       R6 R5 K38 ["fbxFilePath"]
      194 SETTABLEKS                       R4 R5 K48 ["rigName"]
      196 SETTABLEKS                       R3 R5 K49 ["keyframeSequence"]
      198 GETTABLEKS                       R6 R0 K50 ["contextId"]
      200 SETTABLEKS                       R6 R5 K50 ["contextId"]
      202 RETURN                           R5 1

PROTO_8:
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
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U7
       46 CALL                             R5 1 2
       47 GETTABLEKS                       R7 R1 K15 ["endRecording"]
       49 MOVE                             R8 R4
       50 CALL                             R7 1 0
       51 JUMPIFNOT                        R5 ; [+7]
       52 GETTABLEKS                       R7 R6 K16 ["contextId"]
       54 JUMPIFEQKNIL                     R7 ; [+4]
       56 GETTABLEKS                       R7 R6 K16 ["contextId"]
       58 SETUPVAL                         R7 3
       59 JUMPIF                           R5 ; [+18]
       60 GETIMPORT                        R7 K18 [warn]
       62 LOADK                            R8 K19 ["[AnimationGenTool] Generation failed:"]
       63 FASTCALL1                        TOSTRING R6 ; [+3]
       64 MOVE                             R10 R6
       65 GETIMPORT                        R9 K21 [tostring]
       67 CALL                             R9 1 1
       68 CALL                             R7 2 0
       69 DUPTABLE                         R7 K25 [{["success"] = False, ["errorMessage"]}]
       70 FASTCALL1                        TOSTRING R6 ; [+3]
       71 MOVE                             R9 R6
       72 GETIMPORT                        R8 K21 [tostring]
       74 CALL                             R8 1 1
       75 SETTABLEKS                       R8 R7 K24 ["errorMessage"]
       77 RETURN                           R7 1
       78 DUPTABLE                         R7 K33 [{["success"] = True, ["name"], ["generationId"], ["fbxFilePath"], ["rigName"], ["keyframeSequence"], ["id"]}]
       79 GETTABLEKS                       R8 R6 K27 ["name"]
       81 SETTABLEKS                       R8 R7 K27 ["name"]
       83 GETTABLEKS                       R8 R6 K28 ["generationId"]
       85 SETTABLEKS                       R8 R7 K28 ["generationId"]
       87 GETTABLEKS                       R8 R6 K29 ["fbxFilePath"]
       89 SETTABLEKS                       R8 R7 K29 ["fbxFilePath"]
       91 GETTABLEKS                       R8 R6 K30 ["rigName"]
       93 SETTABLEKS                       R8 R7 K30 ["rigName"]
       95 GETTABLEKS                       R8 R6 K31 ["keyframeSequence"]
       97 SETTABLEKS                       R8 R7 K31 ["keyframeSequence"]
       99 GETTABLEKS                       R8 R0 K32 ["id"]
      101 SETTABLEKS                       R8 R7 K32 ["id"]
      103 RETURN                           R7 1

PROTO_9:
        0 LOADNIL                          R0
        1 NEWTABLE                         R1 0 0
        3 DUPCLOSURE                       R2 K0 [PROTO_1]
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 DUPCLOSURE                       R3 K1 [PROTO_2]
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 NEWCLOSURE                       R4 P2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R1
       12 NEWCLOSURE                       R5 P3
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R4
       17 NEWCLOSURE                       R6 P4
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          REF R0
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          UPVAL U8
       25 CAPTURE                          VAL R5
       26 DUPTABLE                         R7 K3 [{"generateAndSaveAnimationAsync"}]
       27 SETTABLEKS                       R6 R7 K2 ["generateAndSaveAnimationAsync"]
       29 CLOSEUPVALS                      R0
       30 RETURN                           R7 1

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
       57 NEWTABLE                         R9 0 10
       59 LOADN                            R10 2
       60 LOADN                            R11 3
       61 LOADN                            R12 5
       62 LOADN                            R13 8
       63 LOADN                            R14 13
       64 LOADN                            R15 21
       65 LOADN                            R16 34
       66 LOADN                            R17 55
       67 LOADN                            R18 89
       68 LOADN                            R19 144
       69 SETLIST                          R9 R10 10 [1]
       71 GETTABLEKS                       R10 R4 K20 ["getLinkTag"]
       73 DUPCLOSURE                       R11 K21 [PROTO_0]
       74 CAPTURE                          VAL R9
       75 DUPCLOSURE                       R12 K22 [PROTO_9]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R10
       85 RETURN                           R12 1
