PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["onChanged"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onFocusLost"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["current"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["useRef"]
        8 LOADK                            R4 K1 [""]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R6 0 1
       19 GETTABLEKS                       R7 R0 K4 ["onChanged"]
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R7 0 1
       32 GETTABLEKS                       R8 R0 K5 ["onFocusLost"]
       34 SETLIST                          R7 R8 1 [1]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K6 ["createElement"]
       40 GETUPVAL                         R7 1
       41 DUPTABLE                         R8 K14 [{["text"], ["size"], ["placeholder"] = "Search for a flag", ["onChanged"], ["onFocusLost"], ["width"], ["LayoutOrder"], ["testId"]}]
       42 SETTABLEKS                       R1 R8 K7 ["text"]
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R9 R9 K15 ["XSmall"]
       47 SETTABLEKS                       R9 R8 K8 ["size"]
       49 SETTABLEKS                       R4 R8 K4 ["onChanged"]
       51 SETTABLEKS                       R5 R8 K5 ["onFocusLost"]
       53 GETTABLEKS                       R9 R0 K11 ["width"]
       55 JUMPIF                           R9 ; [+5]
       56 GETIMPORT                        R9 K18 [UDim.new]
       58 LOADN                            R10 1
       59 LOADN                            R11 0
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K11 ["width"]
       63 GETTABLEKS                       R9 R0 K12 ["LayoutOrder"]
       65 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       67 GETTABLEKS                       R9 R0 K13 ["testId"]
       69 SETTABLEKS                       R9 R8 K13 ["testId"]
       71 CALL                             R6 2 -1
       72 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["SearchInput"]
       21 GETTABLEKS                       R5 R3 K10 ["Enums"]
       23 GETTABLEKS                       R5 R5 K11 ["InputSize"]
       25 DUPCLOSURE                       R6 K12 [PROTO_2]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R5
       29 GETTABLEKS                       R7 R2 K13 ["memo"]
       31 MOVE                             R8 R6
       32 CALL                             R7 1 -1
       33 RETURN                           R7 -1
