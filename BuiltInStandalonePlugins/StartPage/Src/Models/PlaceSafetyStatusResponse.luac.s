PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["placeSafetyStatus"]
        2 JUMPIFEQKNIL                     R1 ; [+20]
        4 GETTABLEKS                       R2 R0 K0 ["placeSafetyStatus"]
        6 FASTCALL1                        TYPEOF R2 ; [+2]
        7 GETIMPORT                        R1 K2 [typeof]
        9 CALL                             R1 1 1
       10 JUMPIFEQKS                       R1 K3 ["table"] ; [+12]
       12 LOADK                            R1 K4 ["\"responseBody.placeSafetyStatus\" > Expected table or nil, got %*"]
       13 GETTABLEKS                       R4 R0 K0 ["placeSafetyStatus"]
       15 FASTCALL1                        TYPEOF R4 ; [+2]
       16 GETIMPORT                        R3 K2 [typeof]
       18 CALL                             R3 1 1
       19 NAMECALL                         R1 R1 K5 ["format"]
       21 CALL                             R1 2 1
       22 RETURN                           R1 1
       23 GETTABLEKS                       R1 R0 K0 ["placeSafetyStatus"]
       25 JUMPIFNOT                        R1 ; [+23]
       26 GETTABLEKS                       R2 R1 K6 ["discoveryBlocked"]
       28 JUMPIFEQKNIL                     R2 ; [+20]
       30 GETTABLEKS                       R3 R1 K6 ["discoveryBlocked"]
       32 FASTCALL1                        TYPEOF R3 ; [+2]
       33 GETIMPORT                        R2 K2 [typeof]
       35 CALL                             R2 1 1
       36 JUMPIFEQKS                       R2 K7 ["boolean"] ; [+12]
       38 LOADK                            R2 K8 ["\"responseBody.placeSafetyStatus.discoveryBlocked\" > Expected boolean or nil, got %*"]
       39 GETTABLEKS                       R5 R1 K6 ["discoveryBlocked"]
       41 FASTCALL1                        TYPEOF R5 ; [+2]
       42 GETIMPORT                        R4 K2 [typeof]
       44 CALL                             R4 1 1
       45 NAMECALL                         R2 R2 K5 ["format"]
       47 CALL                             R2 2 1
       48 RETURN                           R2 1
       49 JUMPIFNOT                        R1 ; [+23]
       50 GETTABLEKS                       R2 R1 K9 ["userPlayabilityRestrictions"]
       52 JUMPIFEQKNIL                     R2 ; [+20]
       54 GETTABLEKS                       R3 R1 K9 ["userPlayabilityRestrictions"]
       56 FASTCALL1                        TYPEOF R3 ; [+2]
       57 GETIMPORT                        R2 K2 [typeof]
       59 CALL                             R2 1 1
       60 JUMPIFEQKS                       R2 K10 ["string"] ; [+12]
       62 LOADK                            R2 K11 ["\"responseBody.placeSafetyStatus.userPlayabilityRestrictions\" > Expected string or nil, got %*"]
       63 GETTABLEKS                       R5 R1 K9 ["userPlayabilityRestrictions"]
       65 FASTCALL1                        TYPEOF R5 ; [+2]
       66 GETIMPORT                        R4 K2 [typeof]
       68 CALL                             R4 1 1
       69 NAMECALL                         R2 R2 K5 ["format"]
       71 CALL                             R2 2 1
       72 RETURN                           R2 1
       73 LOADNIL                          R2
       74 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
