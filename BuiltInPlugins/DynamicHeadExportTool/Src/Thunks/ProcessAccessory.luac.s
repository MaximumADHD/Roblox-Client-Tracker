PROTO_0:
        0 LOADB                            R2 1
        1 JUMPIFEQKS                       R1 K0 [""] ; [+13]
        3 LENGTH                           R6 R1
        4 MINUS                            R5 R6
        5 FASTCALL2                        STRING_SUB R0 R5 ; [+4]
        7 MOVE                             R4 R0
        8 GETIMPORT                        R3 K3 [string.sub]
       10 CALL                             R3 2 1
       11 JUMPIFEQ                         R3 R1 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["PluginReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["rig"]
        7 GETTABLEKS                       R3 R1 K3 ["accessoryType"]
        9 NEWTABLE                         R4 0 0
       11 NAMECALL                         R5 R2 K4 ["GetDescendants"]
       13 CALL                             R5 1 3
       14 FORGPREP                         R5
       15 LOADK                            R12 K5 ["WrapLayer"]
       16 NAMECALL                         R10 R9 K6 ["IsA"]
       18 CALL                             R10 2 1
       19 JUMPIFNOT                        R10 ; [+7]
       20 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       22 MOVE                             R11 R4
       23 MOVE                             R12 R9
       24 GETIMPORT                        R10 K9 [table.insert]
       26 CALL                             R10 2 0
       27 FORGLOOP                         R5 2 ; [-13]
       29 LENGTH                           R5 R4
       30 JUMPIFNOTEQKN                    R5 K10 [0] ; [+6]
       32 GETUPVAL                         R5 0
       33 MOVE                             R6 R0
       34 LOADK                            R7 K11 ["Layered Clothing items not found!"]
       35 CALL                             R5 2 -1
       36 RETURN                           R5 -1
       37 LOADK                            R7 K12 ["RootPart"]
       38 NAMECALL                         R5 R2 K13 ["FindFirstChild"]
       40 CALL                             R5 2 1
       41 JUMPIF                           R5 ; [+5]
       42 GETUPVAL                         R6 0
       43 MOVE                             R7 R0
       44 LOADK                            R8 K14 ["Unable to find Part named \"RootPart\""]
       45 CALL                             R6 2 -1
       46 RETURN                           R6 -1
       47 LOADK                            R8 K15 ["FaceFront"]
       48 NAMECALL                         R6 R5 K13 ["FindFirstChild"]
       50 CALL                             R6 2 1
       51 JUMPIFNOT                        R6 ; [+5]
       52 LOADK                            R9 K16 ["Attachment"]
       53 NAMECALL                         R7 R6 K6 ["IsA"]
       55 CALL                             R7 2 1
       56 JUMPIF                           R7 ; [+5]
       57 GETUPVAL                         R7 0
       58 MOVE                             R8 R0
       59 LOADK                            R9 K17 ["Unable to find Attachment named \"FaceFront\" in RootPart"]
       60 CALL                             R7 2 -1
       61 RETURN                           R7 -1
       62 MOVE                             R7 R4
       63 LOADNIL                          R8
       64 LOADNIL                          R9
       65 FORGPREP                         R7
       66 GETTABLEKS                       R12 R11 K18 ["Parent"]
       68 JUMPIFNOT                        R12 ; [+5]
       69 LOADK                            R15 K19 ["MeshPart"]
       70 NAMECALL                         R13 R12 K6 ["IsA"]
       72 CALL                             R13 2 1
       73 JUMPIF                           R13 ; [+11]
       74 GETIMPORT                        R13 K21 [warn]
       76 LOADK                            R15 K22 ["Ignoring '"]
       77 NAMECALL                         R18 R11 K23 ["GetFullName"]
       79 CALL                             R18 1 1
       80 MOVE                             R16 R18
       81 LOADK                            R17 K24 ["'"]
       82 CONCAT                           R14 R15 R17
       83 CALL                             R13 1 0
       84 JUMP                             ; [+129]
       85 GETIMPORT                        R13 K27 [Instance.new]
       87 LOADK                            R14 K28 ["Folder"]
       88 CALL                             R13 1 1
       89 GETUPVAL                         R16 1
       90 GETTABLE                         R15 R16 R3
       91 GETTABLEKS                       R14 R15 K29 ["Name"]
       93 SETTABLEKS                       R14 R13 K29 ["Name"]
       95 GETUPVAL                         R14 2
       96 MOVE                             R16 R13
       97 GETUPVAL                         R18 3
       98 GETTABLEKS                       R17 R18 K30 ["Tag"]
      100 NAMECALL                         R14 R14 K31 ["AddTag"]
      102 CALL                             R14 3 0
      103 GETIMPORT                        R14 K27 [Instance.new]
      105 LOADK                            R15 K32 ["Accessory"]
      106 CALL                             R14 1 1
      107 NAMECALL                         R15 R12 K33 ["Clone"]
      109 CALL                             R15 1 1
      110 LOADN                            R16 0
      111 NAMECALL                         R17 R15 K4 ["GetDescendants"]
      113 CALL                             R17 1 3
      114 FORGPREP                         R17
      115 LOADK                            R24 K16 ["Attachment"]
      116 NAMECALL                         R22 R21 K6 ["IsA"]
      118 CALL                             R22 2 1
      119 JUMPIFNOT                        R22 ; [+22]
      120 ADDK                             R16 R16 K34 [1]
      121 GETTABLEKS                       R23 R21 K29 ["Name"]
      123 FASTCALL2K                       STRING_SUB R23 K35 ; [+5]
      125 MOVE                             R25 R23
      126 LOADK                            R26 K35 [-10]
      127 GETIMPORT                        R24 K38 [string.sub]
      129 CALL                             R24 2 1
      130 JUMPIFEQKS                       R24 K16 ["Attachment"] ; [+2]
      132 LOADB                            R22 0 +1
      133 LOADB                            R22 1
      134 JUMPIF                           R22 ; [+25]
      135 GETTABLEKS                       R23 R21 K29 ["Name"]
      137 LOADK                            R24 K16 ["Attachment"]
      138 CONCAT                           R22 R23 R24
      139 SETTABLEKS                       R22 R21 K29 ["Name"]
      141 JUMP                             ; [+18]
      142 LOADK                            R24 K5 ["WrapLayer"]
      143 NAMECALL                         R22 R21 K6 ["IsA"]
      145 CALL                             R22 2 1
      146 JUMPIF                           R22 ; [+13]
      147 LOADK                            R24 K39 ["SurfaceAppearance"]
      148 NAMECALL                         R22 R21 K6 ["IsA"]
      150 CALL                             R22 2 1
      151 JUMPIF                           R22 ; [+8]
      152 LOADK                            R24 K16 ["Attachment"]
      153 NAMECALL                         R22 R21 K6 ["IsA"]
      155 CALL                             R22 2 1
      156 JUMPIF                           R22 ; [+3]
      157 NAMECALL                         R22 R21 K40 ["Destroy"]
      159 CALL                             R22 1 0
      160 FORGLOOP                         R17 2 ; [-46]
      162 LOADK                            R19 K5 ["WrapLayer"]
      163 NAMECALL                         R17 R15 K41 ["FindFirstChildOfClass"]
      165 CALL                             R17 2 1
      166 FASTCALL1                        ASSERT R17 ; [+3]
      167 MOVE                             R19 R17
      168 GETIMPORT                        R18 K43 [assert]
      170 CALL                             R18 1 0
      171 LOADK                            R18 K5 ["WrapLayer"]
      172 SETTABLEKS                       R18 R17 K29 ["Name"]
      174 GETUPVAL                         R18 4
      175 MOVE                             R19 R0
      176 CALL                             R18 1 1
      177 JUMPIFNOT                        R18 ; [+5]
      178 LOADK                            R19 K44 [""]
      179 SETTABLEKS                       R19 R15 K45 ["TextureID"]
      181 SETTABLEKS                       R15 R18 K18 ["Parent"]
      183 GETTABLEKS                       R19 R12 K45 ["TextureID"]
      185 JUMPIFNOTEQKS                    R19 K44 [""] ; [+13]
      187 JUMPIFEQKNIL                     R18 ; [+5]
      189 GETTABLEKS                       R19 R18 K46 ["ColorMap"]
      191 JUMPIFNOTEQKS                    R19 K44 [""] ; [+7]
      193 GETIMPORT                        R19 K48 [BrickColor.new]
      195 LOADK                            R20 K49 ["Really black"]
      196 CALL                             R19 1 1
      197 SETTABLEKS                       R19 R15 K47 ["BrickColor"]
      199 NAMECALL                         R19 R6 K33 ["Clone"]
      201 CALL                             R19 1 1
      202 SETTABLEKS                       R15 R19 K18 ["Parent"]
      204 LOADK                            R19 K50 ["Handle"]
      205 SETTABLEKS                       R19 R15 K29 ["Name"]
      207 SETTABLEKS                       R14 R15 K18 ["Parent"]
      209 SETTABLEKS                       R13 R14 K18 ["Parent"]
      211 GETUPVAL                         R19 5
      212 SETTABLEKS                       R19 R13 K18 ["Parent"]
      214 FORGLOOP                         R7 2 ; [-149]
      216 LOADNIL                          R7
      217 RETURN                           R7 1

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 RETURN                           R0 1

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
       32 GETTABLEKS                       R5 R6 K14 ["fail"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R8 R0 K11 ["Src"]
       39 GETTABLEKS                       R7 R8 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K15 ["createSurfaceAppearance"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 NEWTABLE                         R7 32 0
       47 GETIMPORT                        R8 K20 [Enum.AccessoryType.Hat]
       49 GETIMPORT                        R9 K22 [Enum.AssetType.Hat]
       51 SETTABLE                         R9 R7 R8
       52 GETIMPORT                        R8 K24 [Enum.AccessoryType.Hair]
       54 GETIMPORT                        R9 K26 [Enum.AssetType.HairAccessory]
       56 SETTABLE                         R9 R7 R8
       57 GETIMPORT                        R8 K28 [Enum.AccessoryType.Face]
       59 GETIMPORT                        R9 K30 [Enum.AssetType.FaceAccessory]
       61 SETTABLE                         R9 R7 R8
       62 GETIMPORT                        R8 K32 [Enum.AccessoryType.Neck]
       64 GETIMPORT                        R9 K34 [Enum.AssetType.NeckAccessory]
       66 SETTABLE                         R9 R7 R8
       67 GETIMPORT                        R8 K36 [Enum.AccessoryType.Shoulder]
       69 GETIMPORT                        R9 K38 [Enum.AssetType.ShoulderAccessory]
       71 SETTABLE                         R9 R7 R8
       72 GETIMPORT                        R8 K40 [Enum.AccessoryType.Front]
       74 GETIMPORT                        R9 K42 [Enum.AssetType.FrontAccessory]
       76 SETTABLE                         R9 R7 R8
       77 GETIMPORT                        R8 K44 [Enum.AccessoryType.Back]
       79 GETIMPORT                        R9 K46 [Enum.AssetType.BackAccessory]
       81 SETTABLE                         R9 R7 R8
       82 GETIMPORT                        R8 K48 [Enum.AccessoryType.Waist]
       84 GETIMPORT                        R9 K50 [Enum.AssetType.WaistAccessory]
       86 SETTABLE                         R9 R7 R8
       87 GETIMPORT                        R8 K52 [Enum.AccessoryType.TShirt]
       89 GETIMPORT                        R9 K54 [Enum.AssetType.TShirtAccessory]
       91 SETTABLE                         R9 R7 R8
       92 GETIMPORT                        R8 K56 [Enum.AccessoryType.Shirt]
       94 GETIMPORT                        R9 K58 [Enum.AssetType.ShirtAccessory]
       96 SETTABLE                         R9 R7 R8
       97 GETIMPORT                        R8 K60 [Enum.AccessoryType.Pants]
       99 GETIMPORT                        R9 K62 [Enum.AssetType.PantsAccessory]
      101 SETTABLE                         R9 R7 R8
      102 GETIMPORT                        R8 K64 [Enum.AccessoryType.Jacket]
      104 GETIMPORT                        R9 K66 [Enum.AssetType.JacketAccessory]
      106 SETTABLE                         R9 R7 R8
      107 GETIMPORT                        R8 K68 [Enum.AccessoryType.Sweater]
      109 GETIMPORT                        R9 K70 [Enum.AssetType.SweaterAccessory]
      111 SETTABLE                         R9 R7 R8
      112 GETIMPORT                        R8 K72 [Enum.AccessoryType.Shorts]
      114 GETIMPORT                        R9 K74 [Enum.AssetType.ShortsAccessory]
      116 SETTABLE                         R9 R7 R8
      117 GETIMPORT                        R8 K76 [Enum.AccessoryType.LeftShoe]
      119 GETIMPORT                        R9 K78 [Enum.AssetType.LeftShoeAccessory]
      121 SETTABLE                         R9 R7 R8
      122 GETIMPORT                        R8 K80 [Enum.AccessoryType.RightShoe]
      124 GETIMPORT                        R9 K82 [Enum.AssetType.RightShoeAccessory]
      126 SETTABLE                         R9 R7 R8
      127 GETIMPORT                        R8 K84 [Enum.AccessoryType.DressSkirt]
      129 GETIMPORT                        R9 K86 [Enum.AssetType.DressSkirtAccessory]
      131 SETTABLE                         R9 R7 R8
      132 GETIMPORT                        R8 K88 [Enum.AccessoryType.Eyebrow]
      134 GETIMPORT                        R9 K90 [Enum.AssetType.EyebrowAccessory]
      136 SETTABLE                         R9 R7 R8
      137 GETIMPORT                        R8 K92 [Enum.AccessoryType.Eyelash]
      139 GETIMPORT                        R9 K94 [Enum.AssetType.EyelashAccessory]
      141 SETTABLE                         R9 R7 R8
      142 DUPCLOSURE                       R8 K95 [PROTO_2]
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R1
      149 RETURN                           R8 1
