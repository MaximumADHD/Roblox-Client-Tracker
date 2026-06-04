PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 MOVE                             R5 R2
        3 JUMPIF                           R5 ; [+3]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["Medium"]
        7 GETTABLE                         R3 R4 R5
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R1
       10 CALL                             R4 1 1
       11 JUMPIF                           R3 ; [+19]
       12 GETIMPORT                        R5 K2 [warn]
       14 LOADK                            R7 K3 ["Unsupported size %* for media type: %*, defaulting to %*"]
       15 MOVE                             R9 R2
       16 MOVE                             R10 R0
       17 GETUPVAL                         R11 1
       18 GETTABLEKS                       R11 R11 K0 ["Medium"]
       20 NAMECALL                         R7 R7 K4 ["format"]
       22 CALL                             R7 4 1
       23 MOVE                             R6 R7
       24 CALL                             R5 1 0
       25 GETUPVAL                         R6 0
       26 GETTABLE                         R5 R6 R0
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K0 ["Medium"]
       30 GETTABLE                         R3 R5 R6
       31 LOADK                            R6 K5 ["rbxthumb://type=%*&id=%*&w=%*&h=%*"]
       32 MOVE                             R8 R0
       33 MOVE                             R9 R4
       34 GETTABLEKS                       R10 R3 K6 ["X"]
       36 GETTABLEKS                       R11 R3 K7 ["Y"]
       38 NAMECALL                         R6 R6 K4 ["format"]
       40 CALL                             R6 5 1
       41 MOVE                             R5 R6
       42 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["ThumbnailType"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["ThumbnailSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Utility"]
       25 GETTABLEKS                       R4 R4 K10 ["getAssetIdAsNumeric"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 16 0
       30 GETTABLEKS                       R5 R1 K11 ["Asset"]
       32 NEWTABLE                         R6 2 0
       34 GETTABLEKS                       R7 R2 K12 ["Medium"]
       36 GETIMPORT                        R8 K15 [Vector2.new]
       38 LOADN                            R9 150
       39 LOADN                            R10 150
       40 CALL                             R8 2 1
       41 SETTABLE                         R8 R6 R7
       42 GETTABLEKS                       R7 R2 K16 ["Large"]
       44 GETIMPORT                        R8 K15 [Vector2.new]
       46 LOADN                            R9 164
       47 LOADN                            R10 164
       48 CALL                             R8 2 1
       49 SETTABLE                         R8 R6 R7
       50 SETTABLE                         R6 R4 R5
       51 GETTABLEKS                       R5 R1 K17 ["Avatar"]
       53 NEWTABLE                         R6 4 0
       55 GETTABLEKS                       R7 R2 K18 ["Small"]
       57 GETIMPORT                        R8 K15 [Vector2.new]
       59 LOADN                            R9 48
       60 LOADN                            R10 48
       61 CALL                             R8 2 1
       62 SETTABLE                         R8 R6 R7
       63 GETTABLEKS                       R7 R2 K12 ["Medium"]
       65 GETIMPORT                        R8 K15 [Vector2.new]
       67 LOADN                            R9 150
       68 LOADN                            R10 150
       69 CALL                             R8 2 1
       70 SETTABLE                         R8 R6 R7
       71 GETTABLEKS                       R7 R2 K16 ["Large"]
       73 GETIMPORT                        R8 K15 [Vector2.new]
       75 LOADN                            R9 164
       76 LOADN                            R10 164
       77 CALL                             R8 2 1
       78 SETTABLE                         R8 R6 R7
       79 GETTABLEKS                       R7 R2 K19 ["XLarge"]
       81 GETIMPORT                        R8 K15 [Vector2.new]
       83 LOADN                            R9 208
       84 LOADN                            R10 208
       85 CALL                             R8 2 1
       86 SETTABLE                         R8 R6 R7
       87 SETTABLE                         R6 R4 R5
       88 GETTABLEKS                       R5 R1 K20 ["AvatarBust"]
       90 NEWTABLE                         R6 4 0
       92 GETTABLEKS                       R7 R2 K18 ["Small"]
       94 GETIMPORT                        R8 K15 [Vector2.new]
       96 LOADN                            R9 50
       97 LOADN                            R10 50
       98 CALL                             R8 2 1
       99 SETTABLE                         R8 R6 R7
      100 GETTABLEKS                       R7 R2 K12 ["Medium"]
      102 GETIMPORT                        R8 K15 [Vector2.new]
      104 LOADN                            R9 150
      105 LOADN                            R10 150
      106 CALL                             R8 2 1
      107 SETTABLE                         R8 R6 R7
      108 GETTABLEKS                       R7 R2 K16 ["Large"]
      110 GETIMPORT                        R8 K15 [Vector2.new]
      112 LOADN                            R9 164
      113 LOADN                            R10 164
      114 CALL                             R8 2 1
      115 SETTABLE                         R8 R6 R7
      116 SETTABLE                         R6 R4 R5
      117 GETTABLEKS                       R5 R1 K21 ["AvatarHeadShot"]
      119 NEWTABLE                         R6 4 0
      121 GETTABLEKS                       R7 R2 K18 ["Small"]
      123 GETIMPORT                        R8 K15 [Vector2.new]
      125 LOADN                            R9 48
      126 LOADN                            R10 48
      127 CALL                             R8 2 1
      128 SETTABLE                         R8 R6 R7
      129 GETTABLEKS                       R7 R2 K12 ["Medium"]
      131 GETIMPORT                        R8 K15 [Vector2.new]
      133 LOADN                            R9 150
      134 LOADN                            R10 150
      135 CALL                             R8 2 1
      136 SETTABLE                         R8 R6 R7
      137 GETTABLEKS                       R7 R2 K16 ["Large"]
      139 GETIMPORT                        R8 K15 [Vector2.new]
      141 LOADN                            R9 164
      142 LOADN                            R10 164
      143 CALL                             R8 2 1
      144 SETTABLE                         R8 R6 R7
      145 SETTABLE                         R6 R4 R5
      146 GETTABLEKS                       R5 R1 K22 ["BadgeIcon"]
      148 NEWTABLE                         R6 1 0
      150 GETTABLEKS                       R7 R2 K12 ["Medium"]
      152 GETIMPORT                        R8 K15 [Vector2.new]
      154 LOADN                            R9 150
      155 LOADN                            R10 150
      156 CALL                             R8 2 1
      157 SETTABLE                         R8 R6 R7
      158 SETTABLE                         R6 R4 R5
      159 GETTABLEKS                       R5 R1 K23 ["BundleThumbnail"]
      161 NEWTABLE                         R6 2 0
      163 GETTABLEKS                       R7 R2 K12 ["Medium"]
      165 GETIMPORT                        R8 K15 [Vector2.new]
      167 LOADN                            R9 150
      168 LOADN                            R10 150
      169 CALL                             R8 2 1
      170 SETTABLE                         R8 R6 R7
      171 GETTABLEKS                       R7 R2 K16 ["Large"]
      173 GETIMPORT                        R8 K15 [Vector2.new]
      175 LOADN                            R9 164
      176 LOADN                            R10 164
      177 CALL                             R8 2 1
      178 SETTABLE                         R8 R6 R7
      179 SETTABLE                         R6 R4 R5
      180 GETTABLEKS                       R5 R1 K24 ["FontFamily"]
      182 NEWTABLE                         R6 1 0
      184 GETTABLEKS                       R7 R2 K12 ["Medium"]
      186 GETIMPORT                        R8 K15 [Vector2.new]
      188 LOADN                            R9 176
      189 LOADN                            R10 80
      190 CALL                             R8 2 1
      191 SETTABLE                         R8 R6 R7
      192 SETTABLE                         R6 R4 R5
      193 GETTABLEKS                       R5 R1 K25 ["GameIcon"]
      195 NEWTABLE                         R6 2 0
      197 GETTABLEKS                       R7 R2 K18 ["Small"]
      199 GETIMPORT                        R8 K15 [Vector2.new]
      201 LOADN                            R9 50
      202 LOADN                            R10 50
      203 CALL                             R8 2 1
      204 SETTABLE                         R8 R6 R7
      205 GETTABLEKS                       R7 R2 K12 ["Medium"]
      207 GETIMPORT                        R8 K15 [Vector2.new]
      209 LOADN                            R9 150
      210 LOADN                            R10 150
      211 CALL                             R8 2 1
      212 SETTABLE                         R8 R6 R7
      213 SETTABLE                         R6 R4 R5
      214 GETTABLEKS                       R5 R1 K26 ["GamePass"]
      216 NEWTABLE                         R6 1 0
      218 GETTABLEKS                       R7 R2 K12 ["Medium"]
      220 GETIMPORT                        R8 K15 [Vector2.new]
      222 LOADN                            R9 150
      223 LOADN                            R10 150
      224 CALL                             R8 2 1
      225 SETTABLE                         R8 R6 R7
      226 SETTABLE                         R6 R4 R5
      227 GETTABLEKS                       R5 R1 K27 ["GameThumbnail"]
      229 NEWTABLE                         R6 4 0
      231 GETTABLEKS                       R7 R2 K18 ["Small"]
      233 GETIMPORT                        R8 K15 [Vector2.new]
      235 LOADN                            R9 0
      236 LOADN                            R10 144
      237 CALL                             R8 2 1
      238 SETTABLE                         R8 R6 R7
      239 GETTABLEKS                       R7 R2 K12 ["Medium"]
      241 GETIMPORT                        R8 K15 [Vector2.new]
      243 LOADN                            R9 128
      244 LOADN                            R10 216
      245 CALL                             R8 2 1
      246 SETTABLE                         R8 R6 R7
      247 GETTABLEKS                       R7 R2 K16 ["Large"]
      249 GETIMPORT                        R8 K15 [Vector2.new]
      251 LOADN                            R9 224
      252 LOADN                            R10 14
      253 CALL                             R8 2 1
      254 SETTABLE                         R8 R6 R7
      255 GETTABLEKS                       R7 R2 K19 ["XLarge"]
      257 GETIMPORT                        R8 K15 [Vector2.new]
      259 LOADN                            R9 0
      260 LOADN                            R10 176
      261 CALL                             R8 2 1
      262 SETTABLE                         R8 R6 R7
      263 SETTABLE                         R6 R4 R5
      264 GETTABLEKS                       R5 R1 K28 ["GroupIcon"]
      266 NEWTABLE                         R6 2 0
      268 GETTABLEKS                       R7 R2 K12 ["Medium"]
      270 GETIMPORT                        R8 K15 [Vector2.new]
      272 LOADN                            R9 150
      273 LOADN                            R10 150
      274 CALL                             R8 2 1
      275 SETTABLE                         R8 R6 R7
      276 GETTABLEKS                       R7 R2 K16 ["Large"]
      278 GETIMPORT                        R8 K15 [Vector2.new]
      280 LOADN                            R9 164
      281 LOADN                            R10 164
      282 CALL                             R8 2 1
      283 SETTABLE                         R8 R6 R7
      284 SETTABLE                         R6 R4 R5
      285 GETTABLEKS                       R5 R1 K29 ["Outfit"]
      287 NEWTABLE                         R6 2 0
      289 GETTABLEKS                       R7 R2 K12 ["Medium"]
      291 GETIMPORT                        R8 K15 [Vector2.new]
      293 LOADN                            R9 150
      294 LOADN                            R10 150
      295 CALL                             R8 2 1
      296 SETTABLE                         R8 R6 R7
      297 GETTABLEKS                       R7 R2 K16 ["Large"]
      299 GETIMPORT                        R8 K15 [Vector2.new]
      301 LOADN                            R9 164
      302 LOADN                            R10 164
      303 CALL                             R8 2 1
      304 SETTABLE                         R8 R6 R7
      305 SETTABLE                         R6 R4 R5
      306 DUPCLOSURE                       R5 K30 [PROTO_0]
      307 CAPTURE                          VAL R4
      308 CAPTURE                          VAL R2
      309 CAPTURE                          VAL R3
      310 RETURN                           R5 1
