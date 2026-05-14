PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 LENGTH                           R2 R0
        5 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        7 LOADB                            R2 1
        8 RETURN                           R2 1
        9 NAMECALL                         R3 R1 K1 ["lower"]
       11 CALL                             R3 1 1
       12 NAMECALL                         R5 R0 K1 ["lower"]
       14 CALL                             R5 1 1
       15 LOADN                            R6 1
       16 LOADB                            R7 0
       17 NAMECALL                         R3 R3 K2 ["find"]
       19 CALL                             R3 4 1
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+5]
        3 GETUPVAL                         R1 0
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+30]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["GetDisplayName"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKNIL                  R3 ; [+3]
       15 LOADB                            R1 0
       16 RETURN                           R1 1
       17 LENGTH                           R4 R2
       18 JUMPIFNOTEQKN                    R4 K1 [0] ; [+3]
       20 LOADB                            R1 1
       21 RETURN                           R1 1
       22 NAMECALL                         R4 R3 K2 ["lower"]
       24 CALL                             R4 1 1
       25 NAMECALL                         R6 R2 K2 ["lower"]
       27 CALL                             R6 1 1
       28 LOADN                            R7 1
       29 LOADB                            R8 0
       30 NAMECALL                         R4 R4 K3 ["find"]
       32 CALL                             R4 4 1
       33 JUMPIFNOTEQKNIL                  R4 ; [+2]
       35 LOADB                            R1 0 +1
       36 LOADB                            R1 1
       37 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["GetDisplayName"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["GetDisplayName"]
        8 MOVE                             R5 R1
        9 CALL                             R4 1 1
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R1 K0 [""] ; [+4]
        2 NEWTABLE                         R4 0 0
        4 RETURN                           R4 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["List"]
        8 GETTABLEKS                       R4 R4 K2 ["filter"]
       10 MOVE                             R5 R0
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R3
       15 CALL                             R4 2 1
       16 GETIMPORT                        R5 K5 [table.sort]
       18 MOVE                             R6 R4
       19 NEWCLOSURE                       R7 P1
       20 CAPTURE                          VAL R3
       21 CALL                             R5 2 0
       22 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Collaborators"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Filter"]
        8 GETUPVAL                         R4 3
        9 CALL                             R0 4 1
       10 GETUPVAL                         R1 4
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["SearchRequested"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["SearchRequested"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 LOADK                            R4 K1 ["Frame"]
        4 DUPTABLE                         R5 K4 [{"Size", "BackgroundTransparency"}]
        5 GETIMPORT                        R6 K7 [UDim2.fromOffset]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K8 ["ListItemSize"]
       10 GETTABLEKS                       R7 R7 K9 ["X"]
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K8 ["ListItemSize"]
       15 GETTABLEKS                       R8 R8 K10 ["Y"]
       17 CALL                             R6 2 1
       18 SETTABLEKS                       R6 R5 K2 ["Size"]
       20 LOADN                            R6 1
       21 SETTABLEKS                       R6 R5 K3 ["BackgroundTransparency"]
       23 DUPTABLE                         R6 K13 [{"Button", "LabelPaddingFrame"}]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K0 ["createElement"]
       27 GETUPVAL                         R8 2
       28 DUPTABLE                         R9 K15 [{"Size", "OnClick"}]
       29 GETIMPORT                        R10 K17 [UDim2.fromScale]
       31 LOADN                            R11 1
       32 LOADN                            R12 1
       33 CALL                             R10 2 1
       34 SETTABLEKS                       R10 R9 K2 ["Size"]
       36 NEWCLOSURE                       R10 P0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U3
       39 SETTABLEKS                       R10 R9 K14 ["OnClick"]
       41 NEWTABLE                         R10 0 0
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K11 ["Button"]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K0 ["createElement"]
       49 LOADK                            R8 K1 ["Frame"]
       50 DUPTABLE                         R9 K4 [{"Size", "BackgroundTransparency"}]
       51 GETIMPORT                        R10 K17 [UDim2.fromScale]
       53 LOADN                            R11 1
       54 LOADN                            R12 1
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K2 ["Size"]
       58 LOADN                            R10 1
       59 SETTABLEKS                       R10 R9 K3 ["BackgroundTransparency"]
       61 DUPTABLE                         R10 K20 [{"Padding", "Collaborator"}]
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R11 R11 K0 ["createElement"]
       65 LOADK                            R12 K21 ["UIPadding"]
       66 DUPTABLE                         R13 K26 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       67 GETUPVAL                         R14 4
       68 SETTABLEKS                       R14 R13 K22 ["PaddingTop"]
       70 GETUPVAL                         R14 4
       71 SETTABLEKS                       R14 R13 K23 ["PaddingBottom"]
       73 GETUPVAL                         R14 4
       74 SETTABLEKS                       R14 R13 K24 ["PaddingLeft"]
       76 GETUPVAL                         R14 4
       77 SETTABLEKS                       R14 R13 K25 ["PaddingRight"]
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K18 ["Padding"]
       82 GETUPVAL                         R11 0
       83 GETTABLEKS                       R11 R11 K0 ["createElement"]
       85 GETUPVAL                         R12 5
       86 DUPTABLE                         R13 K29 [{"Size", "SubjectType", "Id"}]
       87 GETIMPORT                        R14 K17 [UDim2.fromScale]
       89 LOADN                            R15 1
       90 LOADN                            R16 1
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K2 ["Size"]
       94 GETTABLEKS                       R14 R0 K30 ["Type"]
       96 SETTABLEKS                       R14 R13 K27 ["SubjectType"]
       98 GETTABLEKS                       R14 R0 K28 ["Id"]
      100 SETTABLEKS                       R14 R13 K28 ["Id"]
      102 NEWTABLE                         R14 0 0
      104 CALL                             R11 3 1
      105 SETTABLEKS                       R11 R10 K19 ["Collaborator"]
      107 CALL                             R7 3 1
      108 SETTABLEKS                       R7 R6 K12 ["LabelPaddingFrame"]
      110 CALL                             R3 3 -1
      111 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["Size"]
        2 JUMPIF                           R1 ; [+5]
        3 GETIMPORT                        R1 K3 [UDim2.fromScale]
        5 LOADN                            R2 1
        6 LOADN                            R3 1
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["useState"]
       11 LOADK                            R3 K5 [""]
       12 CALL                             R2 1 2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["useState"]
       16 NEWTABLE                         R5 0 0
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K6 ["useContext"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K7 ["Context"]
       25 CALL                             R6 1 1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R6
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R9 0 4
       37 GETTABLEKS                       R10 R0 K9 ["Collaborators"]
       39 MOVE                             R11 R2
       40 GETTABLEKS                       R12 R0 K10 ["Filter"]
       42 MOVE                             R13 R6
       43 SETLIST                          R9 R10 4 [1]
       45 CALL                             R7 2 0
       46 GETUPVAL                         R7 3
       47 NAMECALL                         R7 R7 K11 ["use"]
       49 CALL                             R7 1 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K4 ["useState"]
       53 LOADB                            R9 0
       54 CALL                             R8 1 2
       55 GETUPVAL                         R10 0
       56 GETTABLEKS                       R10 R10 K4 ["useState"]
       58 LOADB                            R11 0
       59 CALL                             R10 1 2
       60 LOADB                            R12 0
       61 LENGTH                           R13 R4
       62 LOADN                            R14 0
       63 JUMPIFNOTLT                      R14 R13 ; [+2]
       65 OR                               R12 R8 R10
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R13 R13 K12 ["createElement"]
       69 LOADK                            R14 K13 ["Frame"]
       70 DUPTABLE                         R15 K16 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       71 SETTABLEKS                       R1 R15 K0 ["Size"]
       73 LOADN                            R16 1
       74 SETTABLEKS                       R16 R15 K14 ["BackgroundTransparency"]
       76 GETTABLEKS                       R16 R0 K15 ["LayoutOrder"]
       78 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
       80 DUPTABLE                         R16 K19 [{"CollaboratorSearchBar", "Dropdown"}]
       81 GETUPVAL                         R17 0
       82 GETTABLEKS                       R17 R17 K12 ["createElement"]
       84 GETUPVAL                         R18 4
       85 DUPTABLE                         R19 K29 [{"Disabled", "SearchTerm", "PlaceholderText", "ShowSearchButton", "ShowSearchIcon", "OnSearchRequested", "IncrementalTextSearch", "OnTextBoxFocusGained", "OnTextBoxFocusLost"}]
       86 GETTABLEKS                       R21 R0 K30 ["Enabled"]
       88 NOT                              R20 R21
       89 SETTABLEKS                       R20 R19 K20 ["Disabled"]
       91 SETTABLEKS                       R2 R19 K21 ["SearchTerm"]
       93 LOADK                            R22 K31 ["AssetConfigPackagePermissions"]
       94 LOADK                            R23 K32 ["CollaboratorSearchPlaceholderText"]
       95 NAMECALL                         R20 R7 K33 ["getText"]
       97 CALL                             R20 3 1
       98 SETTABLEKS                       R20 R19 K22 ["PlaceholderText"]
      100 LOADB                            R20 0
      101 SETTABLEKS                       R20 R19 K23 ["ShowSearchButton"]
      103 LOADB                            R20 1
      104 SETTABLEKS                       R20 R19 K24 ["ShowSearchIcon"]
      106 NEWCLOSURE                       R20 P1
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R20 R19 K25 ["OnSearchRequested"]
      111 LOADB                            R20 1
      112 SETTABLEKS                       R20 R19 K26 ["IncrementalTextSearch"]
      114 NEWCLOSURE                       R20 P2
      115 CAPTURE                          VAL R9
      116 SETTABLEKS                       R20 R19 K27 ["OnTextBoxFocusGained"]
      118 NEWCLOSURE                       R20 P3
      119 CAPTURE                          VAL R9
      120 SETTABLEKS                       R20 R19 K28 ["OnTextBoxFocusLost"]
      122 NEWTABLE                         R20 0 0
      124 CALL                             R17 3 1
      125 SETTABLEKS                       R17 R16 K17 ["CollaboratorSearchBar"]
      127 GETUPVAL                         R17 0
      128 GETTABLEKS                       R17 R17 K12 ["createElement"]
      130 GETUPVAL                         R18 5
      131 DUPTABLE                         R19 K41 [{"Width", "Hide", "OnMouseEnter", "OnMouseLeave", "Items", "OnRenderItem", "OnItemActivated"}]
      132 GETTABLEKS                       R20 R0 K42 ["ListItemSize"]
      134 GETTABLEKS                       R20 R20 K43 ["X"]
      136 SETTABLEKS                       R20 R19 K34 ["Width"]
      138 NOT                              R20 R12
      139 SETTABLEKS                       R20 R19 K35 ["Hide"]
      141 NEWCLOSURE                       R20 P4
      142 CAPTURE                          VAL R11
      143 SETTABLEKS                       R20 R19 K36 ["OnMouseEnter"]
      145 NEWCLOSURE                       R20 P5
      146 CAPTURE                          VAL R11
      147 SETTABLEKS                       R20 R19 K37 ["OnMouseLeave"]
      149 SETTABLEKS                       R4 R19 K38 ["Items"]
      151 NEWCLOSURE                       R20 P6
      152 CAPTURE                          UPVAL U0
      153 CAPTURE                          VAL R0
      154 CAPTURE                          UPVAL U6
      155 CAPTURE                          VAL R11
      156 CAPTURE                          UPVAL U7
      157 CAPTURE                          UPVAL U8
      158 SETTABLEKS                       R20 R19 K39 ["OnRenderItem"]
      160 GETTABLEKS                       R20 R0 K44 ["CollaboratorSelected"]
      162 SETTABLEKS                       R20 R19 K40 ["OnItemActivated"]
      164 CALL                             R17 2 1
      165 SETTABLEKS                       R17 R16 K18 ["Dropdown"]
      167 CALL                             R13 3 -1
      168 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["React"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Components"]
       29 GETTABLEKS                       R4 R4 K10 ["AssetConfiguration"]
       31 GETTABLEKS                       R4 R4 K11 ["Permissions"]
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R4 K12 ["PermissionsConstants"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R4 K13 ["CollaboratorLabel"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R4 K14 ["CollaboratorInfo"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R1 K15 ["Framework"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R8 K16 ["UI"]
       55 GETTABLEKS                       R9 R9 K17 ["SearchBar"]
       57 GETTABLEKS                       R10 R8 K16 ["UI"]
       59 GETTABLEKS                       R10 R10 K18 ["DropdownMenu"]
       61 GETTABLEKS                       R11 R8 K16 ["UI"]
       63 GETTABLEKS                       R11 R11 K19 ["IconButton"]
       65 GETTABLEKS                       R12 R8 K20 ["ContextServices"]
       67 GETTABLEKS                       R13 R12 K21 ["Localization"]
       69 GETIMPORT                        R14 K24 [UDim.new]
       71 LOADK                            R15 K25 [0.05]
       72 LOADN                            R16 0
       73 CALL                             R14 2 1
       74 NEWTABLE                         R15 2 0
       76 GETTABLEKS                       R16 R5 K26 ["UserSubjectKey"]
       78 GETIMPORT                        R17 K30 [Enum.CreatorType.User]
       80 SETTABLE                         R17 R15 R16
       81 GETTABLEKS                       R16 R5 K31 ["GroupSubjectKey"]
       83 GETIMPORT                        R17 K33 [Enum.CreatorType.Group]
       85 SETTABLE                         R17 R15 R16
       86 DUPCLOSURE                       R16 K34 [PROTO_0]
       87 DUPCLOSURE                       R17 K35 [PROTO_3]
       88 CAPTURE                          VAL R2
       89 DUPCLOSURE                       R18 K36 [PROTO_12]
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R6
       99 RETURN                           R18 1
