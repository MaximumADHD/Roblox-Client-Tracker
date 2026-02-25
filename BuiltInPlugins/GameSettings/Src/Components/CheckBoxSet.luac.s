PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["EntryClicked"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Boxes"]
        6 LENGTH                           R4 R3
        7 GETTABLEKS                       R6 R1 K3 ["ErrorMessage"]
        9 JUMPIFNOTEQKNIL                  R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 DUPTABLE                         R6 K5 [{"Layout"}]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K6 ["createElement"]
       17 LOADK                            R8 K7 ["UIListLayout"]
       18 DUPTABLE                         R9 K10 [{"Padding", "SortOrder"}]
       19 GETIMPORT                        R10 K13 [UDim.new]
       21 LOADN                            R11 0
       22 GETUPVAL                         R13 1
       23 GETTABLEKS                       R12 R13 K14 ["CHECKBOX_PADDING"]
       25 CALL                             R10 2 1
       26 SETTABLEKS                       R10 R9 K8 ["Padding"]
       28 GETIMPORT                        R10 K17 [Enum.SortOrder.LayoutOrder]
       30 SETTABLEKS                       R10 R9 K9 ["SortOrder"]
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K4 ["Layout"]
       35 GETIMPORT                        R7 K19 [ipairs]
       37 MOVE                             R8 R3
       38 CALL                             R7 1 3
       39 FORGPREP_INEXT                   R7
       40 MOVE                             R13 R6
       41 GETUPVAL                         R15 0
       42 GETTABLEKS                       R14 R15 K6 ["createElement"]
       44 GETUPVAL                         R15 2
       45 DUPTABLE                         R16 K25 [{"Checked", "Disabled", "Key", "LayoutOrder", "OnClick", "Text"}]
       46 LOADB                            R17 0
       47 GETTABLEKS                       R18 R11 K26 ["Selected"]
       49 JUMPIFEQKNIL                     R18 ; [+3]
       51 GETTABLEKS                       R17 R11 K26 ["Selected"]
       53 SETTABLEKS                       R17 R16 K20 ["Checked"]
       55 GETTABLEKS                       R18 R1 K27 ["Enabled"]
       57 NOT                              R17 R18
       58 SETTABLEKS                       R17 R16 K21 ["Disabled"]
       60 GETTABLEKS                       R17 R11 K28 ["Id"]
       62 SETTABLEKS                       R17 R16 K22 ["Key"]
       64 SETTABLEKS                       R10 R16 K16 ["LayoutOrder"]
       66 NEWCLOSURE                       R17 P0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R11
       69 SETTABLEKS                       R17 R16 K23 ["OnClick"]
       71 GETTABLEKS                       R17 R11 K29 ["Title"]
       73 SETTABLEKS                       R17 R16 K24 ["Text"]
       75 DUPTABLE                         R17 K31 [{"Link"}]
       76 GETTABLEKS                       R18 R11 K32 ["LinkTextFrame"]
       78 SETTABLEKS                       R18 R17 K30 ["Link"]
       80 CALL                             R14 3 -1
       81 FASTCALL                         TABLE_INSERT ; [+2]
       82 GETIMPORT                        R12 K35 [table.insert]
       84 CALL                             R12 -1 0
       85 FORGLOOP                         R7 2 [inext] ; [-46]
       87 JUMPIFNOT                        R5 ; [+47]
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R7 R8 K6 ["createElement"]
       91 LOADK                            R8 K36 ["TextLabel"]
       92 GETUPVAL                         R11 3
       93 GETTABLEKS                       R10 R11 K37 ["Dictionary"]
       95 GETTABLEKS                       R9 R10 K38 ["join"]
       97 GETTABLEKS                       R11 R2 K39 ["fontStyle"]
       99 GETTABLEKS                       R10 R11 K40 ["SmallError"]
      101 DUPTABLE                         R11 K45 [{"LayoutOrder", "Size", "BackgroundTransparency", "Text", "TextXAlignment", "TextYAlignment"}]
      102 ADDK                             R12 R4 K46 [1]
      103 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
      105 GETIMPORT                        R12 K48 [UDim2.new]
      107 LOADN                            R13 1
      108 LOADN                            R14 0
      109 LOADN                            R15 0
      110 GETUPVAL                         R17 1
      111 GETTABLEKS                       R16 R17 K49 ["CHECKBOX_SIZE"]
      113 CALL                             R12 4 1
      114 SETTABLEKS                       R12 R11 K41 ["Size"]
      116 LOADN                            R12 1
      117 SETTABLEKS                       R12 R11 K42 ["BackgroundTransparency"]
      119 GETTABLEKS                       R12 R1 K3 ["ErrorMessage"]
      121 SETTABLEKS                       R12 R11 K24 ["Text"]
      123 GETIMPORT                        R12 K51 [Enum.TextXAlignment.Left]
      125 SETTABLEKS                       R12 R11 K43 ["TextXAlignment"]
      127 GETIMPORT                        R12 K53 [Enum.TextYAlignment.Center]
      129 SETTABLEKS                       R12 R11 K44 ["TextYAlignment"]
      131 CALL                             R9 2 -1
      132 CALL                             R7 -1 1
      133 SETTABLEKS                       R7 R6 K54 ["Error"]
      135 GETUPVAL                         R10 1
      136 GETTABLEKS                       R9 R10 K49 ["CHECKBOX_SIZE"]
      138 MUL                              R8 R4 R9
      139 GETUPVAL                         R11 1
      140 GETTABLEKS                       R10 R11 K14 ["CHECKBOX_PADDING"]
      142 MUL                              R9 R4 R10
      143 ADD                              R7 R8 R9
      144 GETTABLEKS                       R8 R1 K55 ["ShowWarning"]
      146 JUMPIFNOT                        R8 ; [+1]
      147 MULK                             R7 R7 K56 [3]
      148 GETUPVAL                         R9 0
      149 GETTABLEKS                       R8 R9 K6 ["createElement"]
      151 GETUPVAL                         R9 4
      152 DUPTABLE                         R10 K57 [{"LayoutOrder", "Title"}]
      153 GETTABLEKS                       R12 R1 K16 ["LayoutOrder"]
      155 ORK                              R11 R12 K46 [1]
      156 SETTABLEKS                       R11 R10 K16 ["LayoutOrder"]
      158 GETTABLEKS                       R11 R1 K29 ["Title"]
      160 SETTABLEKS                       R11 R10 K29 ["Title"]
      162 MOVE                             R11 R6
      163 CALL                             R8 3 -1
      164 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Util"]
       40 GETTABLEKS                       R7 R8 K13 ["DEPRECATED_Constants"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R2 K14 ["UI"]
       45 GETTABLEKS                       R8 R7 K15 ["Checkbox"]
       47 GETTABLEKS                       R9 R7 K16 ["TitledFrame"]
       49 GETTABLEKS                       R10 R1 K17 ["PureComponent"]
       51 LOADK                            R12 K18 ["CheckBoxSet"]
       52 NAMECALL                         R10 R10 K19 ["extend"]
       54 CALL                             R10 2 1
       55 DUPCLOSURE                       R11 K20 [PROTO_1]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R9
       61 SETTABLEKS                       R11 R10 K21 ["render"]
       63 MOVE                             R11 R5
       64 DUPTABLE                         R12 K23 [{"Stylizer"}]
       65 GETTABLEKS                       R13 R4 K22 ["Stylizer"]
       67 SETTABLEKS                       R13 R12 K22 ["Stylizer"]
       69 CALL                             R11 1 1
       70 MOVE                             R12 R10
       71 CALL                             R11 1 1
       72 MOVE                             R10 R11
       73 RETURN                           R10 1
