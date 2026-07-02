PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Preset"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["ApplyPreset"]
        6 GETTABLEKS                       R4 R1 K3 ["Mouse"]
        8 NAMECALL                         R4 R4 K4 ["get"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R1 K5 ["Localization"]
       13 NEWTABLE                         R6 0 3
       15 DUPTABLE                         R7 K11 [{["Name"], ["Enabled"] = True, ["ShowPressed"] = True, ["Mouse"], ["Value"]}]
       16 LOADK                            R10 K12 ["General"]
       17 LOADK                            R11 K13 ["WorldPresetsClassic"]
       18 NAMECALL                         R8 R5 K14 ["getText"]
       20 CALL                             R8 3 1
       21 SETTABLEKS                       R8 R7 K6 ["Name"]
       23 SETTABLEKS                       R4 R7 K3 ["Mouse"]
       25 DUPTABLE                         R8 K17 [{"ToolTip", "Preset"}]
       26 LOADK                            R11 K12 ["General"]
       27 LOADK                            R12 K18 ["WorldPresetsClassicToolTip"]
       28 NAMECALL                         R9 R5 K14 ["getText"]
       30 CALL                             R9 3 1
       31 SETTABLEKS                       R9 R8 K15 ["ToolTip"]
       33 DUPTABLE                         R9 K27 [{["Gravity"] = 196.2, ["JumpPower"] = 50, ["Walkspeed"] = 16, ["MaxSlopeAngle"] = 89}]
       34 SETTABLEKS                       R9 R8 K16 ["Preset"]
       36 SETTABLEKS                       R8 R7 K10 ["Value"]
       38 DUPTABLE                         R8 K11 [{["Name"], ["Enabled"] = True, ["ShowPressed"] = True, ["Mouse"], ["Value"]}]
       39 LOADK                            R11 K12 ["General"]
       40 LOADK                            R12 K28 ["WorldPresetsRealistic"]
       41 NAMECALL                         R9 R5 K14 ["getText"]
       43 CALL                             R9 3 1
       44 SETTABLEKS                       R9 R8 K6 ["Name"]
       46 SETTABLEKS                       R4 R8 K3 ["Mouse"]
       48 DUPTABLE                         R9 K17 [{"ToolTip", "Preset"}]
       49 LOADK                            R12 K12 ["General"]
       50 LOADK                            R13 K29 ["WorldPresetsRealisticToolTip"]
       51 NAMECALL                         R10 R5 K14 ["getText"]
       53 CALL                             R10 3 1
       54 SETTABLEKS                       R10 R9 K15 ["ToolTip"]
       56 DUPTABLE                         R10 K32 [{["Gravity"] = 35, ["JumpPower"] = 13, ["Walkspeed"] = 16}]
       57 SETTABLEKS                       R10 R9 K16 ["Preset"]
       59 SETTABLEKS                       R9 R8 K10 ["Value"]
       61 DUPTABLE                         R9 K11 [{["Name"], ["Enabled"] = True, ["ShowPressed"] = True, ["Mouse"], ["Value"]}]
       62 LOADK                            R12 K12 ["General"]
       63 LOADK                            R13 K33 ["WorldPresetsAction"]
       64 NAMECALL                         R10 R5 K14 ["getText"]
       66 CALL                             R10 3 1
       67 SETTABLEKS                       R10 R9 K6 ["Name"]
       69 SETTABLEKS                       R4 R9 K3 ["Mouse"]
       71 DUPTABLE                         R10 K17 [{"ToolTip", "Preset"}]
       72 LOADK                            R13 K12 ["General"]
       73 LOADK                            R14 K34 ["WorldPresetsActionToolTip"]
       74 NAMECALL                         R11 R5 K14 ["getText"]
       76 CALL                             R11 3 1
       77 SETTABLEKS                       R11 R10 K15 ["ToolTip"]
       79 DUPTABLE                         R11 K38 [{["Gravity"] = 75, ["JumpPower"] = 31, ["Walkspeed"] = 18}]
       80 SETTABLEKS                       R11 R10 K16 ["Preset"]
       82 SETTABLEKS                       R10 R9 K10 ["Value"]
       84 SETLIST                          R6 R7 3 [1]
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K39 ["createElement"]
       89 GETUPVAL                         R8 1
       90 DUPTABLE                         R9 K43 [{"LayoutOrder", "Title", "ButtonClicked", "Buttons"}]
       91 SETTABLEKS                       R2 R9 K1 ["LayoutOrder"]
       93 LOADK                            R12 K12 ["General"]
       94 LOADK                            R13 K44 ["TitlePresets"]
       95 NAMECALL                         R10 R5 K14 ["getText"]
       97 CALL                             R10 3 1
       98 SETTABLEKS                       R10 R9 K40 ["Title"]
      100 NEWCLOSURE                       R10 P0
      101 CAPTURE                          VAL R3
      102 SETTABLEKS                       R10 R9 K41 ["ButtonClicked"]
      104 SETTABLEKS                       R6 R9 K42 ["Buttons"]
      106 CALL                             R7 2 -1
      107 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R0 K10 ["RoactStudioWidgets"]
       31 GETIMPORT                        R6 K4 [require]
       33 GETTABLEKS                       R7 R5 K11 ["ButtonBar"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R1 K12 ["PureComponent"]
       38 GETIMPORT                        R9 K1 [script]
       40 GETTABLEKS                       R9 R9 K13 ["Name"]
       42 NAMECALL                         R7 R7 K14 ["extend"]
       44 CALL                             R7 2 1
       45 DUPCLOSURE                       R8 K15 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R6
       48 SETTABLEKS                       R8 R7 K16 ["render"]
       50 MOVE                             R8 R4
       51 DUPTABLE                         R9 K19 [{"Localization", "Mouse"}]
       52 GETTABLEKS                       R10 R3 K17 ["Localization"]
       54 SETTABLEKS                       R10 R9 K17 ["Localization"]
       56 GETTABLEKS                       R10 R3 K18 ["Mouse"]
       58 SETTABLEKS                       R10 R9 K18 ["Mouse"]
       60 CALL                             R8 1 1
       61 MOVE                             R9 R7
       62 CALL                             R8 1 1
       63 MOVE                             R7 R8
       64 RETURN                           R7 1
