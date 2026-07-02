PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["attachmentName cannot be nil"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 DUPTABLE                         R1 K6 [{["ClassName"] = "Accessory", ["_children"]}]
        8 NEWTABLE                         R2 0 2
       10 DUPTABLE                         R3 K12 [{["Name"] = "ThumbnailConfiguration", ["ClassName"] = "Configuration", ["_optional"] = True, ["_children"]}]
       11 NEWTABLE                         R4 0 1
       13 DUPTABLE                         R5 K15 [{["Name"] = "SkinColorValue", ["ClassName"] = "Color3Value"}]
       14 SETLIST                          R4 R5 1 [1]
       16 SETTABLEKS                       R4 R3 K5 ["_children"]
       18 DUPTABLE                         R4 K18 [{["Name"] = "Handle", ["ClassName"] = "MeshPart", ["_children"]}]
       19 NEWTABLE                         R5 0 5
       21 DUPTABLE                         R6 K20 [{["Name"], ["ClassName"] = "Attachment"}]
       22 SETTABLEKS                       R0 R6 K7 ["Name"]
       24 DUPTABLE                         R7 K22 [{["ClassName"] = "WrapLayer"}]
       25 DUPTABLE                         R8 K24 [{["ClassName"] = "SurfaceAppearance", ["_optional"] = True}]
       26 DUPTABLE                         R9 K27 [{["ClassName"] = "StringValue", ["Name"] = "AvatarPartScaleType", ["_optional"] = True}]
       27 DUPTABLE                         R10 K29 [{["ClassName"] = "TouchTransmitter", ["_optional"] = True}]
       28 SETLIST                          R5 R6 5 [1]
       30 SETTABLEKS                       R5 R4 K5 ["_children"]
       32 SETLIST                          R2 R3 2 [1]
       34 SETTABLEKS                       R2 R1 K5 ["_children"]
       36 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
