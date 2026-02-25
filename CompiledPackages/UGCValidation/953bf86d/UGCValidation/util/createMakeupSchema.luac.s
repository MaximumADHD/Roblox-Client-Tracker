PROTO_0:
        0 DUPTABLE                         R0 K2 [{"ClassName", "_children"}]
        1 LOADK                            R1 K3 ["Decal"]
        2 SETTABLEKS                       R1 R0 K0 ["ClassName"]
        4 NEWTABLE                         R1 0 2
        6 DUPTABLE                         R2 K6 [{"Name", "ClassName", "_optional", "_children"}]
        7 LOADK                            R3 K7 ["ThumbnailConfiguration"]
        8 SETTABLEKS                       R3 R2 K4 ["Name"]
       10 LOADK                            R3 K8 ["Configuration"]
       11 SETTABLEKS                       R3 R2 K0 ["ClassName"]
       13 LOADB                            R3 1
       14 SETTABLEKS                       R3 R2 K5 ["_optional"]
       16 NEWTABLE                         R3 0 1
       18 DUPTABLE                         R4 K9 [{"Name", "ClassName"}]
       19 LOADK                            R5 K10 ["SkinColorValue"]
       20 SETTABLEKS                       R5 R4 K4 ["Name"]
       22 LOADK                            R5 K11 ["Color3Value"]
       23 SETTABLEKS                       R5 R4 K0 ["ClassName"]
       25 SETLIST                          R3 R4 1 [1]
       27 SETTABLEKS                       R3 R2 K1 ["_children"]
       29 DUPTABLE                         R3 K9 [{"Name", "ClassName"}]
       30 LOADK                            R4 K12 ["WrapTextureTransfer"]
       31 SETTABLEKS                       R4 R3 K4 ["Name"]
       33 LOADK                            R4 K12 ["WrapTextureTransfer"]
       34 SETTABLEKS                       R4 R3 K0 ["ClassName"]
       36 SETLIST                          R1 R2 2 [1]
       38 SETTABLEKS                       R1 R0 K1 ["_children"]
       40 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
