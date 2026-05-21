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
       23 NEWTABLE                         R4 0 2
       25 DUPTABLE                         R5 K12 [{"Name", "ClassName"}]
       26 LOADK                            R6 K13 ["ThumbnailCameraTarget"]
       27 SETTABLEKS                       R6 R5 K7 ["Name"]
       29 LOADK                            R6 K14 ["ObjectValue"]
       30 SETTABLEKS                       R6 R5 K3 ["ClassName"]
       32 DUPTABLE                         R6 K12 [{"Name", "ClassName"}]
       33 LOADK                            R7 K15 ["ThumbnailCameraValue"]
       34 SETTABLEKS                       R7 R6 K7 ["Name"]
       36 LOADK                            R7 K16 ["CFrameValue"]
       37 SETTABLEKS                       R7 R6 K3 ["ClassName"]
       39 SETLIST                          R4 R5 2 [1]
       41 SETTABLEKS                       R4 R3 K4 ["_children"]
       43 DUPTABLE                         R4 K17 [{"Name", "ClassName", "_children"}]
       44 LOADK                            R5 K18 ["Handle"]
       45 SETTABLEKS                       R5 R4 K7 ["Name"]
       47 LOADK                            R5 K19 ["MeshPart"]
       48 SETTABLEKS                       R5 R4 K3 ["ClassName"]
       50 NEWTABLE                         R5 0 4
       52 DUPTABLE                         R6 K12 [{"Name", "ClassName"}]
       53 SETTABLEKS                       R0 R6 K7 ["Name"]
       55 LOADK                            R7 K20 ["Attachment"]
       56 SETTABLEKS                       R7 R6 K3 ["ClassName"]
       58 DUPTABLE                         R7 K21 [{"ClassName", "Name", "_optional"}]
       59 LOADK                            R8 K22 ["SurfaceAppearance"]
       60 SETTABLEKS                       R8 R7 K3 ["ClassName"]
       62 LOADK                            R8 K22 ["SurfaceAppearance"]
       63 SETTABLEKS                       R8 R7 K7 ["Name"]
       65 LOADB                            R8 1
       66 SETTABLEKS                       R8 R7 K8 ["_optional"]
       68 DUPTABLE                         R8 K21 [{"ClassName", "Name", "_optional"}]
       69 LOADK                            R9 K23 ["StringValue"]
       70 SETTABLEKS                       R9 R8 K3 ["ClassName"]
       72 LOADK                            R9 K24 ["AvatarPartScaleType"]
       73 SETTABLEKS                       R9 R8 K7 ["Name"]
       75 LOADB                            R9 1
       76 SETTABLEKS                       R9 R8 K8 ["_optional"]
       78 DUPTABLE                         R9 K25 [{"ClassName", "_optional"}]
       79 LOADK                            R10 K26 ["TouchTransmitter"]
       80 SETTABLEKS                       R10 R9 K3 ["ClassName"]
       82 LOADB                            R10 1
       83 SETTABLEKS                       R10 R9 K8 ["_optional"]
       85 SETLIST                          R5 R6 4 [1]
       87 SETTABLEKS                       R5 R4 K4 ["_children"]
       89 SETLIST                          R2 R3 2 [1]
       91 SETTABLEKS                       R2 R1 K4 ["_children"]
       93 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
