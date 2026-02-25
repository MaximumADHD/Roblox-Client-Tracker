PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["AnimationData"]
        5 NAMECALL                         R4 R0 K0 ["getState"]
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R3 R4 K2 ["Status"]
       10 GETTABLEKS                       R2 R3 K3 ["SelectedEvents"]
       12 JUMPIFNOT                        R1 ; [+1]
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R1 K4 ["Events"]
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R4 R3 K5 ["Data"]
       22 JUMPIFNOT                        R4 ; [+35]
       23 GETTABLEKS                       R5 R3 K5 ["Data"]
       25 GETUPVAL                         R6 0
       26 GETTABLE                         R4 R5 R6
       27 JUMPIFNOT                        R4 ; [+30]
       28 GETUPVAL                         R4 1
       29 JUMPIFNOT                        R4 ; [+18]
       30 GETUPVAL                         R6 2
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R8 R9 K6 ["Dictionary"]
       34 GETTABLEKS                       R7 R8 K7 ["join"]
       36 MOVE                             R8 R2
       37 NEWTABLE                         R9 1 0
       39 GETUPVAL                         R10 0
       40 LOADB                            R11 1
       41 SETTABLE                         R11 R9 R10
       42 CALL                             R7 2 -1
       43 CALL                             R6 -1 -1
       44 NAMECALL                         R4 R0 K8 ["dispatch"]
       46 CALL                             R4 -1 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R6 2
       49 NEWTABLE                         R7 1 0
       51 GETUPVAL                         R8 0
       52 LOADB                            R9 1
       53 SETTABLE                         R9 R7 R8
       54 CALL                             R6 1 -1
       55 NAMECALL                         R4 R0 K8 ["dispatch"]
       57 CALL                             R4 -1 0
       58 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Actions"]
       20 GETTABLEKS                       R3 R4 K10 ["SetSelectedEvents"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
