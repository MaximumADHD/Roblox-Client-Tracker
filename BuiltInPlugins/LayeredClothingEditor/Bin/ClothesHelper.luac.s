PROTO_0:
        0 LOADB                            R2 1
        1 JUMPIFEQKS                       R1 K0 [""] ; [+10]
        3 LENGTH                           R6 R1
        4 MINUS                            R5 R6
        5 NAMECALL                         R3 R0 K1 ["sub"]
        7 CALL                             R3 2 1
        8 JUMPIFEQ                         R3 R1 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 LOADN                            R5 246
        3 NAMECALL                         R3 R2 K1 ["sub"]
        5 CALL                             R3 2 1
        6 JUMPIFEQKS                       R3 K2 ["Attachment"] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 JUMPIF                           R1 ; [+11]
       11 GETTABLEKS                       R5 R0 K0 ["Name"]
       13 FASTCALL1                        TOSTRING R5 ; [+2]
       14 GETIMPORT                        R4 K4 [tostring]
       16 CALL                             R4 1 1
       17 MOVE                             R2 R4
       18 LOADK                            R3 K2 ["Attachment"]
       19 CONCAT                           R1 R2 R3
       20 SETTABLEKS                       R1 R0 K0 ["Name"]
       22 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R2 0
        1 LOADK                            R5 K0 ["Model"]
        2 NAMECALL                         R3 R0 K1 ["IsA"]
        4 CALL                             R3 2 1
        5 JUMPIF                           R3 ; [+10]
        6 GETTABLEKS                       R4 R1 K2 ["IncorrectTypeError"]
        8 GETTABLEKS                       R5 R0 K3 ["Name"]
       10 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K6 [table.insert]
       14 CALL                             R3 2 0
       15 RETURN                           R2 1
       16 NEWTABLE                         R3 0 0
       18 GETIMPORT                        R4 K8 [pairs]
       20 NAMECALL                         R5 R0 K9 ["GetDescendants"]
       22 CALL                             R5 1 -1
       23 CALL                             R4 -1 3
       24 FORGPREP_NEXT                    R4
       25 LOADK                            R11 K10 ["WrapLayer"]
       26 NAMECALL                         R9 R8 K1 ["IsA"]
       28 CALL                             R9 2 1
       29 JUMPIFNOT                        R9 ; [+7]
       30 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       32 MOVE                             R10 R3
       33 MOVE                             R11 R8
       34 GETIMPORT                        R9 K6 [table.insert]
       36 CALL                             R9 2 0
       37 FORGLOOP                         R4 2 ; [-13]
       39 LENGTH                           R4 R3
       40 JUMPIFNOTEQKN                    R4 K11 [0] ; [+11]
       42 GETTABLEKS                       R5 R1 K12 ["NoWrapLayerError"]
       44 GETTABLEKS                       R6 R0 K3 ["Name"]
       46 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       48 GETIMPORT                        R4 K6 [table.insert]
       50 CALL                             R4 2 0
       51 RETURN                           R2 1
       52 GETIMPORT                        R4 K14 [ipairs]
       54 MOVE                             R5 R3
       55 CALL                             R4 1 3
       56 FORGPREP_INEXT                   R4
       57 GETTABLEKS                       R9 R8 K15 ["Parent"]
       59 JUMPIFNOT                        R9 ; [+128]
       60 LOADK                            R12 K16 ["MeshPart"]
       61 NAMECALL                         R10 R9 K1 ["IsA"]
       63 CALL                             R10 2 1
       64 JUMPIFNOT                        R10 ; [+123]
       65 GETIMPORT                        R10 K19 [Instance.new]
       67 LOADK                            R11 K20 ["Accessory"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K23 [string.lower]
       71 GETTABLEKS                       R12 R9 K3 ["Name"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K25 [string.match]
       76 MOVE                             R13 R11
       77 LOADK                            R14 K26 ["left"]
       78 CALL                             R12 2 1
       79 JUMPIFNOT                        R12 ; [+7]
       80 GETTABLEKS                       R13 R0 K3 ["Name"]
       82 LOADK                            R14 K27 ["_Left"]
       83 CONCAT                           R12 R13 R14
       84 SETTABLEKS                       R12 R10 K3 ["Name"]
       86 JUMP                             ; [+17]
       87 GETIMPORT                        R12 K25 [string.match]
       89 MOVE                             R13 R11
       90 LOADK                            R14 K28 ["right"]
       91 CALL                             R12 2 1
       92 JUMPIFNOT                        R12 ; [+7]
       93 GETTABLEKS                       R13 R0 K3 ["Name"]
       95 LOADK                            R14 K29 ["_Right"]
       96 CONCAT                           R12 R13 R14
       97 SETTABLEKS                       R12 R10 K3 ["Name"]
       99 JUMP                             ; [+4]
      100 GETTABLEKS                       R12 R0 K3 ["Name"]
      102 SETTABLEKS                       R12 R10 K3 ["Name"]
      104 NAMECALL                         R12 R9 K30 ["Clone"]
      106 CALL                             R12 1 1
      107 LOADN                            R13 0
      108 GETIMPORT                        R14 K8 [pairs]
      110 NAMECALL                         R15 R12 K9 ["GetDescendants"]
      112 CALL                             R15 1 -1
      113 CALL                             R14 -1 3
      114 FORGPREP_NEXT                    R14
      115 LOADK                            R21 K10 ["WrapLayer"]
      116 NAMECALL                         R19 R18 K1 ["IsA"]
      118 CALL                             R19 2 1
      119 JUMPIF                           R19 ; [+13]
      120 LOADK                            R21 K31 ["SurfaceAppearance"]
      121 NAMECALL                         R19 R18 K1 ["IsA"]
      123 CALL                             R19 2 1
      124 JUMPIF                           R19 ; [+8]
      125 LOADK                            R21 K32 ["Attachment"]
      126 NAMECALL                         R19 R18 K1 ["IsA"]
      128 CALL                             R19 2 1
      129 JUMPIF                           R19 ; [+3]
      130 NAMECALL                         R19 R18 K33 ["Destroy"]
      132 CALL                             R19 1 0
      133 LOADK                            R21 K32 ["Attachment"]
      134 NAMECALL                         R19 R18 K1 ["IsA"]
      136 CALL                             R19 2 1
      137 JUMPIFNOT                        R19 ; [+23]
      138 ADDK                             R13 R13 K34 [1]
      139 GETTABLEKS                       R20 R18 K3 ["Name"]
      141 LOADN                            R23 246
      142 NAMECALL                         R21 R20 K35 ["sub"]
      144 CALL                             R21 2 1
      145 JUMPIFEQKS                       R21 K32 ["Attachment"] ; [+2]
      147 LOADB                            R19 0 +1
      148 LOADB                            R19 1
      149 JUMPIF                           R19 ; [+11]
      150 GETTABLEKS                       R23 R18 K3 ["Name"]
      152 FASTCALL1                        TOSTRING R23 ; [+2]
      153 GETIMPORT                        R22 K37 [tostring]
      155 CALL                             R22 1 1
      156 MOVE                             R20 R22
      157 LOADK                            R21 K32 ["Attachment"]
      158 CONCAT                           R19 R20 R21
      159 SETTABLEKS                       R19 R18 K3 ["Name"]
      161 FORGLOOP                         R14 2 ; [-47]
      163 LOADK                            R14 K38 ["Handle"]
      164 SETTABLEKS                       R14 R12 K3 ["Name"]
      166 SETTABLEKS                       R10 R12 K15 ["Parent"]
      168 GETTABLEKS                       R14 R0 K15 ["Parent"]
      170 SETTABLEKS                       R14 R10 K15 ["Parent"]
      172 JUMPIFNOTEQKN                    R13 K11 [0] ; [+14]
      174 GETTABLEKS                       R15 R1 K39 ["NoAttachmentsError"]
      176 GETTABLEKS                       R16 R9 K3 ["Name"]
      178 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      180 GETIMPORT                        R14 K6 [table.insert]
      182 CALL                             R14 2 0
      183 NAMECALL                         R14 R10 K33 ["Destroy"]
      185 CALL                             R14 1 0
      186 JUMP                             ; [+1]
      187 ADDK                             R2 R2 K34 [1]
      188 FORGLOOP                         R4 2 [inext] ; [-132]
      190 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R1 R0
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        4 LOADK                            R1 K1 [""]
        5 RETURN                           R1 1
        6 LOADK                            R1 K2 [":\n"]
        7 GETIMPORT                        R2 K4 [ipairs]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 3
       11 FORGPREP_INEXT                   R2
       12 MOVE                             R7 R1
       13 MOVE                             R8 R6
       14 CONCAT                           R1 R7 R8
       15 LENGTH                           R7 R0
       16 JUMPIFEQ                         R5 R7 ; [+4]
       18 MOVE                             R7 R1
       19 LOADK                            R8 K5 [",\n"]
       20 CONCAT                           R1 R7 R8
       21 FORGLOOP                         R2 2 [inext] ; [-10]
       23 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOT                        R3 ; [+4]
        1 LENGTH                           R4 R3
        2 LOADN                            R5 0
        3 JUMPIFNOTLT                      R5 R4 ; [+18]
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R3
        7 CALL                             R4 1 1
        8 GETUPVAL                         R5 1
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 GETUPVAL                         R8 2
       12 DUPTABLE                         R9 K2 [{"Text", "Resizable"}]
       13 MOVE                             R11 R2
       14 MOVE                             R12 R4
       15 CONCAT                           R10 R11 R12
       16 SETTABLEKS                       R10 R9 K0 ["Text"]
       18 LOADB                            R10 1
       19 SETTABLEKS                       R10 R9 K1 ["Resizable"]
       21 CALL                             R5 4 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["Get"]
        3 CALL                             R3 1 1
        4 LENGTH                           R4 R3
        5 JUMPIFNOTEQKN                    R4 K1 [0] ; [+11]
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 LOADK                            R9 K2 ["ClothesHelper"]
       11 LOADK                            R10 K3 ["NoSelectionError"]
       12 NAMECALL                         R7 R1 K4 ["getText"]
       14 CALL                             R7 3 -1
       15 CALL                             R4 -1 0
       16 RETURN                           R0 0
       17 DUPTABLE                         R4 K8 [{"NoAttachmentsError", "NoWrapLayerError", "IncorrectTypeError"}]
       18 NEWTABLE                         R5 0 0
       20 SETTABLEKS                       R5 R4 K5 ["NoAttachmentsError"]
       22 NEWTABLE                         R5 0 0
       24 SETTABLEKS                       R5 R4 K6 ["NoWrapLayerError"]
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K7 ["IncorrectTypeError"]
       30 LOADN                            R5 0
       31 GETIMPORT                        R6 K10 [ipairs]
       33 MOVE                             R7 R3
       34 CALL                             R6 1 3
       35 FORGPREP_INEXT                   R6
       36 GETUPVAL                         R11 2
       37 MOVE                             R12 R10
       38 MOVE                             R13 R4
       39 CALL                             R11 2 1
       40 ADD                              R5 R5 R11
       41 FORGLOOP                         R6 2 [inext] ; [-6]
       43 LOADK                            R8 K11 ["CreateAccessory"]
       44 NAMECALL                         R6 R2 K12 ["getHandler"]
       46 CALL                             R6 2 1
       47 MOVE                             R7 R5
       48 CALL                             R6 1 0
       49 GETIMPORT                        R6 K14 [pairs]
       51 MOVE                             R7 R4
       52 CALL                             R6 1 3
       53 FORGPREP_NEXT                    R6
       54 GETUPVAL                         R11 1
       55 MOVE                             R12 R0
       56 MOVE                             R13 R1
       57 LOADK                            R16 K2 ["ClothesHelper"]
       58 MOVE                             R17 R9
       59 NAMECALL                         R14 R1 K4 ["getText"]
       61 CALL                             R14 3 1
       62 MOVE                             R15 R10
       63 CALL                             R11 4 0
       64 FORGLOOP                         R6 2 ; [-11]
       66 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R7 K0 ["CreateAccessory"]
        1 LOADK                            R10 K1 ["ClothesHelper"]
        2 LOADK                            R11 K2 ["CreateAccessoryTooltip"]
        3 NAMECALL                         R8 R3 K3 ["getText"]
        5 CALL                             R8 3 1
        6 LOADK                            R9 K4 [""]
        7 NAMECALL                         R5 R2 K5 ["CreateButton"]
        9 CALL                             R5 4 1
       10 LOADB                            R6 1
       11 SETTABLEKS                       R6 R5 K6 ["ClickableWhenViewportHidden"]
       13 GETTABLEKS                       R6 R5 K7 ["Click"]
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R4
       20 NAMECALL                         R6 R6 K8 ["connect"]
       22 CALL                             R6 2 0
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Packages"]
       17 GETTABLEKS                       R3 R3 K10 ["AvatarToolsShared"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K11 ["Components"]
       22 GETTABLEKS                       R4 R3 K12 ["ConfirmDialog"]
       24 GETIMPORT                        R5 K8 [require]
       26 GETTABLEKS                       R6 R1 K13 ["Src"]
       28 GETTABLEKS                       R6 R6 K14 ["Util"]
       30 GETTABLEKS                       R6 R6 K15 ["ShowDialog"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K16 [PROTO_0]
       34 DUPCLOSURE                       R7 K17 [PROTO_1]
       35 DUPCLOSURE                       R8 K18 [PROTO_2]
       36 DUPCLOSURE                       R9 K19 [PROTO_3]
       37 DUPCLOSURE                       R10 K20 [PROTO_4]
       38 CAPTURE                          VAL R9
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R4
       41 DUPCLOSURE                       R11 K21 [PROTO_5]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R10
       44 CAPTURE                          VAL R8
       45 NEWTABLE                         R12 1 0
       47 DUPCLOSURE                       R13 K22 [PROTO_7]
       48 CAPTURE                          VAL R11
       49 SETTABLEKS                       R13 R12 K23 ["init"]
       51 RETURN                           R12 1
