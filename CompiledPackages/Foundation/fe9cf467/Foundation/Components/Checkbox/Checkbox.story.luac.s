PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADB                            R6 1
        7 SETTABLE                         R6 R0 R5
        8 FORGLOOP                         R1 2 ; [-3]
       10 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["join"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R6 1
        8 GETUPVAL                         R7 2
        9 GETTABLE                         R5 R6 R7
       10 NOT                              R4 R5
       11 SETTABLE                         R4 R2 R3
       12 CALL                             R0 2 1
       13 GETUPVAL                         R1 3
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K8 [{"isChecked", "isDisabled", "onActivated", "size", "label", "placement", "LayoutOrder"}]
        5 GETUPVAL                         R6 2
        6 GETTABLE                         R5 R6 R0
        7 SETTABLEKS                       R5 R4 K1 ["isChecked"]
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R5 R6 K2 ["isDisabled"]
       12 SETTABLEKS                       R5 R4 K2 ["isDisabled"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U5
       19 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       21 SETTABLEKS                       R0 R4 K4 ["size"]
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R6 R7 K5 ["label"]
       26 ORK                              R5 R6 K9 [""]
       27 SETTABLEKS                       R5 R4 K5 ["label"]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R5 R6 K6 ["placement"]
       32 SETTABLEKS                       R5 R4 K6 ["placement"]
       34 SETTABLEKS                       R1 R4 K7 ["LayoutOrder"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 NEWTABLE                         R2 0 4
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["Large"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["Medium"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K3 ["Small"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K4 ["XSmall"]
       16 SETLIST                          R2 R3 4 [1]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K5 ["useState"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R2
       23 CALL                             R3 1 2
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K6 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K8 [{"tag"}]
       29 LOADK                            R8 K9 ["col gap-xxlarge size-3000-0"]
       30 SETTABLEKS                       R8 R7 K7 ["tag"]
       32 GETUPVAL                         R9 3
       33 GETTABLEKS                       R8 R9 K10 ["map"]
       35 MOVE                             R9 R2
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R4
       43 CALL                             R8 2 -1
       44 CALL                             R5 -1 -1
       45 RETURN                           R5 -1

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K7 ["Radius"]
        7 GETTABLEKS                       R3 R4 K8 ["Medium"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K9 ["Size"]
       15 GETTABLEKS                       R1 R2 K10 ["Size_150"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K11 ["Stroke"]
       22 GETTABLEKS                       R1 R2 K12 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADB                            R3 1
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K2 ["useMemo"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R4
       14 NEWTABLE                         R7 0 1
       16 MOVE                             R8 R4
       17 SETLIST                          R7 R8 1 [1]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K3 ["createElement"]
       23 GETUPVAL                         R7 2
       24 DUPTABLE                         R8 K8 [{"cursor", "onActivated", "tag", "Size"}]
       25 SETTABLEKS                       R5 R8 K4 ["cursor"]
       27 NEWCLOSURE                       R9 P1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R9 R8 K5 ["onActivated"]
       32 LOADK                            R9 K9 ["auto-y col align-x-center align-y-center gap-medium padding-large radius-medium bg-surface-100 stroke-muted"]
       33 SETTABLEKS                       R9 R8 K6 ["tag"]
       35 GETIMPORT                        R9 K12 [UDim2.fromOffset]
       37 LOADN                            R10 44
       38 LOADN                            R11 120
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K7 ["Size"]
       42 DUPTABLE                         R9 K15 [{"Checkbox", "Description"}]
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R10 R11 K3 ["createElement"]
       46 GETUPVAL                         R11 3
       47 DUPTABLE                         R12 K22 [{"isChecked", "onActivated", "size", "label", "placement", "Selectable", "LayoutOrder"}]
       48 SETTABLEKS                       R2 R12 K16 ["isChecked"]
       50 NEWCLOSURE                       R13 P2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R13 R12 K5 ["onActivated"]
       55 GETTABLEKS                       R13 R1 K17 ["size"]
       57 SETTABLEKS                       R13 R12 K17 ["size"]
       59 LOADK                            R13 K23 ["Enable notifications"]
       60 SETTABLEKS                       R13 R12 K18 ["label"]
       62 GETTABLEKS                       R13 R1 K19 ["placement"]
       64 SETTABLEKS                       R13 R12 K19 ["placement"]
       66 LOADB                            R13 0
       67 SETTABLEKS                       R13 R12 K20 ["Selectable"]
       69 LOADN                            R13 1
       70 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
       72 CALL                             R10 2 1
       73 SETTABLEKS                       R10 R9 K13 ["Checkbox"]
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R10 R11 K3 ["createElement"]
       78 GETUPVAL                         R11 4
       79 DUPTABLE                         R12 K25 [{"Text", "tag", "LayoutOrder"}]
       80 LOADK                            R13 K26 ["Get notified when someone mentions you or sends you a message"]
       81 SETTABLEKS                       R13 R12 K24 ["Text"]
       83 LOADK                            R13 K27 ["text-body-small content-muted auto-y size-full-0 text-wrap"]
       84 SETTABLEKS                       R13 R12 K6 ["tag"]
       86 LOADN                            R13 2
       87 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K14 ["Description"]
       92 CALL                             R6 3 -1
       93 RETURN                           R6 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K1 ["useState"]
       10 LOADB                            R5 0
       11 CALL                             R4 1 2
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K1 ["useState"]
       15 LOADB                            R7 1
       16 CALL                             R6 1 2
       17 MOVE                             R8 R2
       18 JUMPIF                           R8 ; [+3]
       19 MOVE                             R8 R4
       20 JUMPIF                           R8 ; [+1]
       21 MOVE                             R8 R6
       22 LOADB                            R9 1
       23 JUMPIFNOTEQ                      R2 R4 ; [+5]
       25 JUMPIFNOTEQ                      R4 R6 ; [+2]
       27 LOADB                            R9 0 +1
       28 LOADB                            R9 1
       29 GETTABLEKS                       R10 R1 K2 ["label"]
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R11 R12 K3 ["createElement"]
       34 GETUPVAL                         R12 1
       35 DUPTABLE                         R13 K5 [{"tag"}]
       36 LOADK                            R14 K6 ["col auto-xy size-3000-0 gap-medium"]
       37 SETTABLEKS                       R14 R13 K4 ["tag"]
       39 DUPTABLE                         R14 K11 [{"Aggregation", "Check1", "Check2", "Check3"}]
       40 GETUPVAL                         R16 0
       41 GETTABLEKS                       R15 R16 K3 ["createElement"]
       43 GETUPVAL                         R16 2
       44 DUPTABLE                         R17 K19 [{"LayoutOrder", "isChecked", "isIndeterminate", "isDisabled", "onActivated", "size", "label", "placement"}]
       45 LOADN                            R18 1
       46 SETTABLEKS                       R18 R17 K12 ["LayoutOrder"]
       48 SETTABLEKS                       R8 R17 K13 ["isChecked"]
       50 SETTABLEKS                       R9 R17 K14 ["isIndeterminate"]
       52 GETTABLEKS                       R18 R1 K15 ["isDisabled"]
       54 SETTABLEKS                       R18 R17 K15 ["isDisabled"]
       56 NEWCLOSURE                       R18 P0
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 SETTABLEKS                       R18 R17 K16 ["onActivated"]
       62 GETTABLEKS                       R18 R1 K17 ["size"]
       64 SETTABLEKS                       R18 R17 K17 ["size"]
       66 LOADK                            R18 K20 [""]
       67 SETTABLEKS                       R18 R17 K2 ["label"]
       69 GETTABLEKS                       R18 R1 K18 ["placement"]
       71 SETTABLEKS                       R18 R17 K18 ["placement"]
       73 CALL                             R15 2 1
       74 SETTABLEKS                       R15 R14 K7 ["Aggregation"]
       76 GETUPVAL                         R16 0
       77 GETTABLEKS                       R15 R16 K3 ["createElement"]
       79 GETUPVAL                         R16 2
       80 DUPTABLE                         R17 K21 [{"LayoutOrder", "isChecked", "isDisabled", "onActivated", "size", "label", "placement"}]
       81 LOADN                            R18 2
       82 SETTABLEKS                       R18 R17 K12 ["LayoutOrder"]
       84 SETTABLEKS                       R2 R17 K13 ["isChecked"]
       86 GETTABLEKS                       R18 R1 K15 ["isDisabled"]
       88 SETTABLEKS                       R18 R17 K15 ["isDisabled"]
       90 NEWCLOSURE                       R18 P1
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R18 R17 K16 ["onActivated"]
       94 GETTABLEKS                       R18 R1 K17 ["size"]
       96 SETTABLEKS                       R18 R17 K17 ["size"]
       98 MOVE                             R20 R10
       99 LOADK                            R21 K23 [" 1"]
      100 CONCAT                           R19 R20 R21
      101 ORK                              R18 R19 K22 ["Item 1"]
      102 SETTABLEKS                       R18 R17 K2 ["label"]
      104 GETTABLEKS                       R18 R1 K18 ["placement"]
      106 SETTABLEKS                       R18 R17 K18 ["placement"]
      108 CALL                             R15 2 1
      109 SETTABLEKS                       R15 R14 K8 ["Check1"]
      111 GETUPVAL                         R16 0
      112 GETTABLEKS                       R15 R16 K3 ["createElement"]
      114 GETUPVAL                         R16 2
      115 DUPTABLE                         R17 K21 [{"LayoutOrder", "isChecked", "isDisabled", "onActivated", "size", "label", "placement"}]
      116 LOADN                            R18 3
      117 SETTABLEKS                       R18 R17 K12 ["LayoutOrder"]
      119 SETTABLEKS                       R4 R17 K13 ["isChecked"]
      121 GETTABLEKS                       R18 R1 K15 ["isDisabled"]
      123 SETTABLEKS                       R18 R17 K15 ["isDisabled"]
      125 NEWCLOSURE                       R18 P2
      126 CAPTURE                          VAL R5
      127 SETTABLEKS                       R18 R17 K16 ["onActivated"]
      129 GETTABLEKS                       R18 R1 K17 ["size"]
      131 SETTABLEKS                       R18 R17 K17 ["size"]
      133 MOVE                             R20 R10
      134 LOADK                            R21 K25 [" 2"]
      135 CONCAT                           R19 R20 R21
      136 ORK                              R18 R19 K24 ["Item 2"]
      137 SETTABLEKS                       R18 R17 K2 ["label"]
      139 GETTABLEKS                       R18 R1 K18 ["placement"]
      141 SETTABLEKS                       R18 R17 K18 ["placement"]
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K9 ["Check2"]
      146 GETUPVAL                         R16 0
      147 GETTABLEKS                       R15 R16 K3 ["createElement"]
      149 GETUPVAL                         R16 2
      150 DUPTABLE                         R17 K21 [{"LayoutOrder", "isChecked", "isDisabled", "onActivated", "size", "label", "placement"}]
      151 LOADN                            R18 4
      152 SETTABLEKS                       R18 R17 K12 ["LayoutOrder"]
      154 SETTABLEKS                       R6 R17 K13 ["isChecked"]
      156 GETTABLEKS                       R18 R1 K15 ["isDisabled"]
      158 SETTABLEKS                       R18 R17 K15 ["isDisabled"]
      160 NEWCLOSURE                       R18 P3
      161 CAPTURE                          VAL R7
      162 SETTABLEKS                       R18 R17 K16 ["onActivated"]
      164 GETTABLEKS                       R18 R1 K17 ["size"]
      166 SETTABLEKS                       R18 R17 K17 ["size"]
      168 MOVE                             R20 R10
      169 LOADK                            R21 K27 [" 3"]
      170 CONCAT                           R19 R20 R21
      171 ORK                              R18 R19 K26 ["Item 3"]
      172 SETTABLEKS                       R18 R17 K2 ["label"]
      174 GETTABLEKS                       R18 R1 K18 ["placement"]
      176 SETTABLEKS                       R18 R17 K18 ["placement"]
      178 CALL                             R15 2 1
      179 SETTABLEKS                       R15 R14 K10 ["Check3"]
      181 CALL                             R11 3 -1
      182 RETURN                           R11 -1

PROTO_13:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["isChecked: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K3 [{"tag"}]
        7 LOADK                            R5 K4 ["col auto-xy size-3000-0"]
        8 SETTABLEKS                       R5 R4 K2 ["tag"]
       10 NEWTABLE                         R5 0 1
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K1 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K11 [{"isDisabled", "isIndeterminate", "onActivated", "size", "label", "placement"}]
       17 GETTABLEKS                       R9 R1 K5 ["isDisabled"]
       19 SETTABLEKS                       R9 R8 K5 ["isDisabled"]
       21 GETTABLEKS                       R9 R1 K6 ["isIndeterminate"]
       23 SETTABLEKS                       R9 R8 K6 ["isIndeterminate"]
       25 DUPCLOSURE                       R9 K12 [PROTO_13]
       26 SETTABLEKS                       R9 R8 K7 ["onActivated"]
       28 GETTABLEKS                       R9 R1 K8 ["size"]
       30 SETTABLEKS                       R9 R8 K8 ["size"]
       32 GETTABLEKS                       R10 R1 K9 ["label"]
       34 ORK                              R9 R10 K13 [""]
       35 SETTABLEKS                       R9 R8 K9 ["label"]
       37 GETTABLEKS                       R9 R1 K10 ["placement"]
       39 SETTABLEKS                       R9 R8 K10 ["placement"]
       41 CALL                             R6 2 -1
       42 SETLIST                          R5 R6 -1 [1]
       44 CALL                             R2 3 -1
       45 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Checkbox"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R10 R0 K13 ["Providers"]
       44 GETTABLEKS                       R9 R10 K14 ["Style"]
       46 GETTABLEKS                       R8 R9 K15 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Enums"]
       53 GETTABLEKS                       R9 R10 K17 ["InputPlacement"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R11 K18 ["InputSize"]
       62 CALL                             R9 1 1
       63 DUPCLOSURE                       R10 K19 [PROTO_3]
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 DUPCLOSURE                       R11 K20 [PROTO_7]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 DUPCLOSURE                       R12 K21 [PROTO_12]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R4
       79 DUPCLOSURE                       R13 K22 [PROTO_14]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R4
       83 DUPTABLE                         R14 K26 [{"summary", "stories", "controls"}]
       84 LOADK                            R15 K27 ["Checkbox component"]
       85 SETTABLEKS                       R15 R14 K23 ["summary"]
       87 NEWTABLE                         R15 0 4
       89 DUPTABLE                         R16 K30 [{"name", "story"}]
       90 LOADK                            R17 K31 ["Basic"]
       91 SETTABLEKS                       R17 R16 K28 ["name"]
       93 SETTABLEKS                       R10 R16 K29 ["story"]
       95 DUPTABLE                         R17 K32 [{"name", "summary", "story"}]
       96 LOADK                            R18 K33 ["Custom Selection"]
       97 SETTABLEKS                       R18 R17 K28 ["name"]
       99 LOADK                            R18 K34 ["Select card container instead of checkbox"]
      100 SETTABLEKS                       R18 R17 K23 ["summary"]
      102 SETTABLEKS                       R11 R17 K29 ["story"]
      104 DUPTABLE                         R18 K32 [{"name", "summary", "story"}]
      105 LOADK                            R19 K35 ["Indeterminate"]
      106 SETTABLEKS                       R19 R18 K28 ["name"]
      108 LOADK                            R19 K36 ["A checkbox with an indeterminate state. Useful for aggregating other checkboxes"]
      109 SETTABLEKS                       R19 R18 K23 ["summary"]
      111 SETTABLEKS                       R12 R18 K29 ["story"]
      113 DUPTABLE                         R19 K32 [{"name", "summary", "story"}]
      114 LOADK                            R20 K37 ["Uncontrolled"]
      115 SETTABLEKS                       R20 R19 K28 ["name"]
      117 LOADK                            R20 K38 ["State is controlled by the checkbox itself"]
      118 SETTABLEKS                       R20 R19 K23 ["summary"]
      120 SETTABLEKS                       R13 R19 K29 ["story"]
      122 SETLIST                          R15 R16 4 [1]
      124 SETTABLEKS                       R15 R14 K24 ["stories"]
      126 DUPTABLE                         R15 K42 [{"isDisabled", "label", "placement"}]
      127 LOADB                            R16 0
      128 SETTABLEKS                       R16 R15 K39 ["isDisabled"]
      130 LOADK                            R16 K43 ["Label"]
      131 SETTABLEKS                       R16 R15 K40 ["label"]
      133 GETTABLEKS                       R16 R2 K44 ["values"]
      135 MOVE                             R17 R8
      136 CALL                             R16 1 1
      137 SETTABLEKS                       R16 R15 K41 ["placement"]
      139 SETTABLEKS                       R15 R14 K25 ["controls"]
      141 RETURN                           R14 1
