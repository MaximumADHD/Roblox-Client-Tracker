PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 SETTABLEKS                       R0 R1 K0 ["_networkImpl"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 SETTABLEKS                       R2 R1 K2 ["Destroying"]
       10 GETUPVAL                         R4 1
       11 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K4 [setmetatable]
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_networkImpl"]
        2 NAMECALL                         R1 R1 K1 ["IsGuest"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_networkImpl"]
        2 NAMECALL                         R1 R1 K1 ["IsHost"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_networkImpl"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["OnGuestEvent"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_networkImpl"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["OnHostEvent"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_5:
        0 PREPVARARGS                      3
        1 GETTABLEKS                       R3 R0 K0 ["_networkImpl"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 GETVARARGS                       R7 -1
        6 NAMECALL                         R3 R3 K1 ["FireGuest"]
        8 CALL                             R3 -1 -1
        9 RETURN                           R3 -1

PROTO_6:
        0 PREPVARARGS                      3
        1 GETTABLEKS                       R3 R0 K0 ["_networkImpl"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 GETVARARGS                       R7 -1
        6 NAMECALL                         R3 R3 K1 ["FireHost"]
        8 CALL                             R3 -1 -1
        9 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_networkImpl"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["OnGuestInvokeAsync"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["_networkImpl"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["OnHostInvokeAsync"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_9:
        0 PREPVARARGS                      3
        1 GETTABLEKS                       R3 R0 K0 ["_networkImpl"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 GETVARARGS                       R7 -1
        6 NAMECALL                         R3 R3 K1 ["InvokeGuestAsync"]
        8 CALL                             R3 -1 -1
        9 RETURN                           R3 -1

PROTO_10:
        0 PREPVARARGS                      3
        1 GETTABLEKS                       R3 R0 K0 ["_networkImpl"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 GETVARARGS                       R7 -1
        6 NAMECALL                         R3 R3 K1 ["InvokeHostAsync"]
        8 CALL                             R3 -1 -1
        9 RETURN                           R3 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_networkImpl"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["Destroying"]
        7 NAMECALL                         R1 R1 K3 ["Fire"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DMNetworking"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 NEWTABLE                         R3 16 0
       21 SETTABLEKS                       R3 R3 K9 ["__index"]
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R4 R3 K11 ["new"]
       28 DUPCLOSURE                       R4 K12 [PROTO_1]
       29 SETTABLEKS                       R4 R3 K13 ["IsGuest"]
       31 DUPCLOSURE                       R4 K14 [PROTO_2]
       32 SETTABLEKS                       R4 R3 K15 ["IsHost"]
       34 DUPCLOSURE                       R4 K16 [PROTO_3]
       35 SETTABLEKS                       R4 R3 K17 ["OnGuestEvent"]
       37 DUPCLOSURE                       R4 K18 [PROTO_4]
       38 SETTABLEKS                       R4 R3 K19 ["OnHostEvent"]
       40 DUPCLOSURE                       R4 K20 [PROTO_5]
       41 SETTABLEKS                       R4 R3 K21 ["FireGuest"]
       43 DUPCLOSURE                       R4 K22 [PROTO_6]
       44 SETTABLEKS                       R4 R3 K23 ["FireHost"]
       46 DUPCLOSURE                       R4 K24 [PROTO_7]
       47 SETTABLEKS                       R4 R3 K25 ["OnGuestInvokeAsync"]
       49 DUPCLOSURE                       R4 K26 [PROTO_8]
       50 SETTABLEKS                       R4 R3 K27 ["OnHostInvokeAsync"]
       52 DUPCLOSURE                       R4 K28 [PROTO_9]
       53 SETTABLEKS                       R4 R3 K29 ["InvokeGuestAsync"]
       55 DUPCLOSURE                       R4 K30 [PROTO_10]
       56 SETTABLEKS                       R4 R3 K31 ["InvokeHostAsync"]
       58 DUPCLOSURE                       R4 K32 [PROTO_11]
       59 SETTABLEKS                       R4 R3 K33 ["Destroy"]
       61 RETURN                           R3 1
