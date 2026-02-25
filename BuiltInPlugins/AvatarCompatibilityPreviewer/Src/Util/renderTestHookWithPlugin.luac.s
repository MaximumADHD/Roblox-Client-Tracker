PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [table.pack]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 -1
        5 CALL                             R1 -1 1
        6 SETTABLEKS                       R1 R0 K3 ["current"]
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 FASTCALL1                        TABLE_UNPACK R1 ; [+2]
        4 GETIMPORT                        R0 K3 [table.unpack]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K1 ["TestHelpers"]
       10 GETTABLEKS                       R5 R6 K2 ["Instances"]
       12 GETTABLEKS                       R4 R5 K3 ["MockPlugin"]
       14 GETTABLEKS                       R3 R4 K4 ["new"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K5 ["render"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R6 R7 K6 ["ContextServices"]
       23 GETTABLEKS                       R5 R6 K7 ["provide"]
       25 NEWTABLE                         R6 0 1
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R9 R10 K6 ["ContextServices"]
       30 GETTABLEKS                       R8 R9 K8 ["Plugin"]
       32 GETTABLEKS                       R7 R8 K4 ["new"]
       34 MOVE                             R8 R3
       35 CALL                             R7 1 -1
       36 SETLIST                          R6 R7 -1 [1]
       38 DUPTABLE                         R7 K10 [{"TestComponent"}]
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R8 R9 K11 ["createElement"]
       42 MOVE                             R9 R2
       43 CALL                             R8 1 1
       44 SETTABLEKS                       R8 R7 K9 ["TestComponent"]
       46 CALL                             R5 2 -1
       47 CALL                             R4 -1 0
       48 NEWCLOSURE                       R4 P1
       49 CAPTURE                          VAL R1
       50 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K6 ["Packages"]
       25 GETTABLEKS                       R5 R6 K9 ["Dev"]
       27 GETTABLEKS                       R4 R5 K10 ["ReactTestingLibrary"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K11 [PROTO_2]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
