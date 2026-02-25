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
       16 LOADK                            R9 K5 ["col gap-large auto-xy padding-xlarge size-3000"]
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
       48 DUPTABLE                         R13 K23 [{"tag", "size", "cursorRadius", "checkedStyle"}]
       49 LOADK                            R14 K24 ["row gap-small align-x-center align-y-center"]
       50 SETTABLEKS                       R14 R13 K3 ["tag"]
       52 GETIMPORT                        R14 K27 [UDim2.new]
       54 LOADN                            R15 0
       55 LOADN                            R16 200
       56 LOADN                            R17 0
       57 LOADN                            R18 50
       58 CALL                             R14 4 1
       59 SETTABLEKS                       R14 R13 K10 ["size"]
       61 GETIMPORT                        R14 K29 [UDim.new]
       63 LOADN                            R15 0
       64 LOADN                            R16 8
       65 CALL                             R14 2 1
       66 SETTABLEKS                       R14 R13 K21 ["cursorRadius"]
       68 GETTABLEKS                       R16 R2 K30 ["Color"]
       70 GETTABLEKS                       R15 R16 K31 ["System"]
       72 GETTABLEKS                       R16 R1 K22 ["checkedStyle"]
       74 GETTABLE                         R14 R15 R16
       75 SETTABLEKS                       R14 R13 K22 ["checkedStyle"]
       77 SETTABLEKS                       R13 R12 K13 ["customVariantProps"]
       79 LOADN                            R13 1
       80 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       82 DUPTABLE                         R13 K33 [{"Content"}]
       83 JUMPIFNOT                        R3 ; [+13]
       84 GETUPVAL                         R15 1
       85 GETTABLEKS                       R14 R15 K2 ["createElement"]
       87 GETUPVAL                         R15 4
       88 DUPTABLE                         R16 K35 [{"tag", "Text"}]
       89 LOADK                            R17 K36 ["content-inverse-emphasis"]
       90 SETTABLEKS                       R17 R16 K3 ["tag"]
       92 LOADK                            R17 K37 ["Checked!"]
       93 SETTABLEKS                       R17 R16 K34 ["Text"]
       95 CALL                             R14 2 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R14
       98 SETTABLEKS                       R14 R13 K32 ["Content"]
      100 CALL                             R10 3 1
      101 SETTABLEKS                       R10 R9 K6 ["InternalInput"]
      103 CALL                             R6 3 -1
      104 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Text"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R0 K12 ["Providers"]
       37 GETTABLEKS                       R8 R9 K13 ["Style"]
       39 GETTABLEKS                       R7 R8 K14 ["useTokens"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K15 ["Enums"]
       46 GETTABLEKS                       R8 R9 K16 ["InputSize"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K9 ["Components"]
       53 GETTABLEKS                       R9 R10 K17 ["InternalInput"]
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K18 [PROTO_1]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R4
       62 DUPTABLE                         R10 K22 [{"summary", "story", "controls"}]
       63 LOADK                            R11 K23 ["Internal Input Component"]
       64 SETTABLEKS                       R11 R10 K19 ["summary"]
       66 SETTABLEKS                       R9 R10 K20 ["story"]
       68 DUPTABLE                         R11 K29 [{"isDisabled", "size", "labelText", "labelPosition", "checkedStyle"}]
       69 LOADB                            R12 0
       70 SETTABLEKS                       R12 R11 K24 ["isDisabled"]
       72 GETTABLEKS                       R12 R3 K30 ["values"]
       74 MOVE                             R13 R7
       75 CALL                             R12 1 1
       76 SETTABLEKS                       R12 R11 K25 ["size"]
       78 LOADK                            R12 K31 ["Input Label"]
       79 SETTABLEKS                       R12 R11 K26 ["labelText"]
       81 NEWTABLE                         R12 0 2
       83 GETIMPORT                        R13 K35 [Enum.HorizontalAlignment.Right]
       85 GETIMPORT                        R14 K37 [Enum.HorizontalAlignment.Left]
       87 SETLIST                          R12 R13 2 [1]
       89 SETTABLEKS                       R12 R11 K27 ["labelPosition"]
       91 NEWTABLE                         R12 0 3
       93 LOADK                            R13 K38 ["Success"]
       94 LOADK                            R14 K39 ["Alert"]
       95 LOADK                            R15 K40 ["Default"]
       96 SETLIST                          R12 R13 3 [1]
       98 SETTABLEKS                       R12 R11 K28 ["checkedStyle"]
      100 SETTABLEKS                       R11 R10 K21 ["controls"]
      102 RETURN                           R10 1
