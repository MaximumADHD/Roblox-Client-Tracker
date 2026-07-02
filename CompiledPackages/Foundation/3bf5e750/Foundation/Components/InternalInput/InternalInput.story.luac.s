PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["useState"]
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R4
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R6 R6 K2 ["createElement"]
       14 GETUPVAL                         R7 2
       15 DUPTABLE                         R8 K5 [{["tag"] = "col gap-large auto-xy padding-xlarge size-3000"}]
       16 DUPTABLE                         R9 K7 [{"InternalInput"}]
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R10 R10 K2 ["createElement"]
       20 GETUPVAL                         R11 3
       21 DUPTABLE                         R12 K16 [{["isChecked"], ["isDisabled"], ["size"], ["onActivated"], ["label"], ["customVariantProps"], ["LayoutOrder"] = 1}]
       22 SETTABLEKS                       R3 R12 K8 ["isChecked"]
       24 GETTABLEKS                       R13 R1 K9 ["isDisabled"]
       26 SETTABLEKS                       R13 R12 K9 ["isDisabled"]
       28 GETTABLEKS                       R13 R1 K10 ["size"]
       30 SETTABLEKS                       R13 R12 K10 ["size"]
       32 SETTABLEKS                       R5 R12 K11 ["onActivated"]
       34 DUPTABLE                         R13 K19 [{"text", "position"}]
       35 GETTABLEKS                       R14 R1 K20 ["labelText"]
       37 SETTABLEKS                       R14 R13 K17 ["text"]
       39 GETTABLEKS                       R14 R1 K21 ["labelPosition"]
       41 SETTABLEKS                       R14 R13 K18 ["position"]
       43 SETTABLEKS                       R13 R12 K12 ["label"]
       45 GETUPVAL                         R14 4
       46 GETTABLEKS                       R14 R14 K22 ["FoundationToggleVisualUpdate"]
       48 JUMPIFNOT                        R14 ; [+28]
       49 DUPTABLE                         R13 K26 [{["tag"] = "row gap-small align-x-center align-y-center", ["size"], ["cursorRadius"], ["colors"]}]
       50 GETIMPORT                        R14 K29 [UDim2.fromOffset]
       52 LOADN                            R15 200
       53 LOADN                            R16 50
       54 CALL                             R14 2 1
       55 SETTABLEKS                       R14 R13 K10 ["size"]
       57 GETIMPORT                        R14 K32 [UDim.new]
       59 LOADN                            R15 0
       60 LOADN                            R16 8
       61 CALL                             R14 2 1
       62 SETTABLEKS                       R14 R13 K24 ["cursorRadius"]
       64 DUPTABLE                         R14 K34 [{"checkedStyle"}]
       65 GETTABLEKS                       R16 R2 K35 ["Color"]
       67 GETTABLEKS                       R16 R16 K36 ["System"]
       69 GETTABLEKS                       R17 R1 K33 ["checkedStyle"]
       71 GETTABLE                         R15 R16 R17
       72 SETTABLEKS                       R15 R14 K33 ["checkedStyle"]
       74 SETTABLEKS                       R14 R13 K25 ["colors"]
       76 JUMP                             ; [+24]
       77 DUPTABLE                         R13 K37 [{["tag"] = "row gap-small align-x-center align-y-center", ["size"], ["cursorRadius"], ["checkedStyle"]}]
       78 GETIMPORT                        R14 K29 [UDim2.fromOffset]
       80 LOADN                            R15 200
       81 LOADN                            R16 50
       82 CALL                             R14 2 1
       83 SETTABLEKS                       R14 R13 K10 ["size"]
       85 GETIMPORT                        R14 K32 [UDim.new]
       87 LOADN                            R15 0
       88 LOADN                            R16 8
       89 CALL                             R14 2 1
       90 SETTABLEKS                       R14 R13 K24 ["cursorRadius"]
       92 GETTABLEKS                       R15 R2 K35 ["Color"]
       94 GETTABLEKS                       R15 R15 K36 ["System"]
       96 GETTABLEKS                       R16 R1 K33 ["checkedStyle"]
       98 GETTABLE                         R14 R15 R16
       99 SETTABLEKS                       R14 R13 K33 ["checkedStyle"]
      101 SETTABLEKS                       R13 R12 K13 ["customVariantProps"]
      103 DUPTABLE                         R13 K39 [{"Content"}]
      104 JUMPIFNOT                        R3 ; [+7]
      105 GETUPVAL                         R14 1
      106 GETTABLEKS                       R14 R14 K2 ["createElement"]
      108 GETUPVAL                         R15 5
      109 DUPTABLE                         R16 K43 [{["tag"] = "content-inverse-emphasis", ["Text"] = "Checked!"}]
      110 CALL                             R14 2 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R14
      113 SETTABLEKS                       R14 R13 K38 ["Content"]
      115 CALL                             R10 3 1
      116 SETTABLEKS                       R10 R9 K6 ["InternalInput"]
      118 CALL                             R6 3 -1
      119 RETURN                           R6 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Providers"]
       44 GETTABLEKS                       R8 R8 K15 ["Style"]
       46 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K17 ["Enums"]
       53 GETTABLEKS                       R9 R9 K18 ["InputSize"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Components"]
       60 GETTABLEKS                       R10 R10 K19 ["InternalInput"]
       62 CALL                             R9 1 1
       63 DUPCLOSURE                       R10 K20 [PROTO_1]
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 DUPTABLE                         R11 K25 [{["summary"] = "Internal Input Component", ["story"], ["controls"]}]
       71 SETTABLEKS                       R10 R11 K23 ["story"]
       73 DUPTABLE                         R12 K33 [{["isDisabled"] = False, ["size"], ["labelText"] = "Input Label", ["labelPosition"], ["checkedStyle"]}]
       74 GETTABLEKS                       R13 R2 K34 ["values"]
       76 MOVE                             R14 R8
       77 CALL                             R13 1 1
       78 SETTABLEKS                       R13 R12 K28 ["size"]
       80 NEWTABLE                         R13 0 2
       82 GETIMPORT                        R14 K38 [Enum.HorizontalAlignment.Right]
       84 GETIMPORT                        R15 K40 [Enum.HorizontalAlignment.Left]
       86 SETLIST                          R13 R14 2 [1]
       88 SETTABLEKS                       R13 R12 K31 ["labelPosition"]
       90 NEWTABLE                         R13 0 3
       92 LOADK                            R14 K41 ["Success"]
       93 LOADK                            R15 K42 ["Alert"]
       94 LOADK                            R16 K43 ["Default"]
       95 SETLIST                          R13 R14 3 [1]
       97 SETTABLEKS                       R13 R12 K32 ["checkedStyle"]
       99 SETTABLEKS                       R12 R11 K24 ["controls"]
      101 RETURN                           R11 1
