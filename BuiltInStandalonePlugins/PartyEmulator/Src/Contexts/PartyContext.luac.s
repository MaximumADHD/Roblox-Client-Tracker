PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K1 ["isEmulationEnabled"]
        3 ORK                              R2 R3 K0 [False]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R3 R0 K3 ["configuredPlayerCount"]
        8 ORK                              R2 R3 K2 [0]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R2 R0 K4 ["parties"]
       13 JUMPIF                           R2 ; [+1]
       14 GETUPVAL                         R2 3
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R2 R0 K5 ["playerMappings"]
       19 JUMPIF                           R2 ; [+1]
       20 GETUPVAL                         R2 3
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetEmulatedPartyConfiguration"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+1]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["useState"]
        9 GETTABLEKS                       R4 R1 K3 ["isEmulationEnabled"]
       11 ORK                              R3 R4 K2 [False]
       12 CALL                             R2 1 2
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K1 ["useState"]
       16 GETTABLEKS                       R6 R1 K5 ["configuredPlayerCount"]
       18 ORK                              R5 R6 K4 [0]
       19 CALL                             R4 1 2
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R6 R7 K1 ["useState"]
       23 GETTABLEKS                       R7 R1 K6 ["parties"]
       25 JUMPIF                           R7 ; [+1]
       26 GETUPVAL                         R7 1
       27 CALL                             R6 1 2
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R8 R9 K1 ["useState"]
       31 GETTABLEKS                       R9 R1 K7 ["playerMappings"]
       33 JUMPIF                           R9 ; [+1]
       34 GETUPVAL                         R9 1
       35 CALL                             R8 1 2
       36 GETUPVAL                         R10 3
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R11 R12 K8 ["ConfigurationChanged"]
       40 NEWCLOSURE                       R12 P0
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R7
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R9
       46 NEWTABLE                         R13 0 0
       48 CALL                             R10 3 0
       49 DUPTABLE                         R10 K10 [{"isEmulationEnabled", "playerCount", "parties", "playerMappings"}]
       50 SETTABLEKS                       R2 R10 K3 ["isEmulationEnabled"]
       52 SETTABLEKS                       R4 R10 K9 ["playerCount"]
       54 SETTABLEKS                       R6 R10 K6 ["parties"]
       56 SETTABLEKS                       R8 R10 K7 ["playerMappings"]
       58 GETUPVAL                         R12 2
       59 GETTABLEKS                       R11 R12 K11 ["createElement"]
       61 GETUPVAL                         R13 4
       62 GETTABLEKS                       R12 R13 K12 ["Provider"]
       64 DUPTABLE                         R13 K14 [{"value"}]
       65 SETTABLEKS                       R10 R13 K13 ["value"]
       67 GETTABLEKS                       R14 R0 K15 ["children"]
       69 CALL                             R11 3 -1
       70 RETURN                           R11 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R1 K2 [error]
        8 LOADK                            R2 K3 ["Attempted to access Context outside of provider"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+4]
        6 GETIMPORT                        R3 K2 [error]
        8 LOADK                            R4 K3 ["Attempted to access Context outside of provider"]
        9 CALL                             R3 1 0
       10 MOVE                             R1 R2
       11 GETTABLEKS                       R0 R1 K4 ["isEmulationEnabled"]
       13 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+4]
        6 GETIMPORT                        R3 K2 [error]
        8 LOADK                            R4 K3 ["Attempted to access Context outside of provider"]
        9 CALL                             R3 1 0
       10 MOVE                             R1 R2
       11 GETTABLEKS                       R0 R1 K4 ["playerCount"]
       13 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+4]
        6 GETIMPORT                        R3 K2 [error]
        8 LOADK                            R4 K3 ["Attempted to access Context outside of provider"]
        9 CALL                             R3 1 0
       10 MOVE                             R1 R2
       11 GETTABLEKS                       R0 R1 K4 ["parties"]
       13 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+4]
        6 GETIMPORT                        R3 K2 [error]
        8 LOADK                            R4 K3 ["Attempted to access Context outside of provider"]
        9 CALL                             R3 1 0
       10 MOVE                             R1 R2
       11 GETTABLEKS                       R0 R1 K4 ["playerMappings"]
       13 RETURN                           R0 1

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
       13 NEWTABLE                         R2 0 0
       15 GETTABLEKS                       R3 R1 K8 ["Packages"]
       17 GETTABLEKS                       R4 R1 K9 ["Src"]
       19 GETTABLEKS                       R5 R4 K10 ["Hooks"]
       21 GETIMPORT                        R6 K12 [require]
       23 GETTABLEKS                       R7 R5 K13 ["useEventConnection"]
       25 CALL                             R6 1 1
       26 GETIMPORT                        R7 K12 [require]
       28 GETTABLEKS                       R8 R3 K14 ["React"]
       30 CALL                             R7 1 1
       31 GETTABLEKS                       R8 R7 K15 ["createContext"]
       33 LOADNIL                          R9
       34 CALL                             R8 1 1
       35 DUPCLOSURE                       R9 K16 [PROTO_1]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R8
       41 DUPCLOSURE                       R10 K17 [PROTO_2]
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R8
       44 DUPTABLE                         R11 K23 [{"provider", "useIsEmulationEnabled", "usePlayerCount", "useParties", "usePlayerMappings"}]
       45 SETTABLEKS                       R9 R11 K18 ["provider"]
       47 DUPCLOSURE                       R12 K24 [PROTO_3]
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R8
       50 SETTABLEKS                       R12 R11 K19 ["useIsEmulationEnabled"]
       52 DUPCLOSURE                       R12 K25 [PROTO_4]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R8
       55 SETTABLEKS                       R12 R11 K20 ["usePlayerCount"]
       57 DUPCLOSURE                       R12 K26 [PROTO_5]
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 SETTABLEKS                       R12 R11 K21 ["useParties"]
       62 DUPCLOSURE                       R12 K27 [PROTO_6]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R8
       65 SETTABLEKS                       R12 R11 K22 ["usePlayerMappings"]
       67 RETURN                           R11 1
