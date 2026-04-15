PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADK                            R3 K0 ["TextBox"]
        4 NEWTABLE                         R4 16 0
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
       34 GETTABLEKS                       R7 R1 K11 ["Typography"]
       36 GETTABLEKS                       R6 R7 K12 ["BodySmall"]
       38 GETTABLEKS                       R5 R6 K13 ["Font"]
       40 SETTABLEKS                       R5 R4 K13 ["Font"]
       42 GETTABLEKS                       R7 R1 K11 ["Typography"]
       44 GETTABLEKS                       R6 R7 K12 ["BodySmall"]
       46 GETTABLEKS                       R5 R6 K14 ["LineHeight"]
       48 SETTABLEKS                       R5 R4 K14 ["LineHeight"]
       50 GETTABLEKS                       R7 R1 K11 ["Typography"]
       52 GETTABLEKS                       R6 R7 K12 ["BodySmall"]
       54 GETTABLEKS                       R5 R6 K15 ["FontSize"]
       56 SETTABLEKS                       R5 R4 K16 ["TextSize"]
       58 GETIMPORT                        R5 K20 [Enum.TextXAlignment.Left]
       60 SETTABLEKS                       R5 R4 K18 ["TextXAlignment"]
       62 GETTABLEKS                       R8 R1 K21 ["Color"]
       64 GETTABLEKS                       R7 R8 K22 ["Content"]
       66 GETTABLEKS                       R6 R7 K23 ["Default"]
       68 GETTABLEKS                       R5 R6 K24 ["Color3"]
       70 SETTABLEKS                       R5 R4 K25 ["TextColor3"]
       72 GETTABLEKS                       R8 R1 K21 ["Color"]
       74 GETTABLEKS                       R7 R8 K22 ["Content"]
       76 GETTABLEKS                       R6 R7 K23 ["Default"]
       78 GETTABLEKS                       R5 R6 K26 ["Transparency"]
       80 SETTABLEKS                       R5 R4 K27 ["TextTransparency"]
       82 GETTABLEKS                       R5 R0 K28 ["text"]
       84 SETTABLEKS                       R5 R4 K29 ["Text"]
       86 GETTABLEKS                       R5 R0 K30 ["textBoxRef"]
       88 SETTABLEKS                       R5 R4 K31 ["ref"]
       90 GETUPVAL                         R7 2
       91 GETTABLEKS                       R6 R7 K32 ["Event"]
       93 GETTABLEKS                       R5 R6 K33 ["Focused"]
       95 GETTABLEKS                       R6 R0 K34 ["onFocused"]
       97 SETTABLE                         R6 R4 R5
       98 GETUPVAL                         R7 2
       99 GETTABLEKS                       R6 R7 K32 ["Event"]
      101 GETTABLEKS                       R5 R6 K35 ["FocusLost"]
      103 GETTABLEKS                       R6 R0 K36 ["onFocusLost"]
      105 SETTABLE                         R6 R4 R5
      106 GETTABLEKS                       R5 R0 K37 ["children"]
      108 CALL                             R2 3 -1
      109 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 GETTABLEKS                       R5 R1 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R5 K11 ["useTokens"]
       27 DUPCLOSURE                       R5 K12 [PROTO_0]
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 RETURN                           R5 1
