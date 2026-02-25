PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        3 GETTABLEKS                       R2 R3 K1 ["CREATE_NEW_GAME"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["SCREENS"]
        9 GETTABLEKS                       R2 R3 K2 ["CHOOSE_GAME"]
       11 DUPTABLE                         R3 K12 [{"placeInfo", "gameInfo", "groupInfo", "current", "changed", "errors", "publishInfo", "isPublishing", "screen"}]
       12 DUPTABLE                         R4 K15 [{"places", "parentGame"}]
       13 NEWTABLE                         R5 0 0
       15 SETTABLEKS                       R5 R4 K13 ["places"]
       17 NEWTABLE                         R5 0 0
       19 SETTABLEKS                       R5 R4 K14 ["parentGame"]
       21 SETTABLEKS                       R4 R3 K3 ["placeInfo"]
       23 DUPTABLE                         R4 K17 [{"games"}]
       24 NEWTABLE                         R5 0 0
       26 SETTABLEKS                       R5 R4 K16 ["games"]
       28 SETTABLEKS                       R4 R3 K4 ["gameInfo"]
       30 DUPTABLE                         R4 K19 [{"groups"}]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K18 ["groups"]
       35 SETTABLEKS                       R4 R3 K5 ["groupInfo"]
       37 NEWTABLE                         R4 0 0
       39 SETTABLEKS                       R4 R3 K6 ["current"]
       41 DUPTABLE                         R4 K25 [{"name", "description", "genre", "playableDevices", "OptInLocations"}]
       42 SETTABLEKS                       R0 R4 K20 ["name"]
       44 LOADK                            R5 K26 [""]
       45 SETTABLEKS                       R5 R4 K21 ["description"]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R6 R7 K27 ["GENRE_IDS"]
       50 GETTABLEN                        R5 R6 1
       51 SETTABLEKS                       R5 R4 K22 ["genre"]
       53 DUPTABLE                         R5 K32 [{"Computer", "Phone", "Tablet", "VR"}]
       54 LOADB                            R6 1
       55 SETTABLEKS                       R6 R5 K28 ["Computer"]
       57 LOADB                            R6 1
       58 SETTABLEKS                       R6 R5 K29 ["Phone"]
       60 LOADB                            R6 1
       61 SETTABLEKS                       R6 R5 K30 ["Tablet"]
       63 LOADB                            R6 1
       64 SETTABLEKS                       R6 R5 K31 ["VR"]
       66 SETTABLEKS                       R5 R4 K23 ["playableDevices"]
       68 GETUPVAL                         R5 1
       69 SETTABLEKS                       R5 R4 K24 ["OptInLocations"]
       71 SETTABLEKS                       R4 R3 K7 ["changed"]
       73 NEWTABLE                         R4 0 0
       75 SETTABLEKS                       R4 R3 K8 ["errors"]
       77 DUPTABLE                         R4 K37 [{"id", "name", "parentGameName", "parentGameId", "settings"}]
       78 LOADN                            R5 0
       79 SETTABLEKS                       R5 R4 K33 ["id"]
       81 LOADK                            R5 K26 [""]
       82 SETTABLEKS                       R5 R4 K20 ["name"]
       84 LOADK                            R5 K26 [""]
       85 SETTABLEKS                       R5 R4 K34 ["parentGameName"]
       87 LOADN                            R5 0
       88 SETTABLEKS                       R5 R4 K35 ["parentGameId"]
       90 NEWTABLE                         R5 0 0
       92 SETTABLEKS                       R5 R4 K36 ["settings"]
       94 SETTABLEKS                       R4 R3 K9 ["publishInfo"]
       96 LOADB                            R4 0
       97 SETTABLEKS                       R4 R3 K10 ["isPublishing"]
       99 SETTABLEKS                       R2 R3 K11 ["screen"]
      101 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Resources"]
       15 GETTABLEKS                       R2 R3 K7 ["Constants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETIMPORT                        R5 K1 [script]
       22 GETTABLEKS                       R4 R5 K2 ["Parent"]
       24 GETTABLEKS                       R3 R4 K8 ["Action"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R7 R0 K5 ["Src"]
       31 GETTABLEKS                       R6 R7 K9 ["Util"]
       33 GETTABLEKS                       R5 R6 K10 ["PublishPlaceAsUtilities"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R3 R4 K11 ["shouldShowDevPublishLocations"]
       38 LOADNIL                          R4
       39 MOVE                             R5 R3
       40 CALL                             R5 0 1
       41 JUMPIFNOT                        R5 ; [+2]
       42 NEWTABLE                         R4 0 0
       44 MOVE                             R5 R2
       45 GETIMPORT                        R7 K1 [script]
       47 GETTABLEKS                       R6 R7 K12 ["Name"]
       49 NEWCLOSURE                       R7 P0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          REF R4
       52 CALL                             R5 2 -1
       53 CLOSEUPVALS                      R4
       54 RETURN                           R5 -1
