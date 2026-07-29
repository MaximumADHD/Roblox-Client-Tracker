PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Camera"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETTABLEKS                       R0 R0 K1 ["createHumanoidModelFromDescription"]
        5 GETIMPORT                        R1 K4 [Instance.new]
        7 LOADK                            R2 K5 ["HumanoidDescription"]
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K9 [Enum.HumanoidRigType.R15]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+1]
        6 JUMPIF                           R1 ; [+6]
        7 GETIMPORT                        R2 K3 [warn]
        9 LOADK                            R3 K4 ["[LookPreview] Failed to spawn preview humanoid:"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0
       13 LOADK                            R4 K5 ["Humanoid"]
       14 NAMECALL                         R2 R1 K6 ["FindFirstChildWhichIsA"]
       16 CALL                             R2 2 1
       17 JUMPIF                           R2 ; [+8]
       18 GETIMPORT                        R3 K3 [warn]
       20 LOADK                            R4 K7 ["[LookPreview] Spawned preview model has no Humanoid"]
       21 CALL                             R3 1 0
       22 NAMECALL                         R3 R1 K8 ["Destroy"]
       24 CALL                             R3 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 1
       27 SETTABLEKS                       R3 R1 K9 ["Parent"]
       29 GETUPVAL                         R3 2
       30 SETTABLEKS                       R1 R3 K10 ["current"]
       32 GETUPVAL                         R3 3
       33 SETTABLEKS                       R2 R3 K10 ["current"]
       35 GETUPVAL                         R3 4
       36 GETUPVAL                         R4 1
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFEQKS                       R0 K3 ["dead"] ; [+5]
        6 GETIMPORT                        R0 K6 [task.cancel]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K7 ["Destroy"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 2
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K8 ["current"]
       18 GETUPVAL                         R0 3
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K8 ["current"]
       22 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["WorldModel"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K6 [task.spawn]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CALL                             R1 1 1
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U2
       18 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K1 [game]
        3 NAMECALL                         R1 R1 K2 ["IsDescendantOf"]
        5 CALL                             R1 2 1
        6 NOT                              R0 R1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
       10 JUMPIF                           R1 ; [+1]
       11 GETUPVAL                         R1 1
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETUPVAL                         R2 2
       14 SETTABLEKS                       R1 R2 K4 ["Parent"]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K5 ["current"]
       19 GETTABLEKS                       R2 R2 K6 ["applyDescription"]
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R4 5
       23 CALL                             R2 2 0
       24 JUMPIFNOT                        R0 ; [+9]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R2 R2 K4 ["Parent"]
       28 JUMPIFNOTEQ                      R2 R1 ; [+5]
       30 GETUPVAL                         R2 2
       31 LOADNIL                          R3
       32 SETTABLEKS                       R3 R2 K4 ["Parent"]
       34 GETUPVAL                         R2 6
       35 GETTABLEKS                       R2 R2 K7 ["lookType"]
       37 JUMPIFNOTEQKS                    R2 K8 ["MakeupLook"] ; [+6]
       39 GETUPVAL                         R2 7
       40 GETTABLEKS                       R2 R2 K9 ["hideBodyExceptHead"]
       42 GETUPVAL                         R3 0
       43 CALL                             R2 1 0
       44 GETUPVAL                         R2 8
       45 GETTABLEKS                       R2 R2 K10 ["computeLookCamera"]
       47 GETUPVAL                         R3 0
       48 GETUPVAL                         R4 6
       49 GETTABLEKS                       R4 R4 K7 ["lookType"]
       51 CALL                             R2 2 1
       52 JUMPIFNOT                        R2 ; [+15]
       53 GETUPVAL                         R3 9
       54 GETTABLEKS                       R4 R2 K11 ["cframe"]
       56 SETTABLEKS                       R4 R3 K12 ["CFrame"]
       58 GETUPVAL                         R3 9
       59 GETTABLEKS                       R4 R2 K13 ["focus"]
       61 SETTABLEKS                       R4 R3 K14 ["Focus"]
       63 GETUPVAL                         R3 9
       64 GETTABLEKS                       R4 R2 K15 ["fov"]
       66 SETTABLEKS                       R4 R3 K16 ["FieldOfView"]
       68 GETUPVAL                         R3 10
       69 LOADB                            R4 1
       70 CALL                             R3 1 0
       71 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFEQKS                       R0 K3 ["dead"] ; [+5]
        6 GETIMPORT                        R0 K6 [task.cancel]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["description"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["current"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["current"]
        9 GETUPVAL                         R3 3
       10 JUMPIFNOT                        R3 ; [+3]
       11 JUMPIFNOT                        R1 ; [+2]
       12 JUMPIFNOT                        R2 ; [+1]
       13 JUMPIF                           R0 ; [+2]
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 GETIMPORT                        R3 K4 [task.spawn]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          UPVAL U9
       30 CALL                             R3 1 1
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          VAL R3
       33 RETURN                           R4 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useContext"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K1 ["useRefToState"]
       13 MOVE                             R4 R1
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K1 ["useRefToState"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K2 ["useState"]
       23 LOADNIL                          R6
       24 CALL                             R5 1 2
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K2 ["useState"]
       28 LOADB                            R8 0
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K2 ["useState"]
       33 DUPCLOSURE                       R10 K3 [PROTO_0]
       34 CALL                             R9 1 1
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K4 ["useRef"]
       38 LOADNIL                          R11
       39 CALL                             R10 1 1
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K4 ["useRef"]
       43 LOADNIL                          R12
       44 CALL                             R11 1 1
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K5 ["useEffect"]
       48 NEWCLOSURE                       R13 P1
       49 CAPTURE                          VAL R9
       50 NEWTABLE                         R14 0 0
       52 CALL                             R12 2 0
       53 GETUPVAL                         R12 0
       54 GETTABLEKS                       R12 R12 K5 ["useEffect"]
       56 NEWCLOSURE                       R13 P2
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R6
       61 NEWTABLE                         R14 0 0
       63 CALL                             R12 2 0
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K5 ["useEffect"]
       67 NEWCLOSURE                       R13 P3
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R5
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R4
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R8
       78 NEWTABLE                         R14 0 3
       80 MOVE                             R15 R5
       81 GETTABLEKS                       R16 R0 K6 ["description"]
       83 GETTABLEKS                       R17 R0 K7 ["lookType"]
       85 SETLIST                          R14 R15 3 [1]
       87 CALL                             R12 2 0
       88 DUPTABLE                         R12 K11 [{"worldModel", "camera", "isReady"}]
       89 SETTABLEKS                       R5 R12 K8 ["worldModel"]
       91 SETTABLEKS                       R9 R12 K9 ["camera"]
       93 SETTABLEKS                       R7 R12 K10 ["isReady"]
       95 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Components"]
       33 GETTABLEKS                       R5 R5 K15 ["PlayersServiceContext"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K13 ["Src"]
       40 GETTABLEKS                       R6 R6 K14 ["Components"]
       42 GETTABLEKS                       R6 R6 K16 ["HumanoidServiceContext"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K13 ["Src"]
       49 GETTABLEKS                       R7 R7 K17 ["Types"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K13 ["Src"]
       56 GETTABLEKS                       R8 R8 K18 ["Util"]
       58 GETTABLEKS                       R8 R8 K19 ["LookDescriptionUtils"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R1 K13 ["Src"]
       65 GETTABLEKS                       R9 R9 K18 ["Util"]
       67 GETTABLEKS                       R9 R9 K20 ["LookCameraUtils"]
       69 CALL                             R8 1 1
       70 DUPCLOSURE                       R9 K21 [PROTO_10]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 RETURN                           R9 1
