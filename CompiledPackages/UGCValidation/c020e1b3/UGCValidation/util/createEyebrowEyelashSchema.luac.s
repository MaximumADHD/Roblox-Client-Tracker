PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["attachmentName cannot be nil"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 DUPTABLE                         R1 K5 [{"ClassName", "_children"}]
        8 LOADK                            R2 K6 ["Accessory"]
        9 SETTABLEKS                       R2 R1 K3 ["ClassName"]
       11 NEWTABLE                         R2 0 2
       13 DUPTABLE                         R3 K9 [{"Name", "ClassName", "_optional", "_children"}]
       14 LOADK                            R4 K10 ["ThumbnailConfiguration"]
       15 SETTABLEKS                       R4 R3 K7 ["Name"]
       17 LOADK                            R4 K11 ["Configuration"]
       18 SETTABLEKS                       R4 R3 K3 ["ClassName"]
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K8 ["_optional"]
       23 NEWTABLE                         R4 0 1
       25 DUPTABLE                         R5 K12 [{"Name", "ClassName"}]
       26 LOADK                            R6 K13 ["SkinColorValue"]
       27 SETTABLEKS                       R6 R5 K7 ["Name"]
       29 LOADK                            R6 K14 ["Color3Value"]
       30 SETTABLEKS                       R6 R5 K3 ["ClassName"]
       32 SETLIST                          R4 R5 1 [1]
       34 SETTABLEKS                       R4 R3 K4 ["_children"]
       36 DUPTABLE                         R4 K15 [{"Name", "ClassName", "_children"}]
       37 LOADK                            R5 K16 ["Handle"]
       38 SETTABLEKS                       R5 R4 K7 ["Name"]
       40 LOADK                            R5 K17 ["MeshPart"]
       41 SETTABLEKS                       R5 R4 K3 ["ClassName"]
       43 NEWTABLE                         R5 0 5
       45 DUPTABLE                         R6 K12 [{"Name", "ClassName"}]
       46 SETTABLEKS                       R0 R6 K7 ["Name"]
       48 LOADK                            R7 K18 ["Attachment"]
       49 SETTABLEKS                       R7 R6 K3 ["ClassName"]
       51 DUPTABLE                         R7 K19 [{"ClassName"}]
       52 LOADK                            R8 K20 ["WrapLayer"]
       53 SETTABLEKS                       R8 R7 K3 ["ClassName"]
       55 DUPTABLE                         R8 K21 [{"ClassName", "_optional"}]
       56 LOADK                            R9 K22 ["SurfaceAppearance"]
       57 SETTABLEKS                       R9 R8 K3 ["ClassName"]
       59 LOADB                            R9 1
       60 SETTABLEKS                       R9 R8 K8 ["_optional"]
       62 DUPTABLE                         R9 K23 [{"ClassName", "Name", "_optional"}]
       63 LOADK                            R10 K24 ["StringValue"]
       64 SETTABLEKS                       R10 R9 K3 ["ClassName"]
       66 LOADK                            R10 K25 ["AvatarPartScaleType"]
       67 SETTABLEKS                       R10 R9 K7 ["Name"]
       69 LOADB                            R10 1
       70 SETTABLEKS                       R10 R9 K8 ["_optional"]
       72 DUPTABLE                         R10 K21 [{"ClassName", "_optional"}]
       73 LOADK                            R11 K26 ["TouchTransmitter"]
       74 SETTABLEKS                       R11 R10 K3 ["ClassName"]
       76 LOADB                            R11 1
       77 SETTABLEKS                       R11 R10 K8 ["_optional"]
       79 SETLIST                          R5 R6 5 [1]
       81 SETTABLEKS                       R5 R4 K4 ["_children"]
       83 SETLIST                          R2 R3 2 [1]
       85 SETTABLEKS                       R2 R1 K4 ["_children"]
       87 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
