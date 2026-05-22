PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["placeSafetyStatus"]
        2 JUMPIFEQKNIL                     R1 ; [+21]
        4 GETTABLEKS                       R2 R0 K0 ["placeSafetyStatus"]
        6 FASTCALL1                        TYPEOF R2 ; [+2]
        7 GETIMPORT                        R1 K2 [typeof]
        9 CALL                             R1 1 1
       10 JUMPIFEQKS                       R1 K3 ["table"] ; [+13]
       12 LOADK                            R2 K4 ["\"responseBody.placeSafetyStatus\" > Expected table or nil, got %*"]
       13 GETTABLEKS                       R5 R0 K0 ["placeSafetyStatus"]
       15 FASTCALL1                        TYPEOF R5 ; [+2]
       16 GETIMPORT                        R4 K2 [typeof]
       18 CALL                             R4 1 1
       19 NAMECALL                         R2 R2 K5 ["format"]
       21 CALL                             R2 2 1
       22 MOVE                             R1 R2
       23 RETURN                           R1 1
       24 GETTABLEKS                       R1 R0 K0 ["placeSafetyStatus"]
       26 JUMPIFNOT                        R1 ; [+24]
       27 GETTABLEKS                       R2 R1 K6 ["discoveryBlocked"]
       29 JUMPIFEQKNIL                     R2 ; [+21]
       31 GETTABLEKS                       R3 R1 K6 ["discoveryBlocked"]
       33 FASTCALL1                        TYPEOF R3 ; [+2]
       34 GETIMPORT                        R2 K2 [typeof]
       36 CALL                             R2 1 1
       37 JUMPIFEQKS                       R2 K7 ["boolean"] ; [+13]
       39 LOADK                            R3 K8 ["\"responseBody.placeSafetyStatus.discoveryBlocked\" > Expected boolean or nil, got %*"]
       40 GETTABLEKS                       R6 R1 K6 ["discoveryBlocked"]
       42 FASTCALL1                        TYPEOF R6 ; [+2]
       43 GETIMPORT                        R5 K2 [typeof]
       45 CALL                             R5 1 1
       46 NAMECALL                         R3 R3 K5 ["format"]
       48 CALL                             R3 2 1
       49 MOVE                             R2 R3
       50 RETURN                           R2 1
       51 JUMPIFNOT                        R1 ; [+24]
       52 GETTABLEKS                       R2 R1 K9 ["userPlayabilityRestrictions"]
       54 JUMPIFEQKNIL                     R2 ; [+21]
       56 GETTABLEKS                       R3 R1 K9 ["userPlayabilityRestrictions"]
       58 FASTCALL1                        TYPEOF R3 ; [+2]
       59 GETIMPORT                        R2 K2 [typeof]
       61 CALL                             R2 1 1
       62 JUMPIFEQKS                       R2 K10 ["string"] ; [+13]
       64 LOADK                            R3 K11 ["\"responseBody.placeSafetyStatus.userPlayabilityRestrictions\" > Expected string or nil, got %*"]
       65 GETTABLEKS                       R6 R1 K9 ["userPlayabilityRestrictions"]
       67 FASTCALL1                        TYPEOF R6 ; [+2]
       68 GETIMPORT                        R5 K2 [typeof]
       70 CALL                             R5 1 1
       71 NAMECALL                         R3 R3 K5 ["format"]
       73 CALL                             R3 2 1
       74 MOVE                             R2 R3
       75 RETURN                           R2 1
       76 LOADNIL                          R2
       77 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"validate"}]
        3 SETTABLEKS                       R0 R1 K1 ["validate"]
        5 RETURN                           R1 1
