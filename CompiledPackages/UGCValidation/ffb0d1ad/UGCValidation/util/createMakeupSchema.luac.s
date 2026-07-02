PROTO_0:
        0 DUPTABLE                         R0 K3 [{[1] = "Decal", ["_children"]}]
        1 NEWTABLE                         R1 0 2
        3 DUPTABLE                         R2 K9 [{["Name"] = "ThumbnailConfiguration", [2] = "Configuration", ["_optional"] = True, ["_children"]}]
        4 NEWTABLE                         R3 0 1
        6 DUPTABLE                         R4 K12 [{["Name"] = "SkinColorValue", [2] = "Color3Value"}]
        7 SETLIST                          R3 R4 1 [1]
        9 SETTABLEKS                       R3 R2 K2 ["_children"]
       11 DUPTABLE                         R3 K14 [{["Name"] = "WrapTextureTransfer", [2] = "WrapTextureTransfer"}]
       12 SETLIST                          R1 R2 2 [1]
       14 SETTABLEKS                       R1 R0 K2 ["_children"]
       16 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
