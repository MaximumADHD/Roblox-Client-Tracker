PROTO_0:
        0 NEWTABLE                         R4 4 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 1
        9 CALL                             R4 0 1
       10 SETTABLEKS                       R4 R3 K2 ["avatarData"]
       12 GETTABLEKS                       R4 R3 K2 ["avatarData"]
       14 JUMPIF                           R4 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K3 ["AvatarType"]
       19 GETTABLEKS                       R7 R3 K2 ["avatarData"]
       21 GETTABLEKS                       R6 R7 K4 ["playerAvatarType"]
       23 GETTABLE                         R4 R5 R6
       24 SETTABLEKS                       R4 R3 K5 ["playerChoiceAvatarType"]
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K6 ["new"]
       29 MOVE                             R5 R0
       30 MOVE                             R6 R1
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K7 ["characterManager"]
       34 MOVE                             R6 R2
       35 NAMECALL                         R4 R3 K8 ["applyTemplates"]
       37 CALL                             R4 2 0
       38 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["characterManager"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["characterManager"]
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R0 R0 K1 ["applyDescription"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 MOVE                             R3 R1
        4 JUMPIFNOT                        R3 ; [+5]
        5 GETIMPORT                        R4 K1 [next]
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 GETTABLE                         R3 R1 R4
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R0
       12 MOVE                             R6 R3
       13 CALL                             R4 2 0
       14 JUMPIFNOT                        R3 ; [+4]
       15 MOVE                             R6 R2
       16 NAMECALL                         R4 R3 K2 ["apply"]
       18 CALL                             R4 2 0
       19 GETIMPORT                        R4 K4 [spawn]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["characterManager"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["setPosition"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["characterManager"]
        2 NAMECALL                         R1 R1 K1 ["stop"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+358]
        1 GETIMPORT                        R2 K1 [ipairs]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 3
        5 FORGPREP_INEXT                   R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
        9 GETTABLEKS                       R7 R7 K3 ["Hat"]
       11 GETTABLEKS                       R8 R6 K4 ["assetType"]
       13 GETTABLEKS                       R8 R8 K5 ["id"]
       15 JUMPIFNOTEQ                      R7 R8 ; [+14]
       17 GETTABLEKS                       R8 R0 K6 ["HatAccessory"]
       19 LOADK                            R9 K7 [","]
       20 GETTABLEKS                       R11 R6 K5 ["id"]
       22 FASTCALL1                        TOSTRING R11 ; [+2]
       23 GETIMPORT                        R10 K9 [tostring]
       25 CALL                             R10 1 1
       26 CONCAT                           R7 R8 R10
       27 SETTABLEKS                       R7 R0 K6 ["HatAccessory"]
       29 JUMP                             ; [+327]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
       33 GETTABLEKS                       R7 R7 K10 ["Hair"]
       35 GETTABLEKS                       R8 R6 K4 ["assetType"]
       37 GETTABLEKS                       R8 R8 K5 ["id"]
       39 JUMPIFNOTEQ                      R7 R8 ; [+14]
       41 GETTABLEKS                       R8 R0 K11 ["HairAccessory"]
       43 LOADK                            R9 K7 [","]
       44 GETTABLEKS                       R11 R6 K5 ["id"]
       46 FASTCALL1                        TOSTRING R11 ; [+2]
       47 GETIMPORT                        R10 K9 [tostring]
       49 CALL                             R10 1 1
       50 CONCAT                           R7 R8 R10
       51 SETTABLEKS                       R7 R0 K11 ["HairAccessory"]
       53 JUMP                             ; [+303]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
       57 GETTABLEKS                       R7 R7 K12 ["FaceAccessory"]
       59 GETTABLEKS                       R8 R6 K4 ["assetType"]
       61 GETTABLEKS                       R8 R8 K5 ["id"]
       63 JUMPIFNOTEQ                      R7 R8 ; [+14]
       65 GETTABLEKS                       R8 R0 K12 ["FaceAccessory"]
       67 LOADK                            R9 K7 [","]
       68 GETTABLEKS                       R11 R6 K5 ["id"]
       70 FASTCALL1                        TOSTRING R11 ; [+2]
       71 GETIMPORT                        R10 K9 [tostring]
       73 CALL                             R10 1 1
       74 CONCAT                           R7 R8 R10
       75 SETTABLEKS                       R7 R0 K12 ["FaceAccessory"]
       77 JUMP                             ; [+279]
       78 GETUPVAL                         R7 0
       79 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
       81 GETTABLEKS                       R7 R7 K13 ["Neck"]
       83 GETTABLEKS                       R8 R6 K4 ["assetType"]
       85 GETTABLEKS                       R8 R8 K5 ["id"]
       87 JUMPIFNOTEQ                      R7 R8 ; [+14]
       89 GETTABLEKS                       R8 R0 K14 ["NeckAccessory"]
       91 LOADK                            R9 K7 [","]
       92 GETTABLEKS                       R11 R6 K5 ["id"]
       94 FASTCALL1                        TOSTRING R11 ; [+2]
       95 GETIMPORT                        R10 K9 [tostring]
       97 CALL                             R10 1 1
       98 CONCAT                           R7 R8 R10
       99 SETTABLEKS                       R7 R0 K14 ["NeckAccessory"]
      101 JUMP                             ; [+255]
      102 GETUPVAL                         R7 0
      103 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      105 GETTABLEKS                       R7 R7 K15 ["Shoulder"]
      107 GETTABLEKS                       R8 R6 K4 ["assetType"]
      109 GETTABLEKS                       R8 R8 K5 ["id"]
      111 JUMPIFNOTEQ                      R7 R8 ; [+14]
      113 GETTABLEKS                       R8 R0 K16 ["ShouldersAccessory"]
      115 LOADK                            R9 K7 [","]
      116 GETTABLEKS                       R11 R6 K5 ["id"]
      118 FASTCALL1                        TOSTRING R11 ; [+2]
      119 GETIMPORT                        R10 K9 [tostring]
      121 CALL                             R10 1 1
      122 CONCAT                           R7 R8 R10
      123 SETTABLEKS                       R7 R0 K16 ["ShouldersAccessory"]
      125 JUMP                             ; [+231]
      126 GETUPVAL                         R7 0
      127 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      129 GETTABLEKS                       R7 R7 K17 ["Front"]
      131 GETTABLEKS                       R8 R6 K4 ["assetType"]
      133 GETTABLEKS                       R8 R8 K5 ["id"]
      135 JUMPIFNOTEQ                      R7 R8 ; [+14]
      137 GETTABLEKS                       R8 R0 K18 ["FrontAccessory"]
      139 LOADK                            R9 K7 [","]
      140 GETTABLEKS                       R11 R6 K5 ["id"]
      142 FASTCALL1                        TOSTRING R11 ; [+2]
      143 GETIMPORT                        R10 K9 [tostring]
      145 CALL                             R10 1 1
      146 CONCAT                           R7 R8 R10
      147 SETTABLEKS                       R7 R0 K18 ["FrontAccessory"]
      149 JUMP                             ; [+207]
      150 GETUPVAL                         R7 0
      151 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      153 GETTABLEKS                       R7 R7 K19 ["Back"]
      155 GETTABLEKS                       R8 R6 K4 ["assetType"]
      157 GETTABLEKS                       R8 R8 K5 ["id"]
      159 JUMPIFNOTEQ                      R7 R8 ; [+14]
      161 GETTABLEKS                       R8 R0 K20 ["BackAccessory"]
      163 LOADK                            R9 K7 [","]
      164 GETTABLEKS                       R11 R6 K5 ["id"]
      166 FASTCALL1                        TOSTRING R11 ; [+2]
      167 GETIMPORT                        R10 K9 [tostring]
      169 CALL                             R10 1 1
      170 CONCAT                           R7 R8 R10
      171 SETTABLEKS                       R7 R0 K20 ["BackAccessory"]
      173 JUMP                             ; [+183]
      174 GETUPVAL                         R7 0
      175 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      177 GETTABLEKS                       R7 R7 K21 ["Waist"]
      179 GETTABLEKS                       R8 R6 K4 ["assetType"]
      181 GETTABLEKS                       R8 R8 K5 ["id"]
      183 JUMPIFNOTEQ                      R7 R8 ; [+14]
      185 GETTABLEKS                       R8 R0 K22 ["WaistAccessory"]
      187 LOADK                            R9 K7 [","]
      188 GETTABLEKS                       R11 R6 K5 ["id"]
      190 FASTCALL1                        TOSTRING R11 ; [+2]
      191 GETIMPORT                        R10 K9 [tostring]
      193 CALL                             R10 1 1
      194 CONCAT                           R7 R8 R10
      195 SETTABLEKS                       R7 R0 K22 ["WaistAccessory"]
      197 JUMP                             ; [+159]
      198 GETUPVAL                         R7 0
      199 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      201 GETTABLEKS                       R7 R7 K23 ["Shirt"]
      203 GETTABLEKS                       R8 R6 K4 ["assetType"]
      205 GETTABLEKS                       R8 R8 K5 ["id"]
      207 JUMPIFNOTEQ                      R7 R8 ; [+6]
      209 GETTABLEKS                       R7 R6 K5 ["id"]
      211 SETTABLEKS                       R7 R0 K23 ["Shirt"]
      213 JUMP                             ; [+143]
      214 GETUPVAL                         R7 0
      215 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      217 GETTABLEKS                       R7 R7 K24 ["ShirtGraphic"]
      219 GETTABLEKS                       R8 R6 K4 ["assetType"]
      221 GETTABLEKS                       R8 R8 K5 ["id"]
      223 JUMPIFNOTEQ                      R7 R8 ; [+6]
      225 GETTABLEKS                       R7 R6 K5 ["id"]
      227 SETTABLEKS                       R7 R0 K25 ["GraphicTShirt"]
      229 JUMP                             ; [+127]
      230 GETUPVAL                         R7 0
      231 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      233 GETTABLEKS                       R7 R7 K26 ["Pants"]
      235 GETTABLEKS                       R8 R6 K4 ["assetType"]
      237 GETTABLEKS                       R8 R8 K5 ["id"]
      239 JUMPIFNOTEQ                      R7 R8 ; [+6]
      241 GETTABLEKS                       R7 R6 K5 ["id"]
      243 SETTABLEKS                       R7 R0 K26 ["Pants"]
      245 JUMP                             ; [+111]
      246 GETUPVAL                         R7 0
      247 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      249 GETTABLEKS                       R7 R7 K27 ["Face"]
      251 GETTABLEKS                       R8 R6 K4 ["assetType"]
      253 GETTABLEKS                       R8 R8 K5 ["id"]
      255 JUMPIFNOTEQ                      R7 R8 ; [+6]
      257 GETTABLEKS                       R7 R6 K5 ["id"]
      259 SETTABLEKS                       R7 R0 K27 ["Face"]
      261 JUMP                             ; [+95]
      262 GETUPVAL                         R7 0
      263 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      265 GETTABLEKS                       R7 R7 K28 ["Head"]
      267 GETTABLEKS                       R8 R6 K4 ["assetType"]
      269 GETTABLEKS                       R8 R8 K5 ["id"]
      271 JUMPIFNOTEQ                      R7 R8 ; [+6]
      273 GETTABLEKS                       R7 R6 K5 ["id"]
      275 SETTABLEKS                       R7 R0 K28 ["Head"]
      277 JUMP                             ; [+79]
      278 GETUPVAL                         R7 0
      279 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      281 GETTABLEKS                       R7 R7 K29 ["Torso"]
      283 GETTABLEKS                       R8 R6 K4 ["assetType"]
      285 GETTABLEKS                       R8 R8 K5 ["id"]
      287 JUMPIFNOTEQ                      R7 R8 ; [+6]
      289 GETTABLEKS                       R7 R6 K5 ["id"]
      291 SETTABLEKS                       R7 R0 K29 ["Torso"]
      293 JUMP                             ; [+63]
      294 GETUPVAL                         R7 0
      295 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      297 GETTABLEKS                       R7 R7 K30 ["LeftArm"]
      299 GETTABLEKS                       R8 R6 K4 ["assetType"]
      301 GETTABLEKS                       R8 R8 K5 ["id"]
      303 JUMPIFNOTEQ                      R7 R8 ; [+6]
      305 GETTABLEKS                       R7 R6 K5 ["id"]
      307 SETTABLEKS                       R7 R0 K30 ["LeftArm"]
      309 JUMP                             ; [+47]
      310 GETUPVAL                         R7 0
      311 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      313 GETTABLEKS                       R7 R7 K31 ["RightArm"]
      315 GETTABLEKS                       R8 R6 K4 ["assetType"]
      317 GETTABLEKS                       R8 R8 K5 ["id"]
      319 JUMPIFNOTEQ                      R7 R8 ; [+6]
      321 GETTABLEKS                       R7 R6 K5 ["id"]
      323 SETTABLEKS                       R7 R0 K31 ["RightArm"]
      325 JUMP                             ; [+31]
      326 GETUPVAL                         R7 0
      327 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      329 GETTABLEKS                       R7 R7 K32 ["LeftLeg"]
      331 GETTABLEKS                       R8 R6 K4 ["assetType"]
      333 GETTABLEKS                       R8 R8 K5 ["id"]
      335 JUMPIFNOTEQ                      R7 R8 ; [+6]
      337 GETTABLEKS                       R7 R6 K5 ["id"]
      339 SETTABLEKS                       R7 R0 K32 ["LeftLeg"]
      341 JUMP                             ; [+15]
      342 GETUPVAL                         R7 0
      343 GETTABLEKS                       R7 R7 K2 ["AssetTypes"]
      345 GETTABLEKS                       R7 R7 K33 ["RightLeg"]
      347 GETTABLEKS                       R8 R6 K4 ["assetType"]
      349 GETTABLEKS                       R8 R8 K5 ["id"]
      351 JUMPIFNOTEQ                      R7 R8 ; [+5]
      353 GETTABLEKS                       R7 R6 K5 ["id"]
      355 SETTABLEKS                       R7 R0 K33 ["RightLeg"]
      357 FORGLOOP                         R2 2 [inext] ; [-352]
      359 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+42]
        1 GETTABLEKS                       R2 R1 K0 ["height"]
        3 JUMPIF                           R2 ; [+2]
        4 GETTABLEKS                       R2 R0 K1 ["HeightScale"]
        6 SETTABLEKS                       R2 R0 K1 ["HeightScale"]
        8 GETTABLEKS                       R2 R1 K2 ["width"]
       10 JUMPIF                           R2 ; [+2]
       11 GETTABLEKS                       R2 R0 K3 ["WidthScale"]
       13 SETTABLEKS                       R2 R0 K3 ["WidthScale"]
       15 GETTABLEKS                       R2 R1 K4 ["head"]
       17 JUMPIF                           R2 ; [+2]
       18 GETTABLEKS                       R2 R0 K5 ["HeadScale"]
       20 SETTABLEKS                       R2 R0 K5 ["HeadScale"]
       22 GETTABLEKS                       R2 R1 K6 ["depth"]
       24 JUMPIF                           R2 ; [+2]
       25 GETTABLEKS                       R2 R0 K7 ["DepthScale"]
       27 SETTABLEKS                       R2 R0 K7 ["DepthScale"]
       29 GETTABLEKS                       R2 R1 K8 ["bodyType"]
       31 JUMPIF                           R2 ; [+2]
       32 GETTABLEKS                       R2 R0 K9 ["BodyTypeScale"]
       34 SETTABLEKS                       R2 R0 K9 ["BodyTypeScale"]
       36 GETTABLEKS                       R2 R1 K10 ["proportion"]
       38 JUMPIF                           R2 ; [+2]
       39 GETTABLEKS                       R2 R0 K11 ["ProportionScale"]
       41 SETTABLEKS                       R2 R0 K11 ["ProportionScale"]
       43 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+90]
        1 GETTABLEKS                       R3 R1 K0 ["headColorId"]
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETIMPORT                        R2 K3 [BrickColor.new]
        6 GETTABLEKS                       R3 R1 K0 ["headColorId"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R2 R2 K4 ["Color"]
       11 JUMPIF                           R2 ; [+2]
       12 GETTABLEKS                       R2 R0 K5 ["HeadColor"]
       14 SETTABLEKS                       R2 R0 K5 ["HeadColor"]
       16 GETTABLEKS                       R3 R1 K6 ["torsoColorId"]
       18 JUMPIFNOT                        R3 ; [+8]
       19 GETIMPORT                        R2 K3 [BrickColor.new]
       21 GETTABLEKS                       R3 R1 K6 ["torsoColorId"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R2 R2 K4 ["Color"]
       26 JUMPIF                           R2 ; [+2]
       27 GETTABLEKS                       R2 R0 K7 ["TorsoColor"]
       29 SETTABLEKS                       R2 R0 K7 ["TorsoColor"]
       31 GETTABLEKS                       R3 R1 K8 ["rightArmColorId"]
       33 JUMPIFNOT                        R3 ; [+8]
       34 GETIMPORT                        R2 K3 [BrickColor.new]
       36 GETTABLEKS                       R3 R1 K8 ["rightArmColorId"]
       38 CALL                             R2 1 1
       39 GETTABLEKS                       R2 R2 K4 ["Color"]
       41 JUMPIF                           R2 ; [+2]
       42 GETTABLEKS                       R2 R0 K9 ["RightArmColor"]
       44 SETTABLEKS                       R2 R0 K9 ["RightArmColor"]
       46 GETTABLEKS                       R3 R1 K10 ["leftArmColorId"]
       48 JUMPIFNOT                        R3 ; [+8]
       49 GETIMPORT                        R2 K3 [BrickColor.new]
       51 GETTABLEKS                       R3 R1 K10 ["leftArmColorId"]
       53 CALL                             R2 1 1
       54 GETTABLEKS                       R2 R2 K4 ["Color"]
       56 JUMPIF                           R2 ; [+2]
       57 GETTABLEKS                       R2 R0 K11 ["LeftArmColor"]
       59 SETTABLEKS                       R2 R0 K11 ["LeftArmColor"]
       61 GETTABLEKS                       R3 R1 K12 ["rightLegColorId"]
       63 JUMPIFNOT                        R3 ; [+8]
       64 GETIMPORT                        R2 K3 [BrickColor.new]
       66 GETTABLEKS                       R3 R1 K12 ["rightLegColorId"]
       68 CALL                             R2 1 1
       69 GETTABLEKS                       R2 R2 K4 ["Color"]
       71 JUMPIF                           R2 ; [+2]
       72 GETTABLEKS                       R2 R0 K13 ["RightLegColor"]
       74 SETTABLEKS                       R2 R0 K13 ["RightLegColor"]
       76 GETTABLEKS                       R3 R1 K12 ["rightLegColorId"]
       78 JUMPIFNOT                        R3 ; [+8]
       79 GETIMPORT                        R2 K3 [BrickColor.new]
       81 GETTABLEKS                       R3 R1 K12 ["rightLegColorId"]
       83 CALL                             R2 1 1
       84 GETTABLEKS                       R2 R2 K4 ["Color"]
       86 JUMPIF                           R2 ; [+2]
       87 GETTABLEKS                       R2 R0 K14 ["LeftLegColor"]
       89 SETTABLEKS                       R2 R0 K14 ["LeftLegColor"]
       91 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["HumanoidDescription"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 GETTABLEKS                       R5 R0 K5 ["avatarData"]
        8 GETTABLEKS                       R4 R5 K4 ["assets"]
       10 CALL                             R2 2 0
       11 GETTABLEKS                       R3 R0 K5 ["avatarData"]
       13 GETTABLEKS                       R2 R3 K6 ["scales"]
       15 JUMPIFNOT                        R2 ; [+42]
       16 GETTABLEKS                       R3 R2 K7 ["height"]
       18 JUMPIF                           R3 ; [+2]
       19 GETTABLEKS                       R3 R1 K8 ["HeightScale"]
       21 SETTABLEKS                       R3 R1 K8 ["HeightScale"]
       23 GETTABLEKS                       R3 R2 K9 ["width"]
       25 JUMPIF                           R3 ; [+2]
       26 GETTABLEKS                       R3 R1 K10 ["WidthScale"]
       28 SETTABLEKS                       R3 R1 K10 ["WidthScale"]
       30 GETTABLEKS                       R3 R2 K11 ["head"]
       32 JUMPIF                           R3 ; [+2]
       33 GETTABLEKS                       R3 R1 K12 ["HeadScale"]
       35 SETTABLEKS                       R3 R1 K12 ["HeadScale"]
       37 GETTABLEKS                       R3 R2 K13 ["depth"]
       39 JUMPIF                           R3 ; [+2]
       40 GETTABLEKS                       R3 R1 K14 ["DepthScale"]
       42 SETTABLEKS                       R3 R1 K14 ["DepthScale"]
       44 GETTABLEKS                       R3 R2 K15 ["bodyType"]
       46 JUMPIF                           R3 ; [+2]
       47 GETTABLEKS                       R3 R1 K16 ["BodyTypeScale"]
       49 SETTABLEKS                       R3 R1 K16 ["BodyTypeScale"]
       51 GETTABLEKS                       R3 R2 K17 ["proportion"]
       53 JUMPIF                           R3 ; [+2]
       54 GETTABLEKS                       R3 R1 K18 ["ProportionScale"]
       56 SETTABLEKS                       R3 R1 K18 ["ProportionScale"]
       58 GETUPVAL                         R2 1
       59 MOVE                             R3 R1
       60 GETTABLEKS                       R5 R0 K5 ["avatarData"]
       62 GETTABLEKS                       R4 R5 K19 ["bodyColors"]
       64 CALL                             R2 2 0
       65 RETURN                           R1 1

PROTO_9:
        0 JUMPIFEQKNIL                     R1 ; [+5]
        2 NAMECALL                         R2 R1 K0 ["isRigTypePlayerChoice"]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETTABLEKS                       R2 R0 K1 ["characterManager"]
        8 GETTABLEKS                       R4 R0 K2 ["playerChoiceAvatarType"]
       10 NAMECALL                         R2 R2 K3 ["updateAvatarType"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R2 R0 K1 ["characterManager"]
       16 GETTABLEKS                       R4 R1 K4 ["RigTypeValue"]
       18 NAMECALL                         R2 R2 K3 ["updateAvatarType"]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GetAvatarData"]
        3 CALL                             R0 0 2
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Status"]
        7 GETTABLEKS                       R2 R2 K2 ["OK"]
        9 JUMPIFEQ                         R0 R2 ; [+6]
       11 GETIMPORT                        R2 K4 [warn]
       13 LOADK                            R3 K5 ["Avatar:getAvatarData() failure in AvatarWebAPI:GetAvatarData()"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 JUMPIFNOTEQKNIL                  R1 ; [+5]
       18 GETIMPORT                        R2 K4 [warn]
       20 LOADK                            R3 K6 ["Avatar:getAvatarData() failure in AvatarWebAPI:GetAvatarData() as result avatar data is nil"]
       21 CALL                             R2 1 0
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R2 K6 ["AvatarRigManager"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Networking"]
       18 GETTABLEKS                       R3 R3 K8 ["AvatarWebAPI"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Util"]
       25 GETTABLEKS                       R4 R4 K9 ["ConstantAvatar"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 8 0
       30 SETTABLEKS                       R4 R4 K10 ["__index"]
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 LOADNIL                          R7
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          VAL R4
       37 CAPTURE                          REF R5
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R8 R4 K11 ["loadWithTemplates"]
       42 NEWCLOSURE                       R8 P1
       43 CAPTURE                          REF R7
       44 CAPTURE                          REF R6
       45 SETTABLEKS                       R8 R4 K12 ["applyTemplates"]
       47 DUPCLOSURE                       R8 K13 [PROTO_3]
       48 SETTABLEKS                       R8 R4 K14 ["setPosition"]
       50 DUPCLOSURE                       R8 K15 [PROTO_4]
       51 SETTABLEKS                       R8 R4 K16 ["destroy"]
       53 DUPCLOSURE                       R8 K17 [PROTO_5]
       54 CAPTURE                          VAL R3
       55 DUPCLOSURE                       R9 K18 [PROTO_6]
       56 DUPCLOSURE                       R10 K19 [PROTO_7]
       57 DUPCLOSURE                       R7 K20 [PROTO_8]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R10
       60 DUPCLOSURE                       R6 K21 [PROTO_9]
       61 DUPCLOSURE                       R5 K22 [PROTO_10]
       62 CAPTURE                          VAL R2
       63 CLOSEUPVALS                      R5
       64 RETURN                           R4 1
