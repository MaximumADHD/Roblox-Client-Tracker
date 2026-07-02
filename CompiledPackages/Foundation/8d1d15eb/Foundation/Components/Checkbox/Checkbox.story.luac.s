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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K8 [{"isChecked", "isDisabled", "onActivated", "size", "label", "placement", "LayoutOrder"}]
        5 GETUPVAL                         R6 2
        6 GETTABLE                         R5 R6 R0
        7 SETTABLEKS                       R5 R4 K1 ["isChecked"]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R5 R5 K2 ["isDisabled"]
       12 SETTABLEKS                       R5 R4 K2 ["isDisabled"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U5
       19 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       21 SETTABLEKS                       R0 R4 K4 ["size"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K5 ["label"]
       26 ORK                              R5 R6 K9 [""]
       27 SETTABLEKS                       R5 R4 K5 ["label"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K6 ["placement"]
       32 SETTABLEKS                       R5 R4 K6 ["placement"]
       34 SETTABLEKS                       R1 R4 K7 ["LayoutOrder"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 NEWTABLE                         R2 0 4
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Large"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["Medium"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K3 ["Small"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K4 ["XSmall"]
       16 SETLIST                          R2 R3 4 [1]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["useState"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R2
       23 CALL                             R3 1 2
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K6 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K9 [{["tag"] = "col gap-xxlarge size-3000-0"}]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K10 ["map"]
       32 MOVE                             R9 R2
       33 NEWCLOSURE                       R10 P1
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R4
       40 CALL                             R8 2 -1
       41 CALL                             R5 -1 -1
       42 RETURN                           R5 -1

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["Radius"]
        7 GETTABLEKS                       R3 R3 K8 ["Medium"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K9 ["Size"]
       15 GETTABLEKS                       R1 R1 K10 ["Size_150"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K11 ["Stroke"]
       22 GETTABLEKS                       R1 R1 K12 ["Thicker"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADB                            R3 1
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R4
       14 NEWTABLE                         R7 0 1
       16 MOVE                             R8 R4
       17 SETLIST                          R7 R8 1 [1]
       19 CALL                             R5 2 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K3 ["createElement"]
       23 GETUPVAL                         R7 2
       24 DUPTABLE                         R8 K9 [{["cursor"], ["onActivated"], ["tag"] = "auto-y col align-x-center align-y-center gap-medium padding-large radius-medium bg-surface-100 stroke-muted", ["Size"]}]
       25 SETTABLEKS                       R5 R8 K4 ["cursor"]
       27 NEWCLOSURE                       R9 P1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R9 R8 K5 ["onActivated"]
       32 GETIMPORT                        R9 K12 [UDim2.fromOffset]
       34 LOADN                            R10 300
       35 LOADN                            R11 120
       36 CALL                             R9 2 1
       37 SETTABLEKS                       R9 R8 K8 ["Size"]
       39 DUPTABLE                         R9 K15 [{"Checkbox", "Description"}]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K3 ["createElement"]
       43 GETUPVAL                         R11 3
       44 DUPTABLE                         R12 K25 [{["isChecked"], ["onActivated"], ["size"], ["label"] = "Enable notifications", ["placement"], ["Selectable"] = False, ["LayoutOrder"] = 1}]
       45 SETTABLEKS                       R2 R12 K16 ["isChecked"]
       47 NEWCLOSURE                       R13 P2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R13 R12 K5 ["onActivated"]
       52 GETTABLEKS                       R13 R1 K17 ["size"]
       54 SETTABLEKS                       R13 R12 K17 ["size"]
       56 GETTABLEKS                       R13 R1 K20 ["placement"]
       58 SETTABLEKS                       R13 R12 K20 ["placement"]
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R9 K13 ["Checkbox"]
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K3 ["createElement"]
       66 GETUPVAL                         R11 4
       67 DUPTABLE                         R12 K30 [{["Text"] = "Get notified when someone mentions you or sends you a message", ["tag"] = "text-body-small content-muted auto-y size-full-0 text-wrap", ["LayoutOrder"] = 2}]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K14 ["Description"]
       71 CALL                             R6 3 -1
       72 RETURN                           R6 -1

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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K1 ["useState"]
       10 LOADB                            R5 0
       11 CALL                             R4 1 2
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K1 ["useState"]
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
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R11 R11 K3 ["createElement"]
       34 GETUPVAL                         R12 1
       35 DUPTABLE                         R13 K6 [{["tag"] = "col auto-xy size-3000-0 gap-medium"}]
       36 DUPTABLE                         R14 K11 [{"Aggregation", "Check1", "Check2", "Check3"}]
       37 GETUPVAL                         R15 0
       38 GETTABLEKS                       R15 R15 K3 ["createElement"]
       40 GETUPVAL                         R16 2
       41 DUPTABLE                         R17 K21 [{["LayoutOrder"] = 1, ["isChecked"], ["isIndeterminate"], ["isDisabled"], ["onActivated"], ["size"], ["label"] = "", ["placement"]}]
       42 SETTABLEKS                       R8 R17 K14 ["isChecked"]
       44 SETTABLEKS                       R9 R17 K15 ["isIndeterminate"]
       46 GETTABLEKS                       R18 R1 K16 ["isDisabled"]
       48 SETTABLEKS                       R18 R17 K16 ["isDisabled"]
       50 NEWCLOSURE                       R18 P0
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R7
       54 SETTABLEKS                       R18 R17 K17 ["onActivated"]
       56 GETTABLEKS                       R18 R1 K18 ["size"]
       58 SETTABLEKS                       R18 R17 K18 ["size"]
       60 GETTABLEKS                       R18 R1 K20 ["placement"]
       62 SETTABLEKS                       R18 R17 K20 ["placement"]
       64 CALL                             R15 2 1
       65 SETTABLEKS                       R15 R14 K7 ["Aggregation"]
       67 GETUPVAL                         R15 0
       68 GETTABLEKS                       R15 R15 K3 ["createElement"]
       70 GETUPVAL                         R16 2
       71 DUPTABLE                         R17 K23 [{["LayoutOrder"] = 2, ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["label"], ["placement"]}]
       72 SETTABLEKS                       R2 R17 K14 ["isChecked"]
       74 GETTABLEKS                       R18 R1 K16 ["isDisabled"]
       76 SETTABLEKS                       R18 R17 K16 ["isDisabled"]
       78 NEWCLOSURE                       R18 P1
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R18 R17 K17 ["onActivated"]
       82 GETTABLEKS                       R18 R1 K18 ["size"]
       84 SETTABLEKS                       R18 R17 K18 ["size"]
       86 MOVE                             R20 R10
       87 LOADK                            R21 K25 [" 1"]
       88 CONCAT                           R19 R20 R21
       89 ORK                              R18 R19 K24 ["Item 1"]
       90 SETTABLEKS                       R18 R17 K2 ["label"]
       92 GETTABLEKS                       R18 R1 K20 ["placement"]
       94 SETTABLEKS                       R18 R17 K20 ["placement"]
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K8 ["Check1"]
       99 GETUPVAL                         R15 0
      100 GETTABLEKS                       R15 R15 K3 ["createElement"]
      102 GETUPVAL                         R16 2
      103 DUPTABLE                         R17 K27 [{["LayoutOrder"] = 3, ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["label"], ["placement"]}]
      104 SETTABLEKS                       R4 R17 K14 ["isChecked"]
      106 GETTABLEKS                       R18 R1 K16 ["isDisabled"]
      108 SETTABLEKS                       R18 R17 K16 ["isDisabled"]
      110 NEWCLOSURE                       R18 P2
      111 CAPTURE                          VAL R5
      112 SETTABLEKS                       R18 R17 K17 ["onActivated"]
      114 GETTABLEKS                       R18 R1 K18 ["size"]
      116 SETTABLEKS                       R18 R17 K18 ["size"]
      118 MOVE                             R20 R10
      119 LOADK                            R21 K29 [" 2"]
      120 CONCAT                           R19 R20 R21
      121 ORK                              R18 R19 K28 ["Item 2"]
      122 SETTABLEKS                       R18 R17 K2 ["label"]
      124 GETTABLEKS                       R18 R1 K20 ["placement"]
      126 SETTABLEKS                       R18 R17 K20 ["placement"]
      128 CALL                             R15 2 1
      129 SETTABLEKS                       R15 R14 K9 ["Check2"]
      131 GETUPVAL                         R15 0
      132 GETTABLEKS                       R15 R15 K3 ["createElement"]
      134 GETUPVAL                         R16 2
      135 DUPTABLE                         R17 K31 [{["LayoutOrder"] = 4, ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["label"], ["placement"]}]
      136 SETTABLEKS                       R6 R17 K14 ["isChecked"]
      138 GETTABLEKS                       R18 R1 K16 ["isDisabled"]
      140 SETTABLEKS                       R18 R17 K16 ["isDisabled"]
      142 NEWCLOSURE                       R18 P3
      143 CAPTURE                          VAL R7
      144 SETTABLEKS                       R18 R17 K17 ["onActivated"]
      146 GETTABLEKS                       R18 R1 K18 ["size"]
      148 SETTABLEKS                       R18 R17 K18 ["size"]
      150 MOVE                             R20 R10
      151 LOADK                            R21 K33 [" 3"]
      152 CONCAT                           R19 R20 R21
      153 ORK                              R18 R19 K32 ["Item 3"]
      154 SETTABLEKS                       R18 R17 K2 ["label"]
      156 GETTABLEKS                       R18 R1 K20 ["placement"]
      158 SETTABLEKS                       R18 R17 K20 ["placement"]
      160 CALL                             R15 2 1
      161 SETTABLEKS                       R15 R14 K10 ["Check3"]
      163 CALL                             R11 3 -1
      164 RETURN                           R11 -1

PROTO_13:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["isChecked: "]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "col auto-xy size-3000-0"}]
        7 NEWTABLE                         R5 0 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K1 ["createElement"]
       12 GETUPVAL                         R7 2
       13 DUPTABLE                         R8 K11 [{"isDisabled", "isIndeterminate", "onActivated", "size", "label", "placement"}]
       14 GETTABLEKS                       R9 R1 K5 ["isDisabled"]
       16 SETTABLEKS                       R9 R8 K5 ["isDisabled"]
       18 GETTABLEKS                       R9 R1 K6 ["isIndeterminate"]
       20 SETTABLEKS                       R9 R8 K6 ["isIndeterminate"]
       22 DUPCLOSURE                       R9 K12 [PROTO_13]
       23 SETTABLEKS                       R9 R8 K7 ["onActivated"]
       25 GETTABLEKS                       R9 R1 K8 ["size"]
       27 SETTABLEKS                       R9 R8 K8 ["size"]
       29 GETTABLEKS                       R10 R1 K9 ["label"]
       31 ORK                              R9 R10 K13 [""]
       32 SETTABLEKS                       R9 R8 K9 ["label"]
       34 GETTABLEKS                       R9 R1 K10 ["placement"]
       36 SETTABLEKS                       R9 R8 K10 ["placement"]
       38 CALL                             R6 2 -1
       39 SETLIST                          R5 R6 -1 [1]
       41 CALL                             R2 3 -1
       42 RETURN                           R2 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Checkbox"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Providers"]
       44 GETTABLEKS                       R8 R8 K14 ["Style"]
       46 GETTABLEKS                       R8 R8 K15 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Enums"]
       53 GETTABLEKS                       R9 R9 K17 ["InputPlacement"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R10 K18 ["InputSize"]
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
       83 DUPTABLE                         R14 K27 [{["summary"] = "Checkbox component", ["stories"], ["controls"]}]
       84 NEWTABLE                         R15 0 4
       86 DUPTABLE                         R16 K31 [{["name"] = "Basic", ["story"]}]
       87 SETTABLEKS                       R10 R16 K30 ["story"]
       89 DUPTABLE                         R17 K34 [{["name"] = "Custom Selection", ["summary"] = "Select card container instead of checkbox", ["story"]}]
       90 SETTABLEKS                       R11 R17 K30 ["story"]
       92 DUPTABLE                         R18 K37 [{["name"] = "Indeterminate", ["summary"] = "A checkbox with an indeterminate state. Useful for aggregating other checkboxes", ["story"]}]
       93 SETTABLEKS                       R12 R18 K30 ["story"]
       95 DUPTABLE                         R19 K40 [{["name"] = "Uncontrolled", ["summary"] = "State is controlled by the checkbox itself", ["story"]}]
       96 SETTABLEKS                       R13 R19 K30 ["story"]
       98 SETLIST                          R15 R16 4 [1]
      100 SETTABLEKS                       R15 R14 K25 ["stories"]
      102 DUPTABLE                         R15 K46 [{["isDisabled"] = False, ["label"] = "Label", ["placement"]}]
      103 GETTABLEKS                       R16 R2 K47 ["values"]
      105 MOVE                             R17 R8
      106 CALL                             R16 1 1
      107 SETTABLEKS                       R16 R15 K45 ["placement"]
      109 SETTABLEKS                       R15 R14 K26 ["controls"]
      111 RETURN                           R14 1
