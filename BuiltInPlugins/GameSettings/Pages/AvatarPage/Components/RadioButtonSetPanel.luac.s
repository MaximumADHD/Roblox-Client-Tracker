PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["IsVisible"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADB                            R1 1
        7 JUMP                             ; [+4]
        8 GETTABLEKS                       R2 R0 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K1 ["IsVisible"]
       12 JUMPIF                           R1 ; [+19]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K2 ["createElement"]
       16 LOADK                            R3 K3 ["Frame"]
       17 DUPTABLE                         R4 K6 [{"Size", "BorderSizePixel"}]
       18 GETIMPORT                        R5 K9 [UDim2.new]
       20 LOADN                            R6 0
       21 LOADN                            R7 0
       22 LOADN                            R8 0
       23 LOADN                            R9 0
       24 CALL                             R5 4 1
       25 SETTABLEKS                       R5 R4 K4 ["Size"]
       27 LOADN                            R5 0
       28 SETTABLEKS                       R5 R4 K5 ["BorderSizePixel"]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K2 ["createElement"]
       35 GETUPVAL                         R3 1
       36 DUPTABLE                         R4 K18 [{"Title", "Buttons", "Enabled", "LayoutOrder", "Selected", "SubDescription", "SelectionChanged", "Mouse"}]
       37 GETTABLEKS                       R6 R0 K0 ["props"]
       39 GETTABLEKS                       R5 R6 K10 ["Title"]
       41 SETTABLEKS                       R5 R4 K10 ["Title"]
       43 GETTABLEKS                       R6 R0 K0 ["props"]
       45 GETTABLEKS                       R5 R6 K11 ["Buttons"]
       47 SETTABLEKS                       R5 R4 K11 ["Buttons"]
       49 GETTABLEKS                       R6 R0 K0 ["props"]
       51 GETTABLEKS                       R5 R6 K12 ["Enabled"]
       53 SETTABLEKS                       R5 R4 K12 ["Enabled"]
       55 GETTABLEKS                       R6 R0 K0 ["props"]
       57 GETTABLEKS                       R5 R6 K13 ["LayoutOrder"]
       59 SETTABLEKS                       R5 R4 K13 ["LayoutOrder"]
       61 GETTABLEKS                       R6 R0 K0 ["props"]
       63 GETTABLEKS                       R5 R6 K14 ["Selected"]
       65 SETTABLEKS                       R5 R4 K14 ["Selected"]
       67 GETTABLEKS                       R6 R0 K0 ["props"]
       69 GETTABLEKS                       R5 R6 K15 ["SubDescription"]
       71 SETTABLEKS                       R5 R4 K15 ["SubDescription"]
       73 GETTABLEKS                       R6 R0 K0 ["props"]
       75 GETTABLEKS                       R5 R6 K16 ["SelectionChanged"]
       77 SETTABLEKS                       R5 R4 K16 ["SelectionChanged"]
       79 GETTABLEKS                       R6 R0 K0 ["props"]
       81 GETTABLEKS                       R5 R6 K17 ["Mouse"]
       83 SETTABLEKS                       R5 R4 K17 ["Mouse"]
       85 CALL                             R2 2 -1
       86 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Components"]
       24 GETTABLEKS                       R3 R4 K9 ["RadioButtonSet"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K10 ["Component"]
       29 LOADK                            R5 K11 ["ComponentRadioButtonSetPanel"]
       30 NAMECALL                         R3 R3 K12 ["extend"]
       32 CALL                             R3 2 1
       33 DUPCLOSURE                       R4 K13 [PROTO_0]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R4 R3 K14 ["render"]
       38 RETURN                           R3 1
