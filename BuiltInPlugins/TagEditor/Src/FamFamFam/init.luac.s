PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Table"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+5]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["Table"]
        8 GETTABLEKS                       R1 R2 K1 ["computer_error"]
       10 DUPTABLE                         R2 K5 [{"Image", "ImageRectOffset", "ImageRectSize"}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K6 ["Asset"]
       14 SETTABLEKS                       R3 R2 K2 ["Image"]
       16 GETIMPORT                        R3 K9 [Vector2.new]
       18 GETTABLEN                        R4 R1 1
       19 GETTABLEN                        R5 R1 2
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K3 ["ImageRectOffset"]
       23 GETIMPORT                        R3 K9 [Vector2.new]
       25 LOADN                            R4 16
       26 LOADN                            R5 16
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R2 K4 ["ImageRectSize"]
       30 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 LOADK                            R1 K0 ["rbxasset://textures/TagEditor/famfamfam.png"]
        4 SETTABLEKS                       R1 R0 K1 ["Asset"]
        6 GETIMPORT                        R1 K3 [require]
        8 GETIMPORT                        R3 K5 [script]
       10 GETTABLEKS                       R2 R3 K6 ["SpritesheetData"]
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K7 ["Table"]
       15 DUPCLOSURE                       R1 K8 [PROTO_0]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K9 ["Lookup"]
       19 RETURN                           R0 1
