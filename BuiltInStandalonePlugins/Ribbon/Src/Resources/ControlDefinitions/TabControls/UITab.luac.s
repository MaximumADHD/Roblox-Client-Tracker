MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["deepFreeze"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K13 [{["Name"] = "UI", ["Controls"]}]
       24 NEWTABLE                         R4 0 9
       26 DUPTABLE                         R5 K21 [{["Type"] = "SplitButton", ["Id"] = "GUI", ["ShowSettingOptions"] = True, ["Setting"]}]
       27 DUPTABLE                         R6 K30 [{["PluginId"] = "BuilderTools", ["DataModel"] = "Standalone", ["ItemId"] = "InsertGui", ["Category"] = "Settings"}]
       28 SETTABLEKS                       R6 R5 K20 ["Setting"]
       30 DUPTABLE                         R6 K32 [{["Type"] = "SplitButton", ["Id"] = "Frame", ["ShowSettingOptions"] = True, ["Setting"]}]
       31 DUPTABLE                         R7 K34 [{["PluginId"] = "BuilderTools", ["DataModel"] = "Standalone", ["ItemId"] = "InsertUIFrame", ["Category"] = "Settings"}]
       32 SETTABLEKS                       R7 R6 K20 ["Setting"]
       34 DUPTABLE                         R7 K36 [{["Type"] = "SplitButton", ["Id"] = "Label", ["ShowSettingOptions"] = True, ["Setting"]}]
       35 DUPTABLE                         R8 K38 [{["PluginId"] = "BuilderTools", ["DataModel"] = "Standalone", ["ItemId"] = "InsertUILabel", ["Category"] = "Settings"}]
       36 SETTABLEKS                       R8 R7 K20 ["Setting"]
       38 DUPTABLE                         R8 K40 [{["Type"] = "SplitButton", ["Id"] = "Input", ["ShowSettingOptions"] = True, ["Setting"]}]
       39 DUPTABLE                         R9 K42 [{["PluginId"] = "BuilderTools", ["DataModel"] = "Standalone", ["ItemId"] = "InsertUIInput", ["Category"] = "Settings"}]
       40 SETTABLEKS                       R9 R8 K20 ["Setting"]
       42 DUPTABLE                         R9 K44 [{["Type"] = "SplitButton", ["Id"] = "Appearance", ["ShowSettingOptions"] = True, ["Setting"]}]
       43 DUPTABLE                         R10 K46 [{["PluginId"] = "BuilderTools", ["DataModel"] = "Standalone", ["ItemId"] = "InsertUIAppearance", ["Category"] = "Settings"}]
       44 SETTABLEKS                       R10 R9 K20 ["Setting"]
       46 DUPTABLE                         R10 K48 [{["Type"] = "SplitButton", ["Id"] = "Layout", ["ShowSettingOptions"] = True, ["Setting"]}]
       47 DUPTABLE                         R11 K50 [{["PluginId"] = "BuilderTools", ["DataModel"] = "Standalone", ["ItemId"] = "InsertUILayout", ["Category"] = "Settings"}]
       48 SETTABLEKS                       R11 R10 K20 ["Setting"]
       50 DUPTABLE                         R11 K52 [{["Type"] = "SplitButton", ["Id"] = "Constraint", ["ShowSettingOptions"] = True, ["Setting"]}]
       51 DUPTABLE                         R12 K54 [{["PluginId"] = "BuilderTools", ["DataModel"] = "Standalone", ["ItemId"] = "InsertUIConstraint", ["Category"] = "Settings"}]
       52 SETTABLEKS                       R12 R11 K20 ["Setting"]
       54 DUPTABLE                         R12 K58 [{["Size"] = "Large", ["Type"] = "Separator"}]
       55 DUPTABLE                         R13 K62 [{["Id"] = "StyleEditor", ["Type"] = "IconButton", ["Action"]}]
       56 DUPTABLE                         R14 K65 [{["PluginId"] = "StyleEditor", ["DataModel"] = "Standalone", ["ItemId"] = "Toggle", ["Category"] = "Actions"}]
       57 SETTABLEKS                       R14 R13 K61 ["Action"]
       59 SETLIST                          R4 R5 9 [1]
       61 SETTABLEKS                       R4 R3 K12 ["Controls"]
       63 MOVE                             R4 R1
       64 MOVE                             R5 R3
       65 CALL                             R4 1 -1
       66 RETURN                           R4 -1
