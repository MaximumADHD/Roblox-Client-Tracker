PROTO_0:
        0 GETIMPORT                        R6 K2 [Instance.new]
        2 LOADK                            R7 K3 ["SphereHandleAdornment"]
        3 MOVE                             R8 R2
        4 CALL                             R6 2 1
        5 LOADK                            R7 K4 ["Sphere"]
        6 SETTABLEKS                       R7 R6 K5 ["Name"]
        8 LOADB                            R7 1
        9 SETTABLEKS                       R7 R6 K6 ["AlwaysOnTop"]
       11 SETTABLEKS                       R4 R6 K7 ["Color3"]
       13 SETTABLEKS                       R2 R6 K8 ["Adornee"]
       15 SETTABLEKS                       R5 R6 K9 ["ZIndex"]
       17 SETTABLEKS                       R3 R6 K10 ["Transparency"]
       19 LOADB                            R7 0
       20 SETTABLEKS                       R7 R6 K11 ["Archivable"]
       22 RETURN                           R6 1

PROTO_1:
        0 GETIMPORT                        R7 K2 [Instance.new]
        2 LOADK                            R8 K3 ["LineHandleAdornment"]
        3 MOVE                             R9 R2
        4 CALL                             R7 2 1
        5 LOADK                            R8 K4 ["Line"]
        6 SETTABLEKS                       R8 R7 K5 ["Name"]
        8 LOADB                            R8 1
        9 SETTABLEKS                       R8 R7 K6 ["AlwaysOnTop"]
       11 SETTABLEKS                       R3 R7 K7 ["Thickness"]
       13 SETTABLEKS                       R4 R7 K8 ["Color3"]
       15 SETTABLEKS                       R2 R7 K9 ["Adornee"]
       17 SETTABLEKS                       R6 R7 K10 ["ZIndex"]
       19 SETTABLEKS                       R5 R7 K11 ["Transparency"]
       21 LOADB                            R8 0
       22 SETTABLEKS                       R8 R7 K12 ["Archivable"]
       24 RETURN                           R7 1

PROTO_2:
        0 GETIMPORT                        R6 K2 [Instance.new]
        2 LOADK                            R7 K3 ["ConeHandleAdornment"]
        3 MOVE                             R8 R2
        4 CALL                             R6 2 1
        5 LOADK                            R7 K4 ["Cone"]
        6 SETTABLEKS                       R7 R6 K5 ["Name"]
        8 LOADB                            R7 1
        9 SETTABLEKS                       R7 R6 K6 ["AlwaysOnTop"]
       11 SETTABLEKS                       R4 R6 K7 ["Color3"]
       13 SETTABLEKS                       R2 R6 K8 ["Adornee"]
       15 SETTABLEKS                       R5 R6 K9 ["ZIndex"]
       17 SETTABLEKS                       R3 R6 K10 ["Transparency"]
       19 LOADB                            R7 0
       20 SETTABLEKS                       R7 R6 K11 ["Archivable"]
       22 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["Sphere"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["Line"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["Cone"]
       12 RETURN                           R0 1
