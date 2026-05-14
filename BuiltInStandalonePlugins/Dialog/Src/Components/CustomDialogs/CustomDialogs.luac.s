MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["Util"]
       23 GETTABLEKS                       R3 R3 K11 ["StudioUri"]
       25 NEWTABLE                         R4 0 0
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K12 ["Parent"]
       31 NAMECALL                         R5 R5 K13 ["GetChildren"]
       33 CALL                             R5 1 3
       34 FORGPREP                         R5
       35 GETIMPORT                        R10 K16 [string.match]
       37 GETTABLEKS                       R11 R9 K17 ["Name"]
       39 LOADK                            R12 K18 ["^CustomDialogs"]
       40 CALL                             R10 2 1
       41 JUMPIF                           R10 ; [+13]
       42 GETIMPORT                        R10 K5 [require]
       44 MOVE                             R11 R9
       45 CALL                             R10 1 1
       46 JUMPIFNOT                        R10 ; [+8]
       47 GETTABLEKS                       R11 R3 K19 ["toString"]
       49 GETTABLEKS                       R12 R10 K20 ["uri"]
       51 CALL                             R11 1 1
       52 GETTABLEKS                       R12 R10 K21 ["component"]
       54 SETTABLE                         R12 R4 R11
       55 FORGLOOP                         R5 2 ; [-21]
       57 GETIMPORT                        R5 K24 [table.freeze]
       59 MOVE                             R6 R4
       60 CALL                             R5 1 -1
       61 RETURN                           R5 -1
