PROTO_0:
        0 LOADK                            R5 K0 ["Head"]
        1 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+5]
        5 LOADK                            R6 K2 ["MeshPart"]
        6 NAMECALL                         R4 R3 K3 ["IsA"]
        8 CALL                             R4 2 1
        9 JUMPIF                           R4 ; [+5]
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R0
       12 LOADK                            R6 K4 ["Unable to find MeshPart named \"Head\""]
       13 CALL                             R4 2 -1
       14 RETURN                           R4 -1
       15 GETIMPORT                        R4 K7 [Instance.new]
       17 LOADK                            R5 K8 ["Folder"]
       18 CALL                             R4 1 1
       19 LOADK                            R5 K0 ["Head"]
       20 SETTABLEKS                       R5 R4 K9 ["Name"]
       22 GETUPVAL                         R5 1
       23 MOVE                             R7 R4
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R8 R9 K10 ["Tag"]
       27 NAMECALL                         R5 R5 K11 ["AddTag"]
       29 CALL                             R5 3 0
       30 NAMECALL                         R5 R3 K12 ["Clone"]
       32 CALL                             R5 1 1
       33 SETTABLEKS                       R4 R5 K13 ["Parent"]
       35 JUMPIFNOT                        R2 ; [+5]
       36 SETTABLEKS                       R5 R2 K13 ["Parent"]
       38 LOADK                            R6 K14 [""]
       39 SETTABLEKS                       R6 R5 K15 ["TextureID"]
       41 LOADK                            R8 K16 ["AvatarPartScaleType"]
       42 NAMECALL                         R6 R5 K1 ["FindFirstChild"]
       44 CALL                             R6 2 1
       45 JUMPIFNOT                        R6 ; [+5]
       46 LOADK                            R9 K17 ["StringValue"]
       47 NAMECALL                         R7 R6 K3 ["IsA"]
       49 CALL                             R7 2 1
       50 JUMPIF                           R7 ; [+5]
       51 GETUPVAL                         R7 0
       52 MOVE                             R8 R0
       53 LOADK                            R9 K18 ["Unable to find AvatarPartScaleType"]
       54 CALL                             R7 2 -1
       55 RETURN                           R7 -1
       56 LOADK                            R9 K19 ["FaceCenterAttachment"]
       57 NAMECALL                         R7 R5 K1 ["FindFirstChild"]
       59 CALL                             R7 2 1
       60 JUMPIFNOT                        R7 ; [+5]
       61 LOADK                            R10 K20 ["Attachment"]
       62 NAMECALL                         R8 R7 K3 ["IsA"]
       64 CALL                             R8 2 1
       65 JUMPIF                           R8 ; [+5]
       66 GETUPVAL                         R8 0
       67 MOVE                             R9 R0
       68 LOADK                            R10 K21 ["Unable to find FaceCenterAttachment"]
       69 CALL                             R8 2 -1
       70 RETURN                           R8 -1
       71 LOADK                            R10 K22 ["FaceFrontAttachment"]
       72 NAMECALL                         R8 R5 K1 ["FindFirstChild"]
       74 CALL                             R8 2 1
       75 JUMPIFNOT                        R8 ; [+5]
       76 LOADK                            R11 K20 ["Attachment"]
       77 NAMECALL                         R9 R8 K3 ["IsA"]
       79 CALL                             R9 2 1
       80 JUMPIF                           R9 ; [+5]
       81 GETUPVAL                         R9 0
       82 MOVE                             R10 R0
       83 LOADK                            R11 K23 ["Unable to find FaceFrontAttachment"]
       84 CALL                             R9 2 -1
       85 RETURN                           R9 -1
       86 LOADK                            R11 K24 ["HairAttachment"]
       87 NAMECALL                         R9 R5 K1 ["FindFirstChild"]
       89 CALL                             R9 2 1
       90 JUMPIFNOT                        R9 ; [+5]
       91 LOADK                            R12 K20 ["Attachment"]
       92 NAMECALL                         R10 R9 K3 ["IsA"]
       94 CALL                             R10 2 1
       95 JUMPIF                           R10 ; [+5]
       96 GETUPVAL                         R10 0
       97 MOVE                             R11 R0
       98 LOADK                            R12 K25 ["Unable to find HairAttachment"]
       99 CALL                             R10 2 -1
      100 RETURN                           R10 -1
      101 LOADK                            R12 K26 ["HatAttachment"]
      102 NAMECALL                         R10 R5 K1 ["FindFirstChild"]
      104 CALL                             R10 2 1
      105 JUMPIFNOT                        R10 ; [+5]
      106 LOADK                            R13 K20 ["Attachment"]
      107 NAMECALL                         R11 R10 K3 ["IsA"]
      109 CALL                             R11 2 1
      110 JUMPIF                           R11 ; [+5]
      111 GETUPVAL                         R11 0
      112 MOVE                             R12 R0
      113 LOADK                            R13 K27 ["Unable to find HatAttachment"]
      114 CALL                             R11 2 -1
      115 RETURN                           R11 -1
      116 LOADK                            R13 K28 ["NeckRigAttachment"]
      117 NAMECALL                         R11 R5 K1 ["FindFirstChild"]
      119 CALL                             R11 2 1
      120 JUMPIFNOT                        R11 ; [+5]
      121 LOADK                            R14 K20 ["Attachment"]
      122 NAMECALL                         R12 R11 K3 ["IsA"]
      124 CALL                             R12 2 1
      125 JUMPIF                           R12 ; [+5]
      126 GETUPVAL                         R12 0
      127 MOVE                             R13 R0
      128 LOADK                            R14 K29 ["Unable to find NeckRigAttachment"]
      129 CALL                             R12 2 -1
      130 RETURN                           R12 -1
      131 LOADK                            R14 K30 ["WrapTarget"]
      132 NAMECALL                         R12 R5 K31 ["FindFirstChildOfClass"]
      134 CALL                             R12 2 1
      135 JUMPIF                           R12 ; [+5]
      136 GETUPVAL                         R13 0
      137 MOVE                             R14 R0
      138 LOADK                            R15 K32 ["Unable to find WrapTarget"]
      139 CALL                             R13 2 -1
      140 RETURN                           R13 -1
      141 LOADK                            R15 K33 ["FaceControls"]
      142 NAMECALL                         R13 R5 K31 ["FindFirstChildOfClass"]
      144 CALL                             R13 2 1
      145 JUMPIF                           R13 ; [+5]
      146 GETUPVAL                         R14 0
      147 MOVE                             R15 R0
      148 LOADK                            R16 K34 ["Unable to find FaceControls"]
      149 CALL                             R14 2 -1
      150 RETURN                           R14 -1
      151 NAMECALL                         R14 R5 K35 ["GetDescendants"]
      153 CALL                             R14 1 3
      154 FORGPREP                         R14
      155 LOADK                            R21 K36 ["Motor6D"]
      156 NAMECALL                         R19 R18 K3 ["IsA"]
      158 CALL                             R19 2 1
      159 JUMPIFNOT                        R19 ; [+4]
      160 NAMECALL                         R19 R18 K37 ["Destroy"]
      162 CALL                             R19 1 0
      163 JUMP                             ; [+25]
      164 LOADK                            R21 K38 ["Vector3Value"]
      165 NAMECALL                         R19 R18 K3 ["IsA"]
      167 CALL                             R19 2 1
      168 JUMPIFNOT                        R19 ; [+8]
      169 GETTABLEKS                       R19 R18 K9 ["Name"]
      171 JUMPIFNOTEQKS                    R19 K39 ["OriginalSize"] ; [+5]
      173 NAMECALL                         R19 R18 K37 ["Destroy"]
      175 CALL                             R19 1 0
      176 JUMP                             ; [+12]
      177 LOADK                            R21 K38 ["Vector3Value"]
      178 NAMECALL                         R19 R18 K3 ["IsA"]
      180 CALL                             R19 2 1
      181 JUMPIFNOT                        R19 ; [+7]
      182 GETTABLEKS                       R19 R18 K9 ["Name"]
      184 JUMPIFNOTEQKS                    R19 K40 ["OriginalPosition"] ; [+4]
      186 NAMECALL                         R19 R18 K37 ["Destroy"]
      188 CALL                             R19 1 0
      189 FORGLOOP                         R14 2 ; [-35]
      191 GETUPVAL                         R14 3
      192 SETTABLEKS                       R14 R4 K13 ["Parent"]
      194 LOADB                            R14 1
      195 RETURN                           R14 1

PROTO_1:
        0 LOADK                            R5 K0 ["Head"]
        1 NAMECALL                         R3 R1 K1 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+5]
        5 LOADK                            R6 K2 ["MeshPart"]
        6 NAMECALL                         R4 R3 K3 ["IsA"]
        8 CALL                             R4 2 1
        9 JUMPIF                           R4 ; [+5]
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R0
       12 LOADK                            R6 K4 ["Unable to find MeshPart named \"Head\""]
       13 CALL                             R4 2 -1
       14 RETURN                           R4 -1
       15 GETIMPORT                        R4 K7 [Instance.new]
       17 LOADK                            R5 K8 ["Folder"]
       18 CALL                             R4 1 1
       19 LOADK                            R5 K9 ["Head_Special"]
       20 SETTABLEKS                       R5 R4 K10 ["Name"]
       22 GETUPVAL                         R5 1
       23 MOVE                             R7 R4
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R8 R9 K11 ["Tag"]
       27 NAMECALL                         R5 R5 K12 ["AddTag"]
       29 CALL                             R5 3 0
       30 GETIMPORT                        R5 K7 [Instance.new]
       32 LOADK                            R6 K13 ["SpecialMesh"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R4 R5 K14 ["Parent"]
       36 GETTABLEKS                       R6 R3 K15 ["MeshId"]
       38 SETTABLEKS                       R6 R5 K15 ["MeshId"]
       40 JUMPIFNOT                        R2 ; [+5]
       41 GETTABLEKS                       R6 R2 K16 ["ColorMap"]
       43 SETTABLEKS                       R6 R5 K17 ["TextureId"]
       45 JUMP                             ; [+4]
       46 GETTABLEKS                       R6 R3 K18 ["TextureID"]
       48 SETTABLEKS                       R6 R5 K17 ["TextureId"]
       50 LOADK                            R8 K19 ["face"]
       51 NAMECALL                         R6 R3 K1 ["FindFirstChild"]
       53 CALL                             R6 2 1
       54 JUMPIF                           R6 ; [+11]
       55 LOADK                            R8 K20 ["Face"]
       56 NAMECALL                         R6 R3 K1 ["FindFirstChild"]
       58 CALL                             R6 2 1
       59 JUMPIF                           R6 ; [+6]
       60 GETUPVAL                         R6 1
       61 MOVE                             R8 R5
       62 LOADK                            R9 K21 ["NoFace"]
       63 NAMECALL                         R6 R6 K12 ["AddTag"]
       65 CALL                             R6 3 0
       66 NAMECALL                         R6 R3 K22 ["GetChildren"]
       68 CALL                             R6 1 3
       69 FORGPREP                         R6
       70 GETTABLEKS                       R11 R10 K23 ["ClassName"]
       72 JUMPIFNOTEQKS                    R11 K24 ["Attachment"] ; [+15]
       74 GETIMPORT                        R11 K7 [Instance.new]
       76 LOADK                            R12 K25 ["Vector3Value"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R12 R10 K10 ["Name"]
       80 SETTABLEKS                       R12 R11 K10 ["Name"]
       82 GETTABLEKS                       R12 R10 K26 ["Position"]
       84 SETTABLEKS                       R12 R11 K27 ["Value"]
       86 SETTABLEKS                       R5 R11 K14 ["Parent"]
       88 FORGLOOP                         R6 2 ; [-19]
       90 LOADK                            R8 K28 ["AvatarPartScaleType"]
       91 NAMECALL                         R6 R3 K1 ["FindFirstChild"]
       93 CALL                             R6 2 1
       94 JUMPIFNOT                        R6 ; [+5]
       95 NAMECALL                         R7 R6 K29 ["Clone"]
       97 CALL                             R7 1 1
       98 SETTABLEKS                       R5 R7 K14 ["Parent"]
      100 GETUPVAL                         R7 3
      101 SETTABLEKS                       R7 R4 K14 ["Parent"]
      103 LOADB                            R7 1
      104 RETURN                           R7 1

PROTO_2:
        0 NAMECALL                         R3 R0 K0 ["getState"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["PluginReducer"]
        5 GETTABLEKS                       R1 R2 K2 ["rig"]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R3 3 1
       15 JUMPIF                           R3 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 MOVE                             R6 R2
       21 CALL                             R3 3 1
       22 JUMPIF                           R3 ; [+1]
       23 RETURN                           R0 0
       24 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["CollectionService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R0 K11 ["Src"]
       23 GETTABLEKS                       R4 R5 K12 ["Constants"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Src"]
       30 GETTABLEKS                       R6 R7 K13 ["Util"]
       32 GETTABLEKS                       R5 R6 K14 ["createSurfaceAppearance"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Src"]
       39 GETTABLEKS                       R7 R8 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K15 ["fail"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 DUPCLOSURE                       R7 K17 [PROTO_1]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R1
       54 DUPCLOSURE                       R8 K18 [PROTO_3]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 RETURN                           R8 1
