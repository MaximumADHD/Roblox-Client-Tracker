PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["UNASSIGNED_PARTY_ID"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLE                         R3 R1 R2
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K1 ["party-uuid-1"]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K2 ["party-uuid-2"]
       16 DUPTABLE                         R2 K7 [{"isEmulationEnabled", "playerCount", "parties", "playerMappings"}]
       17 GETTABLEKS                       R4 R0 K3 ["isEmulationEnabled"]
       19 JUMPIFEQKNIL                     R4 ; [+4]
       21 GETTABLEKS                       R3 R0 K3 ["isEmulationEnabled"]
       23 JUMP                             ; [+1]
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K3 ["isEmulationEnabled"]
       27 GETTABLEKS                       R4 R0 K4 ["playerCount"]
       29 ORK                              R3 R4 K8 [6]
       30 SETTABLEKS                       R3 R2 K4 ["playerCount"]
       32 GETTABLEKS                       R4 R0 K5 ["parties"]
       34 OR                               R3 R4 R1
       35 SETTABLEKS                       R3 R2 K5 ["parties"]
       37 GETTABLEKS                       R3 R0 K6 ["playerMappings"]
       39 JUMPIF                           R3 ; [+1]
       40 GETUPVAL                         R3 1
       41 SETTABLEKS                       R3 R2 K6 ["playerMappings"]
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R3 R4 K9 ["createElement"]
       46 GETUPVAL                         R5 3
       47 GETTABLEKS                       R4 R5 K10 ["Provider"]
       49 DUPTABLE                         R5 K12 [{"value"}]
       50 SETTABLEKS                       R2 R5 K11 ["value"]
       52 GETTABLEKS                       R6 R0 K13 ["children"]
       54 CALL                             R3 3 -1
       55 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R1 K2 [error]
        8 LOADK                            R2 K3 ["Attempted to access Context outside of provider"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 1

PROTO_2:
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
       11 GETTABLEKS                       R0 R1 K4 ["playerCount"]
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
       11 GETTABLEKS                       R0 R1 K4 ["parties"]
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
       11 GETTABLEKS                       R0 R1 K4 ["playerMappings"]
       13 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PartyEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 0 0
       25 GETTABLEKS                       R4 R1 K11 ["createContext"]
       27 LOADNIL                          R5
       28 CALL                             R4 1 1
       29 DUPCLOSURE                       R5 K12 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R4
       34 DUPCLOSURE                       R6 K13 [PROTO_1]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 DUPTABLE                         R7 K19 [{"provider", "useIsEmulationEnabled", "usePlayerCount", "useParties", "usePlayerMappings"}]
       38 SETTABLEKS                       R5 R7 K14 ["provider"]
       40 DUPCLOSURE                       R8 K20 [PROTO_2]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R8 R7 K15 ["useIsEmulationEnabled"]
       45 DUPCLOSURE                       R8 K21 [PROTO_3]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R8 R7 K16 ["usePlayerCount"]
       50 DUPCLOSURE                       R8 K22 [PROTO_4]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R8 R7 K17 ["useParties"]
       55 DUPCLOSURE                       R8 K23 [PROTO_5]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R8 R7 K18 ["usePlayerMappings"]
       60 RETURN                           R7 1
