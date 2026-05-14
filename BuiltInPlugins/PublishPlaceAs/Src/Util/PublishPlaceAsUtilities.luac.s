PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ShowOptInLocations"]
        3 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K1 [pairs]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETUPVAL                         R7 0
       10 GETTABLE                         R6 R5 R7
       11 GETUPVAL                         R8 1
       12 GETTABLE                         R7 R5 R8
       13 JUMPIFNOTEQKS                    R6 K2 ["China"] ; [+5]
       15 JUMPIFNOTEQKS                    R7 K3 ["Approved"] ; [+3]
       17 LOADB                            R8 1
       18 RETURN                           R8 1
       19 FORGLOOP                         R1 2 ; [-11]
       21 LOADB                            R1 0
       22 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PlayerAppDownloadLink"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R2 2 0
        2 GETUPVAL                         R3 0
        3 SETTABLE                         R0 R2 R3
        4 GETUPVAL                         R3 1
        5 SETTABLE                         R1 R2 R3
        6 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R5 0
        1 NEWTABLE                         R4 2 0
        3 GETUPVAL                         R6 1
        4 SETTABLE                         R5 R4 R6
        5 GETUPVAL                         R6 2
        6 SETTABLE                         R2 R4 R6
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       10 GETTABLEKS                       R5 R5 K1 ["join"]
       12 MOVE                             R6 R4
       13 MOVE                             R7 R3
       14 CALL                             R5 2 1
       15 MOVE                             R4 R5
       16 GETUPVAL                         R5 4
       17 MOVE                             R7 R0
       18 MOVE                             R8 R4
       19 MOVE                             R9 R1
       20 NAMECALL                         R5 R5 K2 ["reportInfluxSeries"]
       22 CALL                             R5 4 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R3 K2 [Vector2.new]
        2 LOADN                            R4 136
        3 LOADN                            R5 136
        4 CALL                             R3 2 1
        5 GETIMPORT                        R4 K4 [game]
        7 LOADK                            R6 K5 ["TextService"]
        8 NAMECALL                         R4 R4 K6 ["GetService"]
       10 CALL                             R4 2 1
       11 MOVE                             R6 R0
       12 MOVE                             R7 R1
       13 MOVE                             R8 R2
       14 MOVE                             R9 R3
       15 NAMECALL                         R4 R4 K7 ["GetTextSize"]
       17 CALL                             R4 5 -1
       18 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DevPublishChinaRequirementsLink"]
        4 NAMECALL                         R0 R0 K3 ["GetFastString"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RbxAnalyticsService"]
       10 NAMECALL                         R1 R1 K5 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["PluginPolicyService"]
       16 NAMECALL                         R2 R2 K5 ["GetService"]
       18 CALL                             R2 2 1
       19 LOADK                            R4 K7 ["PublishPlaceAs"]
       20 NAMECALL                         R2 R2 K8 ["getPluginPolicy"]
       22 CALL                             R2 2 1
       23 GETIMPORT                        R3 K10 [script]
       25 GETTABLEKS                       R3 R3 K11 ["Parent"]
       27 GETTABLEKS                       R3 R3 K11 ["Parent"]
       29 GETTABLEKS                       R3 R3 K11 ["Parent"]
       31 GETIMPORT                        R4 K13 [require]
       33 GETTABLEKS                       R5 R3 K14 ["Packages"]
       35 GETTABLEKS                       R5 R5 K15 ["Cryo"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K13 [require]
       40 GETTABLEKS                       R6 R3 K16 ["Src"]
       42 GETTABLEKS                       R6 R6 K17 ["Util"]
       44 GETTABLEKS                       R6 R6 K18 ["KeyProvider"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R5 K19 ["getContextKeyName"]
       49 CALL                             R6 0 1
       50 GETTABLEKS                       R7 R5 K20 ["getPluginKeyName"]
       52 CALL                             R7 0 1
       53 GETTABLEKS                       R8 R5 K21 ["getPublishPlaceAsKeyName"]
       55 CALL                             R8 0 1
       56 GETTABLEKS                       R9 R5 K22 ["getRegionKeyName"]
       58 CALL                             R9 0 1
       59 GETTABLEKS                       R10 R5 K23 ["getStatusKeyName"]
       61 CALL                             R10 0 1
       62 NEWTABLE                         R11 8 0
       64 DUPCLOSURE                       R12 K24 [PROTO_0]
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R12 R11 K25 ["shouldShowDevPublishLocations"]
       68 DUPCLOSURE                       R12 K26 [PROTO_1]
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R10
       71 SETTABLEKS                       R12 R11 K27 ["getIsOptInChina"]
       73 DUPCLOSURE                       R12 K28 [PROTO_2]
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R12 R11 K29 ["getOptInLocationsRequirementsLink"]
       77 DUPCLOSURE                       R12 K30 [PROTO_3]
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R12 R11 K31 ["getPlayerAppDownloadLink"]
       81 DUPCLOSURE                       R12 K32 [PROTO_4]
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R6
       84 DUPCLOSURE                       R13 K33 [PROTO_5]
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R13 R11 K34 ["sendAnalyticsToKibana"]
       92 DUPCLOSURE                       R13 K35 [PROTO_6]
       93 SETTABLEKS                       R13 R11 K36 ["calculateTextSize"]
       95 RETURN                           R11 1
