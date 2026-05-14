PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 LOADK                            R2 K0 ["converted_animation_cache"]
        4 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 0
        9 JUMPIF                           R0 ; [+14]
       10 GETIMPORT                        R0 K4 [Instance.new]
       12 LOADK                            R1 K5 ["Folder"]
       13 GETUPVAL                         R2 1
       14 CALL                             R0 2 1
       15 SETUPVAL                         R0 0
       16 GETUPVAL                         R0 0
       17 LOADK                            R1 K0 ["converted_animation_cache"]
       18 SETTABLEKS                       R1 R0 K6 ["Name"]
       20 GETUPVAL                         R0 0
       21 LOADB                            R1 1
       22 SETTABLEKS                       R1 R0 K7 ["Archivable"]
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 1
        4 GETTABLEN                        R5 R2 1
        5 MUL                              R4 R5 R0
        6 GETTABLEN                        R5 R2 2
        7 MUL                              R3 R4 R5
        8 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 RETURN                           R0 1

PROTO_3:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 NAMECALL                         R2 R0 K0 ["GetChildren"]
        5 CALL                             R2 1 1
        6 LENGTH                           R1 R2
        7 LOADN                            R2 1
        8 JUMPIFNOTLT                      R1 R2 ; [+3]
       10 LOADB                            R1 0
       11 RETURN                           R1 1
       12 LOADB                            R1 0
       13 NAMECALL                         R2 R0 K0 ["GetChildren"]
       15 CALL                             R2 1 3
       16 FORGPREP                         R2
       17 LOADK                            R9 K1 ["AnimationRigData"]
       18 NAMECALL                         R7 R6 K2 ["IsA"]
       20 CALL                             R7 2 1
       21 JUMPIFNOT                        R7 ; [+2]
       22 LOADB                            R7 0
       23 RETURN                           R7 1
       24 NAMECALL                         R7 R6 K3 ["GetDescendants"]
       26 CALL                             R7 1 3
       27 FORGPREP                         R7
       28 GETUPVAL                         R13 0
       29 GETTABLEKS                       R14 R11 K4 ["Name"]
       31 GETTABLE                         R12 R13 R14
       32 JUMPIFNOT                        R12 ; [+14]
       33 LOADB                            R1 1
       34 GETTABLEKS                       R13 R12 K5 ["requiredParent"]
       36 JUMPIFNOT                        R13 ; [+10]
       37 GETTABLEKS                       R13 R11 K6 ["Parent"]
       39 GETTABLEKS                       R13 R13 K4 ["Name"]
       41 GETTABLEKS                       R14 R12 K5 ["requiredParent"]
       43 JUMPIFEQ                         R13 R14 ; [+3]
       45 LOADB                            R13 0
       46 RETURN                           R13 1
       47 GETUPVAL                         R14 1
       48 GETTABLEKS                       R15 R11 K4 ["Name"]
       50 GETTABLE                         R13 R14 R15
       51 JUMPIFNOT                        R13 ; [+2]
       52 LOADB                            R13 0
       53 RETURN                           R13 1
       54 FORGLOOP                         R7 2 ; [-27]
       56 FORGLOOP                         R2 2 ; [-40]
       58 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["Clone"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["isR6KeyframeSequence"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+5]
        9 GETIMPORT                        R2 K3 [warn]
       11 LOADK                            R3 K4 ["Asset is not an r6 animation. Have you changed any Attributes on Animations?"]
       12 CALL                             R2 1 0
       13 RETURN                           R1 1
       14 NAMECALL                         R2 R1 K5 ["getChildren"]
       16 CALL                             R2 1 3
       17 FORGPREP                         R2
       18 NEWTABLE                         R7 0 0
       20 LOADNIL                          R8
       21 NAMECALL                         R9 R6 K6 ["GetDescendants"]
       23 CALL                             R9 1 3
       24 FORGPREP                         R9
       25 LOADK                            R16 K7 ["Pose"]
       26 NAMECALL                         R14 R13 K8 ["IsA"]
       28 CALL                             R14 2 1
       29 JUMPIFNOT                        R14 ; [+37]
       30 GETTABLEKS                       R15 R13 K9 ["Name"]
       32 GETUPVAL                         R17 1
       33 GETTABLE                         R16 R17 R15
       34 JUMPIFNOT                        R16 ; [+3]
       35 GETUPVAL                         R16 1
       36 GETTABLE                         R14 R16 R15
       37 JUMP                             ; [+1]
       38 MOVE                             R14 R15
       39 GETTABLEKS                       R15 R13 K9 ["Name"]
       41 JUMPIFNOTEQKS                    R15 K10 ["Torso"] ; [+9]
       43 GETIMPORT                        R15 K13 [Instance.new]
       45 LOADK                            R16 K7 ["Pose"]
       46 CALL                             R15 1 1
       47 MOVE                             R8 R15
       48 LOADK                            R15 K14 ["UpperTorso"]
       49 SETTABLEKS                       R15 R8 K9 ["Name"]
       51 SETTABLEKS                       R14 R13 K9 ["Name"]
       53 GETTABLEKS                       R16 R13 K15 ["CFrame"]
       55 GETUPVAL                         R18 2
       56 GETTABLE                         R17 R18 R14
       57 JUMPIF                           R17 ; [+2]
       58 MOVE                             R15 R16
       59 JUMP                             ; [+4]
       60 GETTABLEN                        R19 R17 1
       61 MUL                              R18 R19 R16
       62 GETTABLEN                        R19 R17 2
       63 MUL                              R15 R18 R19
       64 SETTABLEKS                       R15 R13 K15 ["CFrame"]
       66 SETTABLE                         R13 R7 R14
       67 FORGLOOP                         R9 2 ; [-43]
       69 MOVE                             R9 R7
       70 LOADNIL                          R10
       71 LOADNIL                          R11
       72 FORGPREP                         R9
       73 GETUPVAL                         R15 3
       74 GETTABLE                         R14 R15 R12
       75 JUMPIFNOT                        R14 ; [+12]
       76 JUMPIFNOTEQKS                    R14 K14 ["UpperTorso"] ; [+8]
       78 GETTABLEKS                       R15 R7 K16 ["LowerTorso"]
       80 SETTABLEKS                       R15 R8 K17 ["Parent"]
       82 SETTABLEKS                       R8 R13 K17 ["Parent"]
       84 JUMP                             ; [+3]
       85 GETTABLE                         R15 R7 R14
       86 SETTABLEKS                       R15 R13 K17 ["Parent"]
       88 FORGLOOP                         R9 2 ; [-16]
       90 FORGLOOP                         R2 2 ; [-73]
       92 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["RegisterKeyframeSequence"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R1 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K1 ["Value"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["TempId"]
       12 NAMECALL                         R3 R1 K3 ["GetAttribute"]
       14 CALL                             R3 2 1
       15 JUMPIFEQKS                       R2 K4 [""] ; [+11]
       17 JUMPIFNOT                        R3 ; [+9]
       18 GETIMPORT                        R4 K6 [warn]
       20 LOADK                            R6 K7 ["StringValue %* has both val and tempId - has converted_animation_cache been manually edited?"]
       21 MOVE                             R8 R0
       22 NAMECALL                         R6 R6 K8 ["format"]
       24 CALL                             R6 2 1
       25 MOVE                             R5 R6
       26 CALL                             R4 1 0
       27 OR                               R4 R3 R2
       28 MOVE                             R5 R1
       29 MOVE                             R6 R4
       30 RETURN                           R5 2

PROTO_7:
        0 AND                              R6 R1 R3
        1 NOT                              R5 R6
        2 FASTCALL1                        ASSERT R5 ; [+2]
        3 GETIMPORT                        R4 K1 [assert]
        5 CALL                             R4 1 0
        6 GETUPVAL                         R5 0
        7 MOVE                             R7 R0
        8 NAMECALL                         R5 R5 K2 ["FindFirstChild"]
       10 CALL                             R5 2 1
       11 JUMPIF                           R5 ; [+2]
       12 LOADNIL                          R4
       13 JUMP                             ; [+22]
       14 GETTABLEKS                       R6 R5 K3 ["Value"]
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R9 R9 K4 ["TempId"]
       19 NAMECALL                         R7 R5 K5 ["GetAttribute"]
       21 CALL                             R7 2 1
       22 JUMPIFEQKS                       R6 K6 [""] ; [+11]
       24 JUMPIFNOT                        R7 ; [+9]
       25 GETIMPORT                        R8 K8 [warn]
       27 LOADK                            R10 K9 ["StringValue %* has both val and tempId - has converted_animation_cache been manually edited?"]
       28 MOVE                             R12 R0
       29 NAMECALL                         R10 R10 K10 ["format"]
       31 CALL                             R10 2 1
       32 MOVE                             R9 R10
       33 CALL                             R8 1 0
       34 OR                               R8 R7 R6
       35 MOVE                             R4 R5
       36 JUMPIF                           R4 ; [+8]
       37 GETIMPORT                        R5 K13 [Instance.new]
       39 LOADK                            R6 K14 ["StringValue"]
       40 GETUPVAL                         R7 0
       41 CALL                             R5 2 1
       42 MOVE                             R4 R5
       43 SETTABLEKS                       R0 R4 K15 ["Name"]
       45 ORK                              R5 R1 K6 [""]
       46 SETTABLEKS                       R5 R4 K3 ["Value"]
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R7 R7 K4 ["TempId"]
       51 MOVE                             R8 R3
       52 NAMECALL                         R5 R4 K16 ["SetAttribute"]
       54 CALL                             R5 3 0
       55 JUMPIFNOT                        R2 ; [+8]
       56 NAMECALL                         R5 R4 K17 ["ClearAllChildren"]
       58 CALL                             R5 1 0
       59 NAMECALL                         R5 R2 K18 ["Clone"]
       61 CALL                             R5 1 1
       62 SETTABLEKS                       R4 R5 K19 ["Parent"]
       64 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["FindFirstChild"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["Name"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R2 K2 ["SetAttribute"]
       13 CALL                             R3 3 0
       14 RETURN                           R0 0

PROTO_9:
        0 OR                               R2 R1 R0
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R4 R2
        3 JUMPIF                           R3 ; [+11]
        4 GETUPVAL                         R4 1
        5 MOVE                             R6 R0
        6 NAMECALL                         R4 R4 K0 ["RegisterKeyframeSequence"]
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R4 ; [+2]
       10 MOVE                             R3 R4
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 GETUPVAL                         R4 0
       14 SETTABLE                         R3 R4 R2
       15 GETUPVAL                         R4 0
       16 GETTABLE                         R3 R4 R2
       17 RETURN                           R3 1

PROTO_10:
        0 OR                               R3 R1 R0
        1 GETUPVAL                         R5 0
        2 GETTABLE                         R4 R5 R3
        3 JUMPIF                           R4 ; [+11]
        4 GETUPVAL                         R5 1
        5 MOVE                             R7 R0
        6 NAMECALL                         R5 R5 K0 ["RegisterKeyframeSequence"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+2]
       10 MOVE                             R4 R5
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 GETUPVAL                         R5 0
       14 SETTABLE                         R4 R5 R3
       15 GETUPVAL                         R4 0
       16 GETTABLE                         R2 R4 R3
       17 GETUPVAL                         R4 1
       18 MOVE                             R6 R1
       19 NAMECALL                         R4 R4 K0 ["RegisterKeyframeSequence"]
       21 CALL                             R4 2 1
       22 JUMPIFNOT                        R4 ; [+2]
       23 MOVE                             R3 R4
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K1 ["addCacheEntry"]
       29 MOVE                             R5 R2
       30 LOADNIL                          R6
       31 MOVE                             R7 R1
       32 MOVE                             R8 R3
       33 CALL                             R4 4 0
       34 RETURN                           R0 0

PROTO_11:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 FASTCALL1                        TONUMBER R0 ; [+3]
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K1 [tonumber]
        7 CALL                             R1 1 1
        8 JUMPIFNOT                        R1 ; [+12]
        9 FASTCALL1                        TONUMBER R0 ; [+3]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K1 [tonumber]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 0
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K2 ["RobloxAsset"]
       20 RETURN                           R1 3
       21 FASTCALL1                        TYPEOF R0 ; [+3]
       22 MOVE                             R2 R0
       23 GETIMPORT                        R1 K4 [typeof]
       25 CALL                             R1 1 1
       26 JUMPIFNOTEQKS                    R1 K5 ["string"] ; [+19]
       28 GETUPVAL                         R1 2
       29 MOVE                             R2 R0
       30 CALL                             R1 1 1
       31 JUMPIFNOT                        R1 ; [+8]
       32 GETUPVAL                         R1 2
       33 MOVE                             R2 R0
       34 CALL                             R1 1 1
       35 MOVE                             R2 R0
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K6 ["AssetIdString"]
       39 RETURN                           R1 3
       40 MOVE                             R1 R0
       41 MOVE                             R2 R0
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K7 ["LocalAsset"]
       45 RETURN                           R1 3
       46 FASTCALL1                        TYPEOF R0 ; [+3]
       47 MOVE                             R2 R0
       48 GETIMPORT                        R1 K4 [typeof]
       50 CALL                             R1 1 1
       51 JUMPIFNOTEQKS                    R1 K8 ["table"] ; [+12]
       53 GETTABLEKS                       R1 R0 K9 ["id"]
       55 JUMPIFNOT                        R1 ; [+7]
       56 GETTABLEKS                       R1 R0 K9 ["id"]
       58 GETTABLEKS                       R2 R0 K10 ["url"]
       60 GETTABLEKS                       R3 R0 K11 ["_type"]
       62 RETURN                           R1 3
       63 RETURN                           R0 0
       64 FASTCALL1                        TYPEOF R0 ; [+3]
       65 MOVE                             R2 R0
       66 GETIMPORT                        R1 K4 [typeof]
       68 CALL                             R1 1 1
       69 JUMPIFEQKS                       R1 K12 ["Instance"] ; [+2]
       71 RETURN                           R0 0
       72 LOADK                            R3 K13 ["Animation"]
       73 NAMECALL                         R1 R0 K14 ["IsA"]
       75 CALL                             R1 2 1
       76 JUMPIFNOT                        R1 ; [+11]
       77 GETUPVAL                         R1 2
       78 GETTABLEKS                       R2 R0 K15 ["AnimationId"]
       80 CALL                             R1 1 1
       81 GETTABLEKS                       R2 R0 K15 ["AnimationId"]
       83 GETUPVAL                         R3 1
       84 GETTABLEKS                       R3 R3 K16 ["AnimationInstance"]
       86 MOVE                             R4 R0
       87 RETURN                           R1 4
       88 LOADK                            R3 K17 ["KeyframeSequence"]
       89 NAMECALL                         R1 R0 K14 ["IsA"]
       91 CALL                             R1 2 1
       92 JUMPIFNOT                        R1 ; [+24]
       93 MOVE                             R2 R0
       94 GETUPVAL                         R4 3
       95 GETTABLE                         R3 R4 R2
       96 JUMPIF                           R3 ; [+11]
       97 GETUPVAL                         R4 4
       98 MOVE                             R6 R0
       99 NAMECALL                         R4 R4 K18 ["RegisterKeyframeSequence"]
      101 CALL                             R4 2 1
      102 JUMPIFNOT                        R4 ; [+2]
      103 MOVE                             R3 R4
      104 JUMP                             ; [+1]
      105 LOADNIL                          R3
      106 GETUPVAL                         R4 3
      107 SETTABLE                         R3 R4 R2
      108 GETUPVAL                         R3 3
      109 GETTABLE                         R1 R3 R2
      110 MOVE                             R2 R1
      111 MOVE                             R3 R1
      112 GETUPVAL                         R4 1
      113 GETTABLEKS                       R4 R4 K7 ["LocalAsset"]
      115 MOVE                             R5 R0
      116 RETURN                           R2 4
      117 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 FASTCALL1                        TONUMBER R1 ; [+3]
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K1 [tonumber]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R1
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1
       13 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 3
        3 GETUPVAL                         R6 1
        4 MOVE                             R8 R1
        5 NAMECALL                         R6 R6 K0 ["FindFirstChild"]
        7 CALL                             R6 2 1
        8 JUMPIF                           R6 ; [+3]
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 JUMP                             ; [+23]
       12 GETTABLEKS                       R7 R6 K1 ["Value"]
       14 GETUPVAL                         R10 2
       15 GETTABLEKS                       R10 R10 K2 ["TempId"]
       17 NAMECALL                         R8 R6 K3 ["GetAttribute"]
       19 CALL                             R8 2 1
       20 JUMPIFEQKS                       R7 K4 [""] ; [+11]
       22 JUMPIFNOT                        R8 ; [+9]
       23 GETIMPORT                        R9 K6 [warn]
       25 LOADK                            R11 K7 ["StringValue %* has both val and tempId - has converted_animation_cache been manually edited?"]
       26 MOVE                             R13 R1
       27 NAMECALL                         R11 R11 K8 ["format"]
       29 CALL                             R11 2 1
       30 MOVE                             R10 R11
       31 CALL                             R9 1 0
       32 OR                               R9 R8 R7
       33 MOVE                             R4 R6
       34 MOVE                             R5 R9
       35 JUMPIF                           R4 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R8 R8 K9 ["Name"]
       40 NAMECALL                         R6 R4 K3 ["GetAttribute"]
       42 CALL                             R6 2 -1
       43 RETURN                           R6 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAsset"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_15:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 LOADNIL                          R3
        9 NAMECALL                         R4 R2 K2 ["GetChildren"]
       11 CALL                             R4 1 3
       12 FORGPREP                         R4
       13 LOADK                            R11 K3 ["KeyframeSequence"]
       14 NAMECALL                         R9 R8 K4 ["IsA"]
       16 CALL                             R9 2 1
       17 JUMPIFNOT                        R9 ; [+1]
       18 MOVE                             R3 R8
       19 FORGLOOP                         R4 2 ; [-7]
       21 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 SETTABLE                         R1 R3 R2
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getAnimationAssetInfo"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 LOADNIL                          R3
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K1 ["RobloxAsset"]
        9 NAMECALL                         R4 R2 K2 ["IsA"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+111]
       13 GETTABLEKS                       R4 R2 K3 ["id"]
       15 JUMPIF                           R4 ; [+2]
       16 LOADB                            R4 0
       17 RETURN                           R4 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R6 R2 K3 ["id"]
       21 GETTABLE                         R4 R5 R6
       22 JUMPIFEQKNIL                     R4 ; [+6]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R6 R2 K3 ["id"]
       27 GETTABLE                         R4 R5 R6
       28 RETURN                           R4 1
       29 GETTABLEKS                       R5 R2 K3 ["id"]
       31 GETUPVAL                         R6 3
       32 MOVE                             R8 R5
       33 NAMECALL                         R6 R6 K4 ["FindFirstChild"]
       35 CALL                             R6 2 1
       36 JUMPIF                           R6 ; [+2]
       37 LOADNIL                          R4
       38 JUMP                             ; [+22]
       39 GETTABLEKS                       R7 R6 K5 ["Value"]
       41 GETUPVAL                         R10 4
       42 GETTABLEKS                       R10 R10 K6 ["TempId"]
       44 NAMECALL                         R8 R6 K7 ["GetAttribute"]
       46 CALL                             R8 2 1
       47 JUMPIFEQKS                       R7 K8 [""] ; [+11]
       49 JUMPIFNOT                        R8 ; [+9]
       50 GETIMPORT                        R9 K10 [warn]
       52 LOADK                            R11 K11 ["StringValue %* has both val and tempId - has converted_animation_cache been manually edited?"]
       53 MOVE                             R13 R5
       54 NAMECALL                         R11 R11 K12 ["format"]
       56 CALL                             R11 2 1
       57 MOVE                             R10 R11
       58 CALL                             R9 1 0
       59 OR                               R9 R8 R7
       60 MOVE                             R4 R6
       61 JUMPIFNOT                        R4 ; [+7]
       62 GETUPVAL                         R5 2
       63 GETTABLEKS                       R6 R2 K3 ["id"]
       65 LOADB                            R7 1
       66 SETTABLE                         R7 R5 R6
       67 LOADB                            R5 1
       68 RETURN                           R5 1
       69 GETUPVAL                         R7 1
       70 GETTABLEKS                       R7 R7 K13 ["AnimationInstance"]
       72 NAMECALL                         R5 R2 K2 ["IsA"]
       74 CALL                             R5 2 1
       75 JUMPIFNOT                        R5 ; [+31]
       76 GETUPVAL                         R7 4
       77 GETTABLEKS                       R7 R7 K14 ["OriginalId"]
       79 NAMECALL                         R5 R0 K7 ["GetAttribute"]
       81 CALL                             R5 2 1
       82 JUMPIFNOT                        R5 ; [+24]
       83 GETUPVAL                         R7 4
       84 GETTABLEKS                       R7 R7 K14 ["OriginalId"]
       86 NAMECALL                         R5 R0 K7 ["GetAttribute"]
       88 CALL                             R5 2 1
       89 GETUPVAL                         R6 2
       90 LOADB                            R7 1
       91 SETTABLE                         R7 R6 R5
       92 GETUPVAL                         R6 2
       93 GETTABLEKS                       R7 R2 K3 ["id"]
       95 GETTABLEKS                       R9 R2 K3 ["id"]
       97 JUMPIFEQ                         R5 R9 ; [+2]
       99 LOADB                            R8 0 +1
      100 LOADB                            R8 1
      101 SETTABLE                         R8 R6 R7
      102 GETUPVAL                         R7 2
      103 GETTABLEKS                       R8 R2 K3 ["id"]
      105 GETTABLE                         R6 R7 R8
      106 RETURN                           R6 1
      107 JUMPIFNOT                        R1 ; [+1]
      108 RETURN                           R0 0
      109 GETUPVAL                         R5 5
      110 GETTABLEKS                       R6 R2 K3 ["id"]
      112 CALL                             R5 1 1
      113 MOVE                             R3 R5
      114 GETUPVAL                         R5 0
      115 GETTABLEKS                       R5 R5 K15 ["isR6KeyframeSequence"]
      117 MOVE                             R6 R3
      118 CALL                             R5 1 1
      119 GETUPVAL                         R6 2
      120 GETTABLEKS                       R7 R2 K3 ["id"]
      122 SETTABLE                         R5 R6 R7
      123 RETURN                           R5 1
      124 GETUPVAL                         R6 1
      125 GETTABLEKS                       R6 R6 K16 ["LocalAsset"]
      127 NAMECALL                         R4 R2 K2 ["IsA"]
      129 CALL                             R4 2 1
      130 JUMPIFNOT                        R4 ; [+1]
      131 MOVE                             R3 R0
      132 GETUPVAL                         R4 0
      133 GETTABLEKS                       R4 R4 K15 ["isR6KeyframeSequence"]
      135 MOVE                             R5 R3
      136 CALL                             R4 1 -1
      137 RETURN                           R4 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 3
        3 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getConvertedKeyframeSequence"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 FASTCALL2K                       ASSERT R2 K1 ; [+5]
       12 MOVE                             R4 R2
       13 LOADK                            R5 K1 ["no valid animation provided"]
       14 GETIMPORT                        R3 K3 [assert]
       16 CALL                             R3 2 0
       17 LOADNIL                          R3
       18 FASTCALL1                        TONUMBER R2 ; [+3]
       19 MOVE                             R5 R2
       20 GETIMPORT                        R4 K5 [tonumber]
       22 CALL                             R4 1 1
       23 JUMPIFNOT                        R4 ; [+5]
       24 GETUPVAL                         R4 2
       25 MOVE                             R5 R2
       26 CALL                             R4 1 1
       27 MOVE                             R3 R4
       28 JUMP                             ; [+1]
       29 MOVE                             R3 R0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K6 ["convertKeyframeSequence"]
       33 MOVE                             R5 R3
       34 CALL                             R4 1 1
       35 MOVE                             R1 R4
       36 MOVE                             R5 R1
       37 GETUPVAL                         R6 3
       38 MOVE                             R8 R5
       39 NAMECALL                         R6 R6 K7 ["RegisterKeyframeSequence"]
       41 CALL                             R6 2 1
       42 JUMPIFNOT                        R6 ; [+2]
       43 MOVE                             R4 R6
       44 JUMP                             ; [+1]
       45 LOADNIL                          R4
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K8 ["addCacheEntry"]
       49 MOVE                             R6 R2
       50 LOADNIL                          R7
       51 MOVE                             R8 R1
       52 MOVE                             R9 R4
       53 CALL                             R5 4 0
       54 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["isValidAssetId"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 JUMPIFNOT                        R4 ; [+9]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["addCacheEntry"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 LOADNIL                          R8
       13 CALL                             R4 4 0
       14 JUMP                             ; [+17]
       15 GETUPVAL                         R5 2
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R5 K2 ["RegisterKeyframeSequence"]
       19 CALL                             R5 2 1
       20 JUMPIFNOT                        R5 ; [+2]
       21 MOVE                             R4 R5
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K1 ["addCacheEntry"]
       27 MOVE                             R6 R0
       28 LOADNIL                          R7
       29 MOVE                             R8 R2
       30 MOVE                             R9 R4
       31 CALL                             R5 4 0
       32 JUMPIFNOT                        R3 ; [+14]
       33 GETUPVAL                         R4 3
       34 MOVE                             R6 R0
       35 NAMECALL                         R4 R4 K3 ["FindFirstChild"]
       37 CALL                             R4 2 1
       38 JUMPIF                           R4 ; [+1]
       39 RETURN                           R0 0
       40 GETUPVAL                         R7 4
       41 GETTABLEKS                       R7 R7 K4 ["Name"]
       43 MOVE                             R8 R3
       44 NAMECALL                         R5 R4 K5 ["SetAttribute"]
       46 CALL                             R5 3 0
       47 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 MOVE                             R5 R1
        5 NAMECALL                         R3 R3 K0 ["FindFirstChild"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+2]
        9 LOADNIL                          R2
       10 JUMP                             ; [+22]
       11 GETTABLEKS                       R4 R3 K1 ["Value"]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K2 ["TempId"]
       16 NAMECALL                         R5 R3 K3 ["GetAttribute"]
       18 CALL                             R5 2 1
       19 JUMPIFEQKS                       R4 K4 [""] ; [+11]
       21 JUMPIFNOT                        R5 ; [+9]
       22 GETIMPORT                        R6 K6 [warn]
       24 LOADK                            R8 K7 ["StringValue %* has both val and tempId - has converted_animation_cache been manually edited?"]
       25 MOVE                             R10 R1
       26 NAMECALL                         R8 R8 K8 ["format"]
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 CALL                             R6 1 0
       31 OR                               R6 R5 R4
       32 MOVE                             R2 R3
       33 JUMPIF                           R2 ; [+2]
       34 LOADNIL                          R3
       35 RETURN                           R3 1
       36 NAMECALL                         R3 R2 K9 ["GetChildren"]
       38 CALL                             R3 1 3
       39 FORGPREP                         R3
       40 LOADK                            R10 K10 ["KeyframeSequence"]
       41 NAMECALL                         R8 R7 K11 ["IsA"]
       43 CALL                             R8 2 1
       44 JUMPIFNOT                        R8 ; [+1]
       45 RETURN                           R7 1
       46 FORGLOOP                         R3 2 ; [-7]
       48 LOADNIL                          R3
       49 RETURN                           R3 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 3
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getConvertedAnimationAssetInfo"]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 1
        8 MOVE                             R7 R3
        9 NAMECALL                         R5 R4 K1 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+3]
       13 GETTABLEKS                       R5 R4 K2 ["id"]
       15 RETURN                           R5 1
       16 LOADNIL                          R5
       17 RETURN                           R5 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getConvertedAnimationAssetInfo"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["RobloxAsset"]
        8 NAMECALL                         R2 R1 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+3]
       12 GETTABLEKS                       R2 R1 K3 ["url"]
       14 RETURN                           R2 1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 3
        3 JUMPIF                           R1 ; [+9]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["new"]
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 CALL                             R4 4 -1
       12 RETURN                           R4 -1
       13 GETUPVAL                         R6 2
       14 MOVE                             R8 R1
       15 NAMECALL                         R6 R6 K1 ["FindFirstChild"]
       17 CALL                             R6 2 1
       18 JUMPIF                           R6 ; [+3]
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 JUMP                             ; [+23]
       22 GETTABLEKS                       R7 R6 K2 ["Value"]
       24 GETUPVAL                         R10 3
       25 GETTABLEKS                       R10 R10 K3 ["TempId"]
       27 NAMECALL                         R8 R6 K4 ["GetAttribute"]
       29 CALL                             R8 2 1
       30 JUMPIFEQKS                       R7 K5 [""] ; [+11]
       32 JUMPIFNOT                        R8 ; [+9]
       33 GETIMPORT                        R9 K7 [warn]
       35 LOADK                            R11 K8 ["StringValue %* has both val and tempId - has converted_animation_cache been manually edited?"]
       36 MOVE                             R13 R1
       37 NAMECALL                         R11 R11 K9 ["format"]
       39 CALL                             R11 2 1
       40 MOVE                             R10 R11
       41 CALL                             R9 1 0
       42 OR                               R9 R8 R7
       43 MOVE                             R4 R6
       44 MOVE                             R5 R9
       45 GETUPVAL                         R6 0
       46 MOVE                             R7 R5
       47 CALL                             R6 1 4
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K0 ["new"]
       51 MOVE                             R11 R6
       52 MOVE                             R12 R7
       53 MOVE                             R13 R8
       54 MOVE                             R14 R9
       55 CALL                             R10 4 -1
       56 RETURN                           R10 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 4
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["new"]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 MOVE                             R9 R4
       10 CALL                             R5 4 -1
       11 RETURN                           R5 -1

PROTO_26:
        0 LOADK                            R5 K0 ["KeyframeSequence"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+4]
        5 LOADK                            R5 K0 ["KeyframeSequence"]
        6 NAMECALL                         R3 R1 K1 ["IsA"]
        8 CALL                             R3 2 1
        9 FASTCALL1                        ASSERT R3 ; [+2]
       10 GETIMPORT                        R2 K3 [assert]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R3 0
       14 MOVE                             R5 R0
       15 NAMECALL                         R3 R3 K4 ["RegisterKeyframeSequence"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+2]
       19 MOVE                             R2 R3
       20 JUMP                             ; [+1]
       21 LOADNIL                          R2
       22 GETUPVAL                         R4 0
       23 MOVE                             R6 R1
       24 NAMECALL                         R4 R4 K4 ["RegisterKeyframeSequence"]
       26 CALL                             R4 2 1
       27 JUMPIFNOT                        R4 ; [+2]
       28 MOVE                             R3 R4
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 JUMPIFEQ                         R2 R3 ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 RETURN                           R4 1

PROTO_27:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 MOVE                             R8 R6
        6 CALL                             R7 1 1
        7 LOADK                            R12 K0 ["KeyframeSequence"]
        8 NAMECALL                         R10 R7 K1 ["IsA"]
       10 CALL                             R10 2 1
       11 JUMPIFNOT                        R10 ; [+4]
       12 LOADK                            R12 K0 ["KeyframeSequence"]
       13 NAMECALL                         R10 R1 K1 ["IsA"]
       15 CALL                             R10 2 1
       16 FASTCALL1                        ASSERT R10 ; [+2]
       17 GETIMPORT                        R9 K3 [assert]
       19 CALL                             R9 1 0
       20 GETUPVAL                         R10 1
       21 MOVE                             R12 R7
       22 NAMECALL                         R10 R10 K4 ["RegisterKeyframeSequence"]
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R10 ; [+2]
       26 MOVE                             R9 R10
       27 JUMP                             ; [+1]
       28 LOADNIL                          R9
       29 GETUPVAL                         R11 1
       30 MOVE                             R13 R1
       31 NAMECALL                         R11 R11 K4 ["RegisterKeyframeSequence"]
       33 CALL                             R11 2 1
       34 JUMPIFNOT                        R11 ; [+2]
       35 MOVE                             R10 R11
       36 JUMP                             ; [+1]
       37 LOADNIL                          R10
       38 JUMPIFEQ                         R9 R10 ; [+2]
       40 LOADB                            R8 0 +1
       41 LOADB                            R8 1
       42 JUMPIFNOT                        R8 ; [+1]
       43 RETURN                           R6 1
       44 FORGLOOP                         R2 2 ; [-41]
       46 LOADNIL                          R2
       47 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetProductInfo"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["data"]
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R8 R7 K2 ["name"]
       12 GETUPVAL                         R9 0
       13 JUMPIFNOTEQ                      R8 R9 ; [+9]
       15 GETTABLEKS                       R10 R7 K3 ["assetId"]
       17 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       19 MOVE                             R9 R2
       20 GETIMPORT                        R8 K6 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R3 2 ; [-14]
       25 GETUPVAL                         R3 1
       26 MOVE                             R4 R2
       27 GETUPVAL                         R5 2
       28 CALL                             R3 2 1
       29 MOVE                             R4 R3
       30 JUMPIF                           R4 ; [+4]
       31 GETTABLEKS                       R4 R0 K0 ["responseBody"]
       33 GETTABLEKS                       R4 R4 K7 ["nextPageCursor"]
       35 RETURN                           R4 1

PROTO_30:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["ERROR: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["id"]
        4 NAMECALL                         R0 R0 K1 ["GetProductInfo"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R1 K1 ["data"]
        4 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        6 GETTABLEKS                       R2 R2 K2 ["nextPageCursor"]
        8 NEWTABLE                         R3 0 0
       10 MOVE                             R4 R1
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETIMPORT                        R9 K4 [pcall]
       16 NEWCLOSURE                       R10 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R8
       19 CALL                             R9 1 2
       20 JUMPIFNOT                        R10 ; [+7]
       21 GETTABLEKS                       R11 R10 K5 ["Name"]
       23 GETUPVAL                         R12 1
       24 JUMPIFEQ                         R11 R12 ; [+3]
       26 LOADNIL                          R2
       27 JUMP                             ; [+10]
       28 GETTABLEKS                       R13 R8 K6 ["id"]
       30 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       32 MOVE                             R12 R3
       33 GETIMPORT                        R11 K9 [table.insert]
       35 CALL                             R11 2 0
       36 FORGLOOP                         R4 2 ; [-23]
       38 GETUPVAL                         R4 2
       39 MOVE                             R5 R3
       40 GETUPVAL                         R6 3
       41 CALL                             R4 2 1
       42 OR                               R5 R4 R2
       43 RETURN                           R5 1

PROTO_33:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["ERROR: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_34:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K0 ["getConvertedAnimationAssetInfo"]
        9 MOVE                             R9 R6
       10 CALL                             R8 1 1
       11 GETTABLEKS                       R9 R8 K1 ["id"]
       13 JUMPIFNOT                        R9 ; [+11]
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R11 R11 K2 ["RobloxAsset"]
       17 NAMECALL                         R9 R8 K3 ["IsA"]
       19 CALL                             R9 2 1
       20 JUMPIFNOT                        R9 ; [+4]
       21 GETTABLEKS                       R9 R8 K1 ["id"]
       23 SETTABLE                         R9 R2 R6
       24 JUMP                             ; [+145]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K4 ["convertAnimation"]
       28 MOVE                             R10 R6
       29 CALL                             R9 1 1
       30 GETIMPORT                        R10 K6 [pcall]
       32 NEWCLOSURE                       R11 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R6
       35 CALL                             R10 1 2
       36 JUMPIF                           R10 ; [+5]
       37 GETIMPORT                        R12 K8 [warn]
       39 MOVE                             R13 R11
       40 CALL                             R12 1 0
       41 JUMP                             ; [+128]
       42 GETTABLEKS                       R12 R11 K9 ["Name"]
       44 GETUPVAL                         R13 3
       45 MOVE                             R15 R6
       46 NAMECALL                         R13 R13 K10 ["FindFirstChild"]
       48 CALL                             R13 2 1
       49 JUMPIF                           R13 ; [+1]
       50 JUMP                             ; [+7]
       51 GETUPVAL                         R16 4
       52 GETTABLEKS                       R16 R16 K9 ["Name"]
       54 MOVE                             R17 R12
       55 NAMECALL                         R14 R13 K11 ["SetAttribute"]
       57 CALL                             R14 3 0
       58 GETTABLEKS                       R13 R11 K9 ["Name"]
       60 LOADK                            R14 K12 [" R15"]
       61 CONCAT                           R12 R13 R14
       62 GETTABLEKS                       R13 R11 K13 ["Creator"]
       64 GETTABLEKS                       R13 R13 K14 ["CreatorType"]
       66 GETTABLEKS                       R14 R11 K13 ["Creator"]
       68 GETTABLEKS                       R14 R14 K15 ["CreatorTargetId"]
       70 GETIMPORT                        R15 K18 [Enum.CreatorType.Group]
       72 GETTABLEKS                       R15 R15 K9 ["Name"]
       74 JUMPIFNOTEQ                      R13 R15 ; [+36]
       76 LOADNIL                          R15
       77 MOVE                             R18 R15
       78 MOVE                             R19 R14
       79 NAMECALL                         R16 R0 K19 ["getGroupAnimations"]
       81 CALL                             R16 3 1
       82 NEWCLOSURE                       R18 P1
       83 CAPTURE                          VAL R12
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          VAL R9
       86 DUPCLOSURE                       R19 K20 [PROTO_30]
       87 NAMECALL                         R16 R16 K21 ["andThen"]
       89 CALL                             R16 3 1
       90 NAMECALL                         R16 R16 K22 ["await"]
       92 CALL                             R16 1 1
       93 MOVE                             R15 R16
       94 FASTCALL1                        TONUMBER R15 ; [+3]
       95 MOVE                             R17 R15
       96 GETIMPORT                        R16 K24 [tonumber]
       98 CALL                             R16 1 1
       99 JUMPIFNOT                        R16 ; [+8]
      100 SETTABLE                         R15 R2 R6
      101 GETUPVAL                         R16 0
      102 GETTABLEKS                       R16 R16 K25 ["addCacheEntry"]
      104 MOVE                             R17 R6
      105 MOVE                             R18 R15
      106 CALL                             R16 2 0
      107 JUMP                             ; [+62]
      108 JUMPIFNOT                        R15 ; [+61]
      109 JUMPBACK                         ; [-33]
      110 JUMP                             ; [+59]
      111 GETIMPORT                        R15 K27 [Enum.CreatorType.User]
      113 GETTABLEKS                       R15 R15 K9 ["Name"]
      115 JUMPIFNOTEQ                      R13 R15 ; [+54]
      117 JUMPIFNOTEQKN                    R14 K28 [1] ; [+16]
      119 GETUPVAL                         R16 6
      120 GETTABLE                         R15 R16 R6
      121 JUMPIFNOT                        R15 ; [+11]
      122 GETUPVAL                         R16 6
      123 GETTABLE                         R15 R16 R6
      124 SETTABLE                         R15 R2 R6
      125 GETUPVAL                         R15 0
      126 GETTABLEKS                       R15 R15 K25 ["addCacheEntry"]
      128 MOVE                             R16 R6
      129 GETUPVAL                         R18 6
      130 GETTABLE                         R17 R18 R6
      131 CALL                             R15 2 0
      132 JUMP                             ; [+37]
      133 GETUPVAL                         R14 7
      134 LOADNIL                          R15
      135 MOVE                             R18 R15
      136 MOVE                             R19 R14
      137 MOVE                             R20 R12
      138 NAMECALL                         R16 R0 K29 ["getUserAnimations"]
      140 CALL                             R16 4 1
      141 NEWCLOSURE                       R18 P3
      142 CAPTURE                          UPVAL U2
      143 CAPTURE                          VAL R12
      144 CAPTURE                          UPVAL U5
      145 CAPTURE                          VAL R9
      146 DUPCLOSURE                       R19 K30 [PROTO_33]
      147 NAMECALL                         R16 R16 K21 ["andThen"]
      149 CALL                             R16 3 1
      150 NAMECALL                         R16 R16 K22 ["await"]
      152 CALL                             R16 1 1
      153 MOVE                             R15 R16
      154 FASTCALL1                        TONUMBER R15 ; [+3]
      155 MOVE                             R17 R15
      156 GETIMPORT                        R16 K24 [tonumber]
      158 CALL                             R16 1 1
      159 JUMPIFNOT                        R16 ; [+8]
      160 SETTABLE                         R15 R2 R6
      161 GETUPVAL                         R16 0
      162 GETTABLEKS                       R16 R16 K25 ["addCacheEntry"]
      164 MOVE                             R17 R6
      165 MOVE                             R18 R15
      166 CALL                             R16 2 0
      167 JUMP                             ; [+2]
      168 JUMPIFNOT                        R15 ; [+1]
      169 JUMPBACK                         ; [-35]
      170 FORGLOOP                         R3 2 ; [-165]
      172 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["MarketplaceService"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K1 [game]
       11 LOADK                            R4 K4 ["CoreGui"]
       12 NAMECALL                         R2 R2 K3 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K1 [game]
       17 LOADK                            R5 K5 ["KeyframeSequenceProvider"]
       18 NAMECALL                         R3 R3 K3 ["GetService"]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K1 [game]
       23 LOADK                            R6 K6 ["InsertService"]
       24 NAMECALL                         R4 R4 K3 ["GetService"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K1 [game]
       29 LOADK                            R7 K7 ["StudioService"]
       30 NAMECALL                         R5 R5 K3 ["GetService"]
       32 CALL                             R5 2 1
       33 NAMECALL                         R5 R5 K8 ["GetUserId"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K10 [script]
       38 LOADK                            R8 K11 ["R15Migrator"]
       39 NAMECALL                         R6 R6 K12 ["FindFirstAncestor"]
       41 CALL                             R6 2 1
       42 GETIMPORT                        R7 K14 [require]
       44 GETTABLEKS                       R8 R6 K15 ["Src"]
       46 GETTABLEKS                       R8 R8 K16 ["Resources"]
       48 GETTABLEKS                       R8 R8 K17 ["Constants"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R7 K18 ["Attributes"]
       53 GETTABLEKS                       R9 R6 K15 ["Src"]
       55 GETTABLEKS                       R9 R9 K19 ["Util"]
       57 GETIMPORT                        R10 K14 [require]
       59 GETTABLEKS                       R11 R9 K20 ["AssetIdUtil"]
       61 CALL                             R10 1 1
       62 GETTABLEKS                       R11 R9 K21 ["AnimationConversion"]
       64 GETIMPORT                        R12 K14 [require]
       66 GETTABLEKS                       R13 R11 K22 ["normalizeAssetId"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K14 [require]
       71 GETTABLEKS                       R14 R11 K23 ["constructAssetUrl"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K14 [require]
       76 GETTABLEKS                       R15 R11 K24 ["constants"]
       78 CALL                             R14 1 1
       79 GETTABLEKS                       R14 R14 K25 ["AssetType"]
       81 GETIMPORT                        R15 K14 [require]
       83 GETTABLEKS                       R16 R11 K26 ["AnimationAssetInfo"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K14 [require]
       88 GETTABLEKS                       R17 R11 K27 ["robloxAnimationsMap"]
       90 CALL                             R16 1 1
       91 LOADNIL                          R17
       92 NEWCLOSURE                       R18 P0
       93 CAPTURE                          REF R17
       94 CAPTURE                          VAL R2
       95 JUMPIF                           R17 ; [+5]
       96 LOADK                            R21 K28 ["converted_animation_cache"]
       97 NAMECALL                         R19 R2 K29 ["FindFirstChild"]
       99 CALL                             R19 2 1
      100 MOVE                             R17 R19
      101 JUMPIF                           R17 ; [+12]
      102 GETIMPORT                        R19 K32 [Instance.new]
      104 LOADK                            R20 K33 ["Folder"]
      105 MOVE                             R21 R2
      106 CALL                             R19 2 1
      107 MOVE                             R17 R19
      108 LOADK                            R19 K28 ["converted_animation_cache"]
      109 SETTABLEKS                       R19 R17 K34 ["Name"]
      111 LOADB                            R19 1
      112 SETTABLEKS                       R19 R17 K35 ["Archivable"]
      114 NEWTABLE                         R19 0 0
      116 NEWTABLE                         R20 8 0
      118 LOADK                            R21 K36 ["LeftUpperArm"]
      119 SETTABLEKS                       R21 R20 K37 ["Left Arm"]
      121 LOADK                            R21 K38 ["RightUpperArm"]
      122 SETTABLEKS                       R21 R20 K39 ["Right Arm"]
      124 LOADK                            R21 K40 ["LeftUpperLeg"]
      125 SETTABLEKS                       R21 R20 K41 ["Left Leg"]
      127 LOADK                            R21 K42 ["RightUpperLeg"]
      128 SETTABLEKS                       R21 R20 K43 ["Right Leg"]
      130 LOADK                            R21 K44 ["LowerTorso"]
      131 SETTABLEKS                       R21 R20 K45 ["Torso"]
      133 NEWTABLE                         R21 8 0
      135 LOADK                            R22 K46 ["UpperTorso"]
      136 SETTABLEKS                       R22 R21 K36 ["LeftUpperArm"]
      138 LOADK                            R22 K46 ["UpperTorso"]
      139 SETTABLEKS                       R22 R21 K38 ["RightUpperArm"]
      141 LOADK                            R22 K46 ["UpperTorso"]
      142 SETTABLEKS                       R22 R21 K47 ["Head"]
      144 LOADK                            R22 K44 ["LowerTorso"]
      145 SETTABLEKS                       R22 R21 K40 ["LeftUpperLeg"]
      147 LOADK                            R22 K44 ["LowerTorso"]
      148 SETTABLEKS                       R22 R21 K42 ["RightUpperLeg"]
      150 GETIMPORT                        R22 K50 [CFrame.fromEulerAnglesYXZ]
      152 LOADN                            R23 0
      153 LOADK                            R24 K51 [-1.5707963267949]
      154 LOADN                            R25 0
      155 CALL                             R22 3 1
      156 GETIMPORT                        R23 K50 [CFrame.fromEulerAnglesYXZ]
      158 LOADN                            R24 0
      159 LOADK                            R25 K52 [1.5707963267949]
      160 LOADN                            R26 0
      161 CALL                             R23 3 1
      162 GETIMPORT                        R24 K50 [CFrame.fromEulerAnglesYXZ]
      164 LOADK                            R25 K51 [-1.5707963267949]
      165 LOADK                            R26 K53 [3.14159265358979]
      166 LOADN                            R27 0
      167 CALL                             R24 3 1
      168 DUPTABLE                         R25 K54 [{"RightUpperArm", "RightUpperLeg", "LeftUpperArm", "LeftUpperLeg", "LowerTorso", "Head"}]
      169 NEWTABLE                         R26 0 2
      171 NAMECALL                         R27 R22 K55 ["Inverse"]
      173 CALL                             R27 1 1
      174 MOVE                             R28 R22
      175 SETLIST                          R26 R27 2 [1]
      177 SETTABLEKS                       R26 R25 K38 ["RightUpperArm"]
      179 NEWTABLE                         R26 0 2
      181 NAMECALL                         R27 R22 K55 ["Inverse"]
      183 CALL                             R27 1 1
      184 MOVE                             R28 R22
      185 SETLIST                          R26 R27 2 [1]
      187 SETTABLEKS                       R26 R25 K42 ["RightUpperLeg"]
      189 NEWTABLE                         R26 0 2
      191 NAMECALL                         R27 R23 K55 ["Inverse"]
      193 CALL                             R27 1 1
      194 MOVE                             R28 R23
      195 SETLIST                          R26 R27 2 [1]
      197 SETTABLEKS                       R26 R25 K36 ["LeftUpperArm"]
      199 NEWTABLE                         R26 0 2
      201 NAMECALL                         R27 R23 K55 ["Inverse"]
      203 CALL                             R27 1 1
      204 MOVE                             R28 R23
      205 SETLIST                          R26 R27 2 [1]
      207 SETTABLEKS                       R26 R25 K40 ["LeftUpperLeg"]
      209 NEWTABLE                         R26 0 2
      211 NAMECALL                         R27 R24 K55 ["Inverse"]
      213 CALL                             R27 1 1
      214 MOVE                             R28 R24
      215 SETLIST                          R26 R27 2 [1]
      217 SETTABLEKS                       R26 R25 K44 ["LowerTorso"]
      219 NEWTABLE                         R26 0 2
      221 NAMECALL                         R27 R24 K55 ["Inverse"]
      223 CALL                             R27 1 1
      224 MOVE                             R28 R24
      225 SETLIST                          R26 R27 2 [1]
      227 SETTABLEKS                       R26 R25 K47 ["Head"]
      229 DUPCLOSURE                       R26 K56 [PROTO_1]
      230 CAPTURE                          VAL R25
      231 DUPCLOSURE                       R27 K57 [PROTO_2]
      232 CAPTURE                          VAL R20
      233 NEWTABLE                         R28 8 0
      235 DUPTABLE                         R29 K59 [{"requiredParent"}]
      236 LOADK                            R30 K45 ["Torso"]
      237 SETTABLEKS                       R30 R29 K58 ["requiredParent"]
      239 SETTABLEKS                       R29 R28 K47 ["Head"]
      241 DUPTABLE                         R29 K59 [{"requiredParent"}]
      242 LOADK                            R30 K45 ["Torso"]
      243 SETTABLEKS                       R30 R29 K58 ["requiredParent"]
      245 SETTABLEKS                       R29 R28 K37 ["Left Arm"]
      247 DUPTABLE                         R29 K59 [{"requiredParent"}]
      248 LOADK                            R30 K45 ["Torso"]
      249 SETTABLEKS                       R30 R29 K58 ["requiredParent"]
      251 SETTABLEKS                       R29 R28 K39 ["Right Arm"]
      253 DUPTABLE                         R29 K59 [{"requiredParent"}]
      254 LOADK                            R30 K45 ["Torso"]
      255 SETTABLEKS                       R30 R29 K58 ["requiredParent"]
      257 SETTABLEKS                       R29 R28 K41 ["Left Leg"]
      259 DUPTABLE                         R29 K59 [{"requiredParent"}]
      260 LOADK                            R30 K45 ["Torso"]
      261 SETTABLEKS                       R30 R29 K58 ["requiredParent"]
      263 SETTABLEKS                       R29 R28 K43 ["Right Leg"]
      265 NEWTABLE                         R29 0 0
      267 SETTABLEKS                       R29 R28 K45 ["Torso"]
      269 NEWTABLE                         R29 16 0
      271 LOADB                            R30 1
      272 SETTABLEKS                       R30 R29 K36 ["LeftUpperArm"]
      274 LOADB                            R30 1
      275 SETTABLEKS                       R30 R29 K60 ["LeftLowerArm"]
      277 LOADB                            R30 1
      278 SETTABLEKS                       R30 R29 K61 ["LeftHand"]
      280 LOADB                            R30 1
      281 SETTABLEKS                       R30 R29 K38 ["RightUpperArm"]
      283 LOADB                            R30 1
      284 SETTABLEKS                       R30 R29 K62 ["RightLowerArm"]
      286 LOADB                            R30 1
      287 SETTABLEKS                       R30 R29 K63 ["RightHand"]
      289 LOADB                            R30 1
      290 SETTABLEKS                       R30 R29 K40 ["LeftUpperLeg"]
      292 LOADB                            R30 1
      293 SETTABLEKS                       R30 R29 K64 ["LeftLowerLeg"]
      295 LOADB                            R30 1
      296 SETTABLEKS                       R30 R29 K65 ["LeftFoot"]
      298 LOADB                            R30 1
      299 SETTABLEKS                       R30 R29 K42 ["RightUpperLeg"]
      301 LOADB                            R30 1
      302 SETTABLEKS                       R30 R29 K66 ["RightLowerLeg"]
      304 LOADB                            R30 1
      305 SETTABLEKS                       R30 R29 K67 ["RightFoot"]
      307 LOADB                            R30 1
      308 SETTABLEKS                       R30 R29 K46 ["UpperTorso"]
      310 LOADB                            R30 1
      311 SETTABLEKS                       R30 R29 K44 ["LowerTorso"]
      313 NEWTABLE                         R30 0 0
      315 DUPCLOSURE                       R31 K68 [PROTO_3]
      316 CAPTURE                          VAL R28
      317 CAPTURE                          VAL R29
      318 SETTABLEKS                       R31 R0 K69 ["isR6KeyframeSequence"]
      320 DUPCLOSURE                       R31 K70 [PROTO_4]
      321 CAPTURE                          VAL R0
      322 CAPTURE                          VAL R20
      323 CAPTURE                          VAL R25
      324 CAPTURE                          VAL R21
      325 SETTABLEKS                       R31 R0 K71 ["convertKeyframeSequence"]
      327 DUPCLOSURE                       R31 K72 [PROTO_5]
      328 CAPTURE                          VAL R3
      329 NEWCLOSURE                       R32 P6
      330 CAPTURE                          REF R17
      331 CAPTURE                          VAL R8
      332 NEWCLOSURE                       R33 P7
      333 CAPTURE                          REF R17
      334 CAPTURE                          VAL R8
      335 SETTABLEKS                       R33 R0 K73 ["addCacheEntry"]
      337 NEWCLOSURE                       R33 P8
      338 CAPTURE                          REF R17
      339 CAPTURE                          VAL R8
      340 DUPCLOSURE                       R34 K74 [PROTO_9]
      341 CAPTURE                          VAL R30
      342 CAPTURE                          VAL R3
      343 DUPCLOSURE                       R35 K75 [PROTO_10]
      344 CAPTURE                          VAL R30
      345 CAPTURE                          VAL R3
      346 CAPTURE                          VAL R0
      347 SETTABLEKS                       R35 R0 K76 ["registerConvertedKeyframeSequence"]
      349 DUPCLOSURE                       R35 K77 [PROTO_11]
      350 CAPTURE                          VAL R13
      351 CAPTURE                          VAL R14
      352 CAPTURE                          VAL R12
      353 CAPTURE                          VAL R30
      354 CAPTURE                          VAL R3
      355 DUPCLOSURE                       R36 K78 [PROTO_12]
      356 CAPTURE                          VAL R35
      357 CAPTURE                          VAL R13
      358 SETTABLEKS                       R36 R0 K79 ["getAnimationId"]
      360 NEWCLOSURE                       R36 P13
      361 CAPTURE                          VAL R35
      362 CAPTURE                          REF R17
      363 CAPTURE                          VAL R8
      364 SETTABLEKS                       R36 R0 K80 ["getCachedName"]
      366 DUPCLOSURE                       R36 K81 [PROTO_15]
      367 CAPTURE                          VAL R4
      368 DUPCLOSURE                       R37 K82 [PROTO_16]
      369 CAPTURE                          VAL R35
      370 CAPTURE                          VAL R19
      371 SETTABLEKS                       R37 R0 K83 ["overrideIsR6Cache"]
      373 NEWCLOSURE                       R37 P16
      374 CAPTURE                          VAL R0
      375 CAPTURE                          VAL R14
      376 CAPTURE                          VAL R19
      377 CAPTURE                          REF R17
      378 CAPTURE                          VAL R8
      379 CAPTURE                          VAL R36
      380 SETTABLEKS                       R37 R0 K84 ["isR6Animation"]
      382 DUPCLOSURE                       R37 K85 [PROTO_18]
      383 CAPTURE                          VAL R35
      384 SETTABLEKS                       R37 R0 K86 ["getNormalizedAssetId"]
      386 DUPCLOSURE                       R37 K87 [PROTO_19]
      387 CAPTURE                          VAL R0
      388 CAPTURE                          VAL R35
      389 CAPTURE                          VAL R36
      390 CAPTURE                          VAL R3
      391 SETTABLEKS                       R37 R0 K88 ["convertAnimation"]
      393 NEWCLOSURE                       R37 P19
      394 CAPTURE                          VAL R10
      395 CAPTURE                          VAL R0
      396 CAPTURE                          VAL R3
      397 CAPTURE                          REF R17
      398 CAPTURE                          VAL R8
      399 SETTABLEKS                       R37 R0 K89 ["registerConvertedAssetId"]
      401 NEWCLOSURE                       R37 P20
      402 CAPTURE                          VAL R35
      403 CAPTURE                          REF R17
      404 CAPTURE                          VAL R8
      405 SETTABLEKS                       R37 R0 K90 ["getConvertedKeyframeSequence"]
      407 DUPCLOSURE                       R37 K91 [PROTO_22]
      408 CAPTURE                          VAL R35
      409 CAPTURE                          VAL R0
      410 SETTABLEKS                       R37 R0 K92 ["getConvertedAssetId"]
      412 DUPCLOSURE                       R37 K93 [PROTO_23]
      413 CAPTURE                          VAL R0
      414 CAPTURE                          VAL R14
      415 SETTABLEKS                       R37 R0 K94 ["getConvertedAssetUrl"]
      417 NEWCLOSURE                       R37 P23
      418 CAPTURE                          VAL R35
      419 CAPTURE                          VAL R15
      420 CAPTURE                          REF R17
      421 CAPTURE                          VAL R8
      422 SETTABLEKS                       R37 R0 K95 ["getConvertedAnimationAssetInfo"]
      424 DUPCLOSURE                       R37 K96 [PROTO_25]
      425 CAPTURE                          VAL R35
      426 CAPTURE                          VAL R15
      427 SETTABLEKS                       R37 R0 K97 ["getAnimationAssetInfo"]
      429 DUPCLOSURE                       R37 K98 [PROTO_26]
      430 CAPTURE                          VAL R3
      431 DUPCLOSURE                       R38 K99 [PROTO_27]
      432 CAPTURE                          VAL R36
      433 CAPTURE                          VAL R3
      434 NEWCLOSURE                       R39 P27
      435 CAPTURE                          VAL R0
      436 CAPTURE                          VAL R14
      437 CAPTURE                          VAL R1
      438 CAPTURE                          REF R17
      439 CAPTURE                          VAL R8
      440 CAPTURE                          VAL R38
      441 CAPTURE                          VAL R16
      442 CAPTURE                          VAL R5
      443 SETTABLEKS                       R39 R0 K100 ["checkIfAssetsAlreadyConverted"]
      445 CLOSEUPVALS                      R17
      446 RETURN                           R0 1
