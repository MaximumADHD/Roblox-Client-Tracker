PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+6]
        3 NAMECALL                         R2 R1 K0 ["Destroy"]
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 0
        7 LOADNIL                          R3
        8 SETTABLE                         R3 R2 R0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R2 R1 K0 ["cancelled"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETIMPORT                        R2 K2 [error]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["ERROR"]
       11 LOADN                            R4 0
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+6]
        3 NAMECALL                         R2 R1 K0 ["Disconnect"]
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 0
        7 LOADNIL                          R3
        8 SETTABLE                         R3 R2 R0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["get"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K2 ["Scope"]
       15 MOVE                             R4 R0
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+3]
       18 NAMECALL                         R3 R2 K3 ["Destroy"]
       20 CALL                             R3 1 0
       21 GETUPVAL                         R4 3
       22 GETTABLE                         R3 R4 R0
       23 GETUPVAL                         R4 3
       24 LOADNIL                          R5
       25 SETTABLE                         R5 R4 R0
       26 JUMPIFNOT                        R3 ; [+5]
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K4 ["destroy"]
       30 MOVE                             R5 R3
       31 CALL                             R4 1 0
       32 GETUPVAL                         R5 5
       33 GETTABLE                         R4 R5 R0
       34 GETUPVAL                         R5 5
       35 LOADNIL                          R6
       36 SETTABLE                         R6 R5 R0
       37 JUMPIFNOT                        R4 ; [+3]
       38 NAMECALL                         R5 R4 K3 ["Destroy"]
       40 CALL                             R5 1 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R2 R1 K0 ["cancelled"]
        6 JUMPIFNOT                        R2 ; [+1]
        7 RETURN                           R0 0
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K0 ["cancelled"]
       11 GETUPVAL                         R3 1
       12 GETTABLE                         R2 R3 R0
       13 JUMPIFNOT                        R2 ; [+6]
       14 NAMECALL                         R3 R2 K1 ["Destroy"]
       16 CALL                             R3 1 0
       17 GETUPVAL                         R3 1
       18 LOADNIL                          R4
       19 SETTABLE                         R4 R3 R0
       20 GETTABLEKS                       R2 R1 K2 ["sceneBoxRequestId"]
       22 JUMPIFNOT                        R2 ; [+4]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R3 R1 K2 ["sceneBoxRequestId"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R1 R2 R0
        3 JUMPIFEQKNIL                     R1 ; [+24]
        5 GETTABLEKS                       R2 R1 K0 ["cancelled"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R1 K0 ["cancelled"]
       12 GETUPVAL                         R3 2
       13 GETTABLE                         R2 R3 R0
       14 JUMPIFNOT                        R2 ; [+6]
       15 NAMECALL                         R3 R2 K1 ["Destroy"]
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 2
       19 LOADNIL                          R4
       20 SETTABLE                         R4 R3 R0
       21 GETTABLEKS                       R2 R1 K2 ["sceneBoxRequestId"]
       23 JUMPIFNOT                        R2 ; [+4]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R3 R1 K2 ["sceneBoxRequestId"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R1 K0 ["sceneBoxRequestId"]
        7 JUMPIF                           R3 ; [+2]
        8 LOADNIL                          R2
        9 JUMP                             ; [+2]
       10 GETUPVAL                         R4 1
       11 GETTABLE                         R2 R4 R3
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R1 K1 ["stepText"]
       17 JUMPIFEQKNIL                     R3 ; [+5]
       19 JUMPIFEQKS                       R3 K2 [""] ; [+3]
       21 MOVE                             R4 R3
       22 JUMP                             ; [+2]
       23 GETTABLEKS                       R4 R1 K3 ["message"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K4 ["setStatus"]
       28 MOVE                             R6 R2
       29 LOADK                            R7 K5 ["running"]
       30 MOVE                             R8 R4
       31 DUPTABLE                         R9 K7 [{"details"}]
       32 GETTABLEKS                       R11 R1 K8 ["cancellable"]
       34 JUMPIFNOT                        R11 ; [+17]
       35 DUPTABLE                         R10 K11 [{"cancelText", "onCancel"}]
       36 GETUPVAL                         R11 3
       37 LOADK                            R13 K12 ["Common"]
       38 LOADK                            R14 K13 ["Cancel"]
       39 NAMECALL                         R11 R11 K14 ["getText"]
       41 CALL                             R11 3 1
       42 SETTABLEKS                       R11 R10 K9 ["cancelText"]
       44 NEWCLOSURE                       R11 P0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 SETTABLEKS                       R11 R10 K10 ["onCancel"]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R10
       53 SETTABLEKS                       R10 R9 K6 ["details"]
       55 CALL                             R5 4 0
       56 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+5]
        4 GETTABLEKS                       R3 R2 K0 ["stepText"]
        6 JUMPIFNOTEQ                      R3 R1 ; [+2]
        8 RETURN                           R0 0
        9 SETTABLEKS                       R1 R2 K0 ["stepText"]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETTABLEKS                       R3 R2 K0 ["cancelled"]
        6 JUMPIFNOT                        R3 ; [+7]
        7 GETIMPORT                        R3 K2 [error]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["ERROR"]
       12 LOADN                            R5 0
       13 CALL                             R3 2 0
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K4 ["sceneGeneration"]
       17 GETTABLEKS                       R1 R1 K5 ["getStatusAsync"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 GETUPVAL                         R2 0
       22 GETUPVAL                         R4 1
       23 GETTABLE                         R3 R4 R2
       24 JUMPIFNOT                        R3 ; [+10]
       25 GETTABLEKS                       R4 R3 K0 ["cancelled"]
       27 JUMPIFNOT                        R4 ; [+7]
       28 GETIMPORT                        R4 K2 [error]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K3 ["ERROR"]
       33 LOADN                            R6 0
       34 CALL                             R4 2 0
       35 GETUPVAL                         R3 4
       36 GETUPVAL                         R4 0
       37 GETTABLE                         R2 R3 R4
       38 JUMPIFNOT                        R2 ; [+10]
       39 GETUPVAL                         R5 5
       40 GETTABLEKS                       R5 R5 K6 ["Field"]
       42 GETTABLEKS                       R5 R5 K7 ["Stage"]
       44 GETTABLEKS                       R6 R1 K8 ["currentStage"]
       46 NAMECALL                         R3 R2 K9 ["Set"]
       48 CALL                             R3 3 0
       49 GETUPVAL                         R3 6
       50 GETTABLEKS                       R3 R3 K10 ["FFlagDebugLogAssistantUI"]
       52 JUMPIFNOT                        R3 ; [+38]
       53 GETIMPORT                        R3 K12 [warn]
       55 LOADK                            R4 K13 ["[GenerateScene] poll %*: ok=%* status=%* stage=%* scriptUrl=%* error=%*"]
       56 MOVE                             R6 R0
       57 GETTABLEKS                       R8 R1 K14 ["ok"]
       59 FASTCALL1                        TOSTRING R8 ; [+2]
       60 GETIMPORT                        R7 K16 [tostring]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R9 R1 K17 ["status"]
       65 FASTCALL1                        TOSTRING R9 ; [+2]
       66 GETIMPORT                        R8 K16 [tostring]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R10 R1 K8 ["currentStage"]
       71 FASTCALL1                        TOSTRING R10 ; [+2]
       72 GETIMPORT                        R9 K16 [tostring]
       74 CALL                             R9 1 1
       75 GETTABLEKS                       R11 R1 K18 ["scriptUrl"]
       77 FASTCALL1                        TOSTRING R11 ; [+2]
       78 GETIMPORT                        R10 K16 [tostring]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R12 R1 K19 ["errorMessage"]
       83 FASTCALL1                        TOSTRING R12 ; [+2]
       84 GETIMPORT                        R11 K16 [tostring]
       86 CALL                             R11 1 1
       87 NAMECALL                         R4 R4 K20 ["format"]
       89 CALL                             R4 7 1
       90 CALL                             R3 1 0
       91 GETUPVAL                         R3 0
       92 GETTABLEKS                       R4 R1 K8 ["currentStage"]
       94 GETUPVAL                         R6 1
       95 GETTABLE                         R5 R6 R3
       96 JUMPIFEQKNIL                     R5 ; [+11]
       98 GETTABLEKS                       R6 R5 K21 ["stepText"]
      100 JUMPIFNOTEQ                      R6 R4 ; [+2]
      102 JUMP                             ; [+5]
      103 SETTABLEKS                       R4 R5 K21 ["stepText"]
      105 GETUPVAL                         R6 7
      106 MOVE                             R7 R3
      107 CALL                             R6 1 0
      108 DUPTABLE                         R3 K23 [{"ok", "statusCode", "status", "currentStage", "scriptUrl", "errorMessage"}]
      109 GETTABLEKS                       R4 R1 K14 ["ok"]
      111 SETTABLEKS                       R4 R3 K14 ["ok"]
      113 GETTABLEKS                       R4 R1 K22 ["statusCode"]
      115 SETTABLEKS                       R4 R3 K22 ["statusCode"]
      117 GETUPVAL                         R4 8
      118 GETTABLEKS                       R4 R4 K24 ["LayoutGenOps"]
      120 GETTABLEKS                       R4 R4 K25 ["normalizeSceneStatus"]
      122 GETTABLEKS                       R5 R1 K17 ["status"]
      124 GETTABLEKS                       R6 R1 K18 ["scriptUrl"]
      126 CALL                             R4 2 1
      127 SETTABLEKS                       R4 R3 K17 ["status"]
      129 GETTABLEKS                       R4 R1 K8 ["currentStage"]
      131 SETTABLEKS                       R4 R3 K8 ["currentStage"]
      133 GETTABLEKS                       R4 R1 K18 ["scriptUrl"]
      135 SETTABLEKS                       R4 R3 K18 ["scriptUrl"]
      137 GETTABLEKS                       R4 R1 K19 ["errorMessage"]
      139 SETTABLEKS                       R4 R3 K19 ["errorMessage"]
      141 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["http"]
        3 GETTABLEKS                       R1 R1 K1 ["requestAsync"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 DUPTABLE                         R2 K6 [{"Success", "StatusCode", "StatusMessage", "Body"}]
        8 GETTABLEKS                       R3 R1 K2 ["Success"]
       10 SETTABLEKS                       R3 R2 K2 ["Success"]
       12 GETTABLEKS                       R3 R1 K3 ["StatusCode"]
       14 SETTABLEKS                       R3 R2 K3 ["StatusCode"]
       16 GETTABLEKS                       R3 R1 K4 ["StatusMessage"]
       18 SETTABLEKS                       R3 R2 K4 ["StatusMessage"]
       20 GETTABLEKS                       R3 R1 K5 ["Body"]
       22 SETTABLEKS                       R3 R2 K5 ["Body"]
       24 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K0 ["getText"]
        5 CALL                             R3 3 -1
        6 RETURN                           R3 -1

PROTO_11:
        0 DUPTABLE                         R2 K6 [{"sceneGeneration", "http", "executeLuau", "applyScriptSourceDirectly", "translator", "capabilities"}]
        1 DUPTABLE                         R3 K9 [{"startAsync", "getStatusAsync"}]
        2 GETTABLEKS                       R4 R0 K0 ["sceneGeneration"]
        4 GETTABLEKS                       R4 R4 K7 ["startAsync"]
        6 SETTABLEKS                       R4 R3 K7 ["startAsync"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 SETTABLEKS                       R4 R3 K8 ["getStatusAsync"]
       20 SETTABLEKS                       R3 R2 K0 ["sceneGeneration"]
       22 DUPTABLE                         R3 K11 [{"requestAsync"}]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R4 R3 K10 ["requestAsync"]
       27 SETTABLEKS                       R3 R2 K1 ["http"]
       29 GETTABLEKS                       R3 R0 K12 ["tools"]
       31 GETTABLEKS                       R3 R3 K2 ["executeLuau"]
       33 SETTABLEKS                       R3 R2 K2 ["executeLuau"]
       35 GETTABLEKS                       R3 R0 K12 ["tools"]
       37 GETTABLEKS                       R3 R3 K13 ["multiEdit"]
       39 GETTABLEKS                       R3 R3 K3 ["applyScriptSourceDirectly"]
       41 SETTABLEKS                       R3 R2 K3 ["applyScriptSourceDirectly"]
       43 DUPTABLE                         R3 K15 [{"getText"}]
       44 DUPCLOSURE                       R4 K16 [PROTO_10]
       45 CAPTURE                          UPVAL U7
       46 SETTABLEKS                       R4 R3 K14 ["getText"]
       48 SETTABLEKS                       R3 R2 K4 ["translator"]
       50 DUPTABLE                         R3 K18 [{"debugLog"}]
       51 GETUPVAL                         R4 4
       52 GETTABLEKS                       R4 R4 K19 ["FFlagDebugLogAssistantUI"]
       54 SETTABLEKS                       R4 R3 K17 ["debugLog"]
       56 SETTABLEKS                       R3 R2 K5 ["capabilities"]
       58 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["clearGenerationSession"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getOrCreate"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Scope"]
        6 GETTABLEKS                       R3 R0 K2 ["requestId"]
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R3 R0 K2 ["requestId"]
       12 SETTABLE                         R1 R2 R3
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K3 ["Field"]
       16 GETTABLEKS                       R4 R4 K4 ["Stage"]
       18 GETTABLEKS                       R5 R0 K5 ["message"]
       20 NAMECALL                         R2 R1 K6 ["Set"]
       22 CALL                             R2 3 0
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K7 ["FFlagAssistantGenerateLayoutCalloutCancel"]
       26 JUMPIF                           R2 ; [+17]
       27 GETTABLEKS                       R3 R0 K8 ["sceneBoxRequestId"]
       29 JUMPIF                           R3 ; [+2]
       30 LOADNIL                          R2
       31 JUMP                             ; [+2]
       32 GETUPVAL                         R4 4
       33 GETTABLE                         R2 R4 R3
       34 JUMPIFNOT                        R2 ; [+8]
       35 GETUPVAL                         R3 5
       36 GETTABLEKS                       R3 R3 K9 ["setStatus"]
       38 MOVE                             R4 R2
       39 LOADK                            R5 K10 ["running"]
       40 GETTABLEKS                       R6 R0 K5 ["message"]
       42 CALL                             R3 3 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R3 6
       45 GETTABLEKS                       R4 R0 K2 ["requestId"]
       47 GETTABLE                         R2 R3 R4
       48 JUMPIFNOTEQKNIL                  R2 ; [+20]
       50 DUPTABLE                         R3 K16 [{["sceneBoxRequestId"], ["message"], ["stepText"] = , ["cancellable"], ["cancelled"] = False}]
       51 GETTABLEKS                       R4 R0 K8 ["sceneBoxRequestId"]
       53 SETTABLEKS                       R4 R3 K8 ["sceneBoxRequestId"]
       55 GETTABLEKS                       R4 R0 K5 ["message"]
       57 SETTABLEKS                       R4 R3 K5 ["message"]
       59 GETTABLEKS                       R4 R0 K13 ["cancellable"]
       61 SETTABLEKS                       R4 R3 K13 ["cancellable"]
       63 MOVE                             R2 R3
       64 GETUPVAL                         R3 6
       65 GETTABLEKS                       R4 R0 K2 ["requestId"]
       67 SETTABLE                         R2 R3 R4
       68 JUMP                             ; [+46]
       69 GETTABLEKS                       R3 R2 K14 ["cancelled"]
       71 JUMPIFNOT                        R3 ; [+28]
       72 GETTABLEKS                       R3 R0 K2 ["requestId"]
       74 GETUPVAL                         R5 2
       75 GETTABLE                         R4 R5 R3
       76 JUMPIFNOT                        R4 ; [+6]
       77 NAMECALL                         R5 R4 K17 ["Destroy"]
       79 CALL                             R5 1 0
       80 GETUPVAL                         R5 2
       81 LOADNIL                          R6
       82 SETTABLE                         R6 R5 R3
       83 GETTABLEKS                       R3 R0 K2 ["requestId"]
       85 GETUPVAL                         R4 6
       86 LOADNIL                          R5
       87 SETTABLE                         R5 R4 R3
       88 GETUPVAL                         R4 7
       89 GETTABLEKS                       R4 R4 K18 ["clearGenerationSession"]
       91 MOVE                             R5 R3
       92 CALL                             R4 1 0
       93 GETIMPORT                        R3 K20 [error]
       95 GETUPVAL                         R4 8
       96 GETTABLEKS                       R4 R4 K21 ["ERROR"]
       98 LOADN                            R5 0
       99 CALL                             R3 2 0
      100 GETTABLEKS                       R3 R0 K8 ["sceneBoxRequestId"]
      102 SETTABLEKS                       R3 R2 K8 ["sceneBoxRequestId"]
      104 GETTABLEKS                       R3 R0 K5 ["message"]
      106 SETTABLEKS                       R3 R2 K5 ["message"]
      108 LOADNIL                          R3
      109 SETTABLEKS                       R3 R2 K11 ["stepText"]
      111 GETTABLEKS                       R3 R0 K13 ["cancellable"]
      113 SETTABLEKS                       R3 R2 K13 ["cancellable"]
      115 GETUPVAL                         R3 9
      116 GETTABLEKS                       R4 R0 K2 ["requestId"]
      118 CALL                             R3 1 0
      119 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETIMPORT                        R2 K1 [pcall]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 2
        7 JUMPIF                           R2 ; [+55]
        8 GETTABLEKS                       R4 R0 K2 ["requestId"]
       10 GETUPVAL                         R6 1
       11 GETTABLE                         R5 R6 R4
       12 JUMPIFNOT                        R5 ; [+6]
       13 NAMECALL                         R6 R5 K3 ["Destroy"]
       15 CALL                             R6 1 0
       16 GETUPVAL                         R6 1
       17 LOADNIL                          R7
       18 SETTABLE                         R7 R6 R4
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R5 R0 K2 ["requestId"]
       22 LOADNIL                          R6
       23 SETTABLE                         R6 R4 R5
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K4 ["ERROR"]
       27 JUMPIFNOTEQ                      R3 R4 ; [+11]
       29 GETTABLEKS                       R4 R0 K2 ["requestId"]
       31 GETUPVAL                         R5 2
       32 LOADNIL                          R6
       33 SETTABLE                         R6 R5 R4
       34 GETUPVAL                         R5 4
       35 GETTABLEKS                       R5 R5 K5 ["clearGenerationSession"]
       37 MOVE                             R6 R4
       38 CALL                             R5 1 0
       39 GETTABLEKS                       R5 R0 K6 ["sceneBoxRequestId"]
       41 JUMPIF                           R5 ; [+2]
       42 LOADNIL                          R4
       43 JUMP                             ; [+2]
       44 GETUPVAL                         R6 5
       45 GETTABLE                         R4 R6 R5
       46 JUMPIFNOT                        R4 ; [+11]
       47 GETUPVAL                         R5 6
       48 GETTABLEKS                       R5 R5 K7 ["setStatus"]
       50 MOVE                             R6 R4
       51 LOADK                            R7 K8 ["failed"]
       52 FASTCALL1                        TOSTRING R3 ; [+3]
       53 MOVE                             R9 R3
       54 GETIMPORT                        R8 K10 [tostring]
       56 CALL                             R8 1 1
       57 CALL                             R5 3 0
       58 GETIMPORT                        R5 K12 [error]
       60 MOVE                             R6 R3
       61 LOADN                            R7 0
       62 CALL                             R5 2 0
       63 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LayoutGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["generateSceneAsync"]
        5 DUPTABLE                         R1 K9 [{"requestId", "images", "textPrompt", "boundingBoxCFrame", "boundingBoxSize", "useMeshGen", "quality"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["images"]
       14 SETTABLEKS                       R2 R1 K3 ["images"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["textPrompt"]
       19 SETTABLEKS                       R2 R1 K4 ["textPrompt"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K5 ["boundingBoxCFrame"]
       24 SETTABLEKS                       R2 R1 K5 ["boundingBoxCFrame"]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K6 ["boundingBoxSize"]
       29 SETTABLEKS                       R2 R1 K6 ["boundingBoxSize"]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K7 ["useMeshGen"]
       34 SETTABLEKS                       R2 R1 K7 ["useMeshGen"]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K8 ["quality"]
       39 SETTABLEKS                       R2 R1 K8 ["quality"]
       41 GETUPVAL                         R2 2
       42 GETUPVAL                         R3 3
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K2 ["requestId"]
       46 CALL                             R2 2 1
       47 GETUPVAL                         R3 4
       48 CALL                             R0 3 -1
       49 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K5 [{[1], ["sceneBoxRequestId"], ["message"], ["cancellable"] = True}]
        2 GETTABLEKS                       R4 R0 K0 ["requestId"]
        4 SETTABLEKS                       R4 R3 K0 ["requestId"]
        6 GETTABLEKS                       R4 R0 K1 ["sceneBoxRequestId"]
        8 SETTABLEKS                       R4 R3 K1 ["sceneBoxRequestId"]
       10 GETUPVAL                         R4 1
       11 LOADK                            R6 K6 ["GenerateLayout"]
       12 LOADK                            R7 K7 ["ViewportGenerating"]
       13 NAMECALL                         R4 R4 K8 ["getText"]
       15 CALL                             R4 3 1
       16 SETTABLEKS                       R4 R3 K2 ["message"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U4
       24 CALL                             R2 2 1
       25 DUPTABLE                         R3 K10 [{"jobId"}]
       26 GETTABLEKS                       R4 R2 K9 ["jobId"]
       28 SETTABLEKS                       R4 R3 K9 ["jobId"]
       30 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LayoutGenOps"]
        3 GETTABLEKS                       R0 R0 K1 ["executeAndStoreScriptAsync"]
        5 DUPTABLE                         R1 K3 [{"requestId"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["requestId"]
        9 SETTABLEKS                       R2 R1 K2 ["requestId"]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K2 ["requestId"]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 4
       18 CALL                             R0 3 -1
       19 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K5 [{[1], ["sceneBoxRequestId"], ["message"], ["cancellable"] = False}]
        2 GETTABLEKS                       R4 R0 K0 ["requestId"]
        4 SETTABLEKS                       R4 R3 K0 ["requestId"]
        6 GETTABLEKS                       R4 R0 K1 ["sceneBoxRequestId"]
        8 SETTABLEKS                       R4 R3 K1 ["sceneBoxRequestId"]
       10 GETUPVAL                         R4 1
       11 LOADK                            R6 K6 ["GenerateLayout"]
       12 LOADK                            R7 K7 ["ViewportRunningScript"]
       13 NAMECALL                         R4 R4 K8 ["getText"]
       15 CALL                             R4 3 1
       16 SETTABLEKS                       R4 R3 K2 ["message"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U4
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 5
       26 GETTABLEKS                       R4 R0 K0 ["requestId"]
       28 LOADNIL                          R5
       29 SETTABLE                         R5 R3 R4
       30 GETTABLEKS                       R3 R0 K0 ["requestId"]
       32 GETUPVAL                         R5 6
       33 GETTABLE                         R4 R5 R3
       34 JUMPIFNOT                        R4 ; [+6]
       35 NAMECALL                         R5 R4 K9 ["Destroy"]
       37 CALL                             R5 1 0
       38 GETUPVAL                         R5 6
       39 LOADNIL                          R6
       40 SETTABLE                         R6 R5 R3
       41 GETTABLEKS                       R4 R0 K1 ["sceneBoxRequestId"]
       43 JUMPIF                           R4 ; [+2]
       44 LOADNIL                          R3
       45 JUMP                             ; [+2]
       46 GETUPVAL                         R5 7
       47 GETTABLE                         R3 R5 R4
       48 JUMPIFNOT                        R3 ; [+18]
       49 GETTABLEKS                       R4 R2 K10 ["ok"]
       51 JUMPIFNOT                        R4 ; [+7]
       52 GETUPVAL                         R4 8
       53 GETTABLEKS                       R4 R4 K11 ["setStatus"]
       55 MOVE                             R5 R3
       56 LOADK                            R6 K12 ["succeeded"]
       57 CALL                             R4 2 0
       58 RETURN                           R2 1
       59 GETUPVAL                         R4 8
       60 GETTABLEKS                       R4 R4 K11 ["setStatus"]
       62 MOVE                             R5 R3
       63 LOADK                            R6 K13 ["failed"]
       64 GETTABLEKS                       R7 R2 K14 ["errorMessage"]
       66 CALL                             R4 3 0
       67 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["LayoutGenOps"]
        3 GETTABLEKS                       R1 R1 K1 ["cancelGenerationAsync"]
        5 DUPTABLE                         R2 K3 [{"requestId"}]
        6 GETTABLEKS                       R3 R0 K2 ["requestId"]
        8 SETTABLEKS                       R3 R2 K2 ["requestId"]
       10 GETUPVAL                         R3 1
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K2 ["requestId"]
       14 GETUPVAL                         R3 2
       15 GETTABLE                         R2 R3 R1
       16 JUMPIFNOT                        R2 ; [+6]
       17 NAMECALL                         R3 R2 K4 ["Destroy"]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 2
       21 LOADNIL                          R4
       22 SETTABLE                         R4 R3 R1
       23 RETURN                           R0 0

PROTO_20:
        0 JUMPIFNOTEQKNIL                  R0 ; [+15]
        2 GETIMPORT                        R1 K2 [CFrame.new]
        4 LOADN                            R3 0
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K4 ["Y"]
        8 DIVK                             R4 R5 K3 [2]
        9 LOADN                            R5 0
       10 FASTCALL                         VECTOR ; [+2]
       11 GETIMPORT                        R2 K6 [Vector3.new]
       13 CALL                             R2 3 1
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K7 ["PlacementOps"]
       19 GETTABLEKS                       R1 R1 K8 ["computeDropCFrame"]
       21 MOVE                             R2 R0
       22 GETUPVAL                         R3 0
       23 LOADK                            R4 K9 ["TerrainOnly"]
       24 CALL                             R1 3 -1
       25 RETURN                           R1 -1

PROTO_21:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 NAMECALL                         R3 R0 K0 ["ZoomToExtents"]
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["requestId"]
        4 GETTABLE                         R0 R1 R2
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQ                      R0 R1 ; [+6]
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["requestId"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SceneBoundsOps"]
        3 GETTABLEKS                       R0 R0 K1 ["getPosition"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K2 ["SizeX"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["Size"]
       14 GETTABLEKS                       R4 R4 K4 ["X"]
       16 NAMECALL                         R1 R1 K5 ["Set"]
       18 CALL                             R1 3 0
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K6 ["SizeY"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K3 ["Size"]
       26 GETTABLEKS                       R4 R4 K7 ["Y"]
       28 NAMECALL                         R1 R1 K5 ["Set"]
       30 CALL                             R1 3 0
       31 GETUPVAL                         R1 2
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R3 R3 K8 ["SizeZ"]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K3 ["Size"]
       38 GETTABLEKS                       R4 R4 K9 ["Z"]
       40 NAMECALL                         R1 R1 K5 ["Set"]
       42 CALL                             R1 3 0
       43 GETUPVAL                         R1 2
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R3 R3 K10 ["PositionX"]
       47 GETTABLEKS                       R4 R0 K4 ["X"]
       49 NAMECALL                         R1 R1 K5 ["Set"]
       51 CALL                             R1 3 0
       52 GETUPVAL                         R1 2
       53 GETUPVAL                         R3 3
       54 GETTABLEKS                       R3 R3 K11 ["PositionY"]
       56 GETTABLEKS                       R4 R0 K7 ["Y"]
       58 NAMECALL                         R1 R1 K5 ["Set"]
       60 CALL                             R1 3 0
       61 GETUPVAL                         R1 2
       62 GETUPVAL                         R3 3
       63 GETTABLEKS                       R3 R3 K12 ["PositionZ"]
       65 GETTABLEKS                       R4 R0 K9 ["Z"]
       67 NAMECALL                         R1 R1 K5 ["Set"]
       69 CALL                             R1 3 0
       70 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["requestId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOT                        R2 ; [+3]
        5 NAMECALL                         R3 R2 K1 ["Disconnect"]
        7 CALL                             R3 1 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R5 R0 K0 ["requestId"]
       11 GETTABLE                         R3 R4 R5
       12 JUMPIFNOT                        R3 ; [+5]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K2 ["destroy"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 0
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R6 R0 K0 ["requestId"]
       21 GETTABLE                         R4 R5 R6
       22 JUMPIFNOT                        R4 ; [+3]
       23 NAMECALL                         R5 R4 K3 ["Destroy"]
       25 CALL                             R5 1 0
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K4 ["CurrentCamera"]
       29 JUMPIFNOTEQKNIL                  R6 ; [+16]
       31 GETIMPORT                        R7 K7 [CFrame.new]
       33 LOADN                            R9 0
       34 GETUPVAL                         R11 5
       35 GETTABLEKS                       R11 R11 K9 ["Y"]
       37 DIVK                             R10 R11 K8 [2]
       38 LOADN                            R11 0
       39 FASTCALL                         VECTOR ; [+2]
       40 GETIMPORT                        R8 K11 [Vector3.new]
       42 CALL                             R8 3 1
       43 CALL                             R7 1 1
       44 MOVE                             R5 R7
       45 JUMP                             ; [+10]
       46 GETUPVAL                         R7 6
       47 GETTABLEKS                       R7 R7 K12 ["PlacementOps"]
       49 GETTABLEKS                       R7 R7 K13 ["computeDropCFrame"]
       51 MOVE                             R8 R6
       52 GETUPVAL                         R9 5
       53 LOADK                            R10 K14 ["TerrainOnly"]
       54 CALL                             R7 3 1
       55 MOVE                             R5 R7
       56 GETIMPORT                        R6 K16 [Instance.new]
       58 LOADK                            R7 K17 ["Part"]
       59 CALL                             R6 1 1
       60 LOADK                            R7 K18 ["LayoutGenSceneBox"]
       61 SETTABLEKS                       R7 R6 K19 ["Name"]
       63 LOADB                            R7 1
       64 SETTABLEKS                       R7 R6 K20 ["Anchored"]
       66 LOADB                            R7 0
       67 SETTABLEKS                       R7 R6 K21 ["CanCollide"]
       69 LOADB                            R7 0
       70 SETTABLEKS                       R7 R6 K22 ["CanTouch"]
       72 LOADB                            R7 0
       73 SETTABLEKS                       R7 R6 K23 ["CanQuery"]
       75 LOADB                            R7 0
       76 SETTABLEKS                       R7 R6 K24 ["Locked"]
       78 LOADN                            R7 1
       79 SETTABLEKS                       R7 R6 K25 ["Transparency"]
       81 LOADB                            R7 0
       82 SETTABLEKS                       R7 R6 K26 ["Archivable"]
       84 GETUPVAL                         R7 5
       85 SETTABLEKS                       R7 R6 K27 ["Size"]
       87 SETTABLEKS                       R5 R6 K5 ["CFrame"]
       89 GETUPVAL                         R7 6
       90 GETTABLEKS                       R7 R7 K28 ["SceneBoundsOps"]
       92 GETTABLEKS                       R7 R7 K29 ["updatePivot"]
       94 MOVE                             R8 R6
       95 CALL                             R7 1 0
       96 LOADK                            R9 K30 ["AssistantLayoutGenSceneBox"]
       97 NAMECALL                         R7 R6 K31 ["AddTag"]
       99 CALL                             R7 2 0
      100 GETUPVAL                         R7 4
      101 SETTABLEKS                       R7 R6 K32 ["Parent"]
      103 GETUPVAL                         R7 2
      104 GETTABLEKS                       R7 R7 K33 ["attachToInstance"]
      106 MOVE                             R8 R6
      107 DUPTABLE                         R9 K36 [{["autoDestroyOnSuccess"] = True}]
      108 CALL                             R7 2 1
      109 GETUPVAL                         R8 3
      110 GETTABLEKS                       R9 R0 K0 ["requestId"]
      112 SETTABLE                         R6 R8 R9
      113 GETUPVAL                         R8 1
      114 GETTABLEKS                       R9 R0 K0 ["requestId"]
      116 SETTABLE                         R7 R8 R9
      117 GETTABLEKS                       R8 R7 K37 ["container"]
      119 GETTABLEKS                       R8 R8 K38 ["Destroying"]
      121 NEWCLOSURE                       R10 P0
      122 CAPTURE                          UPVAL U1
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R7
      125 CAPTURE                          UPVAL U7
      126 NAMECALL                         R8 R8 K39 ["Connect"]
      128 CALL                             R8 2 0
      129 GETUPVAL                         R8 4
      130 GETTABLEKS                       R8 R8 K4 ["CurrentCamera"]
      132 GETUPVAL                         R9 5
      133 JUMPIFNOTEQKNIL                  R8 ; [+2]
      135 JUMP                             ; [+5]
      136 MOVE                             R12 R5
      137 MOVE                             R13 R9
      138 NAMECALL                         R10 R8 K40 ["ZoomToExtents"]
      140 CALL                             R10 3 0
      141 GETTABLEKS                       R8 R1 K41 ["selection"]
      143 GETTABLEKS                       R8 R8 K42 ["set"]
      145 NEWTABLE                         R9 0 1
      147 MOVE                             R10 R6
      148 SETLIST                          R9 R10 1 [1]
      150 CALL                             R8 1 0
      151 GETTABLEKS                       R8 R1 K43 ["tools"]
      153 GETTABLEKS                       R8 R8 K44 ["layoutGen"]
      155 GETTABLEKS                       R8 R8 K45 ["activateScaleTool"]
      157 CALL                             R8 0 0
      158 GETUPVAL                         R8 8
      159 GETTABLEKS                       R8 R8 K46 ["getOrCreate"]
      161 GETUPVAL                         R9 9
      162 GETTABLEKS                       R9 R9 K47 ["Scope"]
      164 GETTABLEKS                       R10 R0 K0 ["requestId"]
      166 CALL                             R8 2 1
      167 GETUPVAL                         R9 9
      168 GETTABLEKS                       R9 R9 K48 ["Field"]
      170 NEWCLOSURE                       R10 P1
      171 CAPTURE                          UPVAL U6
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R9
      175 MOVE                             R11 R10
      176 CALL                             R11 0 0
      177 GETUPVAL                         R11 0
      178 GETTABLEKS                       R12 R0 K0 ["requestId"]
      180 GETUPVAL                         R13 10
      181 GETTABLEKS                       R13 R13 K49 ["Heartbeat"]
      183 MOVE                             R15 R10
      184 NAMECALL                         R13 R13 K39 ["Connect"]
      186 CALL                             R13 2 1
      187 SETTABLE                         R13 R11 R12
      188 DUPTABLE                         R11 K51 [{"uniqueId"}]
      189 GETTABLEKS                       R12 R1 K52 ["instances"]
      191 GETTABLEKS                       R12 R12 K53 ["getUniqueId"]
      193 MOVE                             R13 R6
      194 CALL                             R12 1 1
      195 SETTABLEKS                       R12 R11 K50 ["uniqueId"]
      197 RETURN                           R11 1

PROTO_25:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+13]
        8 LOADB                            R1 0
        9 JUMPIFNOTEQ                      R0 R0 ; [+10]
       11 FASTCALL1                        MATH_ABS R0 ; [+3]
       12 MOVE                             R3 R0
       13 GETIMPORT                        R2 K5 [math.abs]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKN                    R2 K6 [Infinity] ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["requestId"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["Field"]
       10 GETTABLEKS                       R3 R0 K2 ["value"]
       12 LOADB                            R4 0
       13 FASTCALL1                        TYPEOF R3 ; [+3]
       14 MOVE                             R6 R3
       15 GETIMPORT                        R5 K4 [typeof]
       17 CALL                             R5 1 1
       18 JUMPIFNOTEQKS                    R5 K5 ["number"] ; [+13]
       20 LOADB                            R4 0
       21 JUMPIFNOTEQ                      R3 R3 ; [+10]
       23 FASTCALL1                        MATH_ABS R3 ; [+3]
       24 MOVE                             R6 R3
       25 GETIMPORT                        R5 K8 [math.abs]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKN                    R5 K9 [Infinity] ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 JUMPIF                           R4 ; [+1]
       33 RETURN                           R0 0
       34 LOADB                            R4 1
       35 GETTABLEKS                       R5 R0 K10 ["field"]
       37 GETTABLEKS                       R6 R2 K11 ["SizeX"]
       39 JUMPIFEQ                         R5 R6 ; [+16]
       41 LOADB                            R4 1
       42 GETTABLEKS                       R5 R0 K10 ["field"]
       44 GETTABLEKS                       R6 R2 K12 ["SizeY"]
       46 JUMPIFEQ                         R5 R6 ; [+9]
       48 GETTABLEKS                       R5 R0 K10 ["field"]
       50 GETTABLEKS                       R6 R2 K13 ["SizeZ"]
       52 JUMPIFEQ                         R5 R6 ; [+2]
       54 LOADB                            R4 0 +1
       55 LOADB                            R4 1
       56 JUMPIFNOT                        R4 ; [+4]
       57 LOADN                            R5 0
       58 JUMPIFNOTLE                      R3 R5 ; [+2]
       60 RETURN                           R0 0
       61 GETUPVAL                         R5 2
       62 GETTABLEKS                       R5 R5 K14 ["SceneBoundsOps"]
       64 GETTABLEKS                       R5 R5 K15 ["getPosition"]
       66 MOVE                             R6 R1
       67 CALL                             R5 1 1
       68 GETTABLEKS                       R6 R0 K10 ["field"]
       70 GETTABLEKS                       R7 R2 K11 ["SizeX"]
       72 JUMPIFNOTEQ                      R6 R7 ; [+23]
       74 GETUPVAL                         R6 2
       75 GETTABLEKS                       R6 R6 K14 ["SceneBoundsOps"]
       77 GETTABLEKS                       R6 R6 K16 ["setSize"]
       79 MOVE                             R7 R1
       80 GETTABLEKS                       R10 R1 K17 ["Size"]
       82 GETTABLEKS                       R10 R10 K18 ["Y"]
       84 GETTABLEKS                       R11 R1 K17 ["Size"]
       86 GETTABLEKS                       R11 R11 K19 ["Z"]
       88 FASTCALL3                        VECTOR R3 R10 R11
       90 MOVE                             R9 R3
       91 GETIMPORT                        R8 K22 [Vector3.new]
       93 CALL                             R8 3 1
       94 CALL                             R6 2 0
       95 RETURN                           R0 0
       96 GETTABLEKS                       R6 R0 K10 ["field"]
       98 GETTABLEKS                       R7 R2 K12 ["SizeY"]
      100 JUMPIFNOTEQ                      R6 R7 ; [+23]
      102 GETUPVAL                         R6 2
      103 GETTABLEKS                       R6 R6 K14 ["SceneBoundsOps"]
      105 GETTABLEKS                       R6 R6 K16 ["setSize"]
      107 MOVE                             R7 R1
      108 GETTABLEKS                       R9 R1 K17 ["Size"]
      110 GETTABLEKS                       R9 R9 K23 ["X"]
      112 GETTABLEKS                       R11 R1 K17 ["Size"]
      114 GETTABLEKS                       R11 R11 K19 ["Z"]
      116 FASTCALL3                        VECTOR R9 R3 R11
      118 MOVE                             R10 R3
      119 GETIMPORT                        R8 K22 [Vector3.new]
      121 CALL                             R8 3 1
      122 CALL                             R6 2 0
      123 RETURN                           R0 0
      124 GETTABLEKS                       R6 R0 K10 ["field"]
      126 GETTABLEKS                       R7 R2 K13 ["SizeZ"]
      128 JUMPIFNOTEQ                      R6 R7 ; [+23]
      130 GETUPVAL                         R6 2
      131 GETTABLEKS                       R6 R6 K14 ["SceneBoundsOps"]
      133 GETTABLEKS                       R6 R6 K16 ["setSize"]
      135 MOVE                             R7 R1
      136 GETTABLEKS                       R9 R1 K17 ["Size"]
      138 GETTABLEKS                       R9 R9 K23 ["X"]
      140 GETTABLEKS                       R10 R1 K17 ["Size"]
      142 GETTABLEKS                       R10 R10 K18 ["Y"]
      144 FASTCALL3                        VECTOR R9 R10 R3
      146 MOVE                             R11 R3
      147 GETIMPORT                        R8 K22 [Vector3.new]
      149 CALL                             R8 3 1
      150 CALL                             R6 2 0
      151 RETURN                           R0 0
      152 GETTABLEKS                       R6 R0 K10 ["field"]
      154 GETTABLEKS                       R7 R2 K24 ["PositionX"]
      156 JUMPIFNOTEQ                      R6 R7 ; [+19]
      158 GETUPVAL                         R6 2
      159 GETTABLEKS                       R6 R6 K14 ["SceneBoundsOps"]
      161 GETTABLEKS                       R6 R6 K25 ["setPosition"]
      163 MOVE                             R7 R1
      164 GETTABLEKS                       R10 R5 K18 ["Y"]
      166 GETTABLEKS                       R11 R5 K19 ["Z"]
      168 FASTCALL3                        VECTOR R3 R10 R11
      170 MOVE                             R9 R3
      171 GETIMPORT                        R8 K22 [Vector3.new]
      173 CALL                             R8 3 1
      174 CALL                             R6 2 0
      175 RETURN                           R0 0
      176 GETTABLEKS                       R6 R0 K10 ["field"]
      178 GETTABLEKS                       R7 R2 K26 ["PositionY"]
      180 JUMPIFNOTEQ                      R6 R7 ; [+19]
      182 GETUPVAL                         R6 2
      183 GETTABLEKS                       R6 R6 K14 ["SceneBoundsOps"]
      185 GETTABLEKS                       R6 R6 K25 ["setPosition"]
      187 MOVE                             R7 R1
      188 GETTABLEKS                       R9 R5 K23 ["X"]
      190 GETTABLEKS                       R11 R5 K19 ["Z"]
      192 FASTCALL3                        VECTOR R9 R3 R11
      194 MOVE                             R10 R3
      195 GETIMPORT                        R8 K22 [Vector3.new]
      197 CALL                             R8 3 1
      198 CALL                             R6 2 0
      199 RETURN                           R0 0
      200 GETTABLEKS                       R6 R0 K10 ["field"]
      202 GETTABLEKS                       R7 R2 K27 ["PositionZ"]
      204 JUMPIFNOTEQ                      R6 R7 ; [+18]
      206 GETUPVAL                         R6 2
      207 GETTABLEKS                       R6 R6 K14 ["SceneBoundsOps"]
      209 GETTABLEKS                       R6 R6 K25 ["setPosition"]
      211 MOVE                             R7 R1
      212 GETTABLEKS                       R9 R5 K23 ["X"]
      214 GETTABLEKS                       R10 R5 K18 ["Y"]
      216 FASTCALL3                        VECTOR R9 R10 R3
      218 MOVE                             R11 R3
      219 GETIMPORT                        R8 K22 [Vector3.new]
      221 CALL                             R8 3 1
      222 CALL                             R6 2 0
      223 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["requestId"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["requestId"]
        3 GETTABLE                         R2 R3 R4
        4 JUMPIFNOT                        R2 ; [+8]
        5 NAMECALL                         R3 R2 K1 ["Disconnect"]
        7 CALL                             R3 1 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R4 R0 K0 ["requestId"]
       11 LOADNIL                          R5
       12 SETTABLE                         R5 R3 R4
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K2 ["get"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["Scope"]
       19 GETTABLEKS                       R5 R0 K0 ["requestId"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+3]
       23 NAMECALL                         R4 R3 K4 ["Destroy"]
       25 CALL                             R4 1 0
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R6 R0 K0 ["requestId"]
       29 GETTABLE                         R4 R5 R6
       30 JUMPIFNOT                        R4 ; [+4]
       31 GETTABLEKS                       R5 R4 K5 ["Parent"]
       33 JUMPIFNOTEQKNIL                  R5 ; [+11]
       35 DUPTABLE                         R5 K9 [{["ok"] = False, ["errorMessage"]}]
       36 GETUPVAL                         R6 4
       37 LOADK                            R8 K10 ["GenerateLayout"]
       38 LOADK                            R9 K11 ["ViewportNoBox"]
       39 NAMECALL                         R6 R6 K12 ["getText"]
       41 CALL                             R6 3 1
       42 SETTABLEKS                       R6 R5 K8 ["errorMessage"]
       44 RETURN                           R5 1
       45 GETTABLEKS                       R5 R1 K13 ["selection"]
       47 GETTABLEKS                       R5 R5 K14 ["set"]
       49 NEWTABLE                         R6 0 0
       51 CALL                             R5 1 0
       52 LOADB                            R5 1
       53 SETTABLEKS                       R5 R4 K15 ["Locked"]
       55 DUPTABLE                         R5 K19 [{["ok"] = True, ["boundingBoxSize"], ["boundingBoxCFrame"]}]
       56 GETTABLEKS                       R6 R4 K20 ["Size"]
       58 SETTABLEKS                       R6 R5 K17 ["boundingBoxSize"]
       60 GETTABLEKS                       R6 R4 K21 ["CFrame"]
       62 SETTABLEKS                       R6 R5 K18 ["boundingBoxCFrame"]
       64 RETURN                           R5 1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 0
        5 GETTABLE                         R5 R6 R3
        6 JUMPIFNOT                        R5 ; [+6]
        7 NAMECALL                         R6 R5 K0 ["Destroy"]
        9 CALL                             R6 1 0
       10 GETUPVAL                         R6 0
       11 LOADNIL                          R7
       12 SETTABLE                         R7 R6 R3
       13 FORGLOOP                         R0 1 ; [-10]
       15 GETUPVAL                         R0 1
       16 LOADNIL                          R1
       17 LOADNIL                          R2
       18 FORGPREP                         R0
       19 NAMECALL                         R5 R4 K1 ["Disconnect"]
       21 CALL                             R5 1 0
       22 FORGLOOP                         R0 2 ; [-4]
       24 GETIMPORT                        R0 K4 [table.clear]
       26 GETUPVAL                         R1 1
       27 CALL                             R0 1 0
       28 GETIMPORT                        R0 K4 [table.clear]
       30 GETUPVAL                         R1 2
       31 CALL                             R0 1 0
       32 GETIMPORT                        R0 K4 [table.clear]
       34 GETUPVAL                         R1 3
       35 CALL                             R0 1 0
       36 GETIMPORT                        R0 K4 [table.clear]
       38 GETUPVAL                         R1 4
       39 CALL                             R0 1 0
       40 GETUPVAL                         R0 5
       41 LOADK                            R2 K5 ["AssistantLayoutGenSceneBox"]
       42 NAMECALL                         R0 R0 K6 ["GetTagged"]
       44 CALL                             R0 2 3
       45 FORGPREP                         R0
       46 NAMECALL                         R5 R4 K0 ["Destroy"]
       48 CALL                             R5 1 0
       49 FORGLOOP                         R0 2 ; [-4]
       51 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_36:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 RETURN                           R0 1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["run"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_39:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 RETURN                           R2 1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["LayoutGenOps"]
        4 GETTABLEKS                       R1 R1 K1 ["cancelGenerationAsync"]
        6 DUPTABLE                         R2 K3 [{"requestId"}]
        7 GETTABLEKS                       R3 R0 K2 ["requestId"]
        9 SETTABLEKS                       R3 R2 K2 ["requestId"]
       11 GETUPVAL                         R3 2
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K2 ["requestId"]
       15 GETUPVAL                         R3 3
       16 GETTABLE                         R2 R3 R1
       17 JUMPIFNOT                        R2 ; [+6]
       18 NAMECALL                         R3 R2 K4 ["Destroy"]
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 3
       22 LOADNIL                          R4
       23 SETTABLE                         R4 R3 R1
       24 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["cancel"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 RETURN                           R2 1

PROTO_43:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["requestId"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 RETURN                           R2 1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K0 ["new"]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R7 R2 K1 ["generateScene"]
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 NAMECALL                         R7 R7 K2 ["Connect"]
       19 CALL                             R7 2 -1
       20 NAMECALL                         R5 R4 K3 ["Add"]
       22 CALL                             R5 -1 0
       23 GETTABLEKS                       R7 R2 K4 ["executeAndStoreScript"]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R1
       28 NAMECALL                         R7 R7 K2 ["Connect"]
       30 CALL                             R7 2 -1
       31 NAMECALL                         R5 R4 K3 ["Add"]
       33 CALL                             R5 -1 0
       34 GETTABLEKS                       R7 R2 K5 ["cancelGeneration"]
       36 NEWCLOSURE                       R9 P2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 NAMECALL                         R7 R7 K2 ["Connect"]
       43 CALL                             R7 2 -1
       44 NAMECALL                         R5 R4 K3 ["Add"]
       46 CALL                             R5 -1 0
       47 GETTABLEKS                       R7 R2 K6 ["createSceneBox"]
       49 NEWCLOSURE                       R9 P3
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R1
       52 NAMECALL                         R7 R7 K2 ["Connect"]
       54 CALL                             R7 2 -1
       55 NAMECALL                         R5 R4 K3 ["Add"]
       57 CALL                             R5 -1 0
       58 GETTABLEKS                       R7 R2 K7 ["updateSceneBoxField"]
       60 DUPCLOSURE                       R9 K8 [PROTO_43]
       61 CAPTURE                          UPVAL U9
       62 NAMECALL                         R7 R7 K2 ["Connect"]
       64 CALL                             R7 2 -1
       65 NAMECALL                         R5 R4 K3 ["Add"]
       67 CALL                             R5 -1 0
       68 GETTABLEKS                       R7 R2 K9 ["destroySceneBox"]
       70 DUPCLOSURE                       R9 K10 [PROTO_44]
       71 CAPTURE                          UPVAL U10
       72 NAMECALL                         R7 R7 K2 ["Connect"]
       74 CALL                             R7 2 -1
       75 NAMECALL                         R5 R4 K3 ["Add"]
       77 CALL                             R5 -1 0
       78 GETTABLEKS                       R7 R2 K11 ["finishSceneBox"]
       80 NEWCLOSURE                       R9 P6
       81 CAPTURE                          UPVAL U11
       82 CAPTURE                          VAL R1
       83 NAMECALL                         R7 R7 K2 ["Connect"]
       85 CALL                             R7 2 -1
       86 NAMECALL                         R5 R4 K3 ["Add"]
       88 CALL                             R5 -1 0
       89 GETTABLEKS                       R5 R1 K12 ["Destroying"]
       91 NEWCLOSURE                       R7 P7
       92 CAPTURE                          VAL R4
       93 CAPTURE                          UPVAL U12
       94 NAMECALL                         R5 R5 K13 ["Once"]
       96 CALL                             R5 2 0
       97 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["RunService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["Workspace"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETTABLEKS                       R4 R0 K10 ["Parent"]
       27 GETIMPORT                        R5 K12 [require]
       29 GETTABLEKS                       R6 R4 K13 ["Bin"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K12 [require]
       34 GETTABLEKS                       R7 R4 K14 ["DMNetworking"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K12 [require]
       39 GETTABLEKS                       R8 R4 K15 ["Gen3dCore"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K12 [require]
       44 GETTABLEKS                       R9 R4 K16 ["LoadingSkeleton3D"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K12 [require]
       49 GETTABLEKS                       R10 R0 K17 ["Guest"]
       51 GETTABLEKS                       R10 R10 K18 ["Environment"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K12 [require]
       56 GETTABLEKS                       R11 R0 K19 ["Flags"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K12 [require]
       61 GETTABLEKS                       R12 R0 K20 ["Util"]
       63 GETTABLEKS                       R12 R12 K21 ["InstanceChannel"]
       65 GETTABLEKS                       R12 R12 K21 ["InstanceChannel"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K12 [require]
       70 GETTABLEKS                       R13 R0 K22 ["Bridges"]
       72 GETTABLEKS                       R13 R13 K23 ["createLayoutGenBridge"]
       74 GETTABLEKS                       R13 R13 K24 ["LayoutGenBridgeTypes"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K12 [require]
       79 GETTABLEKS                       R14 R0 K20 ["Util"]
       81 GETTABLEKS                       R14 R14 K25 ["LayoutGen"]
       83 GETTABLEKS                       R14 R14 K26 ["LayoutGenCancellation"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K12 [require]
       88 GETTABLEKS                       R15 R0 K20 ["Util"]
       90 GETTABLEKS                       R15 R15 K25 ["LayoutGen"]
       92 GETTABLEKS                       R15 R15 K27 ["LayoutGenProgressChannel"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K12 [require]
       97 GETTABLEKS                       R16 R0 K28 ["Remotes"]
       99 GETTABLEKS                       R16 R16 K29 ["LayoutGenRemotes"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K12 [require]
      104 GETTABLEKS                       R17 R0 K20 ["Util"]
      106 GETTABLEKS                       R17 R17 K25 ["LayoutGen"]
      108 GETTABLEKS                       R17 R17 K30 ["LayoutGenSceneBoxChannel"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K12 [require]
      113 GETTABLEKS                       R18 R0 K31 ["Resources"]
      115 GETTABLEKS                       R18 R18 K32 ["Localization"]
      117 GETTABLEKS                       R18 R18 K33 ["Translator"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K12 [require]
      122 GETTABLEKS                       R19 R0 K20 ["Util"]
      124 GETTABLEKS                       R19 R19 K34 ["createCancellableHandlers"]
      126 CALL                             R18 1 1
      127 GETTABLEKS                       R19 R7 K35 ["createGenerationSessions"]
      129 CALL                             R19 0 1
      130 GETTABLEKS                       R20 R7 K36 ["Constants"]
      132 GETTABLEKS                       R20 R20 K37 ["DEFAULT_SCENE_SIZE"]
      134 NEWTABLE                         R21 0 0
      136 NEWTABLE                         R22 0 0
      138 NEWTABLE                         R23 0 0
      140 NEWTABLE                         R24 0 0
      142 NEWTABLE                         R25 0 0
      144 DUPCLOSURE                       R26 K38 [PROTO_0]
      145 CAPTURE                          VAL R25
      146 DUPCLOSURE                       R27 K39 [PROTO_1]
      147 CAPTURE                          VAL R24
      148 CAPTURE                          VAL R13
      149 DUPCLOSURE                       R28 K40 [PROTO_2]
      150 CAPTURE                          VAL R21
      151 DUPCLOSURE                       R29 K41 [PROTO_3]
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R22
      158 DUPCLOSURE                       R30 K42 [PROTO_4]
      159 CAPTURE                          VAL R24
      160 CAPTURE                          VAL R25
      161 CAPTURE                          VAL R29
      162 DUPCLOSURE                       R31 K43 [PROTO_6]
      163 CAPTURE                          VAL R24
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R25
      168 CAPTURE                          VAL R29
      169 DUPCLOSURE                       R32 K44 [PROTO_7]
      170 CAPTURE                          VAL R24
      171 CAPTURE                          VAL R31
      172 DUPCLOSURE                       R33 K45 [PROTO_11]
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R25
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R31
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R17
      181 DUPCLOSURE                       R34 K46 [PROTO_12]
      182 CAPTURE                          VAL R24
      183 CAPTURE                          VAL R19
      184 DUPCLOSURE                       R35 K47 [PROTO_13]
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R25
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R21
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R24
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R31
      195 DUPCLOSURE                       R36 K48 [PROTO_14]
      196 CAPTURE                          VAL R35
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R24
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R8
      203 DUPCLOSURE                       R37 K49 [PROTO_16]
      204 CAPTURE                          VAL R36
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R7
      207 CAPTURE                          VAL R33
      208 CAPTURE                          VAL R19
      209 DUPCLOSURE                       R38 K50 [PROTO_18]
      210 CAPTURE                          VAL R36
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R7
      213 CAPTURE                          VAL R33
      214 CAPTURE                          VAL R19
      215 CAPTURE                          VAL R24
      216 CAPTURE                          VAL R25
      217 CAPTURE                          VAL R21
      218 CAPTURE                          VAL R8
      219 DUPCLOSURE                       R39 K51 [PROTO_19]
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R25
      223 DUPCLOSURE                       R40 K52 [PROTO_20]
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R7
      226 DUPCLOSURE                       R41 K53 [PROTO_21]
      227 DUPCLOSURE                       R42 K54 [PROTO_24]
      228 CAPTURE                          VAL R23
      229 CAPTURE                          VAL R21
      230 CAPTURE                          VAL R8
      231 CAPTURE                          VAL R22
      232 CAPTURE                          VAL R3
      233 CAPTURE                          VAL R20
      234 CAPTURE                          VAL R7
      235 CAPTURE                          VAL R29
      236 CAPTURE                          VAL R11
      237 CAPTURE                          VAL R16
      238 CAPTURE                          VAL R2
      239 DUPCLOSURE                       R43 K55 [PROTO_25]
      240 DUPCLOSURE                       R44 K56 [PROTO_26]
      241 CAPTURE                          VAL R22
      242 CAPTURE                          VAL R16
      243 CAPTURE                          VAL R7
      244 DUPCLOSURE                       R45 K57 [PROTO_27]
      245 CAPTURE                          VAL R29
      246 DUPCLOSURE                       R46 K58 [PROTO_28]
      247 CAPTURE                          VAL R23
      248 CAPTURE                          VAL R11
      249 CAPTURE                          VAL R16
      250 CAPTURE                          VAL R22
      251 CAPTURE                          VAL R17
      252 DUPCLOSURE                       R47 K59 [PROTO_29]
      253 CAPTURE                          VAL R25
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R21
      256 CAPTURE                          VAL R22
      257 CAPTURE                          VAL R24
      258 CAPTURE                          VAL R1
      259 DUPTABLE                         R48 K67 [{"generateSceneAsync", "executeAndStoreScriptAsync", "cancelGenerationAsync", "createSceneBoxAsync", "updateSceneBoxFieldAsync", "destroySceneBoxAsync", "finishSceneBoxAsync"}]
      260 DUPCLOSURE                       R49 K68 [PROTO_30]
      261 CAPTURE                          VAL R37
      262 SETTABLEKS                       R49 R48 K60 ["generateSceneAsync"]
      264 DUPCLOSURE                       R49 K69 [PROTO_31]
      265 CAPTURE                          VAL R38
      266 SETTABLEKS                       R49 R48 K61 ["executeAndStoreScriptAsync"]
      268 DUPCLOSURE                       R49 K70 [PROTO_32]
      269 CAPTURE                          VAL R39
      270 SETTABLEKS                       R49 R48 K62 ["cancelGenerationAsync"]
      272 DUPCLOSURE                       R49 K71 [PROTO_33]
      273 CAPTURE                          VAL R42
      274 SETTABLEKS                       R49 R48 K63 ["createSceneBoxAsync"]
      276 DUPCLOSURE                       R49 K72 [PROTO_34]
      277 CAPTURE                          VAL R44
      278 SETTABLEKS                       R49 R48 K64 ["updateSceneBoxFieldAsync"]
      280 DUPCLOSURE                       R49 K73 [PROTO_35]
      281 CAPTURE                          VAL R45
      282 SETTABLEKS                       R49 R48 K65 ["destroySceneBoxAsync"]
      284 DUPCLOSURE                       R49 K74 [PROTO_36]
      285 CAPTURE                          VAL R46
      286 SETTABLEKS                       R49 R48 K66 ["finishSceneBoxAsync"]
      288 DUPCLOSURE                       R49 K75 [PROTO_47]
      289 CAPTURE                          VAL R15
      290 CAPTURE                          VAL R18
      291 CAPTURE                          VAL R5
      292 CAPTURE                          VAL R37
      293 CAPTURE                          VAL R38
      294 CAPTURE                          VAL R7
      295 CAPTURE                          VAL R19
      296 CAPTURE                          VAL R25
      297 CAPTURE                          VAL R42
      298 CAPTURE                          VAL R44
      299 CAPTURE                          VAL R29
      300 CAPTURE                          VAL R46
      301 CAPTURE                          VAL R47
      302 DUPTABLE                         R50 K79 [{"bridge", "connectRemotes", "destroy"}]
      303 SETTABLEKS                       R48 R50 K76 ["bridge"]
      305 SETTABLEKS                       R49 R50 K77 ["connectRemotes"]
      307 SETTABLEKS                       R47 R50 K78 ["destroy"]
      309 RETURN                           R50 1
