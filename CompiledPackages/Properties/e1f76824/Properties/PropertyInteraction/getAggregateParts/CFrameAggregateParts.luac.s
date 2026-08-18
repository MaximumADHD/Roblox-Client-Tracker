PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 NAMECALL                         R2 R0 K1 ["ToOrientation"]
        4 CALL                             R2 1 3
        5 DUPTABLE                         R5 K11 [{"value", "position", "orientation", "posX", "posY", "posZ", "oriX", "oriY", "oriZ"}]
        6 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
        7 SETTABLEKS                       R0 R6 K2 ["value"]
        9 SETTABLEKS                       R6 R5 K2 ["value"]
       11 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       12 SETTABLEKS                       R1 R6 K2 ["value"]
       14 SETTABLEKS                       R6 R5 K3 ["position"]
       16 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       17 FASTCALL3                        VECTOR R2 R3 R4
       19 MOVE                             R8 R2
       20 MOVE                             R9 R3
       21 MOVE                             R10 R4
       22 GETIMPORT                        R7 K17 [Vector3.new]
       24 CALL                             R7 3 1
       25 SETTABLEKS                       R7 R6 K2 ["value"]
       27 SETTABLEKS                       R6 R5 K4 ["orientation"]
       29 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       30 GETTABLEKS                       R7 R1 K18 ["X"]
       32 SETTABLEKS                       R7 R6 K2 ["value"]
       34 SETTABLEKS                       R6 R5 K5 ["posX"]
       36 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       37 GETTABLEKS                       R7 R1 K19 ["Y"]
       39 SETTABLEKS                       R7 R6 K2 ["value"]
       41 SETTABLEKS                       R6 R5 K6 ["posY"]
       43 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       44 GETTABLEKS                       R7 R1 K20 ["Z"]
       46 SETTABLEKS                       R7 R6 K2 ["value"]
       48 SETTABLEKS                       R6 R5 K7 ["posZ"]
       50 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       51 FASTCALL1                        MATH_DEG R2 ; [+3]
       52 MOVE                             R8 R2
       53 GETIMPORT                        R7 K23 [math.deg]
       55 CALL                             R7 1 1
       56 SETTABLEKS                       R7 R6 K2 ["value"]
       58 SETTABLEKS                       R6 R5 K8 ["oriX"]
       60 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       61 FASTCALL1                        MATH_DEG R3 ; [+3]
       62 MOVE                             R8 R3
       63 GETIMPORT                        R7 K23 [math.deg]
       65 CALL                             R7 1 1
       66 SETTABLEKS                       R7 R6 K2 ["value"]
       68 SETTABLEKS                       R6 R5 K9 ["oriY"]
       70 DUPTABLE                         R6 K14 [{["value"], ["multiple"] = False}]
       71 FASTCALL1                        MATH_DEG R4 ; [+3]
       72 MOVE                             R8 R4
       73 GETIMPORT                        R7 K23 [math.deg]
       75 CALL                             R7 1 1
       76 SETTABLEKS                       R7 R6 K2 ["value"]
       78 SETTABLEKS                       R6 R5 K10 ["oriZ"]
       80 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["AggregatePartsTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["PropertyInteraction"]
       20 GETTABLEKS                       R3 R3 K9 ["genericMultiplePart"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K12 [{"fromValue", "allMultiple"}]
       24 DUPCLOSURE                       R4 K13 [PROTO_0]
       25 SETTABLEKS                       R4 R3 K10 ["fromValue"]
       27 DUPTABLE                         R4 K23 [{"value", "position", "posX", "posY", "posZ", "orientation", "oriX", "oriY", "oriZ"}]
       28 SETTABLEKS                       R2 R4 K14 ["value"]
       30 SETTABLEKS                       R2 R4 K15 ["position"]
       32 SETTABLEKS                       R2 R4 K16 ["posX"]
       34 SETTABLEKS                       R2 R4 K17 ["posY"]
       36 SETTABLEKS                       R2 R4 K18 ["posZ"]
       38 SETTABLEKS                       R2 R4 K19 ["orientation"]
       40 SETTABLEKS                       R2 R4 K20 ["oriX"]
       42 SETTABLEKS                       R2 R4 K21 ["oriY"]
       44 SETTABLEKS                       R2 R4 K22 ["oriZ"]
       46 SETTABLEKS                       R4 R3 K11 ["allMultiple"]
       48 RETURN                           R3 1
