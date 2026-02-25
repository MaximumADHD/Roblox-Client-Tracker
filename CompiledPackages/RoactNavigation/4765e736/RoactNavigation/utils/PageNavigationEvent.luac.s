PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 JUMPIFEQKS                       R4 K2 ["string"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 LOADK                            R4 K3 ["pageName should be string"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 0
       13 FASTCALL1                        TYPEOF R1 ; [+3]
       14 MOVE                             R5 R1
       15 GETIMPORT                        R4 K1 [typeof]
       17 CALL                             R4 1 1
       18 JUMPIFEQKS                       R4 K4 ["userdata"] ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 LOADK                            R4 K5 ["event should be RoactNavigation.Event"]
       23 CALL                             R2 2 0
       24 DUPTABLE                         R2 K8 [{"event", "pageName"}]
       25 SETTABLEKS                       R1 R2 K6 ["event"]
       27 SETTABLEKS                       R0 R2 K7 ["pageName"]
       29 GETUPVAL                         R5 1
       30 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       32 MOVE                             R4 R2
       33 GETIMPORT                        R3 K10 [setmetatable]
       35 CALL                             R3 2 0
       36 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        GETMETATABLE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [getmetatable]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R2 R3 K2 ["__index"]
        7 GETUPVAL                         R3 0
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%-15s - %s"]
        3 GETTABLEKS                       R4 R0 K4 ["event"]
        5 FASTCALL1                        TOSTRING R4 ; [+2]
        6 GETIMPORT                        R3 K6 [tostring]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R0 K7 ["pageName"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["isPageNavigationEvent"]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 LOADK                            R4 K1 ["should be PageNavigationEvent"]
        7 CALL                             R2 2 0
        8 LOADB                            R2 0
        9 GETTABLEKS                       R3 R0 K2 ["pageName"]
       11 GETTABLEKS                       R4 R1 K2 ["pageName"]
       13 JUMPIFNOTEQ                      R3 R4 ; [+9]
       15 GETTABLEKS                       R3 R0 K3 ["event"]
       17 GETTABLEKS                       R4 R1 K3 ["event"]
       19 JUMPIFEQ                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["validate"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 8 0
       12 SETTABLEKS                       R1 R1 K6 ["__index"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R2 R1 K8 ["new"]
       19 DUPCLOSURE                       R2 K9 [PROTO_1]
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R2 R1 K10 ["isPageNavigationEvent"]
       23 DUPCLOSURE                       R2 K11 [PROTO_2]
       24 SETTABLEKS                       R2 R1 K12 ["__tostring"]
       26 DUPCLOSURE                       R2 K13 [PROTO_3]
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R2 R1 K14 ["equalTo"]
       31 RETURN                           R1 1
