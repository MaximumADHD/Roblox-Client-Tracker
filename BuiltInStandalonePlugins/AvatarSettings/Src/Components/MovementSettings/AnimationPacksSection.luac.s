PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R1 R0 ; [+11]
        3 GETUPVAL                         R1 1
        4 LOADK                            R3 K0 ["AnimationPacksModeSelected"]
        5 DUPTABLE                         R4 K2 [{"animationPacksMode"}]
        6 GETTABLEKS                       R5 R0 K3 ["Name"]
        8 SETTABLEKS                       R5 R4 K1 ["animationPacksMode"]
       10 NAMECALL                         R1 R1 K4 ["logCounter"]
       12 CALL                             R1 3 0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K5 ["animationPacksSetting"]
       16 GETTABLEKS                       R1 R2 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
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
       32 NEWTABLE                         R5 0 3
       34 DUPTABLE                         R6 K8 [{"Id", "Label"}]
       35 GETIMPORT                        R7 K12 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
       37 SETTABLEKS                       R7 R6 K6 ["Id"]
       39 LOADK                            R9 K13 ["AnimationSettings"]
       40 LOADK                            R10 K14 ["AnimationPacksSectionPlayerChoiceButtonText"]
       41 NAMECALL                         R7 R1 K15 ["getText"]
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K7 ["Label"]
       46 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       47 GETIMPORT                        R8 K17 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
       49 SETTABLEKS                       R8 R7 K6 ["Id"]
       51 LOADK                            R10 K13 ["AnimationSettings"]
       52 LOADK                            R11 K18 ["AnimationPacksSectionStandardR15ButtonText"]
       53 NAMECALL                         R8 R1 K15 ["getText"]
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K7 ["Label"]
       58 DUPTABLE                         R8 K8 [{"Id", "Label"}]
       59 GETIMPORT                        R9 K20 [Enum.AvatarSettingsAnimationPacksMode.StandardR6]
       61 SETTABLEKS                       R9 R8 K6 ["Id"]
       63 LOADK                            R11 K13 ["AnimationSettings"]
       64 LOADK                            R12 K21 ["AnimationPacksSectionStandardR6ButtonText"]
       65 NAMECALL                         R9 R1 K15 ["getText"]
       67 CALL                             R9 3 1
       68 SETTABLEKS                       R9 R8 K7 ["Label"]
       70 SETLIST                          R5 R6 3 [1]
       72 GETTABLEKS                       R7 R4 K2 ["settings"]
       74 GETTABLEKS                       R6 R7 K22 ["animationSettings"]
       76 GETTABLEKS                       R8 R6 K23 ["animationPacksSetting"]
       78 GETTABLEKS                       R7 R8 K24 ["value"]
       80 GETUPVAL                         R8 6
       81 GETUPVAL                         R9 7
       82 DUPTABLE                         R10 K28 [{"text", "layoutOrder", "showWarning"}]
       83 LOADK                            R13 K13 ["AnimationSettings"]
       84 LOADK                            R14 K29 ["AnimationPacksSection"]
       85 NAMECALL                         R11 R1 K15 ["getText"]
       87 CALL                             R11 3 1
       88 SETTABLEKS                       R11 R10 K25 ["text"]
       90 GETTABLEKS                       R11 R0 K26 ["layoutOrder"]
       92 SETTABLEKS                       R11 R10 K26 ["layoutOrder"]
       94 LOADB                            R11 1
       95 SETTABLEKS                       R11 R10 K27 ["showWarning"]
       97 DUPTABLE                         R11 K31 [{"AnimationPacksModeSelector"}]
       98 GETUPVAL                         R12 6
       99 GETUPVAL                         R13 8
      100 DUPTABLE                         R14 K36 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
      101 MOVE                             R15 R3
      102 CALL                             R15 0 1
      103 SETTABLEKS                       R15 R14 K26 ["layoutOrder"]
      105 SETTABLEKS                       R5 R14 K32 ["items"]
      107 SETTABLEKS                       R7 R14 K33 ["selected"]
      109 GETUPVAL                         R16 1
      110 CALL                             R16 0 1
      111 JUMPIFNOT                        R16 ; [+5]
      112 NEWCLOSURE                       R15 P0
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R6
      116 JUMP                             ; [+4]
      117 GETTABLEKS                       R16 R6 K23 ["animationPacksSetting"]
      119 GETTABLEKS                       R15 R16 K37 ["set"]
      121 SETTABLEKS                       R15 R14 K34 ["onItemActivated"]
      123 LOADK                            R17 K13 ["AnimationSettings"]
      124 GETIMPORT                        R19 K12 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
      126 JUMPIFNOTEQ                      R7 R19 ; [+3]
      128 LOADK                            R18 K38 ["AnimationPacksSectionPlayerChoiceSubText"]
      129 JUMP                             ; [+7]
      130 GETIMPORT                        R19 K17 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
      132 JUMPIFNOTEQ                      R7 R19 ; [+3]
      134 LOADK                            R18 K39 ["AnimationPacksSectionStandardR15SubText"]
      135 JUMP                             ; [+1]
      136 LOADK                            R18 K40 ["AnimationPacksSectionStandardR6SubText"]
      137 NAMECALL                         R15 R1 K15 ["getText"]
      139 CALL                             R15 3 1
      140 SETTABLEKS                       R15 R14 K35 ["subText"]
      142 CALL                             R12 2 1
      143 SETTABLEKS                       R12 R11 K30 ["AnimationPacksModeSelector"]
      145 CALL                             R8 3 -1
      146 RETURN                           R8 -1

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
       22 GETTABLEKS                       R4 R5 K7 ["Components"]
       24 GETTABLEKS                       R3 R4 K10 ["ExpandableSection"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R5 R0 K11 ["Packages"]
       31 GETTABLEKS                       R4 R5 K12 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K7 ["Components"]
       40 GETTABLEKS                       R5 R6 K13 ["GenericModeSelector"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R7 R0 K11 ["Packages"]
       47 GETTABLEKS                       R6 R7 K14 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K11 ["Packages"]
       54 GETTABLEKS                       R7 R8 K15 ["ReactUtils"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R3 K16 ["ContextServices"]
       59 GETTABLEKS                       R8 R7 K17 ["Localization"]
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R13 R0 K6 ["Src"]
       65 GETTABLEKS                       R12 R13 K18 ["Util"]
       67 GETTABLEKS                       R11 R12 K19 ["Telemetry"]
       69 GETTABLEKS                       R10 R11 K20 ["TelemetryContext"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R13 R0 K6 ["Src"]
       76 GETTABLEKS                       R12 R13 K21 ["Flags"]
       78 GETTABLEKS                       R11 R12 K22 ["getFFlagAddTelemetry"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R6 K23 ["createNextOrder"]
       83 GETTABLEKS                       R12 R5 K24 ["createElement"]
       85 DUPCLOSURE                       R13 K25 [PROTO_1]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R4
       95 RETURN                           R13 1
