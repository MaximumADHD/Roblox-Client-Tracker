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
       16 GETTABLEKS                       R6 R5 K5 ["Layout"]
       18 GETTABLEKS                       R6 R6 K6 ["Horizontal"]
       20 GETTABLEKS                       R7 R5 K7 ["Sizes"]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K8 ["createElement"]
       25 LOADK                            R9 K9 ["Frame"]
       26 DUPTABLE                         R10 K14 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
       27 GETIMPORT                        R11 K17 [UDim2.new]
       29 LOADN                            R12 1
       30 LOADN                            R13 0
       31 LOADN                            R14 0
       32 GETTABLEKS                       R15 R7 K18 ["ShortHeight"]
       34 CALL                             R11 4 1
       35 SETTABLEKS                       R11 R10 K10 ["Size"]
       37 GETUPVAL                         R11 2
       38 GETTABLEKS                       R11 R11 K19 ["ConfirmationButtons"]
       40 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       42 DUPTABLE                         R11 K23 [{"Layout", "Clear", "Save", "Send"}]
       43 GETUPVAL                         R12 1
       44 GETTABLEKS                       R12 R12 K8 ["createElement"]
       46 LOADK                            R13 K24 ["UIListLayout"]
       47 MOVE                             R14 R6
       48 CALL                             R12 2 1
       49 SETTABLEKS                       R12 R11 K5 ["Layout"]
       51 GETUPVAL                         R12 1
       52 GETTABLEKS                       R12 R12 K8 ["createElement"]
       54 GETUPVAL                         R13 3
       55 DUPTABLE                         R14 K27 [{["Size"], ["Text"] = "Clear", ["LayoutOrder"] = 1, ["OnClick"]}]
       56 GETIMPORT                        R15 K17 [UDim2.new]
       58 LOADN                            R16 0
       59 GETTABLEKS                       R17 R7 K28 ["ConfirmationButtonWidth"]
       61 LOADN                            R18 1
       62 LOADN                            R19 0
       63 CALL                             R15 4 1
       64 SETTABLEKS                       R15 R14 K10 ["Size"]
       66 SETTABLEKS                       R2 R14 K26 ["OnClick"]
       68 CALL                             R12 2 1
       69 SETTABLEKS                       R12 R11 K20 ["Clear"]
       71 GETUPVAL                         R12 1
       72 GETTABLEKS                       R12 R12 K8 ["createElement"]
       74 GETUPVAL                         R13 3
       75 DUPTABLE                         R14 K30 [{["Size"], ["Text"] = "Save", ["LayoutOrder"] = 2, ["OnClick"]}]
       76 GETIMPORT                        R15 K17 [UDim2.new]
       78 LOADN                            R16 0
       79 GETTABLEKS                       R17 R7 K28 ["ConfirmationButtonWidth"]
       81 LOADN                            R18 1
       82 LOADN                            R19 0
       83 CALL                             R15 4 1
       84 SETTABLEKS                       R15 R14 K10 ["Size"]
       86 SETTABLEKS                       R3 R14 K26 ["OnClick"]
       88 CALL                             R12 2 1
       89 SETTABLEKS                       R12 R11 K21 ["Save"]
       91 GETUPVAL                         R12 1
       92 GETTABLEKS                       R12 R12 K8 ["createElement"]
       94 GETUPVAL                         R13 3
       95 DUPTABLE                         R14 K32 [{["Size"], ["Text"] = "Send", ["LayoutOrder"] = 3, ["OnClick"]}]
       96 GETIMPORT                        R15 K17 [UDim2.new]
       98 LOADN                            R16 0
       99 GETTABLEKS                       R17 R7 K28 ["ConfirmationButtonWidth"]
      101 LOADN                            R18 1
      102 LOADN                            R19 0
      103 CALL                             R15 4 1
      104 SETTABLEKS                       R15 R14 K10 ["Size"]
      106 NEWCLOSURE                       R15 P0
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R15 R14 K26 ["OnClick"]
      110 CALL                             R12 2 1
      111 SETTABLEKS                       R12 R11 K22 ["Send"]
      113 CALL                             R8 3 -1
      114 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K11 ["Util"]
       33 GETTABLEKS                       R6 R6 K12 ["Constants"]
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
