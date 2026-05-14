PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["LayeredClothingEditorPreview"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 LOADK                            R3 K2 ["Mannequin"]
        8 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 MOVE                             R4 R1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K3 ["props"]
       18 GETTABLEKS                       R5 R5 K4 ["EditingItemContext"]
       20 NAMECALL                         R5 R5 K5 ["getItem"]
       22 CALL                             R5 1 -1
       23 NAMECALL                         R2 R2 K6 ["SetPreviewAsCharacter"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R1 R0 K0 ["onPreviewButtonClick"]
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["getTextWidth"]
        9 LOADK                            R5 K4 ["Preview"]
       10 GETTABLEKS                       R6 R3 K5 ["TextSize"]
       12 GETTABLEKS                       R7 R3 K6 ["Font"]
       14 CALL                             R4 3 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K7 ["createElement"]
       18 GETUPVAL                         R6 2
       19 DUPTABLE                         R7 K14 [{"Size", "Text", "TextSize", "ButtonHeight", "BackgroundColor3", "Style", "LayoutOrder", "OnClick"}]
       20 GETIMPORT                        R8 K17 [UDim2.new]
       22 LOADN                            R9 0
       23 GETTABLEKS                       R11 R3 K18 ["MainPadding"]
       25 ADD                              R10 R4 R11
       26 LOADN                            R11 0
       27 GETTABLEKS                       R12 R3 K10 ["ButtonHeight"]
       29 CALL                             R8 4 1
       30 SETTABLEKS                       R8 R7 K8 ["Size"]
       32 LOADK                            R8 K4 ["Preview"]
       33 SETTABLEKS                       R8 R7 K9 ["Text"]
       35 GETTABLEKS                       R8 R3 K5 ["TextSize"]
       37 SETTABLEKS                       R8 R7 K5 ["TextSize"]
       39 GETTABLEKS                       R8 R3 K10 ["ButtonHeight"]
       41 SETTABLEKS                       R8 R7 K10 ["ButtonHeight"]
       43 GETIMPORT                        R8 K20 [Color3.new]
       45 LOADN                            R9 0
       46 LOADN                            R10 0
       47 LOADN                            R11 0
       48 CALL                             R8 3 1
       49 SETTABLEKS                       R8 R7 K11 ["BackgroundColor3"]
       51 LOADK                            R8 K21 ["Round"]
       52 SETTABLEKS                       R8 R7 K12 ["Style"]
       54 SETTABLEKS                       R2 R7 K1 ["LayoutOrder"]
       56 GETTABLEKS                       R8 R0 K22 ["onPreviewButtonClick"]
       58 SETTABLEKS                       R8 R7 K13 ["OnClick"]
       60 CALL                             R5 2 -1
       61 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 GETTABLEKS                       R0 R0 K2 ["Workspace"]
        5 GETIMPORT                        R1 K4 [script]
        7 GETTABLEKS                       R1 R1 K5 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Parent"]
       13 GETTABLEKS                       R1 R1 K5 ["Parent"]
       15 GETIMPORT                        R2 K7 [require]
       17 GETTABLEKS                       R3 R1 K8 ["Packages"]
       19 GETTABLEKS                       R3 R3 K9 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K7 [require]
       24 GETTABLEKS                       R4 R1 K8 ["Packages"]
       26 GETTABLEKS                       R4 R4 K10 ["AvatarToolsShared"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K11 ["Util"]
       31 GETTABLEKS                       R4 R4 K12 ["AccessoryAndBodyToolShared"]
       33 GETTABLEKS                       R5 R3 K13 ["Contexts"]
       35 GETTABLEKS                       R5 R5 K14 ["EditingItemContext"]
       37 GETIMPORT                        R6 K7 [require]
       39 GETTABLEKS                       R7 R1 K8 ["Packages"]
       41 GETTABLEKS                       R7 R7 K15 ["Framework"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R6 K16 ["ContextServices"]
       46 GETTABLEKS                       R8 R7 K17 ["withContext"]
       48 GETTABLEKS                       R9 R4 K18 ["PreviewModelAsCharacter"]
       50 GETTABLEKS                       R10 R6 K19 ["UI"]
       52 GETTABLEKS                       R11 R10 K20 ["Button"]
       54 GETIMPORT                        R12 K7 [require]
       56 GETTABLEKS                       R13 R1 K21 ["Src"]
       58 GETTABLEKS                       R13 R13 K11 ["Util"]
       60 GETTABLEKS                       R13 R13 K22 ["StringUtil"]
       62 CALL                             R12 1 1
       63 GETTABLEKS                       R13 R2 K23 ["PureComponent"]
       65 LOADK                            R15 K24 ["PreviewToStarterCharacterButton"]
       66 NAMECALL                         R13 R13 K25 ["extend"]
       68 CALL                             R13 2 1
       69 DUPCLOSURE                       R14 K26 [PROTO_1]
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R9
       72 SETTABLEKS                       R14 R13 K27 ["init"]
       74 DUPCLOSURE                       R14 K28 [PROTO_2]
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R11
       78 SETTABLEKS                       R14 R13 K29 ["render"]
       80 MOVE                             R14 R8
       81 DUPTABLE                         R15 K31 [{"Stylizer", "EditingItemContext"}]
       82 GETTABLEKS                       R16 R7 K30 ["Stylizer"]
       84 SETTABLEKS                       R16 R15 K30 ["Stylizer"]
       86 SETTABLEKS                       R5 R15 K14 ["EditingItemContext"]
       88 CALL                             R14 1 1
       89 MOVE                             R15 R13
       90 CALL                             R14 1 1
       91 MOVE                             R13 R14
       92 RETURN                           R13 1
