PROTO_0:
        0 GETIMPORT                        R0 K1 [warn]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnClearClicked"]
        4 JUMPIF                           R2 ; [+1]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R1 K2 ["OnSaveClicked"]
        8 JUMPIF                           R3 ; [+1]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R1 K3 ["OnSendClicked"]
       12 JUMPIF                           R4 ; [+1]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       16 GETTABLEKS                       R7 R5 K5 ["Layout"]
       18 GETTABLEKS                       R6 R7 K6 ["Horizontal"]
       20 GETTABLEKS                       R7 R5 K7 ["Sizes"]
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R8 R9 K8 ["createElement"]
       25 LOADK                            R9 K9 ["Frame"]
       26 DUPTABLE                         R10 K13 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
       27 GETIMPORT                        R11 K16 [UDim2.new]
       29 LOADN                            R12 1
       30 LOADN                            R13 0
       31 LOADN                            R14 0
       32 GETTABLEKS                       R15 R7 K17 ["ShortHeight"]
       34 CALL                             R11 4 1
       35 SETTABLEKS                       R11 R10 K10 ["Size"]
       37 LOADN                            R11 1
       38 SETTABLEKS                       R11 R10 K11 ["BackgroundTransparency"]
       40 GETUPVAL                         R12 2
       41 GETTABLEKS                       R11 R12 K18 ["ConfirmationButtons"]
       43 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       45 DUPTABLE                         R11 K22 [{"Layout", "Clear", "Save", "Send"}]
       46 GETUPVAL                         R13 1
       47 GETTABLEKS                       R12 R13 K8 ["createElement"]
       49 LOADK                            R13 K23 ["UIListLayout"]
       50 MOVE                             R14 R6
       51 CALL                             R12 2 1
       52 SETTABLEKS                       R12 R11 K5 ["Layout"]
       54 GETUPVAL                         R13 1
       55 GETTABLEKS                       R12 R13 K8 ["createElement"]
       57 GETUPVAL                         R13 3
       58 DUPTABLE                         R14 K26 [{"Size", "Text", "LayoutOrder", "OnClick"}]
       59 GETIMPORT                        R15 K16 [UDim2.new]
       61 LOADN                            R16 0
       62 GETTABLEKS                       R17 R7 K27 ["ConfirmationButtonWidth"]
       64 LOADN                            R18 1
       65 LOADN                            R19 0
       66 CALL                             R15 4 1
       67 SETTABLEKS                       R15 R14 K10 ["Size"]
       69 LOADK                            R15 K19 ["Clear"]
       70 SETTABLEKS                       R15 R14 K24 ["Text"]
       72 LOADN                            R15 1
       73 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
       75 SETTABLEKS                       R2 R14 K25 ["OnClick"]
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K19 ["Clear"]
       80 GETUPVAL                         R13 1
       81 GETTABLEKS                       R12 R13 K8 ["createElement"]
       83 GETUPVAL                         R13 3
       84 DUPTABLE                         R14 K26 [{"Size", "Text", "LayoutOrder", "OnClick"}]
       85 GETIMPORT                        R15 K16 [UDim2.new]
       87 LOADN                            R16 0
       88 GETTABLEKS                       R17 R7 K27 ["ConfirmationButtonWidth"]
       90 LOADN                            R18 1
       91 LOADN                            R19 0
       92 CALL                             R15 4 1
       93 SETTABLEKS                       R15 R14 K10 ["Size"]
       95 LOADK                            R15 K20 ["Save"]
       96 SETTABLEKS                       R15 R14 K24 ["Text"]
       98 LOADN                            R15 2
       99 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      101 SETTABLEKS                       R3 R14 K25 ["OnClick"]
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K20 ["Save"]
      106 GETUPVAL                         R13 1
      107 GETTABLEKS                       R12 R13 K8 ["createElement"]
      109 GETUPVAL                         R13 3
      110 DUPTABLE                         R14 K26 [{"Size", "Text", "LayoutOrder", "OnClick"}]
      111 GETIMPORT                        R15 K16 [UDim2.new]
      113 LOADN                            R16 0
      114 GETTABLEKS                       R17 R7 K27 ["ConfirmationButtonWidth"]
      116 LOADN                            R18 1
      117 LOADN                            R19 0
      118 CALL                             R15 4 1
      119 SETTABLEKS                       R15 R14 K10 ["Size"]
      121 LOADK                            R15 K21 ["Send"]
      122 SETTABLEKS                       R15 R14 K24 ["Text"]
      124 LOADN                            R15 3
      125 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      127 NEWCLOSURE                       R15 P0
      128 CAPTURE                          VAL R4
      129 SETTABLEKS                       R15 R14 K25 ["OnClick"]
      131 CALL                             R12 2 1
      132 SETTABLEKS                       R12 R11 K21 ["Send"]
      134 CALL                             R8 3 -1
      135 RETURN                           R8 -1

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
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R8 R0 K10 ["Src"]
       31 GETTABLEKS                       R7 R8 K11 ["Util"]
       33 GETTABLEKS                       R6 R7 K12 ["Constants"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K13 ["INPUT_PANE_LAYOUT"]
       38 GETTABLEKS                       R7 R5 K14 ["UNIMPLEMENTED_WARNING"]
       40 GETTABLEKS                       R8 R2 K15 ["UI"]
       42 GETTABLEKS                       R9 R8 K16 ["Button"]
       44 GETTABLEKS                       R10 R1 K17 ["PureComponent"]
       46 LOADK                            R12 K18 ["ButtonArray"]
       47 NAMECALL                         R10 R10 K19 ["extend"]
       49 CALL                             R10 2 1
       50 DUPCLOSURE                       R11 K20 [PROTO_0]
       51 CAPTURE                          VAL R7
       52 DUPCLOSURE                       R12 K21 [PROTO_2]
       53 CAPTURE                          VAL R11
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R9
       57 SETTABLEKS                       R12 R10 K22 ["render"]
       59 MOVE                             R12 R4
       60 DUPTABLE                         R13 K24 [{"Stylizer"}]
       61 GETTABLEKS                       R14 R3 K23 ["Stylizer"]
       63 SETTABLEKS                       R14 R13 K23 ["Stylizer"]
       65 CALL                             R12 1 1
       66 MOVE                             R13 R10
       67 CALL                             R12 1 1
       68 MOVE                             R10 R12
       69 RETURN                           R10 1
