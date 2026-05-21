PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 DUPTABLE                         R2 K3 [{"isFocused"}]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R3 R1 K2 ["isFocused"]
        8 CALL                             R3 0 1
        9 JUMPIF                           R3 ; [+1]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K2 ["isFocused"]
       13 SETTABLEKS                       R2 R0 K4 ["state"]
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isFocused"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isFocused"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isFocused"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isFocused"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["navigation"]
        4 GETUPVAL                         R2 0
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R4 K2 ["withNavigationFocus can only be used within the view hierarchy of a navigator. The wrapped component cannot access 'navigation' from props or context."]
       10 CALL                             R2 2 0
       11 GETTABLEKS                       R2 R1 K3 ["addListener"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["DidFocus"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R0 K5 ["_didFocusListener"]
       21 GETTABLEKS                       R2 R1 K3 ["addListener"]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K6 ["WillBlur"]
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          VAL R0
       28 CALL                             R2 2 1
       29 SETTABLEKS                       R2 R0 K7 ["_willBlurListener"]
       31 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_didFocusListener"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_didFocusListener"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_didFocusListener"]
       11 GETTABLEKS                       R1 R0 K2 ["_willBlurListener"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_willBlurListener"]
       16 NAMECALL                         R1 R1 K1 ["disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_willBlurListener"]
       22 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["isFocused"]
        4 GETTABLEKS                       R2 R0 K2 ["props"]
        6 GETTABLEKS                       R2 R2 K3 ["navigation"]
        8 GETTABLEKS                       R3 R0 K2 ["props"]
       10 GETTABLEKS                       R3 R3 K4 ["render"]
       12 MOVE                             R4 R3
       13 MOVE                             R5 R2
       14 MOVE                             R6 R1
       15 CALL                             R4 2 -1
       16 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 LOADK                            R3 K0 ["withNavigationFocus must be passed a render prop"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["createElement"]
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K3 [{"render"}]
       12 SETTABLEKS                       R0 R3 K2 ["render"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Roact"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K6 ["NavigationEvents"]
       24 CALL                             R1 1 1
       25 GETIMPORT                        R2 K1 [require]
       27 GETIMPORT                        R3 K3 [script]
       29 GETTABLEKS                       R3 R3 K4 ["Parent"]
       31 GETTABLEKS                       R3 R3 K7 ["AppNavigationContext"]
       33 CALL                             R2 1 1
       34 GETIMPORT                        R3 K1 [require]
       36 GETIMPORT                        R4 K3 [script]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K4 ["Parent"]
       42 GETTABLEKS                       R4 R4 K8 ["utils"]
       44 GETTABLEKS                       R4 R4 K9 ["validate"]
       46 CALL                             R3 1 1
       47 GETTABLEKS                       R4 R0 K10 ["Component"]
       49 LOADK                            R6 K11 ["NavigationFocusComponent"]
       50 NAMECALL                         R4 R4 K12 ["extend"]
       52 CALL                             R4 2 1
       53 DUPCLOSURE                       R5 K13 [PROTO_0]
       54 SETTABLEKS                       R5 R4 K14 ["init"]
       56 DUPCLOSURE                       R5 K15 [PROTO_3]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R5 R4 K16 ["didMount"]
       61 DUPCLOSURE                       R5 K17 [PROTO_4]
       62 SETTABLEKS                       R5 R4 K18 ["willUnmount"]
       64 DUPCLOSURE                       R5 K19 [PROTO_5]
       65 SETTABLEKS                       R5 R4 K20 ["render"]
       67 GETTABLEKS                       R5 R2 K21 ["connect"]
       69 MOVE                             R6 R4
       70 CALL                             R5 1 1
       71 MOVE                             R4 R5
       72 NEWCLOSURE                       R5 P4
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R0
       75 CAPTURE                          REF R4
       76 CLOSEUPVALS                      R4
       77 RETURN                           R5 1
