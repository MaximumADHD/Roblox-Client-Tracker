PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["accessoryBehaviorEnableSoundSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AccessorySoundToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["accessoryBehaviorEnableSoundSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["accessoryBehaviorEnableVFXSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AccessoryVFXToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["accessoryBehaviorEnableVFXSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["accessoryBehaviorEnableEmissivesSetting"]
        3 GETTABLEKS                       R1 R1 K1 ["value"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K2 ["AccessoryEmissivesToggled"]
        8 DUPTABLE                         R4 K4 [{"enabled"}]
        9 SETTABLEKS                       R0 R4 K3 ["enabled"]
       11 NAMECALL                         R1 R1 K5 ["logCounter"]
       13 CALL                             R1 3 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["accessoryBehaviorEnableEmissivesSetting"]
       17 GETTABLEKS                       R1 R1 K6 ["set"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R7 R4 K2 ["settings"]
       17 JUMPIFNOTEQKNIL                  R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       23 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       24 GETIMPORT                        R5 K5 [assert]
       26 CALL                             R5 2 0
       27 GETTABLEKS                       R5 R4 K2 ["settings"]
       29 GETTABLEKS                       R5 R5 K6 ["accessoriesSettings"]
       31 GETUPVAL                         R6 5
       32 GETUPVAL                         R7 6
       33 DUPTABLE                         R8 K11 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
       34 LOADK                            R11 K12 ["AccessoriesSettings"]
       35 LOADK                            R12 K13 ["AccessoryBehaviorsSection"]
       36 NAMECALL                         R9 R1 K14 ["getText"]
       38 CALL                             R9 3 1
       39 SETTABLEKS                       R9 R8 K7 ["text"]
       41 GETTABLEKS                       R9 R0 K8 ["layoutOrder"]
       43 SETTABLEKS                       R9 R8 K8 ["layoutOrder"]
       45 DUPTABLE                         R9 K19 [{"Description", "EnableSoundCheckbox", "EnableVFXCheckbox", "EnableEmissivesCheckbox"}]
       46 GETUPVAL                         R10 5
       47 LOADK                            R11 K20 ["TextLabel"]
       48 NEWTABLE                         R12 8 0
       50 GETUPVAL                         R13 3
       51 GETTABLEKS                       R13 R13 K21 ["Tag"]
       53 LOADK                            R14 K22 ["Component-TextLabel SubText"]
       54 SETTABLE                         R14 R12 R13
       55 GETIMPORT                        R13 K25 [UDim2.fromOffset]
       57 LOADN                            R14 0
       58 GETUPVAL                         R15 7
       59 GETTABLEKS                       R15 R15 K26 ["STANDARD_HEIGHT"]
       61 CALL                             R13 2 1
       62 SETTABLEKS                       R13 R12 K27 ["Size"]
       64 GETIMPORT                        R13 K31 [Enum.AutomaticSize.XY]
       66 SETTABLEKS                       R13 R12 K29 ["AutomaticSize"]
       68 LOADK                            R15 K12 ["AccessoriesSettings"]
       69 LOADK                            R16 K32 ["AccessoryBehaviorsSectionSubText"]
       70 NAMECALL                         R13 R1 K14 ["getText"]
       72 CALL                             R13 3 1
       73 SETTABLEKS                       R13 R12 K33 ["Text"]
       75 GETIMPORT                        R13 K36 [Enum.TextXAlignment.Left]
       77 SETTABLEKS                       R13 R12 K34 ["TextXAlignment"]
       79 LOADB                            R13 1
       80 SETTABLEKS                       R13 R12 K37 ["TextWrapped"]
       82 MOVE                             R13 R3
       83 CALL                             R13 0 1
       84 SETTABLEKS                       R13 R12 K38 ["LayoutOrder"]
       86 DUPTABLE                         R13 K40 [{"Tooltip"}]
       87 GETUPVAL                         R14 5
       88 GETUPVAL                         R15 8
       89 DUPTABLE                         R16 K41 [{"Text"}]
       90 LOADK                            R19 K12 ["AccessoriesSettings"]
       91 LOADK                            R20 K32 ["AccessoryBehaviorsSectionSubText"]
       92 NAMECALL                         R17 R1 K14 ["getText"]
       94 CALL                             R17 3 1
       95 SETTABLEKS                       R17 R16 K33 ["Text"]
       97 CALL                             R14 2 1
       98 SETTABLEKS                       R14 R13 K39 ["Tooltip"]
      100 CALL                             R10 3 1
      101 SETTABLEKS                       R10 R9 K15 ["Description"]
      103 GETUPVAL                         R10 5
      104 GETUPVAL                         R11 9
      105 DUPTABLE                         R12 K44 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      106 MOVE                             R13 R3
      107 CALL                             R13 0 1
      108 SETTABLEKS                       R13 R12 K38 ["LayoutOrder"]
      110 GETTABLEKS                       R13 R5 K45 ["accessoryBehaviorEnableSoundSetting"]
      112 GETTABLEKS                       R13 R13 K46 ["value"]
      114 SETTABLEKS                       R13 R12 K42 ["Checked"]
      116 LOADK                            R15 K12 ["AccessoriesSettings"]
      117 LOADK                            R16 K47 ["AccessoryBehaviorsSectionEnableSound"]
      118 NAMECALL                         R13 R1 K14 ["getText"]
      120 CALL                             R13 3 1
      121 SETTABLEKS                       R13 R12 K33 ["Text"]
      123 NEWCLOSURE                       R13 P0
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R2
      126 SETTABLEKS                       R13 R12 K43 ["OnClick"]
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K16 ["EnableSoundCheckbox"]
      131 GETUPVAL                         R10 5
      132 GETUPVAL                         R11 9
      133 DUPTABLE                         R12 K44 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      134 MOVE                             R13 R3
      135 CALL                             R13 0 1
      136 SETTABLEKS                       R13 R12 K38 ["LayoutOrder"]
      138 GETTABLEKS                       R13 R5 K48 ["accessoryBehaviorEnableVFXSetting"]
      140 GETTABLEKS                       R13 R13 K46 ["value"]
      142 SETTABLEKS                       R13 R12 K42 ["Checked"]
      144 LOADK                            R15 K12 ["AccessoriesSettings"]
      145 LOADK                            R16 K49 ["AccessoryBehaviorsSectionEnableVFX"]
      146 NAMECALL                         R13 R1 K14 ["getText"]
      148 CALL                             R13 3 1
      149 SETTABLEKS                       R13 R12 K33 ["Text"]
      151 NEWCLOSURE                       R13 P1
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R2
      154 SETTABLEKS                       R13 R12 K43 ["OnClick"]
      156 CALL                             R10 2 1
      157 SETTABLEKS                       R10 R9 K17 ["EnableVFXCheckbox"]
      159 GETUPVAL                         R11 10
      160 CALL                             R11 0 1
      161 JUMPIF                           R11 ; [+2]
      162 LOADNIL                          R10
      163 JUMP                             ; [+26]
      164 GETUPVAL                         R10 5
      165 GETUPVAL                         R11 9
      166 DUPTABLE                         R12 K44 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      167 MOVE                             R13 R3
      168 CALL                             R13 0 1
      169 SETTABLEKS                       R13 R12 K38 ["LayoutOrder"]
      171 GETTABLEKS                       R13 R5 K50 ["accessoryBehaviorEnableEmissivesSetting"]
      173 GETTABLEKS                       R13 R13 K46 ["value"]
      175 SETTABLEKS                       R13 R12 K42 ["Checked"]
      177 LOADK                            R15 K12 ["AccessoriesSettings"]
      178 LOADK                            R16 K51 ["AccessoryBehaviorsSectionEnableEmissives"]
      179 NAMECALL                         R13 R1 K14 ["getText"]
      181 CALL                             R13 3 1
      182 SETTABLEKS                       R13 R12 K33 ["Text"]
      184 NEWCLOSURE                       R13 P2
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R2
      187 SETTABLEKS                       R13 R12 K43 ["OnClick"]
      189 CALL                             R10 2 1
      190 SETTABLEKS                       R10 R9 K18 ["EnableEmissivesCheckbox"]
      192 CALL                             R6 3 -1
      193 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Util"]
       24 GETTABLEKS                       R3 R3 K11 ["Constants"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Components"]
       33 GETTABLEKS                       R4 R4 K12 ["ExpandableSection"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K13 ["Packages"]
       40 GETTABLEKS                       R5 R5 K14 ["Framework"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K13 ["Packages"]
       47 GETTABLEKS                       R6 R6 K15 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K13 ["Packages"]
       54 GETTABLEKS                       R7 R7 K16 ["ReactUtils"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Src"]
       61 GETTABLEKS                       R8 R8 K17 ["Flags"]
       63 GETTABLEKS                       R8 R8 K18 ["getEngineFeatureAvatarSettingsEnableEmissiveRuleLua"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R4 K19 ["ContextServices"]
       68 GETTABLEKS                       R9 R8 K20 ["Localization"]
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Src"]
       74 GETTABLEKS                       R11 R11 K10 ["Util"]
       76 GETTABLEKS                       R11 R11 K21 ["Telemetry"]
       78 GETTABLEKS                       R11 R11 K22 ["TelemetryContext"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R4 K23 ["UI"]
       83 GETTABLEKS                       R12 R11 K24 ["Checkbox"]
       85 GETTABLEKS                       R13 R11 K25 ["Tooltip"]
       87 GETTABLEKS                       R14 R6 K26 ["createNextOrder"]
       89 GETTABLEKS                       R15 R5 K27 ["createElement"]
       91 DUPCLOSURE                       R16 K28 [PROTO_3]
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R7
      103 RETURN                           R16 1
