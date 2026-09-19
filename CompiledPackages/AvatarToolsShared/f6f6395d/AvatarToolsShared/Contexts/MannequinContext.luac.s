PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K1 [setmetatable]
        8 CALL                             R2 2 0
        9 SETTABLEKS                       R0 R1 K2 ["mannequinPath"]
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MANNEQUIN_PATH"]
        3 NEWTABLE                         R2 1 0
        5 GETUPVAL                         R5 1
        6 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K2 [setmetatable]
       11 CALL                             R3 2 0
       12 SETTABLEKS                       R1 R2 K3 ["mannequinPath"]
       14 MOVE                             R0 R2
       15 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Model"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["Mannequin"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 LOADK                            R5 K6 ["BaseWrap"]
        8 NAMECALL                         R3 R1 K7 ["FindFirstChildWhichIsA"]
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R6 R3 K8 ["ReferenceMeshId"]
       14 GETIMPORT                        R7 K12 [Enum.CollisionFidelity.PreciseConvexDecomposition]
       16 GETIMPORT                        R8 K15 [Enum.RenderFidelity.Automatic]
       18 NAMECALL                         R4 R4 K16 ["CreateMeshPartAsync"]
       20 CALL                             R4 4 1
       21 SETTABLEKS                       R2 R4 K17 ["Parent"]
       23 LOADK                            R5 K18 ["Torso"]
       24 SETTABLEKS                       R5 R4 K5 ["Name"]
       26 SETTABLEKS                       R4 R2 K19 ["PrimaryPart"]
       28 GETIMPORT                        R5 K2 [Instance.new]
       30 LOADK                            R6 K20 ["WrapTarget"]
       31 CALL                             R5 1 1
       32 LOADK                            R6 K20 ["WrapTarget"]
       33 SETTABLEKS                       R6 R5 K5 ["Name"]
       35 GETTABLEKS                       R6 R3 K8 ["ReferenceMeshId"]
       37 SETTABLEKS                       R6 R5 K21 ["CageMeshId"]
       39 SETTABLEKS                       R4 R5 K17 ["Parent"]
       41 GETIMPORT                        R6 K2 [Instance.new]
       43 LOADK                            R7 K22 ["Humanoid"]
       44 CALL                             R6 1 1
       45 SETTABLEKS                       R2 R6 K17 ["Parent"]
       47 GETUPVAL                         R7 1
       48 LOADNIL                          R8
       49 LOADNIL                          R9
       50 FORGPREP                         R7
       51 GETIMPORT                        R12 K2 [Instance.new]
       53 LOADK                            R13 K23 ["Attachment"]
       54 CALL                             R12 1 1
       55 SETTABLEKS                       R10 R12 K5 ["Name"]
       57 MOVE                             R15 R11
       58 NAMECALL                         R13 R2 K24 ["FindFirstChild"]
       60 CALL                             R13 2 1
       61 SETTABLEKS                       R13 R12 K17 ["Parent"]
       63 FORGLOOP                         R7 2 ; [-13]
       65 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MANNEQUIN_MOCK_PATH"]
        3 NEWTABLE                         R2 1 0
        5 GETUPVAL                         R5 1
        6 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K2 [setmetatable]
       11 CALL                             R3 2 0
       12 SETTABLEKS                       R1 R2 K3 ["mannequinPath"]
       14 MOVE                             R0 R2
       15 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["mannequinPath"]
        3 NAMECALL                         R1 R1 K1 ["LoadLocalAsset"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["InsertService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["Framework"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       22 GETTABLEKS                       R4 R4 K11 ["ContextItem"]
       24 GETIMPORT                        R5 K8 [require]
       26 GETTABLEKS                       R6 R1 K12 ["Util"]
       28 GETTABLEKS                       R6 R6 K13 ["AccessoryAndBodyToolShared"]
       30 GETTABLEKS                       R6 R6 K14 ["Constants"]
       32 CALL                             R5 1 1
       33 LOADK                            R8 K15 ["MannequinContext"]
       34 NAMECALL                         R6 R4 K16 ["extend"]
       36 CALL                             R6 2 1
       37 DUPCLOSURE                       R7 K17 [PROTO_0]
       38 CAPTURE                          VAL R6
       39 DUPCLOSURE                       R8 K18 [PROTO_1]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 SETTABLEKS                       R8 R6 K19 ["new"]
       44 DUPTABLE                         R8 K22 [{["BodyFrontAttachment"] = "Torso"}]
       45 DUPCLOSURE                       R9 K23 [PROTO_2]
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R8
       48 SETTABLEKS                       R9 R6 K24 ["createMannequinForClothing"]
       50 DUPCLOSURE                       R9 K25 [PROTO_3]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 SETTABLEKS                       R9 R6 K26 ["mock"]
       55 DUPCLOSURE                       R9 K27 [PROTO_4]
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R9 R6 K28 ["createMannequinModel"]
       59 RETURN                           R6 1
