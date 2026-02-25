PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K6 ["provideMockContext"]
       18 GETUPVAL                         R3 1
       19 GETUPVAL                         R4 2
       20 NEWTABLE                         R5 0 1
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R7 R8 K7 ["Store"]
       25 GETTABLEKS                       R6 R7 K8 ["new"]
       27 MOVE                             R7 R1
       28 CALL                             R6 1 -1
       29 SETLIST                          R5 R6 -1 [1]
       31 CALL                             R3 2 1
       32 MOVE                             R4 R0
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["append"]
       23 GETTABLEKS                       R4 R2 K10 ["TestHelpers"]
       25 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       27 NEWTABLE                         R6 0 2
       29 GETTABLEKS                       R8 R5 K12 ["Analytics"]
       31 GETTABLEKS                       R7 R8 K13 ["mock"]
       33 CALL                             R7 0 1
       34 GETTABLEKS                       R9 R5 K14 ["Localization"]
       36 GETTABLEKS                       R8 R9 K13 ["mock"]
       38 CALL                             R8 0 -1
       39 SETLIST                          R6 R7 -1 [1]
       41 DUPCLOSURE                       R7 K15 [PROTO_0]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R5
       46 RETURN                           R7 1
