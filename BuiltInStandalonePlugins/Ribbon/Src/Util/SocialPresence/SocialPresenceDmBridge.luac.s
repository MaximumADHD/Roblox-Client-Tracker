PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetCollaboratorsList"]
        3 CALL                             R0 1 1
        4 NEWTABLE                         R1 0 0
        6 GETIMPORT                        R2 K2 [ipairs]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 3
       10 FORGPREP_INEXT                   R2
       11 DUPTABLE                         R7 K7 [{"UserId", "CollaboratorColor3", "Username", "IsIdle"}]
       12 GETTABLEKS                       R8 R6 K3 ["UserId"]
       14 SETTABLEKS                       R8 R7 K3 ["UserId"]
       16 GETTABLEKS                       R8 R6 K4 ["CollaboratorColor3"]
       18 SETTABLEKS                       R8 R7 K4 ["CollaboratorColor3"]
       20 GETTABLEKS                       R8 R6 K5 ["Username"]
       22 SETTABLEKS                       R8 R7 K5 ["Username"]
       24 GETTABLEKS                       R8 R6 K6 ["IsIdle"]
       26 SETTABLEKS                       R8 R7 K6 ["IsIdle"]
       28 SETTABLE                         R7 R1 R5
       29 FORGLOOP                         R2 2 [inext] ; [-19]
       31 GETUPVAL                         R2 1
       32 LOADK                            R4 K8 ["UpdateCollaborators"]
       33 MOVE                             R5 R1
       34 NAMECALL                         R2 R2 K9 ["Invoke"]
       36 CALL                             R2 3 0
       37 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["CollaboratorsService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 GETTABLEKS                       R3 R1 K4 ["CollaboratorInstanceCreatedSignal"]
       11 MOVE                             R5 R2
       12 NAMECALL                         R3 R3 K5 ["Connect"]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R1 K6 ["CollaboratorInstanceDestroyedSignal"]
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R3 K5 ["Connect"]
       20 CALL                             R3 2 0
       21 GETTABLEKS                       R3 R1 K7 ["CollaboratorIdleUpdate"]
       23 MOVE                             R5 R2
       24 NAMECALL                         R3 R3 K5 ["Connect"]
       26 CALL                             R3 2 0
       27 LOADK                            R5 K8 ["RequestAssetCollaborators"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R2
       30 NAMECALL                         R3 R0 K9 ["OnInvoke"]
       32 CALL                             R3 3 0
       33 MOVE                             R3 R2
       34 CALL                             R3 0 0
       35 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["RequestAssetCollaborators"]
        1 NAMECALL                         R1 R0 K1 ["Invoke"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R4 K0 ["UpdateCollaborators"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["OnInvoke"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_5:
        0 LOADK                            R4 K0 ["DmChanged"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["OnInvoke"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K12 [{"initAssetDm", "requestAssetCollaborators", "connectOnUpdateCollaborators", "connectOnDmChange"}]
       15 DUPCLOSURE                       R3 K13 [PROTO_2]
       16 SETTABLEKS                       R3 R2 K8 ["initAssetDm"]
       18 DUPCLOSURE                       R3 K14 [PROTO_3]
       19 SETTABLEKS                       R3 R2 K9 ["requestAssetCollaborators"]
       21 DUPCLOSURE                       R3 K15 [PROTO_4]
       22 SETTABLEKS                       R3 R2 K10 ["connectOnUpdateCollaborators"]
       24 DUPCLOSURE                       R3 K16 [PROTO_5]
       25 SETTABLEKS                       R3 R2 K11 ["connectOnDmChange"]
       27 RETURN                           R2 1
