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
        3 LOADK                            R2 K2 ["CreatorInventoryApi"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Assistant"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K5 ["Packages"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R2 K8 ["HttpWrapper"]
       17 CALL                             R3 1 1
       18 NEWTABLE                         R4 0 75
       20 LOADK                            R5 K9 ["ASSET_TYPE_INVALID"]
       21 LOADK                            R6 K10 ["ASSET_TYPE_IMAGE"]
       22 LOADK                            R7 K11 ["ASSET_TYPE_TSHIRT"]
       23 LOADK                            R8 K12 ["ASSET_TYPE_AUDIO"]
       24 LOADK                            R9 K13 ["ASSET_TYPE_MESH"]
       25 LOADK                            R10 K14 ["ASSET_TYPE_LUA"]
       26 LOADK                            R11 K15 ["ASSET_TYPE_HTML"]
       27 LOADK                            R12 K16 ["ASSET_TYPE_TEXT"]
       28 LOADK                            R13 K17 ["ASSET_TYPE_HAT"]
       29 LOADK                            R14 K18 ["ASSET_TYPE_PLACE"]
       30 LOADK                            R15 K19 ["ASSET_TYPE_MODEL"]
       31 LOADK                            R16 K20 ["ASSET_TYPE_SHIRT"]
       32 LOADK                            R17 K21 ["ASSET_TYPE_PANTS"]
       33 LOADK                            R18 K22 ["ASSET_TYPE_DECAL"]
       34 LOADK                            R19 K23 ["ASSET_TYPE_AVATAR"]
       35 LOADK                            R20 K24 ["ASSET_TYPE_HEAD"]
       36 SETLIST                          R4 R5 16 [1]
       38 LOADK                            R5 K25 ["ASSET_TYPE_FACE"]
       39 LOADK                            R6 K26 ["ASSET_TYPE_GEAR"]
       40 LOADK                            R7 K27 ["ASSET_TYPE_BADGE"]
       41 LOADK                            R8 K28 ["ASSET_TYPE_GROUP_EMBLEM"]
       42 LOADK                            R9 K29 ["ASSET_TYPE_ANIMATION"]
       43 LOADK                            R10 K30 ["ASSET_TYPE_ARMS"]
       44 LOADK                            R11 K31 ["ASSET_TYPE_LEGS"]
       45 LOADK                            R12 K32 ["ASSET_TYPE_TORSO"]
       46 LOADK                            R13 K33 ["ASSET_TYPE_RIGHT_ARM"]
       47 LOADK                            R14 K34 ["ASSET_TYPE_LEFT_ARM"]
       48 LOADK                            R15 K35 ["ASSET_TYPE_LEFT_LEG"]
       49 LOADK                            R16 K36 ["ASSET_TYPE_RIGHT_LEG"]
       50 LOADK                            R17 K37 ["ASSET_TYPE_PACKAGE"]
       51 LOADK                            R18 K38 ["ASSET_TYPE_YOUTUBE_VIDEO"]
       52 LOADK                            R19 K39 ["ASSET_TYPE_GAME_PASS"]
       53 LOADK                            R20 K40 ["ASSET_TYPE_APP"]
       54 SETLIST                          R4 R5 16 [17]
       56 LOADK                            R5 K41 ["ASSET_TYPE_CODE"]
       57 LOADK                            R6 K42 ["ASSET_TYPE_PLUGIN"]
       58 LOADK                            R7 K43 ["ASSET_TYPE_SOLID_MODEL"]
       59 LOADK                            R8 K44 ["ASSET_TYPE_MESH_PART"]
       60 LOADK                            R9 K45 ["ASSET_TYPE_HAIR_ACCESSORY"]
       61 LOADK                            R10 K46 ["ASSET_TYPE_FACE_ACCESSORY"]
       62 LOADK                            R11 K47 ["ASSET_TYPE_NECK_ACCESSORY"]
       63 LOADK                            R12 K48 ["ASSET_TYPE_SHOULDER_ACCESSORY"]
       64 LOADK                            R13 K49 ["ASSET_TYPE_FRONT_ACCESSORY"]
       65 LOADK                            R14 K50 ["ASSET_TYPE_BACK_ACCESSORY"]
       66 LOADK                            R15 K51 ["ASSET_TYPE_WAIST_ACCESSORY"]
       67 LOADK                            R16 K52 ["ASSET_TYPE_CLIMB_ANIMATION"]
       68 LOADK                            R17 K53 ["ASSET_TYPE_DEATH_ANIMATION"]
       69 LOADK                            R18 K54 ["ASSET_TYPE_FALL_ANIMATION"]
       70 LOADK                            R19 K55 ["ASSET_TYPE_IDLE_ANIMATION"]
       71 LOADK                            R20 K56 ["ASSET_TYPE_JUMP_ANIMATION"]
       72 SETLIST                          R4 R5 16 [33]
       74 LOADK                            R5 K57 ["ASSET_TYPE_RUN_ANIMATION"]
       75 LOADK                            R6 K58 ["ASSET_TYPE_SWIM_ANIMATION"]
       76 LOADK                            R7 K59 ["ASSET_TYPE_WALK_ANIMATION"]
       77 LOADK                            R8 K60 ["ASSET_TYPE_POSE_ANIMATION"]
       78 LOADK                            R9 K61 ["ASSET_TYPE_LOCALIZATION_TABLE_MANIFEST"]
       79 LOADK                            R10 K62 ["ASSET_TYPE_LOCALIZATION_TABLE_TRANSLATION"]
       80 LOADK                            R11 K63 ["ASSET_TYPE_EMOTE_ANIMATION"]
       81 LOADK                            R12 K64 ["ASSET_TYPE_VIDEO"]
       82 LOADK                            R13 K65 ["ASSET_TYPE_TEXTURE_PACK"]
       83 LOADK                            R14 K66 ["ASSET_TYPE_TSHIRT_ACCESSORY"]
       84 LOADK                            R15 K67 ["ASSET_TYPE_SHIRT_ACCESSORY"]
       85 LOADK                            R16 K68 ["ASSET_TYPE_PANTS_ACCESSORY"]
       86 LOADK                            R17 K69 ["ASSET_TYPE_JACKET_ACCESSORY"]
       87 LOADK                            R18 K70 ["ASSET_TYPE_SWEATER_ACCESSORY"]
       88 LOADK                            R19 K71 ["ASSET_TYPE_SHORTS_ACCESSORY"]
       89 LOADK                            R20 K72 ["ASSET_TYPE_LEFT_SHOE_ACCESSORY"]
       90 SETLIST                          R4 R5 16 [49]
       92 LOADK                            R5 K73 ["ASSET_TYPE_RIGHT_SHOE_ACCESSORY"]
       93 LOADK                            R6 K74 ["ASSET_TYPE_DRESS_SKIRT_ACCESSORY"]
       94 LOADK                            R7 K75 ["ASSET_TYPE_FONT_FAMILY"]
       95 LOADK                            R8 K76 ["ASSET_TYPE_FONT_FACE"]
       96 LOADK                            R9 K77 ["ASSET_TYPE_MESH_HIDDEN_SURFACE_REMOVAL"]
       97 LOADK                            R10 K78 ["ASSET_TYPE_EYEBROW_ACCESSORY"]
       98 LOADK                            R11 K79 ["ASSET_TYPE_EYELASH_ACCESSORY"]
       99 LOADK                            R12 K80 ["ASSET_TYPE_MOOD_ANIMATION"]
      100 LOADK                            R13 K81 ["ASSET_TYPE_DYNAMIC_HEAD"]
      101 LOADK                            R14 K82 ["ASSET_TYPE_CODE_SNIPPET"]
      102 LOADK                            R15 K83 ["ASSET_TYPE_ADS_VIDEO"]
      103 SETLIST                          R4 R5 11 [65]
      105 DUPCLOSURE                       R5 K84 [PROTO_0]
      106 CAPTURE                          VAL R4
      107 DUPCLOSURE                       R6 K85 [PROTO_1]
      108 GETIMPORT                        R7 K88 [table.freeze]
      110 DUPTABLE                         R8 K91 [{"fromResponse", "toRequest"}]
      111 SETTABLEKS                       R5 R8 K89 ["fromResponse"]
      113 SETTABLEKS                       R6 R8 K90 ["toRequest"]
      115 CALL                             R7 1 1
      116 RETURN                           R7 1
