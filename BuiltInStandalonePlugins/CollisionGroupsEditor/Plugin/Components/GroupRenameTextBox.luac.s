PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["textBoxRef"]
        6 LOADK                            R1 K2 [""]
        7 SETTABLEKS                       R1 R0 K3 ["enteredText"]
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["Group"]
        4 GETTABLEKS                       R1 R2 K1 ["OnRenamed"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["text"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["Group"]
       14 GETTABLEKS                       R1 R2 K1 ["OnRenamed"]
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Group"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K15 [{"Size", "LayoutOrder", "BackgroundTransparency", "TextWrapped", "ShouldFocus", "TextXAlignment", "ForwardRef", "PlaceholderText", "OnTextChanged", "OnFocusLost"}]
       13 GETTABLEKS                       R8 R1 K5 ["Size"]
       15 SETTABLEKS                       R8 R7 K5 ["Size"]
       17 GETTABLEKS                       R8 R1 K6 ["LayoutOrder"]
       19 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       21 LOADN                            R8 1
       22 SETTABLEKS                       R8 R7 K7 ["BackgroundTransparency"]
       24 LOADB                            R8 1
       25 SETTABLEKS                       R8 R7 K8 ["TextWrapped"]
       27 LOADB                            R8 1
       28 SETTABLEKS                       R8 R7 K9 ["ShouldFocus"]
       30 GETIMPORT                        R8 K18 [Enum.TextXAlignment.Right]
       32 SETTABLEKS                       R8 R7 K10 ["TextXAlignment"]
       34 GETTABLEKS                       R8 R0 K19 ["textBoxRef"]
       36 SETTABLEKS                       R8 R7 K11 ["ForwardRef"]
       38 LOADK                            R10 K20 ["Info"]
       39 LOADK                            R11 K21 ["NewGroupName"]
       40 NAMECALL                         R8 R3 K22 ["getText"]
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K12 ["PlaceholderText"]
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R8 R7 K13 ["OnTextChanged"]
       49 NEWCLOSURE                       R8 P1
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R8 R7 K14 ["OnFocusLost"]
       54 CALL                             R5 2 -1
       55 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["textBoxRef"]
        2 GETTABLEKS                       R1 R2 K1 ["current"]
        4 NAMECALL                         R1 R1 K2 ["CaptureFocus"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

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
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["DEPRECATED_TextInput"]
       29 GETTABLEKS                       R6 R1 K11 ["Component"]
       31 LOADK                            R8 K12 ["GroupRenameTextBox"]
       32 NAMECALL                         R6 R6 K13 ["extend"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K14 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R7 R6 K15 ["init"]
       39 DUPCLOSURE                       R7 K16 [PROTO_3]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R5
       42 SETTABLEKS                       R7 R6 K17 ["render"]
       44 DUPCLOSURE                       R7 K18 [PROTO_4]
       45 SETTABLEKS                       R7 R6 K19 ["didMount"]
       47 GETTABLEKS                       R7 R3 K20 ["withContext"]
       49 DUPTABLE                         R8 K23 [{"Stylizer", "Localization"}]
       50 GETTABLEKS                       R9 R3 K21 ["Stylizer"]
       52 SETTABLEKS                       R9 R8 K21 ["Stylizer"]
       54 GETTABLEKS                       R9 R3 K22 ["Localization"]
       56 SETTABLEKS                       R9 R8 K22 ["Localization"]
       58 CALL                             R7 1 1
       59 MOVE                             R8 R6
       60 CALL                             R7 1 1
       61 MOVE                             R6 R7
       62 RETURN                           R6 1
