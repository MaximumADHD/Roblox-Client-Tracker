PROTO_0:
        0 MOVE                             R2 R0
        1 LOADK                            R3 K0 [" ▼ "]
        2 CONCAT                           R1 R2 R3
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R1
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETUPVAL                         R3 0
        7 GETTABLE                         R2 R3 R1
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 1
       10 MOVE                             R4 R1
       11 LOADK                            R5 K1 [17.598]
       12 GETUPVAL                         R6 2
       13 GETIMPORT                        R7 K4 [Vector2.new]
       15 LOADK                            R8 K5 [∞]
       16 LOADK                            R9 K5 [∞]
       17 CALL                             R7 2 -1
       18 NAMECALL                         R2 R2 K6 ["GetTextSize"]
       20 CALL                             R2 -1 1
       21 GETTABLEKS                       R4 R2 K8 ["X"]
       23 ADDK                             R3 R4 K7 [8]
       24 GETUPVAL                         R4 0
       25 SETTABLE                         R3 R4 R1
       26 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Resources"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K10 [game]
       18 LOADK                            R4 K11 ["TextService"]
       19 NAMECALL                         R2 R2 K12 ["GetService"]
       21 CALL                             R2 2 1
       22 GETTABLEKS                       R3 R1 K13 ["defaultFont"]
       24 NEWTABLE                         R4 0 0
       26 DUPCLOSURE                       R5 K14 [PROTO_0]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 RETURN                           R5 1
