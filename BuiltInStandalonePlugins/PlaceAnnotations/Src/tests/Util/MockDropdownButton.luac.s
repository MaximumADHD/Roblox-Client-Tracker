PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSelect"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["DropdownItems"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 FASTCALL1                        TYPE R6 ; [+3]
        8 MOVE                             R8 R6
        9 GETIMPORT                        R7 K2 [type]
       11 CALL                             R7 1 1
       12 JUMPIFNOTEQKS                    R7 K3 ["string"] ; [+34]
       14 GETTABLEKS                       R8 R0 K4 ["OnSelect"]
       16 FASTCALL2K                       ASSERT R8 K5 ; [+4]
       18 LOADK                            R9 K5 ["String items must have an OnSelect function defined."]
       19 GETIMPORT                        R7 K7 [assert]
       21 CALL                             R7 2 0
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K8 ["createElement"]
       25 LOADK                            R8 K9 ["TextButton"]
       26 NEWTABLE                         R9 4 0
       28 SETTABLEKS                       R6 R9 K10 ["Text"]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K11 ["Event"]
       33 GETTABLEKS                       R10 R10 K12 ["Activated"]
       35 NEWCLOSURE                       R11 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R6
       38 SETTABLE                         R11 R9 R10
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K13 ["Tag"]
       42 LOADK                            R11 K14 ["Component-DropdownItem"]
       43 SETTABLE                         R11 R9 R10
       44 CALL                             R7 2 1
       45 SETTABLE                         R7 R1 R5
       46 JUMP                             ; [+19]
       47 GETTABLEKS                       R8 R6 K15 ["props"]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K11 ["Event"]
       52 GETTABLEKS                       R9 R9 K12 ["Activated"]
       54 GETTABLE                         R7 R8 R9
       55 GETTABLEKS                       R8 R6 K15 ["props"]
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R9 R9 K11 ["Event"]
       60 GETTABLEKS                       R9 R9 K12 ["Activated"]
       62 NEWCLOSURE                       R10 P1
       63 CAPTURE                          VAL R7
       64 SETTABLE                         R10 R8 R9
       65 SETTABLE                         R6 R1 R5
       66 FORGLOOP                         R2 2 ; [-60]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K8 ["createElement"]
       71 LOADK                            R3 K16 ["Frame"]
       72 NEWTABLE                         R4 0 0
       74 MOVE                             R5 R1
       75 CALL                             R2 3 -1
       76 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_2]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
