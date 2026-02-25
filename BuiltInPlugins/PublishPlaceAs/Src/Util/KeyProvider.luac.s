PROTO_0:
        0 LOADK                            R0 K0 ["OptInLocations"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["China"]
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R0 K0 ["status"]
        1 RETURN                           R0 1

PROTO_3:
        0 LOADK                            R0 K0 ["region"]
        1 RETURN                           R0 1

PROTO_4:
        0 LOADK                            R0 K0 ["PublishPlaceAs"]
        1 RETURN                           R0 1

PROTO_5:
        0 LOADK                            R0 K0 ["plugin"]
        1 RETURN                           R0 1

PROTO_6:
        0 LOADK                            R0 K0 ["context"]
        1 RETURN                           R0 1

PROTO_7:
        0 LOADK                            R0 K0 ["LuobuStudioDevPublish"]
        1 RETURN                           R0 1

PROTO_8:
        0 LOADK                            R0 K0 ["TermsOfUseDialog"]
        1 RETURN                           R0 1

PROTO_9:
        0 LOADK                            R0 K0 ["selected"]
        1 RETURN                           R0 1

PROTO_10:
        0 LOADK                            R0 K0 ["CheckboxToggle"]
        1 RETURN                           R0 1

PROTO_11:
        0 LOADK                            R0 K0 ["buttonClicked"]
        1 RETURN                           R0 1

PROTO_12:
        0 LOADK                            R0 K0 ["CreateNewGame"]
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["getOptInLocationsKeyName"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["getChinaKeyName"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["getStatusKeyName"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["getRegionKeyName"]
       15 DUPCLOSURE                       R1 K8 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K9 ["getPublishPlaceAsKeyName"]
       18 DUPCLOSURE                       R1 K10 [PROTO_5]
       19 SETTABLEKS                       R1 R0 K11 ["getPluginKeyName"]
       21 DUPCLOSURE                       R1 K12 [PROTO_6]
       22 SETTABLEKS                       R1 R0 K13 ["getContextKeyName"]
       24 DUPCLOSURE                       R1 K14 [PROTO_7]
       25 SETTABLEKS                       R1 R0 K15 ["getLuobuStudioDevPublishKeyName"]
       27 DUPCLOSURE                       R1 K16 [PROTO_8]
       28 SETTABLEKS                       R1 R0 K17 ["getTermsOfUseDialogKeyName"]
       30 DUPCLOSURE                       R1 K18 [PROTO_9]
       31 SETTABLEKS                       R1 R0 K19 ["getSelectedKeyName"]
       33 DUPCLOSURE                       R1 K20 [PROTO_10]
       34 SETTABLEKS                       R1 R0 K21 ["getCheckboxToggleKeyName"]
       36 DUPCLOSURE                       R1 K22 [PROTO_11]
       37 SETTABLEKS                       R1 R0 K23 ["getButtonClickedKeyName"]
       39 DUPCLOSURE                       R1 K24 [PROTO_12]
       40 SETTABLEKS                       R1 R0 K25 ["getCreateNewGameKeyName"]
       42 RETURN                           R0 1
