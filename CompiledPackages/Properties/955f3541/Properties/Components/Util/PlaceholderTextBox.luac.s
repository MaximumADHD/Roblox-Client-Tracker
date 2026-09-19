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
       38 GETTABLEKS                       R5 R1 K13 ["Typography"]
       40 GETTABLEKS                       R5 R5 K14 ["BodySmall"]
       42 GETTABLEKS                       R5 R5 K15 ["Font"]
       44 SETTABLEKS                       R5 R4 K15 ["Font"]
       46 GETTABLEKS                       R5 R1 K13 ["Typography"]
       48 GETTABLEKS                       R5 R5 K14 ["BodySmall"]
       50 GETTABLEKS                       R5 R5 K16 ["LineHeight"]
       52 SETTABLEKS                       R5 R4 K16 ["LineHeight"]
       54 GETTABLEKS                       R5 R1 K13 ["Typography"]
       56 GETTABLEKS                       R5 R5 K14 ["BodySmall"]
       58 GETTABLEKS                       R5 R5 K17 ["FontSize"]
       60 SETTABLEKS                       R5 R4 K18 ["TextSize"]
       62 GETIMPORT                        R5 K22 [Enum.TextXAlignment.Left]
       64 SETTABLEKS                       R5 R4 K20 ["TextXAlignment"]
       66 GETTABLEKS                       R5 R1 K23 ["Color"]
       68 GETTABLEKS                       R5 R5 K24 ["Content"]
       70 GETTABLEKS                       R5 R5 K25 ["Default"]
       72 GETTABLEKS                       R5 R5 K26 ["Color3"]
       74 SETTABLEKS                       R5 R4 K27 ["TextColor3"]
       76 GETTABLEKS                       R5 R1 K23 ["Color"]
       78 GETTABLEKS                       R5 R5 K24 ["Content"]
       80 GETTABLEKS                       R5 R5 K25 ["Default"]
       82 GETTABLEKS                       R5 R5 K28 ["Transparency"]
       84 SETTABLEKS                       R5 R4 K29 ["TextTransparency"]
       86 GETTABLEKS                       R5 R0 K30 ["text"]
       88 SETTABLEKS                       R5 R4 K31 ["Text"]
       90 GETTABLEKS                       R5 R0 K32 ["textBoxRef"]
       92 SETTABLEKS                       R5 R4 K33 ["ref"]
       94 GETUPVAL                         R5 2
       95 GETTABLEKS                       R5 R5 K34 ["Event"]
       97 GETTABLEKS                       R5 R5 K35 ["Focused"]
       99 GETTABLEKS                       R6 R0 K36 ["onFocused"]
      101 SETTABLE                         R6 R4 R5
      102 GETUPVAL                         R5 2
      103 GETTABLEKS                       R5 R5 K34 ["Event"]
      105 GETTABLEKS                       R5 R5 K37 ["FocusLost"]
      107 GETTABLEKS                       R6 R0 K38 ["onFocusLost"]
      109 SETTABLE                         R6 R4 R5
      110 GETTABLEKS                       R5 R0 K39 ["children"]
      112 CALL                             R2 3 -1
      113 RETURN                           R2 -1

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
       27 DUPCLOSURE                       R5 K12 [PROTO_0]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 RETURN                           R5 1
