PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["IsVisible"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADB                            R1 1
        7 JUMP                             ; [+4]
        8 GETTABLEKS                       R1 R0 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K1 ["IsVisible"]
       12 JUMPIF                           R1 ; [+16]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["createElement"]
       16 LOADK                            R3 K3 ["Frame"]
       17 DUPTABLE                         R4 K7 [{["Size"], ["BorderSizePixel"] = 0}]
       18 GETIMPORT                        R5 K10 [UDim2.new]
       20 LOADN                            R6 0
       21 LOADN                            R7 0
       22 LOADN                            R8 0
       23 LOADN                            R9 0
       24 CALL                             R5 4 1
       25 SETTABLEKS                       R5 R4 K4 ["Size"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K2 ["createElement"]
       32 GETUPVAL                         R3 1
       33 DUPTABLE                         R4 K19 [{"Title", "Buttons", "Enabled", "LayoutOrder", "Selected", "SubDescription", "SelectionChanged", "Mouse"}]
       34 GETTABLEKS                       R5 R0 K0 ["props"]
       36 GETTABLEKS                       R5 R5 K11 ["Title"]
       38 SETTABLEKS                       R5 R4 K11 ["Title"]
       40 GETTABLEKS                       R5 R0 K0 ["props"]
       42 GETTABLEKS                       R5 R5 K12 ["Buttons"]
       44 SETTABLEKS                       R5 R4 K12 ["Buttons"]
       46 GETTABLEKS                       R5 R0 K0 ["props"]
       48 GETTABLEKS                       R5 R5 K13 ["Enabled"]
       50 SETTABLEKS                       R5 R4 K13 ["Enabled"]
       52 GETTABLEKS                       R5 R0 K0 ["props"]
       54 GETTABLEKS                       R5 R5 K14 ["LayoutOrder"]
       56 SETTABLEKS                       R5 R4 K14 ["LayoutOrder"]
       58 GETTABLEKS                       R5 R0 K0 ["props"]
       60 GETTABLEKS                       R5 R5 K15 ["Selected"]
       62 SETTABLEKS                       R5 R4 K15 ["Selected"]
       64 GETTABLEKS                       R5 R0 K0 ["props"]
       66 GETTABLEKS                       R5 R5 K16 ["SubDescription"]
       68 SETTABLEKS                       R5 R4 K16 ["SubDescription"]
       70 GETTABLEKS                       R5 R0 K0 ["props"]
       72 GETTABLEKS                       R5 R5 K17 ["SelectionChanged"]
       74 SETTABLEKS                       R5 R4 K17 ["SelectionChanged"]
       76 GETTABLEKS                       R5 R0 K0 ["props"]
       78 GETTABLEKS                       R5 R5 K18 ["Mouse"]
       80 SETTABLEKS                       R5 R4 K18 ["Mouse"]
       82 CALL                             R2 2 -1
       83 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Components"]
       24 GETTABLEKS                       R3 R3 K9 ["RadioButtonSet"]
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
