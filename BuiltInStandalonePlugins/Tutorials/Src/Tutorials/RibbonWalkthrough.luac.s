PROTO_0:
        0 DUPTABLE                         R1 K8 [{[1] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"]}]
        1 SETTABLEKS                       R0 R1 K7 ["ItemId"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 NEWTABLE                         R1 0 5
        4 DUPTABLE                         R2 K8 [{["id"] = "introduction", ["topic"] = "Introduction", ["showNext"] = True, ["spotlight"]}]
        5 DUPTABLE                         R3 K11 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
        6 DUPTABLE                         R4 K20 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Ribbon"}]
        7 SETTABLEKS                       R4 R3 K9 ["TargetWidgetUri"]
        9 SETTABLEKS                       R3 R2 K7 ["spotlight"]
       11 DUPTABLE                         R3 K24 [{["id"] = "playTestingControls", ["topic"] = "Testing", ["showNext"] = True, ["spotlight"], ["callout"]}]
       12 DUPTABLE                         R4 K11 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
       13 DUPTABLE                         R5 K26 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "LeftMezzanine/TestMode_TestAndTestHere"}]
       14 SETTABLEKS                       R5 R4 K9 ["TargetWidgetUri"]
       16 SETTABLEKS                       R4 R3 K7 ["spotlight"]
       18 DUPTABLE                         R4 K30 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
       19 DUPTABLE                         R5 K26 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "LeftMezzanine/TestMode_TestAndTestHere"}]
       20 SETTABLEKS                       R5 R4 K9 ["TargetWidgetUri"]
       22 GETIMPORT                        R5 K33 [Vector2.new]
       24 LOADN                            R6 0
       25 LOADN                            R7 0
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K27 ["SubjectAnchorPoint"]
       29 GETIMPORT                        R5 K33 [Vector2.new]
       31 LOADN                            R6 0
       32 LOADN                            R7 1
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K28 ["TargetAnchorPoint"]
       36 GETIMPORT                        R5 K33 [Vector2.new]
       38 LOADN                            R6 0
       39 LOADN                            R7 10
       40 CALL                             R5 2 1
       41 SETTABLEKS                       R5 R4 K29 ["Offset"]
       43 SETTABLEKS                       R4 R3 K23 ["callout"]
       45 DUPTABLE                         R4 K36 [{["id"] = "interfaceControls", ["topic"] = "UI", ["showNext"] = True, ["spotlight"], ["callout"]}]
       46 DUPTABLE                         R5 K11 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
       47 DUPTABLE                         R6 K38 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_UITab"}]
       48 SETTABLEKS                       R6 R5 K9 ["TargetWidgetUri"]
       50 SETTABLEKS                       R5 R4 K7 ["spotlight"]
       52 DUPTABLE                         R5 K30 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
       53 DUPTABLE                         R6 K38 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_UITab"}]
       54 SETTABLEKS                       R6 R5 K9 ["TargetWidgetUri"]
       56 GETIMPORT                        R6 K33 [Vector2.new]
       58 LOADN                            R7 0
       59 LOADN                            R8 0
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K27 ["SubjectAnchorPoint"]
       63 GETIMPORT                        R6 K33 [Vector2.new]
       65 LOADN                            R7 0
       66 LOADN                            R8 1
       67 CALL                             R6 2 1
       68 SETTABLEKS                       R6 R5 K28 ["TargetAnchorPoint"]
       70 GETIMPORT                        R6 K33 [Vector2.new]
       72 LOADN                            R7 0
       73 LOADN                            R8 10
       74 CALL                             R6 2 1
       75 SETTABLEKS                       R6 R5 K29 ["Offset"]
       77 SETTABLEKS                       R5 R4 K23 ["callout"]
       79 DUPTABLE                         R5 K41 [{["id"] = "scriptControls", ["topic"] = "Script", ["showNext"] = True, ["spotlight"], ["callout"]}]
       80 DUPTABLE                         R6 K11 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
       81 DUPTABLE                         R7 K43 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_ScriptTab"}]
       82 SETTABLEKS                       R7 R6 K9 ["TargetWidgetUri"]
       84 SETTABLEKS                       R6 R5 K7 ["spotlight"]
       86 DUPTABLE                         R6 K30 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
       87 DUPTABLE                         R7 K43 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/BuiltIn_ScriptTab"}]
       88 SETTABLEKS                       R7 R6 K9 ["TargetWidgetUri"]
       90 GETIMPORT                        R7 K33 [Vector2.new]
       92 LOADN                            R8 0
       93 LOADN                            R9 0
       94 CALL                             R7 2 1
       95 SETTABLEKS                       R7 R6 K27 ["SubjectAnchorPoint"]
       97 GETIMPORT                        R7 K33 [Vector2.new]
       99 LOADN                            R8 0
      100 LOADN                            R9 1
      101 CALL                             R7 2 1
      102 SETTABLEKS                       R7 R6 K28 ["TargetAnchorPoint"]
      104 GETIMPORT                        R7 K33 [Vector2.new]
      106 LOADN                            R8 0
      107 LOADN                            R9 10
      108 CALL                             R7 2 1
      109 SETTABLEKS                       R7 R6 K29 ["Offset"]
      111 SETTABLEKS                       R6 R5 K23 ["callout"]
      113 DUPTABLE                         R6 K46 [{["id"] = "customizationControls", ["topic"] = "Customization", ["showNext"] = True, ["spotlight"], ["callout"]}]
      114 DUPTABLE                         R7 K11 [{["TargetWidgetUri"], ["ShowHighlight"] = True}]
      115 DUPTABLE                         R8 K48 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/Reserved_Custom"}]
      116 SETTABLEKS                       R8 R7 K9 ["TargetWidgetUri"]
      118 SETTABLEKS                       R7 R6 K7 ["spotlight"]
      120 DUPTABLE                         R7 K30 [{"TargetWidgetUri", "SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
      121 DUPTABLE                         R8 K48 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "Ribbon", ["Category"] = "Widgets", ["ItemId"] = "Tabs/Reserved_Custom"}]
      122 SETTABLEKS                       R8 R7 K9 ["TargetWidgetUri"]
      124 GETIMPORT                        R8 K33 [Vector2.new]
      126 LOADN                            R9 0
      127 LOADN                            R10 0
      128 CALL                             R8 2 1
      129 SETTABLEKS                       R8 R7 K27 ["SubjectAnchorPoint"]
      131 GETIMPORT                        R8 K33 [Vector2.new]
      133 LOADN                            R9 0
      134 LOADN                            R10 1
      135 CALL                             R8 2 1
      136 SETTABLEKS                       R8 R7 K28 ["TargetAnchorPoint"]
      138 GETIMPORT                        R8 K33 [Vector2.new]
      140 LOADN                            R9 0
      141 LOADN                            R10 10
      142 CALL                             R8 2 1
      143 SETTABLEKS                       R8 R7 K29 ["Offset"]
      145 SETTABLEKS                       R7 R6 K23 ["callout"]
      147 SETLIST                          R1 R2 5 [1]
      149 DUPTABLE                         R2 K53 [{["id"] = "RibbonWalkthrough", ["steps"], ["shouldShowCompletedDialog"] = False}]
      150 SETTABLEKS                       R1 R2 K50 ["steps"]
      152 RETURN                           R2 1
