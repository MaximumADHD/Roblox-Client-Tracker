PROTO_0:
        0 GETTABLEN                        R1 R0 1
        1 JUMPIFNOTEQKNIL                  R1 ; [+4]
        3 NEWTABLE                         R2 0 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R1 K0 ["items"]
        8 JUMPIFEQKNIL                     R2 ; [+6]
       10 GETTABLEKS                       R2 R1 K1 ["id"]
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 RETURN                           R0 1
       15 NEWTABLE                         R2 0 1
       17 DUPTABLE                         R3 K2 [{"items"}]
       18 SETTABLEKS                       R0 R3 K0 ["items"]
       20 SETLIST                          R2 R3 1 [1]
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManagement"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1
