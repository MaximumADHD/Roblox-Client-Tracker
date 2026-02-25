PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+22]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["accessoryBehaviorEnableSoundSetting"]
        6 GETTABLEKS                       R1 R2 K1 ["value"]
        8 NOT                              R0 R1
        9 GETUPVAL                         R1 2
       10 LOADK                            R3 K2 ["AccessorySoundToggled"]
       11 DUPTABLE                         R4 K4 [{"enabled"}]
       12 SETTABLEKS                       R0 R4 K3 ["enabled"]
       14 NAMECALL                         R1 R1 K5 ["logCounter"]
       16 CALL                             R1 3 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K0 ["accessoryBehaviorEnableSoundSetting"]
       20 GETTABLEKS                       R1 R2 K6 ["set"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R1 R2 K0 ["accessoryBehaviorEnableSoundSetting"]
       28 GETTABLEKS                       R0 R1 K6 ["set"]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K0 ["accessoryBehaviorEnableSoundSetting"]
       33 GETTABLEKS                       R2 R3 K1 ["value"]
       35 NOT                              R1 R2
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+22]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["accessoryBehaviorEnableVFXSetting"]
        6 GETTABLEKS                       R1 R2 K1 ["value"]
        8 NOT                              R0 R1
        9 GETUPVAL                         R1 2
       10 LOADK                            R3 K2 ["AccessoryVFXToggled"]
       11 DUPTABLE                         R4 K4 [{"enabled"}]
       12 SETTABLEKS                       R0 R4 K3 ["enabled"]
       14 NAMECALL                         R1 R1 K5 ["logCounter"]
       16 CALL                             R1 3 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K0 ["accessoryBehaviorEnableVFXSetting"]
       20 GETTABLEKS                       R1 R2 K6 ["set"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R1 R2 K0 ["accessoryBehaviorEnableVFXSetting"]
       28 GETTABLEKS                       R0 R1 K6 ["set"]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K0 ["accessoryBehaviorEnableVFXSetting"]
       33 GETTABLEKS                       R2 R3 K1 ["value"]
       35 NOT                              R1 R2
       36 CALL                             R0 1 0
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R4 R5 K1 ["useContext"]
       18 GETUPVAL                         R5 5
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R7 R4 K2 ["settings"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       28 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       29 GETIMPORT                        R5 K5 [assert]
       31 CALL                             R5 2 0
       32 GETTABLEKS                       R6 R4 K2 ["settings"]
       34 GETTABLEKS                       R5 R6 K6 ["accessoriesSettings"]
       36 GETUPVAL                         R6 6
       37 GETUPVAL                         R7 7
       38 DUPTABLE                         R8 K10 [{"text", "layoutOrder", "showWarning"}]
       39 LOADK                            R11 K11 ["AccessoriesSettings"]
       40 LOADK                            R12 K12 ["AccessoryBehaviorsSection"]
       41 NAMECALL                         R9 R1 K13 ["getText"]
       43 CALL                             R9 3 1
       44 SETTABLEKS                       R9 R8 K7 ["text"]
       46 GETTABLEKS                       R9 R0 K8 ["layoutOrder"]
       48 SETTABLEKS                       R9 R8 K8 ["layoutOrder"]
       50 LOADB                            R9 1
       51 SETTABLEKS                       R9 R8 K9 ["showWarning"]
       53 DUPTABLE                         R9 K17 [{"Description", "EnableSoundCheckbox", "EnableVFXCheckbox"}]
       54 GETUPVAL                         R10 6
       55 LOADK                            R11 K18 ["TextLabel"]
       56 NEWTABLE                         R12 8 0
       58 GETUPVAL                         R14 4
       59 GETTABLEKS                       R13 R14 K19 ["Tag"]
       61 LOADK                            R14 K20 ["Component-TextLabel SubText"]
       62 SETTABLE                         R14 R12 R13
       63 GETIMPORT                        R13 K23 [UDim2.fromOffset]
       65 LOADN                            R14 0
       66 GETUPVAL                         R16 8
       67 GETTABLEKS                       R15 R16 K24 ["STANDARD_HEIGHT"]
       69 CALL                             R13 2 1
       70 SETTABLEKS                       R13 R12 K25 ["Size"]
       72 GETIMPORT                        R13 K29 [Enum.AutomaticSize.XY]
       74 SETTABLEKS                       R13 R12 K27 ["AutomaticSize"]
       76 LOADK                            R15 K11 ["AccessoriesSettings"]
       77 LOADK                            R16 K30 ["AccessoryBehaviorsSectionSubText"]
       78 NAMECALL                         R13 R1 K13 ["getText"]
       80 CALL                             R13 3 1
       81 SETTABLEKS                       R13 R12 K31 ["Text"]
       83 GETIMPORT                        R13 K34 [Enum.TextXAlignment.Left]
       85 SETTABLEKS                       R13 R12 K32 ["TextXAlignment"]
       87 LOADB                            R13 1
       88 SETTABLEKS                       R13 R12 K35 ["TextWrapped"]
       90 MOVE                             R13 R3
       91 CALL                             R13 0 1
       92 SETTABLEKS                       R13 R12 K36 ["LayoutOrder"]
       94 DUPTABLE                         R13 K38 [{"Tooltip"}]
       95 GETUPVAL                         R14 6
       96 GETUPVAL                         R15 9
       97 DUPTABLE                         R16 K39 [{"Text"}]
       98 LOADK                            R19 K11 ["AccessoriesSettings"]
       99 LOADK                            R20 K30 ["AccessoryBehaviorsSectionSubText"]
      100 NAMECALL                         R17 R1 K13 ["getText"]
      102 CALL                             R17 3 1
      103 SETTABLEKS                       R17 R16 K31 ["Text"]
      105 CALL                             R14 2 1
      106 SETTABLEKS                       R14 R13 K37 ["Tooltip"]
      108 CALL                             R10 3 1
      109 SETTABLEKS                       R10 R9 K14 ["Description"]
      111 GETUPVAL                         R10 6
      112 GETUPVAL                         R11 10
      113 DUPTABLE                         R12 K42 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      114 MOVE                             R13 R3
      115 CALL                             R13 0 1
      116 SETTABLEKS                       R13 R12 K36 ["LayoutOrder"]
      118 GETTABLEKS                       R14 R5 K43 ["accessoryBehaviorEnableSoundSetting"]
      120 GETTABLEKS                       R13 R14 K44 ["value"]
      122 SETTABLEKS                       R13 R12 K40 ["Checked"]
      124 LOADK                            R15 K11 ["AccessoriesSettings"]
      125 LOADK                            R16 K45 ["AccessoryBehaviorsSectionEnableSound"]
      126 NAMECALL                         R13 R1 K13 ["getText"]
      128 CALL                             R13 3 1
      129 SETTABLEKS                       R13 R12 K31 ["Text"]
      131 NEWCLOSURE                       R13 P0
      132 CAPTURE                          UPVAL U1
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R2
      135 SETTABLEKS                       R13 R12 K41 ["OnClick"]
      137 CALL                             R10 2 1
      138 SETTABLEKS                       R10 R9 K15 ["EnableSoundCheckbox"]
      140 GETUPVAL                         R10 6
      141 GETUPVAL                         R11 10
      142 DUPTABLE                         R12 K42 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      143 MOVE                             R13 R3
      144 CALL                             R13 0 1
      145 SETTABLEKS                       R13 R12 K36 ["LayoutOrder"]
      147 GETTABLEKS                       R14 R5 K46 ["accessoryBehaviorEnableVFXSetting"]
      149 GETTABLEKS                       R13 R14 K44 ["value"]
      151 SETTABLEKS                       R13 R12 K40 ["Checked"]
      153 LOADK                            R15 K11 ["AccessoriesSettings"]
      154 LOADK                            R16 K47 ["AccessoryBehaviorsSectionEnableVFX"]
      155 NAMECALL                         R13 R1 K13 ["getText"]
      157 CALL                             R13 3 1
      158 SETTABLEKS                       R13 R12 K31 ["Text"]
      160 NEWCLOSURE                       R13 P1
      161 CAPTURE                          UPVAL U1
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R2
      164 SETTABLEKS                       R13 R12 K41 ["OnClick"]
      166 CALL                             R10 2 1
      167 SETTABLEKS                       R10 R9 K16 ["EnableVFXCheckbox"]
      169 CALL                             R6 3 -1
      170 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Util"]
       24 GETTABLEKS                       R3 R4 K11 ["Constants"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K7 ["Components"]
       33 GETTABLEKS                       R4 R5 K12 ["ExpandableSection"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K13 ["Packages"]
       40 GETTABLEKS                       R5 R6 K14 ["Framework"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K13 ["Packages"]
       47 GETTABLEKS                       R6 R7 K15 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K13 ["Packages"]
       54 GETTABLEKS                       R7 R8 K16 ["ReactUtils"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R4 K17 ["ContextServices"]
       59 GETTABLEKS                       R8 R7 K18 ["Localization"]
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R13 R0 K6 ["Src"]
       65 GETTABLEKS                       R12 R13 K10 ["Util"]
       67 GETTABLEKS                       R11 R12 K19 ["Telemetry"]
       69 GETTABLEKS                       R10 R11 K20 ["TelemetryContext"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R13 R0 K6 ["Src"]
       76 GETTABLEKS                       R12 R13 K21 ["Flags"]
       78 GETTABLEKS                       R11 R12 K22 ["getFFlagAddTelemetry"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R4 K23 ["UI"]
       83 GETTABLEKS                       R12 R11 K24 ["Checkbox"]
       85 GETTABLEKS                       R13 R11 K25 ["Tooltip"]
       87 GETTABLEKS                       R14 R6 K26 ["createNextOrder"]
       89 GETTABLEKS                       R15 R5 K27 ["createElement"]
       91 DUPCLOSURE                       R16 K28 [PROTO_2]
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R12
      103 RETURN                           R16 1
