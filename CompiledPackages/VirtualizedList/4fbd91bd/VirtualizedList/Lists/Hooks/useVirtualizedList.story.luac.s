PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 LOADK                            R3 K2 ["TextLabel"]
        6 DUPTABLE                         R4 K10 [{["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextSize"] = 20, ["TextXAlignment"]}]
        7 GETIMPORT                        R5 K13 [UDim2.new]
        9 LOADN                            R6 1
       10 LOADN                            R7 0
       11 LOADN                            R8 0
       12 GETTABLEKS                       R9 R0 K14 ["height"]
       14 CALL                             R5 4 1
       15 SETTABLEKS                       R5 R4 K3 ["Size"]
       17 GETTABLEKS                       R6 R1 K15 ["sender"]
       19 LOADK                            R7 K16 [": "]
       20 GETTABLEKS                       R8 R1 K17 ["text"]
       22 CONCAT                           R5 R6 R8
       23 SETTABLEKS                       R5 R4 K6 ["Text"]
       25 GETIMPORT                        R5 K20 [Enum.TextXAlignment.Left]
       27 SETTABLEKS                       R5 R4 K9 ["TextXAlignment"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["key"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["scrollToKey"]
        3 JUMPIFNOT                        R0 ; [+19]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["scrollToKey"]
       10 JUMPIFEQ                         R0 R1 ; [+12]
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["scrollToKey"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["scrollToKey"]
       21 SETTABLEKS                       R1 R0 K1 ["current"]
       23 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["useRef"]
       10 LOADNIL                          R4
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 1
       13 DUPTABLE                         R5 K5 [{"virtualizedItems", "renderItem", "scrollingFrameRef"}]
       14 GETUPVAL                         R6 2
       15 SETTABLEKS                       R6 R5 K2 ["virtualizedItems"]
       17 GETUPVAL                         R6 3
       18 SETTABLEKS                       R6 R5 K3 ["renderItem"]
       20 SETTABLEKS                       R2 R5 K4 ["scrollingFrameRef"]
       22 CALL                             R4 1 2
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 NEWTABLE                         R8 0 1
       32 GETTABLEKS                       R9 R1 K7 ["scrollToKey"]
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 0
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K8 ["createElement"]
       40 LOADK                            R7 K9 ["ScrollingFrame"]
       41 DUPTABLE                         R8 K12 [{"Size", "ref"}]
       42 GETIMPORT                        R9 K15 [UDim2.new]
       44 LOADN                            R10 1
       45 LOADN                            R11 0
       46 LOADN                            R12 0
       47 LOADN                            R13 400
       48 CALL                             R9 4 1
       49 SETTABLEKS                       R9 R8 K10 ["Size"]
       51 SETTABLEKS                       R2 R8 K11 ["ref"]
       53 MOVE                             R9 R4
       54 CALL                             R6 3 -1
       55 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Dash"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R1 K6 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K2 ["Parent"]
       27 GETTABLEKS                       R5 R5 K7 ["useVirtualizedList"]
       29 CALL                             R4 1 1
       30 NEWTABLE                         R5 0 0
       32 LOADN                            R8 1
       33 LOADN                            R6 500
       34 LOADN                            R7 1
       35 FORNPREP                         R6
       36 DUPTABLE                         R11 K13 [{["key"], ["height"] = 50, ["item"], ["index"]}]
       37 FASTCALL1                        TOSTRING R8 ; [+3]
       38 MOVE                             R13 R8
       39 GETIMPORT                        R12 K15 [tostring]
       41 CALL                             R12 1 1
       42 SETTABLEKS                       R12 R11 K8 ["key"]
       44 DUPTABLE                         R12 K18 [{"text", "sender"}]
       45 LOADK                            R14 K19 ["Message "]
       46 MOVE                             R15 R8
       47 CONCAT                           R13 R14 R15
       48 SETTABLEKS                       R13 R12 K16 ["text"]
       50 MODK                             R14 R8 K20 [2]
       51 JUMPIFNOTEQKN                    R14 K21 [0] ; [+3]
       53 LOADK                            R13 K22 ["Alice"]
       54 JUMP                             ; [+1]
       55 LOADK                            R13 K23 ["Bob"]
       56 SETTABLEKS                       R13 R12 K17 ["sender"]
       58 SETTABLEKS                       R12 R11 K11 ["item"]
       60 SETTABLEKS                       R8 R11 K12 ["index"]
       62 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       64 MOVE                             R10 R5
       65 GETIMPORT                        R9 K26 [table.insert]
       67 CALL                             R9 2 0
       68 FORNLOOP                         R6
       69 DUPCLOSURE                       R6 K27 [PROTO_0]
       70 CAPTURE                          VAL R3
       71 DUPTABLE                         R7 K30 [{"controls", "story"}]
       72 DUPTABLE                         R8 K32 [{"scrollToKey"}]
       73 GETTABLEKS                       R9 R2 K33 ["map"]
       75 MOVE                             R10 R5
       76 DUPCLOSURE                       R11 K34 [PROTO_1]
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K31 ["scrollToKey"]
       80 SETTABLEKS                       R8 R7 K28 ["controls"]
       82 DUPCLOSURE                       R8 K35 [PROTO_3]
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 SETTABLEKS                       R8 R7 K29 ["story"]
       89 RETURN                           R7 1
