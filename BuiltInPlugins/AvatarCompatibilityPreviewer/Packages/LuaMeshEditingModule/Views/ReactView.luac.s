PROTO_0:
        0 NEWTABLE                         R3 8 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["_meshEditingContext"]
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K3 ["_setPropsCallback"]
       13 SETTABLEKS                       R1 R2 K4 ["_createElement"]
       15 GETIMPORT                        R3 K7 [Instance.new]
       17 LOADK                            R4 K8 ["Folder"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K9 ["_folder"]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K10 ["createRoot"]
       24 GETTABLEKS                       R4 R2 K9 ["_folder"]
       26 CALL                             R3 1 1
       27 SETTABLEKS                       R3 R2 K11 ["_root"]
       29 GETTABLEKS                       R3 R2 K11 ["_root"]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K12 ["createElement"]
       34 NAMECALL                         R6 R2 K13 ["_renderRootWithProps"]
       36 CALL                             R6 1 -1
       37 CALL                             R5 -1 -1
       38 NAMECALL                         R3 R3 K14 ["render"]
       40 CALL                             R3 -1 0
       41 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_lastProps"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R1 R2 K1 ["_setPropsCallback"]
        9 JUMPIF                           R0 ; [+2]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["createElement"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["Fragment"]
       18 NEWTABLE                         R4 0 0
       20 DUPTABLE                         R5 K5 [{"Adornee"}]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K2 ["createElement"]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K6 ["_createElement"]
       27 DUPTABLE                         R8 K9 [{"ExternalProps", "MeshEditingContext"}]
       28 SETTABLEKS                       R0 R8 K7 ["ExternalProps"]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K10 ["_meshEditingContext"]
       33 SETTABLEKS                       R9 R8 K8 ["MeshEditingContext"]
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R5 K4 ["Adornee"]
       38 CALL                             R2 3 -1
       39 RETURN                           R2 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["_lastProps"]
        2 GETTABLEKS                       R2 R0 K1 ["_setPropsCallback"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETTABLEKS                       R2 R0 K1 ["_setPropsCallback"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_root"]
        2 LOADNIL                          R3
        3 NAMECALL                         R1 R1 K1 ["render"]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R1 R0 K2 ["_folder"]
        8 NAMECALL                         R1 R1 K3 ["Destroy"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["MeshWrapperObjects"]
       11 GETTABLEKS                       R2 R2 K7 ["CageMeshWrapperObject"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 8 0
       30 SETTABLEKS                       R4 R4 K11 ["__index"]
       32 DUPCLOSURE                       R5 K12 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 SETTABLEKS                       R5 R4 K13 ["new"]
       38 DUPCLOSURE                       R5 K14 [PROTO_3]
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R5 R4 K15 ["_renderRootWithProps"]
       42 DUPCLOSURE                       R5 K16 [PROTO_4]
       43 SETTABLEKS                       R5 R4 K17 ["render"]
       45 DUPCLOSURE                       R5 K18 [PROTO_5]
       46 SETTABLEKS                       R5 R4 K19 ["cleanup"]
       48 RETURN                           R4 1
