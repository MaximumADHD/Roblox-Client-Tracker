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
       33 DUPTABLE                         R8 K10 [{"text", "layoutOrder", "showWarning"}]
       34 LOADK                            R11 K11 ["AccessoriesSettings"]
       35 LOADK                            R12 K12 ["AccessoryBehaviorsSection"]
       36 NAMECALL                         R9 R1 K13 ["getText"]
       38 CALL                             R9 3 1
       39 SETTABLEKS                       R9 R8 K7 ["text"]
       41 GETTABLEKS                       R9 R0 K8 ["layoutOrder"]
       43 SETTABLEKS                       R9 R8 K8 ["layoutOrder"]
       45 LOADB                            R9 1
       46 SETTABLEKS                       R9 R8 K9 ["showWarning"]
       48 DUPTABLE                         R9 K17 [{"Description", "EnableSoundCheckbox", "EnableVFXCheckbox"}]
       49 GETUPVAL                         R10 5
       50 LOADK                            R11 K18 ["TextLabel"]
       51 NEWTABLE                         R12 8 0
       53 GETUPVAL                         R13 3
       54 GETTABLEKS                       R13 R13 K19 ["Tag"]
       56 LOADK                            R14 K20 ["Component-TextLabel SubText"]
       57 SETTABLE                         R14 R12 R13
       58 GETIMPORT                        R13 K23 [UDim2.fromOffset]
       60 LOADN                            R14 0
       61 GETUPVAL                         R15 7
       62 GETTABLEKS                       R15 R15 K24 ["STANDARD_HEIGHT"]
       64 CALL                             R13 2 1
       65 SETTABLEKS                       R13 R12 K25 ["Size"]
       67 GETIMPORT                        R13 K29 [Enum.AutomaticSize.XY]
       69 SETTABLEKS                       R13 R12 K27 ["AutomaticSize"]
       71 LOADK                            R15 K11 ["AccessoriesSettings"]
       72 LOADK                            R16 K30 ["AccessoryBehaviorsSectionSubText"]
       73 NAMECALL                         R13 R1 K13 ["getText"]
       75 CALL                             R13 3 1
       76 SETTABLEKS                       R13 R12 K31 ["Text"]
       78 GETIMPORT                        R13 K34 [Enum.TextXAlignment.Left]
       80 SETTABLEKS                       R13 R12 K32 ["TextXAlignment"]
       82 LOADB                            R13 1
       83 SETTABLEKS                       R13 R12 K35 ["TextWrapped"]
       85 MOVE                             R13 R3
       86 CALL                             R13 0 1
       87 SETTABLEKS                       R13 R12 K36 ["LayoutOrder"]
       89 DUPTABLE                         R13 K38 [{"Tooltip"}]
       90 GETUPVAL                         R14 5
       91 GETUPVAL                         R15 8
       92 DUPTABLE                         R16 K39 [{"Text"}]
       93 LOADK                            R19 K11 ["AccessoriesSettings"]
       94 LOADK                            R20 K30 ["AccessoryBehaviorsSectionSubText"]
       95 NAMECALL                         R17 R1 K13 ["getText"]
       97 CALL                             R17 3 1
       98 SETTABLEKS                       R17 R16 K31 ["Text"]
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K37 ["Tooltip"]
      103 CALL                             R10 3 1
      104 SETTABLEKS                       R10 R9 K14 ["Description"]
      106 GETUPVAL                         R10 5
      107 GETUPVAL                         R11 9
      108 DUPTABLE                         R12 K42 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      109 MOVE                             R13 R3
      110 CALL                             R13 0 1
      111 SETTABLEKS                       R13 R12 K36 ["LayoutOrder"]
      113 GETTABLEKS                       R13 R5 K43 ["accessoryBehaviorEnableSoundSetting"]
      115 GETTABLEKS                       R13 R13 K44 ["value"]
      117 SETTABLEKS                       R13 R12 K40 ["Checked"]
      119 LOADK                            R15 K11 ["AccessoriesSettings"]
      120 LOADK                            R16 K45 ["AccessoryBehaviorsSectionEnableSound"]
      121 NAMECALL                         R13 R1 K13 ["getText"]
      123 CALL                             R13 3 1
      124 SETTABLEKS                       R13 R12 K31 ["Text"]
      126 NEWCLOSURE                       R13 P0
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R2
      129 SETTABLEKS                       R13 R12 K41 ["OnClick"]
      131 CALL                             R10 2 1
      132 SETTABLEKS                       R10 R9 K15 ["EnableSoundCheckbox"]
      134 GETUPVAL                         R10 5
      135 GETUPVAL                         R11 9
      136 DUPTABLE                         R12 K42 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      137 MOVE                             R13 R3
      138 CALL                             R13 0 1
      139 SETTABLEKS                       R13 R12 K36 ["LayoutOrder"]
      141 GETTABLEKS                       R13 R5 K46 ["accessoryBehaviorEnableVFXSetting"]
      143 GETTABLEKS                       R13 R13 K44 ["value"]
      145 SETTABLEKS                       R13 R12 K40 ["Checked"]
      147 LOADK                            R15 K11 ["AccessoriesSettings"]
      148 LOADK                            R16 K47 ["AccessoryBehaviorsSectionEnableVFX"]
      149 NAMECALL                         R13 R1 K13 ["getText"]
      151 CALL                             R13 3 1
      152 SETTABLEKS                       R13 R12 K31 ["Text"]
      154 NEWCLOSURE                       R13 P1
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R2
      157 SETTABLEKS                       R13 R12 K41 ["OnClick"]
      159 CALL                             R10 2 1
      160 SETTABLEKS                       R10 R9 K16 ["EnableVFXCheckbox"]
      162 CALL                             R6 3 -1
      163 RETURN                           R6 -1

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
       57 GETTABLEKS                       R7 R4 K17 ["ContextServices"]
       59 GETTABLEKS                       R8 R7 K18 ["Localization"]
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Src"]
       65 GETTABLEKS                       R10 R10 K10 ["Util"]
       67 GETTABLEKS                       R10 R10 K19 ["Telemetry"]
       69 GETTABLEKS                       R10 R10 K20 ["TelemetryContext"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R4 K21 ["UI"]
       74 GETTABLEKS                       R11 R10 K22 ["Checkbox"]
       76 GETTABLEKS                       R12 R10 K23 ["Tooltip"]
       78 GETTABLEKS                       R13 R6 K24 ["createNextOrder"]
       80 GETTABLEKS                       R14 R5 K25 ["createElement"]
       82 DUPCLOSURE                       R15 K26 [PROTO_2]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R11
       93 RETURN                           R15 1
