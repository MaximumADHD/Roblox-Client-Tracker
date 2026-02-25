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
       15 DUPTABLE                         R7 K10 [{"Name", "Enabled", "ShowPressed", "Mouse", "Value"}]
       16 LOADK                            R10 K11 ["General"]
       17 LOADK                            R11 K12 ["WorldPresetsClassic"]
       18 NAMECALL                         R8 R5 K13 ["getText"]
       20 CALL                             R8 3 1
       21 SETTABLEKS                       R8 R7 K6 ["Name"]
       23 LOADB                            R8 1
       24 SETTABLEKS                       R8 R7 K7 ["Enabled"]
       26 LOADB                            R8 1
       27 SETTABLEKS                       R8 R7 K8 ["ShowPressed"]
       29 SETTABLEKS                       R4 R7 K3 ["Mouse"]
       31 DUPTABLE                         R8 K16 [{"ToolTip", "Preset"}]
       32 LOADK                            R11 K11 ["General"]
       33 LOADK                            R12 K17 ["WorldPresetsClassicToolTip"]
       34 NAMECALL                         R9 R5 K13 ["getText"]
       36 CALL                             R9 3 1
       37 SETTABLEKS                       R9 R8 K14 ["ToolTip"]
       39 DUPTABLE                         R9 K22 [{"Gravity", "JumpPower", "Walkspeed", "MaxSlopeAngle"}]
       40 LOADK                            R10 K23 [196.2]
       41 SETTABLEKS                       R10 R9 K18 ["Gravity"]
       43 LOADN                            R10 50
       44 SETTABLEKS                       R10 R9 K19 ["JumpPower"]
       46 LOADN                            R10 16
       47 SETTABLEKS                       R10 R9 K20 ["Walkspeed"]
       49 LOADN                            R10 89
       50 SETTABLEKS                       R10 R9 K21 ["MaxSlopeAngle"]
       52 SETTABLEKS                       R9 R8 K15 ["Preset"]
       54 SETTABLEKS                       R8 R7 K9 ["Value"]
       56 DUPTABLE                         R8 K10 [{"Name", "Enabled", "ShowPressed", "Mouse", "Value"}]
       57 LOADK                            R11 K11 ["General"]
       58 LOADK                            R12 K24 ["WorldPresetsRealistic"]
       59 NAMECALL                         R9 R5 K13 ["getText"]
       61 CALL                             R9 3 1
       62 SETTABLEKS                       R9 R8 K6 ["Name"]
       64 LOADB                            R9 1
       65 SETTABLEKS                       R9 R8 K7 ["Enabled"]
       67 LOADB                            R9 1
       68 SETTABLEKS                       R9 R8 K8 ["ShowPressed"]
       70 SETTABLEKS                       R4 R8 K3 ["Mouse"]
       72 DUPTABLE                         R9 K16 [{"ToolTip", "Preset"}]
       73 LOADK                            R12 K11 ["General"]
       74 LOADK                            R13 K25 ["WorldPresetsRealisticToolTip"]
       75 NAMECALL                         R10 R5 K13 ["getText"]
       77 CALL                             R10 3 1
       78 SETTABLEKS                       R10 R9 K14 ["ToolTip"]
       80 DUPTABLE                         R10 K26 [{"Gravity", "JumpPower", "Walkspeed"}]
       81 LOADN                            R11 35
       82 SETTABLEKS                       R11 R10 K18 ["Gravity"]
       84 LOADN                            R11 13
       85 SETTABLEKS                       R11 R10 K19 ["JumpPower"]
       87 LOADN                            R11 16
       88 SETTABLEKS                       R11 R10 K20 ["Walkspeed"]
       90 SETTABLEKS                       R10 R9 K15 ["Preset"]
       92 SETTABLEKS                       R9 R8 K9 ["Value"]
       94 DUPTABLE                         R9 K10 [{"Name", "Enabled", "ShowPressed", "Mouse", "Value"}]
       95 LOADK                            R12 K11 ["General"]
       96 LOADK                            R13 K27 ["WorldPresetsAction"]
       97 NAMECALL                         R10 R5 K13 ["getText"]
       99 CALL                             R10 3 1
      100 SETTABLEKS                       R10 R9 K6 ["Name"]
      102 LOADB                            R10 1
      103 SETTABLEKS                       R10 R9 K7 ["Enabled"]
      105 LOADB                            R10 1
      106 SETTABLEKS                       R10 R9 K8 ["ShowPressed"]
      108 SETTABLEKS                       R4 R9 K3 ["Mouse"]
      110 DUPTABLE                         R10 K16 [{"ToolTip", "Preset"}]
      111 LOADK                            R13 K11 ["General"]
      112 LOADK                            R14 K28 ["WorldPresetsActionToolTip"]
      113 NAMECALL                         R11 R5 K13 ["getText"]
      115 CALL                             R11 3 1
      116 SETTABLEKS                       R11 R10 K14 ["ToolTip"]
      118 DUPTABLE                         R11 K26 [{"Gravity", "JumpPower", "Walkspeed"}]
      119 LOADN                            R12 75
      120 SETTABLEKS                       R12 R11 K18 ["Gravity"]
      122 LOADN                            R12 31
      123 SETTABLEKS                       R12 R11 K19 ["JumpPower"]
      125 LOADN                            R12 18
      126 SETTABLEKS                       R12 R11 K20 ["Walkspeed"]
      128 SETTABLEKS                       R11 R10 K15 ["Preset"]
      130 SETTABLEKS                       R10 R9 K9 ["Value"]
      132 SETLIST                          R6 R7 3 [1]
      134 GETUPVAL                         R8 0
      135 GETTABLEKS                       R7 R8 K29 ["createElement"]
      137 GETUPVAL                         R8 1
      138 DUPTABLE                         R9 K33 [{"LayoutOrder", "Title", "ButtonClicked", "Buttons"}]
      139 SETTABLEKS                       R2 R9 K1 ["LayoutOrder"]
      141 LOADK                            R12 K11 ["General"]
      142 LOADK                            R13 K34 ["TitlePresets"]
      143 NAMECALL                         R10 R5 K13 ["getText"]
      145 CALL                             R10 3 1
      146 SETTABLEKS                       R10 R9 K30 ["Title"]
      148 NEWCLOSURE                       R10 P0
      149 CAPTURE                          VAL R3
      150 SETTABLEKS                       R10 R9 K31 ["ButtonClicked"]
      152 SETTABLEKS                       R6 R9 K32 ["Buttons"]
      154 CALL                             R7 2 -1
      155 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R0 K10 ["RoactStudioWidgets"]
       31 GETIMPORT                        R6 K4 [require]
       33 GETTABLEKS                       R7 R5 K11 ["ButtonBar"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R1 K12 ["PureComponent"]
       38 GETIMPORT                        R10 K1 [script]
       40 GETTABLEKS                       R9 R10 K13 ["Name"]
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
