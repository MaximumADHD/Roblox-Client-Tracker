PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R2 K1 ["CREATE_NEW_GAME"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["SCREENS"]
        9 GETTABLEKS                       R2 R3 K2 ["CHOOSE_GAME"]
       11 DUPTABLE                         R3 K13 [{["placeInfo"], ["gameInfo"], ["groupInfo"], ["current"], ["changed"], ["errors"], ["publishInfo"], ["isPublishing"] = False, ["screen"]}]
       12 DUPTABLE                         R4 K16 [{"places", "parentGame"}]
       13 NEWTABLE                         R5 0 0
       15 SETTABLEKS                       R5 R4 K14 ["places"]
       17 NEWTABLE                         R5 0 0
       19 SETTABLEKS                       R5 R4 K15 ["parentGame"]
       21 SETTABLEKS                       R4 R3 K3 ["placeInfo"]
       23 DUPTABLE                         R4 K18 [{"games"}]
       24 NEWTABLE                         R5 0 0
       26 SETTABLEKS                       R5 R4 K17 ["games"]
       28 SETTABLEKS                       R4 R3 K4 ["gameInfo"]
       30 DUPTABLE                         R4 K20 [{"groups"}]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K19 ["groups"]
       35 SETTABLEKS                       R4 R3 K5 ["groupInfo"]
       37 NEWTABLE                         R4 0 0
       39 SETTABLEKS                       R4 R3 K6 ["current"]
       41 DUPTABLE                         R4 K27 [{["name"], ["description"] = "", ["genre"], ["playableDevices"], ["OptInLocations"]}]
       42 SETTABLEKS                       R0 R4 K21 ["name"]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K28 ["GENRE_IDS"]
       47 GETTABLEN                        R5 R6 1
       48 SETTABLEKS                       R5 R4 K24 ["genre"]
       50 DUPTABLE                         R5 K34 [{["Computer"] = True, ["Phone"] = True, ["Tablet"] = True, ["VR"] = True}]
       51 SETTABLEKS                       R5 R4 K25 ["playableDevices"]
       53 GETUPVAL                         R5 1
       54 SETTABLEKS                       R5 R4 K26 ["OptInLocations"]
       56 SETTABLEKS                       R4 R3 K7 ["changed"]
       58 NEWTABLE                         R4 0 0
       60 SETTABLEKS                       R4 R3 K8 ["errors"]
       62 DUPTABLE                         R4 K40 [{["id"] = 0, ["name"] = "", ["parentGameName"] = "", ["parentGameId"] = 0, ["settings"]}]
       63 NEWTABLE                         R5 0 0
       65 SETTABLEKS                       R5 R4 K39 ["settings"]
       67 SETTABLEKS                       R4 R3 K9 ["publishInfo"]
       69 SETTABLEKS                       R2 R3 K12 ["screen"]
       71 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Resources"]
       15 GETTABLEKS                       R2 R2 K7 ["Constants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETIMPORT                        R3 K1 [script]
       22 GETTABLEKS                       R3 R3 K2 ["Parent"]
       24 GETTABLEKS                       R3 R3 K8 ["Action"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K9 ["Util"]
       33 GETTABLEKS                       R4 R4 K10 ["PublishPlaceAsUtilities"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R3 R3 K11 ["shouldShowDevPublishLocations"]
       38 LOADNIL                          R4
       39 MOVE                             R5 R3
       40 CALL                             R5 0 1
       41 JUMPIFNOT                        R5 ; [+2]
       42 NEWTABLE                         R4 0 0
       44 MOVE                             R5 R2
       45 GETIMPORT                        R6 K1 [script]
       47 GETTABLEKS                       R6 R6 K12 ["Name"]
       49 NEWCLOSURE                       R7 P0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          REF R4
       52 CALL                             R5 2 -1
       53 CLOSEUPVALS                      R4
       54 RETURN                           R5 -1
