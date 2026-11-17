PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["Src"]
        8 GETTABLEKS                       R0 R0 K1 ["Components"]
       10 NAMECALL                         R0 R0 K2 ["GetChildren"]
       12 CALL                             R0 1 3
       13 FORGPREP                         R0
       14 LOADK                            R7 K3 ["ModuleScript"]
       15 NAMECALL                         R5 R4 K4 ["IsA"]
       17 CALL                             R5 2 1
       18 JUMPIFNOT                        R5 ; [+10]
       19 GETTABLEKS                       R5 R4 K5 ["Name"]
       21 LOADK                            R7 K6 ["%.spec$"]
       22 NAMECALL                         R5 R5 K7 ["match"]
       24 CALL                             R5 2 1
       25 JUMPIF                           R5 ; [+3]
       26 GETUPVAL                         R5 2
       27 MOVE                             R6 R4
       28 CALL                             R5 1 0
       29 FORGLOOP                         R0 2 ; [-16]
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["mockReactComponent"]
       15 CALL                             R1 1 1
       16 LOADB                            R2 0
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          REF R2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CLOSEUPVALS                      R2
       22 RETURN                           R3 1
