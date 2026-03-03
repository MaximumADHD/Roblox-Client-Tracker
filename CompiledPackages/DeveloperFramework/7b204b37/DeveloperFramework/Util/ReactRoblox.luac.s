MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Util"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETTABLEKS                       R2 R0 K4 ["Parent"]
       11 GETTABLEKS                       R1 R2 K4 ["Parent"]
       13 JUMPIFNOT                        R1 ; [+28]
       14 GETTABLEKS                       R3 R0 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K4 ["Parent"]
       18 GETTABLEKS                       R1 R2 K4 ["Parent"]
       20 JUMPIFNOT                        R1 ; [+21]
       21 GETTABLEKS                       R3 R0 K4 ["Parent"]
       23 GETTABLEKS                       R2 R3 K4 ["Parent"]
       25 GETTABLEKS                       R1 R2 K4 ["Parent"]
       27 LOADK                            R3 K5 ["ReactRoblox"]
       28 NAMECALL                         R1 R1 K6 ["FindFirstChild"]
       30 CALL                             R1 2 1
       31 JUMPIFNOT                        R1 ; [+10]
       32 LOADK                            R4 K7 ["ModuleScript"]
       33 NAMECALL                         R2 R1 K8 ["IsA"]
       35 CALL                             R2 2 1
       36 JUMPIFNOT                        R2 ; [+5]
       37 GETIMPORT                        R2 K10 [require]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 -1
       41 RETURN                           R2 -1
       42 GETTABLEKS                       R1 R0 K4 ["Parent"]
       44 LOADK                            R3 K5 ["ReactRoblox"]
       45 NAMECALL                         R1 R1 K6 ["FindFirstChild"]
       47 CALL                             R1 2 1
       48 JUMPIFNOT                        R1 ; [+8]
       49 GETIMPORT                        R1 K10 [require]
       51 GETTABLEKS                       R3 R0 K4 ["Parent"]
       53 GETTABLEKS                       R2 R3 K5 ["ReactRoblox"]
       55 CALL                             R1 1 -1
       56 RETURN                           R1 -1
       57 LOADNIL                          R1
       58 RETURN                           R1 1
