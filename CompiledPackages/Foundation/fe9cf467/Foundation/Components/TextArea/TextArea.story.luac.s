PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["focus"]
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["useState"]
        7 LOADK                            R4 K2 [""]
        8 CALL                             R3 1 2
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["useRef"]
       12 LOADNIL                          R6
       13 CALL                             R5 1 1
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R4
       19 CALL                             R6 1 1
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       23 NEWCLOSURE                       R8 P1
       24 CAPTURE                          VAL R5
       25 NEWTABLE                         R9 0 0
       27 CALL                             R7 2 1
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R8 R9 K5 ["createElement"]
       31 GETUPVAL                         R9 2
       32 DUPTABLE                         R10 K7 [{"tag"}]
       33 LOADK                            R11 K8 ["col gap-large auto-xy padding-xlarge"]
       34 SETTABLEKS                       R11 R10 K6 ["tag"]
       36 DUPTABLE                         R11 K12 [{"TextArea", "Output", "FocusButton"}]
       37 GETUPVAL                         R13 1
       38 GETTABLEKS                       R12 R13 K5 ["createElement"]
       40 GETUPVAL                         R13 3
       41 DUPTABLE                         R14 K27 [{"LayoutOrder", "hasError", "isDisabled", "isRequired", "resizable", "onChanged", "label", "hint", "size", "width", "numLines", "placeholder", "text", "textBoxRef"}]
       42 LOADN                            R15 1
       43 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
       45 GETTABLEKS                       R15 R1 K14 ["hasError"]
       47 SETTABLEKS                       R15 R14 K14 ["hasError"]
       49 GETTABLEKS                       R15 R1 K15 ["isDisabled"]
       51 SETTABLEKS                       R15 R14 K15 ["isDisabled"]
       53 GETTABLEKS                       R15 R1 K16 ["isRequired"]
       55 SETTABLEKS                       R15 R14 K16 ["isRequired"]
       57 GETTABLEKS                       R15 R1 K17 ["resizable"]
       59 SETTABLEKS                       R15 R14 K17 ["resizable"]
       61 SETTABLEKS                       R6 R14 K18 ["onChanged"]
       63 GETTABLEKS                       R15 R1 K19 ["label"]
       65 SETTABLEKS                       R15 R14 K19 ["label"]
       67 GETTABLEKS                       R15 R1 K20 ["hint"]
       69 SETTABLEKS                       R15 R14 K20 ["hint"]
       71 GETTABLEKS                       R15 R1 K21 ["size"]
       73 SETTABLEKS                       R15 R14 K21 ["size"]
       75 GETIMPORT                        R15 K30 [UDim.new]
       77 LOADN                            R16 0
       78 GETTABLEKS                       R17 R1 K22 ["width"]
       80 CALL                             R15 2 1
       81 SETTABLEKS                       R15 R14 K22 ["width"]
       83 GETTABLEKS                       R15 R1 K23 ["numLines"]
       85 SETTABLEKS                       R15 R14 K23 ["numLines"]
       87 GETTABLEKS                       R15 R1 K24 ["placeholder"]
       89 SETTABLEKS                       R15 R14 K24 ["placeholder"]
       91 SETTABLEKS                       R3 R14 K25 ["text"]
       93 SETTABLEKS                       R5 R14 K26 ["textBoxRef"]
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K9 ["TextArea"]
       98 GETUPVAL                         R13 1
       99 GETTABLEKS                       R12 R13 K5 ["createElement"]
      101 GETUPVAL                         R13 4
      102 DUPTABLE                         R14 K33 [{"LayoutOrder", "Text", "textStyle", "tag"}]
      103 LOADN                            R15 2
      104 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      106 SETTABLEKS                       R3 R14 K31 ["Text"]
      108 GETTABLEKS                       R17 R2 K34 ["Color"]
      110 GETTABLEKS                       R16 R17 K35 ["System"]
      112 GETTABLEKS                       R15 R16 K36 ["Alert"]
      114 SETTABLEKS                       R15 R14 K32 ["textStyle"]
      116 LOADK                            R15 K37 ["auto-y size-full-0 text-wrap text-align-x-left"]
      117 SETTABLEKS                       R15 R14 K6 ["tag"]
      119 CALL                             R12 2 1
      120 SETTABLEKS                       R12 R11 K10 ["Output"]
      122 GETUPVAL                         R13 1
      123 GETTABLEKS                       R12 R13 K5 ["createElement"]
      125 GETUPVAL                         R13 5
      126 DUPTABLE                         R14 K40 [{"LayoutOrder", "text", "onActivated", "variant"}]
      127 LOADN                            R15 3
      128 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      130 LOADK                            R15 K41 ["Focus TextArea"]
      131 SETTABLEKS                       R15 R14 K25 ["text"]
      133 SETTABLEKS                       R7 R14 K38 ["onActivated"]
      135 GETUPVAL                         R16 6
      136 GETTABLEKS                       R15 R16 K42 ["Standard"]
      138 SETTABLEKS                       R15 R14 K39 ["variant"]
      140 CALL                             R12 2 1
      141 SETTABLEKS                       R12 R11 K11 ["FocusButton"]
      143 CALL                             R8 3 -1
      144 RETURN                           R8 -1

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
       44 GETTABLEKS                       R9 R0 K9 ["Components"]
       46 GETTABLEKS                       R8 R9 K15 ["Button"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K16 ["Enums"]
       53 GETTABLEKS                       R9 R10 K17 ["ButtonVariant"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Enums"]
       60 GETTABLEKS                       R10 R11 K18 ["InputSize"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K9 ["Components"]
       67 GETTABLEKS                       R11 R12 K19 ["TextArea"]
       69 CALL                             R10 1 1
       70 DUPCLOSURE                       R11 K20 [PROTO_2]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R8
       78 DUPTABLE                         R12 K24 [{"summary", "story", "controls"}]
       79 LOADK                            R13 K19 ["TextArea"]
       80 SETTABLEKS                       R13 R12 K21 ["summary"]
       82 SETTABLEKS                       R11 R12 K22 ["story"]
       84 DUPTABLE                         R13 K34 [{"hasError", "isDisabled", "numLines", "width", "size", "label", "hint", "placeholder", "isRequired"}]
       85 LOADB                            R14 0
       86 SETTABLEKS                       R14 R13 K25 ["hasError"]
       88 LOADB                            R14 0
       89 SETTABLEKS                       R14 R13 K26 ["isDisabled"]
       91 LOADN                            R14 4
       92 SETTABLEKS                       R14 R13 K27 ["numLines"]
       94 LOADN                            R14 144
       95 SETTABLEKS                       R14 R13 K28 ["width"]
       97 GETTABLEKS                       R14 R2 K35 ["values"]
       99 MOVE                             R15 R9
      100 CALL                             R14 1 1
      101 SETTABLEKS                       R14 R13 K29 ["size"]
      103 LOADK                            R14 K36 ["Biography"]
      104 SETTABLEKS                       R14 R13 K30 ["label"]
      106 LOADK                            R14 K37 ["1000 characters maximum"]
      107 SETTABLEKS                       R14 R13 K31 ["hint"]
      109 LOADK                            R14 K38 ["Tell us your life story!"]
      110 SETTABLEKS                       R14 R13 K32 ["placeholder"]
      112 NEWTABLE                         R14 0 3
      114 GETTABLEKS                       R15 R3 K39 ["None"]
      116 LOADB                            R16 0
      117 LOADB                            R17 1
      118 SETLIST                          R14 R15 3 [1]
      120 SETTABLEKS                       R14 R13 K33 ["isRequired"]
      122 SETTABLEKS                       R13 R12 K23 ["controls"]
      124 RETURN                           R12 1
