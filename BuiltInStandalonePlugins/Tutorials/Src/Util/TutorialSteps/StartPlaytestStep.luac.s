PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["complete"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R1 K1 ["startPlaying"]
        6 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        8 DUPTABLE                         R3 K6 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
        9 GETUPVAL                         R4 0
       10 SETTABLEKS                       R4 R3 K2 ["TargetWidgetUri"]
       12 GETIMPORT                        R4 K9 [Vector2.new]
       14 LOADN                            R5 0
       15 LOADN                            R6 0
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K3 ["SubjectAnchorPoint"]
       19 GETIMPORT                        R4 K9 [Vector2.new]
       21 LOADN                            R5 0
       22 LOADN                            R6 1
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K4 ["TargetAnchorPoint"]
       26 GETIMPORT                        R4 K9 [Vector2.new]
       28 LOADN                            R5 0
       29 LOADN                            R6 20
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K5 ["Offset"]
       33 NAMECALL                         R1 R1 K10 ["attachTo"]
       35 CALL                             R1 2 0
       36 GETTABLEKS                       R1 R0 K0 ["tutorial"]
       38 GETTABLEKS                       R1 R1 K11 ["Spotlight"]
       40 GETUPVAL                         R3 0
       41 NAMECALL                         R1 R1 K12 ["ApplyHighlightAsync"]
       43 CALL                             R1 2 0
       44 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["tutorial"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R1 K1 ["startPlaying"]
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TutorialStep"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["extend"]
       12 LOADK                            R2 K7 ["StartPlaytest"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K17 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "LeftMezzanine/LaunchTestMode_TestAndTestHere"}]
       15 DUPCLOSURE                       R3 K18 [PROTO_1]
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R3 R1 K19 ["bind"]
       19 DUPCLOSURE                       R3 K20 [PROTO_2]
       20 SETTABLEKS                       R3 R1 K21 ["unbind"]
       22 RETURN                           R1 1
