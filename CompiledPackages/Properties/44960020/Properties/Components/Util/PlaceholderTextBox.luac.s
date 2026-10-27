PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADK                            R3 K0 ["TextBox"]
        4 NEWTABLE                         R4 32 0
        6 GETTABLEKS                       R6 R0 K1 ["visible"]
        8 JUMPIFNOTEQKNIL                  R6 ; [+3]
       10 LOADB                            R5 1
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R5 R0 K1 ["visible"]
       14 SETTABLEKS                       R5 R4 K2 ["Visible"]
       16 GETTABLEKS                       R5 R0 K3 ["layoutOrder"]
       18 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       20 GETTABLEKS                       R5 R0 K5 ["size"]
       22 SETTABLEKS                       R5 R4 K6 ["Size"]
       24 GETTABLEKS                       R5 R0 K7 ["automaticSize"]
       26 SETTABLEKS                       R5 R4 K8 ["AutomaticSize"]
       28 LOADN                            R5 1
       29 SETTABLEKS                       R5 R4 K9 ["BackgroundTransparency"]
       31 LOADB                            R5 0
       32 SETTABLEKS                       R5 R4 K10 ["ClearTextOnFocus"]
       34 GETTABLEKS                       R5 R0 K11 ["richText"]
       36 SETTABLEKS                       R5 R4 K12 ["RichText"]
       38 GETUPVAL                         R6 2
       39 JUMPIFNOT                        R6 ; [+2]
       40 LOADNIL                          R5
       41 JUMP                             ; [+6]
       42 GETTABLEKS                       R5 R1 K13 ["Typography"]
       44 GETTABLEKS                       R5 R5 K14 ["BodySmall"]
       46 GETTABLEKS                       R5 R5 K15 ["Font"]
       48 SETTABLEKS                       R5 R4 K15 ["Font"]
       50 GETUPVAL                         R6 2
       51 JUMPIFNOT                        R6 ; [+9]
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R6 R1 K13 ["Typography"]
       55 GETTABLEKS                       R6 R6 K14 ["BodySmall"]
       57 GETTABLEKS                       R6 R6 K15 ["Font"]
       59 CALL                             R5 1 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R5
       62 SETTABLEKS                       R5 R4 K16 ["FontFace"]
       64 GETTABLEKS                       R5 R1 K13 ["Typography"]
       66 GETTABLEKS                       R5 R5 K14 ["BodySmall"]
       68 GETTABLEKS                       R5 R5 K17 ["LineHeight"]
       70 SETTABLEKS                       R5 R4 K17 ["LineHeight"]
       72 GETTABLEKS                       R5 R1 K13 ["Typography"]
       74 GETTABLEKS                       R5 R5 K14 ["BodySmall"]
       76 GETTABLEKS                       R5 R5 K18 ["FontSize"]
       78 SETTABLEKS                       R5 R4 K19 ["TextSize"]
       80 GETIMPORT                        R5 K23 [Enum.TextXAlignment.Left]
       82 SETTABLEKS                       R5 R4 K21 ["TextXAlignment"]
       84 GETTABLEKS                       R5 R1 K24 ["Color"]
       86 GETTABLEKS                       R5 R5 K25 ["Content"]
       88 GETTABLEKS                       R5 R5 K26 ["Default"]
       90 GETTABLEKS                       R5 R5 K27 ["Color3"]
       92 SETTABLEKS                       R5 R4 K28 ["TextColor3"]
       94 GETTABLEKS                       R5 R1 K24 ["Color"]
       96 GETTABLEKS                       R5 R5 K25 ["Content"]
       98 GETTABLEKS                       R5 R5 K26 ["Default"]
      100 GETTABLEKS                       R5 R5 K29 ["Transparency"]
      102 SETTABLEKS                       R5 R4 K30 ["TextTransparency"]
      104 GETTABLEKS                       R5 R0 K31 ["text"]
      106 SETTABLEKS                       R5 R4 K32 ["Text"]
      108 GETTABLEKS                       R5 R0 K33 ["textBoxRef"]
      110 SETTABLEKS                       R5 R4 K34 ["ref"]
      112 GETUPVAL                         R5 4
      113 GETTABLEKS                       R5 R5 K35 ["Event"]
      115 GETTABLEKS                       R5 R5 K36 ["Focused"]
      117 GETTABLEKS                       R6 R0 K37 ["onFocused"]
      119 SETTABLE                         R6 R4 R5
      120 GETUPVAL                         R5 4
      121 GETTABLEKS                       R5 R5 K35 ["Event"]
      123 GETTABLEKS                       R5 R5 K38 ["FocusLost"]
      125 GETTABLEKS                       R6 R0 K39 ["onFocusLost"]
      127 SETTABLE                         R6 R4 R5
      128 GETTABLEKS                       R5 R0 K40 ["children"]
      130 CALL                             R2 3 -1
      131 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 GETTABLEKS                       R4 R1 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K11 ["useTokens"]
       27 GETTABLEKS                       R5 R1 K12 ["Utility"]
       29 GETTABLEKS                       R5 R5 K13 ["Flags"]
       31 GETTABLEKS                       R5 R5 K14 ["FoundationStudioFontFaceMigration"]
       33 GETTABLEKS                       R6 R1 K12 ["Utility"]
       35 GETTABLEKS                       R6 R6 K15 ["normalizeFontFace"]
       37 DUPCLOSURE                       R7 K16 [PROTO_0]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R2
       43 RETURN                           R7 1
