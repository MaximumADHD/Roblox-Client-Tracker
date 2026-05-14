PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["omit"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 0 2
        6 LOADK                            R4 K1 ["id"]
        7 LOADK                            R5 K2 ["EngineTags"]
        8 SETLIST                          R3 R4 2 [1]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["fontStyle"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R4 R0 K1 ["viewTags"]
        6 FASTCALL1                        TYPEOF R4 ; [+2]
        7 GETIMPORT                        R3 K3 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKS                    R3 K4 ["string"] ; [+8]
       12 NEWTABLE                         R2 1 0
       14 GETTABLEKS                       R3 R0 K1 ["viewTags"]
       16 LOADB                            R4 1
       17 SETTABLE                         R4 R2 R3
       18 JUMPIF                           R2 ; [+5]
       19 GETTABLEKS                       R2 R0 K1 ["viewTags"]
       21 JUMPIF                           R2 ; [+2]
       22 NEWTABLE                         R2 0 0
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K5 ["createElement"]
       27 GETUPVAL                         R4 2
       28 DUPTABLE                         R5 K8 [{"tag", "LayoutOrder"}]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K9 ["join"]
       32 NEWTABLE                         R7 1 0
       34 LOADB                            R8 1
       35 SETTABLEKS                       R8 R7 K10 ["size-0-0 auto-xy"]
       37 MOVE                             R8 R2
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K6 ["tag"]
       41 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       43 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       45 DUPTABLE                         R6 K13 [{"Text", "SelectableText"}]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K5 ["createElement"]
       49 GETUPVAL                         R8 4
       50 GETUPVAL                         R9 3
       51 GETTABLEKS                       R9 R9 K9 ["join"]
       53 MOVE                             R10 R0
       54 DUPTABLE                         R11 K15 [{"RichText"}]
       55 LOADB                            R12 0
       56 SETTABLEKS                       R12 R11 K14 ["RichText"]
       58 CALL                             R9 2 -1
       59 CALL                             R7 -1 1
       60 SETTABLEKS                       R7 R6 K11 ["Text"]
       62 GETUPVAL                         R7 1
       63 GETTABLEKS                       R7 R7 K5 ["createElement"]
       65 LOADK                            R8 K16 ["TextBox"]
       66 DUPTABLE                         R9 K27 [{"Text", "FontFace", "TextSize", "TextTransparency", "BackgroundTransparency", "TextEditable", "ZIndex", "Size", "AutomaticSize", "TextWrapped", "ClearTextOnFocus", "RichText"}]
       67 GETTABLEKS                       R10 R0 K11 ["Text"]
       69 SETTABLEKS                       R10 R9 K11 ["Text"]
       71 SETTABLEKS                       R1 R9 K17 ["FontFace"]
       73 GETTABLEKS                       R10 R0 K0 ["fontStyle"]
       75 JUMPIFNOT                        R10 ; [+4]
       76 GETTABLEKS                       R10 R0 K0 ["fontStyle"]
       78 GETTABLEKS                       R10 R10 K28 ["FontSize"]
       80 SETTABLEKS                       R10 R9 K18 ["TextSize"]
       82 LOADK                            R10 K29 [0.4]
       83 SETTABLEKS                       R10 R9 K19 ["TextTransparency"]
       85 LOADN                            R10 1
       86 SETTABLEKS                       R10 R9 K20 ["BackgroundTransparency"]
       88 LOADB                            R10 0
       89 SETTABLEKS                       R10 R9 K21 ["TextEditable"]
       91 LOADN                            R10 0
       92 SETTABLEKS                       R10 R9 K22 ["ZIndex"]
       94 GETIMPORT                        R10 K32 [UDim2.fromScale]
       96 LOADN                            R11 0
       97 LOADN                            R12 0
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K23 ["Size"]
      101 GETIMPORT                        R10 K35 [Enum.AutomaticSize.XY]
      103 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
      105 LOADB                            R10 0
      106 SETTABLEKS                       R10 R9 K25 ["TextWrapped"]
      108 LOADB                            R10 0
      109 SETTABLEKS                       R10 R9 K26 ["ClearTextOnFocus"]
      111 LOADB                            R10 0
      112 SETTABLEKS                       R10 R9 K14 ["RichText"]
      114 CALL                             R7 2 1
      115 SETTABLEKS                       R7 R6 K12 ["SelectableText"]
      117 CALL                             R3 3 -1
      118 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["omit"]
        7 MOVE                             R4 R0
        8 NEWTABLE                         R5 0 1
       10 LOADK                            R6 K2 ["EngineTags"]
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
        9 GETTABLEKS                       R1 R0 K4 ["Parent"]
       11 GETIMPORT                        R2 K1 [script]
       13 LOADK                            R4 K5 ["InlineLayoutElements"]
       14 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K7 [require]
       19 GETTABLEKS                       R4 R1 K8 ["Dash"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K7 [require]
       29 GETTABLEKS                       R6 R1 K10 ["React"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K7 [require]
       34 GETTABLEKS                       R7 R2 K11 ["BaseTextElement"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R8 R0 K12 ["Utils"]
       41 GETTABLEKS                       R8 R8 K13 ["getFontFace"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R4 K14 ["Text"]
       46 GETTABLEKS                       R9 R4 K15 ["View"]
       48 NEWTABLE                         R10 1 0
       50 DUPCLOSURE                       R11 K16 [PROTO_0]
       51 CAPTURE                          VAL R3
       52 SETGLOBAL                        R11 K17 ["mapProps"]
       54 DUPCLOSURE                       R11 K18 [PROTO_1]
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R8
       60 DUPCLOSURE                       R12 K19 [PROTO_2]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R12 R10 K20 ["new"]
       66 RETURN                           R10 1
