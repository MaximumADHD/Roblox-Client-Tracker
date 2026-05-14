PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["enteredText"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["tagMenu"]
        5 GETTABLEKS                       R3 R1 K2 ["groupMenu"]
        7 LOADB                            R4 0
        8 JUMPIFEQKNIL                     R3 ; [+5]
       10 JUMPIFNOTEQKS                    R3 K3 [""] ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["enteredText"]
       17 GETIMPORT                        R6 K7 [string.gsub]
       19 MOVE                             R7 R5
       20 LOADK                            R8 K8 ["^%s+"]
       21 LOADK                            R9 K3 [""]
       22 CALL                             R6 3 0
       23 JUMPIFNOT                        R4 ; [+22]
       24 JUMPIFNOT                        R0 ; [+15]
       25 JUMPIFEQKS                       R5 K3 [""] ; [+14]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K9 ["Get"]
       30 CALL                             R6 0 1
       31 MOVE                             R8 R3
       32 MOVE                             R9 R5
       33 NAMECALL                         R6 R6 K10 ["RenameGroup"]
       35 CALL                             R6 3 0
       36 GETTABLEKS                       R6 R1 K11 ["openGroupMenu"]
       38 MOVE                             R7 R5
       39 CALL                             R6 1 0
       40 GETTABLEKS                       R6 R1 K12 ["setRenamingGroup"]
       42 MOVE                             R7 R3
       43 LOADB                            R8 0
       44 CALL                             R6 2 0
       45 RETURN                           R0 0
       46 JUMPIFNOT                        R0 ; [+15]
       47 JUMPIFEQKS                       R5 K3 [""] ; [+14]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K9 ["Get"]
       52 CALL                             R6 0 1
       53 MOVE                             R8 R2
       54 MOVE                             R9 R5
       55 NAMECALL                         R6 R6 K13 ["Rename"]
       57 CALL                             R6 3 0
       58 GETTABLEKS                       R6 R1 K14 ["openTagMenu"]
       60 MOVE                             R7 R5
       61 CALL                             R6 1 0
       62 GETTABLEKS                       R6 R1 K15 ["setRenaming"]
       64 MOVE                             R7 R2
       65 LOADB                            R8 0
       66 CALL                             R6 2 0
       67 RETURN                           R0 0

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
       15 CAPTURE                          UPVAL U1
       16 SETTABLEKS                       R1 R0 K5 ["onFocusLost"]
       18 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["tagMenu"]
        4 GETTABLEKS                       R3 R1 K2 ["groupMenu"]
        6 LOADB                            R4 0
        7 JUMPIFEQKNIL                     R3 ; [+5]
        9 JUMPIFNOTEQKS                    R3 K3 [""] ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["createElement"]
       16 GETUPVAL                         R6 1
       17 DUPTABLE                         R7 K13 [{"Size", "Style", "LayoutOrder", "ShouldFocus", "ForwardRef", "PlaceholderText", "OnTextChanged", "OnFocusLost"}]
       18 GETTABLEKS                       R8 R1 K5 ["Size"]
       20 SETTABLEKS                       R8 R7 K5 ["Size"]
       22 LOADK                            R8 K14 ["FilledRoundedBorder"]
       23 SETTABLEKS                       R8 R7 K6 ["Style"]
       25 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
       27 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       29 LOADB                            R8 1
       30 SETTABLEKS                       R8 R7 K8 ["ShouldFocus"]
       32 GETTABLEKS                       R8 R0 K15 ["textBoxRef"]
       34 SETTABLEKS                       R8 R7 K9 ["ForwardRef"]
       36 JUMPIFNOT                        R4 ; [+2]
       37 MOVE                             R8 R3
       38 JUMP                             ; [+1]
       39 MOVE                             R8 R2
       40 SETTABLEKS                       R8 R7 K10 ["PlaceholderText"]
       42 GETTABLEKS                       R8 R0 K16 ["onTextChanged"]
       44 SETTABLEKS                       R8 R7 K11 ["OnTextChanged"]
       46 GETTABLEKS                       R8 R0 K17 ["onFocusLost"]
       48 SETTABLEKS                       R8 R7 K12 ["OnFocusLost"]
       50 CALL                             R5 2 -1
       51 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["textBoxRef"]
        2 GETTABLEKS                       R1 R1 K1 ["current"]
        4 NAMECALL                         R1 R1 K2 ["CaptureFocus"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"tagMenu", "groupMenu"}]
        1 GETTABLEKS                       R3 R0 K3 ["TagMenu"]
        3 SETTABLEKS                       R3 R2 K0 ["tagMenu"]
        5 GETTABLEKS                       R3 R0 K4 ["GroupMenu"]
        7 SETTABLEKS                       R3 R2 K1 ["groupMenu"]
        9 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["OpenTagMenu"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["OpenGroupMenu"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SetRenaming"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SetRenaming"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K4 [{"openTagMenu", "openGroupMenu", "setRenaming", "setRenamingGroup"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["openTagMenu"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R2 R1 K1 ["openGroupMenu"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 SETTABLEKS                       R2 R1 K2 ["setRenaming"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 SETTABLEKS                       R2 R1 K3 ["setRenamingGroup"]
       21 RETURN                           R1 1

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
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["UI"]
       32 GETTABLEKS                       R5 R4 K10 ["DEPRECATED_TextInput"]
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K12 ["Actions"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R8 R0 K11 ["Src"]
       45 GETTABLEKS                       R8 R8 K13 ["TagManager"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R1 K14 ["Component"]
       50 LOADK                            R10 K15 ["TagRenameTextInput"]
       51 NAMECALL                         R8 R8 K16 ["extend"]
       53 CALL                             R8 2 1
       54 DUPCLOSURE                       R9 K17 [PROTO_2]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R7
       57 SETTABLEKS                       R9 R8 K18 ["init"]
       59 DUPCLOSURE                       R9 K19 [PROTO_3]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R5
       62 SETTABLEKS                       R9 R8 K20 ["render"]
       64 DUPCLOSURE                       R9 K21 [PROTO_4]
       65 SETTABLEKS                       R9 R8 K22 ["didMount"]
       67 DUPCLOSURE                       R9 K23 [PROTO_5]
       68 DUPCLOSURE                       R10 K24 [PROTO_10]
       69 CAPTURE                          VAL R6
       70 GETTABLEKS                       R11 R2 K25 ["connect"]
       72 MOVE                             R12 R9
       73 MOVE                             R13 R10
       74 CALL                             R11 2 1
       75 MOVE                             R12 R8
       76 CALL                             R11 1 -1
       77 RETURN                           R11 -1
