PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["UpdateSelectionStyle"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["RenderMode"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 LOADK                            R6 K1 ["RequestSelectionStyleUpdate"]
        5 NEWCLOSURE                       R7 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R4 R0 K2 ["OnInvoke"]
       10 CALL                             R4 3 -1
       11 NAMECALL                         R2 R1 K3 ["add"]
       13 CALL                             R2 -1 0
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["VisualizationModes"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["Maid"]
       21 CALL                             R2 1 1
       22 NEWTABLE                         R3 1 0
       24 DUPCLOSURE                       R4 K13 [PROTO_1]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R4 R3 K14 ["new"]
       29 RETURN                           R3 1
