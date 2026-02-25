PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["getByText"]
        4 LOADK                            R3 K1 ["ScaleSectionPlayerChoiceButtonText:"]
        5 DUPTABLE                         R4 K3 [{"exact"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K2 ["exact"]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 1
       11 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       13 CALL                             R0 0 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K0 ["getByText"]
       18 LOADK                            R3 K5 ["ScaleSectionPlayerChoiceSubText"]
       19 DUPTABLE                         R4 K3 [{"exact"}]
       20 LOADB                            R5 0
       21 SETTABLEKS                       R5 R4 K2 ["exact"]
       23 CALL                             R2 2 -1
       24 CALL                             R1 -1 1
       25 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       27 CALL                             R0 0 0
       28 GETUPVAL                         R2 0
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R3 R4 K6 ["queryByText"]
       32 LOADK                            R4 K7 ["ScaleHeight"]
       33 DUPTABLE                         R5 K3 [{"exact"}]
       34 LOADB                            R6 0
       35 SETTABLEKS                       R6 R5 K2 ["exact"]
       37 CALL                             R3 2 -1
       38 CALL                             R2 -1 1
       39 GETTABLEKS                       R1 R2 K8 ["never"]
       41 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       43 CALL                             R0 0 0
       44 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["querySliderComponentFrom"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["queryTitledComponentByText"]
        6 LOADK                            R2 K2 ["ScaleHeight"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 1
        9 FASTCALL2K                       ASSERT R0 K3 ; [+5]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K3 ["Scale Height Slider not found"]
       13 GETIMPORT                        R1 K5 [assert]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R1 R2 K6 ["CustomHeight"]
       19 GETTABLEKS                       R2 R0 K7 ["lowerRangeInput"]
       21 JUMPIF                           R2 ; [+14]
       22 GETTABLEKS                       R4 R1 K8 ["Min"]
       24 GETTABLEKS                       R5 R1 K9 ["Max"]
       26 JUMPIFEQ                         R4 R5 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 FASTCALL2K                       ASSERT R3 K10 ; [+4]
       32 LOADK                            R4 K10 ["CustomHeight Min and Max should be equal if minMaxToggle is not present"]
       33 GETIMPORT                        R2 K5 [assert]
       35 CALL                             R2 2 0
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K11 ["checkSliderInputsAndBodyRulesCustomHeightToBe"]
       39 MOVE                             R3 R0
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R5 R1 K9 ["Max"]
       43 GETTABLEKS                       R7 R0 K7 ["lowerRangeInput"]
       45 JUMPIFNOT                        R7 ; [+3]
       46 GETTABLEKS                       R6 R1 K8 ["Min"]
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 CALL                             R2 4 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ScaleMode"]
        3 GETIMPORT                        R1 K4 [Enum.AvatarSettingsScaleMode.PlayerChoice]
        5 JUMPIFNOTEQ                      R0 R1 ; [+12]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 0
       10 GETIMPORT                        R1 K6 [Enum.AvatarSettingsScaleMode.CustomScale]
       12 SETTABLEKS                       R1 R0 K0 ["ScaleMode"]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R0 R1 K7 ["updateStylingServiceUnitTestOnly"]
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 3
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["getByText"]
        4 LOADK                            R3 K1 ["AppearanceSectionPlayerChoiceButtonText"]
        5 DUPTABLE                         R4 K3 [{"exact"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K2 ["exact"]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 1
       11 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       13 CALL                             R0 0 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K0 ["getByText"]
       18 LOADK                            R3 K5 ["AppearanceSectionPlayerChoiceSubText"]
       19 DUPTABLE                         R4 K3 [{"exact"}]
       20 LOADB                            R5 0
       21 SETTABLEKS                       R5 R4 K2 ["exact"]
       23 CALL                             R2 2 -1
       24 CALL                             R1 -1 1
       25 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       27 CALL                             R0 0 0
       28 GETUPVAL                         R2 0
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R3 R4 K6 ["queryByText"]
       32 LOADK                            R4 K7 ["AppearanceSectionFace"]
       33 DUPTABLE                         R5 K3 [{"exact"}]
       34 LOADB                            R6 0
       35 SETTABLEKS                       R6 R5 K2 ["exact"]
       37 CALL                             R3 2 -1
       38 CALL                             R2 -1 1
       39 GETTABLEKS                       R1 R2 K8 ["never"]
       41 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       43 CALL                             R0 0 0
       44 GETUPVAL                         R2 0
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R3 R4 K6 ["queryByText"]
       48 LOADK                            R4 K9 ["AppearanceSectionHead"]
       49 DUPTABLE                         R5 K3 [{"exact"}]
       50 LOADB                            R6 0
       51 SETTABLEKS                       R6 R5 K2 ["exact"]
       53 CALL                             R3 2 -1
       54 CALL                             R2 -1 1
       55 GETTABLEKS                       R1 R2 K8 ["never"]
       57 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       59 CALL                             R0 0 0
       60 GETUPVAL                         R2 0
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R3 R4 K6 ["queryByText"]
       64 LOADK                            R4 K10 ["AppearanceSectionTorso"]
       65 DUPTABLE                         R5 K3 [{"exact"}]
       66 LOADB                            R6 0
       67 SETTABLEKS                       R6 R5 K2 ["exact"]
       69 CALL                             R3 2 -1
       70 CALL                             R2 -1 1
       71 GETTABLEKS                       R1 R2 K8 ["never"]
       73 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       75 CALL                             R0 0 0
       76 GETUPVAL                         R2 0
       77 GETUPVAL                         R4 1
       78 GETTABLEKS                       R3 R4 K6 ["queryByText"]
       80 LOADK                            R4 K11 ["AppearanceSectionLeftArm"]
       81 DUPTABLE                         R5 K3 [{"exact"}]
       82 LOADB                            R6 0
       83 SETTABLEKS                       R6 R5 K2 ["exact"]
       85 CALL                             R3 2 -1
       86 CALL                             R2 -1 1
       87 GETTABLEKS                       R1 R2 K8 ["never"]
       89 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       91 CALL                             R0 0 0
       92 GETUPVAL                         R2 0
       93 GETUPVAL                         R4 1
       94 GETTABLEKS                       R3 R4 K6 ["queryByText"]
       96 LOADK                            R4 K12 ["AppearanceSectionRightArm"]
       97 DUPTABLE                         R5 K3 [{"exact"}]
       98 LOADB                            R6 0
       99 SETTABLEKS                       R6 R5 K2 ["exact"]
      101 CALL                             R3 2 -1
      102 CALL                             R2 -1 1
      103 GETTABLEKS                       R1 R2 K8 ["never"]
      105 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
      107 CALL                             R0 0 0
      108 GETUPVAL                         R2 0
      109 GETUPVAL                         R4 1
      110 GETTABLEKS                       R3 R4 K6 ["queryByText"]
      112 LOADK                            R4 K13 ["AppearanceSectionLeftLeg"]
      113 DUPTABLE                         R5 K3 [{"exact"}]
      114 LOADB                            R6 0
      115 SETTABLEKS                       R6 R5 K2 ["exact"]
      117 CALL                             R3 2 -1
      118 CALL                             R2 -1 1
      119 GETTABLEKS                       R1 R2 K8 ["never"]
      121 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
      123 CALL                             R0 0 0
      124 GETUPVAL                         R2 0
      125 GETUPVAL                         R4 1
      126 GETTABLEKS                       R3 R4 K6 ["queryByText"]
      128 LOADK                            R4 K14 ["AppearanceSectionRightLeg"]
      129 DUPTABLE                         R5 K3 [{"exact"}]
      130 LOADB                            R6 0
      131 SETTABLEKS                       R6 R5 K2 ["exact"]
      133 CALL                             R3 2 -1
      134 CALL                             R2 -1 1
      135 GETTABLEKS                       R1 R2 K8 ["never"]
      137 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
      139 CALL                             R0 0 0
      140 GETUPVAL                         R2 0
      141 GETUPVAL                         R4 1
      142 GETTABLEKS                       R3 R4 K6 ["queryByText"]
      144 LOADK                            R4 K15 ["AppearanceSectionMethod"]
      145 DUPTABLE                         R5 K3 [{"exact"}]
      146 LOADB                            R6 0
      147 SETTABLEKS                       R6 R5 K2 ["exact"]
      149 CALL                             R3 2 -1
      150 CALL                             R2 -1 1
      151 GETTABLEKS                       R1 R2 K8 ["never"]
      153 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
      155 CALL                             R0 0 0
      156 GETUPVAL                         R2 0
      157 GETUPVAL                         R4 1
      158 GETTABLEKS                       R3 R4 K6 ["queryByText"]
      160 LOADK                            R4 K16 ["AppearanceSectionBody"]
      161 DUPTABLE                         R5 K3 [{"exact"}]
      162 LOADB                            R6 0
      163 SETTABLEKS                       R6 R5 K2 ["exact"]
      165 CALL                             R3 2 -1
      166 CALL                             R2 -1 1
      167 GETTABLEKS                       R1 R2 K8 ["never"]
      169 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
      171 CALL                             R0 0 0
      172 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["findAssetIdComponentAndVerifyId"]
        3 LOADK                            R1 K1 ["AppearanceSectionFace"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K2 ["CustomFaceId"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K0 ["findAssetIdComponentAndVerifyId"]
       11 LOADK                            R1 K3 ["AppearanceSectionHead"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K4 ["CustomHeadId"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R0 R1 K0 ["findAssetIdComponentAndVerifyId"]
       19 LOADK                            R1 K5 ["AppearanceSectionTorso"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K6 ["CustomTorsoId"]
       23 CALL                             R0 2 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R0 R1 K0 ["findAssetIdComponentAndVerifyId"]
       27 LOADK                            R1 K7 ["AppearanceSectionLeftArm"]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R2 R3 K8 ["CustomLeftArmId"]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R0 R1 K0 ["findAssetIdComponentAndVerifyId"]
       35 LOADK                            R1 K9 ["AppearanceSectionRightArm"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R2 R3 K10 ["CustomRightArmId"]
       39 CALL                             R0 2 0
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R0 R1 K0 ["findAssetIdComponentAndVerifyId"]
       43 LOADK                            R1 K11 ["AppearanceSectionLeftLeg"]
       44 GETUPVAL                         R3 1
       45 GETTABLEKS                       R2 R3 K12 ["CustomLeftLegId"]
       47 CALL                             R0 2 0
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R0 R1 K0 ["findAssetIdComponentAndVerifyId"]
       51 LOADK                            R1 K13 ["AppearanceSectionRightLeg"]
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R2 R3 K14 ["CustomRightLegId"]
       55 CALL                             R0 2 0
       56 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AppearanceMode"]
        3 GETIMPORT                        R1 K4 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
        5 JUMPIFNOTEQ                      R0 R1 ; [+15]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 0
       10 GETIMPORT                        R1 K6 [Enum.AvatarSettingsAppearanceMode.CustomParts]
       12 SETTABLEKS                       R1 R0 K0 ["AppearanceMode"]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R0 R1 K7 ["updateStylingServiceUnitTestOnly"]
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 3
       19 CALL                             R0 0 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R0 R1 K0 ["AppearanceMode"]
       24 GETIMPORT                        R1 K6 [Enum.AvatarSettingsAppearanceMode.CustomParts]
       26 JUMPIFNOTEQ                      R0 R1 ; [+3]
       28 GETUPVAL                         R0 3
       29 CALL                             R0 0 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["getByText"]
        4 LOADK                            R3 K1 ["BuildSectionPlayerChoiceButtonText"]
        5 DUPTABLE                         R4 K3 [{"exact"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K2 ["exact"]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 1
       11 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       13 CALL                             R0 0 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K0 ["getByText"]
       18 LOADK                            R3 K5 ["BuildSectionPlayerChoiceSubText"]
       19 DUPTABLE                         R4 K3 [{"exact"}]
       20 LOADB                            R5 0
       21 SETTABLEKS                       R5 R4 K2 ["exact"]
       23 CALL                             R2 2 -1
       24 CALL                             R1 -1 1
       25 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       27 CALL                             R0 0 0
       28 GETUPVAL                         R2 0
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R3 R4 K6 ["queryByText"]
       32 LOADK                            R4 K7 ["BuildHeight"]
       33 DUPTABLE                         R5 K3 [{"exact"}]
       34 LOADB                            R6 0
       35 SETTABLEKS                       R6 R5 K2 ["exact"]
       37 CALL                             R3 2 -1
       38 CALL                             R2 -1 1
       39 GETTABLEKS                       R1 R2 K8 ["never"]
       41 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       43 CALL                             R0 0 0
       44 GETUPVAL                         R2 0
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R3 R4 K6 ["queryByText"]
       48 LOADK                            R4 K9 ["BuildWidth"]
       49 DUPTABLE                         R5 K3 [{"exact"}]
       50 LOADB                            R6 0
       51 SETTABLEKS                       R6 R5 K2 ["exact"]
       53 CALL                             R3 2 -1
       54 CALL                             R2 -1 1
       55 GETTABLEKS                       R1 R2 K8 ["never"]
       57 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       59 CALL                             R0 0 0
       60 GETUPVAL                         R2 0
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R3 R4 K6 ["queryByText"]
       64 LOADK                            R4 K10 ["BuildHead"]
       65 DUPTABLE                         R5 K3 [{"exact"}]
       66 LOADB                            R6 0
       67 SETTABLEKS                       R6 R5 K2 ["exact"]
       69 CALL                             R3 2 -1
       70 CALL                             R2 -1 1
       71 GETTABLEKS                       R1 R2 K8 ["never"]
       73 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       75 CALL                             R0 0 0
       76 GETUPVAL                         R2 0
       77 GETUPVAL                         R4 1
       78 GETTABLEKS                       R3 R4 K6 ["queryByText"]
       80 LOADK                            R4 K11 ["BuildBodyType"]
       81 DUPTABLE                         R5 K3 [{"exact"}]
       82 LOADB                            R6 0
       83 SETTABLEKS                       R6 R5 K2 ["exact"]
       85 CALL                             R3 2 -1
       86 CALL                             R2 -1 1
       87 GETTABLEKS                       R1 R2 K8 ["never"]
       89 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
       91 CALL                             R0 0 0
       92 GETUPVAL                         R2 0
       93 GETUPVAL                         R4 1
       94 GETTABLEKS                       R3 R4 K6 ["queryByText"]
       96 LOADK                            R4 K12 ["BuildProportions"]
       97 DUPTABLE                         R5 K3 [{"exact"}]
       98 LOADB                            R6 0
       99 SETTABLEKS                       R6 R5 K2 ["exact"]
      101 CALL                             R3 2 -1
      102 CALL                             R2 -1 1
      103 GETTABLEKS                       R1 R2 K8 ["never"]
      105 GETTABLEKS                       R0 R1 K4 ["toBeDefined"]
      107 CALL                             R0 0 0
      108 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["querySliderAndCheckValues"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["BuildHeight"]
        5 GETUPVAL                         R8 2
        6 GETTABLEKS                       R7 R8 K3 ["CustomHeightScale"]
        8 GETTABLEKS                       R6 R7 K4 ["Min"]
       10 MULK                             R5 R6 K2 [100]
       11 FASTCALL1                        MATH_ROUND R5 ; [+2]
       12 GETIMPORT                        R4 K7 [math.round]
       14 CALL                             R4 1 1
       15 FASTCALL1                        TOSTRING R4 ; [+2]
       16 GETIMPORT                        R3 K9 [tostring]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R9 2
       20 GETTABLEKS                       R8 R9 K3 ["CustomHeightScale"]
       22 GETTABLEKS                       R7 R8 K10 ["Max"]
       24 MULK                             R6 R7 K2 [100]
       25 FASTCALL1                        MATH_ROUND R6 ; [+2]
       26 GETIMPORT                        R5 K7 [math.round]
       28 CALL                             R5 1 1
       29 FASTCALL1                        TOSTRING R5 ; [+2]
       30 GETIMPORT                        R4 K9 [tostring]
       32 CALL                             R4 1 1
       33 CALL                             R0 4 0
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R0 R1 K0 ["querySliderAndCheckValues"]
       37 GETUPVAL                         R1 1
       38 LOADK                            R2 K11 ["BuildWidth"]
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R7 R8 K12 ["CustomWidthScale"]
       42 GETTABLEKS                       R6 R7 K4 ["Min"]
       44 MULK                             R5 R6 K2 [100]
       45 FASTCALL1                        MATH_ROUND R5 ; [+2]
       46 GETIMPORT                        R4 K7 [math.round]
       48 CALL                             R4 1 1
       49 FASTCALL1                        TOSTRING R4 ; [+2]
       50 GETIMPORT                        R3 K9 [tostring]
       52 CALL                             R3 1 1
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R8 R9 K12 ["CustomWidthScale"]
       56 GETTABLEKS                       R7 R8 K10 ["Max"]
       58 MULK                             R6 R7 K2 [100]
       59 FASTCALL1                        MATH_ROUND R6 ; [+2]
       60 GETIMPORT                        R5 K7 [math.round]
       62 CALL                             R5 1 1
       63 FASTCALL1                        TOSTRING R5 ; [+2]
       64 GETIMPORT                        R4 K9 [tostring]
       66 CALL                             R4 1 1
       67 CALL                             R0 4 0
       68 GETUPVAL                         R1 0
       69 GETTABLEKS                       R0 R1 K0 ["querySliderAndCheckValues"]
       71 GETUPVAL                         R1 1
       72 LOADK                            R2 K13 ["BuildHead"]
       73 GETUPVAL                         R8 2
       74 GETTABLEKS                       R7 R8 K14 ["CustomHeadScale"]
       76 GETTABLEKS                       R6 R7 K4 ["Min"]
       78 MULK                             R5 R6 K2 [100]
       79 FASTCALL1                        MATH_ROUND R5 ; [+2]
       80 GETIMPORT                        R4 K7 [math.round]
       82 CALL                             R4 1 1
       83 FASTCALL1                        TOSTRING R4 ; [+2]
       84 GETIMPORT                        R3 K9 [tostring]
       86 CALL                             R3 1 1
       87 GETUPVAL                         R9 2
       88 GETTABLEKS                       R8 R9 K14 ["CustomHeadScale"]
       90 GETTABLEKS                       R7 R8 K10 ["Max"]
       92 MULK                             R6 R7 K2 [100]
       93 FASTCALL1                        MATH_ROUND R6 ; [+2]
       94 GETIMPORT                        R5 K7 [math.round]
       96 CALL                             R5 1 1
       97 FASTCALL1                        TOSTRING R5 ; [+2]
       98 GETIMPORT                        R4 K9 [tostring]
      100 CALL                             R4 1 1
      101 CALL                             R0 4 0
      102 GETUPVAL                         R1 0
      103 GETTABLEKS                       R0 R1 K0 ["querySliderAndCheckValues"]
      105 GETUPVAL                         R1 1
      106 LOADK                            R2 K15 ["BuildBodyType"]
      107 GETUPVAL                         R8 2
      108 GETTABLEKS                       R7 R8 K16 ["CustomBodyTypeScale"]
      110 GETTABLEKS                       R6 R7 K4 ["Min"]
      112 MULK                             R5 R6 K2 [100]
      113 FASTCALL1                        MATH_ROUND R5 ; [+2]
      114 GETIMPORT                        R4 K7 [math.round]
      116 CALL                             R4 1 1
      117 FASTCALL1                        TOSTRING R4 ; [+2]
      118 GETIMPORT                        R3 K9 [tostring]
      120 CALL                             R3 1 1
      121 GETUPVAL                         R9 2
      122 GETTABLEKS                       R8 R9 K16 ["CustomBodyTypeScale"]
      124 GETTABLEKS                       R7 R8 K10 ["Max"]
      126 MULK                             R6 R7 K2 [100]
      127 FASTCALL1                        MATH_ROUND R6 ; [+2]
      128 GETIMPORT                        R5 K7 [math.round]
      130 CALL                             R5 1 1
      131 FASTCALL1                        TOSTRING R5 ; [+2]
      132 GETIMPORT                        R4 K9 [tostring]
      134 CALL                             R4 1 1
      135 CALL                             R0 4 0
      136 GETUPVAL                         R1 0
      137 GETTABLEKS                       R0 R1 K0 ["querySliderAndCheckValues"]
      139 GETUPVAL                         R1 1
      140 LOADK                            R2 K17 ["BuildProportions"]
      141 GETUPVAL                         R8 2
      142 GETTABLEKS                       R7 R8 K18 ["CustomProportionsScale"]
      144 GETTABLEKS                       R6 R7 K4 ["Min"]
      146 MULK                             R5 R6 K2 [100]
      147 FASTCALL1                        MATH_ROUND R5 ; [+2]
      148 GETIMPORT                        R4 K7 [math.round]
      150 CALL                             R4 1 1
      151 FASTCALL1                        TOSTRING R4 ; [+2]
      152 GETIMPORT                        R3 K9 [tostring]
      154 CALL                             R3 1 1
      155 GETUPVAL                         R9 2
      156 GETTABLEKS                       R8 R9 K18 ["CustomProportionsScale"]
      158 GETTABLEKS                       R7 R8 K10 ["Max"]
      160 MULK                             R6 R7 K2 [100]
      161 FASTCALL1                        MATH_ROUND R6 ; [+2]
      162 GETIMPORT                        R5 K7 [math.round]
      164 CALL                             R5 1 1
      165 FASTCALL1                        TOSTRING R5 ; [+2]
      166 GETIMPORT                        R4 K9 [tostring]
      168 CALL                             R4 1 1
      169 CALL                             R0 4 0
      170 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["BuildMode"]
        3 GETIMPORT                        R1 K4 [Enum.AvatarSettingsBuildMode.PlayerChoice]
        5 JUMPIFNOTEQ                      R0 R1 ; [+12]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 0
       10 GETIMPORT                        R1 K6 [Enum.AvatarSettingsBuildMode.CustomBuild]
       12 SETTABLEKS                       R1 R0 K0 ["BuildMode"]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R0 R1 K7 ["updateStylingServiceUnitTestOnly"]
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 3
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_9:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["selectBodyCategory"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["screen"]
        8 SETUPVAL                         R2 1
        9 SETUPVAL                         R1 3
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R2 R3 K2 ["ScaleMode"]
       13 GETIMPORT                        R3 K6 [Enum.AvatarSettingsScaleMode.PlayerChoice]
       15 JUMPIFNOTEQ                      R2 R3 ; [+12]
       17 GETUPVAL                         R2 4
       18 CALL                             R2 0 0
       19 GETUPVAL                         R2 3
       20 GETIMPORT                        R3 K8 [Enum.AvatarSettingsScaleMode.CustomScale]
       22 SETTABLEKS                       R3 R2 K2 ["ScaleMode"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K9 ["updateStylingServiceUnitTestOnly"]
       27 CALL                             R2 0 0
       28 GETUPVAL                         R2 5
       29 CALL                             R2 0 0
       30 GETUPVAL                         R2 6
       31 CALL                             R2 0 0
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R2 R3 K10 ["BuildMode"]
       35 GETIMPORT                        R3 K12 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       37 JUMPIFNOTEQ                      R2 R3 ; [+12]
       39 GETUPVAL                         R2 7
       40 CALL                             R2 0 0
       41 GETUPVAL                         R2 3
       42 GETIMPORT                        R3 K14 [Enum.AvatarSettingsBuildMode.CustomBuild]
       44 SETTABLEKS                       R3 R2 K10 ["BuildMode"]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R2 R3 K9 ["updateStylingServiceUnitTestOnly"]
       49 CALL                             R2 0 0
       50 GETUPVAL                         R2 8
       51 CALL                             R2 0 0
       52 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R7 R0 K6 ["Src"]
       11 GETTABLEKS                       R6 R7 K7 ["tests"]
       13 GETTABLEKS                       R5 R6 K8 ["Integration"]
       15 GETTABLEKS                       R4 R5 K9 ["SettingsTests"]
       17 GETTABLEKS                       R3 R4 K10 ["BodySettings"]
       19 GETTABLEKS                       R2 R3 K11 ["BodySettingsTestUtils"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K5 [require]
       24 GETTABLEKS                       R5 R0 K12 ["Packages"]
       26 GETTABLEKS                       R4 R5 K13 ["Dev"]
       28 GETTABLEKS                       R3 R4 K14 ["JestGlobals"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K5 [require]
       33 GETTABLEKS                       R6 R0 K12 ["Packages"]
       35 GETTABLEKS                       R5 R6 K13 ["Dev"]
       37 GETTABLEKS                       R4 R5 K15 ["ReactTestingLibrary"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R8 R0 K6 ["Src"]
       44 GETTABLEKS                       R7 R8 K7 ["tests"]
       46 GETTABLEKS                       R6 R7 K16 ["Util"]
       48 GETTABLEKS                       R5 R6 K17 ["setup"]
       50 CALL                             R4 1 1
       51 GETTABLEKS                       R5 R2 K18 ["expect"]
       53 LOADNIL                          R6
       54 LOADNIL                          R7
       55 LOADNIL                          R8
       56 NEWTABLE                         R9 1 0
       58 NEWCLOSURE                       R10 P0
       59 CAPTURE                          VAL R5
       60 CAPTURE                          REF R7
       61 NEWCLOSURE                       R11 P1
       62 CAPTURE                          REF R6
       63 CAPTURE                          REF R8
       64 CAPTURE                          VAL R1
       65 NEWCLOSURE                       R12 P2
       66 CAPTURE                          REF R8
       67 CAPTURE                          VAL R10
       68 CAPTURE                          REF R6
       69 CAPTURE                          VAL R11
       70 NEWCLOSURE                       R13 P3
       71 CAPTURE                          VAL R5
       72 CAPTURE                          REF R7
       73 NEWCLOSURE                       R14 P4
       74 CAPTURE                          REF R6
       75 CAPTURE                          REF R8
       76 NEWCLOSURE                       R15 P5
       77 CAPTURE                          REF R8
       78 CAPTURE                          VAL R13
       79 CAPTURE                          REF R6
       80 CAPTURE                          VAL R14
       81 NEWCLOSURE                       R16 P6
       82 CAPTURE                          VAL R5
       83 CAPTURE                          REF R7
       84 NEWCLOSURE                       R17 P7
       85 CAPTURE                          VAL R1
       86 CAPTURE                          REF R6
       87 CAPTURE                          REF R8
       88 NEWCLOSURE                       R18 P8
       89 CAPTURE                          REF R8
       90 CAPTURE                          VAL R16
       91 CAPTURE                          REF R6
       92 CAPTURE                          VAL R17
       93 NEWCLOSURE                       R19 P9
       94 CAPTURE                          REF R6
       95 CAPTURE                          REF R7
       96 CAPTURE                          VAL R3
       97 CAPTURE                          REF R8
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R16
      102 CAPTURE                          VAL R17
      103 SETTABLEKS                       R19 R9 K19 ["testAvatarBodyRules"]
      105 CLOSEUPVALS                      R6
      106 RETURN                           R9 1
