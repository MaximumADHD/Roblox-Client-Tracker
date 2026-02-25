PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["FoundationUpdateKnobComponent"]
        3 JUMPIFNOT                        R3 ; [+35]
        4 NEWTABLE                         R2 4 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["XSmall"]
        9 GETTABLEKS                       R5 R0 K2 ["Size"]
       11 GETTABLEKS                       R4 R5 K3 ["Size_300"]
       13 SETTABLE                         R4 R2 R3
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K4 ["Small"]
       17 GETTABLEKS                       R5 R0 K2 ["Size"]
       19 GETTABLEKS                       R4 R5 K5 ["Size_400"]
       21 SETTABLE                         R4 R2 R3
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K6 ["Medium"]
       25 GETTABLEKS                       R5 R0 K2 ["Size"]
       27 GETTABLEKS                       R4 R5 K7 ["Size_500"]
       29 SETTABLE                         R4 R2 R3
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K8 ["Large"]
       33 GETTABLEKS                       R5 R0 K2 ["Size"]
       35 GETTABLEKS                       R4 R5 K9 ["Size_600"]
       37 SETTABLE                         R4 R2 R3
       38 JUMP                             ; [+34]
       39 NEWTABLE                         R2 4 0
       41 GETUPVAL                         R4 1
       42 GETTABLEKS                       R3 R4 K1 ["XSmall"]
       44 GETTABLEKS                       R5 R0 K2 ["Size"]
       46 GETTABLEKS                       R4 R5 K10 ["Size_200"]
       48 SETTABLE                         R4 R2 R3
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R3 R4 K4 ["Small"]
       52 GETTABLEKS                       R5 R0 K2 ["Size"]
       54 GETTABLEKS                       R4 R5 K3 ["Size_300"]
       56 SETTABLE                         R4 R2 R3
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R3 R4 K6 ["Medium"]
       60 GETTABLEKS                       R5 R0 K2 ["Size"]
       62 GETTABLEKS                       R4 R5 K5 ["Size_400"]
       64 SETTABLE                         R4 R2 R3
       65 GETUPVAL                         R4 1
       66 GETTABLEKS                       R3 R4 K8 ["Large"]
       68 GETTABLEKS                       R5 R0 K2 ["Size"]
       70 GETTABLEKS                       R4 R5 K11 ["Size_700"]
       72 SETTABLE                         R4 R2 R3
       73 GETTABLE                         R3 R2 R1
       74 GETIMPORT                        R4 K14 [UDim2.fromOffset]
       76 MOVE                             R5 R3
       77 MOVE                             R6 R3
       78 CALL                             R4 2 -1
       79 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R5 K9 ["Style"]
       20 GETTABLEKS                       R3 R4 K10 ["Tokens"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Utility"]
       27 GETTABLEKS                       R4 R5 K12 ["Flags"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K13 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 RETURN                           R4 1
