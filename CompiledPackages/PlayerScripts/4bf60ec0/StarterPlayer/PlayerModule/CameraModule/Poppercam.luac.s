PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["ToAxisAngle"]
        2 CALL                             R1 1 2
        3 MUL                              R3 R1 R2
        4 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Magnitude"]
        2 LOADK                            R2 K1 [1E-05]
        3 JUMPIFNOTLT                      R2 R1 ; [+7]
        5 GETIMPORT                        R2 K4 [CFrame.fromAxisAngle]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1
       11 GETUPVAL                         R2 0
       12 RETURN                           R2 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["GetComponents"]
        2 CALL                             R1 1 12
        3 GETIMPORT                        R13 K3 [CFrame.new]
        5 LOADN                            R14 0
        6 LOADN                            R15 0
        7 LOADN                            R16 0
        8 MOVE                             R17 R4
        9 MOVE                             R18 R5
       10 MOVE                             R19 R6
       11 MOVE                             R20 R7
       12 MOVE                             R21 R8
       13 MOVE                             R22 R9
       14 MOVE                             R23 R10
       15 MOVE                             R24 R11
       16 MOVE                             R25 R12
       17 CALL                             R13 12 -1
       18 RETURN                           R13 -1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{[1] = }]
        1 GETUPVAL                         R2 0
        2 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        4 GETIMPORT                        R0 K4 [setmetatable]
        6 CALL                             R0 2 1
        7 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MUL                              R2 R3 R0
        2 GETUPVAL                         R3 1
        3 ADD                              R1 R2 R3
        4 GETUPVAL                         R5 2
        5 MUL                              R4 R5 R0
        6 GETTABLEKS                       R5 R4 K0 ["Magnitude"]
        8 LOADK                            R6 K1 [1E-05]
        9 JUMPIFNOTLT                      R6 R5 ; [+8]
       11 GETIMPORT                        R6 K4 [CFrame.fromAxisAngle]
       13 MOVE                             R7 R4
       14 MOVE                             R8 R5
       15 CALL                             R6 2 1
       16 MOVE                             R3 R6
       17 JUMP                             ; [+1]
       18 GETUPVAL                         R3 3
       19 GETUPVAL                         R4 4
       20 MUL                              R2 R3 R4
       21 ADD                              R3 R2 R1
       22 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K0 ["lastCFrame"]
        2 OR                               R3 R4 R2
        3 SETTABLEKS                       R2 R0 K0 ["lastCFrame"]
        5 GETTABLEKS                       R4 R2 K1 ["Position"]
        7 NAMECALL                         R6 R2 K2 ["GetComponents"]
        9 CALL                             R6 1 12
       10 GETIMPORT                        R18 K5 [CFrame.new]
       12 LOADN                            R19 0
       13 LOADN                            R20 0
       14 LOADN                            R21 0
       15 MOVE                             R22 R9
       16 MOVE                             R23 R10
       17 MOVE                             R24 R11
       18 MOVE                             R25 R12
       19 MOVE                             R26 R13
       20 MOVE                             R27 R14
       21 MOVE                             R28 R15
       22 MOVE                             R29 R16
       23 MOVE                             R30 R17
       24 CALL                             R18 12 1
       25 MOVE                             R5 R18
       26 GETTABLEKS                       R6 R3 K1 ["Position"]
       28 NAMECALL                         R8 R3 K2 ["GetComponents"]
       30 CALL                             R8 1 12
       31 GETIMPORT                        R20 K5 [CFrame.new]
       33 LOADN                            R21 0
       34 LOADN                            R22 0
       35 LOADN                            R23 0
       36 MOVE                             R24 R11
       37 MOVE                             R25 R12
       38 MOVE                             R26 R13
       39 MOVE                             R27 R14
       40 MOVE                             R28 R15
       41 MOVE                             R29 R16
       42 MOVE                             R30 R17
       43 MOVE                             R31 R18
       44 MOVE                             R32 R19
       45 CALL                             R20 12 1
       46 MOVE                             R7 R20
       47 SUB                              R9 R4 R6
       48 DIV                              R8 R9 R1
       49 NAMECALL                         R12 R7 K6 ["inverse"]
       51 CALL                             R12 1 1
       52 MUL                              R11 R5 R12
       53 NAMECALL                         R12 R11 K7 ["ToAxisAngle"]
       55 CALL                             R12 1 2
       56 MUL                              R10 R12 R13
       57 DIV                              R9 R10 R1
       58 NEWCLOSURE                       R10 P0
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R9
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          VAL R5
       64 DUPTABLE                         R11 K11 [{"extrapolate", "posVelocity", "rotVelocity"}]
       65 SETTABLEKS                       R10 R11 K8 ["extrapolate"]
       67 SETTABLEKS                       R8 R11 K9 ["posVelocity"]
       69 SETTABLEKS                       R9 R11 K10 ["rotVelocity"]
       71 RETURN                           R11 1

PROTO_6:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["lastCFrame"]
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K0 ["new"]
       13 CALL                             R1 0 1
       14 SETTABLEKS                       R1 R0 K3 ["focusExtrapolator"]
       16 RETURN                           R0 1

PROTO_8:
        0 GETIMPORT                        R1 K3 [Enum.DevCameraOcclusionMode.Zoom]
        2 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["focusExtrapolator"]
        2 NAMECALL                         R2 R2 K1 ["Reset"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R5
        1 GETUPVAL                         R6 0
        2 JUMPIFNOT                        R6 ; [+25]
        3 GETIMPORT                        R6 K2 [CFrame.lookAlong]
        5 GETTABLEKS                       R7 R3 K3 ["Position"]
        7 GETTABLEKS                       R9 R2 K4 ["LookVector"]
        9 MINUS                            R8 R9
       10 CALL                             R6 2 1
       11 GETIMPORT                        R7 K6 [CFrame.new]
       13 LOADN                            R8 0
       14 LOADN                            R9 0
       15 LOADN                            R10 0
       16 LOADN                            R11 -1
       17 LOADN                            R12 0
       18 LOADN                            R13 0
       19 LOADN                            R14 0
       20 LOADN                            R15 1
       21 LOADN                            R16 0
       22 LOADN                            R17 0
       23 LOADN                            R18 0
       24 LOADN                            R19 -1
       25 CALL                             R7 12 1
       26 MUL                              R5 R6 R7
       27 JUMP                             ; [+23]
       28 GETIMPORT                        R6 K6 [CFrame.new]
       30 GETTABLEKS                       R7 R3 K3 ["Position"]
       32 GETTABLEKS                       R8 R2 K3 ["Position"]
       34 CALL                             R6 2 1
       35 GETIMPORT                        R7 K6 [CFrame.new]
       37 LOADN                            R8 0
       38 LOADN                            R9 0
       39 LOADN                            R10 0
       40 LOADN                            R11 -1
       41 LOADN                            R12 0
       42 LOADN                            R13 0
       43 LOADN                            R14 0
       44 LOADN                            R15 1
       45 LOADN                            R16 0
       46 LOADN                            R17 0
       47 LOADN                            R18 0
       48 LOADN                            R19 -1
       49 CALL                             R7 12 1
       50 MUL                              R5 R6 R7
       51 GETTABLEKS                       R6 R0 K7 ["focusExtrapolator"]
       53 MOVE                             R8 R1
       54 MOVE                             R9 R5
       55 NAMECALL                         R6 R6 K8 ["Step"]
       57 CALL                             R6 3 1
       58 GETUPVAL                         R7 1
       59 GETTABLEKS                       R7 R7 K9 ["Update"]
       61 MOVE                             R8 R1
       62 MOVE                             R9 R5
       63 MOVE                             R10 R6
       64 CALL                             R7 3 1
       65 GETIMPORT                        R9 K6 [CFrame.new]
       67 LOADN                            R10 0
       68 LOADN                            R11 0
       69 MOVE                             R12 R7
       70 CALL                             R9 3 1
       71 MUL                              R8 R5 R9
       72 MOVE                             R9 R3
       73 RETURN                           R8 2

PROTO_11:
        0 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 LOADK                            R3 K5 ["CommonUtils"]
       10 NAMECALL                         R1 R1 K6 ["WaitForChild"]
       12 CALL                             R1 2 -1
       13 CALL                             R0 -1 1
       14 GETTABLEKS                       R1 R0 K7 ["get"]
       16 LOADK                            R2 K8 ["FlagUtil"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K1 [require]
       20 GETIMPORT                        R3 K3 [script]
       22 GETTABLEKS                       R3 R3 K4 ["Parent"]
       24 LOADK                            R5 K9 ["ZoomController"]
       25 NAMECALL                         R3 R3 K6 ["WaitForChild"]
       27 CALL                             R3 2 -1
       28 CALL                             R2 -1 1
       29 GETTABLEKS                       R3 R1 K10 ["getUserFlag"]
       31 LOADK                            R4 K11 ["UserFixCameraFPError"]
       32 CALL                             R3 1 1
       33 NEWTABLE                         R4 4 0
       35 SETTABLEKS                       R4 R4 K12 ["__index"]
       37 GETIMPORT                        R5 K15 [CFrame.new]
       39 CALL                             R5 0 1
       40 DUPCLOSURE                       R6 K16 [PROTO_0]
       41 DUPCLOSURE                       R7 K17 [PROTO_1]
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R8 K18 [PROTO_2]
       44 DUPCLOSURE                       R9 K19 [PROTO_3]
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R9 R4 K14 ["new"]
       48 DUPCLOSURE                       R9 K20 [PROTO_5]
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R9 R4 K21 ["Step"]
       52 DUPCLOSURE                       R9 K22 [PROTO_6]
       53 SETTABLEKS                       R9 R4 K23 ["Reset"]
       55 GETIMPORT                        R5 K1 [require]
       57 GETIMPORT                        R6 K3 [script]
       59 GETTABLEKS                       R6 R6 K4 ["Parent"]
       61 LOADK                            R8 K24 ["BaseOcclusion"]
       62 NAMECALL                         R6 R6 K6 ["WaitForChild"]
       64 CALL                             R6 2 -1
       65 CALL                             R5 -1 1
       66 NEWTABLE                         R7 8 0
       68 FASTCALL2                        SETMETATABLE R7 R5 ; [+4]
       70 MOVE                             R8 R5
       71 GETIMPORT                        R6 K26 [setmetatable]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R6 K12 ["__index"]
       76 DUPCLOSURE                       R7 K27 [PROTO_7]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R7 R6 K14 ["new"]
       82 DUPCLOSURE                       R7 K28 [PROTO_8]
       83 SETTABLEKS                       R7 R6 K29 ["GetOcclusionMode"]
       85 DUPCLOSURE                       R7 K30 [PROTO_9]
       86 SETTABLEKS                       R7 R6 K31 ["Enable"]
       88 DUPCLOSURE                       R7 K32 [PROTO_10]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R7 R6 K33 ["Update"]
       93 DUPCLOSURE                       R7 K34 [PROTO_11]
       94 SETTABLEKS                       R7 R6 K35 ["CharacterAdded"]
       96 DUPCLOSURE                       R7 K36 [PROTO_12]
       97 SETTABLEKS                       R7 R6 K37 ["CharacterRemoving"]
       99 DUPCLOSURE                       R7 K38 [PROTO_13]
      100 SETTABLEKS                       R7 R6 K39 ["OnCameraSubjectChanged"]
      102 RETURN                           R6 1
