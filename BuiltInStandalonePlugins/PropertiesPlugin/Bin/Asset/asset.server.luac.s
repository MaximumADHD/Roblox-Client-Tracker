MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["launch"]
       16 LOADK                            R3 K2 ["PropertiesPlugin"]
       17 GETTABLEKS                       R4 R0 K9 ["Src"]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K10 ["isCli"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K5 [require]
       27 GETTABLEKS                       R3 R0 K9 ["Src"]
       29 GETTABLEKS                       R3 R3 K11 ["Flags"]
       31 GETTABLEKS                       R3 R3 K12 ["getFFlagNewProperties"]
       33 CALL                             R2 1 1
       34 MOVE                             R3 R2
       35 CALL                             R3 0 1
       36 JUMPIF                           R3 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R3 K5 [require]
       40 GETTABLEKS                       R4 R0 K9 ["Src"]
       42 GETTABLEKS                       R4 R4 K13 ["Guest"]
       44 GETTABLEKS                       R4 R4 K14 ["startStudioGuest"]
       46 CALL                             R3 1 1
       47 MOVE                             R4 R3
       48 GETIMPORT                        R5 K16 [plugin]
       50 CALL                             R4 1 0
       51 GETIMPORT                        R4 K5 [require]
       53 GETTABLEKS                       R5 R0 K17 ["Bin"]
       55 GETTABLEKS                       R5 R5 K18 ["Common"]
       57 GETTABLEKS                       R5 R5 K19 ["pluginType"]
       59 CALL                             R4 1 1
       60 GETTABLEKS                       R5 R4 K20 ["get"]
       62 CALL                             R5 0 1
       63 GETTABLEKS                       R6 R4 K21 ["Asset"]
       65 JUMPIFNOTEQ                      R5 R6 ; [+24]
       67 GETIMPORT                        R5 K5 [require]
       69 GETTABLEKS                       R6 R0 K17 ["Bin"]
       71 GETTABLEKS                       R6 R6 K18 ["Common"]
       73 GETTABLEKS                       R6 R6 K22 ["setup"]
       75 CALL                             R5 1 1
       76 GETIMPORT                        R6 K5 [require]
       78 GETTABLEKS                       R7 R0 K17 ["Bin"]
       80 GETTABLEKS                       R7 R7 K18 ["Common"]
       82 GETTABLEKS                       R7 R7 K23 ["setupMain"]
       84 CALL                             R6 1 1
       85 MOVE                             R7 R5
       86 GETIMPORT                        R8 K16 [plugin]
       88 MOVE                             R9 R6
       89 CALL                             R7 2 0
       90 RETURN                           R0 0
