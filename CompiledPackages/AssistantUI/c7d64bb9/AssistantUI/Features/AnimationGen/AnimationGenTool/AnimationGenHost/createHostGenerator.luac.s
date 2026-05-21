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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["animationGen"]
        5 GETTABLEKS                       R0 R0 K2 ["generateAnimationAsync"]
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R2 K4 [{"duration"}]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K3 ["duration"]
       12 CALL                             R0 2 1
       13 JUMPIFNOT                        R0 ; [+3]
       14 GETTABLEKS                       R1 R0 K5 ["fbxFilePath"]
       16 JUMPIF                           R1 ; [+1]
       17 LOADNIL                          R1
       18 LOADK                            R3 K6 ["AssistantAnimation_"]
       19 GETUPVAL                         R4 3
       20 LOADN                            R6 1
       21 LOADN                            R7 8
       22 NAMECALL                         R4 R4 K7 ["sub"]
       24 CALL                             R4 3 1
       25 CONCAT                           R2 R3 R4
       26 JUMPIFNOT                        R1 ; [+8]
       27 LOADK                            R5 K8 ["([^/\\]+)%.fbx$"]
       28 NAMECALL                         R3 R1 K9 ["match"]
       30 CALL                             R3 2 1
       31 JUMPIFNOT                        R3 ; [+3]
       32 JUMPIFEQKS                       R3 K10 [""] ; [+2]
       34 MOVE                             R2 R3
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K0 ["tools"]
       38 GETTABLEKS                       R3 R3 K1 ["animationGen"]
       40 GETTABLEKS                       R3 R3 K11 ["publishAnimationAsync"]
       42 MOVE                             R4 R0
       43 CALL                             R3 1 1
       44 LOADK                            R4 K10 [""]
       45 LOADK                            R5 K10 [""]
       46 GETTABLEKS                       R6 R3 K12 ["keyframeSequence"]
       48 JUMPIFEQKNIL                     R6 ; [+161]
       50 SETTABLEKS                       R2 R6 K13 ["Name"]
       52 GETUPVAL                         R7 4
       53 GETTABLEKS                       R7 R7 K14 ["addAssistantLink"]
       55 MOVE                             R8 R6
       56 GETUPVAL                         R10 3
       57 LOADK                            R11 K15 ["Assistant-AnimationGenLink-%*"]
       58 MOVE                             R13 R10
       59 NAMECALL                         R11 R11 K16 ["format"]
       61 CALL                             R11 2 1
       62 MOVE                             R9 R11
       63 CALL                             R7 2 0
       64 LOADK                            R7 K17 ["keyframesequence://"]
       65 MOVE                             R8 R2
       66 CONCAT                           R4 R7 R8
       67 GETUPVAL                         R7 5
       68 JUMPIFNOT                        R7 ; [+134]
       69 GETUPVAL                         R7 5
       70 GETTABLEKS                       R5 R7 K13 ["Name"]
       72 GETUPVAL                         R7 6
       73 GETUPVAL                         R9 7
       74 NAMECALL                         R7 R7 K18 ["FindFirstChild"]
       76 CALL                             R7 2 1
       77 JUMPIF                           R7 ; [+11]
       78 GETIMPORT                        R8 K21 [Instance.new]
       80 LOADK                            R9 K22 ["Model"]
       81 CALL                             R8 1 1
       82 GETUPVAL                         R9 7
       83 SETTABLEKS                       R9 R8 K13 ["Name"]
       85 GETUPVAL                         R9 6
       86 SETTABLEKS                       R9 R8 K23 ["Parent"]
       88 MOVE                             R7 R8
       89 LOADNIL                          R8
       90 GETUPVAL                         R9 5
       91 GETUPVAL                         R11 8
       92 NAMECALL                         R9 R9 K18 ["FindFirstChild"]
       94 CALL                             R9 2 1
       95 JUMPIFNOT                        R9 ; [+7]
       96 LOADK                            R12 K24 ["ObjectValue"]
       97 NAMECALL                         R10 R9 K25 ["IsA"]
       99 CALL                             R10 2 1
      100 JUMPIFNOT                        R10 ; [+2]
      101 MOVE                             R8 R9
      102 JUMP                             ; [+23]
      103 GETIMPORT                        R10 K21 [Instance.new]
      105 LOADK                            R11 K24 ["ObjectValue"]
      106 CALL                             R10 1 1
      107 GETUPVAL                         R11 8
      108 SETTABLEKS                       R11 R10 K13 ["Name"]
      110 GETUPVAL                         R11 5
      111 SETTABLEKS                       R11 R10 K23 ["Parent"]
      113 JUMPIFNOT                        R9 ; [+11]
      114 NAMECALL                         R11 R9 K26 ["GetChildren"]
      116 CALL                             R11 1 3
      117 FORGPREP                         R11
      118 SETTABLEKS                       R10 R15 K23 ["Parent"]
      120 FORGLOOP                         R11 2 ; [-3]
      122 NAMECALL                         R11 R9 K27 ["Destroy"]
      124 CALL                             R11 1 0
      125 MOVE                             R8 R10
      126 GETTABLEKS                       R10 R8 K28 ["Value"]
      128 JUMPIFNOT                        R10 ; [+10]
      129 LOADK                            R13 K24 ["ObjectValue"]
      130 NAMECALL                         R11 R10 K25 ["IsA"]
      132 CALL                             R11 2 1
      133 JUMPIFNOT                        R11 ; [+5]
      134 GETTABLEKS                       R11 R10 K28 ["Value"]
      136 GETUPVAL                         R12 5
      137 JUMPIFEQ                         R11 R12 ; [+19]
      139 GETIMPORT                        R11 K21 [Instance.new]
      141 LOADK                            R12 K24 ["ObjectValue"]
      142 CALL                             R11 1 1
      143 GETUPVAL                         R12 5
      144 GETTABLEKS                       R12 R12 K13 ["Name"]
      146 SETTABLEKS                       R12 R11 K13 ["Name"]
      148 SETTABLEKS                       R7 R11 K23 ["Parent"]
      150 GETUPVAL                         R12 5
      151 SETTABLEKS                       R12 R11 K28 ["Value"]
      153 MOVE                             R10 R11
      154 SETTABLEKS                       R10 R8 K28 ["Value"]
      156 JUMP                             ; [+40]
      157 GETUPVAL                         R11 5
      158 MOVE                             R12 R10
      159 MOVE                             R13 R7
      160 GETTABLEKS                       R14 R12 K13 ["Name"]
      162 GETTABLEKS                       R15 R11 K13 ["Name"]
      164 JUMPIFNOTEQ                      R14 R15 ; [+2]
      166 JUMP                             ; [+30]
      167 GETTABLEKS                       R16 R11 K13 ["Name"]
      169 NAMECALL                         R14 R13 K18 ["FindFirstChild"]
      171 CALL                             R14 2 1
      172 JUMPIFNOTEQKNIL                  R14 ; [+6]
      174 GETTABLEKS                       R15 R11 K13 ["Name"]
      176 SETTABLEKS                       R15 R12 K13 ["Name"]
      178 JUMP                             ; [+18]
      179 JUMPIFEQ                         R14 R12 ; [+17]
      181 GETIMPORT                        R15 K30 [warn]
      183 LOADK                            R17 K31 ["[AnimationGen] "]
      184 GETUPVAL                         R18 7
      185 LOADK                            R19 K32 [" already has a child named"]
      186 CONCAT                           R16 R17 R19
      187 GETTABLEKS                       R17 R11 K13 ["Name"]
      189 LOADK                            R19 K33 ["; leaving "]
      190 GETUPVAL                         R20 8
      191 LOADK                            R21 K34 [" folder as"]
      192 CONCAT                           R18 R19 R21
      193 GETTABLEKS                       R19 R12 K13 ["Name"]
      195 LOADK                            R20 K35 ["to avoid a name collision."]
      196 CALL                             R15 5 0
      197 GETUPVAL                         R11 9
      198 GETUPVAL                         R12 5
      199 CALL                             R11 1 0
      200 SETTABLEKS                       R10 R6 K23 ["Parent"]
      202 JUMP                             ; [+9]
      203 GETIMPORT                        R7 K37 [game]
      205 GETTABLEKS                       R7 R7 K38 ["Workspace"]
      207 SETTABLEKS                       R7 R6 K23 ["Parent"]
      209 JUMP                             ; [+2]
      210 JUMPIFNOT                        R1 ; [+1]
      211 MOVE                             R4 R1
      212 DUPTABLE                         R7 K43 [{"animationId", "name", "generationId", "fbxFilePath", "rigName", "keyframeSequence"}]
      213 SETTABLEKS                       R4 R7 K39 ["animationId"]
      215 SETTABLEKS                       R2 R7 K40 ["name"]
      217 GETUPVAL                         R8 3
      218 SETTABLEKS                       R8 R7 K41 ["generationId"]
      220 SETTABLEKS                       R1 R7 K5 ["fbxFilePath"]
      222 SETTABLEKS                       R5 R7 K42 ["rigName"]
      224 SETTABLEKS                       R6 R7 K12 ["keyframeSequence"]
      226 RETURN                           R7 1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["toolArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["environment"]
        4 GETTABLEKS                       R3 R0 K2 ["prompt"]
        6 GETTABLEKS                       R5 R0 K4 ["duration"]
        8 ORK                              R4 R5 K3 [3]
        9 GETTABLEKS                       R5 R0 K5 ["rig"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K6 ["DEFAULT_GENERATION_FPS"]
       14 MUL                              R8 R4 R6
       15 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       16 GETIMPORT                        R7 K9 [math.floor]
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K10 ["MIN_GENERATION_FRAMES"]
       22 JUMPIFNOTLT                      R7 R8 ; [+4]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K10 ["MIN_GENERATION_FRAMES"]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K11 ["MAX_GENERATION_FRAMES"]
       30 JUMPIFNOTLT                      R8 R7 ; [+4]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K11 ["MAX_GENERATION_FRAMES"]
       35 GETUPVAL                         R8 1
       36 LOADB                            R10 0
       37 NAMECALL                         R8 R8 K12 ["GenerateGUID"]
       39 CALL                             R8 2 1
       40 GETTABLEKS                       R9 R2 K13 ["startRecording"]
       42 MOVE                             R10 R8
       43 CALL                             R9 1 0
       44 GETIMPORT                        R9 K15 [pcall]
       46 NEWCLOSURE                       R10 P0
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R8
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U6
       57 CALL                             R9 1 2
       58 GETTABLEKS                       R11 R2 K16 ["endRecording"]
       60 MOVE                             R12 R8
       61 CALL                             R11 1 0
       62 JUMPIF                           R9 ; [+9]
       63 GETIMPORT                        R11 K18 [warn]
       65 LOADK                            R12 K19 ["[AnimationGenTool] Generation failed:"]
       66 FASTCALL1                        TOSTRING R10 ; [+3]
       67 MOVE                             R14 R10
       68 GETIMPORT                        R13 K21 [tostring]
       70 CALL                             R13 1 1
       71 CALL                             R11 2 0
       72 JUMPIFNOT                        R9 ; [+37]
       73 DUPTABLE                         R11 K31 [{"success", "animationId", "name", "generationId", "fbxFilePath", "rigName", "keyframeSequence", "messageId", "contentId"}]
       74 LOADB                            R12 1
       75 SETTABLEKS                       R12 R11 K22 ["success"]
       77 GETTABLEKS                       R12 R10 K23 ["animationId"]
       79 SETTABLEKS                       R12 R11 K23 ["animationId"]
       81 GETTABLEKS                       R12 R10 K24 ["name"]
       83 SETTABLEKS                       R12 R11 K24 ["name"]
       85 GETTABLEKS                       R12 R10 K25 ["generationId"]
       87 SETTABLEKS                       R12 R11 K25 ["generationId"]
       89 GETTABLEKS                       R12 R10 K26 ["fbxFilePath"]
       91 SETTABLEKS                       R12 R11 K26 ["fbxFilePath"]
       93 GETTABLEKS                       R12 R10 K27 ["rigName"]
       95 SETTABLEKS                       R12 R11 K27 ["rigName"]
       97 GETTABLEKS                       R12 R10 K28 ["keyframeSequence"]
       99 SETTABLEKS                       R12 R11 K28 ["keyframeSequence"]
      101 GETTABLEKS                       R12 R0 K29 ["messageId"]
      103 SETTABLEKS                       R12 R11 K29 ["messageId"]
      105 GETTABLEKS                       R12 R0 K30 ["contentId"]
      107 SETTABLEKS                       R12 R11 K30 ["contentId"]
      109 RETURN                           R11 1
      110 DUPTABLE                         R11 K33 [{"success", "errorMessage"}]
      111 LOADB                            R12 0
      112 SETTABLEKS                       R12 R11 K22 ["success"]
      114 FASTCALL1                        TOSTRING R10 ; [+3]
      115 MOVE                             R13 R10
      116 GETIMPORT                        R12 K21 [tostring]
      118 CALL                             R12 1 1
      119 SETTABLEKS                       R12 R11 K32 ["errorMessage"]
      121 RETURN                           R11 1

PROTO_8:
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
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R4
       20 DUPTABLE                         R6 K4 [{"generateAnimationAsync"}]
       21 SETTABLEKS                       R5 R6 K3 ["generateAnimationAsync"]
       23 RETURN                           R6 1

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
       44 GETTABLEKS                       R7 R5 K17 ["RBX_ANIMSAVES_FOLDER_NAME"]
       46 GETTABLEKS                       R8 R5 K18 ["ANIM_SAVES_INSTANCE_NAME"]
       48 DUPCLOSURE                       R9 K19 [PROTO_8]
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R1
       55 RETURN                           R9 1
