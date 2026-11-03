PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["editText"]
        7 DUPTABLE                         R1 K4 [{["type"] = "Capture"}]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["editText"]
        8 DUPTABLE                         R2 K5 [{["type"] = "Stage", ["value"]}]
        9 SETTABLEKS                       R0 R2 K4 ["value"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 JUMPIFEQKNIL                     R0 ; [+7]
        6 GETTABLEKS                       R1 R0 K1 ["KeyCode"]
        8 GETIMPORT                        R2 K4 [Enum.KeyCode.Escape]
       10 JUMPIFNOTEQ                      R1 R2 ; [+7]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K5 ["editText"]
       15 DUPTABLE                         R2 K8 [{["type"] = "Cancel"}]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K5 ["editText"]
       21 DUPTABLE                         R2 K10 [{["type"] = "Commit"}]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADB                            R3 0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["useEventCallback"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K1 ["useEventCallback"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K1 ["useEventCallback"]
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K2 ["createElement"]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K3 ["TextInput"]
       37 DUPTABLE                         R8 K19 [{["label"] = "", ["text"], ["size"], ["width"], ["focusBehavior"], ["variant"], ["isDisabled"], ["onFocusGained"], ["onChanged"], ["onFocusLost"], ["AnchorPoint"], ["Position"], ["Visible"], ["textBoxRef"]}]
       38 GETTABLEKS                       R9 R0 K6 ["text"]
       40 SETTABLEKS                       R9 R8 K6 ["text"]
       42 GETUPVAL                         R9 2
       43 GETTABLEKS                       R9 R9 K20 ["Enums"]
       45 GETTABLEKS                       R9 R9 K21 ["InputSize"]
       47 GETTABLEKS                       R9 R9 K22 ["XSmall"]
       49 SETTABLEKS                       R9 R8 K7 ["size"]
       51 GETIMPORT                        R9 K25 [UDim.new]
       53 LOADN                            R10 1
       54 LOADN                            R11 0
       55 CALL                             R9 2 1
       56 SETTABLEKS                       R9 R8 K8 ["width"]
       58 GETTABLEKS                       R9 R0 K9 ["focusBehavior"]
       60 JUMPIF                           R9 ; [+3]
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R9 R9 K26 ["Highlight"]
       64 SETTABLEKS                       R9 R8 K9 ["focusBehavior"]
       66 GETTABLEKS                       R9 R0 K10 ["variant"]
       68 JUMPIF                           R9 ; [+3]
       69 GETUPVAL                         R9 4
       70 GETTABLEKS                       R9 R9 K27 ["Contrast"]
       72 SETTABLEKS                       R9 R8 K10 ["variant"]
       74 GETTABLEKS                       R9 R0 K28 ["readonly"]
       76 SETTABLEKS                       R9 R8 K11 ["isDisabled"]
       78 SETTABLEKS                       R3 R8 K12 ["onFocusGained"]
       80 SETTABLEKS                       R4 R8 K13 ["onChanged"]
       82 SETTABLEKS                       R5 R8 K14 ["onFocusLost"]
       84 GETTABLEKS                       R9 R0 K15 ["AnchorPoint"]
       86 SETTABLEKS                       R9 R8 K15 ["AnchorPoint"]
       88 GETTABLEKS                       R9 R0 K16 ["Position"]
       90 SETTABLEKS                       R9 R8 K16 ["Position"]
       92 GETTABLEKS                       R9 R0 K17 ["Visible"]
       94 SETTABLEKS                       R9 R8 K17 ["Visible"]
       96 GETTABLEKS                       R10 R0 K18 ["textBoxRef"]
       98 OR                               R9 R10 R1
       99 SETTABLEKS                       R9 R8 K18 ["textBoxRef"]
      101 CALL                             R6 2 -1
      102 RETURN                           R6 -1

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
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K10 ["RpcTypes"]
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R6 R2 K11 ["Enums"]
       33 GETTABLEKS                       R6 R6 K12 ["InputFocusBehavior"]
       35 GETTABLEKS                       R7 R2 K11 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["InputVariant"]
       39 DUPCLOSURE                       R8 K14 [PROTO_3]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R7
       45 GETTABLEKS                       R9 R3 K15 ["memo"]
       47 MOVE                             R10 R8
       48 CALL                             R9 1 -1
       49 RETURN                           R9 -1
