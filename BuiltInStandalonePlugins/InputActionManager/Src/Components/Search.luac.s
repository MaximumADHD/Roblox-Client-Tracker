PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSearchActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 LOADK                            R3 K3 [""]
       11 CALL                             R2 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R6 0 1
       20 MOVE                             R7 R2
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R7 0 0
       31 CALL                             R5 2 1
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K5 ["createElement"]
       35 GETUPVAL                         R7 2
       36 DUPTABLE                         R8 K15 [{"leadingIcon", "label", "placeholder", "onChanged", "onReturnPressed", "size", "text", "width", "testId"}]
       37 LOADK                            R9 K16 ["icons/common/search"]
       38 SETTABLEKS                       R9 R8 K6 ["leadingIcon"]
       40 LOADK                            R9 K3 [""]
       41 SETTABLEKS                       R9 R8 K7 ["label"]
       43 LOADK                            R9 K17 ["Search"]
       44 SETTABLEKS                       R9 R8 K8 ["placeholder"]
       46 SETTABLEKS                       R5 R8 K9 ["onChanged"]
       48 SETTABLEKS                       R4 R8 K10 ["onReturnPressed"]
       50 GETUPVAL                         R10 3
       51 GETTABLEKS                       R9 R10 K18 ["Medium"]
       53 SETTABLEKS                       R9 R8 K11 ["size"]
       55 SETTABLEKS                       R2 R8 K12 ["text"]
       57 GETIMPORT                        R9 K21 [UDim.new]
       59 LOADN                            R10 1
       60 LOADN                            R11 0
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K13 ["width"]
       64 LOADK                            R9 K22 ["search-bar"]
       65 SETTABLEKS                       R9 R8 K14 ["testId"]
       67 CALL                             R6 2 -1
       68 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R5 K5 [require]
       23 GETTABLEKS                       R7 R0 K6 ["Packages"]
       25 GETTABLEKS                       R6 R7 K9 ["StudioFoundation"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R4 R5 K10 ["Contexts"]
       30 GETTABLEKS                       R3 R4 K11 ["Localization"]
       32 GETTABLEKS                       R4 R2 K12 ["TextInput"]
       34 GETTABLEKS                       R6 R2 K13 ["Enums"]
       36 GETTABLEKS                       R5 R6 K14 ["InputSize"]
       38 DUPCLOSURE                       R6 K15 [PROTO_2]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 RETURN                           R6 1
