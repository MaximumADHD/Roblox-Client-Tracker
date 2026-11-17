PROTO_0:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K3 ["pages"]
       10 LOADNIL                          R9
       11 LOADNIL                          R10
       12 FORGPREP                         R8
       13 MOVE                             R13 R12
       14 LOADNIL                          R14
       15 LOADNIL                          R15
       16 FORGPREP                         R13
       17 MOVE                             R18 R1
       18 MOVE                             R19 R17
       19 CALL                             R18 1 1
       20 JUMPIFNOT                        R18 ; [+15]
       21 GETIMPORT                        R18 K5 [table.remove]
       23 GETTABLE                         R20 R2 R6
       24 GETTABLEKS                       R20 R20 K3 ["pages"]
       26 GETTABLE                         R19 R20 R11
       27 MOVE                             R20 R16
       28 CALL                             R18 2 0
       29 GETTABLE                         R18 R2 R6
       30 GETTABLEKS                       R19 R18 K6 ["targetResults"]
       32 SUBK                             R19 R19 K7 [1]
       33 SETTABLEKS                       R19 R18 K6 ["targetResults"]
       35 RETURN                           R2 1
       36 FORGLOOP                         R13 2 ; [-20]
       38 FORGLOOP                         R8 2 ; [-26]
       40 FORGLOOP                         R3 2 ; [-33]
       42 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
