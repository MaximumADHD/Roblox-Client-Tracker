PROTO_0:
        0 DUPTABLE                         R0 K1 [{"TextPrompt"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["Segmentation"]
        3 LOADK                            R4 K0 ["TextPrompt"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["TextPrompt"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 SETTABLEKS                       R1 R2 K1 ["current"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["setValue"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R2 K3 ["BodySmall"]
       10 GETTABLEKS                       R3 R1 K4 ["Color"]
       12 GETTABLEKS                       R3 R3 K5 ["Content"]
       14 GETTABLEKS                       R3 R3 K6 ["Emphasis"]
       16 GETTABLEKS                       R5 R0 K8 ["value"]
       18 ORK                              R4 R5 K7 [""]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K9 ["useRef"]
       22 MOVE                             R6 R4
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       27 DUPCLOSURE                       R7 K11 [PROTO_0]
       28 CAPTURE                          UPVAL U2
       29 NEWTABLE                         R8 0 1
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K12 ["locale"]
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K13 ["useCallback"]
       40 NEWCLOSURE                       R8 P1
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R9 0 1
       45 GETTABLEKS                       R10 R0 K14 ["setValue"]
       47 SETLIST                          R9 R10 1 [1]
       49 CALL                             R7 2 1
       50 GETTABLEKS                       R9 R0 K15 ["definition"]
       52 GETTABLEKS                       R9 R9 K16 ["multiLine"]
       54 JUMPIFEQKB                       R9 TRUE ; [+2]
       56 LOADB                            R8 0 +1
       57 LOADB                            R8 1
       58 GETUPVAL                         R9 3
       59 CALL                             R9 0 1
       60 GETUPVAL                         R10 4
       61 GETUPVAL                         R11 5
       62 DUPTABLE                         R12 K20 [{["tag"] = "row gap-xsmall size-full-full radius-small clip bg-shift-200", ["LayoutOrder"]}]
       63 GETTABLEKS                       R13 R0 K19 ["LayoutOrder"]
       65 SETTABLEKS                       R13 R12 K19 ["LayoutOrder"]
       67 DUPTABLE                         R13 K22 [{"InputWrapper"}]
       68 GETUPVAL                         R14 4
       69 GETUPVAL                         R15 5
       70 DUPTABLE                         R16 K24 [{["tag"] = "fill size-0-full padding-left-small padding-top-small", ["LayoutOrder"]}]
       71 MOVE                             R17 R9
       72 CALL                             R17 0 1
       73 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
       75 DUPTABLE                         R17 K26 [{"StringTextBox"}]
       76 GETUPVAL                         R18 4
       77 LOADK                            R19 K27 ["TextBox"]
       78 NEWTABLE                         R20 16 0
       80 SETTABLEKS                       R4 R20 K28 ["Text"]
       82 GETUPVAL                         R21 1
       83 GETTABLEKS                       R21 R21 K29 ["Change"]
       85 GETTABLEKS                       R21 R21 K28 ["Text"]
       87 SETTABLE                         R7 R20 R21
       88 GETIMPORT                        R21 K32 [UDim2.fromScale]
       90 LOADN                            R22 1
       91 LOADN                            R23 1
       92 CALL                             R21 2 1
       93 SETTABLEKS                       R21 R20 K33 ["Size"]
       95 LOADN                            R21 1
       96 SETTABLEKS                       R21 R20 K34 ["BackgroundTransparency"]
       98 SETTABLEKS                       R8 R20 K35 ["MultiLine"]
      100 GETIMPORT                        R21 K39 [Enum.TextXAlignment.Left]
      102 SETTABLEKS                       R21 R20 K37 ["TextXAlignment"]
      104 JUMPIFNOT                        R8 ; [+3]
      105 GETIMPORT                        R21 K42 [Enum.TextYAlignment.Top]
      107 JUMP                             ; [+2]
      108 GETIMPORT                        R21 K44 [Enum.TextYAlignment.Center]
      110 SETTABLEKS                       R21 R20 K40 ["TextYAlignment"]
      112 GETTABLEKS                       R21 R6 K45 ["TextPrompt"]
      114 SETTABLEKS                       R21 R20 K46 ["PlaceholderText"]
      116 GETTABLEKS                       R21 R3 K47 ["Color3"]
      118 SETTABLEKS                       R21 R20 K48 ["TextColor3"]
      120 GETTABLEKS                       R21 R3 K49 ["Transparency"]
      122 SETTABLEKS                       R21 R20 K50 ["TextTransparency"]
      124 GETTABLEKS                       R21 R2 K51 ["Font"]
      126 SETTABLEKS                       R21 R20 K51 ["Font"]
      128 GETTABLEKS                       R21 R2 K52 ["FontSize"]
      130 SETTABLEKS                       R21 R20 K53 ["TextSize"]
      132 SETTABLEKS                       R8 R20 K54 ["TextWrapped"]
      134 GETTABLEKS                       R21 R0 K55 ["interactable"]
      136 SETTABLEKS                       R21 R20 K56 ["Interactable"]
      138 LOADB                            R21 0
      139 SETTABLEKS                       R21 R20 K57 ["ClearTextOnFocus"]
      141 GETTABLEKS                       R21 R0 K55 ["interactable"]
      143 SETTABLEKS                       R21 R20 K58 ["TextEditable"]
      145 CALL                             R18 2 1
      146 SETTABLEKS                       R18 R17 K25 ["StringTextBox"]
      148 CALL                             R14 3 1
      149 SETTABLEKS                       R14 R13 K21 ["InputWrapper"]
      151 CALL                             R10 3 -1
      152 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETIMPORT                        R6 K1 [script]
       28 GETTABLEKS                       R6 R6 K4 ["Parent"]
       30 GETTABLEKS                       R6 R6 K4 ["Parent"]
       32 GETTABLEKS                       R6 R6 K10 ["PropertyRowTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Resources"]
       39 GETTABLEKS                       R7 R7 K12 ["Localization"]
       41 GETTABLEKS                       R7 R7 K13 ["Translator"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R2 K14 ["View"]
       46 GETTABLEKS                       R8 R4 K15 ["createNextOrder"]
       48 GETTABLEKS                       R9 R3 K16 ["createElement"]
       50 DUPCLOSURE                       R10 K17 [PROTO_2]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R7
       57 RETURN                           R10 1
