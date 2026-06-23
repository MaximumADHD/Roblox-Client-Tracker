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
       20 JUMPIFNOTEQ                      R3 R4 ; [+67]
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
       45 DUPTABLE                         R10 K17 [{"colorMode", "isIconSize"}]
       46 GETUPVAL                         R11 4
       47 GETTABLEKS                       R11 R11 K18 ["Color"]
       49 SETTABLEKS                       R11 R10 K15 ["colorMode"]
       51 LOADB                            R11 1
       52 SETTABLEKS                       R11 R10 K16 ["isIconSize"]
       54 SETTABLEKS                       R10 R9 K13 ["value"]
       56 DUPTABLE                         R10 K11 [{"Avatar"}]
       57 GETUPVAL                         R11 1
       58 GETTABLEKS                       R11 R11 K7 ["createElement"]
       60 GETUPVAL                         R12 5
       61 DUPTABLE                         R13 K22 [{"userId", "backplateStyle", "size"}]
       62 GETTABLEKS                       R14 R1 K19 ["userId"]
       64 SETTABLEKS                       R14 R13 K19 ["userId"]
       66 GETTABLEKS                       R14 R0 K23 ["tokens"]
       68 GETTABLEKS                       R14 R14 K18 ["Color"]
       70 GETTABLEKS                       R14 R14 K24 ["Shift"]
       72 GETTABLEKS                       R14 R14 K25 ["Shift_200"]
       74 SETTABLEKS                       R14 R13 K20 ["backplateStyle"]
       76 GETTABLEKS                       R14 R0 K21 ["size"]
       78 SETTABLEKS                       R14 R13 K21 ["size"]
       80 CALL                             R11 2 1
       81 SETTABLEKS                       R11 R10 K6 ["Avatar"]
       83 CALL                             R7 3 1
       84 SETTABLEKS                       R7 R6 K6 ["Avatar"]
       86 CALL                             R3 3 -1
       87 RETURN                           R3 -1
       88 GETTABLEKS                       R3 R1 K5 ["type"]
       90 JUMPIFNOTEQKS                    R3 K26 ["Hint"] ; [+35]
       92 GETUPVAL                         R3 1
       93 GETTABLEKS                       R3 R3 K7 ["createElement"]
       95 GETUPVAL                         R4 2
       96 DUPTABLE                         R5 K10 [{"LayoutOrder", "tag", "testId"}]
       97 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       99 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
      101 LOADK                            R6 K27 ["row align-y-center auto-xy padding-x-xsmall radius-small bg-shift-200"]
      102 SETTABLEKS                       R6 R5 K3 ["tag"]
      104 GETTABLEKS                       R6 R0 K9 ["testId"]
      106 SETTABLEKS                       R6 R5 K9 ["testId"]
      108 DUPTABLE                         R6 K29 [{"Text"}]
      109 GETUPVAL                         R7 1
      110 GETTABLEKS                       R7 R7 K7 ["createElement"]
      112 GETUPVAL                         R8 6
      113 DUPTABLE                         R9 K30 [{"Text", "tag"}]
      114 GETTABLEKS                       R10 R1 K31 ["text"]
      116 SETTABLEKS                       R10 R9 K28 ["Text"]
      118 LOADK                            R10 K32 ["auto-xy text-caption-medium content-muted"]
      119 SETTABLEKS                       R10 R9 K3 ["tag"]
      121 CALL                             R7 2 1
      122 SETTABLEKS                       R7 R6 K28 ["Text"]
      124 CALL                             R3 3 -1
      125 RETURN                           R3 -1
      126 GETTABLEKS                       R3 R1 K5 ["type"]
      128 JUMPIFNOTEQKS                    R3 K33 ["Badge"] ; [+28]
      130 GETUPVAL                         R3 1
      131 GETTABLEKS                       R3 R3 K7 ["createElement"]
      133 GETUPVAL                         R4 7
      134 DUPTABLE                         R5 K36 [{"LayoutOrder", "text", "icon", "variant", "testId"}]
      135 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
      137 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
      139 GETTABLEKS                       R6 R1 K31 ["text"]
      141 SETTABLEKS                       R6 R5 K31 ["text"]
      143 GETTABLEKS                       R6 R1 K34 ["icon"]
      145 SETTABLEKS                       R6 R5 K34 ["icon"]
      147 GETTABLEKS                       R6 R1 K35 ["variant"]
      149 SETTABLEKS                       R6 R5 K35 ["variant"]
      151 GETTABLEKS                       R6 R0 K9 ["testId"]
      153 SETTABLEKS                       R6 R5 K9 ["testId"]
      155 CALL                             R3 2 -1
      156 RETURN                           R3 -1
      157 GETUPVAL                         R3 1
      158 GETTABLEKS                       R3 R3 K7 ["createElement"]
      160 GETUPVAL                         R4 2
      161 DUPTABLE                         R5 K10 [{"LayoutOrder", "tag", "testId"}]
      162 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
      164 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
      166 SETTABLEKS                       R2 R5 K3 ["tag"]
      168 GETTABLEKS                       R6 R0 K9 ["testId"]
      170 SETTABLEKS                       R6 R5 K9 ["testId"]
      172 DUPTABLE                         R6 K38 [{"Icon"}]
      173 GETUPVAL                         R7 1
      174 GETTABLEKS                       R7 R7 K7 ["createElement"]
      176 GETUPVAL                         R8 8
      177 DUPTABLE                         R9 K41 [{"name", "variant", "style", "size"}]
      178 GETTABLEKS                       R10 R1 K42 ["iconName"]
      180 SETTABLEKS                       R10 R9 K39 ["name"]
      182 GETTABLEKS                       R10 R1 K2 ["iconVariant"]
      184 SETTABLEKS                       R10 R9 K35 ["variant"]
      186 GETTABLEKS                       R10 R0 K2 ["iconVariant"]
      188 GETTABLEKS                       R10 R10 K40 ["style"]
      190 SETTABLEKS                       R10 R9 K40 ["style"]
      192 GETTABLEKS                       R10 R0 K2 ["iconVariant"]
      194 GETTABLEKS                       R10 R10 K21 ["size"]
      196 SETTABLEKS                       R10 R9 K21 ["size"]
      198 CALL                             R7 2 1
      199 SETTABLEKS                       R7 R6 K37 ["Icon"]
      201 CALL                             R3 3 -1
      202 RETURN                           R3 -1

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
