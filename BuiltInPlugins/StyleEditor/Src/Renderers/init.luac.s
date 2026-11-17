MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Flags"]
       13 GETTABLEKS                       R2 R2 K7 ["getFFlagStyleEditorSupportTransitions"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 DUPTABLE                         R2 K21 [{"BrickColor", "Color", "ColorSequence", "Derive", "FontFamily", "FontStyle", "FontWeight", "NumberSequence", "PropertyName", "StaticText", "Theme", "TweenInfo", "TokenReference"}]
       18 GETIMPORT                        R3 K4 [require]
       20 GETIMPORT                        R4 K1 [script]
       22 GETTABLEKS                       R4 R4 K22 ["BrickColorRenderer"]
       24 CALL                             R3 1 1
       25 SETTABLEKS                       R3 R2 K8 ["BrickColor"]
       27 GETIMPORT                        R3 K4 [require]
       29 GETIMPORT                        R4 K1 [script]
       31 GETTABLEKS                       R4 R4 K23 ["ColorRenderer"]
       33 CALL                             R3 1 1
       34 SETTABLEKS                       R3 R2 K9 ["Color"]
       36 GETIMPORT                        R3 K4 [require]
       38 GETIMPORT                        R4 K1 [script]
       40 GETTABLEKS                       R4 R4 K24 ["SequenceRenderers"]
       42 GETTABLEKS                       R4 R4 K25 ["ColorSequenceRenderer"]
       44 CALL                             R3 1 1
       45 SETTABLEKS                       R3 R2 K10 ["ColorSequence"]
       47 GETIMPORT                        R3 K4 [require]
       49 GETIMPORT                        R4 K1 [script]
       51 GETTABLEKS                       R4 R4 K26 ["DeriveRenderer"]
       53 CALL                             R3 1 1
       54 SETTABLEKS                       R3 R2 K11 ["Derive"]
       56 GETIMPORT                        R3 K4 [require]
       58 GETIMPORT                        R4 K1 [script]
       60 GETTABLEKS                       R4 R4 K27 ["FontRenderers"]
       62 GETTABLEKS                       R4 R4 K28 ["FontFamilyRenderer"]
       64 CALL                             R3 1 1
       65 SETTABLEKS                       R3 R2 K12 ["FontFamily"]
       67 GETIMPORT                        R3 K4 [require]
       69 GETIMPORT                        R4 K1 [script]
       71 GETTABLEKS                       R4 R4 K27 ["FontRenderers"]
       73 GETTABLEKS                       R4 R4 K29 ["FontStyleRenderer"]
       75 CALL                             R3 1 1
       76 SETTABLEKS                       R3 R2 K13 ["FontStyle"]
       78 GETIMPORT                        R3 K4 [require]
       80 GETIMPORT                        R4 K1 [script]
       82 GETTABLEKS                       R4 R4 K27 ["FontRenderers"]
       84 GETTABLEKS                       R4 R4 K30 ["FontWeightRenderer"]
       86 CALL                             R3 1 1
       87 SETTABLEKS                       R3 R2 K14 ["FontWeight"]
       89 GETIMPORT                        R3 K4 [require]
       91 GETIMPORT                        R4 K1 [script]
       93 GETTABLEKS                       R4 R4 K24 ["SequenceRenderers"]
       95 GETTABLEKS                       R4 R4 K31 ["NumberSequenceRenderer"]
       97 CALL                             R3 1 1
       98 SETTABLEKS                       R3 R2 K15 ["NumberSequence"]
      100 GETIMPORT                        R3 K4 [require]
      102 GETIMPORT                        R4 K1 [script]
      104 GETTABLEKS                       R4 R4 K32 ["PropertyNameRenderer"]
      106 CALL                             R3 1 1
      107 SETTABLEKS                       R3 R2 K16 ["PropertyName"]
      109 GETIMPORT                        R3 K4 [require]
      111 GETIMPORT                        R4 K1 [script]
      113 GETTABLEKS                       R4 R4 K33 ["StaticTextRenderer"]
      115 CALL                             R3 1 1
      116 SETTABLEKS                       R3 R2 K17 ["StaticText"]
      118 GETIMPORT                        R3 K4 [require]
      120 GETIMPORT                        R4 K1 [script]
      122 GETTABLEKS                       R4 R4 K34 ["BreadcrumbRadioRenderer"]
      124 CALL                             R3 1 1
      125 SETTABLEKS                       R3 R2 K18 ["Theme"]
      127 JUMPIFNOT                        R1 ; [+8]
      128 GETIMPORT                        R3 K4 [require]
      130 GETIMPORT                        R4 K1 [script]
      132 GETTABLEKS                       R4 R4 K35 ["TweenInfoRenderer"]
      134 CALL                             R3 1 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R3
      137 SETTABLEKS                       R3 R2 K19 ["TweenInfo"]
      139 GETIMPORT                        R3 K4 [require]
      141 GETIMPORT                        R4 K1 [script]
      143 GETTABLEKS                       R4 R4 K36 ["TokenReferenceRenderer"]
      145 CALL                             R3 1 1
      146 SETTABLEKS                       R3 R2 K20 ["TokenReference"]
      148 RETURN                           R2 1
