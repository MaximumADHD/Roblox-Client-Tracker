PROTO_0:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["Provider"]
       11 DUPTABLE                         R5 K4 [{"value"}]
       12 DUPTABLE                         R6 K9 [{"pageController", "contributorsController", "placesController", "refresh"}]
       13 GETUPVAL                         R7 2
       14 MOVE                             R8 R1
       15 CALL                             R7 1 1
       16 SETTABLEKS                       R7 R6 K5 ["pageController"]
       18 GETUPVAL                         R7 3
       19 MOVE                             R8 R1
       20 CALL                             R7 1 1
       21 SETTABLEKS                       R7 R6 K6 ["contributorsController"]
       23 GETUPVAL                         R7 4
       24 MOVE                             R8 R1
       25 CALL                             R7 1 1
       26 SETTABLEKS                       R7 R6 K7 ["placesController"]
       28 NEWCLOSURE                       R7 P0
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R7 R6 K8 ["refresh"]
       32 SETTABLEKS                       R6 R5 K3 ["value"]
       34 GETTABLEKS                       R6 R0 K10 ["children"]
       36 CALL                             R3 3 -1
       37 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Contexts"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["ControllerContext"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Hooks"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K12 ["usePageController"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R4 K13 ["useContributorsController"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R4 K14 ["usePlacesController"]
       41 CALL                             R7 1 1
       42 DUPCLOSURE                       R8 K15 [PROTO_2]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R7
       48 RETURN                           R8 1
