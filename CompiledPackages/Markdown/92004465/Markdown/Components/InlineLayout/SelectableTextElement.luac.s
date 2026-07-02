PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["omit"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 2
        6 LOADK                            R4 K1 ["id"]
        7 LOADK                            R5 K2 ["TextVariant"]
        8 SETLIST                          R3 R4 2 [1]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K0 ["fontStyle"]
        7 CALL                             R2 1 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [+19]
       10 GETTABLEKS                       R2 R0 K0 ["fontStyle"]
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETTABLEKS                       R2 R0 K0 ["fontStyle"]
       15 GETTABLEKS                       R2 R2 K1 ["Font"]
       17 FASTCALL1                        TYPEOF R2 ; [+3]
       18 MOVE                             R4 R2
       19 GETIMPORT                        R3 K3 [typeof]
       21 CALL                             R3 1 1
       22 JUMPIFNOTEQKS                    R3 K4 ["EnumItem"] ; [+6]
       24 GETIMPORT                        R3 K6 [Font.fromEnum]
       26 MOVE                             R4 R2
       27 CALL                             R3 1 1
       28 MOVE                             R1 R3
       29 LOADNIL                          R2
       30 GETUPVAL                         R3 0
       31 CALL                             R3 0 1
       32 JUMPIFNOT                        R3 ; [+21]
       33 GETTABLEKS                       R5 R0 K7 ["viewTags"]
       35 FASTCALL1                        TYPEOF R5 ; [+2]
       36 GETIMPORT                        R4 K3 [typeof]
       38 CALL                             R4 1 1
       39 JUMPIFNOTEQKS                    R4 K8 ["string"] ; [+8]
       41 NEWTABLE                         R3 1 0
       43 GETTABLEKS                       R4 R0 K7 ["viewTags"]
       45 LOADB                            R5 1
       46 SETTABLE                         R5 R3 R4
       47 JUMPIF                           R3 ; [+5]
       48 GETTABLEKS                       R3 R0 K7 ["viewTags"]
       50 JUMPIF                           R3 ; [+2]
       51 NEWTABLE                         R3 0 0
       53 MOVE                             R2 R3
       54 GETUPVAL                         R3 2
       55 GETTABLEKS                       R3 R3 K9 ["createElement"]
       57 GETUPVAL                         R4 3
       58 DUPTABLE                         R5 K12 [{"tag", "LayoutOrder"}]
       59 GETUPVAL                         R7 0
       60 CALL                             R7 0 1
       61 JUMPIFNOT                        R7 ; [+11]
       62 GETUPVAL                         R6 4
       63 GETTABLEKS                       R6 R6 K13 ["join"]
       65 NEWTABLE                         R7 1 0
       67 LOADB                            R8 1
       68 SETTABLEKS                       R8 R7 K14 ["size-0-0 auto-xy"]
       70 MOVE                             R8 R2
       71 CALL                             R6 2 1
       72 JUMP                             ; [+1]
       73 LOADK                            R6 K14 ["size-0-0 auto-xy"]
       74 SETTABLEKS                       R6 R5 K10 ["tag"]
       76 GETTABLEKS                       R6 R0 K11 ["LayoutOrder"]
       78 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       80 DUPTABLE                         R6 K17 [{"Text", "SelectableText"}]
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R7 R7 K9 ["createElement"]
       84 GETUPVAL                         R8 5
       85 GETUPVAL                         R9 4
       86 GETTABLEKS                       R9 R9 K13 ["join"]
       88 MOVE                             R10 R0
       89 DUPTABLE                         R11 K20 [{["RichText"] = False}]
       90 CALL                             R9 2 -1
       91 CALL                             R7 -1 1
       92 SETTABLEKS                       R7 R6 K15 ["Text"]
       94 GETUPVAL                         R7 2
       95 GETTABLEKS                       R7 R7 K9 ["createElement"]
       97 LOADK                            R8 K21 ["TextBox"]
       98 DUPTABLE                         R9 K35 [{["Text"], ["FontFace"], ["TextSize"], ["TextTransparency"] = 0.4, ["BackgroundTransparency"] = 1, ["TextEditable"] = False, ["ZIndex"] = 0, ["Size"], ["AutomaticSize"], ["TextWrapped"] = False, ["ClearTextOnFocus"] = False, ["RichText"] = False}]
       99 GETTABLEKS                       R10 R0 K15 ["Text"]
      101 SETTABLEKS                       R10 R9 K15 ["Text"]
      103 SETTABLEKS                       R1 R9 K22 ["FontFace"]
      105 GETTABLEKS                       R10 R0 K0 ["fontStyle"]
      107 JUMPIFNOT                        R10 ; [+4]
      108 GETTABLEKS                       R10 R0 K0 ["fontStyle"]
      110 GETTABLEKS                       R10 R10 K36 ["FontSize"]
      112 SETTABLEKS                       R10 R9 K23 ["TextSize"]
      114 GETIMPORT                        R10 K39 [UDim2.fromScale]
      116 LOADN                            R11 0
      117 LOADN                            R12 0
      118 CALL                             R10 2 1
      119 SETTABLEKS                       R10 R9 K31 ["Size"]
      121 GETIMPORT                        R10 K42 [Enum.AutomaticSize.XY]
      123 SETTABLEKS                       R10 R9 K32 ["AutomaticSize"]
      125 CALL                             R7 2 1
      126 SETTABLEKS                       R7 R6 K16 ["SelectableText"]
      128 CALL                             R3 3 -1
      129 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["omit"]
        7 MOVE                             R4 R0
        8 NEWTABLE                         R5 0 1
       10 LOADK                            R6 K2 ["TextVariant"]
       11 SETLIST                          R5 R6 1 [1]
       13 CALL                             R3 2 1
       14 GETGLOBAL                        R4 K3 ["mapProps"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Components"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K1 [script]
       11 LOADK                            R3 K5 ["Packages"]
       12 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K1 [script]
       17 LOADK                            R4 K6 ["InlineLayout"]
       18 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K8 [require]
       23 GETTABLEKS                       R4 R1 K9 ["Dash"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K8 [require]
       28 GETTABLEKS                       R5 R1 K10 ["Foundation"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K8 [require]
       33 GETTABLEKS                       R6 R1 K11 ["React"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K8 [require]
       38 GETTABLEKS                       R7 R2 K12 ["InlineLayoutElements"]
       40 GETTABLEKS                       R7 R7 K13 ["BaseTextElement"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K8 [require]
       45 GETTABLEKS                       R8 R0 K14 ["Utils"]
       47 GETTABLEKS                       R8 R8 K15 ["GetFontFace"]
       49 CALL                             R7 1 1
       50 GETTABLEKS                       R8 R4 K16 ["Text"]
       52 GETTABLEKS                       R9 R4 K17 ["View"]
       54 GETIMPORT                        R10 K8 [require]
       56 GETTABLEKS                       R11 R0 K18 ["Flags"]
       58 GETTABLEKS                       R11 R11 K19 ["FFlagMarkdownStudioThemeColors"]
       60 CALL                             R10 1 1
       61 NEWTABLE                         R11 1 0
       63 DUPCLOSURE                       R12 K20 [PROTO_0]
       64 CAPTURE                          VAL R3
       65 SETGLOBAL                        R12 K21 ["mapProps"]
       67 DUPCLOSURE                       R12 K22 [PROTO_1]
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R8
       74 DUPCLOSURE                       R13 K23 [PROTO_2]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R13 R11 K24 ["new"]
       80 RETURN                           R11 1
