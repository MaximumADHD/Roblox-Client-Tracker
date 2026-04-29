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
        8 JUMPIF                           R2 ; [+17]
        9 LOADK                            R7 K2 ["Error%(13%): Access Denied%. Path is outside of sandbox%."]
       10 NAMECALL                         R5 R3 K3 ["find"]
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R5 ; [+4]
       14 GETIMPORT                        R5 K5 [error]
       16 LOADK                            R6 K6 ["Provided path is invalid: you likely need to provide a different argument to --fs.readwrite.\nYou may need to pass in `--fs.readwrite=$PWD`"]
       17 CALL                             R5 1 0
       18 GETTABLEKS                       R5 R3 K7 ["code"]
       20 JUMPIFEQKS                       R5 K8 ["EEXIST"] ; [+5]
       22 GETIMPORT                        R5 K5 [error]
       24 MOVE                             R6 R3
       25 CALL                             R5 1 0
       26 JUMPIFNOT                        R4 ; [+1]
       27 RETURN                           R3 1
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 NEWTABLE                         R2 1 0
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["getFileSystemService"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R1 K6 ["JestTypes"]
       18 CALL                             R4 1 1
       19 DUPCLOSURE                       R5 K7 [PROTO_1]
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R5 R2 K8 ["default"]
       23 RETURN                           R2 1
