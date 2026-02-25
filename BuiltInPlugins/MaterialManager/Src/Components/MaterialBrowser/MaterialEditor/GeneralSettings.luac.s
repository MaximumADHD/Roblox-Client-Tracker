PROTO_0:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"nameMessage", "status"}]
        2 MOVE                             R5 R0
        3 JUMPIF                           R5 ; [+3]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K3 ["None"]
        7 SETTABLEKS                       R5 R4 K0 ["nameMessage"]
        9 JUMPIFNOT                        R1 ; [+2]
       10 MOVE                             R5 R1
       11 JUMP                             ; [+2]
       12 GETIMPORT                        R5 K7 [Enum.PropertyStatus.Ok]
       14 SETTABLEKS                       R5 R4 K1 ["status"]
       16 NAMECALL                         R2 R2 K8 ["setState"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"name"}]
        2 SETTABLEKS                       R0 R3 K0 ["name"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["state"]
        8 GETTABLEKS                       R2 R3 K3 ["name"]
       10 JUMPIFNOT                        R2 ; [+53]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K2 ["state"]
       14 GETTABLEKS                       R2 R3 K3 ["name"]
       16 JUMPIFEQKS                       R2 K4 [""] ; [+47]
       18 GETTABLEKS                       R2 R0 K5 ["GeneralServiceController"]
       20 GETTABLEKS                       R4 R0 K6 ["MaterialVariant"]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K2 ["state"]
       25 GETTABLEKS                       R5 R6 K3 ["name"]
       27 NAMECALL                         R2 R2 K7 ["setName"]
       29 CALL                             R2 3 0
       30 GETTABLEKS                       R3 R0 K6 ["MaterialVariant"]
       32 GETTABLEKS                       R2 R3 K8 ["BaseMaterial"]
       34 GETTABLEKS                       R3 R0 K9 ["MaterialServiceController"]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K2 ["state"]
       39 GETTABLEKS                       R5 R6 K3 ["name"]
       41 MOVE                             R6 R2
       42 NAMECALL                         R3 R3 K10 ["checkMaterialName"]
       44 CALL                             R3 3 1
       45 JUMPIFNOT                        R3 ; [+12]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R3 R4 K11 ["setNameStatus"]
       49 LOADK                            R6 K12 ["CreateDialog"]
       50 LOADK                            R7 K13 ["ErrorNameExists"]
       51 NAMECALL                         R4 R1 K14 ["getText"]
       53 CALL                             R4 3 1
       54 GETIMPORT                        R5 K18 [Enum.PropertyStatus.Warning]
       56 CALL                             R3 2 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R3 R4 K11 ["setNameStatus"]
       61 LOADNIL                          R4
       62 CALL                             R3 1 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R2 0
       65 DUPTABLE                         R4 K19 [{"name"}]
       66 GETTABLEKS                       R6 R0 K6 ["MaterialVariant"]
       68 GETTABLEKS                       R5 R6 K20 ["Name"]
       70 SETTABLEKS                       R5 R4 K3 ["name"]
       72 NAMECALL                         R2 R2 K21 ["setState"]
       74 CALL                             R2 2 0
       75 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["Localization"]
        5 GETTABLEKS                       R4 R2 K2 ["GeneralServiceController"]
        7 GETTABLEKS                       R6 R2 K3 ["MaterialVariant"]
        9 GETUPVAL                         R8 1
       10 GETTABLE                         R7 R8 R1
       11 NAMECALL                         R4 R4 K4 ["setBaseMaterial"]
       13 CALL                             R4 3 0
       14 GETTABLEKS                       R4 R2 K5 ["MaterialServiceController"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R8 R2 K3 ["MaterialVariant"]
       19 GETTABLEKS                       R7 R8 K6 ["BaseMaterial"]
       21 CALL                             R6 1 -1
       22 NAMECALL                         R4 R4 K7 ["setPath"]
       24 CALL                             R4 -1 0
       25 GETTABLEKS                       R5 R2 K3 ["MaterialVariant"]
       27 GETTABLEKS                       R4 R5 K8 ["Name"]
       29 GETTABLEKS                       R6 R2 K3 ["MaterialVariant"]
       31 GETTABLEKS                       R5 R6 K6 ["BaseMaterial"]
       33 GETTABLEKS                       R6 R2 K5 ["MaterialServiceController"]
       35 MOVE                             R8 R4
       36 MOVE                             R9 R5
       37 NAMECALL                         R6 R6 K9 ["checkMaterialName"]
       39 CALL                             R6 3 1
       40 JUMPIFNOT                        R6 ; [+12]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K10 ["setNameStatus"]
       44 LOADK                            R9 K11 ["CreateDialog"]
       45 LOADK                            R10 K12 ["ErrorNameExists"]
       46 NAMECALL                         R7 R3 K13 ["getText"]
       48 CALL                             R7 3 1
       49 GETIMPORT                        R8 K17 [Enum.PropertyStatus.Warning]
       51 CALL                             R6 2 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R6 R7 K10 ["setNameStatus"]
       56 LOADNIL                          R7
       57 CALL                             R6 1 0
       58 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["dispatchSetExpandedPane"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["GeneralSettings"]
        8 GETTABLEKS                       R4 R0 K3 ["ExpandedPane"]
       10 NOT                              R3 R4
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"name"}]
        1 GETTABLEKS                       R4 R0 K2 ["props"]
        3 GETTABLEKS                       R3 R4 K3 ["MaterialVariant"]
        5 GETTABLEKS                       R2 R3 K4 ["Name"]
        7 SETTABLEKS                       R2 R1 K0 ["name"]
        9 SETTABLEKS                       R1 R0 K5 ["state"]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K6 ["baseMaterials"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 SETTABLEKS                       R1 R0 K7 ["setNameStatus"]
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K8 ["onNameChanged"]
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K9 ["onFocusLost"]
       28 NEWCLOSURE                       R1 P3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U2
       32 SETTABLEKS                       R1 R0 K10 ["onBaseMaterialSelected"]
       34 NEWCLOSURE                       R1 P4
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U3
       37 SETTABLEKS                       R1 R0 K11 ["onExpandedChanged"]
       39 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETIMPORT                        R3 K3 [ipairs]
        6 GETUPVAL                         R4 0
        7 CALL                             R3 1 3
        8 FORGPREP_INEXT                   R3
        9 GETTABLEKS                       R9 R0 K4 ["baseMaterials"]
       11 LOADK                            R12 K5 ["Materials"]
       12 GETUPVAL                         R13 1
       13 MOVE                             R14 R7
       14 CALL                             R13 1 -1
       15 NAMECALL                         R10 R2 K6 ["getText"]
       17 CALL                             R10 -1 -1
       18 FASTCALL                         TABLE_INSERT ; [+2]
       19 GETIMPORT                        R8 K9 [table.insert]
       21 CALL                             R8 -1 0
       22 FORGLOOP                         R3 2 [inext] ; [-14]
       24 NEWTABLE                         R5 0 0
       26 NAMECALL                         R3 R0 K10 ["setState"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["state"]
        2 GETTABLEKS                       R3 R4 K1 ["name"]
        4 GETTABLEKS                       R6 R0 K2 ["props"]
        6 GETTABLEKS                       R5 R6 K3 ["MaterialVariant"]
        8 GETTABLEKS                       R4 R5 K4 ["Name"]
       10 JUMPIFEQ                         R3 R4 ; [+21]
       12 GETTABLEKS                       R3 R2 K1 ["name"]
       14 GETTABLEKS                       R5 R0 K0 ["state"]
       16 GETTABLEKS                       R4 R5 K1 ["name"]
       18 JUMPIFNOTEQ                      R3 R4 ; [+13]
       20 DUPTABLE                         R5 K5 [{"name"}]
       21 GETTABLEKS                       R8 R0 K2 ["props"]
       23 GETTABLEKS                       R7 R8 K3 ["MaterialVariant"]
       25 GETTABLEKS                       R6 R7 K4 ["Name"]
       27 SETTABLEKS                       R6 R5 K1 ["name"]
       29 NAMECALL                         R3 R0 K6 ["setState"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["GeneralSettings"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 LOADN                            R4 255
        9 GETIMPORT                        R5 K5 [ipairs]
       11 GETUPVAL                         R6 0
       12 CALL                             R5 1 3
       13 FORGPREP_INEXT                   R5
       14 GETTABLEKS                       R11 R1 K6 ["MaterialVariant"]
       16 GETTABLEKS                       R10 R11 K7 ["BaseMaterial"]
       18 JUMPIFNOTEQ                      R9 R10 ; [+2]
       20 MOVE                             R4 R8
       21 GETIMPORT                        R10 K11 [Enum.Material.Plastic]
       23 JUMPIFNOTEQ                      R9 R10 ; [+4]
       25 JUMPIFNOTEQKN                    R4 K12 [-1] ; [+2]
       27 MOVE                             R4 R8
       28 FORGLOOP                         R5 2 [inext] ; [-15]
       30 JUMPIFNOTEQKN                    R4 K12 [-1] ; [+2]
       32 LOADN                            R4 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R5 R6 K13 ["createElement"]
       36 GETUPVAL                         R6 2
       37 DUPTABLE                         R7 K21 [{"LayoutOrder", "ContentPadding", "ContentSpacing", "Text", "Style", "Expanded", "OnExpandedChanged"}]
       38 GETTABLEKS                       R8 R1 K14 ["LayoutOrder"]
       40 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
       42 GETTABLEKS                       R8 R2 K15 ["ContentPadding"]
       44 SETTABLEKS                       R8 R7 K15 ["ContentPadding"]
       46 GETTABLEKS                       R8 R2 K22 ["ItemSpacing"]
       48 SETTABLEKS                       R8 R7 K16 ["ContentSpacing"]
       50 LOADK                            R10 K23 ["MaterialGeneral"]
       51 LOADK                            R11 K24 ["General"]
       52 NAMECALL                         R8 R3 K25 ["getText"]
       54 CALL                             R8 3 1
       55 SETTABLEKS                       R8 R7 K17 ["Text"]
       57 GETTABLEKS                       R8 R2 K26 ["CustomExpandablePane"]
       59 SETTABLEKS                       R8 R7 K18 ["Style"]
       61 GETTABLEKS                       R8 R1 K27 ["ExpandedPane"]
       63 SETTABLEKS                       R8 R7 K19 ["Expanded"]
       65 GETTABLEKS                       R8 R0 K28 ["onExpandedChanged"]
       67 SETTABLEKS                       R8 R7 K20 ["OnExpandedChanged"]
       69 DUPTABLE                         R8 K30 [{"Name", "BaseMaterial"}]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R9 R10 K13 ["createElement"]
       73 GETUPVAL                         R10 3
       74 DUPTABLE                         R11 K34 [{"LabelColumnWidth", "LayoutOrder", "Text", "StatusText", "Status"}]
       75 GETTABLEKS                       R12 R2 K31 ["LabelColumnWidth"]
       77 SETTABLEKS                       R12 R11 K31 ["LabelColumnWidth"]
       79 LOADN                            R12 1
       80 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       82 LOADK                            R14 K35 ["CreateDialog"]
       83 LOADK                            R15 K36 ["NameVariant"]
       84 NAMECALL                         R12 R3 K25 ["getText"]
       86 CALL                             R12 3 1
       87 SETTABLEKS                       R12 R11 K17 ["Text"]
       89 GETTABLEKS                       R13 R0 K37 ["state"]
       91 GETTABLEKS                       R12 R13 K38 ["nameMessage"]
       93 SETTABLEKS                       R12 R11 K32 ["StatusText"]
       95 GETTABLEKS                       R13 R0 K37 ["state"]
       97 GETTABLEKS                       R12 R13 K39 ["status"]
       99 SETTABLEKS                       R12 R11 K33 ["Status"]
      101 NEWTABLE                         R12 0 1
      103 GETUPVAL                         R14 1
      104 GETTABLEKS                       R13 R14 K13 ["createElement"]
      106 GETUPVAL                         R14 4
      107 DUPTABLE                         R15 K43 [{"Style", "Size", "Text", "OnTextChanged", "OnFocusLost"}]
      108 LOADK                            R16 K44 ["FilledRoundedBorder"]
      109 SETTABLEKS                       R16 R15 K18 ["Style"]
      111 GETTABLEKS                       R16 R2 K45 ["DialogColumnSize"]
      113 SETTABLEKS                       R16 R15 K40 ["Size"]
      115 GETTABLEKS                       R17 R0 K37 ["state"]
      117 GETTABLEKS                       R16 R17 K46 ["name"]
      119 SETTABLEKS                       R16 R15 K17 ["Text"]
      121 GETTABLEKS                       R16 R0 K47 ["onNameChanged"]
      123 SETTABLEKS                       R16 R15 K41 ["OnTextChanged"]
      125 GETTABLEKS                       R16 R0 K48 ["onFocusLost"]
      127 SETTABLEKS                       R16 R15 K42 ["OnFocusLost"]
      129 CALL                             R13 2 -1
      130 SETLIST                          R12 R13 -1 [1]
      132 CALL                             R9 3 1
      133 SETTABLEKS                       R9 R8 K29 ["Name"]
      135 GETUPVAL                         R10 1
      136 GETTABLEKS                       R9 R10 K13 ["createElement"]
      138 GETUPVAL                         R10 3
      139 DUPTABLE                         R11 K49 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
      140 GETTABLEKS                       R12 R2 K31 ["LabelColumnWidth"]
      142 SETTABLEKS                       R12 R11 K31 ["LabelColumnWidth"]
      144 LOADN                            R12 2
      145 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
      147 LOADK                            R14 K35 ["CreateDialog"]
      148 LOADK                            R15 K50 ["BaseMaterialVariant"]
      149 NAMECALL                         R12 R3 K25 ["getText"]
      151 CALL                             R12 3 1
      152 SETTABLEKS                       R12 R11 K17 ["Text"]
      154 NEWTABLE                         R12 0 1
      156 GETUPVAL                         R14 1
      157 GETTABLEKS                       R13 R14 K13 ["createElement"]
      159 GETUPVAL                         R14 5
      160 DUPTABLE                         R15 K55 [{"Style", "Items", "Size", "OnItemActivated", "PlaceholderText", "SelectedIndex"}]
      161 GETTABLEKS                       R16 R2 K56 ["CustomSelectInput"]
      163 SETTABLEKS                       R16 R15 K18 ["Style"]
      165 GETTABLEKS                       R16 R0 K57 ["baseMaterials"]
      167 SETTABLEKS                       R16 R15 K51 ["Items"]
      169 GETTABLEKS                       R16 R2 K45 ["DialogColumnSize"]
      171 SETTABLEKS                       R16 R15 K40 ["Size"]
      173 GETTABLEKS                       R16 R0 K58 ["onBaseMaterialSelected"]
      175 SETTABLEKS                       R16 R15 K52 ["OnItemActivated"]
      177 LOADK                            R18 K35 ["CreateDialog"]
      178 LOADK                            R19 K59 ["PlaceholderBaseMaterial"]
      179 NAMECALL                         R16 R3 K25 ["getText"]
      181 CALL                             R16 3 1
      182 SETTABLEKS                       R16 R15 K53 ["PlaceholderText"]
      184 SETTABLEKS                       R4 R15 K54 ["SelectedIndex"]
      186 CALL                             R13 2 -1
      187 SETLIST                          R12 R13 -1 [1]
      189 CALL                             R9 3 1
      190 SETTABLEKS                       R9 R8 K7 ["BaseMaterial"]
      192 CALL                             R5 3 -1
      193 RETURN                           R5 -1

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"ExpandedPane", "Material"}]
        1 GETTABLEKS                       R4 R0 K3 ["MaterialBrowserReducer"]
        3 GETTABLEKS                       R3 R4 K0 ["ExpandedPane"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K4 ["GeneralSettings"]
        8 GETTABLE                         R2 R3 R4
        9 SETTABLEKS                       R2 R1 K0 ["ExpandedPane"]
       11 GETTABLEKS                       R3 R0 K3 ["MaterialBrowserReducer"]
       13 GETTABLEKS                       R2 R3 K1 ["Material"]
       15 SETTABLEKS                       R2 R1 K1 ["Material"]
       17 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K1 [{"dispatchSetExpandedPane"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetExpandedPane"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R3 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R3 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R4 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R4 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R6 R0 K7 ["Packages"]
       38 GETTABLEKS                       R5 R6 K10 ["Framework"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       43 GETTABLEKS                       R6 R5 K12 ["withContext"]
       45 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       47 GETTABLEKS                       R8 R5 K14 ["Localization"]
       49 GETTABLEKS                       R10 R4 K15 ["Style"]
       51 GETTABLEKS                       R9 R10 K16 ["Stylizer"]
       53 GETTABLEKS                       R10 R4 K17 ["UI"]
       55 GETTABLEKS                       R11 R10 K18 ["DEPRECATED_TextInput"]
       57 GETTABLEKS                       R12 R10 K19 ["SelectInput"]
       59 GETTABLEKS                       R13 R10 K20 ["ExpandablePane"]
       61 GETTABLEKS                       R15 R0 K5 ["Src"]
       63 GETTABLEKS                       R14 R15 K21 ["Actions"]
       65 GETIMPORT                        R15 K4 [require]
       67 GETTABLEKS                       R16 R14 K22 ["SetExpandedPane"]
       69 CALL                             R15 1 1
       70 GETIMPORT                        R16 K4 [require]
       72 GETTABLEKS                       R19 R0 K5 ["Src"]
       74 GETTABLEKS                       R18 R19 K23 ["Reducers"]
       76 GETTABLEKS                       R17 R18 K24 ["MainReducer"]
       78 CALL                             R16 1 1
       79 GETTABLEKS                       R18 R0 K5 ["Src"]
       81 GETTABLEKS                       R17 R18 K25 ["Controllers"]
       83 GETIMPORT                        R18 K4 [require]
       85 GETTABLEKS                       R19 R17 K26 ["MaterialServiceController"]
       87 CALL                             R18 1 1
       88 GETIMPORT                        R19 K4 [require]
       90 GETTABLEKS                       R20 R17 K27 ["GeneralServiceController"]
       92 CALL                             R19 1 1
       93 GETIMPORT                        R20 K4 [require]
       95 GETTABLEKS                       R25 R0 K5 ["Src"]
       97 GETTABLEKS                       R24 R25 K28 ["Components"]
       99 GETTABLEKS                       R23 R24 K29 ["MaterialBrowser"]
      101 GETTABLEKS                       R22 R23 K30 ["MaterialEditor"]
      103 GETTABLEKS                       R21 R22 K31 ["LabeledElement"]
      105 CALL                             R20 1 1
      106 GETTABLEKS                       R23 R0 K5 ["Src"]
      108 GETTABLEKS                       R22 R23 K32 ["Resources"]
      110 GETTABLEKS                       R21 R22 K33 ["Constants"]
      112 GETIMPORT                        R22 K4 [require]
      114 GETTABLEKS                       R23 R21 K34 ["getMaterialPath"]
      116 CALL                             R22 1 1
      117 GETIMPORT                        R23 K4 [require]
      119 GETTABLEKS                       R24 R21 K35 ["getSupportedMaterials"]
      121 CALL                             R23 1 1
      122 GETIMPORT                        R24 K4 [require]
      124 GETTABLEKS                       R25 R21 K36 ["getMaterialName"]
      126 CALL                             R24 1 1
      127 GETIMPORT                        R25 K4 [require]
      129 GETTABLEKS                       R26 R21 K37 ["getSettingsNames"]
      131 CALL                             R25 1 1
      132 MOVE                             R26 R25
      133 CALL                             R26 0 1
      134 MOVE                             R27 R23
      135 LOADB                            R28 1
      136 CALL                             R27 1 1
      137 GETTABLEKS                       R28 R2 K38 ["PureComponent"]
      139 LOADK                            R30 K39 ["GeneralSettings"]
      140 NAMECALL                         R28 R28 K40 ["extend"]
      142 CALL                             R28 2 1
      143 DUPCLOSURE                       R29 K41 [PROTO_5]
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R27
      146 CAPTURE                          VAL R22
      147 CAPTURE                          VAL R26
      148 SETTABLEKS                       R29 R28 K42 ["init"]
      150 DUPCLOSURE                       R29 K43 [PROTO_6]
      151 CAPTURE                          VAL R27
      152 CAPTURE                          VAL R24
      153 SETTABLEKS                       R29 R28 K44 ["didMount"]
      155 DUPCLOSURE                       R29 K45 [PROTO_7]
      156 SETTABLEKS                       R29 R28 K46 ["didUpdate"]
      158 DUPCLOSURE                       R29 K47 [PROTO_8]
      159 CAPTURE                          VAL R27
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R12
      165 SETTABLEKS                       R29 R28 K48 ["render"]
      167 MOVE                             R29 R6
      168 DUPTABLE                         R30 K49 [{"Analytics", "Localization", "Stylizer", "MaterialServiceController", "GeneralServiceController"}]
      169 SETTABLEKS                       R7 R30 K13 ["Analytics"]
      171 SETTABLEKS                       R8 R30 K14 ["Localization"]
      173 SETTABLEKS                       R9 R30 K16 ["Stylizer"]
      175 SETTABLEKS                       R18 R30 K26 ["MaterialServiceController"]
      177 SETTABLEKS                       R19 R30 K27 ["GeneralServiceController"]
      179 CALL                             R29 1 1
      180 MOVE                             R30 R28
      181 CALL                             R29 1 1
      182 MOVE                             R28 R29
      183 GETTABLEKS                       R29 R3 K50 ["connect"]
      185 DUPCLOSURE                       R30 K51 [PROTO_9]
      186 CAPTURE                          VAL R26
      187 DUPCLOSURE                       R31 K52 [PROTO_11]
      188 CAPTURE                          VAL R15
      189 CALL                             R29 2 1
      190 MOVE                             R30 R28
      191 CALL                             R29 1 -1
      192 RETURN                           R29 -1
