MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dCore"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K9 [{"ERROR"}]
       15 GETTABLEKS                       R3 R1 K10 ["Constants"]
       17 GETTABLEKS                       R3 R3 K11 ["LAYOUT_CANCELLED_BY_USER_ERROR"]
       19 SETTABLEKS                       R3 R2 K8 ["ERROR"]
       21 RETURN                           R2 1
