PROTO_0:
        0 DUPTABLE                         R1 K3 [{"playersService", "usernames", "mock"}]
        1 GETIMPORT                        R2 K5 [game]
        3 LOADK                            R4 K6 ["Players"]
        4 NAMECALL                         R2 R2 K7 ["GetService"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["playersService"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K1 ["usernames"]
       13 SETTABLEKS                       R0 R1 K2 ["mock"]
       15 GETUPVAL                         R4 0
       16 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       18 MOVE                             R3 R1
       19 GETIMPORT                        R2 K9 [setmetatable]
       21 CALL                             R2 2 0
       22 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["mock"]
        2 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        4 LOADK                            R5 K1 ["Cannot add mock user when not in mock mode"]
        5 GETIMPORT                        R3 K3 [assert]
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R3 R0 K4 ["usernames"]
       10 SETTABLE                         R2 R3 R1
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["playersService"]
        3 GETUPVAL                         R2 2
        4 NAMECALL                         R0 R0 K1 ["GetNameFromUserIdAsync"]
        6 CALL                             R0 2 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["mock"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R3 R0 K1 ["usernames"]
        5 GETTABLE                         R2 R3 R1
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R0 K1 ["usernames"]
        9 GETTABLE                         R2 R3 R1
       10 JUMPIF                           R2 ; [+26]
       11 LOADNIL                          R2
       12 GETIMPORT                        R3 K3 [pcall]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          REF R2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CALL                             R3 1 2
       19 JUMPIFNOT                        R3 ; [+5]
       20 GETTABLEKS                       R5 R0 K1 ["usernames"]
       22 SETTABLE                         R2 R5 R1
       23 CLOSEUPVALS                      R2
       24 RETURN                           R2 1
       25 GETUPVAL                         R5 0
       26 NAMECALL                         R5 R5 K4 ["use"]
       28 CALL                             R5 1 1
       29 LOADK                            R7 K5 ["Other"]
       30 LOADK                            R8 K6 ["MissingUser"]
       31 NAMECALL                         R5 R5 K7 ["getText"]
       33 CALL                             R5 3 -1
       34 CLOSEUPVALS                      R2
       35 RETURN                           R5 -1
       36 CLOSEUPVALS                      R2
       37 GETTABLEKS                       R3 R0 K1 ["usernames"]
       39 GETTABLE                         R2 R3 R1
       40 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["ContextItem"]
       18 GETTABLEKS                       R4 R2 K10 ["Localization"]
       20 LOADK                            R7 K11 ["UsernameContext"]
       21 NAMECALL                         R5 R3 K12 ["extend"]
       23 CALL                             R5 2 1
       24 DUPCLOSURE                       R6 K13 [PROTO_0]
       25 CAPTURE                          VAL R5
       26 SETTABLEKS                       R6 R5 K14 ["new"]
       28 DUPCLOSURE                       R6 K15 [PROTO_1]
       29 SETTABLEKS                       R6 R5 K16 ["addMockUser"]
       31 DUPCLOSURE                       R6 K17 [PROTO_3]
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R6 R5 K18 ["getUsername"]
       35 RETURN                           R5 1
