PROTO_0:
        0 GETIMPORT                        R1 K2 [utf8.codes]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 GETIMPORT                        R6 K4 [utf8.char]
        7 MOVE                             R7 R5
        8 CALL                             R6 1 1
        9 GETUPVAL                         R8 0
       10 GETTABLEKS                       R8 R8 K5 ["FolderForbiddenChars"]
       12 GETTABLE                         R7 R8 R6
       13 JUMPIFNOT                        R7 ; [+2]
       14 LOADB                            R7 0
       15 RETURN                           R7 1
       16 LOADN                            R7 0
       17 JUMPIFNOTLE                      R7 R5 ; [+4]
       19 LOADN                            R7 31
       20 JUMPIFLE                         R5 R7 ; [+9]
       22 JUMPIFEQKN                       R5 K6 [127] ; [+7]
       24 LOADN                            R7 128
       25 JUMPIFNOTLE                      R7 R5 ; [+6]
       27 LOADN                            R7 159
       28 JUMPIFNOTLE                      R5 R7 ; [+3]
       30 LOADB                            R7 0
       31 RETURN                           R7 1
       32 FORGLOOP                         R1 2 ; [-28]
       34 GETIMPORT                        R1 K9 [string.match]
       36 MOVE                             R2 R0
       37 LOADK                            R3 K10 ["%.%s*$"]
       38 CALL                             R1 2 1
       39 JUMPIFNOT                        R1 ; [+2]
       40 LOADB                            R1 0
       41 RETURN                           R1 1
       42 LOADB                            R1 1
       43 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
