PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 GETIMPORT                        R2 K2 [string.match]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K3 ["%S"]
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["GenerateLayout"]
        2 LOADK                            R3 K1 ["MissingPromptOrImage"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETTABLEKS                       R2 R0 K0 ["x"]
        6 GETTABLEKS                       R3 R0 K1 ["y"]
        8 GETTABLEKS                       R4 R0 K2 ["z"]
       10 FASTCALL                         VECTOR ; [+2]
       11 GETIMPORT                        R1 K5 [Vector3.new]
       13 CALL                             R1 3 1
       14 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 GETUPVAL                         R3 0
       10 LOADK                            R5 K3 ["GenerateLayout"]
       11 LOADK                            R6 K4 ["InvalidArguments"]
       12 NAMECALL                         R3 R3 K5 ["getText"]
       14 CALL                             R3 3 -1
       15 FASTCALL                         ASSERT ; [+2]
       16 GETIMPORT                        R1 K7 [assert]
       18 CALL                             R1 -1 0
       19 GETTABLEKS                       R1 R0 K8 ["textPrompt"]
       21 JUMPIFEQKNIL                     R1 ; [+20]
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R5 R1
       25 GETIMPORT                        R4 K1 [typeof]
       27 CALL                             R4 1 1
       28 JUMPIFEQKS                       R4 K9 ["string"] ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 GETUPVAL                         R4 0
       33 LOADK                            R6 K3 ["GenerateLayout"]
       34 LOADK                            R7 K10 ["InvalidPrompt"]
       35 NAMECALL                         R4 R4 K5 ["getText"]
       37 CALL                             R4 3 -1
       38 FASTCALL                         ASSERT ; [+2]
       39 GETIMPORT                        R2 K7 [assert]
       41 CALL                             R2 -1 0
       42 NEWTABLE                         R2 0 0
       44 GETTABLEKS                       R3 R0 K11 ["images"]
       46 JUMPIFEQKNIL                     R3 ; [+41]
       48 GETTABLEKS                       R6 R0 K11 ["images"]
       50 FASTCALL1                        TYPEOF R6 ; [+2]
       51 GETIMPORT                        R5 K1 [typeof]
       53 CALL                             R5 1 1
       54 JUMPIFEQKS                       R5 K2 ["table"] ; [+2]
       56 LOADB                            R4 0 +1
       57 LOADB                            R4 1
       58 GETUPVAL                         R5 0
       59 LOADK                            R7 K3 ["GenerateLayout"]
       60 LOADK                            R8 K12 ["InvalidImages"]
       61 NAMECALL                         R5 R5 K5 ["getText"]
       63 CALL                             R5 3 -1
       64 FASTCALL                         ASSERT ; [+2]
       65 GETIMPORT                        R3 K7 [assert]
       67 CALL                             R3 -1 0
       68 GETTABLEKS                       R3 R0 K11 ["images"]
       70 LOADNIL                          R4
       71 LOADNIL                          R5
       72 FORGPREP                         R3
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R8 R8 K13 ["resolveImage"]
       76 MOVE                             R9 R7
       77 CALL                             R8 1 1
       78 JUMPIFNOT                        R8 ; [+7]
       79 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       81 MOVE                             R10 R2
       82 MOVE                             R11 R8
       83 GETIMPORT                        R9 K15 [table.insert]
       85 CALL                             R9 2 0
       86 FORGLOOP                         R3 2 ; [-14]
       88 GETUPVAL                         R3 2
       89 GETTABLEKS                       R3 R3 K16 ["FFlagAssistantGenerateSceneInputValidation"]
       91 JUMPIFNOT                        R3 ; [+27]
       92 LENGTH                           R3 R2
       93 JUMPIFNOTEQKN                    R3 K17 [0] ; [+48]
       95 LOADB                            R3 0
       96 JUMPIFEQKNIL                     R1 ; [+10]
       98 GETIMPORT                        R4 K19 [string.match]
      100 MOVE                             R5 R1
      101 LOADK                            R6 K20 ["%S"]
      102 CALL                             R4 2 1
      103 JUMPIFNOTEQKNIL                  R4 ; [+2]
      105 LOADB                            R3 0 +1
      106 LOADB                            R3 1
      107 JUMPIF                           R3 ; [+34]
      108 GETIMPORT                        R3 K22 [error]
      110 GETUPVAL                         R4 0
      111 LOADK                            R6 K3 ["GenerateLayout"]
      112 LOADK                            R7 K23 ["MissingPromptOrImage"]
      113 NAMECALL                         R4 R4 K5 ["getText"]
      115 CALL                             R4 3 1
      116 LOADN                            R5 0
      117 CALL                             R3 2 0
      118 JUMP                             ; [+23]
      119 LOADB                            R4 1
      120 LENGTH                           R5 R2
      121 LOADN                            R6 0
      122 JUMPIFLT                         R6 R5 ; [+13]
      124 LOADB                            R4 0
      125 JUMPIFEQKNIL                     R1 ; [+10]
      127 GETIMPORT                        R5 K19 [string.match]
      129 MOVE                             R6 R1
      130 LOADK                            R7 K20 ["%S"]
      131 CALL                             R5 2 1
      132 JUMPIFNOTEQKNIL                  R5 ; [+2]
      134 LOADB                            R4 0 +1
      135 LOADB                            R4 1
      136 GETUPVAL                         R5 3
      137 CALL                             R5 0 -1
      138 FASTCALL                         ASSERT ; [+2]
      139 GETIMPORT                        R3 K7 [assert]
      141 CALL                             R3 -1 0
      142 GETTABLEKS                       R4 R0 K24 ["boundingBoxPosition"]
      144 JUMPIFNOTEQKNIL                  R4 ; [+3]
      146 LOADNIL                          R3
      147 JUMP                             ; [+11]
      148 GETTABLEKS                       R6 R4 K25 ["x"]
      150 GETTABLEKS                       R7 R4 K26 ["y"]
      152 GETTABLEKS                       R8 R4 K27 ["z"]
      154 FASTCALL                         VECTOR ; [+2]
      155 GETIMPORT                        R5 K30 [Vector3.new]
      157 CALL                             R5 3 1
      158 MOVE                             R3 R5
      159 GETTABLEKS                       R4 R0 K31 ["useMeshGen"]
      161 JUMPIFEQKNIL                     R4 ; [+20]
      163 FASTCALL1                        TYPEOF R4 ; [+3]
      164 MOVE                             R8 R4
      165 GETIMPORT                        R7 K1 [typeof]
      167 CALL                             R7 1 1
      168 JUMPIFEQKS                       R7 K32 ["boolean"] ; [+2]
      170 LOADB                            R6 0 +1
      171 LOADB                            R6 1
      172 GETUPVAL                         R7 0
      173 LOADK                            R9 K3 ["GenerateLayout"]
      174 LOADK                            R10 K33 ["InvalidMeshOption"]
      175 NAMECALL                         R7 R7 K5 ["getText"]
      177 CALL                             R7 3 -1
      178 FASTCALL                         ASSERT ; [+2]
      179 GETIMPORT                        R5 K7 [assert]
      181 CALL                             R5 -1 0
      182 LOADNIL                          R5
      183 GETUPVAL                         R6 2
      184 GETTABLEKS                       R6 R6 K34 ["FFlagAssistantGenerateSceneQuality"]
      186 JUMPIFNOT                        R6 ; [+24]
      187 GETTABLEKS                       R6 R0 K35 ["quality"]
      189 JUMPIFEQKNIL                     R6 ; [+21]
      191 GETUPVAL                         R6 4
      192 GETTABLEKS                       R6 R6 K36 ["LayoutGenOps"]
      194 GETTABLEKS                       R6 R6 K37 ["parseSceneQuality"]
      196 GETTABLEKS                       R7 R0 K35 ["quality"]
      198 CALL                             R6 1 1
      199 MOVE                             R5 R6
      200 MOVE                             R7 R5
      201 GETUPVAL                         R8 0
      202 LOADK                            R10 K3 ["GenerateLayout"]
      203 LOADK                            R11 K38 ["InvalidQuality"]
      204 NAMECALL                         R8 R8 K5 ["getText"]
      206 CALL                             R8 3 -1
      207 FASTCALL                         ASSERT ; [+2]
      208 GETIMPORT                        R6 K7 [assert]
      210 CALL                             R6 -1 0
      211 DUPTABLE                         R6 K42 [{"textPrompt", "images", "boundingBoxSize", "boundingBoxCFrame", "sceneBoxRequestId", "useMeshGen", "quality"}]
      212 SETTABLEKS                       R1 R6 K8 ["textPrompt"]
      214 SETTABLEKS                       R2 R6 K11 ["images"]
      216 GETTABLEKS                       R8 R0 K39 ["boundingBoxSize"]
      218 JUMPIFNOTEQKNIL                  R8 ; [+3]
      220 LOADNIL                          R7
      221 JUMP                             ; [+11]
      222 GETTABLEKS                       R10 R8 K25 ["x"]
      224 GETTABLEKS                       R11 R8 K26 ["y"]
      226 GETTABLEKS                       R12 R8 K27 ["z"]
      228 FASTCALL                         VECTOR ; [+2]
      229 GETIMPORT                        R9 K30 [Vector3.new]
      231 CALL                             R9 3 1
      232 MOVE                             R7 R9
      233 SETTABLEKS                       R7 R6 K39 ["boundingBoxSize"]
      235 JUMPIFNOT                        R3 ; [+5]
      236 GETIMPORT                        R7 K44 [CFrame.new]
      238 MOVE                             R8 R3
      239 CALL                             R7 1 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R7
      242 SETTABLEKS                       R7 R6 K40 ["boundingBoxCFrame"]
      244 GETTABLEKS                       R7 R0 K41 ["sceneBoxRequestId"]
      246 SETTABLEKS                       R7 R6 K41 ["sceneBoxRequestId"]
      248 SETTABLEKS                       R4 R6 K31 ["useMeshGen"]
      250 SETTABLEKS                       R5 R6 K35 ["quality"]
      252 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["generateScene"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["executeAndStoreScript"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cancelGeneration"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createSceneBox"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateSceneBoxField"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["destroySceneBox"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["finishSceneBox"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIF                           R0 ; [+13]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["bridges"]
        7 GETTABLEKS                       R0 R0 K2 ["LayoutGen"]
        9 GETTABLEKS                       R0 R0 K3 ["createGuestContext"]
       11 LOADNIL                          R1
       12 LOADNIL                          R2
       13 CALL                             R0 2 1
       14 GETTABLEKS                       R0 R0 K4 ["bridge"]
       16 RETURN                           R0 1
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K5 ["resolveTargetAsync"]
       20 GETUPVAL                         R1 3
       21 CALL                             R0 1 1
       22 DUPTABLE                         R1 K13 [{"generateSceneAsync", "executeAndStoreScriptAsync", "cancelGenerationAsync", "createSceneBoxAsync", "updateSceneBoxFieldAsync", "destroySceneBoxAsync", "finishSceneBoxAsync"}]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R1 K6 ["generateSceneAsync"]
       28 NEWCLOSURE                       R2 P1
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R2 R1 K7 ["executeAndStoreScriptAsync"]
       33 NEWCLOSURE                       R2 P2
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R2 R1 K8 ["cancelGenerationAsync"]
       38 NEWCLOSURE                       R2 P3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R2 R1 K9 ["createSceneBoxAsync"]
       43 NEWCLOSURE                       R2 P4
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R2 R1 K10 ["updateSceneBoxFieldAsync"]
       48 NEWCLOSURE                       R2 P5
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R2 R1 K11 ["destroySceneBoxAsync"]
       53 NEWCLOSURE                       R2 P6
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R2 R1 K12 ["finishSceneBoxAsync"]
       58 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ERROR"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+6]
        5 GETIMPORT                        R2 K2 [error]
        7 MOVE                             R3 R1
        8 LOADN                            R4 0
        9 CALL                             R2 2 0
       10 GETIMPORT                        R2 K2 [error]
       12 GETUPVAL                         R3 1
       13 LOADK                            R5 K3 ["GenerateLayout"]
       14 MOVE                             R6 R0
       15 DUPTABLE                         R7 K5 [{"errorMessage"}]
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R9 R1
       18 GETIMPORT                        R8 K7 [tostring]
       20 CALL                             R8 1 1
       21 SETTABLEKS                       R8 R7 K4 ["errorMessage"]
       23 NAMECALL                         R3 R3 K8 ["getText"]
       25 CALL                             R3 4 1
       26 LOADN                            R4 0
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["generateSceneAsync"]
        3 DUPTABLE                         R1 K9 [{"requestId", "sceneBoxRequestId", "images", "textPrompt", "boundingBoxSize", "boundingBoxCFrame", "useMeshGen", "quality"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["sceneBoxRequestId"]
       10 SETTABLEKS                       R2 R1 K2 ["sceneBoxRequestId"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K3 ["images"]
       15 SETTABLEKS                       R2 R1 K3 ["images"]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K4 ["textPrompt"]
       20 SETTABLEKS                       R2 R1 K4 ["textPrompt"]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K5 ["boundingBoxSize"]
       25 SETTABLEKS                       R2 R1 K5 ["boundingBoxSize"]
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K6 ["boundingBoxCFrame"]
       30 SETTABLEKS                       R2 R1 K6 ["boundingBoxCFrame"]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K7 ["useMeshGen"]
       35 SETTABLEKS                       R2 R1 K7 ["useMeshGen"]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K8 ["quality"]
       40 SETTABLEKS                       R2 R1 K8 ["quality"]
       42 CALL                             R0 1 0
       43 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["executeAndStoreScriptAsync"]
        3 DUPTABLE                         R1 K3 [{"requestId", "sceneBoxRequestId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["requestId"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["sceneBoxRequestId"]
       10 SETTABLEKS                       R2 R1 K2 ["sceneBoxRequestId"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 GETIMPORT                        R4 K1 [pcall]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 CALL                             R4 1 2
       12 JUMPIF                           R4 ; [+4]
       13 GETUPVAL                         R6 2
       14 LOADK                            R7 K2 ["HeaderFailedWithError"]
       15 MOVE                             R8 R5
       16 CALL                             R6 2 0
       17 GETIMPORT                        R6 K1 [pcall]
       19 NEWCLOSURE                       R7 P1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 CALL                             R6 1 2
       24 JUMPIF                           R6 ; [+4]
       25 GETUPVAL                         R8 2
       26 LOADK                            R9 K3 ["ScriptFailedWithError"]
       27 MOVE                             R10 R7
       28 CALL                             R8 2 0
       29 DUPTABLE                         R8 K8 [{"requestId", "ok", "tag", "errorMessage"}]
       30 SETTABLEKS                       R1 R8 K4 ["requestId"]
       32 GETTABLEKS                       R9 R7 K5 ["ok"]
       34 SETTABLEKS                       R9 R8 K5 ["ok"]
       36 GETTABLEKS                       R9 R7 K6 ["tag"]
       38 SETTABLEKS                       R9 R8 K6 ["tag"]
       40 GETTABLEKS                       R9 R7 K7 ["errorMessage"]
       42 SETTABLEKS                       R9 R8 K7 ["errorMessage"]
       44 RETURN                           R8 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runWithProgressLoop"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["sendProgress"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETUPVAL                         R4 4
        9 CALL                             R0 4 -1
       10 RETURN                           R0 -1

PROTO_17:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADB                            R5 0
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       19 LOADK                            R6 K5 ["GenerateSceneTool requires meta.toolId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 GETIMPORT                        R4 K9 [pcall]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R3
       31 CALL                             R4 1 2
       32 JUMPIF                           R4 ; [+80]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K10 ["FFlagAssistantGenerateLayoutCalloutCancel"]
       36 JUMPIFNOT                        R6 ; [+51]
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K11 ["ERROR"]
       40 JUMPIFNOTEQ                      R5 R6 ; [+47]
       42 LOADB                            R6 0
       43 GETTABLEKS                       R7 R0 K12 ["async"]
       45 JUMPIFNOTEQKB                    R7 TRUE ; [+8]
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K13 ["isAllowed"]
       50 GETUPVAL                         R7 5
       51 GETTABLEKS                       R7 R7 K14 ["GenerateScene"]
       53 CALL                             R6 1 1
       54 JUMPIFNOT                        R6 ; [+8]
       55 GETTABLEKS                       R7 R2 K15 ["signal"]
       57 GETUPVAL                         R9 3
       58 GETTABLEKS                       R9 R9 K11 ["ERROR"]
       60 NAMECALL                         R7 R7 K16 ["abort"]
       62 CALL                             R7 2 0
       63 GETUPVAL                         R7 6
       64 CALL                             R7 0 1
       65 GETUPVAL                         R9 7
       66 LOADK                            R11 K17 ["GenerateLayout"]
       67 LOADK                            R12 K18 ["HeaderCancelled"]
       68 NAMECALL                         R9 R9 K19 ["getText"]
       70 CALL                             R9 3 -1
       71 NAMECALL                         R7 R7 K20 ["addText"]
       73 CALL                             R7 -1 1
       74 DUPTABLE                         R9 K24 [{["requestId"], ["cancelled"] = True}]
       75 SETTABLEKS                       R3 R9 K21 ["requestId"]
       77 NAMECALL                         R7 R7 K25 ["setStructuredContent"]
       79 CALL                             R7 2 1
       80 LOADB                            R9 1
       81 NAMECALL                         R7 R7 K26 ["setError"]
       83 CALL                             R7 2 1
       84 NAMECALL                         R7 R7 K27 ["build"]
       86 CALL                             R7 1 -1
       87 RETURN                           R7 -1
       88 FASTCALL1                        TOSTRING R5 ; [+3]
       89 MOVE                             R7 R5
       90 GETIMPORT                        R6 K29 [tostring]
       92 CALL                             R6 1 1
       93 GETUPVAL                         R7 6
       94 CALL                             R7 0 1
       95 MOVE                             R9 R6
       96 NAMECALL                         R7 R7 K20 ["addText"]
       98 CALL                             R7 2 1
       99 DUPTABLE                         R9 K31 [{"errorMessage"}]
      100 SETTABLEKS                       R6 R9 K30 ["errorMessage"]
      102 NAMECALL                         R7 R7 K25 ["setStructuredContent"]
      104 CALL                             R7 2 1
      105 LOADB                            R9 1
      106 NAMECALL                         R7 R7 K26 ["setError"]
      108 CALL                             R7 2 1
      109 NAMECALL                         R7 R7 K27 ["build"]
      111 CALL                             R7 1 -1
      112 RETURN                           R7 -1
      113 GETUPVAL                         R6 6
      114 CALL                             R6 0 1
      115 GETUPVAL                         R8 0
      116 GETTABLEKS                       R8 R8 K32 ["toString"]
      118 DUPTABLE                         R9 K34 [{"tag"}]
      119 GETTABLEKS                       R10 R5 K33 ["tag"]
      121 SETTABLEKS                       R10 R9 K33 ["tag"]
      123 CALL                             R8 1 -1
      124 NAMECALL                         R6 R6 K20 ["addText"]
      126 CALL                             R6 -1 1
      127 MOVE                             R8 R5
      128 NAMECALL                         R6 R6 K25 ["setStructuredContent"]
      130 CALL                             R6 2 1
      131 GETTABLEKS                       R7 R5 K35 ["ok"]
      133 JUMPIFNOTEQKB                    R7 FALSE ; [+6]
      135 LOADB                            R9 1
      136 NAMECALL                         R7 R6 K26 ["setError"]
      138 CALL                             R7 2 1
      139 MOVE                             R6 R7
      140 NAMECALL                         R7 R6 K27 ["build"]
      142 CALL                             R7 1 -1
      143 RETURN                           R7 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 DUPTABLE                         R5 K5 [{[1] = "object", ["description"], ["properties"], ["required"]}]
        3 SETTABLEKS                       R1 R5 K2 ["description"]
        5 DUPTABLE                         R6 K9 [{"x", "y", "z"}]
        6 DUPTABLE                         R7 K11 [{[1] = "number"}]
        7 SETTABLEKS                       R7 R6 K6 ["x"]
        9 DUPTABLE                         R7 K11 [{[1] = "number"}]
       10 SETTABLEKS                       R7 R6 K7 ["y"]
       12 DUPTABLE                         R7 K11 [{[1] = "number"}]
       13 SETTABLEKS                       R7 R6 K8 ["z"]
       15 SETTABLEKS                       R6 R5 K3 ["properties"]
       17 NEWTABLE                         R6 0 3
       19 LOADK                            R7 K6 ["x"]
       20 LOADK                            R8 K7 ["y"]
       21 LOADK                            R9 K8 ["z"]
       22 SETLIST                          R6 R7 3 [1]
       24 SETTABLEKS                       R6 R5 K4 ["required"]
       26 NAMECALL                         R2 R2 K12 ["addOptionalArgument"]
       28 CALL                             R2 3 0
       29 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K0 ["destroySceneBoxAsync"]
        6 DUPTABLE                         R2 K2 [{"requestId"}]
        7 GETUPVAL                         R3 2
        8 SETTABLEKS                       R3 R2 K1 ["requestId"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 SETUPVAL                         R1 1
        3 GETTABLEKS                       R2 R1 K0 ["createSceneBoxAsync"]
        5 DUPTABLE                         R3 K2 [{"requestId"}]
        6 GETUPVAL                         R4 2
        7 SETTABLEKS                       R4 R3 K1 ["requestId"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K3 ["X"]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K4 ["Z"]
       16 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       18 GETIMPORT                        R2 K7 [math.max]
       20 CALL                             R2 2 1
       21 NEWTABLE                         R3 0 2
       23 DUPTABLE                         R4 K11 [{"name", "inputType", "initialValue"}]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K12 ["Size"]
       27 SETTABLEKS                       R5 R4 K8 ["name"]
       29 GETUPVAL                         R5 5
       30 GETTABLEKS                       R5 R5 K13 ["Vector3"]
       32 SETTABLEKS                       R5 R4 K9 ["inputType"]
       34 DUPTABLE                         R5 K17 [{"x", "y", "z"}]
       35 SETTABLEKS                       R2 R5 K14 ["x"]
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K18 ["Y"]
       40 SETTABLEKS                       R6 R5 K15 ["y"]
       42 SETTABLEKS                       R2 R5 K16 ["z"]
       44 SETTABLEKS                       R5 R4 K10 ["initialValue"]
       46 DUPTABLE                         R5 K11 [{"name", "inputType", "initialValue"}]
       47 GETUPVAL                         R6 4
       48 GETTABLEKS                       R6 R6 K19 ["Position"]
       50 SETTABLEKS                       R6 R5 K8 ["name"]
       52 GETUPVAL                         R6 5
       53 GETTABLEKS                       R6 R6 K13 ["Vector3"]
       55 SETTABLEKS                       R6 R5 K9 ["inputType"]
       57 DUPTABLE                         R6 K21 [{["x"] = 0, ["y"], ["z"] = 0}]
       58 GETUPVAL                         R8 6
       59 GETTABLEKS                       R8 R8 K22 ["getFFlagGen3dSceneBoundsBottomPivot"]
       61 CALL                             R8 0 1
       62 JUMPIFNOT                        R8 ; [+2]
       63 LOADN                            R7 0
       64 JUMP                             ; [+4]
       65 GETUPVAL                         R8 3
       66 GETTABLEKS                       R8 R8 K18 ["Y"]
       68 DIVK                             R7 R8 K23 [2]
       69 SETTABLEKS                       R7 R6 K15 ["y"]
       71 SETTABLEKS                       R6 R5 K10 ["initialValue"]
       73 SETLIST                          R3 R4 2 [1]
       75 GETUPVAL                         R4 7
       76 GETTABLEKS                       R4 R4 K24 ["FFlagAssistantGenerateSceneMeshGenToggle"]
       78 JUMPIFNOT                        R4 ; [+34]
       79 DUPTABLE                         R6 K26 [{"name", "inputType", "initialValue", "options"}]
       80 GETUPVAL                         R7 4
       81 GETTABLEKS                       R7 R7 K27 ["UseMeshGen"]
       83 SETTABLEKS                       R7 R6 K8 ["name"]
       85 GETUPVAL                         R7 5
       86 GETTABLEKS                       R7 R7 K28 ["Option"]
       88 SETTABLEKS                       R7 R6 K9 ["inputType"]
       90 GETUPVAL                         R7 8
       91 GETTABLEKS                       R7 R7 K29 ["ProcModels"]
       93 SETTABLEKS                       R7 R6 K10 ["initialValue"]
       95 NEWTABLE                         R7 0 2
       97 GETUPVAL                         R8 8
       98 GETTABLEKS                       R8 R8 K29 ["ProcModels"]
      100 GETUPVAL                         R9 8
      101 GETTABLEKS                       R9 R9 K30 ["ProcModelsAndMeshes"]
      103 SETLIST                          R7 R8 2 [1]
      105 SETTABLEKS                       R7 R6 K25 ["options"]
      107 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      109 MOVE                             R5 R3
      110 GETIMPORT                        R4 K33 [table.insert]
      112 CALL                             R4 2 0
      113 GETUPVAL                         R4 7
      114 GETTABLEKS                       R4 R4 K34 ["FFlagAssistantGenerateSceneQuality"]
      116 JUMPIFNOT                        R4 ; [+27]
      117 DUPTABLE                         R6 K26 [{"name", "inputType", "initialValue", "options"}]
      118 GETUPVAL                         R7 4
      119 GETTABLEKS                       R7 R7 K35 ["Quality"]
      121 SETTABLEKS                       R7 R6 K8 ["name"]
      123 GETUPVAL                         R7 5
      124 GETTABLEKS                       R7 R7 K28 ["Option"]
      126 SETTABLEKS                       R7 R6 K9 ["inputType"]
      128 GETUPVAL                         R7 6
      129 GETTABLEKS                       R7 R7 K36 ["Constants"]
      131 GETTABLEKS                       R7 R7 K37 ["DEFAULT_SCENE_QUALITY"]
      133 SETTABLEKS                       R7 R6 K10 ["initialValue"]
      135 GETUPVAL                         R7 9
      136 SETTABLEKS                       R7 R6 K25 ["options"]
      138 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      140 MOVE                             R5 R3
      141 GETIMPORT                        R4 K33 [table.insert]
      143 CALL                             R4 2 0
      144 DUPTABLE                         R4 K41 [{"formId", "fields", "liveChannelId"}]
      145 GETUPVAL                         R5 10
      146 GETTABLEKS                       R5 R5 K42 ["FormId"]
      148 SETTABLEKS                       R5 R4 K38 ["formId"]
      150 SETTABLEKS                       R3 R4 K39 ["fields"]
      152 GETUPVAL                         R5 2
      153 SETTABLEKS                       R5 R4 K40 ["liveChannelId"]
      155 DUPTABLE                         R5 K44 [{"name", "arguments"}]
      156 GETUPVAL                         R6 11
      157 GETTABLEKS                       R6 R6 K45 ["AskInput"]
      159 SETTABLEKS                       R6 R5 K8 ["name"]
      161 SETTABLEKS                       R4 R5 K43 ["arguments"]
      163 NEWCLOSURE                       R6 P0
      164 CAPTURE                          UPVAL U1
      165 CAPTURE                          UPVAL U0
      166 CAPTURE                          UPVAL U2
      167 RETURN                           R5 2

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["readAskInputValues"]
        3 LENGTH                           R3 R0
        4 GETTABLE                         R2 R0 R3
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 JUMPIF                           R2 ; [+2]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R3 R2 K1 ["finishSceneBoxAsync"]
       12 DUPTABLE                         R4 K3 [{"requestId"}]
       13 GETUPVAL                         R5 3
       14 SETTABLEKS                       R5 R4 K2 ["requestId"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K4 ["ok"]
       19 JUMPIF                           R4 ; [+10]
       20 GETIMPORT                        R4 K6 [error]
       22 GETTABLEKS                       R6 R3 K7 ["errorMessage"]
       24 FASTCALL1                        TOSTRING R6 ; [+2]
       25 GETIMPORT                        R5 K9 [tostring]
       27 CALL                             R5 1 1
       28 LOADN                            R6 0
       29 CALL                             R4 2 0
       30 NEWTABLE                         R4 0 0
       32 GETUPVAL                         R5 4
       33 JUMPIF                           R5 ; [+2]
       34 NEWTABLE                         R5 0 0
       36 MOVE                             R6 R5
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 GETUPVAL                         R11 5
       41 GETTABLEKS                       R11 R11 K10 ["resolveUri"]
       43 MOVE                             R12 R10
       44 CALL                             R11 1 1
       45 JUMPIFNOT                        R11 ; [+7]
       46 FASTCALL2                        TABLE_INSERT R4 R11 ; [+5]
       48 MOVE                             R13 R4
       49 MOVE                             R14 R11
       50 GETIMPORT                        R12 K13 [table.insert]
       52 CALL                             R12 2 0
       53 FORGLOOP                         R6 2 ; [-14]
       55 GETTABLEKS                       R6 R3 K14 ["boundingBoxSize"]
       57 GETTABLEKS                       R7 R3 K15 ["boundingBoxCFrame"]
       59 JUMPIFNOT                        R7 ; [+4]
       60 GETTABLEKS                       R7 R3 K15 ["boundingBoxCFrame"]
       62 GETTABLEKS                       R7 R7 K16 ["Position"]
       64 MOVE                             R8 R6
       65 JUMPIFNOT                        R8 ; [+13]
       66 DUPTABLE                         R8 K20 [{"x", "y", "z"}]
       67 GETTABLEKS                       R9 R6 K21 ["X"]
       69 SETTABLEKS                       R9 R8 K17 ["x"]
       71 GETTABLEKS                       R9 R6 K22 ["Y"]
       73 SETTABLEKS                       R9 R8 K18 ["y"]
       75 GETTABLEKS                       R9 R6 K23 ["Z"]
       77 SETTABLEKS                       R9 R8 K19 ["z"]
       79 MOVE                             R9 R7
       80 JUMPIFNOT                        R9 ; [+13]
       81 DUPTABLE                         R9 K20 [{"x", "y", "z"}]
       82 GETTABLEKS                       R10 R7 K21 ["X"]
       84 SETTABLEKS                       R10 R9 K17 ["x"]
       86 GETTABLEKS                       R10 R7 K22 ["Y"]
       88 SETTABLEKS                       R10 R9 K18 ["y"]
       90 GETTABLEKS                       R10 R7 K23 ["Z"]
       92 SETTABLEKS                       R10 R9 K19 ["z"]
       94 DUPTABLE                         R10 K30 [{"textPrompt", "images", "boundingBoxSize", "boundingBoxPosition", "sceneBoxRequestId", "useMeshGen", "quality"}]
       95 GETUPVAL                         R12 6
       96 JUMPIFEQKS                       R12 K31 [""] ; [+3]
       98 GETUPVAL                         R11 6
       99 JUMP                             ; [+1]
      100 LOADNIL                          R11
      101 SETTABLEKS                       R11 R10 K24 ["textPrompt"]
      103 LENGTH                           R12 R4
      104 LOADN                            R13 0
      105 JUMPIFNOTLT                      R13 R12 ; [+3]
      107 MOVE                             R11 R4
      108 JUMP                             ; [+1]
      109 LOADNIL                          R11
      110 SETTABLEKS                       R11 R10 K25 ["images"]
      112 SETTABLEKS                       R8 R10 K14 ["boundingBoxSize"]
      114 SETTABLEKS                       R9 R10 K26 ["boundingBoxPosition"]
      116 GETUPVAL                         R11 3
      117 SETTABLEKS                       R11 R10 K27 ["sceneBoxRequestId"]
      119 GETUPVAL                         R14 7
      120 GETTABLEKS                       R14 R14 K32 ["UseMeshGen"]
      122 GETTABLE                         R13 R1 R14
      123 FASTCALL1                        TYPEOF R13 ; [+2]
      124 GETIMPORT                        R12 K34 [typeof]
      126 CALL                             R12 1 1
      127 JUMPIFNOTEQKS                    R12 K35 ["boolean"] ; [+6]
      129 GETUPVAL                         R12 7
      130 GETTABLEKS                       R12 R12 K32 ["UseMeshGen"]
      132 GETTABLE                         R11 R1 R12
      133 JUMP                             ; [+23]
      134 GETUPVAL                         R13 7
      135 GETTABLEKS                       R13 R13 K32 ["UseMeshGen"]
      137 GETTABLE                         R12 R1 R13
      138 GETUPVAL                         R13 8
      139 GETTABLEKS                       R13 R13 K36 ["ProcModelsAndMeshes"]
      141 JUMPIFNOTEQ                      R12 R13 ; [+3]
      143 LOADB                            R11 1
      144 JUMP                             ; [+12]
      145 GETUPVAL                         R13 7
      146 GETTABLEKS                       R13 R13 K32 ["UseMeshGen"]
      148 GETTABLE                         R12 R1 R13
      149 GETUPVAL                         R13 8
      150 GETTABLEKS                       R13 R13 K37 ["ProcModels"]
      152 JUMPIFNOTEQ                      R12 R13 ; [+3]
      154 LOADB                            R11 0
      155 JUMP                             ; [+1]
      156 LOADNIL                          R11
      157 SETTABLEKS                       R11 R10 K28 ["useMeshGen"]
      159 GETUPVAL                         R14 7
      160 GETTABLEKS                       R14 R14 K38 ["Quality"]
      162 GETTABLE                         R13 R1 R14
      163 FASTCALL1                        TYPEOF R13 ; [+2]
      164 GETIMPORT                        R12 K34 [typeof]
      166 CALL                             R12 1 1
      167 JUMPIFNOTEQKS                    R12 K39 ["string"] ; [+6]
      169 GETUPVAL                         R12 7
      170 GETTABLEKS                       R12 R12 K38 ["Quality"]
      172 GETTABLE                         R11 R1 R12
      173 JUMP                             ; [+1]
      174 LOADNIL                          R11
      175 SETTABLEKS                       R11 R10 K29 ["quality"]
      177 GETUPVAL                         R11 9
      178 GETTABLEKS                       R11 R11 K40 ["isAllowed"]
      180 GETUPVAL                         R12 10
      181 GETTABLEKS                       R12 R12 K41 ["GenerateScene"]
      183 CALL                             R11 1 1
      184 JUMPIFNOT                        R11 ; [+3]
      185 LOADB                            R11 1
      186 SETTABLEKS                       R11 R10 K42 ["async"]
      188 DUPTABLE                         R11 K45 [{"name", "arguments"}]
      189 GETUPVAL                         R12 10
      190 GETTABLEKS                       R12 R12 K41 ["GenerateScene"]
      192 SETTABLEKS                       R12 R11 K43 ["name"]
      194 SETTABLEKS                       R10 R11 K44 ["arguments"]
      196 RETURN                           R11 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 0
        2 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        4 CALL                             R2 2 1
        5 LOADNIL                          R3
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          REF R3
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          UPVAL U11
       21 CAPTURE                          REF R3
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U12
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U13
       30 CAPTURE                          UPVAL U10
       31 NEWTABLE                         R6 0 2
       33 MOVE                             R7 R4
       34 MOVE                             R8 R5
       35 SETLIST                          R6 R7 2 [1]
       37 CLOSEUPVALS                      R3
       38 RETURN                           R6 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["GenerateLayout"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_25:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+17]
        2 LOADB                            R2 0
        3 JUMPIFEQKNIL                     R0 ; [+10]
        5 GETIMPORT                        R3 K3 [string.match]
        7 MOVE                             R4 R0
        8 LOADK                            R5 K4 ["%S"]
        9 CALL                             R3 2 1
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 JUMPIF                           R2 ; [+3]
       15 GETUPVAL                         R2 0
       16 CALL                             R2 0 -1
       17 RETURN                           R2 -1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_26:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 DUPCLOSURE                       R4 K2 [PROTO_12]
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 NEWCLOSURE                       R5 P2
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R4
       20 NEWCLOSURE                       R6 P3
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          VAL R5
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U4
       29 GETUPVAL                         R7 10
       30 GETTABLEKS                       R7 R7 K3 ["define"]
       32 CALL                             R7 0 1
       33 GETUPVAL                         R9 8
       34 GETTABLEKS                       R9 R9 K4 ["GenerateScene"]
       36 NAMECALL                         R7 R7 K5 ["setName"]
       38 CALL                             R7 2 1
       39 LOADK                            R9 K6 ["Generates a scene of models and parts from a text prompt and/or reference images, placed within an optional bounding box, and runs the generated script in the DataModel."]
       40 NAMECALL                         R7 R7 K7 ["setDescription"]
       42 CALL                             R7 2 1
       43 LOADK                            R9 K8 ["textPrompt"]
       44 DUPTABLE                         R10 K13 [{["type"] = "string", ["description"] = "Text description of the desired scene. Either this or images must be provided."}]
       45 NAMECALL                         R7 R7 K14 ["addOptionalArgument"]
       47 CALL                             R7 3 1
       48 LOADK                            R9 K15 ["images"]
       49 DUPTABLE                         R10 K19 [{["type"] = "array", ["items"], ["description"] = "Reference images that guide the scene. Each is an image content object ({ type = \"image\", data = <base64>, mimeType = <e.g. \"image/png\"> }) or the URI of an attached image. Either this or textPrompt must be provided."}]
       50 DUPTABLE                         R11 K21 [{["type"] = "object"}]
       51 SETTABLEKS                       R11 R10 K17 ["items"]
       53 NAMECALL                         R7 R7 K14 ["addOptionalArgument"]
       55 CALL                             R7 3 1
       56 NEWCLOSURE                       R8 P4
       57 CAPTURE                          VAL R7
       58 MOVE                             R9 R8
       59 LOADK                            R10 K22 ["boundingBoxSize"]
       60 LOADK                            R11 K23 ["Size (in studs) of the area to generate the scene in."]
       61 CALL                             R9 2 0
       62 MOVE                             R9 R8
       63 LOADK                            R10 K24 ["boundingBoxPosition"]
       64 LOADK                            R11 K25 ["World-space position of the area to generate the scene in."]
       65 CALL                             R9 2 0
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R9 R9 K26 ["FFlagAssistantGenerateSceneMeshGenToggle"]
       69 JUMPIFNOT                        R9 ; [+5]
       70 LOADK                            R11 K27 ["useMeshGen"]
       71 DUPTABLE                         R12 K30 [{["type"] = "boolean", ["description"] = "Whether to generate meshes for scene objects. Defaults to true."}]
       72 NAMECALL                         R9 R7 K14 ["addOptionalArgument"]
       74 CALL                             R9 3 0
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R9 R9 K31 ["FFlagAssistantGenerateSceneQuality"]
       78 JUMPIFNOT                        R9 ; [+19]
       79 LOADK                            R11 K32 ["quality"]
       80 DUPTABLE                         R12 K34 [{["type"] = "string", ["enum"], ["description"]}]
       81 GETUPVAL                         R13 11
       82 SETTABLEKS                       R13 R12 K33 ["enum"]
       84 LOADK                            R13 K35 ["Generation quality; higher is slower. Defaults to '%*'."]
       85 GETUPVAL                         R15 12
       86 GETTABLEKS                       R15 R15 K36 ["Constants"]
       88 GETTABLEKS                       R15 R15 K37 ["DEFAULT_SCENE_QUALITY"]
       90 NAMECALL                         R13 R13 K38 ["format"]
       92 CALL                             R13 2 1
       93 SETTABLEKS                       R13 R12 K11 ["description"]
       95 NAMECALL                         R9 R7 K14 ["addOptionalArgument"]
       97 CALL                             R9 3 0
       98 GETUPVAL                         R11 4
       99 LOADK                            R13 K39 ["GenerateLayout"]
      100 LOADK                            R14 K40 ["Title"]
      101 NAMECALL                         R11 R11 K41 ["getText"]
      103 CALL                             R11 3 -1
      104 NAMECALL                         R9 R7 K42 ["setTitle"]
      106 CALL                             R9 -1 1
      107 DUPTABLE                         R11 K49 [{["title"], ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      108 GETUPVAL                         R12 4
      109 LOADK                            R14 K39 ["GenerateLayout"]
      110 LOADK                            R15 K40 ["Title"]
      111 NAMECALL                         R12 R12 K41 ["getText"]
      113 CALL                             R12 3 1
      114 SETTABLEKS                       R12 R11 K43 ["title"]
      116 NAMECALL                         R9 R9 K50 ["setAnnotations"]
      118 CALL                             R9 2 1
      119 MOVE                             R11 R6
      120 NAMECALL                         R9 R9 K51 ["setHandler"]
      122 CALL                             R9 2 1
      123 NAMECALL                         R9 R9 K52 ["build"]
      125 CALL                             R9 1 1
      126 NEWCLOSURE                       R10 P5
      127 CAPTURE                          UPVAL U13
      128 CAPTURE                          VAL R3
      129 CAPTURE                          UPVAL U14
      130 CAPTURE                          UPVAL U15
      131 CAPTURE                          UPVAL U16
      132 CAPTURE                          UPVAL U12
      133 CAPTURE                          UPVAL U1
      134 CAPTURE                          UPVAL U17
      135 CAPTURE                          UPVAL U11
      136 CAPTURE                          UPVAL U18
      137 CAPTURE                          UPVAL U8
      138 CAPTURE                          UPVAL U19
      139 CAPTURE                          UPVAL U20
      140 CAPTURE                          UPVAL U7
      141 DUPTABLE                         R11 K60 [{["command"] = "generate_scene", ["researchPreview"] = True, ["getDescription"], ["runToolChain"], ["validateInput"]}]
      142 DUPCLOSURE                       R12 K61 [PROTO_24]
      143 CAPTURE                          UPVAL U4
      144 SETTABLEKS                       R12 R11 K57 ["getDescription"]
      146 SETTABLEKS                       R10 R11 K58 ["runToolChain"]
      148 GETUPVAL                         R13 1
      149 GETTABLEKS                       R13 R13 K62 ["FFlagAssistantGenerateSceneInputValidation"]
      151 JUMPIFNOT                        R13 ; [+3]
      152 DUPCLOSURE                       R12 K63 [PROTO_25]
      153 CAPTURE                          UPVAL U21
      154 JUMP                             ; [+1]
      155 LOADNIL                          R12
      156 SETTABLEKS                       R12 R11 K59 ["validateInput"]
      158 DUPTABLE                         R12 K67 [{"definition", "slashCommands", "getPreExecuteWarning"}]
      159 SETTABLEKS                       R9 R12 K64 ["definition"]
      161 NEWTABLE                         R13 0 1
      163 MOVE                             R14 R11
      164 SETLIST                          R13 R14 1 [1]
      166 SETTABLEKS                       R13 R12 K65 ["slashCommands"]
      168 DUPCLOSURE                       R13 K68 [PROTO_26]
      169 SETTABLEKS                       R13 R12 K66 ["getPreExecuteWarning"]
      171 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["ModelContextProtocol"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Util"]
       24 GETTABLEKS                       R5 R5 K13 ["AskInput"]
       26 GETTABLEKS                       R5 R5 K14 ["AskInputTypes"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K10 [require]
       31 GETTABLEKS                       R6 R0 K12 ["Util"]
       33 GETTABLEKS                       R6 R6 K15 ["Jobs"]
       35 GETTABLEKS                       R6 R6 K16 ["AsyncToolRunner"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K10 [require]
       40 GETTABLEKS                       R7 R0 K17 ["Flags"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K10 [require]
       45 GETTABLEKS                       R8 R0 K8 ["Parent"]
       47 GETTABLEKS                       R8 R8 K18 ["Gen3dCore"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K10 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Util"]
       54 GETTABLEKS                       R9 R9 K19 ["ImageContentStore"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K10 [require]
       59 GETTABLEKS                       R10 R0 K12 ["Util"]
       61 GETTABLEKS                       R10 R10 K20 ["LayoutGen"]
       63 GETTABLEKS                       R10 R10 K21 ["LayoutGenCancellation"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K10 [require]
       68 GETTABLEKS                       R11 R0 K22 ["Remotes"]
       70 GETTABLEKS                       R11 R11 K23 ["LayoutGenRemotes"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K10 [require]
       75 GETTABLEKS                       R12 R0 K12 ["Util"]
       77 GETTABLEKS                       R12 R12 K24 ["NetworkingIdentity"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K10 [require]
       82 GETTABLEKS                       R13 R0 K12 ["Util"]
       84 GETTABLEKS                       R13 R13 K20 ["LayoutGen"]
       86 GETTABLEKS                       R13 R13 K25 ["SceneBoundsForm"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K10 [require]
       91 GETTABLEKS                       R14 R0 K26 ["Tools"]
       93 GETTABLEKS                       R14 R14 K27 ["ToolTypes"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K10 [require]
       98 GETTABLEKS                       R15 R0 K12 ["Util"]
      100 GETTABLEKS                       R15 R15 K28 ["ToolUtils"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K10 [require]
      105 GETTABLEKS                       R16 R0 K29 ["Resources"]
      107 GETTABLEKS                       R16 R16 K30 ["Localization"]
      109 GETTABLEKS                       R16 R16 K31 ["Translator"]
      111 CALL                             R15 1 1
      112 GETIMPORT                        R16 K10 [require]
      114 GETTABLEKS                       R17 R0 K32 ["Types"]
      116 CALL                             R16 1 1
      117 GETTABLEKS                       R17 R3 K12 ["Util"]
      119 GETTABLEKS                       R17 R17 K33 ["ToolBuilder"]
      121 GETTABLEKS                       R18 R3 K12 ["Util"]
      123 GETTABLEKS                       R18 R18 K34 ["ToolResult"]
      125 GETTABLEKS                       R19 R13 K35 ["ToolNames"]
      127 GETTABLEKS                       R20 R4 K36 ["INPUT_TYPE"]
      129 GETTABLEKS                       R21 R12 K37 ["Row"]
      131 GETTABLEKS                       R22 R12 K38 ["ModelSegment"]
      133 NEWTABLE                         R23 0 0
      135 GETTABLEKS                       R24 R7 K39 ["Constants"]
      137 GETTABLEKS                       R24 R24 K40 ["SCENE_QUALITY_OPTIONS"]
      139 LOADNIL                          R25
      140 LOADNIL                          R26
      141 FORGPREP                         R24
      142 FASTCALL2                        TABLE_INSERT R23 R28 ; [+5]
      144 MOVE                             R30 R23
      145 MOVE                             R31 R28
      146 GETIMPORT                        R29 K43 [table.insert]
      148 CALL                             R29 2 0
      149 FORGLOOP                         R24 2 ; [-8]
      151 GETTABLEKS                       R24 R7 K39 ["Constants"]
      153 GETTABLEKS                       R24 R24 K44 ["DEFAULT_SCENE_SIZE"]
      155 DUPCLOSURE                       R25 K45 [PROTO_0]
      156 DUPCLOSURE                       R26 K46 [PROTO_1]
      157 CAPTURE                          VAL R15
      158 DUPCLOSURE                       R27 K47 [PROTO_2]
      159 DUPCLOSURE                       R28 K48 [PROTO_3]
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R26
      164 CAPTURE                          VAL R7
      165 DUPCLOSURE                       R29 K49 [PROTO_27]
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R28
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R23
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R24
      181 CAPTURE                          VAL R21
      182 CAPTURE                          VAL R20
      183 CAPTURE                          VAL R22
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R8
      187 CAPTURE                          VAL R26
      188 RETURN                           R29 1
