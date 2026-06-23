PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["CanCollaborateResponses"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 0
        6 NAMECALL                         R2 R2 K1 ["GetUserId"]
        8 CALL                             R2 1 1
        9 GETTABLE                         R3 R1 R2
       10 LOADB                            R4 0
       11 JUMPIFEQKNIL                     R3 ; [+10]
       13 GETTABLEKS                       R5 R3 K2 ["error"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K3 ["AgeVerificationCountryBlocked"]
       18 JUMPIFEQ                         R5 R6 ; [+2]
       20 LOADB                            R4 0 +1
       21 LOADB                            R4 1
       22 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ManageCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Enums"]
       13 GETTABLEKS                       R2 R2 K8 ["CanCollaborateError"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K10 [game]
       18 LOADK                            R4 K11 ["StudioService"]
       19 NAMECALL                         R2 R2 K12 ["GetService"]
       21 CALL                             R2 2 1
       22 DUPCLOSURE                       R3 K13 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1
