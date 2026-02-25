PROTO_0:
        0 GETIMPORT                        R4 K2 [table.find]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K3 ["availableChoices"]
        5 MOVE                             R6 R0
        6 CALL                             R4 2 1
        7 FASTCALL2K                       ASSERT R4 K4 ; [+4]
        9 LOADK                            R5 K4 ["Couldn't find available choice index for A"]
       10 GETIMPORT                        R3 K6 [assert]
       12 CALL                             R3 2 1
       13 GETIMPORT                        R5 K2 [table.find]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K3 ["availableChoices"]
       18 MOVE                             R7 R1
       19 CALL                             R5 2 1
       20 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       22 LOADK                            R6 K7 ["Couldn't find available choice index for B"]
       23 GETIMPORT                        R4 K6 [assert]
       25 CALL                             R4 2 1
       26 JUMPIFLT                         R3 R4 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [table.find]
        6 MOVE                             R3 R1
        7 GETUPVAL                         R4 0
        8 CALL                             R2 2 1
        9 JUMPIFEQKNIL                     R2 ; [+7]
       11 GETIMPORT                        R3 K6 [table.remove]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 0
       16 RETURN                           R1 1
       17 GETUPVAL                         R5 0
       18 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       20 MOVE                             R4 R1
       21 GETIMPORT                        R3 K8 [table.insert]
       23 CALL                             R3 2 0
       24 GETIMPORT                        R3 K10 [table.sort]
       26 MOVE                             R4 R1
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U1
       29 CALL                             R3 2 0
       30 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setPublishChoices"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setHeight"]
        3 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        5 GETTABLEKS                       R2 R3 K2 ["Y"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K7 [{"key", "Checked", "Key", "LayoutOrder", "OnClick", "Text"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R7 R1 K8 ["assetType"]
        8 FASTCALL1                        TOSTRING R7 ; [+2]
        9 GETIMPORT                        R6 K10 [tostring]
       11 CALL                             R6 1 1
       12 CALL                             R5 1 1
       13 SETTABLEKS                       R5 R4 K1 ["key"]
       15 GETIMPORT                        R6 K13 [table.find]
       17 GETUPVAL                         R8 3
       18 GETTABLEKS                       R7 R8 K14 ["publishChoices"]
       20 MOVE                             R8 R1
       21 CALL                             R6 2 1
       22 JUMPIFNOTEQKNIL                  R6 ; [+2]
       24 LOADB                            R5 0 +1
       25 LOADB                            R5 1
       26 SETTABLEKS                       R5 R4 K2 ["Checked"]
       28 SETTABLEKS                       R1 R4 K3 ["Key"]
       30 GETUPVAL                         R5 4
       31 NAMECALL                         R5 R5 K15 ["getNextOrder"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       36 GETUPVAL                         R5 5
       37 SETTABLEKS                       R5 R4 K5 ["OnClick"]
       39 GETUPVAL                         R5 6
       40 LOADK                            R7 K16 ["SubmitInner"]
       41 LOADK                            R8 K17 ["ChoiceItem"]
       42 DUPTABLE                         R9 K19 [{"assetType", "instanceName"}]
       43 GETUPVAL                         R10 6
       44 LOADK                            R12 K20 ["AssetType"]
       45 GETTABLEKS                       R15 R1 K8 ["assetType"]
       47 FASTCALL1                        TYPEOF R15 ; [+2]
       48 GETIMPORT                        R14 K22 [typeof]
       50 CALL                             R14 1 1
       51 JUMPIFNOTEQKS                    R14 K23 ["string"] ; [+4]
       53 GETTABLEKS                       R13 R1 K8 ["assetType"]
       55 JUMP                             ; [+4]
       56 GETTABLEKS                       R14 R1 K8 ["assetType"]
       58 GETTABLEKS                       R13 R14 K24 ["Name"]
       60 NAMECALL                         R10 R10 K25 ["getText"]
       62 CALL                             R10 3 1
       63 SETTABLEKS                       R10 R9 K8 ["assetType"]
       65 GETTABLEKS                       R11 R1 K26 ["instance"]
       67 GETTABLEKS                       R10 R11 K24 ["Name"]
       69 SETTABLEKS                       R10 R9 K18 ["instanceName"]
       71 NAMECALL                         R5 R5 K25 ["getText"]
       73 CALL                             R5 4 1
       74 SETTABLEKS                       R5 R4 K6 ["Text"]
       76 CALL                             R2 2 -1
       77 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["SubmitInner"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["new"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R6 0 1
       20 GETTABLEKS                       R7 R0 K4 ["availableChoices"]
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R5 4
       26 CALL                             R5 0 1
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R6 R7 K5 ["createElement"]
       30 GETUPVAL                         R7 5
       31 NEWTABLE                         R8 8 0
       33 GETIMPORT                        R9 K9 [Enum.AutomaticSize.Y]
       35 SETTABLEKS                       R9 R8 K7 ["AutomaticSize"]
       37 GETIMPORT                        R9 K12 [Enum.FillDirection.Vertical]
       39 SETTABLEKS                       R9 R8 K13 ["Layout"]
       41 GETTABLEKS                       R9 R2 K14 ["ContentPadding"]
       43 SETTABLEKS                       R9 R8 K15 ["Padding"]
       45 GETTABLEKS                       R9 R2 K16 ["CallToActionSpacing"]
       47 SETTABLEKS                       R9 R8 K17 ["Spacing"]
       49 GETIMPORT                        R9 K20 [Enum.HorizontalAlignment.Left]
       51 SETTABLEKS                       R9 R8 K18 ["HorizontalAlignment"]
       53 GETUPVAL                         R11 3
       54 GETTABLEKS                       R10 R11 K21 ["Change"]
       56 GETTABLEKS                       R9 R10 K22 ["AbsoluteSize"]
       58 NEWCLOSURE                       R10 P1
       59 CAPTURE                          VAL R0
       60 SETTABLE                         R10 R8 R9
       61 DUPTABLE                         R9 K25 [{"Title", "Checkboxes"}]
       62 GETUPVAL                         R11 3
       63 GETTABLEKS                       R10 R11 K5 ["createElement"]
       65 GETUPVAL                         R11 6
       66 DUPTABLE                         R12 K28 [{"AutomaticSize", "LayoutOrder", "Text"}]
       67 GETIMPORT                        R13 K30 [Enum.AutomaticSize.XY]
       69 SETTABLEKS                       R13 R12 K7 ["AutomaticSize"]
       71 NAMECALL                         R13 R3 K31 ["getNextOrder"]
       73 CALL                             R13 1 1
       74 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
       76 LOADK                            R15 K1 ["SubmitInner"]
       77 LOADK                            R16 K32 ["CallToAction"]
       78 NAMECALL                         R13 R1 K33 ["getText"]
       80 CALL                             R13 3 1
       81 SETTABLEKS                       R13 R12 K27 ["Text"]
       83 CALL                             R10 2 1
       84 SETTABLEKS                       R10 R9 K23 ["Title"]
       86 GETUPVAL                         R11 3
       87 GETTABLEKS                       R10 R11 K5 ["createElement"]
       89 GETUPVAL                         R11 5
       90 DUPTABLE                         R12 K34 [{"AutomaticSize", "Layout", "LayoutOrder", "HorizontalAlignment", "Spacing"}]
       91 GETIMPORT                        R13 K9 [Enum.AutomaticSize.Y]
       93 SETTABLEKS                       R13 R12 K7 ["AutomaticSize"]
       95 GETIMPORT                        R13 K12 [Enum.FillDirection.Vertical]
       97 SETTABLEKS                       R13 R12 K13 ["Layout"]
       99 NAMECALL                         R13 R3 K31 ["getNextOrder"]
      101 CALL                             R13 1 1
      102 SETTABLEKS                       R13 R12 K26 ["LayoutOrder"]
      104 GETIMPORT                        R13 K20 [Enum.HorizontalAlignment.Left]
      106 SETTABLEKS                       R13 R12 K18 ["HorizontalAlignment"]
      108 GETTABLEKS                       R13 R2 K35 ["CheckboxSpacing"]
      110 SETTABLEKS                       R13 R12 K17 ["Spacing"]
      112 GETUPVAL                         R14 7
      113 GETTABLEKS                       R13 R14 K36 ["collectArray"]
      115 GETTABLEKS                       R14 R0 K4 ["availableChoices"]
      117 NEWCLOSURE                       R15 P2
      118 CAPTURE                          UPVAL U3
      119 CAPTURE                          UPVAL U8
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R1
      125 CALL                             R13 2 -1
      126 CALL                             R10 -1 1
      127 SETTABLEKS                       R10 R9 K24 ["Checkboxes"]
      129 CALL                             R6 3 -1
      130 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Util"]
       34 GETTABLEKS                       R5 R6 K12 ["createUniqueKey"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R7 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K10 ["Src"]
       48 GETTABLEKS                       R8 R9 K14 ["Resources"]
       50 GETTABLEKS                       R7 R8 K15 ["Theme"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K16 ["UI"]
       55 GETTABLEKS                       R8 R7 K17 ["Checkbox"]
       57 GETTABLEKS                       R9 R7 K18 ["Pane"]
       59 GETTABLEKS                       R10 R7 K19 ["TextLabel"]
       61 GETTABLEKS                       R12 R2 K20 ["ContextServices"]
       63 GETTABLEKS                       R11 R12 K21 ["Localization"]
       65 GETTABLEKS                       R13 R2 K20 ["ContextServices"]
       67 GETTABLEKS                       R12 R13 K22 ["Stylizer"]
       69 GETTABLEKS                       R14 R2 K11 ["Util"]
       71 GETTABLEKS                       R13 R14 K23 ["LayoutOrderIterator"]
       73 DUPCLOSURE                       R14 K24 [PROTO_5]
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R8
       83 RETURN                           R14 1
