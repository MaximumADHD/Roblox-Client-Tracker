PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["getByText"]
        4 LOADK                            R2 K1 ["ScaleSectionPlayerChoiceButtonText:"]
        5 DUPTABLE                         R3 K4 [{["exact"] = False}]
        6 CALL                             R1 2 -1
        7 CALL                             R0 -1 1
        8 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["getByText"]
       15 LOADK                            R2 K6 ["ScaleSectionPlayerChoiceSubText"]
       16 DUPTABLE                         R3 K4 [{["exact"] = False}]
       17 CALL                             R1 2 -1
       18 CALL                             R0 -1 1
       19 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       21 CALL                             R0 0 0
       22 GETUPVAL                         R0 0
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       26 LOADK                            R2 K8 ["ScaleHeight"]
       27 DUPTABLE                         R3 K4 [{["exact"] = False}]
       28 CALL                             R1 2 -1
       29 CALL                             R0 -1 1
       30 GETTABLEKS                       R0 R0 K9 ["never"]
       32 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       34 CALL                             R0 0 0
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["querySliderComponentFrom"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["queryTitledComponentByText"]
        6 LOADK                            R2 K2 ["ScaleHeight"]
        7 CALL                             R1 1 -1
        8 CALL                             R0 -1 1
        9 FASTCALL2K                       ASSERT R0 K3 ; [+5]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K3 ["Scale Height Slider not found"]
       13 GETIMPORT                        R1 K5 [assert]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K6 ["CustomHeight"]
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
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R2 R2 K11 ["checkSliderInputsAndBodyRulesCustomHeightToBe"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ScaleMode"]
        3 GETIMPORT                        R1 K4 [Enum.AvatarSettingsScaleMode.PlayerChoice]
        5 JUMPIFNOTEQ                      R0 R1 ; [+12]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 0
       10 GETIMPORT                        R1 K6 [Enum.AvatarSettingsScaleMode.CustomScale]
       12 SETTABLEKS                       R1 R0 K0 ["ScaleMode"]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K7 ["updateStylingServiceUnitTestOnly"]
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 3
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["getByText"]
        4 LOADK                            R2 K1 ["AppearanceSectionPlayerChoiceButtonText"]
        5 DUPTABLE                         R3 K4 [{["exact"] = False}]
        6 CALL                             R1 2 -1
        7 CALL                             R0 -1 1
        8 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["getByText"]
       15 LOADK                            R2 K6 ["AppearanceSectionPlayerChoiceSubText"]
       16 DUPTABLE                         R3 K4 [{["exact"] = False}]
       17 CALL                             R1 2 -1
       18 CALL                             R0 -1 1
       19 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       21 CALL                             R0 0 0
       22 GETUPVAL                         R0 0
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       26 LOADK                            R2 K8 ["AppearanceSectionFace"]
       27 DUPTABLE                         R3 K4 [{["exact"] = False}]
       28 CALL                             R1 2 -1
       29 CALL                             R0 -1 1
       30 GETTABLEKS                       R0 R0 K9 ["never"]
       32 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       34 CALL                             R0 0 0
       35 GETUPVAL                         R0 0
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       39 LOADK                            R2 K10 ["AppearanceSectionHead"]
       40 DUPTABLE                         R3 K4 [{["exact"] = False}]
       41 CALL                             R1 2 -1
       42 CALL                             R0 -1 1
       43 GETTABLEKS                       R0 R0 K9 ["never"]
       45 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       47 CALL                             R0 0 0
       48 GETUPVAL                         R0 0
       49 GETUPVAL                         R1 1
       50 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       52 LOADK                            R2 K11 ["AppearanceSectionTorso"]
       53 DUPTABLE                         R3 K4 [{["exact"] = False}]
       54 CALL                             R1 2 -1
       55 CALL                             R0 -1 1
       56 GETTABLEKS                       R0 R0 K9 ["never"]
       58 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       60 CALL                             R0 0 0
       61 GETUPVAL                         R0 0
       62 GETUPVAL                         R1 1
       63 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       65 LOADK                            R2 K12 ["AppearanceSectionLeftArm"]
       66 DUPTABLE                         R3 K4 [{["exact"] = False}]
       67 CALL                             R1 2 -1
       68 CALL                             R0 -1 1
       69 GETTABLEKS                       R0 R0 K9 ["never"]
       71 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       73 CALL                             R0 0 0
       74 GETUPVAL                         R0 0
       75 GETUPVAL                         R1 1
       76 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       78 LOADK                            R2 K13 ["AppearanceSectionRightArm"]
       79 DUPTABLE                         R3 K4 [{["exact"] = False}]
       80 CALL                             R1 2 -1
       81 CALL                             R0 -1 1
       82 GETTABLEKS                       R0 R0 K9 ["never"]
       84 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       86 CALL                             R0 0 0
       87 GETUPVAL                         R0 0
       88 GETUPVAL                         R1 1
       89 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       91 LOADK                            R2 K14 ["AppearanceSectionLeftLeg"]
       92 DUPTABLE                         R3 K4 [{["exact"] = False}]
       93 CALL                             R1 2 -1
       94 CALL                             R0 -1 1
       95 GETTABLEKS                       R0 R0 K9 ["never"]
       97 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       99 CALL                             R0 0 0
      100 GETUPVAL                         R0 0
      101 GETUPVAL                         R1 1
      102 GETTABLEKS                       R1 R1 K7 ["queryByText"]
      104 LOADK                            R2 K15 ["AppearanceSectionRightLeg"]
      105 DUPTABLE                         R3 K4 [{["exact"] = False}]
      106 CALL                             R1 2 -1
      107 CALL                             R0 -1 1
      108 GETTABLEKS                       R0 R0 K9 ["never"]
      110 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
      112 CALL                             R0 0 0
      113 GETUPVAL                         R0 0
      114 GETUPVAL                         R1 1
      115 GETTABLEKS                       R1 R1 K7 ["queryByText"]
      117 LOADK                            R2 K16 ["AppearanceSectionMethod"]
      118 DUPTABLE                         R3 K4 [{["exact"] = False}]
      119 CALL                             R1 2 -1
      120 CALL                             R0 -1 1
      121 GETTABLEKS                       R0 R0 K9 ["never"]
      123 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
      125 CALL                             R0 0 0
      126 GETUPVAL                         R0 0
      127 GETUPVAL                         R1 1
      128 GETTABLEKS                       R1 R1 K7 ["queryByText"]
      130 LOADK                            R2 K17 ["AppearanceSectionBody"]
      131 DUPTABLE                         R3 K4 [{["exact"] = False}]
      132 CALL                             R1 2 -1
      133 CALL                             R0 -1 1
      134 GETTABLEKS                       R0 R0 K9 ["never"]
      136 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
      138 CALL                             R0 0 0
      139 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["findAssetIdComponentAndVerifyId"]
        3 LOADK                            R1 K1 ["AppearanceSectionFace"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K2 ["CustomFaceId"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["findAssetIdComponentAndVerifyId"]
       11 LOADK                            R1 K3 ["AppearanceSectionHead"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K4 ["CustomHeadId"]
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["findAssetIdComponentAndVerifyId"]
       19 LOADK                            R1 K5 ["AppearanceSectionTorso"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K6 ["CustomTorsoId"]
       23 CALL                             R0 2 0
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["findAssetIdComponentAndVerifyId"]
       27 LOADK                            R1 K7 ["AppearanceSectionLeftArm"]
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K8 ["CustomLeftArmId"]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R0 0
       33 GETTABLEKS                       R0 R0 K0 ["findAssetIdComponentAndVerifyId"]
       35 LOADK                            R1 K9 ["AppearanceSectionRightArm"]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K10 ["CustomRightArmId"]
       39 CALL                             R0 2 0
       40 GETUPVAL                         R0 0
       41 GETTABLEKS                       R0 R0 K0 ["findAssetIdComponentAndVerifyId"]
       43 LOADK                            R1 K11 ["AppearanceSectionLeftLeg"]
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R2 R2 K12 ["CustomLeftLegId"]
       47 CALL                             R0 2 0
       48 GETUPVAL                         R0 0
       49 GETTABLEKS                       R0 R0 K0 ["findAssetIdComponentAndVerifyId"]
       51 LOADK                            R1 K13 ["AppearanceSectionRightLeg"]
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R2 R2 K14 ["CustomRightLegId"]
       55 CALL                             R0 2 0
       56 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AppearanceMode"]
        3 GETIMPORT                        R1 K4 [Enum.AvatarSettingsAppearanceMode.PlayerChoice]
        5 JUMPIFNOTEQ                      R0 R1 ; [+15]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 0
       10 GETIMPORT                        R1 K6 [Enum.AvatarSettingsAppearanceMode.CustomParts]
       12 SETTABLEKS                       R1 R0 K0 ["AppearanceMode"]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K7 ["updateStylingServiceUnitTestOnly"]
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 3
       19 CALL                             R0 0 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K0 ["AppearanceMode"]
       24 GETIMPORT                        R1 K6 [Enum.AvatarSettingsAppearanceMode.CustomParts]
       26 JUMPIFNOTEQ                      R0 R1 ; [+3]
       28 GETUPVAL                         R0 3
       29 CALL                             R0 0 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["getByText"]
        4 LOADK                            R2 K1 ["BuildSectionPlayerChoiceButtonText"]
        5 DUPTABLE                         R3 K4 [{["exact"] = False}]
        6 CALL                             R1 2 -1
        7 CALL                             R0 -1 1
        8 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K0 ["getByText"]
       15 LOADK                            R2 K6 ["BuildSectionPlayerChoiceSubText"]
       16 DUPTABLE                         R3 K4 [{["exact"] = False}]
       17 CALL                             R1 2 -1
       18 CALL                             R0 -1 1
       19 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       21 CALL                             R0 0 0
       22 GETUPVAL                         R0 0
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       26 LOADK                            R2 K8 ["BuildHeight"]
       27 DUPTABLE                         R3 K4 [{["exact"] = False}]
       28 CALL                             R1 2 -1
       29 CALL                             R0 -1 1
       30 GETTABLEKS                       R0 R0 K9 ["never"]
       32 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       34 CALL                             R0 0 0
       35 GETUPVAL                         R0 0
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       39 LOADK                            R2 K10 ["BuildWidth"]
       40 DUPTABLE                         R3 K4 [{["exact"] = False}]
       41 CALL                             R1 2 -1
       42 CALL                             R0 -1 1
       43 GETTABLEKS                       R0 R0 K9 ["never"]
       45 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       47 CALL                             R0 0 0
       48 GETUPVAL                         R0 0
       49 GETUPVAL                         R1 1
       50 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       52 LOADK                            R2 K11 ["BuildHead"]
       53 DUPTABLE                         R3 K4 [{["exact"] = False}]
       54 CALL                             R1 2 -1
       55 CALL                             R0 -1 1
       56 GETTABLEKS                       R0 R0 K9 ["never"]
       58 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       60 CALL                             R0 0 0
       61 GETUPVAL                         R0 0
       62 GETUPVAL                         R1 1
       63 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       65 LOADK                            R2 K12 ["BuildBodyType"]
       66 DUPTABLE                         R3 K4 [{["exact"] = False}]
       67 CALL                             R1 2 -1
       68 CALL                             R0 -1 1
       69 GETTABLEKS                       R0 R0 K9 ["never"]
       71 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       73 CALL                             R0 0 0
       74 GETUPVAL                         R0 0
       75 GETUPVAL                         R1 1
       76 GETTABLEKS                       R1 R1 K7 ["queryByText"]
       78 LOADK                            R2 K13 ["BuildProportions"]
       79 DUPTABLE                         R3 K4 [{["exact"] = False}]
       80 CALL                             R1 2 -1
       81 CALL                             R0 -1 1
       82 GETTABLEKS                       R0 R0 K9 ["never"]
       84 GETTABLEKS                       R0 R0 K5 ["toBeDefined"]
       86 CALL                             R0 0 0
       87 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["querySliderAndCheckValues"]
        3 GETUPVAL                         R1 1
        4 LOADK                            R2 K1 ["BuildHeight"]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K3 ["CustomHeightScale"]
        8 GETTABLEKS                       R6 R6 K4 ["Min"]
       10 MULK                             R5 R6 K2 [100]
       11 FASTCALL1                        MATH_ROUND R5 ; [+2]
       12 GETIMPORT                        R4 K7 [math.round]
       14 CALL                             R4 1 1
       15 FASTCALL1                        TOSTRING R4 ; [+2]
       16 GETIMPORT                        R3 K9 [tostring]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K3 ["CustomHeightScale"]
       22 GETTABLEKS                       R7 R7 K10 ["Max"]
       24 MULK                             R6 R7 K2 [100]
       25 FASTCALL1                        MATH_ROUND R6 ; [+2]
       26 GETIMPORT                        R5 K7 [math.round]
       28 CALL                             R5 1 1
       29 FASTCALL1                        TOSTRING R5 ; [+2]
       30 GETIMPORT                        R4 K9 [tostring]
       32 CALL                             R4 1 1
       33 CALL                             R0 4 0
       34 GETUPVAL                         R0 0
       35 GETTABLEKS                       R0 R0 K0 ["querySliderAndCheckValues"]
       37 GETUPVAL                         R1 1
       38 LOADK                            R2 K11 ["BuildWidth"]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K12 ["CustomWidthScale"]
       42 GETTABLEKS                       R6 R6 K4 ["Min"]
       44 MULK                             R5 R6 K2 [100]
       45 FASTCALL1                        MATH_ROUND R5 ; [+2]
       46 GETIMPORT                        R4 K7 [math.round]
       48 CALL                             R4 1 1
       49 FASTCALL1                        TOSTRING R4 ; [+2]
       50 GETIMPORT                        R3 K9 [tostring]
       52 CALL                             R3 1 1
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R7 R7 K12 ["CustomWidthScale"]
       56 GETTABLEKS                       R7 R7 K10 ["Max"]
       58 MULK                             R6 R7 K2 [100]
       59 FASTCALL1                        MATH_ROUND R6 ; [+2]
       60 GETIMPORT                        R5 K7 [math.round]
       62 CALL                             R5 1 1
       63 FASTCALL1                        TOSTRING R5 ; [+2]
       64 GETIMPORT                        R4 K9 [tostring]
       66 CALL                             R4 1 1
       67 CALL                             R0 4 0
       68 GETUPVAL                         R0 0
       69 GETTABLEKS                       R0 R0 K0 ["querySliderAndCheckValues"]
       71 GETUPVAL                         R1 1
       72 LOADK                            R2 K13 ["BuildHead"]
       73 GETUPVAL                         R6 2
       74 GETTABLEKS                       R6 R6 K14 ["CustomHeadScale"]
       76 GETTABLEKS                       R6 R6 K4 ["Min"]
       78 MULK                             R5 R6 K2 [100]
       79 FASTCALL1                        MATH_ROUND R5 ; [+2]
       80 GETIMPORT                        R4 K7 [math.round]
       82 CALL                             R4 1 1
       83 FASTCALL1                        TOSTRING R4 ; [+2]
       84 GETIMPORT                        R3 K9 [tostring]
       86 CALL                             R3 1 1
       87 GETUPVAL                         R7 2
       88 GETTABLEKS                       R7 R7 K14 ["CustomHeadScale"]
       90 GETTABLEKS                       R7 R7 K10 ["Max"]
       92 MULK                             R6 R7 K2 [100]
       93 FASTCALL1                        MATH_ROUND R6 ; [+2]
       94 GETIMPORT                        R5 K7 [math.round]
       96 CALL                             R5 1 1
       97 FASTCALL1                        TOSTRING R5 ; [+2]
       98 GETIMPORT                        R4 K9 [tostring]
      100 CALL                             R4 1 1
      101 CALL                             R0 4 0
      102 GETUPVAL                         R0 0
      103 GETTABLEKS                       R0 R0 K0 ["querySliderAndCheckValues"]
      105 GETUPVAL                         R1 1
      106 LOADK                            R2 K15 ["BuildBodyType"]
      107 GETUPVAL                         R6 2
      108 GETTABLEKS                       R6 R6 K16 ["CustomBodyTypeScale"]
      110 GETTABLEKS                       R6 R6 K4 ["Min"]
      112 MULK                             R5 R6 K2 [100]
      113 FASTCALL1                        MATH_ROUND R5 ; [+2]
      114 GETIMPORT                        R4 K7 [math.round]
      116 CALL                             R4 1 1
      117 FASTCALL1                        TOSTRING R4 ; [+2]
      118 GETIMPORT                        R3 K9 [tostring]
      120 CALL                             R3 1 1
      121 GETUPVAL                         R7 2
      122 GETTABLEKS                       R7 R7 K16 ["CustomBodyTypeScale"]
      124 GETTABLEKS                       R7 R7 K10 ["Max"]
      126 MULK                             R6 R7 K2 [100]
      127 FASTCALL1                        MATH_ROUND R6 ; [+2]
      128 GETIMPORT                        R5 K7 [math.round]
      130 CALL                             R5 1 1
      131 FASTCALL1                        TOSTRING R5 ; [+2]
      132 GETIMPORT                        R4 K9 [tostring]
      134 CALL                             R4 1 1
      135 CALL                             R0 4 0
      136 GETUPVAL                         R0 0
      137 GETTABLEKS                       R0 R0 K0 ["querySliderAndCheckValues"]
      139 GETUPVAL                         R1 1
      140 LOADK                            R2 K17 ["BuildProportions"]
      141 GETUPVAL                         R6 2
      142 GETTABLEKS                       R6 R6 K18 ["CustomProportionsScale"]
      144 GETTABLEKS                       R6 R6 K4 ["Min"]
      146 MULK                             R5 R6 K2 [100]
      147 FASTCALL1                        MATH_ROUND R5 ; [+2]
      148 GETIMPORT                        R4 K7 [math.round]
      150 CALL                             R4 1 1
      151 FASTCALL1                        TOSTRING R4 ; [+2]
      152 GETIMPORT                        R3 K9 [tostring]
      154 CALL                             R3 1 1
      155 GETUPVAL                         R7 2
      156 GETTABLEKS                       R7 R7 K18 ["CustomProportionsScale"]
      158 GETTABLEKS                       R7 R7 K10 ["Max"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BuildMode"]
        3 GETIMPORT                        R1 K4 [Enum.AvatarSettingsBuildMode.PlayerChoice]
        5 JUMPIFNOTEQ                      R0 R1 ; [+12]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 0
       10 GETIMPORT                        R1 K6 [Enum.AvatarSettingsBuildMode.CustomBuild]
       12 SETTABLEKS                       R1 R0 K0 ["BuildMode"]
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K7 ["updateStylingServiceUnitTestOnly"]
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 3
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_9:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["selectBodyCategory"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["screen"]
        8 SETUPVAL                         R2 1
        9 SETUPVAL                         R1 3
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K2 ["ScaleMode"]
       13 GETIMPORT                        R3 K6 [Enum.AvatarSettingsScaleMode.PlayerChoice]
       15 JUMPIFNOTEQ                      R2 R3 ; [+12]
       17 GETUPVAL                         R2 4
       18 CALL                             R2 0 0
       19 GETUPVAL                         R2 3
       20 GETIMPORT                        R3 K8 [Enum.AvatarSettingsScaleMode.CustomScale]
       22 SETTABLEKS                       R3 R2 K2 ["ScaleMode"]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K9 ["updateStylingServiceUnitTestOnly"]
       27 CALL                             R2 0 0
       28 GETUPVAL                         R2 5
       29 CALL                             R2 0 0
       30 GETUPVAL                         R2 6
       31 CALL                             R2 0 0
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K10 ["BuildMode"]
       35 GETIMPORT                        R3 K12 [Enum.AvatarSettingsBuildMode.PlayerChoice]
       37 JUMPIFNOTEQ                      R2 R3 ; [+12]
       39 GETUPVAL                         R2 7
       40 CALL                             R2 0 0
       41 GETUPVAL                         R2 3
       42 GETIMPORT                        R3 K14 [Enum.AvatarSettingsBuildMode.CustomBuild]
       44 SETTABLEKS                       R3 R2 K10 ["BuildMode"]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K9 ["updateStylingServiceUnitTestOnly"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["tests"]
       13 GETTABLEKS                       R2 R2 K8 ["Integration"]
       15 GETTABLEKS                       R2 R2 K9 ["SettingsTests"]
       17 GETTABLEKS                       R2 R2 K10 ["BodySettings"]
       19 GETTABLEKS                       R2 R2 K11 ["BodySettingsTestUtils"]
       21 CALL                             R1 1 1
       22 GETIMPORT                        R2 K5 [require]
       24 GETTABLEKS                       R3 R0 K12 ["Packages"]
       26 GETTABLEKS                       R3 R3 K13 ["Dev"]
       28 GETTABLEKS                       R3 R3 K14 ["JestGlobals"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K5 [require]
       33 GETTABLEKS                       R4 R0 K12 ["Packages"]
       35 GETTABLEKS                       R4 R4 K13 ["Dev"]
       37 GETTABLEKS                       R4 R4 K15 ["ReactTestingLibrary"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K6 ["Src"]
       44 GETTABLEKS                       R5 R5 K7 ["tests"]
       46 GETTABLEKS                       R5 R5 K16 ["Util"]
       48 GETTABLEKS                       R5 R5 K17 ["setup"]
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
