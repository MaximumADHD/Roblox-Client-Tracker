PROTO_0:
        0 NEWTABLE                         R1 0 2
        2 DUPTABLE                         R2 K3 [{[1] = "Filename", ["Value"]}]
        3 GETTABLEKS                       R4 R0 K4 ["File"]
        5 JUMPIFNOT                        R4 ; [+5]
        6 GETTABLEKS                       R3 R0 K4 ["File"]
        8 GETTABLEKS                       R3 R3 K5 ["Name"]
       10 JUMP                             ; [+1]
       11 LOADK                            R3 K6 [""]
       12 SETTABLEKS                       R3 R2 K2 ["Value"]
       14 DUPTABLE                         R3 K8 [{[1] = "Dimensions", ["Value"]}]
       15 LOADK                            R5 K9 ["%*x%*px"]
       16 GETTABLEKS                       R7 R0 K10 ["Width"]
       18 GETTABLEKS                       R8 R0 K11 ["Height"]
       20 NAMECALL                         R5 R5 K12 ["format"]
       22 CALL                             R5 3 1
       23 MOVE                             R4 R5
       24 SETTABLEKS                       R4 R3 K2 ["Value"]
       26 SETLIST                          R1 R2 2 [1]
       28 RETURN                           R1 1

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
