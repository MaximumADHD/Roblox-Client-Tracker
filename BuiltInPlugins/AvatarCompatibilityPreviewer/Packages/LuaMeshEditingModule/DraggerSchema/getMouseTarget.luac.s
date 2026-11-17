PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["CurrentCamera"]
        3 JUMPIFNOTEQKNIL                  R3 ; [+3]
        5 LOADNIL                          R4
        6 RETURN                           R4 1
        7 GETTABLEKS                       R4 R0 K1 ["vertexEditingTool"]
        9 NAMECALL                         R4 R4 K2 ["getHoveredPoint"]
       11 CALL                             R4 1 1
       12 JUMPIFEQKNIL                     R4 ; [+8]
       14 FASTCALL1                        TYPE R4 ; [+3]
       15 MOVE                             R6 R4
       16 GETIMPORT                        R5 K4 [type]
       18 CALL                             R5 1 1
       19 JUMPIFEQKS                       R5 K5 ["table"] ; [+3]
       21 LOADNIL                          R5
       22 RETURN                           R5 1
       23 GETTABLEKS                       R5 R0 K1 ["vertexEditingTool"]
       25 NAMECALL                         R5 R5 K6 ["getHoveredPointPosition"]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKNIL                  R5 ; [+3]
       30 LOADNIL                          R6
       31 RETURN                           R6 1
       32 GETTABLEKS                       R6 R0 K1 ["vertexEditingTool"]
       34 GETTABLEKS                       R8 R4 K7 ["MeshName"]
       36 NAMECALL                         R6 R6 K8 ["getMeshPart"]
       38 CALL                             R6 2 1
       39 JUMPIFNOTEQKNIL                  R6 ; [+3]
       41 LOADNIL                          R7
       42 RETURN                           R7 1
       43 MOVE                             R9 R5
       44 NAMECALL                         R7 R3 K9 ["WorldToScreenPoint"]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K10 ["new"]
       50 GETTABLEKS                       R9 R4 K7 ["MeshName"]
       52 GETTABLEKS                       R10 R4 K11 ["Index"]
       54 CALL                             R8 2 1
       55 MOVE                             R9 R8
       56 MOVE                             R10 R6
       57 GETTABLEKS                       R11 R7 K12 ["Z"]
       59 RETURN                           R9 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Selectable"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K12 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
