PROTO_0:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 2
        3 CALL                             R0 1 2
        4 SETUPVAL                         R0 0
        5 SETUPVAL                         R1 1
        6 LOADB                            R0 1
        7 SETUPVAL                         R0 3
        8 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R2 0
        1 LOADB                            R3 0
        2 LOADNIL                          R4
        3 GETIMPORT                        R5 K2 [task.spawn]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          REF R3
        7 CAPTURE                          REF R4
        8 CAPTURE                          VAL R0
        9 CAPTURE                          REF R2
       10 CALL                             R5 1 1
       11 GETIMPORT                        R7 K5 [os.clock]
       13 CALL                             R7 0 1
       14 ADD                              R6 R7 R1
       15 JUMPIF                           R2 ; [+10]
       16 GETIMPORT                        R7 K5 [os.clock]
       18 CALL                             R7 0 1
       19 JUMPIFNOTLT                      R7 R6 ; [+6]
       21 GETIMPORT                        R7 K7 [task.wait]
       23 LOADK                            R8 K8 [0.1]
       24 CALL                             R7 1 0
       25 JUMPBACK                         ; [-11]
       26 JUMPIF                           R2 ; [+12]
       27 GETIMPORT                        R7 K10 [task.cancel]
       29 MOVE                             R8 R5
       30 CALL                             R7 1 0
       31 LOADB                            R7 0
       32 LOADK                            R8 K11 ["Animation generation timed out after %* seconds"]
       33 MOVE                             R10 R1
       34 NAMECALL                         R8 R8 K12 ["format"]
       36 CALL                             R8 2 1
       37 CLOSEUPVALS                      R2
       38 RETURN                           R7 2
       39 CLOSEUPVALS                      R2
       40 RETURN                           R3 2

PROTO_2:
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
       27 SETTABLEKS                       R2 R0 K3 ["Parent"]
       29 GETTABLEKS                       R3 R1 K10 ["Name"]
       31 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 JUMPIFEQKS                       R0 K0 ["R6"] ; [+10]
        5 DUPTABLE                         R0 K2 [{"failureReason"}]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K3 ["FailureReasons"]
        9 GETTABLEKS                       R1 R1 K4 ["InputClipNotR6"]
       11 SETTABLEKS                       R1 R0 K1 ["failureReason"]
       13 RETURN                           R0 1
       14 DUPTABLE                         R0 K6 [{"keyframeData"}]
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R2 1
       17 DUPTABLE                         R3 K9 [{"assetId", "fps"}]
       18 GETUPVAL                         R5 4
       19 LOADK                            R7 K10 ["(%d+)"]
       20 NAMECALL                         R5 R5 K11 ["match"]
       22 CALL                             R5 2 -1
       23 FASTCALL                         TONUMBER ; [+2]
       24 GETIMPORT                        R4 K13 [tonumber]
       26 CALL                             R4 -1 1
       27 SETTABLEKS                       R4 R3 K7 ["assetId"]
       29 GETUPVAL                         R4 5
       30 GETTABLEKS                       R4 R4 K14 ["DEFAULT_GENERATION_FPS"]
       32 SETTABLEKS                       R4 R3 K8 ["fps"]
       34 CALL                             R1 2 1
       35 SETTABLEKS                       R1 R0 K5 ["keyframeData"]
       37 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tools"]
        3 GETTABLEKS                       R0 R0 K1 ["animationGen"]
        5 GETTABLEKS                       R0 R0 K2 ["generateAnimationAsync"]
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R2 K8 [{"numFrames", "priorJobId", "outputPath", "outputFileName", "keyframes"}]
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K3 ["numFrames"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K4 ["priorJobId"]
       15 SETTABLEKS                       R3 R2 K4 ["priorJobId"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K9 ["outputFilePath"]
       20 SETTABLEKS                       R3 R2 K5 ["outputPath"]
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K6 ["outputFileName"]
       25 SETTABLEKS                       R3 R2 K6 ["outputFileName"]
       27 GETUPVAL                         R3 4
       28 SETTABLEKS                       R3 R2 K7 ["keyframes"]
       30 CALL                             R0 2 -1
       31 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 LOADN                            R2 120
        8 CALL                             R0 2 2
        9 JUMPIF                           R0 ; [+5]
       10 GETIMPORT                        R2 K1 [error]
       12 MOVE                             R3 R1
       13 LOADN                            R4 0
       14 CALL                             R2 2 0
       15 JUMPIFNOTEQKNIL                  R1 ; [+6]
       17 GETIMPORT                        R2 K1 [error]
       19 LOADK                            R3 K2 ["Animation generation returned no result"]
       20 LOADN                            R4 0
       21 CALL                             R2 2 0
       22 LOADK                            R3 K3 ["AssistantAnimation_"]
       23 GETUPVAL                         R4 6
       24 LOADN                            R6 1
       25 LOADN                            R7 8
       26 NAMECALL                         R4 R4 K4 ["sub"]
       28 CALL                             R4 3 1
       29 CONCAT                           R2 R3 R4
       30 GETTABLEKS                       R3 R1 K5 ["fbxFilePath"]
       32 JUMPIFEQKNIL                     R3 ; [+12]
       34 GETTABLEKS                       R3 R1 K5 ["fbxFilePath"]
       36 LOADK                            R5 K6 ["([^/\\]+)%.fbx$"]
       37 NAMECALL                         R3 R3 K7 ["match"]
       39 CALL                             R3 2 1
       40 JUMPIFEQKNIL                     R3 ; [+4]
       42 JUMPIFEQKS                       R3 K8 [""] ; [+2]
       44 MOVE                             R2 R3
       45 GETUPVAL                         R3 7
       46 GETTABLEKS                       R3 R3 K9 ["getDefaultAnimationRigDataContentUrl"]
       48 GETUPVAL                         R4 8
       49 CALL                             R3 1 1
       50 GETTABLEKS                       R4 R1 K10 ["animationClip"]
       52 JUMPIFEQKNIL                     R4 ; [+18]
       54 GETUPVAL                         R5 9
       55 MOVE                             R6 R4
       56 CALL                             R5 1 1
       57 MOVE                             R4 R5
       58 GETUPVAL                         R5 10
       59 MOVE                             R6 R4
       60 MOVE                             R7 R3
       61 CALL                             R5 2 1
       62 MOVE                             R4 R5
       63 SETTABLEKS                       R2 R4 K11 ["Name"]
       65 GETUPVAL                         R7 11
       66 GETUPVAL                         R8 6
       67 CALL                             R7 1 -1
       68 NAMECALL                         R5 R4 K12 ["AddTag"]
       70 CALL                             R5 -1 0
       71 DUPTABLE                         R5 K17 [{"name", "generationId", "fbxFilePath", "keyframeSequence", "contextId"}]
       72 SETTABLEKS                       R2 R5 K13 ["name"]
       74 GETUPVAL                         R6 6
       75 SETTABLEKS                       R6 R5 K14 ["generationId"]
       77 GETTABLEKS                       R6 R1 K5 ["fbxFilePath"]
       79 SETTABLEKS                       R6 R5 K5 ["fbxFilePath"]
       81 SETTABLEKS                       R4 R5 K15 ["keyframeSequence"]
       83 GETTABLEKS                       R7 R1 K16 ["contextId"]
       85 JUMPIFEQKNIL                     R7 ; [+8]
       87 GETTABLEKS                       R7 R1 K16 ["contextId"]
       89 FASTCALL1                        TOSTRING R7 ; [+2]
       90 GETIMPORT                        R6 K19 [tostring]
       92 CALL                             R6 1 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R6
       95 SETTABLEKS                       R6 R5 K16 ["contextId"]
       97 RETURN                           R5 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["prompt"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["isEditMode"]
        5 GETTABLEKS                       R4 R0 K2 ["generationMode"]
        7 CALL                             R3 1 1
        8 JUMPIFNOT                        R3 ; [+17]
        9 GETTABLEKS                       R3 R0 K3 ["priorJobId"]
       11 JUMPIFEQKNIL                     R3 ; [+5]
       13 GETTABLEKS                       R3 R0 K3 ["priorJobId"]
       15 JUMPIFNOTEQKS                    R3 K4 [""] ; [+10]
       17 DUPTABLE                         R3 K8 [{["success"] = False, ["failureReason"]}]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K9 ["FailureReasons"]
       21 GETTABLEKS                       R4 R4 K10 ["EditSourceNotFound"]
       23 SETTABLEKS                       R4 R3 K7 ["failureReason"]
       25 RETURN                           R3 1
       26 LOADB                            R3 1
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K11 ["getEditSource"]
       30 GETTABLEKS                       R5 R0 K2 ["generationMode"]
       32 CALL                             R4 1 1
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K12 ["GenerationModes"]
       36 GETTABLEKS                       R5 R5 K13 ["Upscale"]
       38 JUMPIFEQ                         R4 R5 ; [+12]
       40 GETTABLEKS                       R4 R0 K14 ["editSource"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K12 ["GenerationModes"]
       45 GETTABLEKS                       R5 R5 K13 ["Upscale"]
       47 JUMPIFEQ                         R4 R5 ; [+2]
       49 LOADB                            R3 0 +1
       50 LOADB                            R3 1
       51 LOADNIL                          R4
       52 GETTABLEKS                       R5 R0 K2 ["generationMode"]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K12 ["GenerationModes"]
       57 GETTABLEKS                       R6 R6 K13 ["Upscale"]
       59 JUMPIFNOTEQ                      R5 R6 ; [+85]
       61 GETTABLEKS                       R5 R0 K15 ["inputAssetId"]
       63 JUMPIFEQKNIL                     R5 ; [+3]
       65 JUMPIFNOTEQKS                    R5 K4 [""] ; [+11]
       67 DUPTABLE                         R6 K8 [{["success"] = False, ["failureReason"]}]
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R7 R7 K9 ["FailureReasons"]
       71 GETTABLEKS                       R7 R7 K16 ["InputClipLoadFailed"]
       73 SETTABLEKS                       R7 R6 K7 ["failureReason"]
       75 CLOSEUPVALS                      R4
       76 RETURN                           R6 1
       77 GETUPVAL                         R6 1
       78 MOVE                             R7 R5
       79 CALL                             R6 1 1
       80 JUMPIFNOTEQKNIL                  R6 ; [+11]
       82 DUPTABLE                         R7 K8 [{["success"] = False, ["failureReason"]}]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K9 ["FailureReasons"]
       86 GETTABLEKS                       R8 R8 K16 ["InputClipLoadFailed"]
       88 SETTABLEKS                       R8 R7 K7 ["failureReason"]
       90 CLOSEUPVALS                      R4
       91 RETURN                           R7 1
       92 GETIMPORT                        R7 K18 [pcall]
       94 NEWCLOSURE                       R8 P0
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          VAL R6
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          VAL R5
      100 CAPTURE                          UPVAL U4
      101 CALL                             R7 1 2
      102 NAMECALL                         R9 R6 K19 ["Destroy"]
      104 CALL                             R9 1 0
      105 JUMPIFNOT                        R7 ; [+2]
      106 JUMPIFNOTEQKNIL                  R8 ; [+11]
      108 DUPTABLE                         R9 K8 [{["success"] = False, ["failureReason"]}]
      109 GETUPVAL                         R10 0
      110 GETTABLEKS                       R10 R10 K9 ["FailureReasons"]
      112 GETTABLEKS                       R10 R10 K20 ["InputClipConversionFailed"]
      114 SETTABLEKS                       R10 R9 K7 ["failureReason"]
      116 CLOSEUPVALS                      R4
      117 RETURN                           R9 1
      118 GETTABLEKS                       R9 R8 K7 ["failureReason"]
      120 JUMPIFEQKNIL                     R9 ; [+8]
      122 DUPTABLE                         R9 K8 [{["success"] = False, ["failureReason"]}]
      123 GETTABLEKS                       R10 R8 K7 ["failureReason"]
      125 SETTABLEKS                       R10 R9 K7 ["failureReason"]
      127 CLOSEUPVALS                      R4
      128 RETURN                           R9 1
      129 GETTABLEKS                       R9 R8 K21 ["keyframeData"]
      131 JUMPIFNOTEQKNIL                  R9 ; [+11]
      133 DUPTABLE                         R9 K8 [{["success"] = False, ["failureReason"]}]
      134 GETUPVAL                         R10 0
      135 GETTABLEKS                       R10 R10 K9 ["FailureReasons"]
      137 GETTABLEKS                       R10 R10 K20 ["InputClipConversionFailed"]
      139 SETTABLEKS                       R10 R9 K7 ["failureReason"]
      141 CLOSEUPVALS                      R4
      142 RETURN                           R9 1
      143 GETTABLEKS                       R4 R8 K21 ["keyframeData"]
      145 GETUPVAL                         R6 5
      146 GETTABLEKS                       R6 R6 K22 ["FIntAssistantAnimationGenPluginMinDurationSeconds"]
      148 GETUPVAL                         R7 4
      149 GETTABLEKS                       R7 R7 K23 ["DEFAULT_GENERATION_FPS"]
      151 MUL                              R5 R6 R7
      152 GETUPVAL                         R7 5
      153 GETTABLEKS                       R7 R7 K24 ["FIntAssistantAnimationGenPluginMaxDurationSeconds"]
      155 GETUPVAL                         R8 4
      156 GETTABLEKS                       R8 R8 K23 ["DEFAULT_GENERATION_FPS"]
      158 MUL                              R6 R7 R8
      159 LOADB                            R7 0
      160 GETTABLEKS                       R8 R0 K3 ["priorJobId"]
      162 JUMPIFEQKNIL                     R8 ; [+7]
      164 GETTABLEKS                       R8 R0 K3 ["priorJobId"]
      166 JUMPIFNOTEQKS                    R8 K4 [""] ; [+2]
      168 LOADB                            R7 0 +1
      169 LOADB                            R7 1
      170 GETTABLEKS                       R9 R0 K25 ["duration"]
      172 JUMPIFNOT                        R9 ; [+19]
      173 JUMPIF                           R7 ; [+18]
      174 GETTABLEKS                       R11 R0 K25 ["duration"]
      176 GETUPVAL                         R12 4
      177 GETTABLEKS                       R12 R12 K23 ["DEFAULT_GENERATION_FPS"]
      179 MUL                              R10 R11 R12
      180 FASTCALL1                        MATH_FLOOR R10 ; [+2]
      181 GETIMPORT                        R9 K28 [math.floor]
      183 CALL                             R9 1 1
      184 FASTCALL3                        MATH_CLAMP R9 R5 R6
      186 MOVE                             R10 R5
      187 MOVE                             R11 R6
      188 GETIMPORT                        R8 K30 [math.clamp]
      190 CALL                             R8 3 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R8
      193 GETUPVAL                         R9 6
      194 LOADB                            R11 0
      195 NAMECALL                         R9 R9 K31 ["GenerateGUID"]
      197 CALL                             R9 2 1
      198 GETIMPORT                        R10 K18 [pcall]
      200 NEWCLOSURE                       R11 P1
      201 CAPTURE                          UPVAL U7
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R2
      204 CAPTURE                          VAL R8
      205 CAPTURE                          VAL R0
      206 CAPTURE                          REF R4
      207 CAPTURE                          VAL R9
      208 CAPTURE                          UPVAL U4
      209 CAPTURE                          VAL R3
      210 CAPTURE                          UPVAL U8
      211 CAPTURE                          UPVAL U9
      212 CAPTURE                          UPVAL U10
      213 CALL                             R10 1 2
      214 JUMPIF                           R10 ; [+12]
      215 GETIMPORT                        R12 K33 [warn]
      217 LOADK                            R13 K34 ["[AnimationGenTool] Generation failed:"]
      218 FASTCALL1                        TOSTRING R11 ; [+3]
      219 MOVE                             R15 R11
      220 GETIMPORT                        R14 K36 [tostring]
      222 CALL                             R14 1 1
      223 CALL                             R12 2 0
      224 DUPTABLE                         R12 K37 [{["success"] = False}]
      225 CLOSEUPVALS                      R4
      226 RETURN                           R12 1
      227 DUPTABLE                         R12 K44 [{["success"] = True, ["name"], ["generationId"], ["fbxFilePath"], ["keyframeSequence"], ["contextId"]}]
      228 GETTABLEKS                       R13 R11 K39 ["name"]
      230 SETTABLEKS                       R13 R12 K39 ["name"]
      232 GETTABLEKS                       R13 R11 K40 ["generationId"]
      234 SETTABLEKS                       R13 R12 K40 ["generationId"]
      236 GETTABLEKS                       R13 R11 K41 ["fbxFilePath"]
      238 SETTABLEKS                       R13 R12 K41 ["fbxFilePath"]
      240 GETTABLEKS                       R13 R11 K42 ["keyframeSequence"]
      242 SETTABLEKS                       R13 R12 K42 ["keyframeSequence"]
      244 GETTABLEKS                       R13 R11 K43 ["contextId"]
      246 SETTABLEKS                       R13 R12 K43 ["contextId"]
      248 CLOSEUPVALS                      R4
      249 RETURN                           R12 1

PROTO_7:
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 DUPCLOSURE                       R1 K1 [PROTO_6]
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 DUPTABLE                         R2 K4 [{"generateAnimationAsync", "saveKeyframeSequence"}]
       16 SETTABLEKS                       R1 R2 K2 ["generateAnimationAsync"]
       18 SETTABLEKS                       R0 R2 K3 ["saveKeyframeSequence"]
       20 RETURN                           R2 1

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
       39 GETTABLEKS                       R6 R2 K11 ["Util"]
       41 GETTABLEKS                       R6 R6 K12 ["AnimationGen"]
       43 GETTABLEKS                       R6 R6 K15 ["State"]
       45 GETTABLEKS                       R6 R6 K16 ["AnimationHistoryTypes"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K10 [require]
       50 GETTABLEKS                       R7 R2 K17 ["Guest"]
       52 GETTABLEKS                       R7 R7 K18 ["Environment"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K10 [require]
       57 GETTABLEKS                       R8 R2 K19 ["Flags"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K10 [require]
       62 GETTABLEKS                       R9 R2 K11 ["Util"]
       64 GETTABLEKS                       R9 R9 K12 ["AnimationGen"]
       66 GETTABLEKS                       R9 R9 K20 ["addHumanoidRootPartToKeyframeSequence"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K10 [require]
       71 GETTABLEKS                       R10 R2 K11 ["Util"]
       73 GETTABLEKS                       R10 R10 K12 ["AnimationGen"]
       75 GETTABLEKS                       R10 R10 K21 ["animationClipToBackendTensor"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K10 [require]
       80 GETTABLEKS                       R11 R2 K11 ["Util"]
       82 GETTABLEKS                       R11 R11 K12 ["AnimationGen"]
       84 GETTABLEKS                       R11 R11 K22 ["attachMannequinAnimationRigData"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K10 [require]
       89 GETTABLEKS                       R12 R2 K11 ["Util"]
       91 GETTABLEKS                       R12 R12 K12 ["AnimationGen"]
       93 GETTABLEKS                       R12 R12 K23 ["detectRigType"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K10 [require]
       98 GETTABLEKS                       R13 R2 K11 ["Util"]
      100 GETTABLEKS                       R13 R13 K12 ["AnimationGen"]
      102 GETTABLEKS                       R13 R13 K24 ["loadClipFromAssetId"]
      104 CALL                             R12 1 1
      105 GETTABLEKS                       R13 R3 K25 ["ASSISTANT_ANIMATION_GENERATION_FOLDER_NAME"]
      107 DUPCLOSURE                       R14 K26 [PROTO_1]
      108 GETTABLEKS                       R15 R4 K27 ["getLinkTag"]
      110 DUPCLOSURE                       R16 K28 [PROTO_7]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R4
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R15
      124 RETURN                           R16 1
