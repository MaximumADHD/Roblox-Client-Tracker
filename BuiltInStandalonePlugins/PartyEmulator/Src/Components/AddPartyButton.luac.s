PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CreateNewParty"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K0 ["CreateNewParty"]
        6 NAMECALL                         R0 R0 K1 ["Invoke"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R3 R3 K0 ["use"]
        9 CALL                             R3 1 1
       10 NAMECALL                         R3 R3 K1 ["get"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R6 0 0
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R5 R5 K3 ["createElement"]
       25 GETUPVAL                         R6 5
       26 GETTABLEKS                       R6 R6 K4 ["Button"]
       28 DUPTABLE                         R7 K11 [{"text", "onActivated", "variant", "size", "LayoutOrder", "isDisabled"}]
       29 LOADK                            R10 K12 ["Action"]
       30 LOADK                            R11 K13 ["AddParty"]
       31 NAMECALL                         R8 R2 K14 ["getText"]
       33 CALL                             R8 3 1
       34 SETTABLEKS                       R8 R7 K5 ["text"]
       36 SETTABLEKS                       R4 R7 K6 ["onActivated"]
       38 GETUPVAL                         R8 6
       39 GETTABLEKS                       R8 R8 K15 ["Subtle"]
       41 SETTABLEKS                       R8 R7 K7 ["variant"]
       43 GETUPVAL                         R8 7
       44 GETTABLEKS                       R8 R8 K16 ["Medium"]
       46 SETTABLEKS                       R8 R7 K8 ["size"]
       48 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       50 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       52 NOT                              R8 R1
       53 SETTABLEKS                       R8 R7 K10 ["isDisabled"]
       55 CALL                             R5 2 -1
       56 RETURN                           R5 -1

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
       13 GETTABLEKS                       R2 R1 K8 ["Src"]
       15 GETTABLEKS                       R2 R2 K9 ["Hooks"]
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R4 R1 K12 ["Packages"]
       21 GETTABLEKS                       R4 R4 K13 ["React"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K11 [require]
       26 GETTABLEKS                       R5 R1 K12 ["Packages"]
       28 GETTABLEKS                       R5 R5 K14 ["Foundation"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K11 [require]
       33 GETTABLEKS                       R6 R1 K12 ["Packages"]
       35 GETTABLEKS                       R6 R6 K15 ["Framework"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K11 [require]
       40 GETTABLEKS                       R7 R2 K16 ["useServerClientsTestSelected"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R5 K17 ["ContextServices"]
       45 GETTABLEKS                       R8 R7 K18 ["Localization"]
       47 GETTABLEKS                       R9 R7 K19 ["Plugin"]
       49 GETTABLEKS                       R10 R4 K20 ["Enums"]
       51 GETTABLEKS                       R10 R10 K21 ["ButtonVariant"]
       53 GETTABLEKS                       R11 R4 K20 ["Enums"]
       55 GETTABLEKS                       R11 R11 K22 ["InputSize"]
       57 DUPCLOSURE                       R12 K23 [PROTO_1]
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R11
       66 RETURN                           R12 1
