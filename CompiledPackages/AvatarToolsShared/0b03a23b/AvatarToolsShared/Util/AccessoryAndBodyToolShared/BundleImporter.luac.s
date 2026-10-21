PROTO_0:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R1 1
        4 NEWTABLE                         R1 0 0
        6 GETIMPORT                        R2 K1 [pairs]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 3
       10 FORGPREP_NEXT                    R2
       11 GETTABLEKS                       R7 R6 K2 ["Type"]
       13 JUMPIFNOTEQKS                    R7 K3 ["Asset"] ; [+9]
       15 GETTABLEKS                       R7 R6 K4 ["Id"]
       17 JUMPIFNOT                        R7 ; [+5]
       18 GETTABLEKS                       R7 R6 K5 ["Name"]
       20 GETTABLEKS                       R8 R6 K4 ["Id"]
       22 SETTABLE                         R8 R1 R7
       23 FORGLOOP                         R2 2 ; [-13]
       25 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 1
        1 GETUPVAL                         R3 2
        2 GETUPVAL                         R4 3
        3 NAMECALL                         R1 R1 K0 ["LoadAssetWithFormat"]
        5 CALL                             R1 3 1
        6 GETTABLEN                        R0 R1 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R2
        1 GETIMPORT                        R3 K1 [pcall]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          REF R2
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 2
        9 JUMPIF                           R3 ; [+4]
       10 GETIMPORT                        R5 K3 [error]
       12 MOVE                             R6 R4
       13 CALL                             R5 1 0
       14 JUMPIFNOT                        R2 ; [+23]
       15 LOADK                            R7 K4 ["MeshPart"]
       16 NAMECALL                         R5 R2 K5 ["IsA"]
       18 CALL                             R5 2 1
       19 JUMPIF                           R5 ; [+10]
       20 LOADK                            R7 K6 ["Accessory"]
       21 NAMECALL                         R5 R2 K5 ["IsA"]
       23 CALL                             R5 2 1
       24 JUMPIFNOT                        R5 ; [+13]
       25 LOADK                            R7 K4 ["MeshPart"]
       26 NAMECALL                         R5 R2 K7 ["FindFirstChildWhichIsA"]
       28 CALL                             R5 2 1
       29 JUMPIFNOT                        R5 ; [+8]
       30 GETIMPORT                        R5 K10 [Instance.new]
       32 LOADK                            R6 K11 ["Model"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R2 K12 ["Parent"]
       36 CLOSEUPVALS                      R2
       37 RETURN                           R5 1
       38 LOADNIL                          R5
       39 CLOSEUPVALS                      R2
       40 RETURN                           R5 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 LOADNIL                          R7
        6 GETIMPORT                        R8 K4 [string.find]
        8 GETIMPORT                        R9 K6 [string.lower]
       10 MOVE                             R10 R5
       11 CALL                             R9 1 1
       12 LOADK                            R10 K7 ["head"]
       13 CALL                             R8 2 1
       14 JUMPIFNOT                        R8 ; [+5]
       15 GETUPVAL                         R8 0
       16 MOVE                             R9 R6
       17 LOADK                            R10 K8 ["avatar_meshpart_head"]
       18 CALL                             R8 2 1
       19 MOVE                             R7 R8
       20 JUMPIF                           R7 ; [+16]
       21 GETUPVAL                         R8 1
       22 MOVE                             R10 R6
       23 NAMECALL                         R8 R8 K9 ["LoadAsset"]
       25 CALL                             R8 2 1
       26 MOVE                             R7 R8
       27 LOADK                            R10 K10 ["Accessory"]
       28 NAMECALL                         R8 R7 K11 ["FindFirstChildWhichIsA"]
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+5]
       32 GETUPVAL                         R8 0
       33 MOVE                             R9 R6
       34 LOADK                            R10 K12 ["avatar_meshpart_accessory"]
       35 CALL                             R8 2 1
       36 OR                               R7 R8 R7
       37 LOADK                            R10 K13 ["Model"]
       38 NAMECALL                         R8 R7 K14 ["IsA"]
       40 CALL                             R8 2 1
       41 JUMPIFNOT                        R8 ; [+7]
       42 FASTCALL1                        TOSTRING R6 ; [+3]
       43 MOVE                             R9 R6
       44 GETIMPORT                        R8 K16 [tostring]
       46 CALL                             R8 1 1
       47 SETTABLEKS                       R8 R7 K17 ["Name"]
       49 SETTABLEKS                       R1 R7 K18 ["Parent"]
       51 FORGLOOP                         R2 2 ; [-47]
       53 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Folder"]
        3 CALL                             R2 1 1
        4 LOADNIL                          R3
        5 MOVE                             R6 R1
        6 NAMECALL                         R4 R0 K4 ["GetBundleDetailsAsync"]
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R4 ; [+21]
       10 GETTABLEKS                       R5 R4 K5 ["Items"]
       12 JUMPIFNOT                        R5 ; [+18]
       13 FASTCALL1                        TOSTRING R1 ; [+3]
       14 MOVE                             R10 R1
       15 GETIMPORT                        R9 K7 [tostring]
       17 CALL                             R9 1 1
       18 MOVE                             R6 R9
       19 LOADK                            R7 K8 [" - "]
       20 GETTABLEKS                       R9 R4 K10 ["Name"]
       22 ORK                              R8 R9 K9 [""]
       23 CONCAT                           R5 R6 R8
       24 SETTABLEKS                       R5 R2 K10 ["Name"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R6 R4 K5 ["Items"]
       29 CALL                             R5 1 1
       30 MOVE                             R3 R5
       31 GETUPVAL                         R5 1
       32 MOVE                             R6 R3
       33 MOVE                             R7 R2
       34 CALL                             R5 2 0
       35 RETURN                           R2 1

PROTO_5:
        0 LOADNIL                          R5
        1 JUMPIFNOT                        R4 ; [+8]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R6 R6 K0 ["MeshPartHeadTemplate"]
        5 NAMECALL                         R6 R6 K1 ["clone"]
        7 CALL                             R6 1 1
        8 MOVE                             R5 R6
        9 JUMP                             ; [+7]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K2 ["PartHeadTemplate"]
       13 NAMECALL                         R6 R6 K1 ["clone"]
       15 CALL                             R6 1 1
       16 MOVE                             R5 R6
       17 LOADK                            R6 K3 ["Head"]
       18 SETTABLEKS                       R6 R5 K4 ["Name"]
       20 JUMPIFNOT                        R3 ; [+4]
       21 GETTABLEKS                       R6 R0 K5 ["Color"]
       23 SETTABLEKS                       R6 R5 K5 ["Color"]
       25 GETIMPORT                        R6 K7 [pairs]
       27 NAMECALL                         R7 R0 K8 ["GetChildren"]
       29 CALL                             R7 1 -1
       30 CALL                             R6 -1 3
       31 FORGPREP_NEXT                    R6
       32 LOADK                            R13 K9 ["Decal"]
       33 NAMECALL                         R11 R10 K10 ["IsA"]
       35 CALL                             R11 2 1
       36 JUMPIFNOT                        R11 ; [+2]
       37 SETTABLEKS                       R5 R10 K11 ["Parent"]
       39 FORGLOOP                         R6 2 ; [-8]
       41 NAMECALL                         R6 R0 K12 ["Destroy"]
       43 CALL                             R6 1 0
       44 SETTABLEKS                       R1 R5 K11 ["Parent"]
       46 NAMECALL                         R6 R2 K13 ["BuildRigFromAttachments"]
       48 CALL                             R6 1 0
       49 MOVE                             R0 R5
       50 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["Humanoid"]
        2 LOADK                            R6 K1 ["Head"]
        3 NAMECALL                         R4 R0 K2 ["FindFirstChild"]
        5 CALL                             R4 2 1
        6 GETIMPORT                        R5 K4 [pairs]
        8 NAMECALL                         R6 R1 K5 ["clone"]
       10 CALL                             R6 1 1
       11 NAMECALL                         R6 R6 K6 ["GetChildren"]
       13 CALL                             R6 1 -1
       14 CALL                             R5 -1 3
       15 FORGPREP_NEXT                    R5
       16 GETIMPORT                        R10 K4 [pairs]
       18 NAMECALL                         R11 R9 K6 ["GetChildren"]
       20 CALL                             R11 1 -1
       21 CALL                             R10 -1 3
       22 FORGPREP_NEXT                    R10
       23 LOADK                            R17 K7 ["Folder"]
       24 NAMECALL                         R15 R14 K8 ["IsA"]
       26 CALL                             R15 2 1
       27 JUMPIFNOT                        R15 ; [+28]
       28 GETTABLEKS                       R15 R14 K9 ["Name"]
       30 JUMPIFNOTEQ                      R15 R2 ; [+25]
       32 GETIMPORT                        R15 K4 [pairs]
       34 NAMECALL                         R16 R14 K6 ["GetChildren"]
       36 CALL                             R16 1 -1
       37 CALL                             R15 -1 3
       38 FORGPREP_NEXT                    R15
       39 GETTABLEKS                       R22 R19 K9 ["Name"]
       41 NAMECALL                         R20 R0 K2 ["FindFirstChild"]
       43 CALL                             R20 2 1
       44 JUMPIFNOT                        R20 ; [+3]
       45 NAMECALL                         R21 R20 K10 ["Destroy"]
       47 CALL                             R21 1 0
       48 SETTABLEKS                       R0 R19 K11 ["Parent"]
       50 NAMECALL                         R21 R3 K12 ["BuildRigFromAttachments"]
       52 CALL                             R21 1 0
       53 FORGLOOP                         R15 2 ; [-15]
       55 JUMP                             ; [+126]
       56 LOADK                            R17 K13 ["Accessory"]
       57 NAMECALL                         R15 R14 K8 ["IsA"]
       59 CALL                             R15 2 1
       60 JUMPIF                           R15 ; [+10]
       61 LOADK                            R17 K14 ["CharacterAppearance"]
       62 NAMECALL                         R15 R14 K8 ["IsA"]
       64 CALL                             R15 2 1
       65 JUMPIF                           R15 ; [+5]
       66 LOADK                            R17 K15 ["Tool"]
       67 NAMECALL                         R15 R14 K8 ["IsA"]
       69 CALL                             R15 2 1
       70 JUMPIFNOT                        R15 ; [+3]
       71 SETTABLEKS                       R0 R14 K11 ["Parent"]
       73 JUMP                             ; [+108]
       74 LOADK                            R17 K16 ["Decal"]
       75 NAMECALL                         R15 R14 K8 ["IsA"]
       77 CALL                             R15 2 1
       78 JUMPIFNOT                        R15 ; [+37]
       79 GETTABLEKS                       R15 R14 K9 ["Name"]
       81 JUMPIFEQKS                       R15 K17 ["face"] ; [+5]
       83 GETTABLEKS                       R15 R14 K9 ["Name"]
       85 JUMPIFNOTEQKS                    R15 K18 ["Face"] ; [+30]
       87 LOADK                            R17 K1 ["Head"]
       88 NAMECALL                         R15 R0 K2 ["FindFirstChild"]
       90 CALL                             R15 2 1
       91 JUMPIFNOT                        R15 ; [+90]
       92 GETIMPORT                        R16 K4 [pairs]
       94 NAMECALL                         R17 R15 K6 ["GetChildren"]
       96 CALL                             R17 1 -1
       97 CALL                             R16 -1 3
       98 FORGPREP_NEXT                    R16
       99 JUMPIFNOT                        R20 ; [+11]
      100 GETTABLEKS                       R21 R20 K9 ["Name"]
      102 JUMPIFEQKS                       R21 K17 ["face"] ; [+5]
      104 GETTABLEKS                       R21 R20 K9 ["Name"]
      106 JUMPIFNOTEQKS                    R21 K18 ["Face"] ; [+4]
      108 NAMECALL                         R21 R20 K10 ["Destroy"]
      110 CALL                             R21 1 0
      111 FORGLOOP                         R16 2 ; [-13]
      113 SETTABLEKS                       R15 R14 K11 ["Parent"]
      115 JUMP                             ; [+66]
      116 LOADK                            R17 K19 ["SpecialMesh"]
      117 NAMECALL                         R15 R14 K8 ["IsA"]
      119 CALL                             R15 2 1
      120 JUMPIFNOT                        R15 ; [+39]
      121 LOADK                            R17 K1 ["Head"]
      122 NAMECALL                         R15 R0 K2 ["FindFirstChild"]
      124 CALL                             R15 2 1
      125 JUMPIFNOT                        R15 ; [+56]
      126 LOADK                            R18 K20 ["MeshPart"]
      127 NAMECALL                         R16 R15 K8 ["IsA"]
      129 CALL                             R16 2 1
      130 JUMPIFNOT                        R16 ; [+8]
      131 GETUPVAL                         R16 0
      132 MOVE                             R17 R15
      133 MOVE                             R18 R0
      134 MOVE                             R19 R3
      135 LOADB                            R20 1
      136 LOADB                            R21 0
      137 CALL                             R16 5 1
      138 MOVE                             R15 R16
      139 GETIMPORT                        R16 K4 [pairs]
      141 NAMECALL                         R17 R15 K6 ["GetChildren"]
      143 CALL                             R17 1 -1
      144 CALL                             R16 -1 3
      145 FORGPREP_NEXT                    R16
      146 JUMPIFNOT                        R20 ; [+8]
      147 LOADK                            R23 K19 ["SpecialMesh"]
      148 NAMECALL                         R21 R20 K8 ["IsA"]
      150 CALL                             R21 2 1
      151 JUMPIFNOT                        R21 ; [+3]
      152 NAMECALL                         R21 R20 K10 ["Destroy"]
      154 CALL                             R21 1 0
      155 FORGLOOP                         R16 2 ; [-10]
      157 SETTABLEKS                       R15 R14 K11 ["Parent"]
      159 JUMP                             ; [+22]
      160 LOADK                            R17 K20 ["MeshPart"]
      161 NAMECALL                         R15 R14 K8 ["IsA"]
      163 CALL                             R15 2 1
      164 JUMPIFNOT                        R15 ; [+17]
      165 GETTABLEKS                       R15 R14 K9 ["Name"]
      167 JUMPIFNOTEQKS                    R15 K1 ["Head"] ; [+14]
      169 LOADK                            R17 K1 ["Head"]
      170 NAMECALL                         R15 R0 K2 ["FindFirstChild"]
      172 CALL                             R15 2 1
      173 JUMPIFNOT                        R15 ; [+3]
      174 NAMECALL                         R16 R15 K10 ["Destroy"]
      176 CALL                             R16 1 0
      177 SETTABLEKS                       R0 R14 K11 ["Parent"]
      179 NAMECALL                         R16 R3 K12 ["BuildRigFromAttachments"]
      181 CALL                             R16 1 0
      182 FORGLOOP                         R10 2 ; [-160]
      184 FORGLOOP                         R5 2 ; [-169]
      186 LOADK                            R7 K1 ["Head"]
      187 NAMECALL                         R5 R0 K2 ["FindFirstChild"]
      189 CALL                             R5 2 1
      190 JUMPIFEQKNIL                     R5 ; [+10]
      192 JUMPIFNOTEQ                      R5 R4 ; [+8]
      194 GETUPVAL                         R6 0
      195 MOVE                             R7 R5
      196 MOVE                             R8 R0
      197 MOVE                             R9 R3
      198 LOADB                            R10 0
      199 LOADB                            R11 1
      200 CALL                             R6 5 0
      201 NAMECALL                         R6 R3 K12 ["BuildRigFromAttachments"]
      203 CALL                             R6 1 0
      204 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MeshPartHeadTemplate"]
        3 JUMPIF                           R2 ; [+19]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K1 ["MESH_PART_HEAD_TEMPLATE_PATH"]
        9 NAMECALL                         R3 R3 K2 ["LoadLocalAsset"]
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K0 ["MeshPartHeadTemplate"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["MeshPartHeadTemplate"]
       17 JUMPIF                           R2 ; [+5]
       18 GETIMPORT                        R2 K4 [error]
       20 LOADK                            R3 K5 ["Could not retrieve MeshPart Head Template model."]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K6 ["PartHeadTemplate"]
       26 JUMPIF                           R2 ; [+19]
       27 GETUPVAL                         R2 0
       28 GETUPVAL                         R3 1
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K7 ["HEAD_TEMPLATE_PATH"]
       32 NAMECALL                         R3 R3 K2 ["LoadLocalAsset"]
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K6 ["PartHeadTemplate"]
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K6 ["PartHeadTemplate"]
       40 JUMPIF                           R2 ; [+5]
       41 GETIMPORT                        R2 K4 [error]
       43 LOADK                            R3 K8 ["Could not retrieve Head Template model."]
       44 CALL                             R2 1 0
       45 RETURN                           R0 0
       46 LOADNIL                          R2
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K9 ["LoadedModels"]
       50 GETTABLE                         R3 R4 R1
       51 JUMPIFNOT                        R3 ; [+5]
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K9 ["LoadedModels"]
       55 GETTABLE                         R2 R3 R1
       56 JUMP                             ; [+27]
       57 GETUPVAL                         R3 1
       58 GETUPVAL                         R5 2
       59 GETTABLEKS                       R5 R5 K10 ["MANNEQUIN_PATH"]
       61 NAMECALL                         R3 R3 K2 ["LoadLocalAsset"]
       63 CALL                             R3 2 1
       64 MOVE                             R2 R3
       65 JUMPIF                           R2 ; [+5]
       66 GETIMPORT                        R3 K4 [error]
       68 LOADK                            R4 K11 ["Could not retrieve Mannequin model."]
       69 CALL                             R3 1 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R3 3
       72 MOVE                             R4 R0
       73 MOVE                             R5 R1
       74 CALL                             R3 2 1
       75 GETUPVAL                         R4 4
       76 MOVE                             R5 R2
       77 MOVE                             R6 R3
       78 LOADK                            R7 K12 ["R15ArtistIntent"]
       79 CALL                             R4 3 0
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R4 R4 K9 ["LoadedModels"]
       83 SETTABLE                         R2 R4 R1
       84 NAMECALL                         R3 R2 K13 ["clone"]
       86 CALL                             R3 1 -1
       87 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K5 [script]
       17 GETTABLEKS                       R2 R2 K6 ["Parent"]
       19 GETIMPORT                        R3 K8 [require]
       21 GETTABLEKS                       R4 R2 K9 ["Constants"]
       23 CALL                             R3 1 1
       24 NEWTABLE                         R4 4 0
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K10 ["LoadedModels"]
       30 LOADNIL                          R5
       31 SETTABLEKS                       R5 R4 K11 ["PartHeadTemplate"]
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R4 K12 ["MeshPartHeadTemplate"]
       36 DUPCLOSURE                       R5 K13 [PROTO_0]
       37 DUPCLOSURE                       R6 K14 [PROTO_2]
       38 CAPTURE                          VAL R0
       39 DUPCLOSURE                       R7 K15 [PROTO_3]
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R0
       42 DUPCLOSURE                       R8 K16 [PROTO_4]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R7
       45 DUPCLOSURE                       R9 K17 [PROTO_5]
       46 CAPTURE                          VAL R4
       47 DUPCLOSURE                       R10 K18 [PROTO_6]
       48 CAPTURE                          VAL R9
       49 DUPCLOSURE                       R11 K19 [PROTO_7]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R10
       55 SETTABLEKS                       R11 R4 K20 ["getAvatarFromBundleId"]
       57 RETURN                           R4 1
