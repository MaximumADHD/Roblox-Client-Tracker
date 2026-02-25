PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["MeshPart"]
        3 CALL                             R3 1 1
        4 NEWTABLE                         R4 0 1
        6 MOVE                             R5 R3
        7 SETLIST                          R4 R5 1 [1]
        9 RETURN                           R4 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [string.find]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K3 ["MakeupCameras"]
        4 CALL                             R2 2 1
        5 JUMPIFNOT                        R2 ; [+36]
        6 GETIMPORT                        R2 K6 [Instance.new]
        8 LOADK                            R3 K7 ["Folder"]
        9 CALL                             R2 1 1
       10 NEWTABLE                         R3 0 5
       12 LOADK                            R4 K8 ["Eyebrow"]
       13 LOADK                            R5 K9 ["Eyelash"]
       14 LOADK                            R6 K10 ["Eyes"]
       15 LOADK                            R7 K11 ["Face"]
       16 LOADK                            R8 K12 ["Lips"]
       17 SETLIST                          R3 R4 5 [1]
       19 GETIMPORT                        R4 K14 [ipairs]
       21 MOVE                             R5 R3
       22 CALL                             R4 1 3
       23 FORGPREP_INEXT                   R4
       24 GETIMPORT                        R9 K6 [Instance.new]
       26 LOADK                            R10 K15 ["Camera"]
       27 CALL                             R9 1 1
       28 SETTABLEKS                       R8 R9 K16 ["Name"]
       30 GETIMPORT                        R10 K20 [Enum.CameraType.Scriptable]
       32 SETTABLEKS                       R10 R9 K18 ["CameraType"]
       34 LOADN                            R10 70
       35 SETTABLEKS                       R10 R9 K21 ["FieldOfView"]
       37 SETTABLEKS                       R2 R9 K22 ["Parent"]
       39 FORGLOOP                         R4 2 [inext] ; [-16]
       41 RETURN                           R2 1
       42 GETIMPORT                        R2 K2 [string.find]
       44 MOVE                             R3 R1
       45 LOADK                            R4 K23 ["MakeupLighting"]
       46 CALL                             R2 2 1
       47 JUMPIFNOT                        R2 ; [+11]
       48 GETIMPORT                        R2 K6 [Instance.new]
       50 LOADK                            R3 K7 ["Folder"]
       51 CALL                             R2 1 1
       52 GETIMPORT                        R3 K6 [Instance.new]
       54 LOADK                            R4 K24 ["PointLight"]
       55 CALL                             R3 1 1
       56 SETTABLEKS                       R2 R3 K22 ["Parent"]
       58 RETURN                           R2 1
       59 GETIMPORT                        R2 K6 [Instance.new]
       61 LOADK                            R3 K25 ["Model"]
       62 CALL                             R2 1 -1
       63 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["LoadAssetWithFormat"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["LoadLocalAsset"]
       15 RETURN                           R0 1
