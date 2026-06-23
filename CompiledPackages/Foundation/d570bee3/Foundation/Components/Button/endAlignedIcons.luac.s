MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 1 0
       16 GETTABLEKS                       R4 R2 K8 ["Icon"]
       18 GETTABLEKS                       R4 R4 K9 ["ArrowUpRightFromSquare"]
       20 LOADB                            R5 1
       21 SETTABLE                         R5 R3 R4
       22 RETURN                           R3 1
