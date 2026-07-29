PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K10 [{[1], ["Enabled"] = True, ["Visible"] = True, ["Text"], ["Tooltip"], ["Icon"], ["Checkable"] = True, ["Checked"], ["VisibleOnRibbon"] = True}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K11 ["ACTION_URI"]
        5 SETTABLEKS                       R3 R2 K0 ["Uri"]
        7 GETUPVAL                         R3 2
        8 LOADK                            R5 K12 ["Plugin"]
        9 LOADK                            R6 K13 ["Button"]
       10 NAMECALL                         R3 R3 K14 ["getText"]
       12 CALL                             R3 3 1
       13 SETTABLEKS                       R3 R2 K4 ["Text"]
       15 GETUPVAL                         R3 2
       16 LOADK                            R5 K12 ["Plugin"]
       17 LOADK                            R6 K15 ["Description"]
       18 NAMECALL                         R3 R3 K14 ["getText"]
       20 CALL                             R3 3 1
       21 SETTABLEKS                       R3 R2 K5 ["Tooltip"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K16 ["ACTION_ICON"]
       26 SETTABLEKS                       R3 R2 K6 ["Icon"]
       28 GETUPVAL                         R4 3
       29 JUMPIFEQKB                       R4 TRUE ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 SETTABLEKS                       R3 R2 K8 ["Checked"]
       35 LOADB                            R3 1
       36 NAMECALL                         R0 R0 K17 ["CreateAsync"]
       38 CALL                             R0 3 0
       39 LOADNIL                          R0
       40 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["run"]
        3 LOADK                            R4 K1 ["ribbon action integration"]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R0
        6 LOADK                            R6 K2 ["The classic toolbar button can still open and close Design Assist."]
        7 CALL                             R3 3 3
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R5 1
       10 MOVE                             R6 R2
       11 JUMPIF                           R6 ; [+12]
       12 GETIMPORT                        R6 K4 [require]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K5 ["Src"]
       17 GETTABLEKS                       R7 R7 K6 ["Resources"]
       19 GETTABLEKS                       R7 R7 K7 ["Localization"]
       21 GETTABLEKS                       R7 R7 K8 ["Translator"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K0 ["run"]
       27 LOADK                            R8 K9 ["ribbon action registration"]
       28 NEWCLOSURE                       R9 P1
       29 CAPTURE                          VAL R4
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R6
       32 CAPTURE                          VAL R1
       33 LOADK                            R10 K2 ["The classic toolbar button can still open and close Design Assist."]
       34 CALL                             R7 3 3
       35 JUMPIF                           R7 ; [+1]
       36 RETURN                           R9 1
       37 LOADNIL                          R10
       38 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["CapabilityGuard"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 LOADK                            R3 K9 ["CodeSnippet"]
       19 SETTABLEKS                       R3 R2 K10 ["ACTION_ICON"]
       21 LOADK                            R3 K11 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Medium/RibbonCodeSnippet.png"]
       22 SETTABLEKS                       R3 R2 K12 ["TOOLBAR_ICON"]
       24 DUPTABLE                         R3 K21 [{["DataModel"] = "Standalone", ["PluginType"] = "Standalone", ["PluginId"] = "DesignAssist", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       25 SETTABLEKS                       R3 R2 K22 ["ACTION_URI"]
       27 DUPCLOSURE                       R3 K23 [PROTO_2]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R3 R2 K24 ["registerAction"]
       33 RETURN                           R2 1
