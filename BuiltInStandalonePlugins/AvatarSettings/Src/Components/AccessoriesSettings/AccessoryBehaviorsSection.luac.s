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
        1 GETTABLEKS                       R1 R1 K0 ["value"]
        3 NOT                              R0 R1
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["AccessorySpawnEffectsToggled"]
        6 DUPTABLE                         R4 K3 [{"enabled"}]
        7 SETTABLEKS                       R0 R4 K2 ["enabled"]
        9 NAMECALL                         R1 R1 K4 ["logCounter"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K5 ["set"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_4:
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
       31 GETUPVAL                         R7 5
       32 CALL                             R7 0 1
       33 JUMPIFNOT                        R7 ; [+3]
       34 GETTABLEKS                       R6 R5 K7 ["accessoryBehaviorEnableSpawnEffectsSetting"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 GETUPVAL                         R7 6
       39 GETUPVAL                         R8 7
       40 DUPTABLE                         R9 K12 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
       41 LOADK                            R12 K13 ["AccessoriesSettings"]
       42 LOADK                            R13 K14 ["AccessoryBehaviorsSection"]
       43 NAMECALL                         R10 R1 K15 ["getText"]
       45 CALL                             R10 3 1
       46 SETTABLEKS                       R10 R9 K8 ["text"]
       48 GETTABLEKS                       R10 R0 K9 ["layoutOrder"]
       50 SETTABLEKS                       R10 R9 K9 ["layoutOrder"]
       52 DUPTABLE                         R10 K21 [{"Description", "EnableSoundCheckbox", "EnableVFXCheckbox", "EnableEmissivesCheckbox", "EnableSpawnEffectsCheckbox"}]
       53 GETUPVAL                         R11 6
       54 LOADK                            R12 K22 ["TextLabel"]
       55 NEWTABLE                         R13 8 0
       57 GETUPVAL                         R14 3
       58 GETTABLEKS                       R14 R14 K23 ["Tag"]
       60 LOADK                            R15 K24 ["Component-TextLabel SubText"]
       61 SETTABLE                         R15 R13 R14
       62 GETIMPORT                        R14 K27 [UDim2.fromOffset]
       64 LOADN                            R15 0
       65 GETUPVAL                         R16 8
       66 GETTABLEKS                       R16 R16 K28 ["STANDARD_HEIGHT"]
       68 CALL                             R14 2 1
       69 SETTABLEKS                       R14 R13 K29 ["Size"]
       71 GETIMPORT                        R14 K33 [Enum.AutomaticSize.XY]
       73 SETTABLEKS                       R14 R13 K31 ["AutomaticSize"]
       75 LOADK                            R16 K13 ["AccessoriesSettings"]
       76 LOADK                            R17 K34 ["AccessoryBehaviorsSectionSubText"]
       77 NAMECALL                         R14 R1 K15 ["getText"]
       79 CALL                             R14 3 1
       80 SETTABLEKS                       R14 R13 K35 ["Text"]
       82 GETIMPORT                        R14 K38 [Enum.TextXAlignment.Left]
       84 SETTABLEKS                       R14 R13 K36 ["TextXAlignment"]
       86 LOADB                            R14 1
       87 SETTABLEKS                       R14 R13 K39 ["TextWrapped"]
       89 MOVE                             R14 R3
       90 CALL                             R14 0 1
       91 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
       93 DUPTABLE                         R14 K42 [{"Tooltip"}]
       94 GETUPVAL                         R15 6
       95 GETUPVAL                         R16 9
       96 DUPTABLE                         R17 K43 [{"Text"}]
       97 LOADK                            R20 K13 ["AccessoriesSettings"]
       98 LOADK                            R21 K34 ["AccessoryBehaviorsSectionSubText"]
       99 NAMECALL                         R18 R1 K15 ["getText"]
      101 CALL                             R18 3 1
      102 SETTABLEKS                       R18 R17 K35 ["Text"]
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K41 ["Tooltip"]
      107 CALL                             R11 3 1
      108 SETTABLEKS                       R11 R10 K16 ["Description"]
      110 GETUPVAL                         R11 6
      111 GETUPVAL                         R12 10
      112 DUPTABLE                         R13 K46 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      113 MOVE                             R14 R3
      114 CALL                             R14 0 1
      115 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      117 GETTABLEKS                       R14 R5 K47 ["accessoryBehaviorEnableSoundSetting"]
      119 GETTABLEKS                       R14 R14 K48 ["value"]
      121 SETTABLEKS                       R14 R13 K44 ["Checked"]
      123 LOADK                            R16 K13 ["AccessoriesSettings"]
      124 LOADK                            R17 K49 ["AccessoryBehaviorsSectionEnableSound"]
      125 NAMECALL                         R14 R1 K15 ["getText"]
      127 CALL                             R14 3 1
      128 SETTABLEKS                       R14 R13 K35 ["Text"]
      130 NEWCLOSURE                       R14 P0
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R2
      133 SETTABLEKS                       R14 R13 K45 ["OnClick"]
      135 CALL                             R11 2 1
      136 SETTABLEKS                       R11 R10 K17 ["EnableSoundCheckbox"]
      138 GETUPVAL                         R11 6
      139 GETUPVAL                         R12 10
      140 DUPTABLE                         R13 K46 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      141 MOVE                             R14 R3
      142 CALL                             R14 0 1
      143 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      145 GETTABLEKS                       R14 R5 K50 ["accessoryBehaviorEnableVFXSetting"]
      147 GETTABLEKS                       R14 R14 K48 ["value"]
      149 SETTABLEKS                       R14 R13 K44 ["Checked"]
      151 LOADK                            R16 K13 ["AccessoriesSettings"]
      152 LOADK                            R17 K51 ["AccessoryBehaviorsSectionEnableVFX"]
      153 NAMECALL                         R14 R1 K15 ["getText"]
      155 CALL                             R14 3 1
      156 SETTABLEKS                       R14 R13 K35 ["Text"]
      158 NEWCLOSURE                       R14 P1
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R2
      161 SETTABLEKS                       R14 R13 K45 ["OnClick"]
      163 CALL                             R11 2 1
      164 SETTABLEKS                       R11 R10 K18 ["EnableVFXCheckbox"]
      166 GETUPVAL                         R12 11
      167 CALL                             R12 0 1
      168 JUMPIF                           R12 ; [+2]
      169 LOADNIL                          R11
      170 JUMP                             ; [+26]
      171 GETUPVAL                         R11 6
      172 GETUPVAL                         R12 10
      173 DUPTABLE                         R13 K46 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      174 MOVE                             R14 R3
      175 CALL                             R14 0 1
      176 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      178 GETTABLEKS                       R14 R5 K52 ["accessoryBehaviorEnableEmissivesSetting"]
      180 GETTABLEKS                       R14 R14 K48 ["value"]
      182 SETTABLEKS                       R14 R13 K44 ["Checked"]
      184 LOADK                            R16 K13 ["AccessoriesSettings"]
      185 LOADK                            R17 K53 ["AccessoryBehaviorsSectionEnableEmissives"]
      186 NAMECALL                         R14 R1 K15 ["getText"]
      188 CALL                             R14 3 1
      189 SETTABLEKS                       R14 R13 K35 ["Text"]
      191 NEWCLOSURE                       R14 P2
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R2
      194 SETTABLEKS                       R14 R13 K45 ["OnClick"]
      196 CALL                             R11 2 1
      197 SETTABLEKS                       R11 R10 K19 ["EnableEmissivesCheckbox"]
      199 MOVE                             R11 R6
      200 JUMPIFNOT                        R11 ; [+24]
      201 GETUPVAL                         R11 6
      202 GETUPVAL                         R12 10
      203 DUPTABLE                         R13 K46 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
      204 MOVE                             R14 R3
      205 CALL                             R14 0 1
      206 SETTABLEKS                       R14 R13 K40 ["LayoutOrder"]
      208 GETTABLEKS                       R14 R6 K48 ["value"]
      210 SETTABLEKS                       R14 R13 K44 ["Checked"]
      212 LOADK                            R16 K13 ["AccessoriesSettings"]
      213 LOADK                            R17 K54 ["AccessoryBehaviorsSectionSpawnEffects"]
      214 NAMECALL                         R14 R1 K15 ["getText"]
      216 CALL                             R14 3 1
      217 SETTABLEKS                       R14 R13 K35 ["Text"]
      219 NEWCLOSURE                       R14 P3
      220 CAPTURE                          VAL R6
      221 CAPTURE                          VAL R2
      222 SETTABLEKS                       R14 R13 K45 ["OnClick"]
      224 CALL                             R11 2 1
      225 SETTABLEKS                       R11 R10 K20 ["EnableSpawnEffectsCheckbox"]
      227 CALL                             R7 3 -1
      228 RETURN                           R7 -1

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
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Src"]
       70 GETTABLEKS                       R9 R9 K17 ["Flags"]
       72 GETTABLEKS                       R9 R9 K19 ["getEngineFeatureAvatarSettingsSpawnEffects"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R9 R4 K20 ["ContextServices"]
       77 GETTABLEKS                       R10 R9 K21 ["Localization"]
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K6 ["Src"]
       83 GETTABLEKS                       R12 R12 K10 ["Util"]
       85 GETTABLEKS                       R12 R12 K22 ["Telemetry"]
       87 GETTABLEKS                       R12 R12 K23 ["TelemetryContext"]
       89 CALL                             R11 1 1
       90 GETTABLEKS                       R12 R4 K24 ["UI"]
       92 GETTABLEKS                       R13 R12 K25 ["Checkbox"]
       94 GETTABLEKS                       R14 R12 K26 ["Tooltip"]
       96 GETTABLEKS                       R15 R6 K27 ["createNextOrder"]
       98 GETTABLEKS                       R16 R5 K28 ["createElement"]
      100 DUPCLOSURE                       R17 K29 [PROTO_4]
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R15
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R7
      113 RETURN                           R17 1
