PROTO_0:
        0 ORK                              R2 R1 K0 [0]
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R5 0
        4 GETTABLE                         R4 R5 R0
        5 JUMP                             ; [+1]
        6 LOADNIL                          R4
        7 ORK                              R3 R4 K0 [0]
        8 MULK                             R5 R3 K1 [1000]
        9 ADD                              R4 R5 R2
       10 RETURN                           R4 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["BasePart"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+9]
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R9 R6 K3 ["Name"]
       12 GETTABLE                         R7 R8 R9
       13 JUMPIFEQKNIL                     R7 ; [+4]
       15 GETTABLE                         R8 R1 R7
       16 SETTABLEKS                       R8 R6 K4 ["Color"]
       18 FORGLOOP                         R2 2 ; [-15]
       20 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R4 K0 ["%*|%*|%*"]
        1 GETTABLEKS                       R6 R0 K1 ["Name"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 NAMECALL                         R4 R4 K2 ["format"]
        7 CALL                             R4 4 1
        8 MOVE                             R3 R4
        9 RETURN                           R3 1

PROTO_3:
        0 LOADK                            R4 K0 ["Head"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 LOADK                            R5 K2 ["BasePart"]
        7 NAMECALL                         R3 R2 K3 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 DUPCLOSURE                       R3 K4 [PROTO_2]
       13 NEWTABLE                         R4 0 0
       15 NAMECALL                         R5 R2 K5 ["GetChildren"]
       17 CALL                             R5 1 3
       18 FORGPREP                         R5
       19 LOADK                            R12 K6 ["Decal"]
       20 NAMECALL                         R10 R9 K3 ["IsA"]
       22 CALL                             R10 2 1
       23 JUMPIFNOT                        R10 ; [+23]
       24 GETTABLEKS                       R10 R9 K7 ["Name"]
       26 JUMPIFNOTEQKS                    R10 K8 ["MockMakeupDecal"] ; [+20]
       28 LOADK                            R12 K9 ["MockMakeupKey"]
       29 NAMECALL                         R10 R9 K10 ["GetAttribute"]
       31 CALL                             R10 2 1
       32 FASTCALL1                        TYPEOF R10 ; [+3]
       33 MOVE                             R12 R10
       34 GETIMPORT                        R11 K12 [typeof]
       36 CALL                             R11 1 1
       37 JUMPIFNOTEQKS                    R11 K13 ["string"] ; [+6]
       39 GETTABLE                         R11 R4 R10
       40 JUMPIFNOTEQKNIL                  R11 ; [+3]
       42 SETTABLE                         R9 R4 R10
       43 JUMP                             ; [+3]
       44 NAMECALL                         R11 R9 K14 ["Destroy"]
       46 CALL                             R11 1 0
       47 FORGLOOP                         R5 2 ; [-29]
       49 NEWTABLE                         R5 0 0
       51 NAMECALL                         R6 R1 K5 ["GetChildren"]
       53 CALL                             R6 1 3
       54 FORGPREP                         R6
       55 LOADK                            R13 K15 ["MakeupDescription"]
       56 NAMECALL                         R11 R10 K3 ["IsA"]
       58 CALL                             R11 2 1
       59 JUMPIFNOT                        R11 ; [+38]
       60 GETTABLEKS                       R12 R10 K16 ["MakeupType"]
       62 GETTABLEKS                       R13 R10 K17 ["AssetId"]
       64 GETTABLEKS                       R14 R10 K18 ["Order"]
       66 LOADK                            R15 K19 ["%*|%*|%*"]
       67 GETTABLEKS                       R17 R12 K7 ["Name"]
       69 MOVE                             R18 R13
       70 MOVE                             R19 R14
       71 NAMECALL                         R15 R15 K20 ["format"]
       73 CALL                             R15 4 1
       74 MOVE                             R11 R15
       75 LOADB                            R12 1
       76 SETTABLE                         R12 R5 R11
       77 GETTABLE                         R12 R4 R11
       78 JUMPIFNOTEQKNIL                  R12 ; [+19]
       80 GETIMPORT                        R12 K23 [Instance.new]
       82 LOADK                            R13 K6 ["Decal"]
       83 CALL                             R12 1 1
       84 LOADK                            R13 K8 ["MockMakeupDecal"]
       85 SETTABLEKS                       R13 R12 K7 ["Name"]
       87 GETTABLEKS                       R13 R10 K18 ["Order"]
       89 SETTABLEKS                       R13 R12 K24 ["ZIndex"]
       91 LOADK                            R15 K9 ["MockMakeupKey"]
       92 MOVE                             R16 R11
       93 NAMECALL                         R13 R12 K25 ["SetAttribute"]
       95 CALL                             R13 3 0
       96 SETTABLEKS                       R2 R12 K26 ["Parent"]
       98 FORGLOOP                         R6 2 ; [-44]
      100 MOVE                             R6 R4
      101 LOADNIL                          R7
      102 LOADNIL                          R8
      103 FORGPREP                         R6
      104 GETTABLE                         R11 R5 R9
      105 JUMPIF                           R11 ; [+3]
      106 NAMECALL                         R11 R10 K14 ["Destroy"]
      108 CALL                             R11 1 0
      109 FORGLOOP                         R6 2 ; [-6]
      111 RETURN                           R0 0

PROTO_4:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 GETTABLEKS                       R3 R0 K0 ["Name"]
        4 JUMP                             ; [+1]
        5 LOADK                            R3 K1 ["nil"]
        6 LOADK                            R5 K2 ["%*|%*|%*"]
        7 MOVE                             R7 R3
        8 FASTCALL1                        TOSTRING R1 ; [+3]
        9 MOVE                             R9 R1
       10 GETIMPORT                        R8 K4 [tostring]
       12 CALL                             R8 1 1
       13 FASTCALL1                        TOSTRING R2 ; [+3]
       14 MOVE                             R10 R2
       15 GETIMPORT                        R9 K4 [tostring]
       17 CALL                             R9 1 1
       18 NAMECALL                         R5 R5 K5 ["format"]
       20 CALL                             R5 4 1
       21 MOVE                             R4 R5
       22 RETURN                           R4 1

PROTO_5:
        0 LOADB                            R4 1
        1 NAMECALL                         R2 R1 K0 ["GetAccessories"]
        3 CALL                             R2 2 1
        4 DUPCLOSURE                       R3 K1 [PROTO_4]
        5 NEWTABLE                         R4 0 0
        7 NAMECALL                         R5 R0 K2 ["GetChildren"]
        9 CALL                             R5 1 3
       10 FORGPREP                         R5
       11 LOADK                            R12 K3 ["Accessory"]
       12 NAMECALL                         R10 R9 K4 ["IsA"]
       14 CALL                             R10 2 1
       15 JUMPIFNOT                        R10 ; [+58]
       16 GETTABLEKS                       R10 R9 K5 ["Name"]
       18 JUMPIFNOTEQKS                    R10 K6 ["MockAccessoryFromDescription"] ; [+55]
       20 LOADK                            R13 K7 ["Handle"]
       21 NAMECALL                         R11 R9 K8 ["FindFirstChild"]
       23 CALL                             R11 2 1
       24 FASTCALL2K                       ASSERT R11 K9 ; [+4]
       26 LOADK                            R12 K9 ["mock accessory is missing its Handle"]
       27 GETIMPORT                        R10 K11 [assert]
       29 CALL                             R10 2 1
       30 LOADK                            R14 K12 ["WrapLayer"]
       31 NAMECALL                         R12 R10 K13 ["FindFirstChildWhichIsA"]
       33 CALL                             R12 2 1
       34 JUMPIFNOTEQKNIL                  R12 ; [+2]
       36 LOADB                            R11 0 +1
       37 LOADB                            R11 1
       38 LOADK                            R14 K14 ["MockAssetId"]
       39 NAMECALL                         R12 R10 K15 ["GetAttribute"]
       41 CALL                             R12 2 1
       42 GETTABLEKS                       R14 R9 K16 ["AccessoryType"]
       44 JUMPIFEQKNIL                     R14 ; [+4]
       46 GETTABLEKS                       R15 R14 K5 ["Name"]
       48 JUMP                             ; [+1]
       49 LOADK                            R15 K17 ["nil"]
       50 LOADK                            R16 K18 ["%*|%*|%*"]
       51 MOVE                             R18 R15
       52 FASTCALL1                        TOSTRING R12 ; [+3]
       53 MOVE                             R20 R12
       54 GETIMPORT                        R19 K20 [tostring]
       56 CALL                             R19 1 1
       57 FASTCALL1                        TOSTRING R11 ; [+3]
       58 MOVE                             R21 R11
       59 GETIMPORT                        R20 K20 [tostring]
       61 CALL                             R20 1 1
       62 NAMECALL                         R16 R16 K21 ["format"]
       64 CALL                             R16 4 1
       65 MOVE                             R13 R16
       66 GETTABLE                         R14 R4 R13
       67 JUMPIFNOTEQKNIL                  R14 ; [+3]
       69 SETTABLE                         R9 R4 R13
       70 JUMP                             ; [+3]
       71 NAMECALL                         R14 R9 K22 ["Destroy"]
       73 CALL                             R14 1 0
       74 FORGLOOP                         R5 2 ; [-64]
       76 NEWTABLE                         R5 0 0
       78 MOVE                             R6 R2
       79 LOADNIL                          R7
       80 LOADNIL                          R8
       81 FORGPREP                         R6
       82 GETTABLEKS                       R12 R10 K16 ["AccessoryType"]
       84 GETTABLEKS                       R13 R10 K23 ["AssetId"]
       86 GETTABLEKS                       R14 R10 K24 ["IsLayered"]
       88 JUMPIFEQKNIL                     R12 ; [+4]
       90 GETTABLEKS                       R15 R12 K5 ["Name"]
       92 JUMP                             ; [+1]
       93 LOADK                            R15 K17 ["nil"]
       94 LOADK                            R16 K18 ["%*|%*|%*"]
       95 MOVE                             R18 R15
       96 FASTCALL1                        TOSTRING R13 ; [+3]
       97 MOVE                             R20 R13
       98 GETIMPORT                        R19 K20 [tostring]
      100 CALL                             R19 1 1
      101 FASTCALL1                        TOSTRING R14 ; [+3]
      102 MOVE                             R21 R14
      103 GETIMPORT                        R20 K20 [tostring]
      105 CALL                             R20 1 1
      106 NAMECALL                         R16 R16 K21 ["format"]
      108 CALL                             R16 4 1
      109 MOVE                             R11 R16
      110 LOADB                            R12 1
      111 SETTABLE                         R12 R5 R11
      112 GETTABLE                         R12 R4 R11
      113 JUMPIFNOTEQKNIL                  R12 ; [+94]
      115 GETIMPORT                        R12 K27 [Instance.new]
      117 LOADK                            R13 K3 ["Accessory"]
      118 CALL                             R12 1 1
      119 LOADK                            R13 K6 ["MockAccessoryFromDescription"]
      120 SETTABLEKS                       R13 R12 K5 ["Name"]
      122 GETTABLEKS                       R13 R10 K16 ["AccessoryType"]
      124 JUMPIFEQKNIL                     R13 ; [+5]
      126 GETTABLEKS                       R13 R10 K16 ["AccessoryType"]
      128 SETTABLEKS                       R13 R12 K16 ["AccessoryType"]
      130 GETTABLEKS                       R14 R10 K23 ["AssetId"]
      132 JUMPIFEQKNIL                     R14 ; [+9]
      134 LOADK                            R14 K28 ["rbxassetid://%*"]
      135 GETTABLEKS                       R16 R10 K23 ["AssetId"]
      137 NAMECALL                         R14 R14 K21 ["format"]
      139 CALL                             R14 2 1
      140 MOVE                             R13 R14
      141 JUMP                             ; [+1]
      142 LOADK                            R13 K29 [""]
      143 LOADNIL                          R14
      144 GETTABLEKS                       R15 R10 K24 ["IsLayered"]
      146 JUMPIFNOT                        R15 ; [+28]
      147 GETIMPORT                        R15 K27 [Instance.new]
      149 LOADK                            R16 K30 ["MeshPart"]
      150 CALL                             R15 1 1
      151 MOVE                             R14 R15
      152 GETIMPORT                        R15 K27 [Instance.new]
      154 LOADK                            R16 K12 ["WrapLayer"]
      155 CALL                             R15 1 1
      156 GETTABLEKS                       R17 R10 K16 ["AccessoryType"]
      158 GETTABLEKS                       R18 R10 K31 ["Order"]
      160 ORK                              R19 R18 K32 [0]
      161 JUMPIFEQKNIL                     R17 ; [+4]
      163 GETUPVAL                         R22 0
      164 GETTABLE                         R21 R22 R17
      165 JUMP                             ; [+1]
      166 LOADNIL                          R21
      167 ORK                              R20 R21 K32 [0]
      168 MULK                             R21 R20 K33 [1000]
      169 ADD                              R16 R21 R19
      170 SETTABLEKS                       R16 R15 K31 ["Order"]
      172 SETTABLEKS                       R14 R15 K34 ["Parent"]
      174 JUMP                             ; [+13]
      175 GETIMPORT                        R15 K27 [Instance.new]
      177 LOADK                            R16 K35 ["Part"]
      178 CALL                             R15 1 1
      179 MOVE                             R14 R15
      180 GETIMPORT                        R15 K27 [Instance.new]
      182 LOADK                            R16 K36 ["SpecialMesh"]
      183 CALL                             R15 1 1
      184 SETTABLEKS                       R13 R15 K37 ["MeshId"]
      186 SETTABLEKS                       R14 R15 K34 ["Parent"]
      188 LOADK                            R15 K7 ["Handle"]
      189 SETTABLEKS                       R15 R14 K5 ["Name"]
      191 LOADK                            R15 K38 [{1, 1, 1}]
      192 SETTABLEKS                       R15 R14 K39 ["Size"]
      194 SETTABLEKS                       R12 R14 K34 ["Parent"]
      196 GETTABLEKS                       R15 R10 K23 ["AssetId"]
      198 JUMPIFEQKNIL                     R15 ; [+7]
      200 LOADK                            R17 K14 ["MockAssetId"]
      201 GETTABLEKS                       R18 R10 K23 ["AssetId"]
      203 NAMECALL                         R15 R14 K40 ["SetAttribute"]
      205 CALL                             R15 3 0
      206 SETTABLEKS                       R0 R12 K34 ["Parent"]
      208 FORGLOOP                         R6 2 ; [-127]
      210 MOVE                             R6 R4
      211 LOADNIL                          R7
      212 LOADNIL                          R8
      213 FORGPREP                         R6
      214 GETTABLE                         R11 R5 R9
      215 JUMPIF                           R11 ; [+3]
      216 NAMECALL                         R11 R10 K22 ["Destroy"]
      218 CALL                             R11 1 0
      219 FORGLOOP                         R6 2 ; [-6]
      221 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLE                         R7 R1 R5
        5 JUMPIFEQKNIL                     R7 ; [+69]
        7 JUMPIFEQKN                       R7 K0 [0] ; [+67]
        9 LOADK                            R9 K1 ["MockBodyPartField_"]
       10 MOVE                             R10 R5
       11 CONCAT                           R8 R9 R10
       12 MOVE                             R11 R8
       13 NAMECALL                         R9 R0 K2 ["GetAttribute"]
       15 CALL                             R9 2 1
       16 JUMPIFEQ                         R9 R7 ; [+58]
       18 MOVE                             R11 R8
       19 MOVE                             R12 R7
       20 NAMECALL                         R9 R0 K3 ["SetAttribute"]
       22 CALL                             R9 3 0
       23 MOVE                             R9 R6
       24 LOADNIL                          R10
       25 LOADNIL                          R11
       26 FORGPREP                         R9
       27 MOVE                             R16 R13
       28 NAMECALL                         R14 R0 K4 ["FindFirstChild"]
       30 CALL                             R14 2 1
       31 JUMPIFEQKNIL                     R14 ; [+41]
       33 LOADK                            R17 K5 ["BasePart"]
       34 NAMECALL                         R15 R14 K6 ["IsA"]
       36 CALL                             R15 2 1
       37 JUMPIFNOT                        R15 ; [+35]
       38 LOADNIL                          R15
       39 LOADK                            R18 K7 ["MeshPart"]
       40 NAMECALL                         R16 R14 K6 ["IsA"]
       42 CALL                             R16 2 1
       43 JUMPIFNOT                        R16 ; [+5]
       44 NAMECALL                         R16 R14 K8 ["Clone"]
       46 CALL                             R16 1 1
       47 MOVE                             R15 R16
       48 JUMP                             ; [+17]
       49 GETIMPORT                        R16 K11 [Instance.new]
       51 LOADK                            R17 K12 ["Part"]
       52 CALL                             R16 1 1
       53 GETTABLEKS                       R17 R14 K13 ["Size"]
       55 SETTABLEKS                       R17 R16 K13 ["Size"]
       57 GETTABLEKS                       R17 R14 K14 ["CFrame"]
       59 SETTABLEKS                       R17 R16 K14 ["CFrame"]
       61 GETTABLEKS                       R17 R14 K15 ["Color"]
       63 SETTABLEKS                       R17 R16 K15 ["Color"]
       65 MOVE                             R15 R16
       66 SETTABLEKS                       R13 R15 K16 ["Name"]
       68 NAMECALL                         R16 R14 K17 ["Destroy"]
       70 CALL                             R16 1 0
       71 SETTABLEKS                       R0 R15 K18 ["Parent"]
       73 FORGLOOP                         R9 2 ; [-47]
       75 FORGLOOP                         R2 2 ; [-72]
       77 RETURN                           R0 0

PROTO_7:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R2 R0 K0 ["Parent"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 0
       10 LOADK                            R4 K1 ["HumanoidDescription"]
       11 NAMECALL                         R2 R0 K2 ["FindFirstChildOfClass"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+3]
       15 NAMECALL                         R3 R2 K3 ["Destroy"]
       17 CALL                             R3 1 0
       18 NAMECALL                         R3 R1 K4 ["Clone"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R0 R3 K0 ["Parent"]
       23 GETTABLEKS                       R5 R0 K0 ["Parent"]
       25 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       27 LOADK                            R6 K5 ["humanoid must be parented"]
       28 GETIMPORT                        R4 K7 [assert]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 0
       32 MOVE                             R6 R4
       33 MOVE                             R7 R1
       34 CALL                             R5 2 0
       35 GETUPVAL                         R5 1
       36 MOVE                             R6 R4
       37 MOVE                             R7 R1
       38 CALL                             R5 2 0
       39 GETUPVAL                         R5 2
       40 MOVE                             R6 R4
       41 MOVE                             R7 R1
       42 CALL                             R5 2 0
       43 GETUPVAL                         R5 3
       44 MOVE                             R6 R4
       45 MOVE                             R7 R1
       46 CALL                             R5 2 0
       47 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 32 0
       16 LOADK                            R3 K8 ["HeadColor"]
       17 SETTABLEKS                       R3 R2 K9 ["Head"]
       19 LOADK                            R3 K10 ["TorsoColor"]
       20 SETTABLEKS                       R3 R2 K11 ["UpperTorso"]
       22 LOADK                            R3 K10 ["TorsoColor"]
       23 SETTABLEKS                       R3 R2 K12 ["LowerTorso"]
       25 LOADK                            R3 K13 ["LeftArmColor"]
       26 SETTABLEKS                       R3 R2 K14 ["LeftUpperArm"]
       28 LOADK                            R3 K13 ["LeftArmColor"]
       29 SETTABLEKS                       R3 R2 K15 ["LeftLowerArm"]
       31 LOADK                            R3 K13 ["LeftArmColor"]
       32 SETTABLEKS                       R3 R2 K16 ["LeftHand"]
       34 LOADK                            R3 K17 ["RightArmColor"]
       35 SETTABLEKS                       R3 R2 K18 ["RightUpperArm"]
       37 LOADK                            R3 K17 ["RightArmColor"]
       38 SETTABLEKS                       R3 R2 K19 ["RightLowerArm"]
       40 LOADK                            R3 K17 ["RightArmColor"]
       41 SETTABLEKS                       R3 R2 K20 ["RightHand"]
       43 LOADK                            R3 K21 ["LeftLegColor"]
       44 SETTABLEKS                       R3 R2 K22 ["LeftUpperLeg"]
       46 LOADK                            R3 K21 ["LeftLegColor"]
       47 SETTABLEKS                       R3 R2 K23 ["LeftLowerLeg"]
       49 LOADK                            R3 K21 ["LeftLegColor"]
       50 SETTABLEKS                       R3 R2 K24 ["LeftFoot"]
       52 LOADK                            R3 K25 ["RightLegColor"]
       53 SETTABLEKS                       R3 R2 K26 ["RightUpperLeg"]
       55 LOADK                            R3 K25 ["RightLegColor"]
       56 SETTABLEKS                       R3 R2 K27 ["RightLowerLeg"]
       58 LOADK                            R3 K25 ["RightLegColor"]
       59 SETTABLEKS                       R3 R2 K28 ["RightFoot"]
       61 LOADK                            R3 K10 ["TorsoColor"]
       62 SETTABLEKS                       R3 R2 K29 ["Torso"]
       64 LOADK                            R3 K13 ["LeftArmColor"]
       65 SETTABLEKS                       R3 R2 K30 ["Left Arm"]
       67 LOADK                            R3 K17 ["RightArmColor"]
       68 SETTABLEKS                       R3 R2 K31 ["Right Arm"]
       70 LOADK                            R3 K21 ["LeftLegColor"]
       71 SETTABLEKS                       R3 R2 K32 ["Left Leg"]
       73 LOADK                            R3 K25 ["RightLegColor"]
       74 SETTABLEKS                       R3 R2 K33 ["Right Leg"]
       76 DUPTABLE                         R3 K38 [{"Head", "Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
       77 NEWTABLE                         R4 0 1
       79 LOADK                            R5 K9 ["Head"]
       80 SETLIST                          R4 R5 1 [1]
       82 SETTABLEKS                       R4 R3 K9 ["Head"]
       84 NEWTABLE                         R4 0 2
       86 LOADK                            R5 K11 ["UpperTorso"]
       87 LOADK                            R6 K12 ["LowerTorso"]
       88 SETLIST                          R4 R5 2 [1]
       90 SETTABLEKS                       R4 R3 K29 ["Torso"]
       92 NEWTABLE                         R4 0 3
       94 LOADK                            R5 K14 ["LeftUpperArm"]
       95 LOADK                            R6 K15 ["LeftLowerArm"]
       96 LOADK                            R7 K16 ["LeftHand"]
       97 SETLIST                          R4 R5 3 [1]
       99 SETTABLEKS                       R4 R3 K34 ["LeftArm"]
      101 NEWTABLE                         R4 0 3
      103 LOADK                            R5 K18 ["RightUpperArm"]
      104 LOADK                            R6 K19 ["RightLowerArm"]
      105 LOADK                            R7 K20 ["RightHand"]
      106 SETLIST                          R4 R5 3 [1]
      108 SETTABLEKS                       R4 R3 K35 ["RightArm"]
      110 NEWTABLE                         R4 0 3
      112 LOADK                            R5 K22 ["LeftUpperLeg"]
      113 LOADK                            R6 K23 ["LeftLowerLeg"]
      114 LOADK                            R7 K24 ["LeftFoot"]
      115 SETLIST                          R4 R5 3 [1]
      117 SETTABLEKS                       R4 R3 K36 ["LeftLeg"]
      119 NEWTABLE                         R4 0 3
      121 LOADK                            R5 K26 ["RightUpperLeg"]
      122 LOADK                            R6 K27 ["RightLowerLeg"]
      123 LOADK                            R7 K28 ["RightFoot"]
      124 SETLIST                          R4 R5 3 [1]
      126 SETTABLEKS                       R4 R3 K37 ["RightLeg"]
      128 NEWTABLE                         R4 16 0
      130 GETIMPORT                        R5 K42 [Enum.AccessoryType.LeftShoe]
      132 LOADN                            R6 1
      133 SETTABLE                         R6 R4 R5
      134 GETIMPORT                        R5 K44 [Enum.AccessoryType.RightShoe]
      136 LOADN                            R6 1
      137 SETTABLE                         R6 R4 R5
      138 GETIMPORT                        R5 K46 [Enum.AccessoryType.Pants]
      140 LOADN                            R6 2
      141 SETTABLE                         R6 R4 R5
      142 GETIMPORT                        R5 K48 [Enum.AccessoryType.Shorts]
      144 LOADN                            R6 3
      145 SETTABLE                         R6 R4 R5
      146 GETIMPORT                        R5 K50 [Enum.AccessoryType.DressSkirt]
      148 LOADN                            R6 4
      149 SETTABLE                         R6 R4 R5
      150 GETIMPORT                        R5 K52 [Enum.AccessoryType.TShirt]
      152 LOADN                            R6 5
      153 SETTABLE                         R6 R4 R5
      154 GETIMPORT                        R5 K54 [Enum.AccessoryType.Shirt]
      156 LOADN                            R6 6
      157 SETTABLE                         R6 R4 R5
      158 GETIMPORT                        R5 K56 [Enum.AccessoryType.Sweater]
      160 LOADN                            R6 7
      161 SETTABLE                         R6 R4 R5
      162 GETIMPORT                        R5 K58 [Enum.AccessoryType.Jacket]
      164 LOADN                            R6 8
      165 SETTABLE                         R6 R4 R5
      166 DUPCLOSURE                       R5 K59 [PROTO_0]
      167 CAPTURE                          VAL R4
      168 DUPCLOSURE                       R6 K60 [PROTO_1]
      169 CAPTURE                          VAL R2
      170 DUPCLOSURE                       R7 K61 [PROTO_3]
      171 DUPCLOSURE                       R8 K62 [PROTO_5]
      172 CAPTURE                          VAL R4
      173 DUPCLOSURE                       R9 K63 [PROTO_6]
      174 CAPTURE                          VAL R3
      175 DUPCLOSURE                       R10 K64 [PROTO_7]
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R8
      180 RETURN                           R10 1
