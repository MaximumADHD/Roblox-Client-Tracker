PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETIMPORT                        R7 K3 [script]
        9 JUMPIFEQ                         R6 R7 ; [+30]
       11 GETTABLEKS                       R7 R6 K4 ["Name"]
       13 DUPTABLE                         R8 K9 [{"name", "story", "style", "test"}]
       14 GETTABLEKS                       R9 R6 K4 ["Name"]
       16 SETTABLEKS                       R9 R8 K5 ["name"]
       18 GETTABLEKS                       R12 R6 K4 ["Name"]
       20 LOADK                            R13 K10 [".story"]
       21 CONCAT                           R11 R12 R13
       22 NAMECALL                         R9 R6 K11 ["FindFirstChild"]
       24 CALL                             R9 2 1
       25 SETTABLEKS                       R9 R8 K6 ["story"]
       27 LOADK                            R11 K7 ["style"]
       28 NAMECALL                         R9 R6 K11 ["FindFirstChild"]
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K7 ["style"]
       33 LOADK                            R11 K12 ["init.test"]
       34 NAMECALL                         R9 R6 K11 ["FindFirstChild"]
       36 CALL                             R9 2 1
       37 SETTABLEKS                       R9 R8 K8 ["test"]
       39 SETTABLE                         R8 R1 R7
       40 FORGLOOP                         R2 2 ; [-34]
       42 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
