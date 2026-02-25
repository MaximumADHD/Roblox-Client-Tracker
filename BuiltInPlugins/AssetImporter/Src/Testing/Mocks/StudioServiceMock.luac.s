PROTO_0:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETVARARGS                       R3 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+5]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U0
       12 RETURN                           R3 1
       13 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K3 [{"_mockTemplateCache", "_mockFiles", "_isMockGlobalLibrary"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["_mockTemplateCache"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["_mockFiles"]
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["_isMockGlobalLibrary"]
       12 GETUPVAL                         R3 0
       13 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K5 [setmetatable]
       18 CALL                             R1 2 1
       19 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R2 K3 [{"Image", "ImageRectOffset", "ImageRectSize"}]
        1 LOADK                            R3 K4 ["rbxasset://textures/ClassImages.png"]
        2 SETTABLEKS                       R3 R2 K0 ["Image"]
        4 GETIMPORT                        R3 K7 [Vector2.new]
        6 LOADN                            R4 0
        7 LOADN                            R5 0
        8 CALL                             R3 2 1
        9 SETTABLEKS                       R3 R2 K1 ["ImageRectOffset"]
       11 GETIMPORT                        R3 K7 [Vector2.new]
       13 LOADN                            R4 16
       14 LOADN                            R5 16
       15 CALL                             R3 2 1
       16 SETTABLEKS                       R3 R2 K2 ["ImageRectSize"]
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 1 0
        9 DUPCLOSURE                       R2 K4 [PROTO_1]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K5 ["__index"]
       13 NEWTABLE                         R3 4 0
       15 FASTCALL2                        SETMETATABLE R3 R1 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R2 K7 [setmetatable]
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R2 K5 ["__index"]
       23 DUPCLOSURE                       R3 K8 [PROTO_2]
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R3 R2 K9 ["new"]
       27 DUPCLOSURE                       R3 K10 [PROTO_3]
       28 SETTABLEKS                       R3 R2 K11 ["GetClassIcon"]
       30 RETURN                           R2 1
