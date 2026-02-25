PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 FASTCALL1                        TYPEOF R6 ; [+3]
        6 MOVE                             R8 R6
        7 GETIMPORT                        R7 K3 [typeof]
        9 CALL                             R7 1 1
       10 JUMPIFNOTEQKS                    R7 K4 ["table"] ; [+6]
       12 GETUPVAL                         R7 0
       13 MOVE                             R8 R6
       14 MOVE                             R9 R1
       15 CALL                             R7 2 0
       16 JUMP                             ; [+4]
       17 MOVE                             R7 R1
       18 MOVE                             R8 R6
       19 CALL                             R7 1 1
       20 SETTABLE                         R7 R0 R5
       21 FORGLOOP                         R2 2 ; [-17]
       23 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R2 K0 ["rbxasset://textures/AvatarImporter/"]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K12 [{"BUTTON_AVATAR_TYPE", "BUTTON_AVATAR_TYPE_BORDER", "PLUGIN_ICON", "ERROR_ICON", "BACKGROUND_IMAGE", "HEADER_IMAGE", "DEPRECATED_BUTTON_ICON", "BUTTON_CLOSE", "RTHRO", "RTHRO_NARROW", "R15", "CUSTOM"}]
        2 LOADK                            R1 K13 ["button_avatarType.png"]
        3 SETTABLEKS                       R1 R0 K0 ["BUTTON_AVATAR_TYPE"]
        5 LOADK                            R1 K14 ["button_avatarType_border.png"]
        6 SETTABLEKS                       R1 R0 K1 ["BUTTON_AVATAR_TYPE_BORDER"]
        8 LOADK                            R1 K15 ["icon_AvatarImporter.png"]
        9 SETTABLEKS                       R1 R0 K2 ["PLUGIN_ICON"]
       11 LOADK                            R1 K16 ["icon_error.png"]
       12 SETTABLEKS                       R1 R0 K3 ["ERROR_ICON"]
       14 LOADK                            R1 K17 ["img_window_BG.png"]
       15 SETTABLEKS                       R1 R0 K4 ["BACKGROUND_IMAGE"]
       17 LOADK                            R1 K18 ["img_window_header.png"]
       18 SETTABLEKS                       R1 R0 K5 ["HEADER_IMAGE"]
       20 LOADK                            R1 K15 ["icon_AvatarImporter.png"]
       21 SETTABLEKS                       R1 R0 K6 ["DEPRECATED_BUTTON_ICON"]
       23 LOADK                            R1 K19 ["button_close.png"]
       24 SETTABLEKS                       R1 R0 K7 ["BUTTON_CLOSE"]
       26 DUPTABLE                         R1 K22 [{"Light", "Dark"}]
       27 LOADK                            R2 K23 ["img_light_Rthro.png"]
       28 SETTABLEKS                       R2 R1 K20 ["Light"]
       30 LOADK                            R2 K24 ["img_dark_Rthro.png"]
       31 SETTABLEKS                       R2 R1 K21 ["Dark"]
       33 SETTABLEKS                       R1 R0 K8 ["RTHRO"]
       35 DUPTABLE                         R1 K22 [{"Light", "Dark"}]
       36 LOADK                            R2 K25 ["img_light_RthroNarrow.png"]
       37 SETTABLEKS                       R2 R1 K20 ["Light"]
       39 LOADK                            R2 K26 ["img_dark_RthroNarrow.png"]
       40 SETTABLEKS                       R2 R1 K21 ["Dark"]
       42 SETTABLEKS                       R1 R0 K9 ["RTHRO_NARROW"]
       44 DUPTABLE                         R1 K22 [{"Light", "Dark"}]
       45 LOADK                            R2 K27 ["img_light_R15.png"]
       46 SETTABLEKS                       R2 R1 K20 ["Light"]
       48 LOADK                            R2 K28 ["img_dark_R15.png"]
       49 SETTABLEKS                       R2 R1 K21 ["Dark"]
       51 SETTABLEKS                       R1 R0 K10 ["R15"]
       53 DUPTABLE                         R1 K22 [{"Light", "Dark"}]
       54 LOADK                            R2 K29 ["img_light_custom.png"]
       55 SETTABLEKS                       R2 R1 K20 ["Light"]
       57 LOADK                            R2 K30 ["img_dark_custom.png"]
       58 SETTABLEKS                       R2 R1 K21 ["Dark"]
       60 SETTABLEKS                       R1 R0 K11 ["CUSTOM"]
       62 DUPCLOSURE                       R1 K31 [PROTO_0]
       63 CAPTURE                          VAL R1
       64 MOVE                             R2 R1
       65 MOVE                             R3 R0
       66 DUPCLOSURE                       R4 K32 [PROTO_1]
       67 CALL                             R2 2 0
       68 RETURN                           R0 1
