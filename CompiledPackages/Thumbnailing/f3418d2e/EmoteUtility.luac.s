PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["X"]
        2 GETTABLEKS                       R3 R1 K1 ["Y"]
        4 GETTABLEKS                       R4 R1 K2 ["Z"]
        6 POWK                             R8 R2 K3 [2]
        7 POWK                             R9 R3 K3 [2]
        8 ADD                              R7 R8 R9
        9 POWK                             R8 R4 K3 [2]
       10 ADD                              R6 R7 R8
       11 FASTCALL1                        MATH_SQRT R6 ; [+2]
       12 GETIMPORT                        R5 K6 [math.sqrt]
       14 CALL                             R5 1 1
       15 FASTCALL1                        MATH_RAD R0 ; [+3]
       16 MOVE                             R10 R0
       17 GETIMPORT                        R9 K9 [math.rad]
       19 CALL                             R9 1 1
       20 DIVK                             R8 R9 K3 [2]
       21 FASTCALL1                        MATH_TAN R8 ; [+2]
       22 GETIMPORT                        R7 K11 [math.tan]
       24 CALL                             R7 1 1
       25 DIVRK                            R6 R7 K7 [1]
       26 DIVK                             R7 R5 K3 [2]
       27 MUL                              R8 R7 R6
       28 RETURN                           R8 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R0 R1 K2 ["GetService"]
        4 MOVE                             R2 R0
        5 GETIMPORT                        R3 K1 [game]
        7 LOADK                            R4 K3 ["ThumbnailGenerator"]
        8 CALL                             R2 2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_4]
        3 CALL                             R0 1 2
        4 AND                              R2 R0 R1
        5 RETURN                           R2 1

PROTO_6:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETIMPORT                        R5 K1 [pcall]
        4 DUPCLOSURE                       R6 K2 [PROTO_4]
        5 CALL                             R5 1 2
        6 AND                              R4 R5 R6
        7 JUMPIFNOT                        R4 ; [+2]
        8 LOADK                            R2 K3 ["RCC"]
        9 JUMP                             ; [+1]
       10 LOADK                            R2 K4 ["Client"]
       11 JUMPIFNOT                        R1 ; [+2]
       12 LOADK                            R3 K5 ["Success"]
       13 JUMP                             ; [+1]
       14 LOADK                            R3 K6 ["Failure"]
       15 MOVE                             R5 R2
       16 LOADK                            R6 K7 ["_"]
       17 MOVE                             R7 R0
       18 LOADK                            R8 K7 ["_"]
       19 MOVE                             R9 R3
       20 CONCAT                           R4 R5 R9
       21 GETUPVAL                         R5 0
       22 MOVE                             R7 R4
       23 NAMECALL                         R5 R5 K8 ["ReportCounter"]
       25 CALL                             R5 2 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [game]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R1 R1 K2 ["GetObjects"]
        5 CALL                             R1 2 1
        6 GETTABLEN                        R0 R1 1
        7 RETURN                           R0 1

PROTO_8:
        0 LOADB                            R2 1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["number"] ; [+10]
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFEQKS                       R3 K3 ["string"] ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       19 LOADK                            R3 K4 ["getAnimationAndIsIdle expects animationAssetIdOrUrl to be a number or string"]
       20 GETIMPORT                        R1 K6 [assert]
       22 CALL                             R1 2 0
       23 LOADNIL                          R1
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FASTCALL1                        TYPEOF R0 ; [+3]
       27 MOVE                             R5 R0
       28 GETIMPORT                        R4 K1 [typeof]
       30 CALL                             R4 1 1
       31 JUMPIFNOTEQKS                    R4 K2 ["number"] ; [+17]
       33 LOADNIL                          R4
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R5 R6 K7 ["LoadAsset"]
       37 MOVE                             R6 R0
       38 CALL                             R5 1 2
       39 MOVE                             R2 R5
       40 MOVE                             R4 R6
       41 JUMPIFNOT                        R2 ; [+5]
       42 JUMPIFNOT                        R4 ; [+4]
       43 NAMECALL                         R5 R4 K8 ["GetChildren"]
       45 CALL                             R5 1 1
       46 GETTABLEN                        R1 R5 1
       47 LOADK                            R3 K9 ["EmoteUtility_LoadAsset"]
       48 JUMP                             ; [+12]
       49 LOADNIL                          R4
       50 GETIMPORT                        R5 K11 [pcall]
       52 NEWCLOSURE                       R6 P0
       53 CAPTURE                          VAL R0
       54 CALL                             R5 1 2
       55 MOVE                             R2 R5
       56 MOVE                             R4 R6
       57 JUMPIFNOT                        R2 ; [+2]
       58 JUMPIFNOT                        R4 ; [+1]
       59 MOVE                             R1 R4
       60 LOADK                            R3 K12 ["EmoteUtility_GetObjects"]
       61 MOVE                             R4 R3
       62 MOVE                             R5 R2
       63 LOADNIL                          R6
       64 LOADNIL                          R7
       65 GETIMPORT                        R9 K11 [pcall]
       67 DUPCLOSURE                       R10 K13 [PROTO_4]
       68 CALL                             R9 1 2
       69 AND                              R8 R9 R10
       70 JUMPIFNOT                        R8 ; [+2]
       71 LOADK                            R6 K14 ["RCC"]
       72 JUMP                             ; [+1]
       73 LOADK                            R6 K15 ["Client"]
       74 JUMPIFNOT                        R5 ; [+2]
       75 LOADK                            R7 K16 ["Success"]
       76 JUMP                             ; [+1]
       77 LOADK                            R7 K17 ["Failure"]
       78 MOVE                             R9 R6
       79 LOADK                            R10 K18 ["_"]
       80 MOVE                             R11 R4
       81 LOADK                            R12 K18 ["_"]
       82 MOVE                             R13 R7
       83 CONCAT                           R8 R9 R13
       84 GETUPVAL                         R9 1
       85 MOVE                             R11 R8
       86 NAMECALL                         R9 R9 K19 ["ReportCounter"]
       88 CALL                             R9 2 0
       89 JUMPIFNOT                        R2 ; [+1]
       90 JUMPIF                           R1 ; [+26]
       91 LOADNIL                          R4
       92 GETIMPORT                        R6 K11 [pcall]
       94 DUPCLOSURE                       R7 K13 [PROTO_4]
       95 CALL                             R6 1 2
       96 AND                              R5 R6 R7
       97 JUMPIFNOT                        R5 ; [+2]
       98 LOADK                            R4 K14 ["RCC"]
       99 JUMP                             ; [+1]
      100 LOADK                            R4 K15 ["Client"]
      101 MOVE                             R6 R3
      102 LOADK                            R7 K20 ["_Failed"]
      103 CONCAT                           R5 R6 R7
      104 GETUPVAL                         R6 1
      105 MOVE                             R8 R4
      106 LOADK                            R9 K21 ["EmoteUtility_getPoseAsset"]
      107 MOVE                             R10 R5
      108 DUPTABLE                         R11 K23 [{"animationAssetIdOrUrl"}]
      109 SETTABLEKS                       R0 R11 K22 ["animationAssetIdOrUrl"]
      111 NAMECALL                         R6 R6 K24 ["SendEventDeferred"]
      113 CALL                             R6 5 0
      114 LOADNIL                          R6
      115 LOADNIL                          R7
      116 RETURN                           R6 2
      117 FASTCALL2K                       ASSERT R1 K25 ; [+5]
      119 MOVE                             R5 R1
      120 LOADK                            R6 K25 ["animation is non-nil. Silence type checker."]
      121 GETIMPORT                        R4 K6 [assert]
      123 CALL                             R4 2 0
      124 LOADB                            R4 0
      125 GETTABLEKS                       R5 R1 K26 ["ClassName"]
      127 JUMPIFNOTEQKS                    R5 K27 ["Folder"] ; [+41]
      129 LOADB                            R4 1
      130 LOADK                            R7 K28 ["Pose"]
      131 LOADB                            R8 1
      132 NAMECALL                         R5 R1 K29 ["FindFirstChild"]
      134 CALL                             R5 3 1
      135 JUMPIF                           R5 ; [+5]
      136 LOADK                            R7 K30 ["pose"]
      137 LOADB                            R8 1
      138 NAMECALL                         R5 R1 K29 ["FindFirstChild"]
      140 CALL                             R5 3 1
      141 JUMPIFNOTEQKNIL                  R5 ; [+13]
      143 LOADK                            R8 K31 ["Idle"]
      144 LOADB                            R9 1
      145 NAMECALL                         R6 R1 K29 ["FindFirstChild"]
      147 CALL                             R6 3 1
      148 JUMPIF                           R6 ; [+5]
      149 LOADK                            R8 K32 ["idle"]
      150 LOADB                            R9 1
      151 NAMECALL                         R6 R1 K29 ["FindFirstChild"]
      153 CALL                             R6 3 1
      154 MOVE                             R5 R6
      155 JUMPIFNOT                        R5 ; [+7]
      156 LOADK                            R8 K33 ["Animation"]
      157 LOADB                            R9 1
      158 NAMECALL                         R6 R5 K34 ["FindFirstChildWhichIsA"]
      160 CALL                             R6 3 1
      161 MOVE                             R1 R6
      162 JUMP                             ; [+6]
      163 LOADK                            R8 K33 ["Animation"]
      164 LOADB                            R9 1
      165 NAMECALL                         R6 R1 K34 ["FindFirstChildWhichIsA"]
      167 CALL                             R6 3 1
      168 MOVE                             R1 R6
      169 MOVE                             R5 R1
      170 MOVE                             R6 R4
      171 RETURN                           R5 2

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAnimationClipAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_10:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["debugLoadAssetsFromFiles"]
        5 JUMPIFNOT                        R3 ; [+41]
        6 LOADNIL                          R3
        7 GETIMPORT                        R4 K3 [string.gmatch]
        9 MOVE                             R5 R0
       10 LOADK                            R6 K4 [".*id=([0-9]+)"]
       11 CALL                             R4 2 3
       12 FORGPREP                         R4
       13 MOVE                             R3 R7
       14 FORGLOOP                         R4 1 ; [-2]
       16 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       18 MOVE                             R5 R3
       19 LOADK                            R6 K5 ["assetId should be non-nil"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 FASTCALL1                        TONUMBER R3 ; [+3]
       24 MOVE                             R5 R3
       25 GETIMPORT                        R4 K9 [tonumber]
       27 CALL                             R4 1 1
       28 FASTCALL2K                       ASSERT R4 K10 ; [+5]
       30 MOVE                             R6 R4
       31 LOADK                            R7 K10 ["assetIdAsNumber should be non-nil"]
       32 GETIMPORT                        R5 K7 [assert]
       34 CALL                             R5 2 0
       35 LOADNIL                          R5
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K11 ["LoadAsset"]
       39 MOVE                             R7 R4
       40 CALL                             R6 1 2
       41 MOVE                             R1 R6
       42 MOVE                             R5 R7
       43 JUMPIFNOT                        R1 ; [+11]
       44 JUMPIFNOT                        R5 ; [+10]
       45 MOVE                             R2 R5
       46 JUMP                             ; [+8]
       47 GETIMPORT                        R3 K13 [pcall]
       49 NEWCLOSURE                       R4 P0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R0
       52 CALL                             R3 1 2
       53 MOVE                             R1 R3
       54 MOVE                             R2 R4
       55 MOVE                             R3 R1
       56 LOADNIL                          R4
       57 LOADNIL                          R5
       58 GETIMPORT                        R7 K13 [pcall]
       60 DUPCLOSURE                       R8 K14 [PROTO_4]
       61 CALL                             R7 1 2
       62 AND                              R6 R7 R8
       63 JUMPIFNOT                        R6 ; [+2]
       64 LOADK                            R4 K15 ["RCC"]
       65 JUMP                             ; [+1]
       66 LOADK                            R4 K16 ["Client"]
       67 JUMPIFNOT                        R3 ; [+2]
       68 LOADK                            R5 K17 ["Success"]
       69 JUMP                             ; [+1]
       70 LOADK                            R5 K18 ["Failure"]
       71 MOVE                             R7 R4
       72 LOADK                            R8 K19 ["_"]
       73 LOADK                            R9 K20 ["EmoteUtility_GetAnimationClipAsync"]
       74 LOADK                            R10 K19 ["_"]
       75 MOVE                             R11 R5
       76 CONCAT                           R6 R7 R11
       77 GETUPVAL                         R7 2
       78 MOVE                             R9 R6
       79 NAMECALL                         R7 R7 K21 ["ReportCounter"]
       81 CALL                             R7 2 0
       82 JUMPIF                           R1 ; [+22]
       83 LOADNIL                          R3
       84 GETIMPORT                        R5 K13 [pcall]
       86 DUPCLOSURE                       R6 K14 [PROTO_4]
       87 CALL                             R5 1 2
       88 AND                              R4 R5 R6
       89 JUMPIFNOT                        R4 ; [+2]
       90 LOADK                            R3 K15 ["RCC"]
       91 JUMP                             ; [+1]
       92 LOADK                            R3 K16 ["Client"]
       93 GETUPVAL                         R4 2
       94 MOVE                             R6 R3
       95 LOADK                            R7 K22 ["EmoteUtility_GetAnimationClip"]
       96 LOADK                            R8 K23 ["EmoteUtility_GetAnimationClip_GetAnimationClipAsyncFailed"]
       97 DUPTABLE                         R9 K25 [{"keyframeSequenceId"}]
       98 SETTABLEKS                       R0 R9 K24 ["keyframeSequenceId"]
      100 NAMECALL                         R4 R4 K26 ["SendEventDeferred"]
      102 CALL                             R4 5 0
      103 LOADNIL                          R4
      104 RETURN                           R4 1
      105 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_13:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        4 MOVE                             R4 R1
        5 LOADK                            R5 K0 ["parentPose is non-nil. Silence type checker."]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R5 R1 K3 ["Name"]
       11 NAMECALL                         R3 R0 K4 ["FindFirstChild"]
       13 CALL                             R3 2 1
       14 JUMPIF                           R3 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R6 R2 K3 ["Name"]
       18 NAMECALL                         R4 R3 K4 ["FindFirstChild"]
       20 CALL                             R4 2 1
       21 JUMPIF                           R4 ; [+1]
       22 RETURN                           R0 0
       23 NAMECALL                         R5 R2 K5 ["GetChildren"]
       25 CALL                             R5 1 3
       26 FORGPREP                         R5
       27 LOADK                            R12 K6 ["NumberPose"]
       28 NAMECALL                         R10 R9 K7 ["IsA"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+11]
       32 GETTABLEKS                       R10 R9 K3 ["Name"]
       34 GETTABLEKS                       R11 R9 K8 ["Value"]
       36 GETIMPORT                        R12 K10 [pcall]
       38 NEWCLOSURE                       R13 P0
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R10
       41 CAPTURE                          VAL R11
       42 CALL                             R12 1 0
       43 FORGLOOP                         R5 2 ; [-17]
       45 RETURN                           R0 0

PROTO_14:
        0 JUMPIFNOT                        R0 ; [+47]
        1 LOADK                            R4 K0 ["Pose"]
        2 NAMECALL                         R2 R1 K1 ["IsA"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+42]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R4 R0 K2 ["Name"]
        9 NAMECALL                         R2 R2 K3 ["FindFirstChild"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R5 R1 K2 ["Name"]
       15 NAMECALL                         R3 R3 K3 ["FindFirstChild"]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K4 ["GetMotor6DBetween"]
       21 MOVE                             R5 R2
       22 MOVE                             R6 R3
       23 CALL                             R4 2 1
       24 MOVE                             R5 R4
       25 JUMPIFNOT                        R5 ; [+7]
       26 GETUPVAL                         R8 2
       27 GETTABLE                         R7 R8 R4
       28 JUMPIF                           R7 ; [+2]
       29 LOADB                            R6 0
       30 JUMP                             ; [+1]
       31 LOADB                            R6 1
       32 NOT                              R5 R6
       33 JUMPIFNOT                        R5 ; [+14]
       34 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       36 MOVE                             R7 R4
       37 LOADK                            R8 K5 ["motor6d is non-nil. Silence type checker."]
       38 GETIMPORT                        R6 K7 [assert]
       40 CALL                             R6 2 0
       41 GETTABLEKS                       R6 R1 K8 ["CFrame"]
       43 SETTABLEKS                       R6 R4 K9 ["Transform"]
       45 GETUPVAL                         R6 2
       46 LOADB                            R7 1
       47 SETTABLE                         R7 R6 R4
       48 LOADK                            R4 K10 ["Folder"]
       49 NAMECALL                         R2 R1 K1 ["IsA"]
       51 CALL                             R2 2 1
       52 JUMPIFNOT                        R2 ; [+6]
       53 GETUPVAL                         R2 3
       54 GETUPVAL                         R3 0
       55 MOVE                             R4 R0
       56 MOVE                             R5 R1
       57 CALL                             R2 3 0
       58 RETURN                           R0 0
       59 NAMECALL                         R2 R1 K11 ["GetChildren"]
       61 CALL                             R2 1 3
       62 FORGPREP                         R2
       63 GETUPVAL                         R7 4
       64 MOVE                             R8 R1
       65 MOVE                             R9 R6
       66 CALL                             R7 2 0
       67 FORGLOOP                         R2 2 ; [-5]
       69 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R2
        6 JUMPIFNOT                        R1 ; [+25]
        7 GETIMPORT                        R3 K1 [pairs]
        9 NAMECALL                         R4 R1 K2 ["GetPoses"]
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 3
       13 FORGPREP_NEXT                    R3
       14 LOADK                            R10 K3 ["Folder"]
       15 NAMECALL                         R8 R7 K4 ["IsA"]
       17 CALL                             R8 2 1
       18 JUMPIFNOT                        R8 ; [+1]
       19 JUMP                             ; [+10]
       20 NAMECALL                         R8 R7 K5 ["GetChildren"]
       22 CALL                             R8 1 3
       23 FORGPREP                         R8
       24 MOVE                             R13 R2
       25 MOVE                             R14 R7
       26 MOVE                             R15 R12
       27 CALL                             R13 2 0
       28 FORGLOOP                         R8 2 ; [-5]
       30 FORGLOOP                         R3 2 ; [-17]
       32 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOT                        R1 ; [+2]
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+2]
        3 RETURN                           R0 1
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K1 ["rotationDegrees is non-nil. Silence type checker."]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 NAMECALL                         R2 R0 K4 ["Clone"]
       13 CALL                             R2 1 1
       14 NAMECALL                         R4 R2 K5 ["GetPoses"]
       16 CALL                             R4 1 1
       17 GETTABLEN                        R3 R4 1
       18 JUMPIFNOT                        R3 ; [+20]
       19 NAMECALL                         R5 R3 K6 ["GetSubPoses"]
       21 CALL                             R5 1 1
       22 GETTABLEN                        R4 R5 1
       23 JUMPIFNOT                        R4 ; [+15]
       24 GETTABLEKS                       R6 R4 K7 ["CFrame"]
       26 GETIMPORT                        R7 K9 [CFrame.Angles]
       28 LOADN                            R8 0
       29 FASTCALL1                        MATH_RAD R1 ; [+3]
       30 MOVE                             R10 R1
       31 GETIMPORT                        R9 K12 [math.rad]
       33 CALL                             R9 1 1
       34 LOADN                            R10 0
       35 CALL                             R7 3 1
       36 MUL                              R5 R6 R7
       37 SETTABLEKS                       R5 R4 K7 ["CFrame"]
       39 RETURN                           R2 1

PROTO_17:
        0 LOADK                            R4 K0 ["EulerRotationCurve"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+5]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R0 K2 ["GetRotationAtTime"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 LOADK                            R4 K3 ["RotationCurve"]
       11 NAMECALL                         R2 R0 K1 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+5]
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R0 K4 ["GetValueAtTime"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1
       20 GETIMPORT                        R2 K6 [error]
       22 LOADK                            R4 K7 ["Unsupported rotation type:"]
       23 GETTABLEKS                       R5 R0 K8 ["ClassName"]
       25 CONCAT                           R3 R4 R5
       26 CALL                             R2 1 0
       27 LOADNIL                          R2
       28 RETURN                           R2 1

PROTO_18:
        0 GETIMPORT                        R2 K1 [pairs]
        2 NAMECALL                         R3 R0 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_NEXT                    R2
        7 LOADK                            R9 K3 ["Attachment"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+4]
       12 GETTABLEKS                       R7 R6 K5 ["Name"]
       14 SETTABLE                         R6 R1 R7
       15 JUMP                             ; [+14]
       16 LOADK                            R9 K6 ["Tool"]
       17 NAMECALL                         R7 R6 K4 ["IsA"]
       19 CALL                             R7 2 1
       20 JUMPIF                           R7 ; [+9]
       21 LOADK                            R9 K7 ["Accoutrement"]
       22 NAMECALL                         R7 R6 K4 ["IsA"]
       24 CALL                             R7 2 1
       25 JUMPIF                           R7 ; [+4]
       26 GETUPVAL                         R7 0
       27 MOVE                             R8 R6
       28 MOVE                             R9 R1
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-24]
       32 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R1 1

PROTO_20:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R1 1

PROTO_21:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Weld"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R0 K4 ["Parent"]
        6 SETTABLEKS                       R3 R2 K5 ["Part0"]
        8 GETTABLEKS                       R3 R1 K4 ["Parent"]
       10 SETTABLEKS                       R3 R2 K6 ["Part1"]
       12 GETTABLEKS                       R3 R0 K7 ["CFrame"]
       14 SETTABLEKS                       R3 R2 K8 ["C0"]
       16 GETTABLEKS                       R3 R1 K7 ["CFrame"]
       18 SETTABLEKS                       R3 R2 K9 ["C1"]
       20 GETTABLEKS                       R3 R0 K4 ["Parent"]
       22 SETTABLEKS                       R3 R2 K4 ["Parent"]
       24 RETURN                           R2 1

PROTO_22:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 MOVE                             R7 R4
        5 CALL                             R5 2 0
        6 MOVE                             R3 R4
        7 NEWTABLE                         R5 0 0
        9 GETUPVAL                         R6 0
       10 MOVE                             R7 R2
       11 MOVE                             R8 R5
       12 CALL                             R6 2 0
       13 MOVE                             R4 R5
       14 LOADB                            R5 0
       15 GETIMPORT                        R6 K1 [pairs]
       17 MOVE                             R7 R4
       18 CALL                             R6 1 3
       19 FORGPREP_NEXT                    R6
       20 GETTABLEKS                       R12 R10 K2 ["Name"]
       22 GETTABLE                         R11 R3 R12
       23 JUMPIFNOT                        R11 ; [+25]
       24 LOADB                            R5 1
       25 GETIMPORT                        R12 K5 [Instance.new]
       27 LOADK                            R13 K6 ["Weld"]
       28 CALL                             R12 1 1
       29 GETTABLEKS                       R13 R11 K7 ["Parent"]
       31 SETTABLEKS                       R13 R12 K8 ["Part0"]
       33 GETTABLEKS                       R13 R10 K7 ["Parent"]
       35 SETTABLEKS                       R13 R12 K9 ["Part1"]
       37 GETTABLEKS                       R13 R11 K10 ["CFrame"]
       39 SETTABLEKS                       R13 R12 K11 ["C0"]
       41 GETTABLEKS                       R13 R10 K10 ["CFrame"]
       43 SETTABLEKS                       R13 R12 K12 ["C1"]
       45 GETTABLEKS                       R13 R11 K7 ["Parent"]
       47 SETTABLEKS                       R13 R12 K7 ["Parent"]
       49 FORGLOOP                         R6 2 ; [-30]
       51 JUMPIFNOT                        R5 ; [+3]
       52 SETTABLEKS                       R0 R2 K7 ["Parent"]
       54 RETURN                           R0 0
       55 LOADNIL                          R6
       56 SETTABLEKS                       R6 R2 K7 ["Parent"]
       58 LOADK                            R8 K13 ["Handle"]
       59 NAMECALL                         R6 R2 K14 ["FindFirstChild"]
       61 CALL                             R6 2 1
       62 GETTABLEKS                       R7 R2 K15 ["Grip"]
       64 JUMPIFNOT                        R6 ; [+17]
       65 JUMPIFNOT                        R7 ; [+16]
       66 GETTABLEKS                       R8 R3 K16 ["RightGripAttachment"]
       68 JUMPIFNOT                        R8 ; [+13]
       69 GETTABLEKS                       R9 R8 K7 ["Parent"]
       71 GETTABLEKS                       R12 R9 K10 ["CFrame"]
       73 GETTABLEKS                       R13 R8 K10 ["CFrame"]
       75 MUL                              R11 R12 R13
       76 NAMECALL                         R12 R7 K17 ["Inverse"]
       78 CALL                             R12 1 1
       79 MUL                              R10 R11 R12
       80 SETTABLEKS                       R10 R6 K10 ["CFrame"]
       82 MOVE                             R10 R2
       83 NAMECALL                         R8 R1 K18 ["EquipTool"]
       85 CALL                             R8 2 0
       86 RETURN                           R0 0

PROTO_23:
        0 JUMPIFNOT                        R6 ; [+9]
        1 GETUPVAL                         R7 0
        2 MOVE                             R8 R0
        3 MOVE                             R9 R6
        4 CALL                             R7 2 0
        5 GETUPVAL                         R7 0
        6 MOVE                             R8 R0
        7 MOVE                             R9 R4
        8 CALL                             R7 2 0
        9 JUMP                             ; [+10]
       10 GETUPVAL                         R7 0
       11 MOVE                             R8 R0
       12 MOVE                             R9 R5
       13 CALL                             R7 2 0
       14 JUMPIFEQKNIL                     R3 ; [+5]
       16 GETUPVAL                         R7 0
       17 MOVE                             R8 R0
       18 MOVE                             R9 R4
       19 CALL                             R7 2 0
       20 GETUPVAL                         R7 1
       21 MOVE                             R8 R0
       22 MOVE                             R9 R1
       23 MOVE                             R10 R2
       24 CALL                             R7 3 0
       25 RETURN                           R0 0

PROTO_24:
        0 LOADNIL                          R4
        1 LOADB                            R5 0
        2 LOADNIL                          R6
        3 JUMPIFNOT                        R1 ; [+85]
        4 MOVE                             R6 R1
        5 GETUPVAL                         R7 0
        6 MOVE                             R8 R1
        7 CALL                             R7 1 2
        8 JUMPIFNOTEQKNIL                  R7 ; [+5]
       10 LOADNIL                          R9
       11 MOVE                             R10 R5
       12 MOVE                             R11 R6
       13 RETURN                           R9 3
       14 FASTCALL2K                       ASSERT R7 K0 ; [+5]
       16 MOVE                             R10 R7
       17 LOADK                            R11 K0 ["animation is non-nil. Silence type checker."]
       18 GETIMPORT                        R9 K2 [assert]
       20 CALL                             R9 2 0
       21 JUMPIF                           R8 ; [+1]
       22 LOADB                            R5 1
       23 GETUPVAL                         R10 1
       24 GETTABLEKS                       R9 R10 K3 ["GetNumberValueWithDefault"]
       26 MOVE                             R10 R7
       27 LOADK                            R11 K4 ["ThumbnailKeyframe"]
       28 LOADNIL                          R12
       29 CALL                             R9 3 1
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R10 R11 K3 ["GetNumberValueWithDefault"]
       33 MOVE                             R11 R7
       34 LOADK                            R12 K5 ["ThumbnailTime"]
       35 LOADNIL                          R13
       36 CALL                             R10 3 1
       37 LOADN                            R11 0
       38 JUMPIFNOT                        R2 ; [+8]
       39 GETUPVAL                         R13 1
       40 GETTABLEKS                       R12 R13 K3 ["GetNumberValueWithDefault"]
       42 MOVE                             R13 R7
       43 LOADK                            R14 K6 ["ThumbnailCharacterRotation"]
       44 LOADN                            R15 0
       45 CALL                             R12 3 1
       46 MOVE                             R11 R12
       47 GETUPVAL                         R13 1
       48 GETTABLEKS                       R12 R13 K7 ["GetAnimationClip"]
       50 MOVE                             R13 R7
       51 CALL                             R12 1 1
       52 JUMPIFNOT                        R12 ; [+80]
       53 LOADK                            R15 K8 ["KeyframeSequence"]
       54 NAMECALL                         R13 R12 K9 ["IsA"]
       56 CALL                             R13 2 1
       57 JUMPIFNOT                        R13 ; [+9]
       58 GETUPVAL                         R14 1
       59 GETTABLEKS                       R13 R14 K10 ["GetThumbnailKeyframe"]
       61 MOVE                             R14 R9
       62 MOVE                             R15 R12
       63 MOVE                             R16 R11
       64 CALL                             R13 3 1
       65 MOVE                             R4 R13
       66 RETURN                           R4 3
       67 LOADK                            R15 K11 ["CurveAnimation"]
       68 NAMECALL                         R13 R12 K9 ["IsA"]
       70 CALL                             R13 2 1
       71 JUMPIFNOT                        R13 ; [+9]
       72 GETUPVAL                         R14 1
       73 GETTABLEKS                       R13 R14 K12 ["GetThumbnailKeyframeFromCurve"]
       75 MOVE                             R14 R10
       76 MOVE                             R15 R12
       77 MOVE                             R16 R11
       78 CALL                             R13 3 1
       79 MOVE                             R4 R13
       80 RETURN                           R4 3
       81 GETIMPORT                        R13 K14 [error]
       83 LOADK                            R15 K15 ["Unsupported Animation type:"]
       84 GETTABLEKS                       R16 R12 K16 ["ClassName"]
       86 CONCAT                           R14 R15 R16
       87 CALL                             R13 1 0
       88 RETURN                           R4 3
       89 JUMPIFNOT                        R3 ; [+43]
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R7 R8 K17 ["FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL"]
       93 LOADK                            R10 K18 ["Animate"]
       94 NAMECALL                         R8 R0 K19 ["FindFirstChild"]
       96 CALL                             R8 2 1
       97 JUMPIFNOT                        R8 ; [+17]
       98 LOADK                            R11 K20 ["Pose"]
       99 NAMECALL                         R9 R8 K19 ["FindFirstChild"]
      101 CALL                             R9 2 1
      102 JUMPIF                           R9 ; [+4]
      103 LOADK                            R11 K21 ["pose"]
      104 NAMECALL                         R9 R8 K19 ["FindFirstChild"]
      106 CALL                             R9 2 1
      107 JUMPIFNOT                        R9 ; [+7]
      108 LOADK                            R12 K22 ["Animation"]
      109 NAMECALL                         R10 R9 K23 ["FindFirstChildOfClass"]
      111 CALL                             R10 2 1
      112 JUMPIFNOT                        R10 ; [+2]
      113 GETTABLEKS                       R7 R10 K24 ["AnimationId"]
      115 MOVE                             R6 R7
      116 GETUPVAL                         R9 2
      117 MOVE                             R10 R7
      118 CALL                             R9 1 1
      119 JUMPIFNOT                        R9 ; [+13]
      120 LOADK                            R12 K8 ["KeyframeSequence"]
      121 NAMECALL                         R10 R9 K9 ["IsA"]
      123 CALL                             R10 2 1
      124 JUMPIF                           R10 ; [+4]
      125 LOADNIL                          R10
      126 LOADB                            R11 0
      127 MOVE                             R12 R6
      128 RETURN                           R10 3
      129 NAMECALL                         R10 R9 K25 ["GetKeyframes"]
      131 CALL                             R10 1 1
      132 GETTABLEN                        R4 R10 1
      133 RETURN                           R4 3

PROTO_25:
        0 LOADNIL                          R1
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K0 ["moodAssetId is non-nil. Silence type checker."]
        8 GETIMPORT                        R2 K2 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 0
       12 MOVE                             R3 R0
       13 CALL                             R2 1 2
       14 JUMPIFNOTEQKNIL                  R2 ; [+3]
       16 LOADNIL                          R4
       17 RETURN                           R4 1
       18 FASTCALL2K                       ASSERT R2 K3 ; [+5]
       20 MOVE                             R5 R2
       21 LOADK                            R6 K3 ["animation is non-nil. Silence type checker."]
       22 GETIMPORT                        R4 K2 [assert]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K4 ["GetNumberValueWithDefault"]
       28 MOVE                             R5 R2
       29 LOADK                            R6 K5 ["ThumbnailKeyframe"]
       30 LOADNIL                          R7
       31 CALL                             R4 3 1
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K4 ["GetNumberValueWithDefault"]
       35 MOVE                             R6 R2
       36 LOADK                            R7 K6 ["ThumbnailTime"]
       37 LOADNIL                          R8
       38 CALL                             R5 3 1
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R6 R7 K7 ["GetAnimationClip"]
       42 MOVE                             R7 R2
       43 CALL                             R6 1 1
       44 JUMPIFNOT                        R6 ; [+35]
       45 LOADK                            R9 K8 ["KeyframeSequence"]
       46 NAMECALL                         R7 R6 K9 ["IsA"]
       48 CALL                             R7 2 1
       49 JUMPIFNOT                        R7 ; [+9]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K10 ["GetThumbnailKeyframe"]
       53 MOVE                             R8 R4
       54 MOVE                             R9 R6
       55 LOADN                            R10 0
       56 CALL                             R7 3 1
       57 MOVE                             R1 R7
       58 RETURN                           R1 1
       59 LOADK                            R9 K11 ["CurveAnimation"]
       60 NAMECALL                         R7 R6 K9 ["IsA"]
       62 CALL                             R7 2 1
       63 JUMPIFNOT                        R7 ; [+9]
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R7 R8 K12 ["GetThumbnailKeyframeFromCurve"]
       67 MOVE                             R8 R5
       68 MOVE                             R9 R6
       69 LOADN                            R10 0
       70 CALL                             R7 3 1
       71 MOVE                             R1 R7
       72 RETURN                           R1 1
       73 GETIMPORT                        R7 K14 [error]
       75 LOADK                            R9 K15 ["Unsupported Animation type:"]
       76 GETTABLEKS                       R10 R6 K16 ["ClassName"]
       78 CONCAT                           R8 R9 R10
       79 CALL                             R7 1 0
       80 RETURN                           R1 1

PROTO_26:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADK                            R6 K0 ["Tool"]
        3 NAMECALL                         R4 R0 K1 ["FindFirstChildOfClass"]
        5 CALL                             R4 2 1
        6 JUMPIF                           R4 ; [+3]
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 RETURN                           R5 2
       10 FASTCALL2K                       ASSERT R4 K2 ; [+5]
       12 MOVE                             R6 R4
       13 LOADK                            R7 K2 ["tool is non-nil. Silence type checker."]
       14 GETIMPORT                        R5 K4 [assert]
       16 CALL                             R5 2 0
       17 LOADB                            R5 0
       18 JUMPIF                           R1 ; [+12]
       19 LOADK                            R8 K5 ["ThumbnailPose"]
       20 NAMECALL                         R6 R4 K6 ["FindFirstChild"]
       22 CALL                             R6 2 1
       23 MOVE                             R2 R6
       24 JUMPIFNOT                        R2 ; [+6]
       25 LOADK                            R8 K7 ["Keyframe"]
       26 NAMECALL                         R6 R2 K8 ["IsA"]
       28 CALL                             R6 2 1
       29 JUMPIFNOT                        R6 ; [+1]
       30 LOADB                            R5 1
       31 JUMPIF                           R5 ; [+78]
       32 LOADNIL                          R2
       33 LOADK                            R8 K9 ["Animate"]
       34 NAMECALL                         R6 R0 K6 ["FindFirstChild"]
       36 CALL                             R6 2 1
       37 JUMPIF                           R6 ; [+3]
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 RETURN                           R7 2
       41 FASTCALL2K                       ASSERT R6 K10 ; [+5]
       43 MOVE                             R8 R6
       44 LOADK                            R9 K10 ["animateScript is non-nil. Silence type checker."]
       45 GETIMPORT                        R7 K4 [assert]
       47 CALL                             R7 2 0
       48 LOADK                            R9 K11 ["toolnone"]
       49 NAMECALL                         R7 R6 K6 ["FindFirstChild"]
       51 CALL                             R7 2 1
       52 JUMPIF                           R7 ; [+3]
       53 LOADNIL                          R8
       54 LOADNIL                          R9
       55 RETURN                           R8 2
       56 FASTCALL2K                       ASSERT R7 K12 ; [+5]
       58 MOVE                             R9 R7
       59 LOADK                            R10 K12 ["toolNoneStringValue is non-nil. Silence type checker."]
       60 GETIMPORT                        R8 K4 [assert]
       62 CALL                             R8 2 0
       63 LOADK                            R10 K13 ["ToolNoneAnim"]
       64 NAMECALL                         R8 R7 K6 ["FindFirstChild"]
       66 CALL                             R8 2 1
       67 JUMPIFNOT                        R8 ; [+42]
       68 GETUPVAL                         R10 0
       69 GETTABLEKS                       R9 R10 K14 ["GetAnimationClip"]
       71 MOVE                             R10 R8
       72 CALL                             R9 1 1
       73 JUMPIF                           R9 ; [+3]
       74 LOADNIL                          R10
       75 LOADNIL                          R11
       76 RETURN                           R10 2
       77 FASTCALL2K                       ASSERT R9 K15 ; [+5]
       79 MOVE                             R11 R9
       80 LOADK                            R12 K15 ["toolAnimationClip is non-nil. Silence type checker."]
       81 GETIMPORT                        R10 K4 [assert]
       83 CALL                             R10 2 0
       84 LOADK                            R13 K16 ["KeyframeSequence"]
       85 NAMECALL                         R11 R9 K8 ["IsA"]
       87 CALL                             R11 2 1
       88 FASTCALL2K                       ASSERT R11 K17 ; [+4]
       90 LOADK                            R12 K17 ["ToolNoneAnim must be a KeyframeSequence"]
       91 GETIMPORT                        R10 K4 [assert]
       93 CALL                             R10 2 0
       94 GETUPVAL                         R11 0
       95 GETTABLEKS                       R10 R11 K18 ["GetThumbnailKeyframe"]
       97 LOADNIL                          R11
       98 MOVE                             R12 R9
       99 LOADN                            R13 0
      100 CALL                             R10 3 1
      101 MOVE                             R3 R10
      102 MOVE                             R12 R0
      103 NAMECALL                         R10 R4 K19 ["IsDescendantOf"]
      105 CALL                             R10 2 1
      106 JUMPIF                           R10 ; [+3]
      107 LOADNIL                          R10
      108 LOADNIL                          R11
      109 RETURN                           R10 2
      110 RETURN                           R2 2

PROTO_27:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 LOADK                            R4 K2 ["Animator"]
        6 NAMECALL                         R2 R1 K1 ["FindFirstChildOfClass"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+4]
       10 LOADK                            R5 K3 [0.1]
       11 NAMECALL                         R3 R2 K4 ["StepAnimations"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["debugLoadAssetsFromFiles"]
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["mapAssetIdToFileName"]
        7 JUMPIFNOT                        R0 ; [+14]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K1 ["mapAssetIdToFileName"]
       11 GETUPVAL                         R1 1
       12 CALL                             R0 1 1
       13 LOADK                            R2 K2 ["rbxasset://"]
       14 MOVE                             R3 R0
       15 CONCAT                           R1 R2 R3
       16 GETUPVAL                         R2 2
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R2 K3 ["LoadLocalAsset"]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1
       22 GETUPVAL                         R0 2
       23 GETUPVAL                         R2 1
       24 NAMECALL                         R0 R0 K4 ["LoadAsset"]
       26 CALL                             R0 2 -1
       27 RETURN                           R0 -1

PROTO_29:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 2
        7 RETURN                           R1 2

PROTO_30:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R0 R2 K0 ["debugLoadAssetsFromFiles"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R1 R2 K1 ["mapAssetIdToFileName"]
        6 RETURN                           R0 0

PROTO_31:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        6 MOVE                             R3 R0
        7 LOADK                            R4 K0 ["part0 is non-nil. Silence type checker."]
        8 GETIMPORT                        R2 K2 [assert]
       10 CALL                             R2 2 0
       11 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       13 MOVE                             R3 R1
       14 LOADK                            R4 K3 ["part1 is non-nil. Silence type checker."]
       15 GETIMPORT                        R2 K2 [assert]
       17 CALL                             R2 2 0
       18 GETIMPORT                        R2 K5 [pairs]
       20 NAMECALL                         R3 R1 K6 ["GetChildren"]
       22 CALL                             R3 1 -1
       23 CALL                             R2 -1 3
       24 FORGPREP_NEXT                    R2
       25 LOADK                            R9 K7 ["Motor6D"]
       26 NAMECALL                         R7 R6 K8 ["IsA"]
       28 CALL                             R7 2 1
       29 JUMPIFNOT                        R7 ; [+5]
       30 GETTABLEKS                       R7 R6 K9 ["Part0"]
       32 JUMPIFNOTEQ                      R7 R0 ; [+2]
       34 RETURN                           R6 1
       35 FORGLOOP                         R2 2 ; [-11]
       37 LOADNIL                          R2
       38 RETURN                           R2 1

PROTO_32:
        0 LOADK                            R3 K0 ["Folder"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 1
        6 RETURN                           R1 1
        7 NAMECALL                         R1 R0 K2 ["GetChildren"]
        9 CALL                             R1 1 3
       10 FORGPREP                         R1
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R5
       13 CALL                             R6 1 1
       14 JUMPIFNOT                        R6 ; [+2]
       15 LOADB                            R6 1
       16 RETURN                           R6 1
       17 FORGLOOP                         R1 2 ; [-7]
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_33:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K0 ["poseKeyframe is non-nil. Silence type checker."]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 DUPCLOSURE                       R1 K3 [PROTO_32]
       11 CAPTURE                          VAL R1
       12 GETIMPORT                        R2 K5 [pairs]
       14 NAMECALL                         R3 R0 K6 ["GetPoses"]
       16 CALL                             R3 1 -1
       17 CALL                             R2 -1 3
       18 FORGPREP_NEXT                    R2
       19 MOVE                             R7 R1
       20 MOVE                             R8 R6
       21 CALL                             R7 1 1
       22 JUMPIFNOT                        R7 ; [+2]
       23 LOADB                            R7 1
       24 RETURN                           R7 1
       25 FORGLOOP                         R2 2 ; [-7]
       27 LOADB                            R2 0
       28 RETURN                           R2 1

PROTO_34:
        0 NEWTABLE                         R2 0 0
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 0
        7 NEWTABLE                         R2 0 0
        9 SETUPVAL                         R2 0
       10 GETIMPORT                        R3 K1 [pcall]
       12 DUPCLOSURE                       R4 K2 [PROTO_4]
       13 CALL                             R3 1 2
       14 AND                              R2 R3 R4
       15 JUMPIFNOT                        R2 ; [+5]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K3 ["ForceAnimationToStep"]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_35:
        0 MOVE                             R3 R2
        1 MOVE                             R6 R1
        2 NAMECALL                         R4 R0 K0 ["FindFirstChild"]
        4 CALL                             R4 2 1
        5 JUMPIFNOT                        R4 ; [+7]
        6 LOADK                            R7 K1 ["NumberValue"]
        7 NAMECALL                         R5 R4 K2 ["IsA"]
        9 CALL                             R5 2 1
       10 JUMPIFNOT                        R5 ; [+2]
       11 GETTABLEKS                       R3 R4 K3 ["Value"]
       13 RETURN                           R3 1

PROTO_36:
        0 LOADK                            R3 K0 ["KeyframeSequence"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 LOADK                            R3 K2 ["CurveAnimation"]
        7 NAMECALL                         R1 R0 K1 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+1]
       11 RETURN                           R0 1
       12 LOADK                            R3 K3 ["Animation"]
       13 NAMECALL                         R1 R0 K1 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+5]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R2 R0 K4 ["AnimationId"]
       20 CALL                             R1 1 1
       21 RETURN                           R1 1
       22 GETIMPORT                        R1 K6 [error]
       24 LOADK                            R3 K7 ["Cannot get AnimationClip from type:"]
       25 GETTABLEKS                       R4 R0 K8 ["ClassName"]
       27 CONCAT                           R2 R3 R4
       28 CALL                             R1 1 0
       29 LOADNIL                          R1
       30 RETURN                           R1 1

PROTO_37:
        0 NAMECALL                         R3 R1 K0 ["GetKeyframes"]
        2 CALL                             R3 1 1
        3 LOADNIL                          R4
        4 JUMPIFNOT                        R0 ; [+8]
        5 LOADN                            R5 0
        6 JUMPIFNOTLT                      R5 R0 ; [+6]
        8 LENGTH                           R5 R3
        9 JUMPIFNOTLE                      R0 R5 ; [+3]
       11 GETTABLE                         R4 R3 R0
       12 JUMP                             ; [+7]
       13 LENGTH                           R7 R3
       14 DIVK                             R6 R7 K1 [2]
       15 FASTCALL1                        MATH_CEIL R6 ; [+2]
       16 GETIMPORT                        R5 K4 [math.ceil]
       18 CALL                             R5 1 1
       19 GETTABLE                         R4 R3 R5
       20 GETUPVAL                         R5 0
       21 MOVE                             R6 R4
       22 MOVE                             R7 R2
       23 CALL                             R5 2 1
       24 RETURN                           R5 1

PROTO_38:
        0 LOADN                            R1 0
        1 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        3 CALL                             R2 1 3
        4 FORGPREP                         R2
        5 LOADK                            R9 K1 ["FloatCurve"]
        6 NAMECALL                         R7 R6 K2 ["IsA"]
        8 CALL                             R7 2 1
        9 JUMPIFNOT                        R7 ; [+21]
       10 GETUPVAL                         R7 0
       11 JUMPIFNOT                        R7 ; [+4]
       12 GETTABLEKS                       R7 R6 K3 ["Length"]
       14 JUMPIFEQKN                       R7 K4 [0] ; [+16]
       16 GETTABLEKS                       R10 R6 K3 ["Length"]
       18 NAMECALL                         R8 R6 K5 ["GetKeyAtIndex"]
       20 CALL                             R8 2 1
       21 GETTABLEKS                       R7 R8 K6 ["Time"]
       23 FASTCALL2                        MATH_MAX R1 R7 ; [+5]
       25 MOVE                             R9 R1
       26 MOVE                             R10 R7
       27 GETIMPORT                        R8 K9 [math.max]
       29 CALL                             R8 2 1
       30 MOVE                             R1 R8
       31 FORGLOOP                         R2 2 ; [-27]
       33 RETURN                           R1 1

PROTO_39:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Folder"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+2]
        9 LOADB                            R6 1
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-8]
       13 LOADB                            R1 0
       14 RETURN                           R1 1

PROTO_40:
        0 LOADNIL                          R2
        1 LOADK                            R5 K0 ["Position"]
        2 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
        4 CALL                             R3 2 1
        5 LOADK                            R6 K2 ["Rotation"]
        6 NAMECALL                         R4 R1 K1 ["FindFirstChild"]
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R3 ; [+33]
       10 JUMPIFNOT                        R4 ; [+32]
       11 GETUPVAL                         R5 0
       12 MOVE                             R6 R4
       13 GETUPVAL                         R7 1
       14 CALL                             R5 2 1
       15 JUMPIFNOT                        R5 ; [+72]
       16 GETUPVAL                         R10 1
       17 NAMECALL                         R8 R3 K3 ["GetValueAtTime"]
       19 CALL                             R8 2 -1
       20 FASTCALL                         TABLE_UNPACK ; [+2]
       21 GETIMPORT                        R7 K6 [table.unpack]
       23 CALL                             R7 -1 -1
       24 FASTCALL                         VECTOR ; [+2]
       25 GETIMPORT                        R6 K9 [Vector3.new]
       27 CALL                             R6 -1 1
       28 ADD                              R5 R5 R6
       29 GETIMPORT                        R6 K11 [Instance.new]
       31 LOADK                            R7 K12 ["Pose"]
       32 CALL                             R6 1 1
       33 SETTABLEKS                       R5 R6 K13 ["CFrame"]
       35 GETTABLEKS                       R7 R1 K14 ["Name"]
       37 SETTABLEKS                       R7 R6 K14 ["Name"]
       39 SETTABLEKS                       R0 R6 K15 ["Parent"]
       41 MOVE                             R2 R6
       42 JUMP                             ; [+45]
       43 GETUPVAL                         R5 2
       44 JUMPIFNOT                        R5 ; [+32]
       45 NAMECALL                         R6 R1 K16 ["GetChildren"]
       47 CALL                             R6 1 3
       48 FORGPREP                         R6
       49 LOADK                            R13 K17 ["Folder"]
       50 NAMECALL                         R11 R10 K18 ["IsA"]
       52 CALL                             R11 2 1
       53 JUMPIFNOT                        R11 ; [+2]
       54 LOADB                            R5 1
       55 JUMP                             ; [+3]
       56 FORGLOOP                         R6 2 ; [-8]
       58 LOADB                            R5 0
       59 JUMPIFNOT                        R5 ; [+17]
       60 GETIMPORT                        R5 K19 [CFrame.new]
       62 CALL                             R5 0 1
       63 GETIMPORT                        R6 K11 [Instance.new]
       65 LOADK                            R7 K12 ["Pose"]
       66 CALL                             R6 1 1
       67 SETTABLEKS                       R5 R6 K13 ["CFrame"]
       69 GETTABLEKS                       R7 R1 K14 ["Name"]
       71 SETTABLEKS                       R7 R6 K14 ["Name"]
       73 SETTABLEKS                       R0 R6 K15 ["Parent"]
       75 MOVE                             R2 R6
       76 JUMP                             ; [+11]
       77 GETIMPORT                        R5 K11 [Instance.new]
       79 LOADK                            R6 K17 ["Folder"]
       80 CALL                             R5 1 1
       81 GETTABLEKS                       R6 R1 K14 ["Name"]
       83 SETTABLEKS                       R6 R5 K14 ["Name"]
       85 SETTABLEKS                       R0 R5 K15 ["Parent"]
       87 MOVE                             R2 R5
       88 NAMECALL                         R5 R1 K16 ["GetChildren"]
       90 CALL                             R5 1 3
       91 FORGPREP                         R5
       92 LOADK                            R12 K20 ["FloatCurve"]
       93 NAMECALL                         R10 R9 K18 ["IsA"]
       95 CALL                             R10 2 1
       96 JUMPIFNOT                        R10 ; [+29]
       97 GETUPVAL                         R11 3
       98 GETTABLE                         R10 R11 R9
       99 JUMPIF                           R10 ; [+26]
      100 GETIMPORT                        R10 K11 [Instance.new]
      102 LOADK                            R11 K21 ["NumberPose"]
      103 CALL                             R10 1 1
      104 GETTABLEKS                       R11 R9 K14 ["Name"]
      106 SETTABLEKS                       R11 R10 K14 ["Name"]
      108 GETUPVAL                         R13 1
      109 NAMECALL                         R11 R9 K3 ["GetValueAtTime"]
      111 CALL                             R11 2 1
      112 JUMPIF                           R11 ; [+1]
      113 LOADN                            R11 0
      114 FASTCALL2K                       ASSERT R11 K22 ; [+5]
      116 MOVE                             R13 R11
      117 LOADK                            R14 K22 ["valueAtTime should be non-nil. Silence type checker."]
      118 GETIMPORT                        R12 K24 [assert]
      120 CALL                             R12 2 0
      121 SETTABLEKS                       R11 R10 K25 ["Value"]
      123 SETTABLEKS                       R2 R10 K15 ["Parent"]
      125 JUMP                             ; [+9]
      126 LOADK                            R12 K17 ["Folder"]
      127 NAMECALL                         R10 R9 K18 ["IsA"]
      129 CALL                             R10 2 1
      130 JUMPIFNOT                        R10 ; [+4]
      131 GETUPVAL                         R10 4
      132 MOVE                             R11 R2
      133 MOVE                             R12 R9
      134 CALL                             R10 2 0
      135 FORGLOOP                         R5 2 ; [-44]
      137 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["GetCurveAnimationTimeLength"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 LOADN                            R4 0
        7 JUMPIFLT                         R0 R4 ; [+3]
        9 JUMPIFNOTLT                      R3 R0 ; [+2]
       11 DIVK                             R0 R3 K1 [2]
       12 FASTCALL2K                       ASSERT R0 K2 ; [+5]
       14 MOVE                             R5 R0
       15 LOADK                            R6 K2 ["thumbnailTime should be non-nil. Silence type checker"]
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 2 0
       19 DUPTABLE                         R4 K7 [{"Position", "Rotation"}]
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K5 ["Position"]
       23 LOADB                            R5 1
       24 SETTABLEKS                       R5 R4 K6 ["Rotation"]
       26 DUPCLOSURE                       R5 K8 [PROTO_39]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          REF R0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R6
       33 GETIMPORT                        R7 K11 [Instance.new]
       35 LOADK                            R8 K12 ["Keyframe"]
       36 CALL                             R7 1 1
       37 GETTABLEKS                       R8 R1 K13 ["Name"]
       39 SETTABLEKS                       R8 R7 K13 ["Name"]
       41 SETTABLEKS                       R0 R7 K14 ["Time"]
       43 NAMECALL                         R8 R1 K15 ["GetChildren"]
       45 CALL                             R8 1 3
       46 FORGPREP                         R8
       47 LOADK                            R15 K16 ["Folder"]
       48 NAMECALL                         R13 R12 K17 ["IsA"]
       50 CALL                             R13 2 1
       51 JUMPIFNOT                        R13 ; [+4]
       52 MOVE                             R13 R6
       53 MOVE                             R14 R7
       54 MOVE                             R15 R12
       55 CALL                             R13 2 0
       56 FORGLOOP                         R8 2 ; [-10]
       58 GETUPVAL                         R8 3
       59 MOVE                             R9 R7
       60 MOVE                             R10 R2
       61 CALL                             R8 2 1
       62 CLOSEUPVALS                      R0
       63 RETURN                           R8 1

PROTO_42:
        0 LOADK                            R3 K0 ["FaceControls"]
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        4 CALL                             R1 3 1
        5 JUMPIFNOT                        R1 ; [+22]
        6 GETTABLEKS                       R2 R1 K2 ["Parent"]
        8 NAMECALL                         R3 R1 K3 ["GetChildren"]
       10 CALL                             R3 1 1
       11 GETIMPORT                        R4 K6 [Instance.new]
       13 LOADK                            R5 K0 ["FaceControls"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R2 R4 K2 ["Parent"]
       17 MOVE                             R5 R3
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 SETTABLEKS                       R4 R9 K2 ["Parent"]
       23 FORGLOOP                         R5 2 ; [-3]
       25 NAMECALL                         R5 R1 K7 ["Destroy"]
       27 CALL                             R5 1 0
       28 RETURN                           R0 0

PROTO_43:
        0 LOADK                            R3 K0 ["Tool"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["Torso"]
        5 NAMECALL                         R2 R0 K3 ["FindFirstChild"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+19]
        9 LOADK                            R5 K4 ["Right Shoulder"]
       10 NAMECALL                         R3 R2 K3 ["FindFirstChild"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+14]
       14 JUMPIFNOT                        R1 ; [+7]
       15 LOADK                            R4 K5 [1.5707963267949]
       16 SETTABLEKS                       R4 R3 K6 ["CurrentAngle"]
       18 LOADK                            R4 K5 [1.5707963267949]
       19 SETTABLEKS                       R4 R3 K7 ["DesiredAngle"]
       21 RETURN                           R0 0
       22 LOADN                            R4 0
       23 SETTABLEKS                       R4 R3 K6 ["CurrentAngle"]
       25 LOADN                            R4 0
       26 SETTABLEKS                       R4 R3 K7 ["DesiredAngle"]
       28 RETURN                           R0 0

PROTO_44:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 JUMPIFNOTEQKS                    R1 K0 [""] ; [+2]
        4 RETURN                           R0 0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+2]
        7 RETURN                           R0 0
        8 LOADB                            R3 1
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R5 R1
       11 GETIMPORT                        R4 K3 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFEQKS                       R4 K4 ["number"] ; [+10]
       16 FASTCALL1                        TYPEOF R1 ; [+3]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R4 K3 [typeof]
       20 CALL                             R4 1 1
       21 JUMPIFEQKS                       R4 K5 ["string"] ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       27 LOADK                            R4 K6 ["EmoteUtility.SetPlayerCharacterFace expects animationAssetIdOrUrl to be a number or string"]
       28 GETIMPORT                        R2 K8 [assert]
       30 CALL                             R2 2 0
       31 LOADK                            R4 K9 ["Humanoid"]
       32 NAMECALL                         R2 R0 K10 ["FindFirstChildOfClass"]
       34 CALL                             R2 2 1
       35 JUMPIF                           R2 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R3 0
       38 MOVE                             R4 R1
       39 CALL                             R3 1 1
       40 JUMPIF                           R3 ; [+1]
       41 RETURN                           R0 0
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R4 R5 K11 ["ClearPlayerCharacterFace"]
       45 MOVE                             R5 R0
       46 CALL                             R4 1 0
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R4 R5 K12 ["ApplyKeyframe"]
       50 MOVE                             R5 R0
       51 MOVE                             R6 R3
       52 CALL                             R4 2 0
       53 RETURN                           R0 0

PROTO_45:
        0 LOADK                            R3 K0 ["Motor6D"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R1 K4 [CFrame.new]
        7 CALL                             R1 0 1
        8 SETTABLEKS                       R1 R0 K5 ["Transform"]
       10 NAMECALL                         R1 R0 K6 ["GetChildren"]
       12 CALL                             R1 1 1
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETUPVAL                         R7 0
       18 MOVE                             R8 R6
       19 CALL                             R7 1 0
       20 FORGLOOP                         R2 2 ; [-4]
       22 RETURN                           R0 0

PROTO_46:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K2 ["humanoid should be non-nil. Silence type checker."]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 NAMECALL                         R2 R1 K5 ["BuildRigFromAttachments"]
       15 CALL                             R2 1 0
       16 GETTABLEKS                       R2 R1 K6 ["RigType"]
       18 GETIMPORT                        R3 K10 [Enum.HumanoidRigType.R15]
       20 JUMPIFEQ                         R2 R3 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K11 ["ClearPlayerCharacterFace"]
       26 MOVE                             R3 R0
       27 CALL                             R2 1 0
       28 DUPCLOSURE                       R2 K12 [PROTO_45]
       29 CAPTURE                          VAL R2
       30 MOVE                             R3 R2
       31 MOVE                             R4 R0
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_47:
        0 NEWTABLE                         R5 8 0
        2 SETTABLEKS                       R1 R5 K0 ["originalAnimationAssetId"]
        4 LOADNIL                          R6
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADB                            R6 0
        7 JUMP                             ; [+1]
        8 LOADB                            R6 1
        9 GETUPVAL                         R7 0
       10 MOVE                             R8 R0
       11 MOVE                             R9 R1
       12 NOT                              R10 R3
       13 MOVE                             R11 R6
       14 CALL                             R7 4 3
       15 LOADNIL                          R10
       16 LOADNIL                          R11
       17 JUMPIF                           R4 ; [+7]
       18 JUMPIFNOT                        R7 ; [+6]
       19 GETUPVAL                         R12 1
       20 MOVE                             R13 R0
       21 MOVE                             R14 R8
       22 CALL                             R12 2 2
       23 MOVE                             R10 R12
       24 MOVE                             R11 R13
       25 LOADNIL                          R12
       26 LOADB                            R13 0
       27 JUMPIFNOT                        R2 ; [+13]
       28 JUMPIFEQKN                       R2 K1 [0] ; [+12]
       30 JUMPIFNOTEQKNIL                  R1 ; [+3]
       32 LOADB                            R13 1
       33 JUMP                             ; [+7]
       34 GETUPVAL                         R15 2
       35 GETTABLEKS                       R14 R15 K2 ["PoseKeyframeHasFaceAnimation"]
       37 MOVE                             R15 R7
       38 CALL                             R14 1 1
       39 JUMPIF                           R14 ; [+1]
       40 LOADB                            R13 1
       41 JUMPIFNOT                        R13 ; [+4]
       42 GETUPVAL                         R14 3
       43 MOVE                             R15 R2
       44 CALL                             R14 1 1
       45 MOVE                             R12 R14
       46 SETTABLEKS                       R7 R5 K3 ["poseKeyframe"]
       48 SETTABLEKS                       R12 R5 K4 ["moodKeyframe"]
       50 SETTABLEKS                       R11 R5 K5 ["defaultToolKeyframe"]
       52 SETTABLEKS                       R10 R5 K6 ["suggestedKeyframeFromTool"]
       54 SETTABLEKS                       R9 R5 K7 ["finalAnimationAssetIdOrUrl"]
       56 RETURN                           R5 1

PROTO_48:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R6 R0
        3 LOADK                            R7 K0 ["character should be non-nil"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 JUMPIFEQKNIL                     R1 ; [+27]
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R8 R1
       11 GETIMPORT                        R7 K4 [typeof]
       13 CALL                             R7 1 1
       14 JUMPIFEQKS                       R7 K5 ["number"] ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       20 LOADK                            R7 K6 ["EmoteUtility.LoadKeyframesForPose expects animationAssetId to be a number or nil"]
       21 GETIMPORT                        R5 K2 [assert]
       23 CALL                             R5 2 0
       24 LOADN                            R7 0
       25 JUMPIFLT                         R7 R1 ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 FASTCALL2K                       ASSERT R6 K7 ; [+4]
       31 LOADK                            R7 K7 ["EmoteUtility.LoadKeyframesForPose expects animationAssetId to be a real asset ID (positive number)"]
       32 GETIMPORT                        R5 K2 [assert]
       34 CALL                             R5 2 0
       35 JUMPIFEQKNIL                     R2 ; [+16]
       37 FASTCALL1                        TYPEOF R2 ; [+3]
       38 MOVE                             R8 R2
       39 GETIMPORT                        R7 K4 [typeof]
       41 CALL                             R7 1 1
       42 JUMPIFEQKS                       R7 K5 ["number"] ; [+2]
       44 LOADB                            R6 0 +1
       45 LOADB                            R6 1
       46 FASTCALL2K                       ASSERT R6 K8 ; [+4]
       48 LOADK                            R7 K8 ["EmoteUtility.LoadKeyframesForPose expects moodAssetId to be a number or nil"]
       49 GETIMPORT                        R5 K2 [assert]
       51 CALL                             R5 2 0
       52 LOADK                            R7 K9 ["Humanoid"]
       53 NAMECALL                         R5 R0 K10 ["FindFirstChildOfClass"]
       55 CALL                             R5 2 1
       56 JUMPIF                           R5 ; [+2]
       57 LOADNIL                          R6
       58 RETURN                           R6 1
       59 FASTCALL2K                       ASSERT R5 K11 ; [+5]
       61 MOVE                             R7 R5
       62 LOADK                            R8 K11 ["humanoid should be non-nil. Silence type checker."]
       63 GETIMPORT                        R6 K2 [assert]
       65 CALL                             R6 2 0
       66 GETTABLEKS                       R6 R5 K12 ["RigType"]
       68 GETIMPORT                        R7 K16 [Enum.HumanoidRigType.R15]
       70 JUMPIFNOTEQ                      R6 R7 ; [+9]
       72 GETUPVAL                         R6 0
       73 MOVE                             R7 R0
       74 MOVE                             R8 R1
       75 MOVE                             R9 R2
       76 MOVE                             R10 R3
       77 MOVE                             R11 R4
       78 CALL                             R6 5 1
       79 RETURN                           R6 1
       80 NEWTABLE                         R6 1 0
       82 SETTABLEKS                       R1 R6 K17 ["originalAnimationAssetId"]
       84 RETURN                           R6 1

PROTO_49:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 ["character should be non-nil"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       11 MOVE                             R3 R1
       12 LOADK                            R4 K3 ["keyframesForPose should be non-nil. Silence type checker."]
       13 GETIMPORT                        R2 K2 [assert]
       15 CALL                             R2 2 0
       16 LOADK                            R4 K4 ["Humanoid"]
       17 NAMECALL                         R2 R0 K5 ["FindFirstChildOfClass"]
       19 CALL                             R2 2 1
       20 JUMPIF                           R2 ; [+1]
       21 RETURN                           R0 0
       22 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       24 MOVE                             R4 R2
       25 LOADK                            R5 K6 ["humanoid should be non-nil. Silence type checker."]
       26 GETIMPORT                        R3 K2 [assert]
       28 CALL                             R3 2 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K7 ["SetPlayerCharacterNeutralPose"]
       32 MOVE                             R4 R0
       33 CALL                             R3 1 0
       34 NEWTABLE                         R3 0 0
       36 SETUPVAL                         R3 1
       37 LOADK                            R5 K8 ["Tool"]
       38 NAMECALL                         R3 R0 K5 ["FindFirstChildOfClass"]
       40 CALL                             R3 2 1
       41 GETTABLEKS                       R4 R2 K9 ["RigType"]
       43 GETIMPORT                        R5 K13 [Enum.HumanoidRigType.R15]
       45 JUMPIFNOTEQ                      R4 R5 ; [+23]
       47 JUMPIFNOT                        R3 ; [+15]
       48 GETTABLEKS                       R4 R1 K14 ["originalAnimationAssetId"]
       50 GETUPVAL                         R5 2
       51 MOVE                             R6 R0
       52 MOVE                             R7 R2
       53 MOVE                             R8 R3
       54 MOVE                             R9 R4
       55 GETTABLEKS                       R10 R1 K15 ["poseKeyframe"]
       57 GETTABLEKS                       R11 R1 K16 ["defaultToolKeyframe"]
       59 GETTABLEKS                       R12 R1 K17 ["suggestedKeyframeFromTool"]
       61 CALL                             R5 7 0
       62 JUMP                             ; [+11]
       63 GETUPVAL                         R4 3
       64 MOVE                             R5 R0
       65 GETTABLEKS                       R6 R1 K15 ["poseKeyframe"]
       67 CALL                             R4 2 0
       68 JUMP                             ; [+5]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R4 R5 K18 ["AdjustArmOnR6ForTool"]
       72 MOVE                             R5 R0
       73 CALL                             R4 1 0
       74 GETTABLEKS                       R4 R2 K9 ["RigType"]
       76 GETIMPORT                        R5 K13 [Enum.HumanoidRigType.R15]
       78 JUMPIFNOTEQ                      R4 R5 ; [+6]
       80 GETUPVAL                         R4 3
       81 MOVE                             R5 R0
       82 GETTABLEKS                       R6 R1 K19 ["moodKeyframe"]
       84 CALL                             R4 2 0
       85 NEWTABLE                         R4 0 0
       87 SETUPVAL                         R4 1
       88 GETIMPORT                        R5 K21 [pcall]
       90 DUPCLOSURE                       R6 K22 [PROTO_4]
       91 CALL                             R5 1 2
       92 AND                              R4 R5 R6
       93 JUMPIFNOT                        R4 ; [+5]
       94 GETUPVAL                         R5 0
       95 GETTABLEKS                       R4 R5 K23 ["ForceAnimationToStep"]
       97 MOVE                             R5 R0
       98 CALL                             R4 1 0
       99 RETURN                           R0 0

PROTO_50:
        0 LOADK                            R7 K0 ["Humanoid"]
        1 NAMECALL                         R5 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R5 2 1
        4 JUMPIF                           R5 ; [+1]
        5 RETURN                           R0 0
        6 FASTCALL2K                       ASSERT R5 K2 ; [+5]
        8 MOVE                             R7 R5
        9 LOADK                            R8 K2 ["humanoid should be non-nil.  Silence type checker."]
       10 GETIMPORT                        R6 K4 [assert]
       12 CALL                             R6 2 0
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K5 ["LoadKeyframesForPose"]
       16 MOVE                             R7 R0
       17 MOVE                             R8 R1
       18 MOVE                             R9 R2
       19 MOVE                             R10 R3
       20 MOVE                             R11 R4
       21 CALL                             R6 5 1
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K6 ["ApplyKeyframesForPose"]
       25 MOVE                             R8 R0
       26 MOVE                             R9 R6
       27 CALL                             R7 2 0
       28 RETURN                           R0 0

PROTO_51:
        0 NAMECALL                         R5 R0 K0 ["GetModelCFrame"]
        2 CALL                             R5 1 1
        3 GETTABLEKS                       R6 R5 K1 ["LookVector"]
        5 LOADK                            R9 K2 ["HumanoidRootPart"]
        6 NAMECALL                         R7 R0 K3 ["FindFirstChild"]
        8 CALL                             R7 2 1
        9 JUMPIFNOT                        R7 ; [+4]
       10 GETTABLEKS                       R8 R7 K4 ["CFrame"]
       12 GETTABLEKS                       R6 R8 K1 ["LookVector"]
       14 GETIMPORT                        R8 K6 [CFrame.new]
       16 GETTABLEKS                       R10 R5 K7 ["Position"]
       18 MULK                             R11 R6 K8 [5]
       19 ADD                              R9 R10 R11
       20 GETTABLEKS                       R10 R5 K7 ["Position"]
       22 CALL                             R8 2 1
       23 GETTABLEKS                       R9 R5 K7 ["Position"]
       25 MINUS                            R12 R3
       26 LOADN                            R13 0
       27 FASTCALL3                        VECTOR R2 R12 R13
       29 MOVE                             R11 R2
       30 GETIMPORT                        R10 K10 [Vector3.new]
       32 CALL                             R10 3 1
       33 ADD                              R9 R9 R10
       34 NAMECALL                         R10 R0 K11 ["GetExtentsSize"]
       36 CALL                             R10 1 1
       37 GETTABLEKS                       R12 R10 K12 ["X"]
       39 GETTABLEKS                       R13 R10 K13 ["Y"]
       41 GETTABLEKS                       R14 R10 K14 ["Z"]
       43 POWK                             R18 R12 K15 [2]
       44 POWK                             R19 R13 K15 [2]
       45 ADD                              R17 R18 R19
       46 POWK                             R18 R14 K15 [2]
       47 ADD                              R16 R17 R18
       48 FASTCALL1                        MATH_SQRT R16 ; [+2]
       49 GETIMPORT                        R15 K18 [math.sqrt]
       51 CALL                             R15 1 1
       52 FASTCALL1                        MATH_RAD R1 ; [+3]
       53 MOVE                             R20 R1
       54 GETIMPORT                        R19 K21 [math.rad]
       56 CALL                             R19 1 1
       57 DIVK                             R18 R19 K15 [2]
       58 FASTCALL1                        MATH_TAN R18 ; [+2]
       59 GETIMPORT                        R17 K23 [math.tan]
       61 CALL                             R17 1 1
       62 DIVRK                            R16 R19 K17 ["sqrt"]
       63 DIVK                             R17 R15 K15 [2]
       64 MUL                              R11 R17 R16
       65 DIVRK                            R12 R19 K4 ["CFrame"]
       66 MUL                              R11 R11 R12
       67 GETTABLEKS                       R14 R8 K7 ["Position"]
       69 SUB                              R13 R8 R14
       70 ADD                              R15 R13 R9
       71 MUL                              R16 R6 R11
       72 ADD                              R14 R15 R16
       73 RETURN                           R14 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["InsertService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["EmoteUtilityFallbackKeyframeSequenceAssetId"]
       16 LOADK                            R5 K6 ["10921261056"]
       17 NAMECALL                         R2 R2 K7 ["DefineFastString"]
       19 CALL                             R2 3 1
       20 GETIMPORT                        R3 K1 [game]
       22 LOADK                            R5 K8 ["FixKeyframeGeneration"]
       23 LOADB                            R6 0
       24 NAMECALL                         R3 R3 K9 ["DefineFastFlag"]
       26 CALL                             R3 3 1
       27 GETIMPORT                        R4 K1 [game]
       29 LOADK                            R6 K10 ["RbxAnalyticsService"]
       30 NAMECALL                         R4 R4 K3 ["GetService"]
       32 CALL                             R4 2 1
       33 NEWTABLE                         R5 32 0
       35 SETTABLEKS                       R2 R5 K11 ["FallbackKeyframeSequenceAssetId"]
       37 LOADB                            R6 0
       38 SETTABLEKS                       R6 R5 K12 ["debugLoadAssetsFromFiles"]
       40 LOADNIL                          R6
       41 SETTABLEKS                       R6 R5 K13 ["mapAssetIdToFileName"]
       43 LOADK                            R7 K14 ["http://www.roblox.com/asset/?id="]
       44 MOVE                             R8 R2
       45 CONCAT                           R6 R7 R8
       46 SETTABLEKS                       R6 R5 K15 ["FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL"]
       48 NEWTABLE                         R6 0 0
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          REF R6
       52 NEWCLOSURE                       R8 P1
       53 CAPTURE                          REF R6
       54 NEWCLOSURE                       R9 P2
       55 CAPTURE                          REF R6
       56 DUPCLOSURE                       R10 K16 [PROTO_3]
       57 DUPCLOSURE                       R11 K17 [PROTO_5]
       58 DUPCLOSURE                       R12 K18 [PROTO_6]
       59 CAPTURE                          VAL R4
       60 DUPCLOSURE                       R13 K19 [PROTO_8]
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 DUPCLOSURE                       R14 K20 [PROTO_10]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R4
       67 DUPCLOSURE                       R15 K21 [PROTO_12]
       68 DUPCLOSURE                       R16 K22 [PROTO_13]
       69 NEWCLOSURE                       R17 P10
       70 CAPTURE                          VAL R5
       71 CAPTURE                          REF R6
       72 CAPTURE                          VAL R16
       73 DUPCLOSURE                       R18 K23 [PROTO_16]
       74 DUPCLOSURE                       R19 K24 [PROTO_17]
       75 DUPCLOSURE                       R20 K25 [PROTO_18]
       76 CAPTURE                          VAL R20
       77 DUPCLOSURE                       R21 K26 [PROTO_19]
       78 CAPTURE                          VAL R20
       79 DUPCLOSURE                       R22 K27 [PROTO_20]
       80 CAPTURE                          VAL R20
       81 DUPCLOSURE                       R23 K28 [PROTO_21]
       82 DUPCLOSURE                       R24 K29 [PROTO_22]
       83 CAPTURE                          VAL R20
       84 DUPCLOSURE                       R25 K30 [PROTO_23]
       85 CAPTURE                          VAL R17
       86 CAPTURE                          VAL R24
       87 DUPCLOSURE                       R26 K31 [PROTO_24]
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R14
       91 DUPCLOSURE                       R27 K32 [PROTO_25]
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R5
       94 DUPCLOSURE                       R28 K33 [PROTO_26]
       95 CAPTURE                          VAL R5
       96 DUPCLOSURE                       R29 K34 [PROTO_27]
       97 SETTABLEKS                       R29 R5 K35 ["ForceAnimationToStep"]
       99 DUPCLOSURE                       R29 K36 [PROTO_29]
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R1
      102 SETTABLEKS                       R29 R5 K37 ["LoadAsset"]
      104 DUPCLOSURE                       R29 K38 [PROTO_30]
      105 CAPTURE                          VAL R5
      106 SETTABLEKS                       R29 R5 K39 ["SetDebugLoadAssetsFromFiles"]
      108 DUPCLOSURE                       R29 K40 [PROTO_31]
      109 SETTABLEKS                       R29 R5 K41 ["GetMotor6DBetween"]
      111 DUPCLOSURE                       R29 K42 [PROTO_33]
      112 SETTABLEKS                       R29 R5 K43 ["PoseKeyframeHasFaceAnimation"]
      114 NEWCLOSURE                       R29 P27
      115 CAPTURE                          REF R6
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R5
      118 SETTABLEKS                       R29 R5 K44 ["ApplyKeyframe"]
      120 DUPCLOSURE                       R29 K45 [PROTO_35]
      121 SETTABLEKS                       R29 R5 K46 ["GetNumberValueWithDefault"]
      123 DUPCLOSURE                       R29 K47 [PROTO_36]
      124 CAPTURE                          VAL R14
      125 SETTABLEKS                       R29 R5 K48 ["GetAnimationClip"]
      127 DUPCLOSURE                       R29 K49 [PROTO_37]
      128 CAPTURE                          VAL R18
      129 SETTABLEKS                       R29 R5 K50 ["GetThumbnailKeyframe"]
      131 DUPCLOSURE                       R29 K51 [PROTO_38]
      132 CAPTURE                          VAL R3
      133 SETTABLEKS                       R29 R5 K52 ["GetCurveAnimationTimeLength"]
      135 DUPCLOSURE                       R29 K53 [PROTO_41]
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R18
      140 SETTABLEKS                       R29 R5 K54 ["GetThumbnailKeyframeFromCurve"]
      142 DUPCLOSURE                       R29 K55 [PROTO_42]
      143 SETTABLEKS                       R29 R5 K56 ["ClearPlayerCharacterFace"]
      145 DUPCLOSURE                       R29 K57 [PROTO_43]
      146 SETTABLEKS                       R29 R5 K58 ["AdjustArmOnR6ForTool"]
      148 DUPCLOSURE                       R29 K59 [PROTO_44]
      149 CAPTURE                          VAL R27
      150 CAPTURE                          VAL R5
      151 SETTABLEKS                       R29 R5 K60 ["SetPlayerCharacterFace"]
      153 DUPCLOSURE                       R29 K61 [PROTO_46]
      154 CAPTURE                          VAL R5
      155 SETTABLEKS                       R29 R5 K62 ["SetPlayerCharacterNeutralPose"]
      157 DUPCLOSURE                       R29 K63 [PROTO_47]
      158 CAPTURE                          VAL R26
      159 CAPTURE                          VAL R28
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R27
      162 DUPCLOSURE                       R30 K64 [PROTO_48]
      163 CAPTURE                          VAL R29
      164 SETTABLEKS                       R30 R5 K65 ["LoadKeyframesForPose"]
      166 NEWCLOSURE                       R30 P39
      167 CAPTURE                          VAL R5
      168 CAPTURE                          REF R6
      169 CAPTURE                          VAL R25
      170 CAPTURE                          VAL R17
      171 SETTABLEKS                       R30 R5 K66 ["ApplyKeyframesForPose"]
      173 DUPCLOSURE                       R30 K67 [PROTO_50]
      174 CAPTURE                          VAL R5
      175 SETTABLEKS                       R30 R5 K68 ["SetPlayerCharacterPoseWithMoodFallback"]
      177 DUPCLOSURE                       R30 K69 [PROTO_51]
      178 SETTABLEKS                       R30 R5 K70 ["ThumbnailZoomExtents"]
      180 CLOSEUPVALS                      R6
      181 RETURN                           R5 1
