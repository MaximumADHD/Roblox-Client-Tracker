PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"toggleOn"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K2 ["state"]
        5 GETTABLEKS                       R4 R4 K0 ["toggleOn"]
        7 NOT                              R3 R4
        8 SETTABLEKS                       R3 R2 K0 ["toggleOn"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"toggleOn"}]
        1 GETTABLEKS                       R3 R1 K2 ["Selected"]
        3 SETTABLEKS                       R3 R2 K0 ["toggleOn"]
        5 SETTABLEKS                       R2 R0 K3 ["state"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K4 ["onToggle"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Style"]
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R1 R1 K1 ["Style"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["createElement"]
       14 GETUPVAL                         R3 1
       15 DUPTABLE                         R4 K9 [{["Layout"], ["AutomaticSize"], ["Padding"] = 10, ["Spacing"] = 15}]
       16 GETIMPORT                        R5 K13 [Enum.FillDirection.Vertical]
       18 SETTABLEKS                       R5 R4 K3 ["Layout"]
       20 GETIMPORT                        R5 K15 [Enum.AutomaticSize.Y]
       22 SETTABLEKS                       R5 R4 K4 ["AutomaticSize"]
       24 DUPTABLE                         R5 K17 [{"ToggleButton"}]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K2 ["createElement"]
       28 GETUPVAL                         R7 2
       29 DUPTABLE                         R8 K23 [{["Style"], ["Disabled"], ["Selected"], ["LayoutOrder"] = 1, ["OnClick"]}]
       30 SETTABLEKS                       R1 R8 K1 ["Style"]
       32 GETTABLEKS                       R9 R0 K0 ["props"]
       34 GETTABLEKS                       R9 R9 K18 ["Disabled"]
       36 SETTABLEKS                       R9 R8 K18 ["Disabled"]
       38 GETTABLEKS                       R9 R0 K24 ["state"]
       40 GETTABLEKS                       R9 R9 K25 ["toggleOn"]
       42 SETTABLEKS                       R9 R8 K19 ["Selected"]
       44 GETTABLEKS                       R9 R0 K26 ["onToggle"]
       46 SETTABLEKS                       R9 R8 K22 ["OnClick"]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K16 ["ToggleButton"]
       51 CALL                             R2 3 -1
       52 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["ToggleButton"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["ExampleToggleButton"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K14 [PROTO_1]
       41 SETTABLEKS                       R5 R4 K15 ["init"]
       43 DUPCLOSURE                       R5 K16 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R5 R4 K17 ["render"]
       49 DUPTABLE                         R5 K19 [{"stories"}]
       50 DUPTABLE                         R6 K26 [{"DisabledAndNotSelected", "DisabledAndSelected", "NotSelected", "Selected", "UseCheckboxStyle", "UseEyeIconStyle"}]
       51 GETTABLEKS                       R7 R1 K27 ["createElement"]
       53 MOVE                             R8 R4
       54 DUPTABLE                         R9 K33 [{["Disabled"] = True, ["Selected"] = False, ["LayoutOrder"] = 0}]
       55 CALL                             R7 2 1
       56 SETTABLEKS                       R7 R6 K20 ["DisabledAndNotSelected"]
       58 GETTABLEKS                       R7 R1 K27 ["createElement"]
       60 MOVE                             R8 R4
       61 DUPTABLE                         R9 K34 [{["Disabled"] = True, ["Selected"] = True, ["LayoutOrder"] = 0}]
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K21 ["DisabledAndSelected"]
       65 GETTABLEKS                       R7 R1 K27 ["createElement"]
       67 MOVE                             R8 R4
       68 DUPTABLE                         R9 K35 [{["Disabled"] = False, ["Selected"] = False, ["LayoutOrder"] = 0}]
       69 CALL                             R7 2 1
       70 SETTABLEKS                       R7 R6 K22 ["NotSelected"]
       72 GETTABLEKS                       R7 R1 K27 ["createElement"]
       74 MOVE                             R8 R4
       75 DUPTABLE                         R9 K36 [{["Disabled"] = False, ["Selected"] = True, ["LayoutOrder"] = 0}]
       76 CALL                             R7 2 1
       77 SETTABLEKS                       R7 R6 K23 ["Selected"]
       79 GETTABLEKS                       R7 R1 K27 ["createElement"]
       81 MOVE                             R8 R4
       82 DUPTABLE                         R9 K39 [{["Style"] = "Checkbox"}]
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K24 ["UseCheckboxStyle"]
       86 GETTABLEKS                       R7 R1 K27 ["createElement"]
       88 MOVE                             R8 R4
       89 DUPTABLE                         R9 K41 [{["Style"] = "EyeIcon"}]
       90 CALL                             R7 2 1
       91 SETTABLEKS                       R7 R6 K25 ["UseEyeIconStyle"]
       93 SETTABLEKS                       R6 R5 K18 ["stories"]
       95 RETURN                           R5 1
