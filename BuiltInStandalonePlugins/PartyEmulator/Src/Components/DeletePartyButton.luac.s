PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["partyId"]
        4 NAMECALL                         R0 R0 K1 ["DeleteParty"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 2
        8 LOADK                            R2 K1 ["DeleteParty"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K0 ["partyId"]
       12 NAMECALL                         R0 R0 K2 ["Invoke"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 NAMECALL                         R2 R2 K1 ["get"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R5 0 0
       20 CALL                             R3 2 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K3 ["createElement"]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R5 R6 K4 ["Button"]
       27 DUPTABLE                         R6 K11 [{"text", "tag", "variant", "size", "onActivated", "LayoutOrder"}]
       28 LOADK                            R9 K12 ["Action"]
       29 LOADK                            R10 K13 ["Delete"]
       30 NAMECALL                         R7 R1 K14 ["getText"]
       32 CALL                             R7 3 1
       33 SETTABLEKS                       R7 R6 K5 ["text"]
       35 LOADK                            R7 K15 ["align-y-center padding-medium"]
       36 SETTABLEKS                       R7 R6 K6 ["tag"]
       38 GETUPVAL                         R8 5
       39 GETTABLEKS                       R7 R8 K16 ["Subtle"]
       41 SETTABLEKS                       R7 R6 K7 ["variant"]
       43 GETUPVAL                         R8 6
       44 GETTABLEKS                       R7 R8 K17 ["Small"]
       46 SETTABLEKS                       R7 R6 K8 ["size"]
       48 SETTABLEKS                       R3 R6 K9 ["onActivated"]
       50 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
       52 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PartyEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["PartyEmulator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Foundation"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R5 R3 K13 ["Enums"]
       29 GETTABLEKS                       R4 R5 K14 ["ButtonVariant"]
       31 GETTABLEKS                       R6 R3 K13 ["Enums"]
       33 GETTABLEKS                       R5 R6 K15 ["InputSize"]
       35 GETIMPORT                        R6 K9 [require]
       37 GETTABLEKS                       R8 R1 K10 ["Packages"]
       39 GETTABLEKS                       R7 R8 K16 ["Framework"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R6 K17 ["ContextServices"]
       44 GETTABLEKS                       R8 R7 K18 ["Localization"]
       46 GETTABLEKS                       R9 R7 K19 ["Plugin"]
       48 DUPCLOSURE                       R10 K20 [PROTO_1]
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 RETURN                           R10 1
