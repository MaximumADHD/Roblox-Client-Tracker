MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETIMPORT                        R1 K1 [script]
        5 NAMECALL                         R1 R1 K2 ["GetChildren"]
        7 CALL                             R1 1 3
        8 FORGPREP                         R1
        9 LOADK                            R8 K3 ["ModuleScript"]
       10 NAMECALL                         R6 R5 K4 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+10]
       14 GETIMPORT                        R6 K6 [require]
       16 MOVE                             R7 R5
       17 CALL                             R6 1 1
       18 GETTABLEKS                       R7 R6 K7 ["kind"]
       20 JUMPIFNOT                        R7 ; [+3]
       21 GETTABLEKS                       R7 R6 K7 ["kind"]
       23 SETTABLE                         R6 R0 R7
       24 FORGLOOP                         R1 2 ; [-16]
       26 RETURN                           R0 1
