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
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R1
       29 FASTPCALL                        pcall 1 ; [+2]
       30 GETIMPORT                        R4 K8 [pcall]
       32 CALL                             R4 1 2
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K2 ["FFlagAssistantRestoreCameraStateInExec"]
       36 JUMPIFNOT                        R6 ; [+36]
       37 JUMPIFNOT                        R3 ; [+35]
       38 GETIMPORT                        R6 K4 [workspace]
       40 GETTABLEKS                       R6 R6 K5 ["CurrentCamera"]
       42 JUMPIFNOT                        R6 ; [+30]
       43 GETIMPORT                        R6 K4 [workspace]
       45 GETTABLEKS                       R6 R6 K5 ["CurrentCamera"]
       47 GETTABLEKS                       R6 R6 K6 ["CameraType"]
       49 JUMPIFEQ                         R6 R3 ; [+23]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K9 ["FFlagAssistantRestoreCameraStateInExecWarn"]
       54 JUMPIFNOT                        R6 ; [+12]
       55 GETIMPORT                        R6 K11 [warn]
       57 LOADK                            R7 K12 ["The execute_luau changed camera type. Resetting from"]
       58 GETIMPORT                        R8 K4 [workspace]
       60 GETTABLEKS                       R8 R8 K5 ["CurrentCamera"]
       62 GETTABLEKS                       R8 R8 K6 ["CameraType"]
       64 LOADK                            R9 K13 ["back to"]
       65 MOVE                             R10 R3
       66 CALL                             R6 4 0
       67 GETIMPORT                        R6 K4 [workspace]
       69 GETTABLEKS                       R6 R6 K5 ["CurrentCamera"]
       71 SETTABLEKS                       R3 R6 K6 ["CameraType"]
       73 GETTABLEKS                       R6 R0 K14 ["endRecording"]
       75 MOVE                             R7 R2
       76 CALL                             R6 1 0
       77 DUPTABLE                         R6 K17 [{"success", "result"}]
       78 SETTABLEKS                       R4 R6 K15 ["success"]
       80 GETUPVAL                         R7 3
       81 GETTABLEKS                       R7 R7 K18 ["serializeToString"]
       83 MOVE                             R8 R5
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R9 R9 K19 ["FIntExecuteLuauMaxStringLength"]
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K20 ["FIntExecuteLuauMaxJsonLength"]
       90 CALL                             R7 3 1
       91 SETTABLEKS                       R7 R6 K16 ["result"]
       93 RETURN                           R6 1

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
        4 GETTABLEKS                       R4 R1 K3 ["code"]
        6 GETTABLEKS                       R5 R1 K4 ["isMcpOriginated"]
        8 CALL                             R3 2 1
        9 SETTABLEKS                       R3 R2 K0 ["id"]
       11 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["runCode"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R1 K1 ["id"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["stopCode"]
        3 GETTABLEKS                       R3 R1 K1 ["id"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["new"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R6 R2 K1 ["loadCode"]
       11 DUPCLOSURE                       R8 K2 [PROTO_4]
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
       32 DUPCLOSURE                       R8 K7 [PROTO_6]
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
       17 GETTABLEKS                       R4 R2 K11 ["Bin"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["DMNetworking"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R0 K13 ["Util"]
       29 GETTABLEKS                       R6 R6 K14 ["CommandExecution"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K10 [require]
       34 GETTABLEKS                       R7 R0 K15 ["Guest"]
       36 GETTABLEKS                       R7 R7 K16 ["Environment"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K10 [require]
       41 GETTABLEKS                       R8 R0 K17 ["Remotes"]
       43 GETTABLEKS                       R8 R8 K18 ["ExecuteLuauRemotes"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K10 [require]
       48 GETTABLEKS                       R9 R0 K19 ["Flags"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K10 [require]
       53 GETTABLEKS                       R10 R0 K13 ["Util"]
       55 GETTABLEKS                       R10 R10 K20 ["ToolUtils"]
       57 CALL                             R9 1 1
       58 NEWTABLE                         R10 4 0
       60 DUPCLOSURE                       R11 K21 [PROTO_0]
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R11 R10 K22 ["loadCode"]
       64 DUPCLOSURE                       R11 K23 [PROTO_2]
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R9
       69 SETTABLEKS                       R11 R10 K24 ["runCode"]
       71 DUPCLOSURE                       R11 K25 [PROTO_3]
       72 CAPTURE                          VAL R5
       73 SETTABLEKS                       R11 R10 K26 ["stopCode"]
       75 DUPCLOSURE                       R11 K27 [PROTO_8]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R10
       79 SETTABLEKS                       R11 R10 K28 ["connectRemotes"]
       81 RETURN                           R10 1
