PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K0 ["Exists"]
        6 CALL                             R0 2 1
        7 JUMPIF                           R0 ; [+5]
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R0 R0 K1 ["CreateDirectories"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADN                            R3 1
        3 CALL                             R1 2 1
        4 GETIMPORT                        R2 K1 [pcall]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 2
       10 JUMPIF                           R2 ; [+13]
       11 LOADK                            R6 K2 ["Error%(13%): Access Denied%. Path is outside of sandbox%."]
       12 NAMECALL                         R4 R3 K3 ["find"]
       14 CALL                             R4 2 1
       15 JUMPIFNOT                        R4 ; [+8]
       16 GETIMPORT                        R4 K5 [error]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K6 ["new"]
       21 LOADK                            R6 K7 ["Provided path is invalid: you likely need to provide a different argument to --fs.readwrite.\nYou may need to pass in `--fs.readwrite=$PWD`"]
       22 CALL                             R5 1 -1
       23 CALL                             R4 -1 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K2 ["Parent"]
       20 GETTABLEKS                       R4 R5 K7 ["getParent"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R6 R7 K2 ["Parent"]
       29 GETTABLEKS                       R5 R6 K8 ["getDataModelService"]
       31 CALL                             R4 1 1
       32 MOVE                             R5 R4
       33 LOADK                            R6 K9 ["FileSystemService"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K10 [PROTO_1]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R2
       39 RETURN                           R6 1
