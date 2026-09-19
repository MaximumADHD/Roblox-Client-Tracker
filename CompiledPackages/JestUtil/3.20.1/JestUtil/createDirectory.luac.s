PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CreateDirectories"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETIMPORT                        R2 K1 [pcall]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 3
        8 JUMPIF                           R2 ; [+21]
        9 LOADK                            R7 K2 ["Error%(13%): Access Denied%. Path is outside of sandbox%."]
       10 NAMECALL                         R5 R3 K3 ["find"]
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R5 ; [+8]
       14 GETIMPORT                        R5 K5 [error]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K6 ["new"]
       19 LOADK                            R7 K7 ["Provided path is invalid: you likely need to provide a different argument to --fs.readwrite.\nYou may need to pass in `--fs.readwrite=$PWD`"]
       20 CALL                             R6 1 -1
       21 CALL                             R5 -1 0
       22 GETTABLEKS                       R5 R3 K8 ["code"]
       24 JUMPIFEQKS                       R5 K9 ["EEXIST"] ; [+5]
       26 GETIMPORT                        R5 K5 [error]
       28 MOVE                             R6 R3
       29 CALL                             R5 1 0
       30 JUMPIFNOT                        R4 ; [+1]
       31 RETURN                           R3 1
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 NEWTABLE                         R2 1 0
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R1 K5 ["LuauPolyfill"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K6 ["Error"]
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R0 K7 ["getFileSystemService"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R1 K8 ["JestTypes"]
       25 CALL                             R6 1 1
       26 DUPCLOSURE                       R7 K9 [PROTO_1]
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R4
       29 SETTABLEKS                       R7 R2 K10 ["default"]
       31 RETURN                           R2 1
