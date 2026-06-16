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
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R5 0 0
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R6 0 1
       26 GETTABLEKS                       R7 R0 K2 ["finishEditing"]
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K3 ["createElement"]
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K4 ["TextInput"]
       37 DUPTABLE                         R7 K16 [{"textBoxRef", "text", "label", "isDisabled", "size", "width", "focusBehavior", "variant", "onChanged", "onFocusLost", "Visible"}]
       38 GETTABLEKS                       R9 R0 K5 ["textBoxRef"]
       40 OR                               R8 R9 R1
       41 SETTABLEKS                       R8 R7 K5 ["textBoxRef"]
       43 GETTABLEKS                       R8 R0 K6 ["text"]
       45 SETTABLEKS                       R8 R7 K6 ["text"]
       47 LOADK                            R8 K17 [""]
       48 SETTABLEKS                       R8 R7 K7 ["label"]
       50 GETTABLEKS                       R8 R0 K18 ["readonly"]
       52 SETTABLEKS                       R8 R7 K8 ["isDisabled"]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K19 ["Enums"]
       57 GETTABLEKS                       R8 R8 K20 ["InputSize"]
       59 GETTABLEKS                       R8 R8 K21 ["XSmall"]
       61 SETTABLEKS                       R8 R7 K9 ["size"]
       63 GETIMPORT                        R8 K24 [UDim.new]
       65 LOADN                            R9 1
       66 LOADN                            R10 0
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K10 ["width"]
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R8 R8 K19 ["Enums"]
       73 GETTABLEKS                       R8 R8 K25 ["InputFocusBehavior"]
       75 GETTABLEKS                       R8 R8 K26 ["Highlight"]
       77 SETTABLEKS                       R8 R7 K11 ["focusBehavior"]
       79 GETUPVAL                         R8 2
       80 GETTABLEKS                       R8 R8 K27 ["Contrast"]
       82 SETTABLEKS                       R8 R7 K12 ["variant"]
       84 SETTABLEKS                       R3 R7 K13 ["onChanged"]
       86 SETTABLEKS                       R4 R7 K14 ["onFocusLost"]
       88 GETTABLEKS                       R8 R0 K15 ["Visible"]
       90 SETTABLEKS                       R8 R7 K15 ["Visible"]
       92 CALL                             R5 2 -1
       93 RETURN                           R5 -1

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
       21 GETTABLEKS                       R4 R2 K9 ["Enums"]
       23 GETTABLEKS                       R4 R4 K10 ["InputVariant"]
       25 DUPCLOSURE                       R5 K11 [PROTO_2]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R4
       29 GETTABLEKS                       R6 R3 K12 ["memo"]
       31 MOVE                             R7 R5
       32 CALL                             R6 1 -1
       33 RETURN                           R6 -1
