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
        2 LOADN                            R4 5000
        3 LOADN                            R5 5000
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
       13 GETIMPORT                        R2 K7 [script]
       15 GETTABLEKS                       R2 R2 K8 ["Parent"]
       17 GETTABLEKS                       R2 R2 K8 ["Parent"]
       19 GETTABLEKS                       R2 R2 K8 ["Parent"]
       21 GETIMPORT                        R3 K10 [require]
       23 GETTABLEKS                       R4 R2 K11 ["Packages"]
       25 GETTABLEKS                       R4 R4 K12 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K11 ["Packages"]
       32 GETTABLEKS                       R5 R5 K13 ["TestLoader"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R4 K14 ["isFTF"]
       37 CALL                             R6 0 1
       38 JUMPIFNOT                        R6 ; [+6]
       39 DUPTABLE                         R5 K18 [{["ShowOptInLocations"] = False, ["PlayerAppDownloadLink"]}]
       40 NEWTABLE                         R6 0 0
       42 SETTABLEKS                       R6 R5 K17 ["PlayerAppDownloadLink"]
       44 JUMP                             ; [+10]
       45 GETIMPORT                        R5 K1 [game]
       47 LOADK                            R7 K19 ["PluginPolicyService"]
       48 NAMECALL                         R5 R5 K5 ["GetService"]
       50 CALL                             R5 2 1
       51 LOADK                            R7 K20 ["PublishPlaceAs"]
       52 NAMECALL                         R5 R5 K21 ["getPluginPolicy"]
       54 CALL                             R5 2 1
       55 GETIMPORT                        R6 K10 [require]
       57 GETTABLEKS                       R7 R2 K22 ["Src"]
       59 GETTABLEKS                       R7 R7 K23 ["Util"]
       61 GETTABLEKS                       R7 R7 K24 ["KeyProvider"]
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R7 R6 K25 ["getContextKeyName"]
       66 CALL                             R7 0 1
       67 GETTABLEKS                       R8 R6 K26 ["getPluginKeyName"]
       69 CALL                             R8 0 1
       70 GETTABLEKS                       R9 R6 K27 ["getPublishPlaceAsKeyName"]
       72 CALL                             R9 0 1
       73 GETTABLEKS                       R10 R6 K28 ["getRegionKeyName"]
       75 CALL                             R10 0 1
       76 GETTABLEKS                       R11 R6 K29 ["getStatusKeyName"]
       78 CALL                             R11 0 1
       79 NEWTABLE                         R12 8 0
       81 DUPCLOSURE                       R13 K30 [PROTO_0]
       82 CAPTURE                          VAL R5
       83 SETTABLEKS                       R13 R12 K31 ["shouldShowDevPublishLocations"]
       85 DUPCLOSURE                       R13 K32 [PROTO_1]
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R11
       88 SETTABLEKS                       R13 R12 K33 ["getIsOptInChina"]
       90 DUPCLOSURE                       R13 K34 [PROTO_2]
       91 CAPTURE                          VAL R0
       92 SETTABLEKS                       R13 R12 K35 ["getOptInLocationsRequirementsLink"]
       94 DUPCLOSURE                       R13 K36 [PROTO_3]
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R13 R12 K37 ["getPlayerAppDownloadLink"]
       98 DUPCLOSURE                       R13 K38 [PROTO_4]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R7
      101 DUPCLOSURE                       R14 K39 [PROTO_5]
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R14 R12 K40 ["sendAnalyticsToKibana"]
      109 DUPCLOSURE                       R14 K41 [PROTO_6]
      110 SETTABLEKS                       R14 R12 K42 ["calculateTextSize"]
      112 RETURN                           R12 1
