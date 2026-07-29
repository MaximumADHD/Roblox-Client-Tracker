PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+19]
        7 LOADK                            R6 K3 ["%*Expected underlying value to be a string, got %*"]
        8 MOVE                             R8 R2
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R10 R0
       11 GETIMPORT                        R9 K1 [typeof]
       13 CALL                             R9 1 1
       14 NAMECALL                         R6 R6 K4 ["format"]
       16 CALL                             R6 3 1
       17 MOVE                             R5 R6
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K7 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R0 1
       25 GETIMPORT                        R3 K9 [table.find]
       27 GETUPVAL                         R4 0
       28 MOVE                             R5 R0
       29 CALL                             R3 2 1
       30 JUMPIFNOTEQKNIL                  R3 ; [+19]
       32 LOADK                            R6 K10 ["%*Expected one of: %*, got %*"]
       33 MOVE                             R8 R2
       34 GETIMPORT                        R9 K12 [table.concat]
       36 GETUPVAL                         R10 0
       37 LOADK                            R11 K13 [", "]
       38 CALL                             R9 2 1
       39 MOVE                             R10 R0
       40 NAMECALL                         R6 R6 K4 ["format"]
       42 CALL                             R6 4 1
       43 MOVE                             R5 R6
       44 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       46 MOVE                             R4 R1
       47 GETIMPORT                        R3 K7 [table.insert]
       49 CALL                             R3 2 0
       50 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["OpenApiCreatorInventoryApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 0 75
       16 LOADK                            R4 K8 ["ASSET_TYPE_INVALID"]
       17 LOADK                            R5 K9 ["ASSET_TYPE_IMAGE"]
       18 LOADK                            R6 K10 ["ASSET_TYPE_TSHIRT"]
       19 LOADK                            R7 K11 ["ASSET_TYPE_AUDIO"]
       20 LOADK                            R8 K12 ["ASSET_TYPE_MESH"]
       21 LOADK                            R9 K13 ["ASSET_TYPE_LUA"]
       22 LOADK                            R10 K14 ["ASSET_TYPE_HTML"]
       23 LOADK                            R11 K15 ["ASSET_TYPE_TEXT"]
       24 LOADK                            R12 K16 ["ASSET_TYPE_HAT"]
       25 LOADK                            R13 K17 ["ASSET_TYPE_PLACE"]
       26 LOADK                            R14 K18 ["ASSET_TYPE_MODEL"]
       27 LOADK                            R15 K19 ["ASSET_TYPE_SHIRT"]
       28 LOADK                            R16 K20 ["ASSET_TYPE_PANTS"]
       29 LOADK                            R17 K21 ["ASSET_TYPE_DECAL"]
       30 LOADK                            R18 K22 ["ASSET_TYPE_AVATAR"]
       31 LOADK                            R19 K23 ["ASSET_TYPE_HEAD"]
       32 SETLIST                          R3 R4 16 [1]
       34 LOADK                            R4 K24 ["ASSET_TYPE_FACE"]
       35 LOADK                            R5 K25 ["ASSET_TYPE_GEAR"]
       36 LOADK                            R6 K26 ["ASSET_TYPE_BADGE"]
       37 LOADK                            R7 K27 ["ASSET_TYPE_GROUP_EMBLEM"]
       38 LOADK                            R8 K28 ["ASSET_TYPE_ANIMATION"]
       39 LOADK                            R9 K29 ["ASSET_TYPE_ARMS"]
       40 LOADK                            R10 K30 ["ASSET_TYPE_LEGS"]
       41 LOADK                            R11 K31 ["ASSET_TYPE_TORSO"]
       42 LOADK                            R12 K32 ["ASSET_TYPE_RIGHT_ARM"]
       43 LOADK                            R13 K33 ["ASSET_TYPE_LEFT_ARM"]
       44 LOADK                            R14 K34 ["ASSET_TYPE_LEFT_LEG"]
       45 LOADK                            R15 K35 ["ASSET_TYPE_RIGHT_LEG"]
       46 LOADK                            R16 K36 ["ASSET_TYPE_PACKAGE"]
       47 LOADK                            R17 K37 ["ASSET_TYPE_YOUTUBE_VIDEO"]
       48 LOADK                            R18 K38 ["ASSET_TYPE_GAME_PASS"]
       49 LOADK                            R19 K39 ["ASSET_TYPE_APP"]
       50 SETLIST                          R3 R4 16 [17]
       52 LOADK                            R4 K40 ["ASSET_TYPE_CODE"]
       53 LOADK                            R5 K41 ["ASSET_TYPE_PLUGIN"]
       54 LOADK                            R6 K42 ["ASSET_TYPE_SOLID_MODEL"]
       55 LOADK                            R7 K43 ["ASSET_TYPE_MESH_PART"]
       56 LOADK                            R8 K44 ["ASSET_TYPE_HAIR_ACCESSORY"]
       57 LOADK                            R9 K45 ["ASSET_TYPE_FACE_ACCESSORY"]
       58 LOADK                            R10 K46 ["ASSET_TYPE_NECK_ACCESSORY"]
       59 LOADK                            R11 K47 ["ASSET_TYPE_SHOULDER_ACCESSORY"]
       60 LOADK                            R12 K48 ["ASSET_TYPE_FRONT_ACCESSORY"]
       61 LOADK                            R13 K49 ["ASSET_TYPE_BACK_ACCESSORY"]
       62 LOADK                            R14 K50 ["ASSET_TYPE_WAIST_ACCESSORY"]
       63 LOADK                            R15 K51 ["ASSET_TYPE_CLIMB_ANIMATION"]
       64 LOADK                            R16 K52 ["ASSET_TYPE_DEATH_ANIMATION"]
       65 LOADK                            R17 K53 ["ASSET_TYPE_FALL_ANIMATION"]
       66 LOADK                            R18 K54 ["ASSET_TYPE_IDLE_ANIMATION"]
       67 LOADK                            R19 K55 ["ASSET_TYPE_JUMP_ANIMATION"]
       68 SETLIST                          R3 R4 16 [33]
       70 LOADK                            R4 K56 ["ASSET_TYPE_RUN_ANIMATION"]
       71 LOADK                            R5 K57 ["ASSET_TYPE_SWIM_ANIMATION"]
       72 LOADK                            R6 K58 ["ASSET_TYPE_WALK_ANIMATION"]
       73 LOADK                            R7 K59 ["ASSET_TYPE_POSE_ANIMATION"]
       74 LOADK                            R8 K60 ["ASSET_TYPE_LOCALIZATION_TABLE_MANIFEST"]
       75 LOADK                            R9 K61 ["ASSET_TYPE_LOCALIZATION_TABLE_TRANSLATION"]
       76 LOADK                            R10 K62 ["ASSET_TYPE_EMOTE_ANIMATION"]
       77 LOADK                            R11 K63 ["ASSET_TYPE_VIDEO"]
       78 LOADK                            R12 K64 ["ASSET_TYPE_TEXTURE_PACK"]
       79 LOADK                            R13 K65 ["ASSET_TYPE_TSHIRT_ACCESSORY"]
       80 LOADK                            R14 K66 ["ASSET_TYPE_SHIRT_ACCESSORY"]
       81 LOADK                            R15 K67 ["ASSET_TYPE_PANTS_ACCESSORY"]
       82 LOADK                            R16 K68 ["ASSET_TYPE_JACKET_ACCESSORY"]
       83 LOADK                            R17 K69 ["ASSET_TYPE_SWEATER_ACCESSORY"]
       84 LOADK                            R18 K70 ["ASSET_TYPE_SHORTS_ACCESSORY"]
       85 LOADK                            R19 K71 ["ASSET_TYPE_LEFT_SHOE_ACCESSORY"]
       86 SETLIST                          R3 R4 16 [49]
       88 LOADK                            R4 K72 ["ASSET_TYPE_RIGHT_SHOE_ACCESSORY"]
       89 LOADK                            R5 K73 ["ASSET_TYPE_DRESS_SKIRT_ACCESSORY"]
       90 LOADK                            R6 K74 ["ASSET_TYPE_FONT_FAMILY"]
       91 LOADK                            R7 K75 ["ASSET_TYPE_FONT_FACE"]
       92 LOADK                            R8 K76 ["ASSET_TYPE_MESH_HIDDEN_SURFACE_REMOVAL"]
       93 LOADK                            R9 K77 ["ASSET_TYPE_EYEBROW_ACCESSORY"]
       94 LOADK                            R10 K78 ["ASSET_TYPE_EYELASH_ACCESSORY"]
       95 LOADK                            R11 K79 ["ASSET_TYPE_MOOD_ANIMATION"]
       96 LOADK                            R12 K80 ["ASSET_TYPE_DYNAMIC_HEAD"]
       97 LOADK                            R13 K81 ["ASSET_TYPE_CODE_SNIPPET"]
       98 LOADK                            R14 K82 ["ASSET_TYPE_ADS_VIDEO"]
       99 SETLIST                          R3 R4 11 [65]
      101 DUPCLOSURE                       R4 K83 [PROTO_0]
      102 CAPTURE                          VAL R3
      103 DUPCLOSURE                       R5 K84 [PROTO_1]
      104 GETIMPORT                        R6 K87 [table.freeze]
      106 DUPTABLE                         R7 K90 [{"fromResponse", "toRequest"}]
      107 SETTABLEKS                       R4 R7 K88 ["fromResponse"]
      109 SETTABLEKS                       R5 R7 K89 ["toRequest"]
      111 CALL                             R6 1 1
      112 RETURN                           R6 1
