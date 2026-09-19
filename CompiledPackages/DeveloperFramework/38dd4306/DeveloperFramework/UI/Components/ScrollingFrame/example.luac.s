PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = True}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["close"]
        7 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["enabled"]
        4 JUMPIFNOTEQKB                    R1 FALSE ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 DUPTABLE                         R1 K3 [{"Layout"}]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["createElement"]
       12 LOADK                            R3 K5 ["UIListLayout"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R2 R1 K2 ["Layout"]
       16 LOADN                            R4 1
       17 LOADN                            R2 10
       18 LOADN                            R3 1
       19 FORNPREP                         R2
       20 FASTCALL1                        TOSTRING R4 ; [+3]
       21 MOVE                             R6 R4
       22 GETIMPORT                        R5 K7 [tostring]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K4 ["createElement"]
       28 LOADK                            R7 K8 ["TextLabel"]
       29 DUPTABLE                         R8 K13 [{["Text"] = "I'm an example child!", ["Size"], ["LayoutOrder"]}]
       30 GETIMPORT                        R9 K16 [UDim2.new]
       32 LOADN                            R10 1
       33 LOADN                            R11 0
       34 LOADN                            R12 0
       35 LOADN                            R13 30
       36 CALL                             R9 4 1
       37 SETTABLEKS                       R9 R8 K11 ["Size"]
       39 SETTABLEKS                       R4 R8 K12 ["LayoutOrder"]
       41 CALL                             R6 2 1
       42 SETTABLE                         R6 R1 R5
       43 FORNLOOP                         R2
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R2 R2 K17 ["provide"]
       47 NEWTABLE                         R3 0 2
       49 GETUPVAL                         R4 2
       50 GETUPVAL                         R5 3
       51 SETLIST                          R3 R4 2 [1]
       53 DUPTABLE                         R4 K19 [{"Main"}]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K4 ["createElement"]
       57 GETUPVAL                         R6 4
       58 DUPTABLE                         R7 K26 [{["Enabled"], ["Title"] = "ToggleButton Example", ["Size"], ["Resizable"] = False, ["OnClose"]}]
       59 GETTABLEKS                       R8 R0 K0 ["state"]
       61 GETTABLEKS                       R8 R8 K1 ["enabled"]
       63 SETTABLEKS                       R8 R7 K20 ["Enabled"]
       65 GETIMPORT                        R8 K28 [Vector2.new]
       67 LOADN                            R9 200
       68 LOADN                            R10 200
       69 CALL                             R8 2 1
       70 SETTABLEKS                       R8 R7 K11 ["Size"]
       72 GETTABLEKS                       R8 R0 K29 ["close"]
       74 SETTABLEKS                       R8 R7 K25 ["OnClose"]
       76 DUPTABLE                         R8 K31 [{"Scroller"}]
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K4 ["createElement"]
       80 GETUPVAL                         R10 5
       81 DUPTABLE                         R11 K32 [{"Size"}]
       82 GETIMPORT                        R12 K16 [UDim2.new]
       84 LOADN                            R13 1
       85 LOADN                            R14 0
       86 LOADN                            R15 1
       87 LOADN                            R16 0
       88 CALL                             R12 4 1
       89 SETTABLEKS                       R12 R11 K11 ["Size"]
       91 MOVE                             R12 R1
       92 CALL                             R9 3 1
       93 SETTABLEKS                       R9 R8 K30 ["Scroller"]
       95 CALL                             R5 3 1
       96 SETTABLEKS                       R5 R4 K18 ["Main"]
       98 CALL                             R2 2 -1
       99 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["unmount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [script]
        2 LOADK                            R3 K2 ["UI"]
        3 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        5 CALL                             R1 2 1
        6 GETTABLEKS                       R1 R1 K4 ["Parent"]
        8 GETIMPORT                        R2 K6 [require]
       10 GETTABLEKS                       R3 R1 K4 ["Parent"]
       12 GETTABLEKS                       R3 R3 K7 ["Roact"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K6 [require]
       17 GETTABLEKS                       R4 R1 K2 ["UI"]
       19 GETTABLEKS                       R4 R4 K8 ["ContextServices"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R3 K9 ["Plugin"]
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K2 ["UI"]
       28 GETTABLEKS                       R6 R6 K10 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["ScrollingFrame"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K2 ["UI"]
       37 GETTABLEKS                       R7 R7 K10 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["Dialog"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K13 ["new"]
       44 MOVE                             R8 R0
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R1 K14 ["Style"]
       50 GETTABLEKS                       R9 R9 K15 ["Themes"]
       52 GETTABLEKS                       R9 R9 K16 ["StudioTheme"]
       54 CALL                             R8 1 1
       55 GETTABLEKS                       R9 R8 K13 ["new"]
       57 CALL                             R9 0 1
       58 GETTABLEKS                       R10 R2 K17 ["PureComponent"]
       60 LOADK                            R12 K18 ["ExampleButton"]
       61 NAMECALL                         R10 R10 K19 ["extend"]
       63 CALL                             R10 2 1
       64 DUPCLOSURE                       R11 K20 [PROTO_1]
       65 SETTABLEKS                       R11 R10 K21 ["init"]
       67 NEWCLOSURE                       R11 P1
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 SETTABLEKS                       R11 R10 K22 ["render"]
       76 GETTABLEKS                       R11 R2 K23 ["createElement"]
       78 MOVE                             R12 R10
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R2 K24 ["mount"]
       82 MOVE                             R13 R11
       83 CALL                             R12 1 1
       84 NEWCLOSURE                       R13 P2
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R12
       87 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
