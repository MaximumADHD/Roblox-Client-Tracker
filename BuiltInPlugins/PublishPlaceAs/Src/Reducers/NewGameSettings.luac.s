PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 MOVE                             R1 R2
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["isEmpty"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K0 ["isEmpty"]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 1
       20 JUMPIFEQ                         R2 R3 ; [+3]
       22 LOADB                            R2 0
       23 RETURN                           R2 1
       24 GETIMPORT                        R2 K2 [pairs]
       26 MOVE                             R3 R0
       27 CALL                             R2 1 3
       28 FORGPREP_NEXT                    R2
       29 GETTABLE                         R7 R1 R5
       30 JUMPIFEQ                         R7 R6 ; [+3]
       32 LOADB                            R7 0
       33 RETURN                           R7 1
       34 FORGLOOP                         R2 2 ; [-6]
       36 GETIMPORT                        R2 K2 [pairs]
       38 MOVE                             R3 R1
       39 CALL                             R2 1 3
       40 FORGPREP_NEXT                    R2
       41 GETTABLE                         R7 R0 R5
       42 JUMPIFEQ                         R7 R6 ; [+3]
       44 LOADB                            R7 0
       45 RETURN                           R7 1
       46 FORGLOOP                         R2 2 ; [-6]
       48 LOADB                            R2 1
       49 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["value"]
        2 GETTABLEKS                       R4 R0 K1 ["current"]
        4 GETTABLEKS                       R5 R1 K2 ["setting"]
        6 GETTABLE                         R3 R4 R5
        7 JUMPIFNOTEQ                      R2 R3 ; [+4]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["None"]
       12 FASTCALL1                        TYPE R2 ; [+3]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K5 [type]
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKS                    R3 K6 ["table"] ; [+13]
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R2
       21 GETTABLEKS                       R6 R0 K1 ["current"]
       23 GETTABLEKS                       R7 R1 K2 ["setting"]
       25 GETTABLE                         R5 R6 R7
       26 CALL                             R3 2 1
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K3 ["None"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K7 ["Dictionary"]
       34 GETTABLEKS                       R3 R4 K8 ["join"]
       36 MOVE                             R4 R0
       37 DUPTABLE                         R5 K11 [{"changed", "errors"}]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R7 R8 K7 ["Dictionary"]
       41 GETTABLEKS                       R6 R7 K8 ["join"]
       43 GETTABLEKS                       R7 R0 K9 ["changed"]
       45 NEWTABLE                         R8 1 0
       47 GETTABLEKS                       R9 R1 K2 ["setting"]
       49 SETTABLE                         R2 R8 R9
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K9 ["changed"]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R7 R8 K7 ["Dictionary"]
       56 GETTABLEKS                       R6 R7 K8 ["join"]
       58 GETTABLEKS                       R7 R0 K10 ["errors"]
       60 NEWTABLE                         R8 1 0
       62 GETTABLEKS                       R9 R1 K2 ["setting"]
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R10 R11 K3 ["None"]
       67 SETTABLE                         R10 R8 R9
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K10 ["errors"]
       71 CALL                             R3 2 -1
       72 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"errors"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["errors"]
       14 GETTABLEKS                       R7 R1 K2 ["errors"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["errors"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"current", "changed", "errors"}]
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R6 K1 ["join"]
       12 GETTABLEKS                       R6 R0 K2 ["current"]
       14 GETTABLEKS                       R7 R1 K2 ["current"]
       16 CALL                             R5 2 1
       17 SETTABLEKS                       R5 R4 K2 ["current"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       22 GETTABLEKS                       R5 R6 K1 ["join"]
       24 GETTABLEKS                       R6 R0 K3 ["changed"]
       26 GETTABLEKS                       R7 R1 K3 ["changed"]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K3 ["changed"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       34 GETTABLEKS                       R5 R6 K1 ["join"]
       36 GETTABLEKS                       R6 R0 K4 ["errors"]
       38 GETTABLEKS                       R7 R1 K4 ["errors"]
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K4 ["errors"]
       43 CALL                             R2 2 -1
       44 RETURN                           R2 -1

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
       20 GETTABLEKS                       R4 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R4 K9 ["Rodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K8 ["Packages"]
       29 GETTABLEKS                       R4 R5 K10 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R8 R0 K5 ["Src"]
       36 GETTABLEKS                       R7 R8 K11 ["Util"]
       38 GETTABLEKS                       R6 R7 K12 ["PublishPlaceAsUtilities"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R4 R5 K13 ["shouldShowDevPublishLocations"]
       43 LOADNIL                          R5
       44 MOVE                             R6 R4
       45 CALL                             R6 0 1
       46 JUMPIFNOT                        R6 ; [+2]
       47 NEWTABLE                         R5 0 0
       49 DUPCLOSURE                       R6 K14 [PROTO_0]
       50 CAPTURE                          VAL R3
       51 DUPTABLE                         R7 K18 [{"current", "changed", "errors"}]
       52 NEWTABLE                         R8 0 0
       54 SETTABLEKS                       R8 R7 K15 ["current"]
       56 DUPTABLE                         R8 K28 [{"name", "creatorId", "description", "genre", "playableDevices", "teamCreateEnabled", "OptInLocations", "isActive", "isFriendsOnly"}]
       57 LOADK                            R9 K29 ["Untitled Game"]
       58 SETTABLEKS                       R9 R8 K19 ["name"]
       60 LOADN                            R9 0
       61 SETTABLEKS                       R9 R8 K20 ["creatorId"]
       63 LOADK                            R9 K30 [""]
       64 SETTABLEKS                       R9 R8 K21 ["description"]
       66 GETTABLEKS                       R10 R1 K31 ["GENRE_IDS"]
       68 GETTABLEN                        R9 R10 1
       69 SETTABLEKS                       R9 R8 K22 ["genre"]
       71 DUPTABLE                         R9 K36 [{"Computer", "Phone", "Tablet", "VR"}]
       72 LOADB                            R10 1
       73 SETTABLEKS                       R10 R9 K32 ["Computer"]
       75 LOADB                            R10 1
       76 SETTABLEKS                       R10 R9 K33 ["Phone"]
       78 LOADB                            R10 1
       79 SETTABLEKS                       R10 R9 K34 ["Tablet"]
       81 LOADB                            R10 1
       82 SETTABLEKS                       R10 R9 K35 ["VR"]
       84 SETTABLEKS                       R9 R8 K23 ["playableDevices"]
       86 LOADB                            R9 1
       87 SETTABLEKS                       R9 R8 K24 ["teamCreateEnabled"]
       89 SETTABLEKS                       R5 R8 K25 ["OptInLocations"]
       91 LOADB                            R9 0
       92 SETTABLEKS                       R9 R8 K26 ["isActive"]
       94 LOADB                            R9 0
       95 SETTABLEKS                       R9 R8 K27 ["isFriendsOnly"]
       97 SETTABLEKS                       R8 R7 K16 ["changed"]
       99 NEWTABLE                         R8 0 0
      101 SETTABLEKS                       R8 R7 K17 ["errors"]
      103 GETTABLEKS                       R8 R2 K37 ["createReducer"]
      105 MOVE                             R9 R7
      106 DUPTABLE                         R10 K41 [{"AddChange", "AddErrors", "ResetInfo"}]
      107 DUPCLOSURE                       R11 K42 [PROTO_1]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R6
      110 SETTABLEKS                       R11 R10 K38 ["AddChange"]
      112 DUPCLOSURE                       R11 K43 [PROTO_2]
      113 CAPTURE                          VAL R3
      114 SETTABLEKS                       R11 R10 K39 ["AddErrors"]
      116 DUPCLOSURE                       R11 K44 [PROTO_3]
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R11 R10 K40 ["ResetInfo"]
      120 CALL                             R8 2 -1
      121 RETURN                           R8 -1
