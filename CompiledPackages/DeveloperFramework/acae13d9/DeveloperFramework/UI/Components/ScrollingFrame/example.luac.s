PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["enabled"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["close"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R2 K1 ["enabled"]
        4 JUMPIFNOTEQKB                    R1 FALSE ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 DUPTABLE                         R1 K3 [{"Layout"}]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K4 ["createElement"]
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
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K4 ["createElement"]
       28 LOADK                            R7 K8 ["TextLabel"]
       29 DUPTABLE                         R8 K12 [{"Text", "Size", "LayoutOrder"}]
       30 LOADK                            R9 K13 ["I'm an example child!"]
       31 SETTABLEKS                       R9 R8 K9 ["Text"]
       33 GETIMPORT                        R9 K16 [UDim2.new]
       35 LOADN                            R10 1
       36 LOADN                            R11 0
       37 LOADN                            R12 0
       38 LOADN                            R13 30
       39 CALL                             R9 4 1
       40 SETTABLEKS                       R9 R8 K10 ["Size"]
       42 SETTABLEKS                       R4 R8 K11 ["LayoutOrder"]
       44 CALL                             R6 2 1
       45 SETTABLE                         R6 R1 R5
       46 FORNLOOP                         R2
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R2 R3 K17 ["provide"]
       50 NEWTABLE                         R3 0 2
       52 GETUPVAL                         R4 2
       53 GETUPVAL                         R5 3
       54 SETLIST                          R3 R4 2 [1]
       56 DUPTABLE                         R4 K19 [{"Main"}]
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R5 R6 K4 ["createElement"]
       60 GETUPVAL                         R6 4
       61 DUPTABLE                         R7 K24 [{"Enabled", "Title", "Size", "Resizable", "OnClose"}]
       62 GETTABLEKS                       R9 R0 K0 ["state"]
       64 GETTABLEKS                       R8 R9 K1 ["enabled"]
       66 SETTABLEKS                       R8 R7 K20 ["Enabled"]
       68 LOADK                            R8 K25 ["ToggleButton Example"]
       69 SETTABLEKS                       R8 R7 K21 ["Title"]
       71 GETIMPORT                        R8 K27 [Vector2.new]
       73 LOADN                            R9 200
       74 LOADN                            R10 200
       75 CALL                             R8 2 1
       76 SETTABLEKS                       R8 R7 K10 ["Size"]
       78 LOADB                            R8 0
       79 SETTABLEKS                       R8 R7 K22 ["Resizable"]
       81 GETTABLEKS                       R8 R0 K28 ["close"]
       83 SETTABLEKS                       R8 R7 K23 ["OnClose"]
       85 DUPTABLE                         R8 K30 [{"Scroller"}]
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R9 R10 K4 ["createElement"]
       89 GETUPVAL                         R10 5
       90 DUPTABLE                         R11 K31 [{"Size"}]
       91 GETIMPORT                        R12 K16 [UDim2.new]
       93 LOADN                            R13 1
       94 LOADN                            R14 0
       95 LOADN                            R15 1
       96 LOADN                            R16 0
       97 CALL                             R12 4 1
       98 SETTABLEKS                       R12 R11 K10 ["Size"]
      100 MOVE                             R12 R1
      101 CALL                             R9 3 1
      102 SETTABLEKS                       R9 R8 K29 ["Scroller"]
      104 CALL                             R5 3 1
      105 SETTABLEKS                       R5 R4 K18 ["Main"]
      107 CALL                             R2 2 -1
      108 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["unmount"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K1 [script]
        2 LOADK                            R4 K2 ["UI"]
        3 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R1 R2 K4 ["Parent"]
        8 GETIMPORT                        R2 K6 [require]
       10 GETTABLEKS                       R4 R1 K4 ["Parent"]
       12 GETTABLEKS                       R3 R4 K7 ["Roact"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K6 [require]
       17 GETTABLEKS                       R5 R1 K2 ["UI"]
       19 GETTABLEKS                       R4 R5 K8 ["ContextServices"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R3 K9 ["Plugin"]
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R8 R1 K2 ["UI"]
       28 GETTABLEKS                       R7 R8 K10 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["ScrollingFrame"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R9 R1 K2 ["UI"]
       37 GETTABLEKS                       R8 R9 K10 ["Components"]
       39 GETTABLEKS                       R7 R8 K12 ["Dialog"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R4 K13 ["new"]
       44 MOVE                             R8 R0
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R11 R1 K14 ["Style"]
       50 GETTABLEKS                       R10 R11 K15 ["Themes"]
       52 GETTABLEKS                       R9 R10 K16 ["StudioTheme"]
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
