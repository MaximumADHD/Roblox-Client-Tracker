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
        1 DUPTABLE                         R0 K19 [{[1] = "button_avatarType.png", ["BUTTON_AVATAR_TYPE_BORDER"] = "button_avatarType_border.png", ["PLUGIN_ICON"] = "icon_AvatarImporter.png", ["ERROR_ICON"] = "icon_error.png", ["BACKGROUND_IMAGE"] = "img_window_BG.png", ["HEADER_IMAGE"] = "img_window_header.png", ["DEPRECATED_BUTTON_ICON"] = "icon_AvatarImporter.png", ["BUTTON_CLOSE"] = "button_close.png", ["RTHRO"], ["RTHRO_NARROW"], ["R15"], ["CUSTOM"]}]
        2 DUPTABLE                         R1 K24 [{["Light"] = "img_light_Rthro.png", ["Dark"] = "img_dark_Rthro.png"}]
        3 SETTABLEKS                       R1 R0 K15 ["RTHRO"]
        5 DUPTABLE                         R1 K27 [{["Light"] = "img_light_RthroNarrow.png", ["Dark"] = "img_dark_RthroNarrow.png"}]
        6 SETTABLEKS                       R1 R0 K16 ["RTHRO_NARROW"]
        8 DUPTABLE                         R1 K30 [{["Light"] = "img_light_R15.png", ["Dark"] = "img_dark_R15.png"}]
        9 SETTABLEKS                       R1 R0 K17 ["R15"]
       11 DUPTABLE                         R1 K33 [{["Light"] = "img_light_custom.png", ["Dark"] = "img_dark_custom.png"}]
       12 SETTABLEKS                       R1 R0 K18 ["CUSTOM"]
       14 DUPCLOSURE                       R1 K34 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 MOVE                             R2 R1
       17 MOVE                             R3 R0
       18 DUPCLOSURE                       R4 K35 [PROTO_1]
       19 CALL                             R2 2 0
       20 RETURN                           R0 1
