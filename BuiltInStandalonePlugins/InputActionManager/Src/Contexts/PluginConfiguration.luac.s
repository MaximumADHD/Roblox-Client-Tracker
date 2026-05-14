PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["Fire"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 SETTABLE                         R1 R2 R0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["new"]
        6 CALL                             R2 0 -1
        7 CALL                             R1 -1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["useRef"]
       11 GETIMPORT                        R3 K3 [Vector2.new]
       13 LOADN                            R4 128
       14 LOADN                            R5 224
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R5 0 1
       25 MOVE                             R6 R2
       26 SETLIST                          R5 R6 1 [1]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K0 ["useRef"]
       32 NEWTABLE                         R5 0 0
       34 CALL                             R4 1 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R4
       40 NEWTABLE                         R7 0 1
       42 MOVE                             R8 R4
       43 SETLIST                          R7 R8 1 [1]
       45 CALL                             R5 2 1
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       49 NEWCLOSURE                       R7 P2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 NEWTABLE                         R8 0 0
       54 CALL                             R6 2 0
       55 DUPTABLE                         R6 K11 [{"expansionsRef", "onExpansionsChanged", "size", "sizeChangedSignal", "onSizeChanged"}]
       56 SETTABLEKS                       R4 R6 K6 ["expansionsRef"]
       58 SETTABLEKS                       R5 R6 K7 ["onExpansionsChanged"]
       60 GETTABLEKS                       R7 R2 K12 ["current"]
       62 SETTABLEKS                       R7 R6 K8 ["size"]
       64 GETTABLEKS                       R7 R1 K12 ["current"]
       66 SETTABLEKS                       R7 R6 K9 ["sizeChangedSignal"]
       68 SETTABLEKS                       R3 R6 K10 ["onSizeChanged"]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K13 ["createElement"]
       73 GETUPVAL                         R8 2
       74 GETTABLEKS                       R8 R8 K14 ["Provider"]
       76 DUPTABLE                         R9 K16 [{"value"}]
       77 SETTABLEKS                       R6 R9 K15 ["value"]
       79 GETTABLEKS                       R10 R0 K17 ["children"]
       81 CALL                             R7 3 -1
       82 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Signal"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 DUPTABLE                         R5 K17 [{"expansionsRef", "onExpansionsChanged", "onSizeChanged", "size", "sizeChangedSignal"}]
       36 DUPTABLE                         R6 K19 [{"current"}]
       37 NEWTABLE                         R7 0 0
       39 SETTABLEKS                       R7 R6 K18 ["current"]
       41 SETTABLEKS                       R6 R5 K12 ["expansionsRef"]
       43 GETTABLEKS                       R6 R2 K20 ["createUnimplemented"]
       45 LOADK                            R7 K21 ["onExpansionChanged"]
       46 CALL                             R6 1 1
       47 SETTABLEKS                       R6 R5 K13 ["onExpansionsChanged"]
       49 GETTABLEKS                       R6 R2 K20 ["createUnimplemented"]
       51 LOADK                            R7 K14 ["onSizeChanged"]
       52 CALL                             R6 1 1
       53 SETTABLEKS                       R6 R5 K14 ["onSizeChanged"]
       55 GETIMPORT                        R6 K24 [Vector2.new]
       57 LOADN                            R7 128
       58 LOADN                            R8 224
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R5 K15 ["size"]
       62 GETTABLEKS                       R6 R3 K23 ["new"]
       64 CALL                             R6 0 1
       65 SETTABLEKS                       R6 R5 K16 ["sizeChangedSignal"]
       67 GETTABLEKS                       R6 R1 K25 ["createContext"]
       69 MOVE                             R7 R5
       70 CALL                             R6 1 1
       71 DUPCLOSURE                       R7 K26 [PROTO_5]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R6
       75 DUPTABLE                         R8 K29 [{"Context", "Provider"}]
       76 SETTABLEKS                       R6 R8 K27 ["Context"]
       78 SETTABLEKS                       R7 R8 K28 ["Provider"]
       80 RETURN                           R8 1
