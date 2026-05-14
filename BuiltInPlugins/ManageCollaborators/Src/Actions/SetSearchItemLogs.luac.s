PROTO_0:
        0 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Collab8766_LogCollabSearchItemClickedEventV4"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+25]
        8 GETIMPORT                        R1 K5 [script]
       10 LOADK                            R3 K6 ["ManageCollaborators"]
       11 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K9 [require]
       16 GETTABLEKS                       R3 R1 K10 ["Packages"]
       18 GETTABLEKS                       R3 R3 K11 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R2 R2 K12 ["Util"]
       23 GETTABLEKS                       R2 R2 K13 ["Action"]
       25 MOVE                             R3 R2
       26 GETIMPORT                        R4 K5 [script]
       28 GETTABLEKS                       R4 R4 K14 ["Name"]
       30 DUPCLOSURE                       R5 K15 [PROTO_0]
       31 CALL                             R3 2 -1
       32 RETURN                           R3 -1
       33 RETURN                           R0 0
