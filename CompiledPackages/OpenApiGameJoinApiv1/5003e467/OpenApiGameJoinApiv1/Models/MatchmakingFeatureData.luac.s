MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETIMPORT                        R2 K1 [require]
        9 LOADK                            R3 K4 ["./FriendOfFriend"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K1 [require]
       13 LOADK                            R4 K5 ["./FriendRecommendation"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R1 K6 ["object"]
       17 DUPTABLE                         R5 K11 [{"FriendOfFriends", "FriendRecommendations", "PlaceHistoricFeatures", "UserPlaceHistoryFeatures"}]
       18 GETTABLEKS                       R6 R1 K12 ["arrayOf"]
       20 MOVE                             R7 R2
       21 CALL                             R6 1 1
       22 SETTABLEKS                       R6 R5 K7 ["FriendOfFriends"]
       24 GETTABLEKS                       R6 R1 K12 ["arrayOf"]
       26 MOVE                             R7 R3
       27 CALL                             R6 1 1
       28 SETTABLEKS                       R6 R5 K8 ["FriendRecommendations"]
       30 GETTABLEKS                       R6 R1 K13 ["dictOf"]
       32 GETTABLEKS                       R7 R1 K14 ["Number"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K9 ["PlaceHistoricFeatures"]
       37 GETTABLEKS                       R6 R1 K13 ["dictOf"]
       39 GETTABLEKS                       R7 R1 K14 ["Number"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K10 ["UserPlaceHistoryFeatures"]
       44 CALL                             R4 1 -1
       45 RETURN                           R4 -1
