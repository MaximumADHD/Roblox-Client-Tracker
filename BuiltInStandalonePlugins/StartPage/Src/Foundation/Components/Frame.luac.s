PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K3 ["tag"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K4 ["testId"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K5 ["Tag"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R7 R0 K3 ["tag"]
       16 ORK                              R5 R7 K6 [""]
       17 LOADK                            R6 K7 [" gui-object-defaults"]
       18 CONCAT                           R4 R5 R6
       19 CALL                             R3 1 1
       20 SETTABLE                         R3 R1 R2
       21 GETTABLEKS                       R2 R0 K4 ["testId"]
       23 JUMPIFNOT                        R2 ; [+13]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K5 ["Tag"]
       27 GETTABLE                         R4 R1 R2
       28 LOADK                            R6 K8 [" data-testid=%*"]
       29 GETTABLEKS                       R8 R0 K4 ["testId"]
       31 NAMECALL                         R6 R6 K9 ["format"]
       33 CALL                             R6 2 1
       34 MOVE                             R5 R6
       35 CONCAT                           R3 R4 R5
       36 SETTABLE                         R3 R1 R2
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K10 ["createElement"]
       40 LOADK                            R3 K11 ["Frame"]
       41 MOVE                             R4 R1
       42 CALL                             R2 2 -1
       43 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["Hooks"]
       25 GETTABLEKS                       R3 R3 K12 ["useStyleTags"]
       27 DUPCLOSURE                       R4 K13 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
