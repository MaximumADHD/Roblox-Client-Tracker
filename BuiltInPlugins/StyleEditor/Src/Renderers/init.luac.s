MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K12 [{"BrickColor", "Color", "ColorSequence", "Derive", "FontFamily", "FontStyle", "FontWeight", "NumberSequence", "PropertyName", "StaticText", "Theme", "TokenReference"}]
        2 GETIMPORT                        R1 K14 [require]
        4 GETIMPORT                        R3 K16 [script]
        6 GETTABLEKS                       R2 R3 K17 ["BrickColorRenderer"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["BrickColor"]
       11 GETIMPORT                        R1 K14 [require]
       13 GETIMPORT                        R3 K16 [script]
       15 GETTABLEKS                       R2 R3 K18 ["ColorRenderer"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["Color"]
       20 GETIMPORT                        R1 K14 [require]
       22 GETIMPORT                        R4 K16 [script]
       24 GETTABLEKS                       R3 R4 K19 ["SequenceRenderers"]
       26 GETTABLEKS                       R2 R3 K20 ["ColorSequenceRenderer"]
       28 CALL                             R1 1 1
       29 SETTABLEKS                       R1 R0 K2 ["ColorSequence"]
       31 GETIMPORT                        R1 K14 [require]
       33 GETIMPORT                        R3 K16 [script]
       35 GETTABLEKS                       R2 R3 K21 ["DeriveRenderer"]
       37 CALL                             R1 1 1
       38 SETTABLEKS                       R1 R0 K3 ["Derive"]
       40 GETIMPORT                        R1 K14 [require]
       42 GETIMPORT                        R4 K16 [script]
       44 GETTABLEKS                       R3 R4 K22 ["FontRenderers"]
       46 GETTABLEKS                       R2 R3 K23 ["FontFamilyRenderer"]
       48 CALL                             R1 1 1
       49 SETTABLEKS                       R1 R0 K4 ["FontFamily"]
       51 GETIMPORT                        R1 K14 [require]
       53 GETIMPORT                        R4 K16 [script]
       55 GETTABLEKS                       R3 R4 K22 ["FontRenderers"]
       57 GETTABLEKS                       R2 R3 K24 ["FontStyleRenderer"]
       59 CALL                             R1 1 1
       60 SETTABLEKS                       R1 R0 K5 ["FontStyle"]
       62 GETIMPORT                        R1 K14 [require]
       64 GETIMPORT                        R4 K16 [script]
       66 GETTABLEKS                       R3 R4 K22 ["FontRenderers"]
       68 GETTABLEKS                       R2 R3 K25 ["FontWeightRenderer"]
       70 CALL                             R1 1 1
       71 SETTABLEKS                       R1 R0 K6 ["FontWeight"]
       73 GETIMPORT                        R1 K14 [require]
       75 GETIMPORT                        R4 K16 [script]
       77 GETTABLEKS                       R3 R4 K19 ["SequenceRenderers"]
       79 GETTABLEKS                       R2 R3 K26 ["NumberSequenceRenderer"]
       81 CALL                             R1 1 1
       82 SETTABLEKS                       R1 R0 K7 ["NumberSequence"]
       84 GETIMPORT                        R1 K14 [require]
       86 GETIMPORT                        R3 K16 [script]
       88 GETTABLEKS                       R2 R3 K27 ["PropertyNameRenderer"]
       90 CALL                             R1 1 1
       91 SETTABLEKS                       R1 R0 K8 ["PropertyName"]
       93 GETIMPORT                        R1 K14 [require]
       95 GETIMPORT                        R3 K16 [script]
       97 GETTABLEKS                       R2 R3 K28 ["StaticTextRenderer"]
       99 CALL                             R1 1 1
      100 SETTABLEKS                       R1 R0 K9 ["StaticText"]
      102 GETIMPORT                        R1 K14 [require]
      104 GETIMPORT                        R3 K16 [script]
      106 GETTABLEKS                       R2 R3 K29 ["BreadcrumbRadioRenderer"]
      108 CALL                             R1 1 1
      109 SETTABLEKS                       R1 R0 K10 ["Theme"]
      111 GETIMPORT                        R1 K14 [require]
      113 GETIMPORT                        R3 K16 [script]
      115 GETTABLEKS                       R2 R3 K30 ["TokenReferenceRenderer"]
      117 CALL                             R1 1 1
      118 SETTABLEKS                       R1 R0 K11 ["TokenReference"]
      120 RETURN                           R0 1
