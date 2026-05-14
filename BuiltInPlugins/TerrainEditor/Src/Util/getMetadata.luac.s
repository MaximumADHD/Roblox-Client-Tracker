PROTO_0:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K2 [{"Label", "Value"}]
        3 LOADK                            R3 K3 ["Filename"]
        4 SETTABLEKS                       R3 R2 K0 ["Label"]
        6 GETTABLEKS                       R4 R0 K4 ["File"]
        8 JUMPIFNOT                        R4 ; [+5]
        9 GETTABLEKS                       R3 R0 K4 ["File"]
       11 GETTABLEKS                       R3 R3 K5 ["Name"]
       13 JUMP                             ; [+1]
       14 LOADK                            R3 K6 [""]
       15 SETTABLEKS                       R3 R2 K1 ["Value"]
       17 DUPTABLE                         R3 K2 [{"Label", "Value"}]
       18 LOADK                            R4 K7 ["Dimensions"]
       19 SETTABLEKS                       R4 R3 K0 ["Label"]
       21 LOADK                            R5 K8 ["%*x%*px"]
       22 GETTABLEKS                       R7 R0 K9 ["Width"]
       24 GETTABLEKS                       R8 R0 K10 ["Height"]
       26 NAMECALL                         R5 R5 K11 ["format"]
       28 CALL                             R5 3 1
       29 MOVE                             R4 R5
       30 SETTABLEKS                       R4 R3 K1 ["Value"]
       32 SETLIST                          R1 R2 2 [1]
       34 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
