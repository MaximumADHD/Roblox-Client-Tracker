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
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K5 ["animationPacksSetting"]
       16 GETTABLEKS                       R1 R1 K6 ["set"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
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
       27 NEWTABLE                         R5 0 3
       29 DUPTABLE                         R6 K8 [{"Id", "Label"}]
       30 GETIMPORT                        R7 K12 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
       32 SETTABLEKS                       R7 R6 K6 ["Id"]
       34 LOADK                            R9 K13 ["AnimationSettings"]
       35 LOADK                            R10 K14 ["AnimationPacksSectionPlayerChoiceButtonText"]
       36 NAMECALL                         R7 R1 K15 ["getText"]
       38 CALL                             R7 3 1
       39 SETTABLEKS                       R7 R6 K7 ["Label"]
       41 DUPTABLE                         R7 K8 [{"Id", "Label"}]
       42 GETIMPORT                        R8 K17 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
       44 SETTABLEKS                       R8 R7 K6 ["Id"]
       46 LOADK                            R10 K13 ["AnimationSettings"]
       47 LOADK                            R11 K18 ["AnimationPacksSectionStandardR15ButtonText"]
       48 NAMECALL                         R8 R1 K15 ["getText"]
       50 CALL                             R8 3 1
       51 SETTABLEKS                       R8 R7 K7 ["Label"]
       53 DUPTABLE                         R8 K8 [{"Id", "Label"}]
       54 GETIMPORT                        R9 K20 [Enum.AvatarSettingsAnimationPacksMode.StandardR6]
       56 SETTABLEKS                       R9 R8 K6 ["Id"]
       58 LOADK                            R11 K13 ["AnimationSettings"]
       59 LOADK                            R12 K21 ["AnimationPacksSectionStandardR6ButtonText"]
       60 NAMECALL                         R9 R1 K15 ["getText"]
       62 CALL                             R9 3 1
       63 SETTABLEKS                       R9 R8 K7 ["Label"]
       65 SETLIST                          R5 R6 3 [1]
       67 GETTABLEKS                       R6 R4 K2 ["settings"]
       69 GETTABLEKS                       R6 R6 K22 ["animationSettings"]
       71 GETTABLEKS                       R7 R6 K23 ["animationPacksSetting"]
       73 GETTABLEKS                       R7 R7 K24 ["value"]
       75 GETUPVAL                         R8 5
       76 GETUPVAL                         R9 6
       77 DUPTABLE                         R10 K29 [{["text"], ["layoutOrder"], ["showWarning"] = True}]
       78 LOADK                            R13 K13 ["AnimationSettings"]
       79 LOADK                            R14 K30 ["AnimationPacksSection"]
       80 NAMECALL                         R11 R1 K15 ["getText"]
       82 CALL                             R11 3 1
       83 SETTABLEKS                       R11 R10 K25 ["text"]
       85 GETTABLEKS                       R11 R0 K26 ["layoutOrder"]
       87 SETTABLEKS                       R11 R10 K26 ["layoutOrder"]
       89 DUPTABLE                         R11 K32 [{"AnimationPacksModeSelector"}]
       90 GETUPVAL                         R12 5
       91 GETUPVAL                         R13 7
       92 DUPTABLE                         R14 K37 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
       93 MOVE                             R15 R3
       94 CALL                             R15 0 1
       95 SETTABLEKS                       R15 R14 K26 ["layoutOrder"]
       97 SETTABLEKS                       R5 R14 K33 ["items"]
       99 SETTABLEKS                       R7 R14 K34 ["selected"]
      101 NEWCLOSURE                       R15 P0
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R6
      105 SETTABLEKS                       R15 R14 K35 ["onItemActivated"]
      107 LOADK                            R17 K13 ["AnimationSettings"]
      108 GETIMPORT                        R19 K12 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
      110 JUMPIFNOTEQ                      R7 R19 ; [+3]
      112 LOADK                            R18 K38 ["AnimationPacksSectionPlayerChoiceSubText"]
      113 JUMP                             ; [+7]
      114 GETIMPORT                        R19 K17 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
      116 JUMPIFNOTEQ                      R7 R19 ; [+3]
      118 LOADK                            R18 K39 ["AnimationPacksSectionStandardR15SubText"]
      119 JUMP                             ; [+1]
      120 LOADK                            R18 K40 ["AnimationPacksSectionStandardR6SubText"]
      121 NAMECALL                         R15 R1 K15 ["getText"]
      123 CALL                             R15 3 1
      124 SETTABLEKS                       R15 R14 K36 ["subText"]
      126 CALL                             R12 2 1
      127 SETTABLEKS                       R12 R11 K31 ["AnimationPacksModeSelector"]
      129 CALL                             R8 3 -1
      130 RETURN                           R8 -1

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
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K10 ["ExpandableSection"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K11 ["Packages"]
       31 GETTABLEKS                       R4 R4 K12 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Components"]
       40 GETTABLEKS                       R5 R5 K13 ["GenericModeSelector"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K11 ["Packages"]
       47 GETTABLEKS                       R6 R6 K14 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K11 ["Packages"]
       54 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R3 K16 ["ContextServices"]
       59 GETTABLEKS                       R8 R7 K17 ["Localization"]
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Src"]
       65 GETTABLEKS                       R10 R10 K18 ["Util"]
       67 GETTABLEKS                       R10 R10 K19 ["Telemetry"]
       69 GETTABLEKS                       R10 R10 K20 ["TelemetryContext"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R6 K21 ["createNextOrder"]
       74 GETTABLEKS                       R11 R5 K22 ["createElement"]
       76 DUPCLOSURE                       R12 K23 [PROTO_1]
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R4
       85 RETURN                           R12 1
