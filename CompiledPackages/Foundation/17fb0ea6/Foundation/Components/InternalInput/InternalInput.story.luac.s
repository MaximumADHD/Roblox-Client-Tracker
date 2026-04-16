PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["useState"]
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R4
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K2 ["createElement"]
       14 GETUPVAL                         R7 2
       15 DUPTABLE                         R8 K4 [{"tag"}]
       16 LOADK                            R9 K5 ["col gap-large size-3000 auto-xy padding-xlarge"]
       17 SETTABLEKS                       R9 R8 K3 ["tag"]
       19 DUPTABLE                         R9 K7 [{"InternalInput"}]
       20 GETUPVAL                         R11 1
       21 GETTABLEKS                       R10 R11 K2 ["createElement"]
       23 GETUPVAL                         R11 3
       24 DUPTABLE                         R12 K15 [{"isChecked", "isDisabled", "size", "onActivated", "label", "customVariantProps", "LayoutOrder"}]
       25 SETTABLEKS                       R3 R12 K8 ["isChecked"]
       27 GETTABLEKS                       R13 R1 K9 ["isDisabled"]
       29 SETTABLEKS                       R13 R12 K9 ["isDisabled"]
       31 GETTABLEKS                       R13 R1 K10 ["size"]
       33 SETTABLEKS                       R13 R12 K10 ["size"]
       35 SETTABLEKS                       R5 R12 K11 ["onActivated"]
       37 DUPTABLE                         R13 K18 [{"text", "position"}]
       38 GETTABLEKS                       R14 R1 K19 ["labelText"]
       40 SETTABLEKS                       R14 R13 K16 ["text"]
       42 GETTABLEKS                       R14 R1 K20 ["labelPosition"]
       44 SETTABLEKS                       R14 R13 K17 ["position"]
       46 SETTABLEKS                       R13 R12 K12 ["label"]
       48 GETUPVAL                         R15 4
       49 GETTABLEKS                       R14 R15 K21 ["FoundationToggleVisualUpdate"]
       51 JUMPIFNOT                        R14 ; [+31]
       52 DUPTABLE                         R13 K24 [{"tag", "size", "cursorRadius", "colors"}]
       53 LOADK                            R14 K25 ["row align-x-center align-y-center gap-small"]
       54 SETTABLEKS                       R14 R13 K3 ["tag"]
       56 GETIMPORT                        R14 K28 [UDim2.fromOffset]
       58 LOADN                            R15 200
       59 LOADN                            R16 50
       60 CALL                             R14 2 1
       61 SETTABLEKS                       R14 R13 K10 ["size"]
       63 GETIMPORT                        R14 K31 [UDim.new]
       65 LOADN                            R15 0
       66 LOADN                            R16 8
       67 CALL                             R14 2 1
       68 SETTABLEKS                       R14 R13 K22 ["cursorRadius"]
       70 DUPTABLE                         R14 K33 [{"checkedStyle"}]
       71 GETTABLEKS                       R17 R2 K34 ["Color"]
       73 GETTABLEKS                       R16 R17 K35 ["System"]
       75 GETTABLEKS                       R17 R1 K32 ["checkedStyle"]
       77 GETTABLE                         R15 R16 R17
       78 SETTABLEKS                       R15 R14 K32 ["checkedStyle"]
       80 SETTABLEKS                       R14 R13 K23 ["colors"]
       82 JUMP                             ; [+27]
       83 DUPTABLE                         R13 K36 [{"tag", "size", "cursorRadius", "checkedStyle"}]
       84 LOADK                            R14 K25 ["row align-x-center align-y-center gap-small"]
       85 SETTABLEKS                       R14 R13 K3 ["tag"]
       87 GETIMPORT                        R14 K28 [UDim2.fromOffset]
       89 LOADN                            R15 200
       90 LOADN                            R16 50
       91 CALL                             R14 2 1
       92 SETTABLEKS                       R14 R13 K10 ["size"]
       94 GETIMPORT                        R14 K31 [UDim.new]
       96 LOADN                            R15 0
       97 LOADN                            R16 8
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K22 ["cursorRadius"]
      101 GETTABLEKS                       R16 R2 K34 ["Color"]
      103 GETTABLEKS                       R15 R16 K35 ["System"]
      105 GETTABLEKS                       R16 R1 K32 ["checkedStyle"]
      107 GETTABLE                         R14 R15 R16
      108 SETTABLEKS                       R14 R13 K32 ["checkedStyle"]
      110 SETTABLEKS                       R13 R12 K13 ["customVariantProps"]
      112 LOADN                            R13 1
      113 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
      115 DUPTABLE                         R13 K38 [{"Content"}]
      116 JUMPIFNOT                        R3 ; [+13]
      117 GETUPVAL                         R15 1
      118 GETTABLEKS                       R14 R15 K2 ["createElement"]
      120 GETUPVAL                         R15 5
      121 DUPTABLE                         R16 K40 [{"tag", "Text"}]
      122 LOADK                            R17 K41 ["content-inverse-emphasis"]
      123 SETTABLEKS                       R17 R16 K3 ["tag"]
      125 LOADK                            R17 K42 ["Checked!"]
      126 SETTABLEKS                       R17 R16 K39 ["Text"]
      128 CALL                             R14 2 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R14
      131 SETTABLEKS                       R14 R13 K37 ["Content"]
      133 CALL                             R10 3 1
      134 SETTABLEKS                       R10 R9 K6 ["InternalInput"]
      136 CALL                             R6 3 -1
      137 RETURN                           R6 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["Flags"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R10 R0 K14 ["Providers"]
       44 GETTABLEKS                       R9 R10 K15 ["Style"]
       46 GETTABLEKS                       R8 R9 K16 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K17 ["Enums"]
       53 GETTABLEKS                       R9 R10 K18 ["InputSize"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K11 ["Components"]
       60 GETTABLEKS                       R10 R11 K19 ["InternalInput"]
       62 CALL                             R9 1 1
       63 DUPCLOSURE                       R10 K20 [PROTO_1]
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 DUPTABLE                         R11 K24 [{"summary", "story", "controls"}]
       71 LOADK                            R12 K25 ["Internal Input Component"]
       72 SETTABLEKS                       R12 R11 K21 ["summary"]
       74 SETTABLEKS                       R10 R11 K22 ["story"]
       76 DUPTABLE                         R12 K31 [{"isDisabled", "size", "labelText", "labelPosition", "checkedStyle"}]
       77 LOADB                            R13 0
       78 SETTABLEKS                       R13 R12 K26 ["isDisabled"]
       80 GETTABLEKS                       R13 R2 K32 ["values"]
       82 MOVE                             R14 R8
       83 CALL                             R13 1 1
       84 SETTABLEKS                       R13 R12 K27 ["size"]
       86 LOADK                            R13 K33 ["Input Label"]
       87 SETTABLEKS                       R13 R12 K28 ["labelText"]
       89 NEWTABLE                         R13 0 2
       91 GETIMPORT                        R14 K37 [Enum.HorizontalAlignment.Right]
       93 GETIMPORT                        R15 K39 [Enum.HorizontalAlignment.Left]
       95 SETLIST                          R13 R14 2 [1]
       97 SETTABLEKS                       R13 R12 K29 ["labelPosition"]
       99 NEWTABLE                         R13 0 3
      101 LOADK                            R14 K40 ["Success"]
      102 LOADK                            R15 K41 ["Alert"]
      103 LOADK                            R16 K42 ["Default"]
      104 SETLIST                          R13 R14 3 [1]
      106 SETTABLEKS                       R13 R12 K30 ["checkedStyle"]
      108 SETTABLEKS                       R12 R11 K23 ["controls"]
      110 RETURN                           R11 1
