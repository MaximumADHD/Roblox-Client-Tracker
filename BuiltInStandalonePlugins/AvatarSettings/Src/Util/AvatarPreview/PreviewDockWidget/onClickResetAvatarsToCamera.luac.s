PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 NEWTABLE                         R1 0 0
        4 NAMECALL                         R2 R0 K0 ["GetChildren"]
        6 CALL                             R2 1 3
        7 FORGPREP                         R2
        8 LOADK                            R9 K1 ["Model"]
        9 NAMECALL                         R7 R6 K2 ["IsA"]
       11 CALL                             R7 2 1
       12 JUMPIFNOT                        R7 ; [+12]
       13 LOADK                            R9 K3 ["Humanoid"]
       14 NAMECALL                         R7 R6 K4 ["FindFirstChildWhichIsA"]
       16 CALL                             R7 2 1
       17 JUMPIFNOT                        R7 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       20 MOVE                             R8 R1
       21 MOVE                             R9 R6
       22 GETIMPORT                        R7 K7 [table.insert]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-18]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K8 ["placeAvatars"]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPreview"]
       15 GETTABLEKS                       R2 R2 K9 ["placeAvatars"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K10 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
