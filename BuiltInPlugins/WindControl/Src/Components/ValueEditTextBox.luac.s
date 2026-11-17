PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["enteredText"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["enteredText"]
        6 JUMPIFNOT                        R0 ; [+6]
        7 JUMPIFEQKS                       R2 K2 [""] ; [+5]
        9 GETTABLEKS                       R3 R1 K3 ["OnTextConfirmed"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 GETTABLEKS                       R3 R1 K4 ["OnEditCanceled"]
       15 CALL                             R3 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textBoxRef"]
        6 LOADK                            R1 K2 [""]
        7 SETTABLEKS                       R1 R0 K3 ["enteredText"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K4 ["onTextChanged"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K5 ["onFocusLost"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K14 [{["Size"], ["Style"] = "FilledRoundedBorder", ["LayoutOrder"], ["TextWrapped"] = True, ["ShouldFocus"] = True, ["TextXAlignment"], ["ForwardRef"], ["PlaceholderText"], ["OnTextChanged"], ["OnFocusLost"]}]
        7 GETTABLEKS                       R5 R1 K2 ["Size"]
        9 SETTABLEKS                       R5 R4 K2 ["Size"]
       11 GETTABLEKS                       R5 R1 K5 ["LayoutOrder"]
       13 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       15 GETIMPORT                        R5 K17 [Enum.TextXAlignment.Left]
       17 SETTABLEKS                       R5 R4 K9 ["TextXAlignment"]
       19 GETTABLEKS                       R5 R0 K18 ["textBoxRef"]
       21 SETTABLEKS                       R5 R4 K10 ["ForwardRef"]
       23 GETTABLEKS                       R5 R1 K19 ["Text"]
       25 SETTABLEKS                       R5 R4 K11 ["PlaceholderText"]
       27 GETTABLEKS                       R5 R0 K20 ["onTextChanged"]
       29 SETTABLEKS                       R5 R4 K12 ["OnTextChanged"]
       31 GETTABLEKS                       R5 R0 K21 ["onFocusLost"]
       33 SETTABLEKS                       R5 R4 K13 ["OnFocusLost"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["textBoxRef"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 NAMECALL                         R1 R1 K2 ["CaptureFocus"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["DEPRECATED_TextInput"]
       27 GETTABLEKS                       R5 R1 K10 ["Component"]
       29 LOADK                            R7 K11 ["ValueEditTextBox"]
       30 NAMECALL                         R5 R5 K12 ["extend"]
       32 CALL                             R5 2 1
       33 DUPCLOSURE                       R6 K13 [PROTO_2]
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R6 R5 K14 ["init"]
       37 DUPCLOSURE                       R6 K15 [PROTO_3]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R6 R5 K16 ["render"]
       42 DUPCLOSURE                       R6 K17 [PROTO_4]
       43 SETTABLEKS                       R6 R5 K18 ["didMount"]
       45 RETURN                           R5 1
