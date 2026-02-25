PROTO_0:
        0 SUB                              R2 R0 R1
        1 GETUPVAL                         R3 0
        2 MOVE                             R4 R2
        3 CALL                             R3 1 1
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R2 K0 ["Unit"]
        8 LOADK                            R6 K1 [{0, 0, 1}]
        9 NAMECALL                         R4 R2 K2 ["Cross"]
       11 CALL                             R4 2 1
       12 GETTABLEKS                       R3 R4 K0 ["Unit"]
       14 GETUPVAL                         R4 0
       15 MOVE                             R5 R3
       16 CALL                             R4 1 1
       17 JUMPIF                           R4 ; [+14]
       18 GETTABLEKS                       R5 R2 K3 ["Z"]
       20 LOADN                            R6 0
       21 JUMPIFNOTLT                      R5 R6 ; [+3]
       23 LOADK                            R4 K4 [{0, 1, 0}]
       24 JUMP                             ; [+1]
       25 LOADK                            R4 K5 [{0, -1, 0}]
       26 MOVE                             R7 R4
       27 NAMECALL                         R5 R2 K2 ["Cross"]
       29 CALL                             R5 2 1
       30 GETTABLEKS                       R3 R5 K0 ["Unit"]
       32 MOVE                             R7 R2
       33 NAMECALL                         R5 R3 K2 ["Cross"]
       35 CALL                             R5 2 1
       36 GETTABLEKS                       R4 R5 K0 ["Unit"]
       38 GETIMPORT                        R5 K8 [CFrame.fromMatrix]
       40 MOVE                             R6 R0
       41 MOVE                             R7 R3
       42 MOVE                             R8 R2
       43 MOVE                             R9 R4
       44 CALL                             R5 4 -1
       45 RETURN                           R5 -1

PROTO_1:
        0 JUMPIFNOT                        R4 ; [+8]
        1 GETTABLEKS                       R7 R0 K0 ["Name"]
        3 GETTABLE                         R6 R4 R7
        4 JUMPIFNOT                        R6 ; [+4]
        5 GETTABLEKS                       R6 R0 K0 ["Name"]
        7 GETTABLE                         R5 R4 R6
        8 JUMP                             ; [+3]
        9 GETIMPORT                        R5 K3 [CFrame.new]
       11 CALL                             R5 0 1
       12 MOVE                             R6 R2
       13 JUMPIFNOT                        R1 ; [+44]
       14 MOVE                             R7 R3
       15 MOVE                             R8 R1
       16 CALL                             R7 1 1
       17 FASTCALL1                        ASSERT R7 ; [+3]
       18 MOVE                             R9 R7
       19 GETIMPORT                        R8 K5 [assert]
       21 CALL                             R8 1 0
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K6 ["getRigAttachmentToParent"]
       25 LOADNIL                          R9
       26 GETTABLEKS                       R10 R0 K0 ["Name"]
       28 CALL                             R8 2 1
       29 MOVE                             R11 R8
       30 NAMECALL                         R9 R7 K7 ["FindFirstChild"]
       32 CALL                             R9 2 1
       33 FASTCALL1                        ASSERT R9 ; [+3]
       34 MOVE                             R11 R9
       35 GETIMPORT                        R10 K5 [assert]
       37 CALL                             R10 1 0
       38 MOVE                             R12 R8
       39 NAMECALL                         R10 R0 K7 ["FindFirstChild"]
       41 CALL                             R10 2 1
       42 FASTCALL1                        ASSERT R10 ; [+3]
       43 MOVE                             R12 R10
       44 GETIMPORT                        R11 K5 [assert]
       46 CALL                             R11 1 0
       47 GETTABLEKS                       R13 R9 K1 ["CFrame"]
       49 MUL                              R12 R6 R13
       50 MUL                              R11 R12 R5
       51 GETTABLEKS                       R12 R10 K1 ["CFrame"]
       53 NAMECALL                         R12 R12 K8 ["Inverse"]
       55 CALL                             R12 1 1
       56 MUL                              R6 R11 R12
       57 RETURN                           R6 1
       58 MOVE                             R6 R5
       59 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 FASTCALL1                        ASSERT R4 ; [+3]
        4 MOVE                             R6 R4
        5 GETIMPORT                        R5 K1 [assert]
        7 CALL                             R5 1 0
        8 GETUPVAL                         R5 1
        9 MOVE                             R6 R4
       10 MOVE                             R7 R1
       11 MOVE                             R8 R3
       12 GETUPVAL                         R9 0
       13 GETUPVAL                         R10 2
       14 CALL                             R5 5 1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R7 R4 K2 ["Name"]
       18 SETTABLE                         R5 R6 R7
       19 GETTABLEKS                       R6 R2 K3 ["children"]
       21 JUMPIF                           R6 ; [+1]
       22 RETURN                           R0 0
       23 GETTABLEKS                       R6 R2 K3 ["children"]
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 FORGPREP                         R6
       28 GETUPVAL                         R11 4
       29 MOVE                             R12 R9
       30 MOVE                             R13 R0
       31 MOVE                             R14 R10
       32 MOVE                             R15 R5
       33 CALL                             R11 4 0
       34 FORGLOOP                         R6 2 ; [-7]
       36 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R4
        8 MOVE                             R5 R4
        9 GETTABLEKS                       R6 R0 K0 ["root"]
       11 LOADNIL                          R7
       12 MOVE                             R8 R0
       13 GETIMPORT                        R9 K3 [CFrame.new]
       15 CALL                             R9 0 -1
       16 CALL                             R5 -1 0
       17 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Rotation"]
        2 NAMECALL                         R3 R3 K1 ["Inverse"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R4 R1 K0 ["Rotation"]
        7 MUL                              R2 R3 R4
        8 GETTABLEKS                       R4 R0 K0 ["Rotation"]
       10 NAMECALL                         R4 R4 K1 ["Inverse"]
       12 CALL                             R4 1 1
       13 GETTABLEKS                       R6 R1 K2 ["Position"]
       15 GETTABLEKS                       R7 R0 K2 ["Position"]
       17 SUB                              R5 R6 R7
       18 MUL                              R3 R4 R5
       19 GETIMPORT                        R5 K5 [CFrame.new]
       21 MOVE                             R6 R3
       22 CALL                             R5 1 1
       23 MUL                              R4 R5 R2
       24 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETTABLEN                        R5 R2 1
        4 GETTABLE                         R4 R1 R5
        5 GETTABLEKS                       R3 R4 K0 ["Position"]
        7 GETTABLEN                        R6 R2 3
        8 GETTABLE                         R5 R1 R6
        9 GETTABLEKS                       R4 R5 K0 ["Position"]
       11 GETUPVAL                         R5 1
       12 MOVE                             R6 R3
       13 MOVE                             R7 R4
       14 CALL                             R5 2 -1
       15 RETURN                           R5 -1

PROTO_6:
        0 LOADB                            R2 1
        1 GETIMPORT                        R3 K3 [Enum.AssetType.LeftArm]
        3 JUMPIFEQ                         R0 R3 ; [+17]
        5 LOADB                            R2 1
        6 GETIMPORT                        R3 K5 [Enum.AssetType.RightArm]
        8 JUMPIFEQ                         R0 R3 ; [+12]
       10 LOADB                            R2 1
       11 GETIMPORT                        R3 K7 [Enum.AssetType.LeftLeg]
       13 JUMPIFEQ                         R0 R3 ; [+7]
       15 GETIMPORT                        R3 K9 [Enum.AssetType.RightLeg]
       17 JUMPIFEQ                         R0 R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 FASTCALL1                        ASSERT R2 ; [+2]
       22 GETIMPORT                        R1 K11 [assert]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 FASTCALL1                        ASSERT R3 ; [+3]
        5 MOVE                             R5 R3
        6 GETIMPORT                        R4 K2 [assert]
        8 CALL                             R4 1 0
        9 GETTABLEKS                       R5 R3 K3 ["CFrame"]
       11 MUL                              R4 R2 R5
       12 RETURN                           R4 1

PROTO_8:
        0 LOADB                            R4 1
        1 GETIMPORT                        R5 K3 [Enum.AssetType.LeftArm]
        3 JUMPIFEQ                         R0 R5 ; [+17]
        5 LOADB                            R4 1
        6 GETIMPORT                        R5 K5 [Enum.AssetType.RightArm]
        8 JUMPIFEQ                         R0 R5 ; [+12]
       10 LOADB                            R4 1
       11 GETIMPORT                        R5 K7 [Enum.AssetType.LeftLeg]
       13 JUMPIFEQ                         R0 R5 ; [+7]
       15 GETIMPORT                        R5 K9 [Enum.AssetType.RightLeg]
       17 JUMPIFEQ                         R0 R5 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 FASTCALL1                        ASSERT R4 ; [+2]
       22 GETIMPORT                        R3 K11 [assert]
       24 CALL                             R3 1 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K12 ["getRigAttachmentToParent"]
       28 MOVE                             R4 R0
       29 GETTABLEKS                       R5 R1 K13 ["Name"]
       31 CALL                             R3 2 1
       32 JUMPIFNOTEQKS                    R3 K14 [""] ; [+2]
       34 RETURN                           R0 0
       35 MOVE                             R7 R3
       36 NAMECALL                         R5 R1 K15 ["FindFirstChild"]
       38 CALL                             R5 2 1
       39 FASTCALL1                        ASSERT R5 ; [+3]
       40 MOVE                             R7 R5
       41 GETIMPORT                        R6 K11 [assert]
       43 CALL                             R6 1 0
       44 GETTABLEKS                       R6 R5 K16 ["CFrame"]
       46 MUL                              R4 R2 R6
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R5 R6 K17 ["getAssetRigChild"]
       50 MOVE                             R6 R0
       51 GETTABLEKS                       R7 R1 K13 ["Name"]
       53 CALL                             R5 2 1
       54 JUMPIF                           R5 ; [+1]
       55 RETURN                           R0 0
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R6 R7 K12 ["getRigAttachmentToParent"]
       59 MOVE                             R7 R0
       60 MOVE                             R8 R5
       61 CALL                             R6 2 1
       62 MOVE                             R10 R6
       63 NAMECALL                         R8 R1 K15 ["FindFirstChild"]
       65 CALL                             R8 2 1
       66 FASTCALL1                        ASSERT R8 ; [+3]
       67 MOVE                             R10 R8
       68 GETIMPORT                        R9 K11 [assert]
       70 CALL                             R9 1 0
       71 GETTABLEKS                       R9 R8 K16 ["CFrame"]
       73 MUL                              R7 R2 R9
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R9 R4 K18 ["Position"]
       77 GETTABLEKS                       R10 R7 K18 ["Position"]
       79 CALL                             R8 2 -1
       80 RETURN                           R8 -1

PROTO_9:
        0 LOADB                            R4 1
        1 GETIMPORT                        R5 K3 [Enum.AssetType.LeftArm]
        3 JUMPIFEQ                         R0 R5 ; [+17]
        5 LOADB                            R4 1
        6 GETIMPORT                        R5 K5 [Enum.AssetType.RightArm]
        8 JUMPIFEQ                         R0 R5 ; [+12]
       10 LOADB                            R4 1
       11 GETIMPORT                        R5 K7 [Enum.AssetType.LeftLeg]
       13 JUMPIFEQ                         R0 R5 ; [+7]
       15 GETIMPORT                        R5 K9 [Enum.AssetType.RightLeg]
       17 JUMPIFEQ                         R0 R5 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 FASTCALL1                        ASSERT R4 ; [+2]
       22 GETIMPORT                        R3 K11 [assert]
       24 CALL                             R3 1 0
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K12 ["Dictionary"]
       28 GETTABLEKS                       R3 R4 K13 ["join"]
       30 MOVE                             R4 R1
       31 CALL                             R3 1 1
       32 LOADNIL                          R4
       33 GETIMPORT                        R5 K16 [CFrame.new]
       35 CALL                             R5 0 1
       36 GETUPVAL                         R6 1
       37 MOVE                             R7 R0
       38 CALL                             R6 1 3
       39 FORGPREP                         R6
       40 MOVE                             R11 R2
       41 MOVE                             R12 R10
       42 CALL                             R11 1 1
       43 MOVE                             R12 R5
       44 GETUPVAL                         R14 2
       45 GETTABLEKS                       R13 R14 K17 ["getAssetRigChild"]
       47 MOVE                             R14 R0
       48 MOVE                             R15 R10
       49 CALL                             R13 2 1
       50 JUMPIFEQKNIL                     R13 ; [+2]
       52 LOADB                            R14 0 +1
       53 LOADB                            R14 1
       54 JUMPIF                           R14 ; [+8]
       55 GETUPVAL                         R16 3
       56 GETTABLEKS                       R15 R16 K18 ["calculatePartCFrameFromRigAttachments"]
       58 MOVE                             R16 R0
       59 MOVE                             R17 R11
       60 GETTABLE                         R18 R1 R10
       61 CALL                             R15 3 1
       62 OR                               R12 R15 R12
       63 MOVE                             R16 R12
       64 GETTABLE                         R17 R1 R10
       65 GETTABLEKS                       R19 R16 K19 ["Rotation"]
       67 NAMECALL                         R19 R19 K20 ["Inverse"]
       69 CALL                             R19 1 1
       70 GETTABLEKS                       R20 R17 K19 ["Rotation"]
       72 MUL                              R18 R19 R20
       73 GETTABLEKS                       R20 R16 K19 ["Rotation"]
       75 NAMECALL                         R20 R20 K20 ["Inverse"]
       77 CALL                             R20 1 1
       78 GETTABLEKS                       R22 R17 K21 ["Position"]
       80 GETTABLEKS                       R23 R16 K21 ["Position"]
       82 SUB                              R21 R22 R23
       83 MUL                              R19 R20 R21
       84 GETIMPORT                        R20 K16 [CFrame.new]
       86 MOVE                             R21 R19
       87 CALL                             R20 1 1
       88 MUL                              R15 R20 R18
       89 SETTABLE                         R15 R3 R10
       90 JUMPIFNOT                        R4 ; [+34]
       91 GETUPVAL                         R17 4
       92 GETTABLEKS                       R16 R17 K22 ["getRigAttachmentToParent"]
       94 MOVE                             R17 R0
       95 MOVE                             R18 R10
       96 CALL                             R16 2 1
       97 GETTABLE                         R17 R3 R10
       98 MOVE                             R20 R16
       99 NAMECALL                         R18 R11 K23 ["FindFirstChild"]
      101 CALL                             R18 2 1
      102 FASTCALL1                        ASSERT R18 ; [+3]
      103 MOVE                             R20 R18
      104 GETIMPORT                        R19 K11 [assert]
      106 CALL                             R19 1 0
      107 GETTABLEKS                       R19 R18 K14 ["CFrame"]
      109 MUL                              R15 R17 R19
      110 GETTABLEKS                       R17 R15 K21 ["Position"]
      112 SUB                              R16 R4 R17
      113 GETIMPORT                        R18 K16 [CFrame.new]
      115 GETTABLE                         R21 R3 R10
      116 GETTABLEKS                       R20 R21 K21 ["Position"]
      118 ADD                              R19 R20 R16
      119 CALL                             R18 1 1
      120 GETTABLE                         R20 R3 R10
      121 GETTABLEKS                       R19 R20 K19 ["Rotation"]
      123 MUL                              R17 R18 R19
      124 SETTABLE                         R17 R3 R10
      125 JUMPIF                           R14 ; [+22]
      126 MOVE                             R5 R12
      127 GETUPVAL                         R17 4
      128 GETTABLEKS                       R16 R17 K22 ["getRigAttachmentToParent"]
      130 MOVE                             R17 R0
      131 MOVE                             R18 R13
      132 CALL                             R16 2 1
      133 GETTABLE                         R17 R3 R10
      134 MOVE                             R20 R16
      135 NAMECALL                         R18 R11 K23 ["FindFirstChild"]
      137 CALL                             R18 2 1
      138 FASTCALL1                        ASSERT R18 ; [+3]
      139 MOVE                             R20 R18
      140 GETIMPORT                        R19 K11 [assert]
      142 CALL                             R19 1 0
      143 GETTABLEKS                       R19 R18 K14 ["CFrame"]
      145 MUL                              R15 R17 R19
      146 GETTABLEKS                       R4 R15 K21 ["Position"]
      148 FORGLOOP                         R6 2 ; [-109]
      150 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["calculateAllTransformsForAsset"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETIMPORT                        R3 K4 [Enum.AssetType.DynamicHead]
        8 JUMPIFNOTEQ                      R3 R0 ; [+4]
       10 GETTABLEKS                       R3 R2 K5 ["Head"]
       12 RETURN                           R3 1
       13 GETIMPORT                        R3 K7 [Enum.AssetType.Torso]
       15 JUMPIFNOTEQ                      R3 R0 ; [+4]
       17 GETTABLEKS                       R3 R2 K8 ["LowerTorso"]
       19 RETURN                           R3 1
       20 GETUPVAL                         R3 1
       21 MOVE                             R4 R0
       22 MOVE                             R5 R2
       23 CALL                             R3 2 -1
       24 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R2 K3 [Enum.AssetType.DynamicHead]
        2 JUMPIFNOTEQ                      R2 R0 ; [+9]
        4 NEWTABLE                         R2 1 0
        6 GETIMPORT                        R3 K6 [CFrame.new]
        8 CALL                             R3 0 1
        9 SETTABLEKS                       R3 R2 K7 ["Head"]
       11 RETURN                           R2 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R1
       14 GETUPVAL                         R3 0
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K8 ["assetHierarchy"]
       18 GETTABLE                         R4 R5 R0
       19 MOVE                             R5 R2
       20 CALL                             R3 2 1
       21 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_14:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETUPVAL                         R3 0
        4 JUMP                             ; [+1]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 MOVE                             R5 R3
        8 MOVE                             R6 R2
        9 MOVE                             R7 R1
       10 CALL                             R4 3 1
       11 RETURN                           R4 1

PROTO_15:
        0 LOADB                            R3 1
        1 GETIMPORT                        R4 K3 [Enum.AssetType.LeftArm]
        3 JUMPIFEQ                         R0 R4 ; [+17]
        5 LOADB                            R3 1
        6 GETIMPORT                        R4 K5 [Enum.AssetType.RightArm]
        8 JUMPIFEQ                         R0 R4 ; [+12]
       10 LOADB                            R3 1
       11 GETIMPORT                        R4 K7 [Enum.AssetType.LeftLeg]
       13 JUMPIFEQ                         R0 R4 ; [+7]
       15 GETIMPORT                        R4 K9 [Enum.AssetType.RightLeg]
       17 JUMPIFEQ                         R0 R4 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 FASTCALL1                        ASSERT R3 ; [+2]
       22 GETIMPORT                        R2 K11 [assert]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R3 0
       26 MOVE                             R4 R0
       27 CALL                             R3 1 1
       28 GETTABLEN                        R6 R3 1
       29 GETTABLE                         R5 R1 R6
       30 GETTABLEKS                       R4 R5 K12 ["Position"]
       32 GETTABLEN                        R7 R3 3
       33 GETTABLE                         R6 R1 R7
       34 GETTABLEKS                       R5 R6 K12 ["Position"]
       36 GETUPVAL                         R6 1
       37 MOVE                             R7 R4
       38 MOVE                             R8 R5
       39 CALL                             R6 2 1
       40 MOVE                             R2 R6
       41 NEWTABLE                         R3 0 0
       43 GETUPVAL                         R4 0
       44 MOVE                             R5 R0
       45 CALL                             R4 1 3
       46 FORGPREP                         R4
       47 JUMPIFNOT                        R2 ; [+26]
       48 GETTABLE                         R10 R1 R8
       49 GETTABLEKS                       R12 R2 K13 ["Rotation"]
       51 NAMECALL                         R12 R12 K14 ["Inverse"]
       53 CALL                             R12 1 1
       54 GETTABLEKS                       R13 R10 K13 ["Rotation"]
       56 MUL                              R11 R12 R13
       57 GETTABLEKS                       R13 R2 K13 ["Rotation"]
       59 NAMECALL                         R13 R13 K14 ["Inverse"]
       61 CALL                             R13 1 1
       62 GETTABLEKS                       R15 R10 K12 ["Position"]
       64 GETTABLEKS                       R16 R2 K12 ["Position"]
       66 SUB                              R14 R15 R16
       67 MUL                              R12 R13 R14
       68 GETIMPORT                        R13 K17 [CFrame.new]
       70 MOVE                             R14 R12
       71 CALL                             R13 1 1
       72 MUL                              R9 R13 R11
       73 JUMP                             ; [+1]
       74 GETTABLE                         R9 R1 R8
       75 SETTABLE                         R9 R3 R8
       76 FORGLOOP                         R4 2 ; [-30]
       78 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 ORK                              R4 R1 K0 ["HumanoidRootPart"]
        2 SETTABLE                         R4 R3 R0
        3 GETTABLEKS                       R3 R2 K1 ["children"]
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R2 K1 ["children"]
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETUPVAL                         R8 1
       13 MOVE                             R9 R6
       14 MOVE                             R10 R0
       15 MOVE                             R11 R7
       16 CALL                             R8 3 0
       17 FORGLOOP                         R3 2 ; [-6]
       19 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 MOVE                             R2 R1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["root"]
        9 LOADNIL                          R4
       10 GETUPVAL                         R5 0
       11 CALL                             R2 3 0
       12 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K3 [Enum.AssetType.DynamicHead]
        3 JUMPIFNOTEQ                      R1 R2 ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R2 R1 K0 ["assetTypeEnum"]
        2 FASTCALL1                        ASSERT R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 1 0
        7 NEWTABLE                         R3 0 0
        9 GETIMPORT                        R4 K6 [Enum.AssetType.DynamicHead]
       11 JUMPIFNOTEQ                      R2 R4 ; [+10]
       13 GETTABLEKS                       R6 R0 K7 ["Name"]
       15 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       17 MOVE                             R5 R3
       18 GETIMPORT                        R4 K10 [table.insert]
       20 CALL                             R4 2 0
       21 JUMP                             ; [+19]
       22 NAMECALL                         R4 R0 K11 ["GetChildren"]
       24 CALL                             R4 1 3
       25 FORGPREP                         R4
       26 LOADK                            R11 K12 ["MeshPart"]
       27 NAMECALL                         R9 R8 K13 ["IsA"]
       29 CALL                             R9 2 1
       30 JUMPIFNOT                        R9 ; [+8]
       31 GETTABLEKS                       R11 R8 K7 ["Name"]
       33 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       35 MOVE                             R10 R3
       36 GETIMPORT                        R9 K10 [table.insert]
       38 CALL                             R9 2 0
       39 FORGLOOP                         R4 2 ; [-14]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R4 R5 K14 ["calculateAllTransformsForAsset"]
       44 MOVE                             R5 R2
       45 MOVE                             R6 R0
       46 CALL                             R4 2 1
       47 NEWCLOSURE                       R5 P0
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R0
       50 GETIMPORT                        R6 K6 [Enum.AssetType.DynamicHead]
       52 JUMPIFEQ                         R2 R6 ; [+19]
       54 GETIMPORT                        R6 K16 [Enum.AssetType.Torso]
       56 JUMPIFEQ                         R2 R6 ; [+15]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R6 R7 K17 ["calculateStraightenedLimb"]
       61 MOVE                             R7 R2
       62 MOVE                             R8 R4
       63 MOVE                             R9 R5
       64 CALL                             R6 3 1
       65 MOVE                             R7 R6
       66 LOADNIL                          R8
       67 LOADNIL                          R9
       68 FORGPREP                         R7
       69 SETTABLE                         R11 R4 R10
       70 FORGLOOP                         R7 2 ; [-2]
       72 GETUPVAL                         R6 1
       73 MOVE                             R7 R3
       74 MOVE                             R8 R5
       75 MOVE                             R9 R1
       76 CALL                             R6 3 1
       77 NEWTABLE                         R7 0 0
       79 MOVE                             R8 R3
       80 LOADNIL                          R9
       81 LOADNIL                          R10
       82 FORGPREP                         R8
       83 DUPTABLE                         R13 K20 [{"CFrame", "scale"}]
       84 GETTABLE                         R14 R4 R12
       85 SETTABLEKS                       R14 R13 K18 ["CFrame"]
       87 GETTABLE                         R14 R6 R12
       88 SETTABLEKS                       R14 R13 K19 ["scale"]
       90 SETTABLE                         R13 R7 R12
       91 FORGLOOP                         R8 2 ; [-9]
       93 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K5 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["ConstantsInterface"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K7 ["util"]
       23 GETTABLEKS                       R4 R5 K8 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K7 ["util"]
       30 GETTABLEKS                       R5 R6 K9 ["canBeNormalized"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K7 ["util"]
       37 GETTABLEKS                       R6 R7 K10 ["getPartNamesInHierarchyOrder"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K7 ["util"]
       44 GETTABLEKS                       R7 R8 K11 ["AssetTraversalUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R9 R0 K7 ["util"]
       51 GETTABLEKS                       R8 R9 K12 ["getMeshScales"]
       53 CALL                             R7 1 1
       54 DUPTABLE                         R8 K15 [{"root", "children"}]
       55 LOADK                            R9 K16 ["LowerTorso"]
       56 SETTABLEKS                       R9 R8 K13 ["root"]
       58 DUPTABLE                         R9 K20 [{"UpperTorso", "LeftUpperLeg", "RightUpperLeg"}]
       59 DUPTABLE                         R10 K21 [{"children"}]
       60 DUPTABLE                         R11 K25 [{"Head", "LeftUpperArm", "RightUpperArm"}]
       61 GETTABLEKS                       R13 R6 K26 ["assetHierarchy"]
       63 GETIMPORT                        R14 K30 [Enum.AssetType.DynamicHead]
       65 GETTABLE                         R12 R13 R14
       66 SETTABLEKS                       R12 R11 K22 ["Head"]
       68 GETTABLEKS                       R13 R6 K26 ["assetHierarchy"]
       70 GETIMPORT                        R14 K32 [Enum.AssetType.LeftArm]
       72 GETTABLE                         R12 R13 R14
       73 SETTABLEKS                       R12 R11 K23 ["LeftUpperArm"]
       75 GETTABLEKS                       R13 R6 K26 ["assetHierarchy"]
       77 GETIMPORT                        R14 K34 [Enum.AssetType.RightArm]
       79 GETTABLE                         R12 R13 R14
       80 SETTABLEKS                       R12 R11 K24 ["RightUpperArm"]
       82 SETTABLEKS                       R11 R10 K14 ["children"]
       84 SETTABLEKS                       R10 R9 K17 ["UpperTorso"]
       86 GETTABLEKS                       R11 R6 K26 ["assetHierarchy"]
       88 GETIMPORT                        R12 K36 [Enum.AssetType.LeftLeg]
       90 GETTABLE                         R10 R11 R12
       91 SETTABLEKS                       R10 R9 K18 ["LeftUpperLeg"]
       93 GETTABLEKS                       R11 R6 K26 ["assetHierarchy"]
       95 GETIMPORT                        R12 K38 [Enum.AssetType.RightLeg]
       97 GETTABLE                         R10 R11 R12
       98 SETTABLEKS                       R10 R9 K19 ["RightUpperLeg"]
      100 SETTABLEKS                       R9 R8 K14 ["children"]
      102 DUPTABLE                         R9 K15 [{"root", "children"}]
      103 LOADK                            R10 K39 ["HumanoidRootPart"]
      104 SETTABLEKS                       R10 R9 K13 ["root"]
      106 DUPTABLE                         R10 K40 [{"LowerTorso"}]
      107 SETTABLEKS                       R8 R10 K16 ["LowerTorso"]
      109 SETTABLEKS                       R10 R9 K14 ["children"]
      111 NEWTABLE                         R10 8 0
      113 DUPCLOSURE                       R11 K41 [PROTO_0]
      114 CAPTURE                          VAL R4
      115 DUPCLOSURE                       R12 K42 [PROTO_1]
      116 CAPTURE                          VAL R2
      117 DUPCLOSURE                       R13 K43 [PROTO_3]
      118 CAPTURE                          VAL R12
      119 DUPCLOSURE                       R14 K44 [PROTO_4]
      120 DUPCLOSURE                       R15 K45 [PROTO_5]
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R11
      123 DUPCLOSURE                       R16 K46 [PROTO_6]
      124 DUPCLOSURE                       R17 K47 [PROTO_7]
      125 DUPCLOSURE                       R18 K48 [PROTO_8]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R11
      129 SETTABLEKS                       R18 R10 K49 ["calculatePartCFrameFromRigAttachments"]
      131 DUPCLOSURE                       R18 K50 [PROTO_9]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R2
      137 SETTABLEKS                       R18 R10 K51 ["calculateStraightenedLimb"]
      139 DUPCLOSURE                       R18 K52 [PROTO_10]
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R15
      142 SETTABLEKS                       R18 R10 K53 ["calculateAssetCFrame"]
      144 DUPCLOSURE                       R18 K54 [PROTO_12]
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R6
      147 SETTABLEKS                       R18 R10 K55 ["calculateAllTransformsForAsset"]
      149 DUPCLOSURE                       R18 K56 [PROTO_14]
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R13
      153 SETTABLEKS                       R18 R10 K57 ["calculateAllTransformsForFullBody"]
      155 DUPCLOSURE                       R18 K58 [PROTO_15]
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R11
      158 SETTABLEKS                       R18 R10 K59 ["calculatePartsLocalToAsset"]
      160 DUPCLOSURE                       R18 K60 [PROTO_17]
      161 CAPTURE                          VAL R8
      162 SETTABLEKS                       R18 R10 K61 ["getBodyPartsToParents"]
      164 DUPCLOSURE                       R18 K62 [PROTO_19]
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R7
      167 SETTABLEKS                       R18 R10 K63 ["getAssetMeshesValidationSpaceTransforms"]
      169 RETURN                           R10 1
