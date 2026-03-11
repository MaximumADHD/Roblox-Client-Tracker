PROTO_0:
        0 DUPTABLE                         R2 K3 [{"Id", "Name", "Subject"}]
        1 GETTABLEKS                       R3 R0 K0 ["Id"]
        3 SETTABLEKS                       R3 R2 K0 ["Id"]
        5 GETTABLEKS                       R3 R0 K4 ["Username"]
        7 SETTABLEKS                       R3 R2 K1 ["Name"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K5 ["PermissionsSubject"]
       12 GETTABLEKS                       R3 R4 K6 ["User"]
       14 SETTABLEKS                       R3 R2 K2 ["Subject"]
       16 RETURN                           R2 1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["map"]
        6 MOVE                             R3 R0
        7 DUPCLOSURE                       R4 K1 [PROTO_0]
        8 CAPTURE                          UPVAL U2
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 1
        3 DUPTABLE                         R3 K4 [{"Id", "Name", "Uri", "Subject"}]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["Id"]
        7 SETTABLEKS                       R4 R3 K0 ["Id"]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K1 ["Name"]
       12 SETTABLEKS                       R4 R3 K1 ["Name"]
       14 SETTABLEKS                       R0 R3 K2 ["Uri"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K5 ["PermissionsSubject"]
       19 GETTABLEKS                       R4 R5 K6 ["Group"]
       21 SETTABLEKS                       R4 R3 K3 ["Subject"]
       23 SETLIST                          R2 R3 1 [1]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 MOVE                             R8 R5
        6 NEWCLOSURE                       R9 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R5
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R6 R6 K0 ["getThumbnailForScopeAsync"]
       12 CALL                             R6 3 0
       13 FORGLOOP                         R1 2 ; [-10]
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CALL                             R3 1 0
        6 NEWCLOSURE                       R5 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R3 R0 K0 ["fetchGroupsAsync"]
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Networking"]
       20 GETTABLEKS                       R3 R4 K10 ["getFriendsAsync"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_4]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
