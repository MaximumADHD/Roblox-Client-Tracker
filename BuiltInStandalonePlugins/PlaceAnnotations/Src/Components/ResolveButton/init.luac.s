PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 LOADK                            R2 K1 ["TextButton"]
        4 NEWTABLE                         R3 4 0
        6 GETTABLEKS                       R5 R0 K2 ["Disabled"]
        8 NOT                              R4 R5
        9 SETTABLEKS                       R4 R3 K3 ["Interactable"]
       11 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       13 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K5 ["Event"]
       18 GETTABLEKS                       R4 R5 K6 ["Activated"]
       20 GETTABLEKS                       R5 R0 K7 ["OnClick"]
       22 SETTABLE                         R5 R3 R4
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K8 ["Tag"]
       26 GETUPVAL                         R5 1
       27 LOADK                            R6 K9 ["Component-ResolveButton"]
       28 GETTABLEKS                       R8 R0 K10 ["Resolved"]
       30 JUMPIFNOT                        R8 ; [+2]
       31 LOADK                            R7 K10 ["Resolved"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R7
       34 GETTABLEKS                       R9 R0 K2 ["Disabled"]
       36 JUMPIFNOT                        R9 ; [+2]
       37 LOADK                            R8 K2 ["Disabled"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R8
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R10 R11 K8 ["Tag"]
       43 GETTABLE                         R9 R0 R10
       44 CALL                             R5 4 1
       45 SETTABLE                         R5 R3 R4
       46 DUPTABLE                         R4 K12 [{"Icon"}]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R5 R6 K0 ["createElement"]
       50 LOADK                            R6 K13 ["ImageLabel"]
       51 CALL                             R5 1 1
       52 SETTABLEKS                       R5 R4 K11 ["Icon"]
       54 CALL                             R1 3 -1
       55 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Styling"]
       23 GETTABLEKS                       R3 R4 K10 ["joinTags"]
       25 DUPCLOSURE                       R4 K11 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1
