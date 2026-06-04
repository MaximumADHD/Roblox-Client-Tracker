PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["finishEditing"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["current"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R3 R0 K1 ["textBoxRef"]
        7 OR                               R2 R3 R1
        8 GETTABLEKS                       R3 R0 K2 ["text"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["useRef"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R4
       20 NEWTABLE                         R7 0 0
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       26 NEWCLOSURE                       R7 P1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R8 0 1
       31 GETTABLEKS                       R9 R0 K4 ["finishEditing"]
       33 SETLIST                          R8 R9 1 [1]
       35 CALL                             R6 2 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K5 ["createElement"]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K6 ["TextInput"]
       42 DUPTABLE                         R9 K15 [{"textBoxRef", "text", "label", "isDisabled", "size", "width", "focusBehavior", "onChanged", "onFocusLost", "Visible"}]
       43 SETTABLEKS                       R2 R9 K1 ["textBoxRef"]
       45 SETTABLEKS                       R3 R9 K2 ["text"]
       47 LOADK                            R10 K16 [""]
       48 SETTABLEKS                       R10 R9 K7 ["label"]
       50 GETTABLEKS                       R10 R0 K17 ["readonly"]
       52 SETTABLEKS                       R10 R9 K8 ["isDisabled"]
       54 GETUPVAL                         R10 1
       55 GETTABLEKS                       R10 R10 K18 ["Enums"]
       57 GETTABLEKS                       R10 R10 K19 ["InputSize"]
       59 GETTABLEKS                       R10 R10 K20 ["XSmall"]
       61 SETTABLEKS                       R10 R9 K9 ["size"]
       63 GETIMPORT                        R10 K23 [UDim.new]
       65 LOADN                            R11 1
       66 LOADN                            R12 0
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K10 ["width"]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R10 R10 K18 ["Enums"]
       73 GETTABLEKS                       R10 R10 K24 ["InputFocusBehavior"]
       75 GETTABLEKS                       R10 R10 K25 ["Highlight"]
       77 SETTABLEKS                       R10 R9 K11 ["focusBehavior"]
       79 SETTABLEKS                       R5 R9 K12 ["onChanged"]
       81 SETTABLEKS                       R6 R9 K13 ["onFocusLost"]
       83 GETTABLEKS                       R10 R0 K14 ["Visible"]
       85 SETTABLEKS                       R10 R9 K14 ["Visible"]
       87 CALL                             R7 2 -1
       88 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K4 ["Parent"]
       18 GETTABLEKS                       R4 R4 K8 ["React"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K9 [PROTO_2]
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R2
       24 GETTABLEKS                       R5 R3 K10 ["memo"]
       26 MOVE                             R6 R4
       27 CALL                             R5 1 -1
       28 RETURN                           R5 -1
