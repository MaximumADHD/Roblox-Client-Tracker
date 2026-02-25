PROTO_0:
        0 DUPTABLE                         R2 K3 [{"tutorial", "data", "completed"}]
        1 SETTABLEKS                       R0 R2 K0 ["tutorial"]
        3 SETTABLEKS                       R1 R2 K1 ["data"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K2 ["completed"]
        8 GETUPVAL                         R5 0
        9 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K5 [setmetatable]
       14 CALL                             R3 2 1
       15 RETURN                           R3 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R5 1
        7 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K2 [setmetatable]
       12 CALL                             R3 2 1
       13 RETURN                           R3 1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"kind"}]
        1 SETTABLEKS                       R0 R1 K0 ["kind"]
        3 GETUPVAL                         R4 0
        4 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K3 [setmetatable]
        9 CALL                             R2 2 0
       10 DUPTABLE                         R2 K5 [{"__index"}]
       11 SETTABLEKS                       R1 R2 K4 ["__index"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R3 R1 K6 ["new"]
       18 RETURN                           R1 1

PROTO_5:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["completed"]
        3 GETTABLEKS                       R1 R0 K1 ["tutorial"]
        5 NAMECALL                         R1 R1 K2 ["getCurrentStep"]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQ                      R1 R0 ; [+6]
       10 GETTABLEKS                       R1 R0 K1 ["tutorial"]
       12 NAMECALL                         R1 R1 K3 ["increment"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["data"]
        2 GETTABLEKS                       R2 R3 K1 ["onSkip"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 LOADK                            R6 K2 ["Skipping step %*/%*"]
        8 GETTABLEKS                       R9 R0 K0 ["data"]
       10 GETTABLEKS                       R8 R9 K3 ["topic"]
       12 GETTABLEKS                       R10 R0 K0 ["data"]
       14 GETTABLEKS                       R9 R10 K4 ["id"]
       16 NAMECALL                         R6 R6 K5 ["format"]
       18 CALL                             R6 3 1
       19 MOVE                             R5 R6
       20 NAMECALL                         R3 R3 K6 ["TryBeginRecording"]
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K8 [pcall]
       25 MOVE                             R5 R2
       26 MOVE                             R6 R1
       27 CALL                             R4 2 2
       28 JUMPIF                           R4 ; [+17]
       29 GETIMPORT                        R6 K10 [warn]
       31 LOADK                            R8 K11 ["Error skipping step %*/%*: %*"]
       32 GETTABLEKS                       R11 R0 K0 ["data"]
       34 GETTABLEKS                       R10 R11 K3 ["topic"]
       36 GETTABLEKS                       R12 R0 K0 ["data"]
       38 GETTABLEKS                       R11 R12 K4 ["id"]
       40 MOVE                             R12 R5
       41 NAMECALL                         R8 R8 K5 ["format"]
       43 CALL                             R8 4 1
       44 MOVE                             R7 R8
       45 CALL                             R6 1 0
       46 JUMPIFNOT                        R3 ; [+7]
       47 GETUPVAL                         R6 0
       48 MOVE                             R8 R3
       49 GETIMPORT                        R9 K15 [Enum.FinishRecordingOperation.Commit]
       51 NAMECALL                         R6 R6 K16 ["FinishRecording"]
       53 CALL                             R6 3 0
       54 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_priorCameraType"]
        3 JUMPIF                           R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["CurrentCamera"]
        8 GETTABLEKS                       R1 R2 K2 ["CameraType"]
       10 SETTABLEKS                       R1 R0 K0 ["_priorCameraType"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K1 ["CurrentCamera"]
       15 GETTABLEKS                       R0 R1 K3 ["CFrame"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K1 ["CurrentCamera"]
       20 GETIMPORT                        R2 K6 [Enum.CameraType.Scriptable]
       22 SETTABLEKS                       R2 R1 K2 ["CameraType"]
       24 LOADN                            R1 0
       25 GETUPVAL                         R2 2
       26 JUMPIFNOTLT                      R1 R2 ; [+27]
       28 GETUPVAL                         R4 2
       29 DIV                              R3 R1 R4
       30 LOADN                            R4 0
       31 LOADN                            R5 1
       32 FASTCALL                         MATH_CLAMP ; [+2]
       33 GETIMPORT                        R2 K9 [math.clamp]
       35 CALL                             R2 3 1
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R3 R4 K1 ["CurrentCamera"]
       39 GETUPVAL                         R6 3
       40 MOVE                             R7 R2
       41 NAMECALL                         R4 R0 K10 ["Lerp"]
       43 CALL                             R4 3 1
       44 SETTABLEKS                       R4 R3 K3 ["CFrame"]
       46 GETUPVAL                         R4 4
       47 GETTABLEKS                       R3 R4 K11 ["RenderStepped"]
       49 NAMECALL                         R3 R3 K12 ["Wait"]
       51 CALL                             R3 1 1
       52 ADD                              R1 R1 R3
       53 JUMPBACK                         ; [-29]
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R2 R3 K1 ["CurrentCamera"]
       57 GETUPVAL                         R3 3
       58 SETTABLEKS                       R3 R2 K3 ["CFrame"]
       60 GETUPVAL                         R3 4
       61 GETTABLEKS                       R2 R3 K11 ["RenderStepped"]
       63 NAMECALL                         R2 R2 K12 ["Wait"]
       65 CALL                             R2 1 0
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R2 R3 K1 ["CurrentCamera"]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R3 R4 K0 ["_priorCameraType"]
       72 SETTABLEKS                       R3 R2 K2 ["CameraType"]
       74 GETUPVAL                         R2 0
       75 LOADNIL                          R3
       76 SETTABLEKS                       R3 R2 K0 ["_priorCameraType"]
       78 GETUPVAL                         R2 0
       79 LOADNIL                          R3
       80 SETTABLEKS                       R3 R2 K13 ["_cameraLerpThread"]
       82 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["data"]
        2 GETTABLEKS                       R1 R2 K1 ["cameraFocus"]
        4 GETTABLEKS                       R4 R0 K0 ["data"]
        6 GETTABLEKS                       R3 R4 K3 ["cameraOffset"]
        8 ORK                              R2 R3 K2 [{15, 3, 0}]
        9 GETTABLEKS                       R5 R0 K0 ["data"]
       11 GETTABLEKS                       R4 R5 K5 ["cameraMoveDuration"]
       13 ORK                              R3 R4 K4 [1.5]
       14 LOADNIL                          R4
       15 JUMPIF                           R1 ; [+2]
       16 CLOSEUPVALS                      R4
       17 RETURN                           R0 0
       18 FASTCALL1                        TYPE R1 ; [+3]
       19 MOVE                             R6 R1
       20 GETIMPORT                        R5 K7 [type]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K8 ["string"] ; [+6]
       25 GETTABLEKS                       R6 R0 K9 ["tutorial"]
       27 GETTABLEKS                       R5 R6 K10 ["instances"]
       29 GETTABLE                         R1 R5 R1
       30 FASTCALL1                        TYPEOF R1 ; [+3]
       31 MOVE                             R6 R1
       32 GETIMPORT                        R5 K12 [typeof]
       34 CALL                             R5 1 1
       35 JUMPIFNOTEQKS                    R5 K13 ["CFrame"] ; [+3]
       37 MOVE                             R4 R1
       38 JUMP                             ; [+42]
       39 JUMPIFNOTEQKS                    R5 K14 ["Vector3"] ; [+8]
       41 GETIMPORT                        R6 K16 [CFrame.lookAt]
       43 ADD                              R7 R1 R2
       44 MOVE                             R8 R1
       45 CALL                             R6 2 1
       46 MOVE                             R4 R6
       47 JUMP                             ; [+33]
       48 JUMPIFNOTEQKS                    R5 K17 ["Instance"] ; [+32]
       50 LOADK                            R8 K18 ["BasePart"]
       51 NAMECALL                         R6 R1 K19 ["IsA"]
       53 CALL                             R6 2 1
       54 JUMPIFNOT                        R6 ; [+9]
       55 GETTABLEKS                       R6 R1 K20 ["Position"]
       57 GETIMPORT                        R7 K16 [CFrame.lookAt]
       59 ADD                              R8 R6 R2
       60 MOVE                             R9 R6
       61 CALL                             R7 2 1
       62 MOVE                             R4 R7
       63 JUMP                             ; [+17]
       64 LOADK                            R8 K21 ["Model"]
       65 NAMECALL                         R6 R1 K19 ["IsA"]
       67 CALL                             R6 2 1
       68 JUMPIFNOT                        R6 ; [+12]
       69 NAMECALL                         R6 R1 K22 ["GetPivot"]
       71 CALL                             R6 1 1
       72 GETIMPORT                        R7 K16 [CFrame.lookAt]
       74 GETTABLEKS                       R9 R6 K20 ["Position"]
       76 LOADK                            R10 K23 [{5, 5, 0}]
       77 ADD                              R8 R9 R10
       78 MOVE                             R9 R6
       79 CALL                             R7 2 1
       80 MOVE                             R4 R7
       81 GETTABLEKS                       R6 R0 K24 ["_cameraLerpThread"]
       83 JUMPIFNOT                        R6 ; [+5]
       84 GETIMPORT                        R6 K27 [task.cancel]
       86 GETTABLEKS                       R7 R0 K24 ["_cameraLerpThread"]
       88 CALL                             R6 1 0
       89 GETIMPORT                        R6 K29 [task.spawn]
       91 NEWCLOSURE                       R7 P0
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          VAL R3
       95 CAPTURE                          REF R4
       96 CAPTURE                          UPVAL U1
       97 CALL                             R6 1 1
       98 SETTABLEKS                       R6 R0 K24 ["_cameraLerpThread"]
      100 CLOSEUPVALS                      R4
      101 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R7 K7 [script]
       21 GETTABLEKS                       R6 R7 K8 ["Parent"]
       23 GETTABLEKS                       R5 R6 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K8 ["Parent"]
       27 GETTABLEKS                       R3 R4 K8 ["Parent"]
       29 GETIMPORT                        R4 K10 [require]
       31 GETTABLEKS                       R7 R3 K11 ["Src"]
       33 GETTABLEKS                       R6 R7 K12 ["Util"]
       35 GETTABLEKS                       R5 R6 K13 ["TutorialTypes"]
       37 CALL                             R4 1 1
       38 NEWTABLE                         R5 8 0
       40 DUPTABLE                         R6 K15 [{"__index"}]
       41 SETTABLEKS                       R5 R6 K14 ["__index"]
       43 DUPCLOSURE                       R7 K16 [PROTO_0]
       44 CAPTURE                          VAL R6
       45 SETTABLEKS                       R7 R5 K17 ["new"]
       47 DUPCLOSURE                       R7 K18 [PROTO_1]
       48 SETTABLEKS                       R7 R5 K19 ["bind"]
       50 DUPCLOSURE                       R7 K20 [PROTO_2]
       51 SETTABLEKS                       R7 R5 K21 ["unbind"]
       53 DUPCLOSURE                       R7 K22 [PROTO_4]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R7 R5 K23 ["extend"]
       58 DUPCLOSURE                       R7 K24 [PROTO_5]
       59 SETTABLEKS                       R7 R5 K25 ["complete"]
       61 DUPCLOSURE                       R7 K26 [PROTO_6]
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R7 R5 K27 ["skip"]
       65 DUPCLOSURE                       R7 K28 [PROTO_8]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R7 R5 K29 ["setCameraFocus"]
       70 RETURN                           R5 1
