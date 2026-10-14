PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["loadCode"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        8 MOVE                             R4 R2
        9 LOADK                            R5 K1 ["Failed to load code"]
       10 GETIMPORT                        R3 K3 [assert]
       12 CALL                             R3 2 0
       13 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["runCode"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 0
        2 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R0 K1 ["startRecording"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["FFlagAssistantRestoreCameraStateInExec"]
       12 JUMPIFNOT                        R4 ; [+12]
       13 GETIMPORT                        R4 K4 [workspace]
       15 GETTABLEKS                       R4 R4 K5 ["CurrentCamera"]
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETIMPORT                        R3 K4 [workspace]
       20 GETTABLEKS                       R3 R3 K5 ["CurrentCamera"]
       22 GETTABLEKS                       R3 R3 K6 ["CameraType"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 GETIMPORT                        R4 K8 [pcall]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R1
       31 CALL                             R4 1 2
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K2 ["FFlagAssistantRestoreCameraStateInExec"]
       35 JUMPIFNOT                        R6 ; [+36]
       36 JUMPIFNOT                        R3 ; [+35]
       37 GETIMPORT                        R6 K4 [workspace]
       39 GETTABLEKS                       R6 R6 K5 ["CurrentCamera"]
       41 JUMPIFNOT                        R6 ; [+30]
       42 GETIMPORT                        R6 K4 [workspace]
       44 GETTABLEKS                       R6 R6 K5 ["CurrentCamera"]
       46 GETTABLEKS                       R6 R6 K6 ["CameraType"]
       48 JUMPIFEQ                         R6 R3 ; [+23]
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K9 ["FFlagAssistantRestoreCameraStateInExecWarn"]
       53 JUMPIFNOT                        R6 ; [+12]
       54 GETIMPORT                        R6 K11 [warn]
       56 LOADK                            R7 K12 ["The execute_luau changed camera type. Resetting from"]
       57 GETIMPORT                        R8 K4 [workspace]
       59 GETTABLEKS                       R8 R8 K5 ["CurrentCamera"]
       61 GETTABLEKS                       R8 R8 K6 ["CameraType"]
       63 LOADK                            R9 K13 ["back to"]
       64 MOVE                             R10 R3
       65 CALL                             R6 4 0
       66 GETIMPORT                        R6 K4 [workspace]
       68 GETTABLEKS                       R6 R6 K5 ["CurrentCamera"]
       70 SETTABLEKS                       R3 R6 K6 ["CameraType"]
       72 GETTABLEKS                       R6 R0 K14 ["endRecording"]
       74 MOVE                             R7 R2
       75 CALL                             R6 1 0
       76 DUPTABLE                         R6 K17 [{"success", "result"}]
       77 SETTABLEKS                       R4 R6 K15 ["success"]
       79 GETUPVAL                         R7 3
       80 GETTABLEKS                       R7 R7 K18 ["serializeToString"]
       82 MOVE                             R8 R5
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K19 ["FIntExecuteLuauMaxStringLength"]
       86 GETUPVAL                         R10 1
       87 GETTABLEKS                       R10 R10 K20 ["FIntExecuteLuauMaxJsonLength"]
       89 CALL                             R7 3 1
       90 SETTABLEKS                       R7 R6 K16 ["result"]
       92 RETURN                           R6 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stopCode"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"id"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["loadCode"]
        4 GETTABLEKS                       R4 R0 K3 ["code"]
        6 GETTABLEKS                       R5 R0 K4 ["isMcpOriginated"]
        8 CALL                             R3 2 1
        9 SETTABLEKS                       R3 R2 K0 ["id"]
       11 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["runCode"]
        3 GETTABLEKS                       R3 R1 K1 ["initArgs"]
        5 GETTABLEKS                       R3 R3 K2 ["environment"]
        7 GETTABLEKS                       R4 R0 K3 ["id"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["stopCode"]
        3 GETTABLEKS                       R3 R0 K1 ["id"]
        5 CALL                             R2 1 -1
        6 RETURN                           R2 -1

PROTO_7:
        0 DUPTABLE                         R2 K1 [{"id"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["loadCode"]
        4 GETTABLEKS                       R4 R1 K3 ["code"]
        6 GETTABLEKS                       R5 R1 K4 ["isMcpOriginated"]
        8 CALL                             R3 2 1
        9 SETTABLEKS                       R3 R2 K0 ["id"]
       11 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["runCode"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R1 K1 ["id"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["stopCode"]
        3 GETTABLEKS                       R3 R1 K1 ["id"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["new"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R6 R2 K1 ["loadCode"]
       11 DUPCLOSURE                       R8 K2 [PROTO_7]
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R6 R6 K3 ["Connect"]
       15 CALL                             R6 2 -1
       16 NAMECALL                         R4 R3 K4 ["Add"]
       18 CALL                             R4 -1 0
       19 GETTABLEKS                       R6 R2 K5 ["runCode"]
       21 NEWCLOSURE                       R8 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R1
       24 NAMECALL                         R6 R6 K3 ["Connect"]
       26 CALL                             R6 2 -1
       27 NAMECALL                         R4 R3 K4 ["Add"]
       29 CALL                             R4 -1 0
       30 GETTABLEKS                       R6 R2 K6 ["stopCode"]
       32 DUPCLOSURE                       R8 K7 [PROTO_9]
       33 CAPTURE                          UPVAL U2
       34 NAMECALL                         R6 R6 K3 ["Connect"]
       36 CALL                             R6 2 -1
       37 NAMECALL                         R4 R3 K4 ["Add"]
       39 CALL                             R4 -1 0
       40 GETTABLEKS                       R4 R1 K8 ["Destroying"]
       42 NEWCLOSURE                       R6 P3
       43 CAPTURE                          VAL R3
       44 NAMECALL                         R4 R4 K9 ["Once"]
       46 CALL                             R4 2 0
       47 RETURN                           R0 0

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
       17 GETTABLEKS                       R4 R2 K11 ["DMNetworking"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Util"]
       24 GETTABLEKS                       R5 R5 K13 ["Bin"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K10 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K14 ["CommandExecution"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K10 [require]
       36 GETTABLEKS                       R7 R0 K15 ["Guest"]
       38 GETTABLEKS                       R7 R7 K16 ["Environment"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K10 [require]
       43 GETTABLEKS                       R8 R0 K17 ["Bridges"]
       45 GETTABLEKS                       R8 R8 K18 ["createExecuteLuauBridge"]
       47 GETTABLEKS                       R8 R8 K19 ["ExecuteLuauBridgeTypes"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K10 [require]
       52 GETTABLEKS                       R9 R0 K20 ["Remotes"]
       54 GETTABLEKS                       R9 R9 K21 ["ExecuteLuauRemotes"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K10 [require]
       59 GETTABLEKS                       R10 R0 K22 ["Flags"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K10 [require]
       64 GETTABLEKS                       R11 R0 K12 ["Util"]
       66 GETTABLEKS                       R11 R11 K23 ["ToolUtils"]
       68 CALL                             R10 1 1
       69 NEWTABLE                         R11 8 0
       71 DUPCLOSURE                       R12 K24 [PROTO_0]
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R12 R11 K25 ["loadCode"]
       75 DUPCLOSURE                       R12 K26 [PROTO_2]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R10
       80 SETTABLEKS                       R12 R11 K27 ["runCode"]
       82 DUPCLOSURE                       R12 K28 [PROTO_3]
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R12 R11 K29 ["stopCode"]
       86 DUPTABLE                         R12 K32 [{"loadCodeAsync", "runCodeAsync", "stopCode"}]
       87 DUPCLOSURE                       R13 K33 [PROTO_4]
       88 CAPTURE                          VAL R11
       89 SETTABLEKS                       R13 R12 K30 ["loadCodeAsync"]
       91 DUPCLOSURE                       R13 K34 [PROTO_5]
       92 CAPTURE                          VAL R11
       93 SETTABLEKS                       R13 R12 K31 ["runCodeAsync"]
       95 DUPCLOSURE                       R13 K35 [PROTO_6]
       96 CAPTURE                          VAL R11
       97 SETTABLEKS                       R13 R12 K29 ["stopCode"]
       99 SETTABLEKS                       R12 R11 K36 ["bridge"]
      101 DUPCLOSURE                       R13 K37 [PROTO_11]
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R11
      105 SETTABLEKS                       R13 R11 K38 ["connectRemotes"]
      107 RETURN                           R11 1
