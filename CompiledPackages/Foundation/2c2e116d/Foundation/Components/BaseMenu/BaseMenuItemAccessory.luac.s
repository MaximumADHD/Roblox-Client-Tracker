PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["accessory"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 LOADK                            R3 K1 ["align-x-center align-y-center %*"]
        7 GETTABLEKS                       R5 R0 K2 ["iconVariant"]
        9 GETTABLEKS                       R5 R5 K3 ["tag"]
       11 NAMECALL                         R3 R3 K4 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 GETTABLEKS                       R3 R1 K5 ["type"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K6 ["Avatar"]
       20 JUMPIFNOTEQ                      R3 R4 ; [+64]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K7 ["createElement"]
       25 GETUPVAL                         R4 2
       26 DUPTABLE                         R5 K10 [{"LayoutOrder", "tag", "testId"}]
       27 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       29 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       31 SETTABLEKS                       R2 R5 K3 ["tag"]
       33 GETTABLEKS                       R6 R0 K9 ["testId"]
       35 SETTABLEKS                       R6 R5 K9 ["testId"]
       37 DUPTABLE                         R6 K11 [{"Avatar"}]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K7 ["createElement"]
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K12 ["Provider"]
       44 DUPTABLE                         R9 K14 [{"value"}]
       45 DUPTABLE                         R10 K18 [{["colorMode"], ["isIconSize"] = True}]
       46 GETUPVAL                         R11 4
       47 GETTABLEKS                       R11 R11 K19 ["Color"]
       49 SETTABLEKS                       R11 R10 K15 ["colorMode"]
       51 SETTABLEKS                       R10 R9 K13 ["value"]
       53 DUPTABLE                         R10 K11 [{"Avatar"}]
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R11 R11 K7 ["createElement"]
       57 GETUPVAL                         R12 5
       58 DUPTABLE                         R13 K23 [{"userId", "backplateStyle", "size"}]
       59 GETTABLEKS                       R14 R1 K20 ["userId"]
       61 SETTABLEKS                       R14 R13 K20 ["userId"]
       63 GETTABLEKS                       R14 R0 K24 ["tokens"]
       65 GETTABLEKS                       R14 R14 K19 ["Color"]
       67 GETTABLEKS                       R14 R14 K25 ["Shift"]
       69 GETTABLEKS                       R14 R14 K26 ["Shift_200"]
       71 SETTABLEKS                       R14 R13 K21 ["backplateStyle"]
       73 GETTABLEKS                       R14 R0 K22 ["size"]
       75 SETTABLEKS                       R14 R13 K22 ["size"]
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K6 ["Avatar"]
       80 CALL                             R7 3 1
       81 SETTABLEKS                       R7 R6 K6 ["Avatar"]
       83 CALL                             R3 3 -1
       84 RETURN                           R3 -1
       85 GETTABLEKS                       R3 R1 K5 ["type"]
       87 JUMPIFNOTEQKS                    R3 K27 ["Hint"] ; [+29]
       89 GETUPVAL                         R3 1
       90 GETTABLEKS                       R3 R3 K7 ["createElement"]
       92 GETUPVAL                         R4 2
       93 DUPTABLE                         R5 K29 [{["LayoutOrder"], ["tag"] = "row align-y-center auto-xy padding-x-xsmall radius-small bg-shift-200", ["testId"]}]
       94 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       96 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       98 GETTABLEKS                       R6 R0 K9 ["testId"]
      100 SETTABLEKS                       R6 R5 K9 ["testId"]
      102 DUPTABLE                         R6 K31 [{"Text"}]
      103 GETUPVAL                         R7 1
      104 GETTABLEKS                       R7 R7 K7 ["createElement"]
      106 GETUPVAL                         R8 6
      107 DUPTABLE                         R9 K33 [{["Text"], ["tag"] = "auto-xy text-caption-medium content-muted"}]
      108 GETTABLEKS                       R10 R1 K34 ["text"]
      110 SETTABLEKS                       R10 R9 K30 ["Text"]
      112 CALL                             R7 2 1
      113 SETTABLEKS                       R7 R6 K30 ["Text"]
      115 CALL                             R3 3 -1
      116 RETURN                           R3 -1
      117 GETTABLEKS                       R3 R1 K5 ["type"]
      119 JUMPIFNOTEQKS                    R3 K35 ["Badge"] ; [+28]
      121 GETUPVAL                         R3 1
      122 GETTABLEKS                       R3 R3 K7 ["createElement"]
      124 GETUPVAL                         R4 7
      125 DUPTABLE                         R5 K38 [{"LayoutOrder", "text", "icon", "variant", "testId"}]
      126 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
      128 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
      130 GETTABLEKS                       R6 R1 K34 ["text"]
      132 SETTABLEKS                       R6 R5 K34 ["text"]
      134 GETTABLEKS                       R6 R1 K36 ["icon"]
      136 SETTABLEKS                       R6 R5 K36 ["icon"]
      138 GETTABLEKS                       R6 R1 K37 ["variant"]
      140 SETTABLEKS                       R6 R5 K37 ["variant"]
      142 GETTABLEKS                       R6 R0 K9 ["testId"]
      144 SETTABLEKS                       R6 R5 K9 ["testId"]
      146 CALL                             R3 2 -1
      147 RETURN                           R3 -1
      148 GETUPVAL                         R3 1
      149 GETTABLEKS                       R3 R3 K7 ["createElement"]
      151 GETUPVAL                         R4 2
      152 DUPTABLE                         R5 K10 [{"LayoutOrder", "tag", "testId"}]
      153 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
      155 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
      157 SETTABLEKS                       R2 R5 K3 ["tag"]
      159 GETTABLEKS                       R6 R0 K9 ["testId"]
      161 SETTABLEKS                       R6 R5 K9 ["testId"]
      163 DUPTABLE                         R6 K40 [{"Icon"}]
      164 GETUPVAL                         R7 1
      165 GETTABLEKS                       R7 R7 K7 ["createElement"]
      167 GETUPVAL                         R8 8
      168 DUPTABLE                         R9 K43 [{"name", "variant", "style", "size"}]
      169 GETTABLEKS                       R10 R1 K44 ["iconName"]
      171 SETTABLEKS                       R10 R9 K41 ["name"]
      173 GETTABLEKS                       R10 R1 K2 ["iconVariant"]
      175 SETTABLEKS                       R10 R9 K37 ["variant"]
      177 GETTABLEKS                       R10 R0 K2 ["iconVariant"]
      179 GETTABLEKS                       R10 R10 K42 ["style"]
      181 SETTABLEKS                       R10 R9 K42 ["style"]
      183 GETTABLEKS                       R10 R0 K2 ["iconVariant"]
      185 GETTABLEKS                       R10 R10 K22 ["size"]
      187 SETTABLEKS                       R10 R9 K22 ["size"]
      189 CALL                             R7 2 1
      190 SETTABLEKS                       R7 R6 K39 ["Icon"]
      192 CALL                             R3 3 -1
      193 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Avatar"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Badge"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Icon"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["Text"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K13 ["Types"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R9 K14 ["View"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K15 ["Providers"]
       60 GETTABLEKS                       R10 R10 K16 ["Style"]
       62 GETTABLEKS                       R10 R10 K17 ["PresentationContext"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K15 ["Providers"]
       69 GETTABLEKS                       R11 R11 K16 ["Style"]
       71 GETTABLEKS                       R11 R11 K18 ["Tokens"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K19 ["Enums"]
       78 GETTABLEKS                       R12 R12 K20 ["AccessoryType"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K19 ["Enums"]
       85 GETTABLEKS                       R13 R13 K21 ["ColorMode"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R14 R0 K19 ["Enums"]
       92 GETTABLEKS                       R14 R14 K22 ["InputSize"]
       94 CALL                             R13 1 1
       95 DUPCLOSURE                       R14 K23 [PROTO_0]
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R5
      105 RETURN                           R14 1
