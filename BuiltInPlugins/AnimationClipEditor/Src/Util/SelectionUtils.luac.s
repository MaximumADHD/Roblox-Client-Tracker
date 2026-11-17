PROTO_0:
        0 JUMPIFNOT                        R2 ; [+8]
        1 MOVE                             R5 R2
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R4
        5 JUMPIF                           R8 ; [+2]
        6 NEWTABLE                         R8 0 0
        8 CALL                             R5 3 0
        9 GETTABLEKS                       R5 R0 K0 ["Components"]
       11 JUMPIFNOT                        R5 ; [+37]
       12 GETIMPORT                        R5 K2 [pairs]
       14 GETTABLEKS                       R6 R0 K0 ["Components"]
       16 CALL                             R5 1 3
       17 FORGPREP_NEXT                    R5
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K3 ["List"]
       21 GETTABLEKS                       R10 R10 K4 ["join"]
       23 MOVE                             R11 R4
       24 JUMPIF                           R11 ; [+2]
       25 NEWTABLE                         R11 0 0
       27 NEWTABLE                         R12 0 1
       29 MOVE                             R13 R8
       30 SETLIST                          R12 R13 1 [1]
       32 CALL                             R10 2 1
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K5 ["traverse"]
       36 MOVE                             R12 R9
       37 JUMPIFNOT                        R1 ; [+4]
       38 GETTABLEKS                       R14 R1 K0 ["Components"]
       40 GETTABLE                         R13 R14 R8
       41 JUMPIF                           R13 ; [+1]
       42 LOADNIL                          R13
       43 MOVE                             R14 R2
       44 MOVE                             R15 R3
       45 MOVE                             R16 R10
       46 CALL                             R11 5 0
       47 FORGLOOP                         R5 2 ; [-30]
       49 JUMPIFNOT                        R3 ; [+8]
       50 MOVE                             R5 R3
       51 MOVE                             R6 R0
       52 MOVE                             R7 R1
       53 MOVE                             R8 R4
       54 JUMPIF                           R8 ; [+2]
       55 NEWTABLE                         R8 0 0
       57 CALL                             R5 3 0
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["PathUtils"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 1 0
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R4 R3 K12 ["traverse"]
       30 RETURN                           R3 1
