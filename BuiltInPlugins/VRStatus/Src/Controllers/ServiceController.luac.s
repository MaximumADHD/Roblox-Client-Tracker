PROTO_0:
        0 DUPTABLE                         R2 K1 [{"_services"}]
        1 DUPTABLE                         R3 K4 [{"VRService", "UserGameSettings"}]
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K5 ["new"]
        6 CALL                             R4 0 1
        7 JUMP                             ; [+6]
        8 GETIMPORT                        R4 K7 [game]
       10 LOADK                            R6 K2 ["VRService"]
       11 NAMECALL                         R4 R4 K8 ["GetService"]
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K2 ["VRService"]
       16 JUMPIFNOT                        R0 ; [+5]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K5 ["new"]
       20 CALL                             R4 0 1
       21 JUMP                             ; [+7]
       22 GETIMPORT                        R4 K10 [UserSettings]
       24 CALL                             R4 0 1
       25 LOADK                            R6 K3 ["UserGameSettings"]
       26 NAMECALL                         R4 R4 K8 ["GetService"]
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R3 K3 ["UserGameSettings"]
       31 SETTABLEKS                       R3 R2 K0 ["_services"]
       33 GETUPVAL                         R3 2
       34 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       36 GETIMPORT                        R1 K12 [setmetatable]
       38 CALL                             R1 2 1
       39 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_services"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VRStatus"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R3 K9 ["ContextItem"]
       18 LOADK                            R5 K10 ["ServiceController"]
       19 NAMECALL                         R3 R2 K11 ["extend"]
       21 CALL                             R3 2 1
       22 GETTABLEKS                       R5 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R5 K13 ["Mocks"]
       26 GETIMPORT                        R5 K5 [require]
       28 GETTABLEKS                       R6 R4 K14 ["MockUserSettingService"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R4 K15 ["MockVRService"]
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K16 [PROTO_0]
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R3
       40 SETTABLEKS                       R7 R3 K17 ["new"]
       42 DUPCLOSURE                       R7 K18 [PROTO_1]
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R7 R3 K19 ["mock"]
       46 DUPCLOSURE                       R7 K20 [PROTO_2]
       47 SETTABLEKS                       R7 R3 K21 ["getService"]
       49 RETURN                           R3 1
