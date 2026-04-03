PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"LayoutOrder", "Style", "Text", "Size", "OnClick"}]
        5 GETUPVAL                         R4 2
        6 NAMECALL                         R4 R4 K7 ["getNextOrder"]
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
       11 LOADK                            R4 K8 ["Round"]
       12 SETTABLEKS                       R4 R3 K2 ["Style"]
       14 SETTABLEKS                       R0 R3 K3 ["Text"]
       16 GETIMPORT                        R4 K11 [UDim2.new]
       18 LOADN                            R5 1
       19 LOADN                            R6 248
       20 LOADN                            R7 0
       21 LOADN                            R8 32
       22 CALL                             R4 4 1
       23 SETTABLEKS                       R4 R3 K4 ["Size"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R4 R3 K5 ["OnClick"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 2 0
        6 GETIMPORT                        R3 K3 [UDim2.fromOffset]
        8 LOADN                            R4 44
        9 LOADN                            R5 100
       10 CALL                             R3 2 1
       11 SETTABLEKS                       R3 R2 K4 ["Size"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K5 ["Tag"]
       16 LOADK                            R4 K6 ["X-ColumnM"]
       17 SETTABLE                         R4 R2 R3
       18 DUPTABLE                         R3 K16 [{"ButtonA", "ButtonB", "ButtonC", "ButtonD", "ButtonE", "ButtonF", "ButtonG", "ButtonH", "ButtonI"}]
       19 GETUPVAL                         R4 2
       20 LOADK                            R5 K17 ["Cat"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R4 R3 K7 ["ButtonA"]
       24 GETUPVAL                         R4 2
       25 LOADK                            R5 K18 ["Dog"]
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R4 R3 K8 ["ButtonB"]
       29 GETUPVAL                         R4 2
       30 LOADK                            R5 K19 ["Mouse"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K9 ["ButtonC"]
       34 GETUPVAL                         R4 2
       35 LOADK                            R5 K20 ["Horse"]
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R4 R3 K10 ["ButtonD"]
       39 GETUPVAL                         R4 2
       40 LOADK                            R5 K21 ["Bird"]
       41 CALL                             R4 1 1
       42 SETTABLEKS                       R4 R3 K11 ["ButtonE"]
       44 GETUPVAL                         R4 2
       45 LOADK                            R5 K22 ["Jellyfish"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K12 ["ButtonF"]
       49 GETUPVAL                         R4 2
       50 LOADK                            R5 K23 ["Caterpiller"]
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K13 ["ButtonG"]
       54 GETUPVAL                         R4 2
       55 LOADK                            R5 K24 ["Badger"]
       56 CALL                             R4 1 1
       57 SETTABLEKS                       R4 R3 K14 ["ButtonH"]
       59 GETUPVAL                         R4 2
       60 LOADK                            R5 K25 ["Catfish"]
       61 CALL                             R4 1 1
       62 SETTABLEKS                       R4 R3 K15 ["ButtonI"]
       64 CALL                             R0 3 -1
       65 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["DEPRECATED_Button"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["ScrollingFrame"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Util"]
       38 GETTABLEKS                       R5 R6 K12 ["LayoutOrderIterator"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R4 K13 ["new"]
       43 CALL                             R5 0 1
       44 DUPCLOSURE                       R6 K14 [PROTO_1]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 DUPCLOSURE                       R7 K15 [PROTO_2]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 RETURN                           R7 1
