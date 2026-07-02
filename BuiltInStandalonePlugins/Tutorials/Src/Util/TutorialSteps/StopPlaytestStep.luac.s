PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["complete"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R1 K1 ["stopPlaying"]
        6 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        8 NAMECALL                         R1 R1 K2 ["resetAttachment"]
       10 CALL                             R1 1 0
       11 GETTABLEKS                       R1 R0 K0 ["tutorial"]
       13 GETTABLEKS                       R1 R1 K3 ["Spotlight"]
       15 GETUPVAL                         R3 0
       16 NAMECALL                         R1 R1 K4 ["ApplyHighlightAsync"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R1 K1 ["stopPlaying"]
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TutorialStep"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["extend"]
       12 LOADK                            R2 K7 ["StopPlaytest"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K17 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "LeftMezzanine/PlayControls/3"}]
       15 DUPCLOSURE                       R3 K18 [PROTO_1]
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R3 R1 K19 ["bind"]
       19 DUPCLOSURE                       R3 K20 [PROTO_2]
       20 SETTABLEKS                       R3 R1 K21 ["unbind"]
       22 RETURN                           R1 1
