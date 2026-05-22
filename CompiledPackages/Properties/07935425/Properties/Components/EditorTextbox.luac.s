PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R1 K0 ["current"]
        9 GETTABLEKS                       R1 R0 K1 ["setSelectionStart"]
       11 LOADN                            R2 0
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K2 ["setCursorPosition"]
       15 GETUPVAL                         R4 2
       16 NAMECALL                         R4 R4 K4 ["getValue"]
       18 CALL                             R4 1 1
       19 LENGTH                           R3 R4
       20 ADDK                             R2 R3 K3 [1]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["beginEditingAsync"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["finishEditing"]
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K1 ["beginEditingAsync"]
       17 CALL                             R0 0 0
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K2 ["finishEditing"]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K0 ["current"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_3:
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
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R7 0 1
       24 GETTABLEKS                       R8 R0 K4 ["beginEditingAsync"]
       26 SETLIST                          R7 R8 1 [1]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R4
       34 NEWTABLE                         R8 0 0
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       40 NEWCLOSURE                       R8 P2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R9 0 1
       45 GETTABLEKS                       R10 R0 K5 ["finishEditing"]
       47 SETLIST                          R9 R10 1 [1]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R8 R8 K6 ["createElement"]
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R9 R9 K7 ["TextInput"]
       56 DUPTABLE                         R10 K16 [{"textBoxRef", "text", "label", "isDisabled", "size", "width", "onChanged", "onFocusLost", "onFocusGained", "Visible"}]
       57 SETTABLEKS                       R2 R10 K1 ["textBoxRef"]
       59 SETTABLEKS                       R3 R10 K2 ["text"]
       61 LOADK                            R11 K17 [""]
       62 SETTABLEKS                       R11 R10 K8 ["label"]
       64 GETTABLEKS                       R11 R0 K18 ["readonly"]
       66 SETTABLEKS                       R11 R10 K9 ["isDisabled"]
       68 GETUPVAL                         R11 1
       69 GETTABLEKS                       R11 R11 K19 ["Enums"]
       71 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       73 GETTABLEKS                       R11 R11 K21 ["XSmall"]
       75 SETTABLEKS                       R11 R10 K10 ["size"]
       77 GETIMPORT                        R11 K24 [UDim.new]
       79 LOADN                            R12 1
       80 LOADN                            R13 0
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K11 ["width"]
       84 SETTABLEKS                       R6 R10 K12 ["onChanged"]
       86 SETTABLEKS                       R7 R10 K13 ["onFocusLost"]
       88 SETTABLEKS                       R5 R10 K14 ["onFocusGained"]
       90 GETTABLEKS                       R11 R0 K15 ["Visible"]
       92 SETTABLEKS                       R11 R10 K15 ["Visible"]
       94 CALL                             R8 2 -1
       95 RETURN                           R8 -1

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
       21 DUPCLOSURE                       R4 K9 [PROTO_3]
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R2
       24 GETTABLEKS                       R5 R3 K10 ["memo"]
       26 MOVE                             R6 R4
       27 CALL                             R5 1 -1
       28 RETURN                           R5 -1
