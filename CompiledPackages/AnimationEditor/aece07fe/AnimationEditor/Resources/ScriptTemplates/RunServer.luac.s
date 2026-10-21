MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 NAMECALL                         R2 R0 K7 ["IsStudio"]
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+31]
       17 GETIMPORT                        R2 K5 [script]
       19 GETTABLEKS                       R2 R2 K6 ["Parent"]
       21 LOADK                            R4 K8 ["PreviewInStudio"]
       22 NAMECALL                         R2 R2 K9 ["GetAttribute"]
       24 CALL                             R2 2 1
       25 JUMPIFNOT                        R2 ; [+22]
       26 GETIMPORT                        R2 K5 [script]
       28 GETTABLEKS                       R2 R2 K6 ["Parent"]
       30 LOADK                            R4 K10 ["RunClient"]
       31 NAMECALL                         R2 R2 K11 ["FindFirstChild"]
       33 CALL                             R2 2 1
       34 JUMPIFNOT                        R2 ; [+1]
       35 RETURN                           R0 0
       36 GETIMPORT                        R2 K13 [require]
       38 GETIMPORT                        R3 K5 [script]
       40 GETTABLEKS                       R3 R3 K6 ["Parent"]
       42 CALL                             R2 1 1
       43 GETTABLEKS                       R2 R2 K14 ["setupPreview"]
       45 MOVE                             R3 R1
       46 CALL                             R2 1 0
       47 RETURN                           R0 0
       48 GETIMPORT                        R2 K13 [require]
       50 GETIMPORT                        R3 K5 [script]
       52 GETTABLEKS                       R3 R3 K6 ["Parent"]
       54 CALL                             R2 1 1
       55 GETTABLEKS                       R2 R2 K15 ["setup"]
       57 MOVE                             R3 R1
       58 CALL                             R2 1 0
       59 RETURN                           R0 0
