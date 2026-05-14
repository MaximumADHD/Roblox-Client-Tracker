PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 2
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["CorePackages"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [pcall]
       15 GETTABLEKS                       R3 R0 K10 ["GetResolutionScale"]
       17 MOVE                             R4 R0
       18 CALL                             R2 2 2
       19 GETIMPORT                        R4 K5 [script]
       21 GETTABLEKS                       R4 R4 K11 ["Parent"]
       23 GETIMPORT                        R5 K13 [require]
       25 GETTABLEKS                       R6 R4 K14 ["Generated"]
       27 GETTABLEKS                       R6 R6 K15 ["GetImageSetData"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K13 [require]
       32 GETTABLEKS                       R7 R4 K16 ["Flags"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R6 K17 ["FixBlurryImages"]
       37 JUMPIFNOT                        R2 ; [+2]
       38 JUMPIF                           R7 ; [+2]
       39 JUMPIF                           R1 ; [+1]
       40 LOADN                            R3 1
       41 NAMECALL                         R8 R0 K18 ["IsTenFootInterface"]
       43 CALL                             R8 1 1
       44 JUMPIFNOT                        R8 ; [+1]
       45 LOADN                            R3 3
       46 NEWCLOSURE                       R8 P0
       47 CAPTURE                          VAL R5
       48 CAPTURE                          REF R3
       49 CLOSEUPVALS                      R3
       50 RETURN                           R8 1
