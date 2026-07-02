PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R1 K0 ["icons/common/safety"]
        2 JUMP                             ; [+1]
        3 LOADNIL                          R1
        4 NEWTABLE                         R2 0 4
        6 DUPTABLE                         R3 K5 [{["id"] = "A", ["text"] = "Item A"}]
        7 DUPTABLE                         R4 K10 [{["id"] = "B", ["text"] = "Item B", ["isDisabled"] = True}]
        8 DUPTABLE                         R5 K13 [{["id"] = "G", ["text"] = "Sie dürfen das Geschwindigkeitsbegrenzung nicht überschreiten, die Strafe beträgt 100 Euro"}]
        9 DUPTABLE                         R6 K17 [{["id"] = "C", ["text"] = "Item C", ["icon"]}]
       10 SETTABLEKS                       R1 R6 K16 ["icon"]
       12 SETLIST                          R2 R3 4 [1]
       14 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Checking item with value = "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R5 R1 K2 ["hasIcon"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["createElement"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K4 ["Root"]
       17 DUPTABLE                         R7 K13 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label"}]
       18 SETTABLEKS                       R2 R7 K5 ["value"]
       20 GETTABLEKS                       R9 R1 K14 ["hasPlaceholder"]
       22 JUMPIFNOT                        R9 ; [+2]
       23 LOADK                            R8 K15 ["Choose a value"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R8
       26 SETTABLEKS                       R8 R7 K6 ["placeholder"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R8 R7 K7 ["onItemChanged"]
       32 GETTABLEKS                       R8 R1 K8 ["hasError"]
       34 SETTABLEKS                       R8 R7 K8 ["hasError"]
       36 GETTABLEKS                       R8 R1 K9 ["isDisabled"]
       38 SETTABLEKS                       R8 R7 K9 ["isDisabled"]
       40 SETTABLEKS                       R4 R7 K10 ["items"]
       42 GETTABLEKS                       R8 R1 K11 ["size"]
       44 SETTABLEKS                       R8 R7 K11 ["size"]
       46 GETTABLEKS                       R8 R1 K12 ["label"]
       48 SETTABLEKS                       R8 R7 K12 ["label"]
       50 CALL                             R5 2 -1
       51 RETURN                           R5 -1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 LOADN                            R1 100
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 FASTCALL1                        TOSTRING R3 ; [+3]
        7 MOVE                             R5 R3
        8 GETIMPORT                        R4 K1 [tostring]
       10 CALL                             R4 1 1
       11 DUPTABLE                         R7 K7 [{["id"], ["icon"] = "icons/common/robux", ["text"], ["isDisabled"]}]
       12 SETTABLEKS                       R4 R7 K2 ["id"]
       14 LOADK                            R9 K8 ["Item %*"]
       15 MOVE                             R11 R4
       16 NAMECALL                         R9 R9 K9 ["format"]
       18 CALL                             R9 2 1
       19 MOVE                             R8 R9
       20 SETTABLEKS                       R8 R7 K5 ["text"]
       22 MODK                             R9 R3 K10 [7]
       23 JUMPIFEQKN                       R9 K11 [0] ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 SETTABLEKS                       R8 R7 K6 ["isDisabled"]
       29 FASTCALL2                        TABLE_INSERT R0 R7 ; [+4]
       31 MOVE                             R6 R0
       32 GETIMPORT                        R5 K14 [table.insert]
       34 CALL                             R5 2 0
       35 FORNLOOP                         R1
       36 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Checking item with value = "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       10 DUPCLOSURE                       R5 K3 [PROTO_3]
       11 NEWTABLE                         R6 0 0
       13 CALL                             R4 2 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["createElement"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K5 ["Root"]
       20 DUPTABLE                         R7 K17 [{["value"], ["placeholder"], ["onItemChanged"], ["hasError"], ["isDisabled"], ["items"], ["size"], ["label"], ["width"], ["maxHeight"] = 500}]
       21 SETTABLEKS                       R2 R7 K6 ["value"]
       23 GETTABLEKS                       R9 R1 K18 ["hasPlaceholder"]
       25 JUMPIFNOT                        R9 ; [+2]
       26 LOADK                            R8 K19 ["Choose a value"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R8
       29 SETTABLEKS                       R8 R7 K7 ["placeholder"]
       31 NEWCLOSURE                       R8 P1
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R8 R7 K8 ["onItemChanged"]
       35 GETTABLEKS                       R8 R1 K9 ["hasError"]
       37 SETTABLEKS                       R8 R7 K9 ["hasError"]
       39 GETTABLEKS                       R8 R1 K10 ["isDisabled"]
       41 SETTABLEKS                       R8 R7 K10 ["isDisabled"]
       43 SETTABLEKS                       R4 R7 K11 ["items"]
       45 GETTABLEKS                       R8 R1 K12 ["size"]
       47 SETTABLEKS                       R8 R7 K12 ["size"]
       49 GETTABLEKS                       R8 R1 K13 ["label"]
       51 SETTABLEKS                       R8 R7 K13 ["label"]
       53 GETIMPORT                        R8 K22 [UDim.new]
       55 LOADN                            R9 0
       56 LOADN                            R10 150
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K14 ["width"]
       60 CALL                             R5 2 -1
       61 RETURN                           R5 -1

PROTO_6:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Checking item with value = "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["FoundationDropdownGroups"]
       10 JUMPIF                           R4 ; [+7]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["createElement"]
       14 GETUPVAL                         R5 2
       15 DUPTABLE                         R6 K8 [{["tag"] = "auto-xy", ["Text"] = "Enable FoundationDropdownGroups to see the story"}]
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["createElement"]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R5 R5 K9 ["Root"]
       24 DUPTABLE                         R6 K18 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label"}]
       25 SETTABLEKS                       R2 R6 K10 ["value"]
       27 GETTABLEKS                       R8 R1 K19 ["hasPlaceholder"]
       29 JUMPIFNOT                        R8 ; [+2]
       30 LOADK                            R7 K20 ["Choose a value"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R7
       33 SETTABLEKS                       R7 R6 K11 ["placeholder"]
       35 NEWCLOSURE                       R7 P0
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R7 R6 K12 ["onItemChanged"]
       39 GETTABLEKS                       R7 R1 K13 ["hasError"]
       41 SETTABLEKS                       R7 R6 K13 ["hasError"]
       43 GETTABLEKS                       R7 R1 K14 ["isDisabled"]
       45 SETTABLEKS                       R7 R6 K14 ["isDisabled"]
       47 NEWTABLE                         R7 0 3
       49 DUPTABLE                         R8 K23 [{["title"] = "First title", ["items"]}]
       50 NEWTABLE                         R9 0 2
       52 DUPTABLE                         R10 K30 [{["id"] = "a1", ["icon"] = "icons/common/robux", ["text"] = "Alpha 1"}]
       53 DUPTABLE                         R11 K33 [{["id"] = "a2", ["text"] = "Alpha 2"}]
       54 SETLIST                          R9 R10 2 [1]
       56 SETTABLEKS                       R9 R8 K15 ["items"]
       58 DUPTABLE                         R9 K34 [{"items"}]
       59 NEWTABLE                         R10 0 2
       61 DUPTABLE                         R11 K37 [{["id"] = "b1", ["text"] = "Beta 1"}]
       62 DUPTABLE                         R12 K41 [{["id"] = "b2", ["isDisabled"] = True, ["text"] = "Beta 2 (disabled)"}]
       63 SETLIST                          R10 R11 2 [1]
       65 SETTABLEKS                       R10 R9 K15 ["items"]
       67 DUPTABLE                         R10 K34 [{"items"}]
       68 NEWTABLE                         R11 0 1
       70 DUPTABLE                         R12 K44 [{["id"] = "c1", ["text"] = "Untitled group item"}]
       71 SETLIST                          R11 R12 1 [1]
       73 SETTABLEKS                       R11 R10 K15 ["items"]
       75 SETLIST                          R7 R8 3 [1]
       77 SETTABLEKS                       R7 R6 K15 ["items"]
       79 GETTABLEKS                       R7 R1 K16 ["size"]
       81 SETTABLEKS                       R7 R6 K16 ["size"]
       83 GETTABLEKS                       R7 R1 K17 ["label"]
       85 SETTABLEKS                       R7 R6 K17 ["label"]
       87 CALL                             R4 2 -1
       88 RETURN                           R4 -1

PROTO_8:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Checking item with value = "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["createElement"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["Root"]
       13 DUPTABLE                         R6 K13 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label", "width"}]
       14 SETTABLEKS                       R2 R6 K4 ["value"]
       16 GETTABLEKS                       R8 R1 K14 ["hasPlaceholder"]
       18 JUMPIFNOT                        R8 ; [+2]
       19 LOADK                            R7 K15 ["Choose a value"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R7
       22 SETTABLEKS                       R7 R6 K5 ["placeholder"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R7 R6 K6 ["onItemChanged"]
       28 GETTABLEKS                       R7 R1 K7 ["hasError"]
       30 SETTABLEKS                       R7 R6 K7 ["hasError"]
       32 GETTABLEKS                       R7 R1 K8 ["isDisabled"]
       34 SETTABLEKS                       R7 R6 K8 ["isDisabled"]
       36 NEWTABLE                         R7 0 2
       38 DUPTABLE                         R8 K20 [{["id"] = "A", ["text"] = "Item A"}]
       39 DUPTABLE                         R9 K24 [{["id"] = "B", ["text"] = "Item B", ["isDisabled"] = True}]
       40 SETLIST                          R7 R8 2 [1]
       42 SETTABLEKS                       R7 R6 K9 ["items"]
       44 GETTABLEKS                       R7 R1 K10 ["size"]
       46 SETTABLEKS                       R7 R6 K10 ["size"]
       48 GETTABLEKS                       R7 R1 K11 ["label"]
       50 SETTABLEKS                       R7 R6 K11 ["label"]
       52 GETIMPORT                        R7 K27 [UDim.new]
       54 LOADN                            R8 0
       55 LOADN                            R9 150
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K12 ["width"]
       59 CALL                             R4 2 -1
       60 RETURN                           R4 -1

PROTO_10:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Checking item with value = "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R5 R1 K2 ["hasIcon"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["createElement"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K4 ["Root"]
       17 DUPTABLE                         R7 K14 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label", "width"}]
       18 SETTABLEKS                       R2 R7 K5 ["value"]
       20 GETTABLEKS                       R9 R1 K15 ["hasPlaceholder"]
       22 JUMPIFNOT                        R9 ; [+2]
       23 LOADK                            R8 K16 ["Choose a value"]
       24 JUMP                             ; [+1]
       25 LOADNIL                          R8
       26 SETTABLEKS                       R8 R7 K6 ["placeholder"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R8 R7 K7 ["onItemChanged"]
       32 GETTABLEKS                       R8 R1 K8 ["hasError"]
       34 SETTABLEKS                       R8 R7 K8 ["hasError"]
       36 GETTABLEKS                       R8 R1 K9 ["isDisabled"]
       38 SETTABLEKS                       R8 R7 K9 ["isDisabled"]
       40 SETTABLEKS                       R4 R7 K10 ["items"]
       42 GETTABLEKS                       R8 R1 K11 ["size"]
       44 SETTABLEKS                       R8 R7 K11 ["size"]
       46 GETTABLEKS                       R8 R1 K12 ["label"]
       48 SETTABLEKS                       R8 R7 K12 ["label"]
       50 GETIMPORT                        R8 K19 [UDim.new]
       52 LOADN                            R9 0
       53 LOADN                            R10 150
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K13 ["width"]
       57 CALL                             R5 2 -1
       58 RETURN                           R5 -1

PROTO_12:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Checking item with value = "]
        3 MOVE                             R4 R0
        4 CONCAT                           R2 R3 R4
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["createElement"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["Root"]
       13 DUPTABLE                         R6 K13 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label", "width"}]
       14 SETTABLEKS                       R2 R6 K4 ["value"]
       16 GETTABLEKS                       R8 R1 K14 ["hasPlaceholder"]
       18 JUMPIFNOT                        R8 ; [+2]
       19 LOADK                            R7 K15 ["Choose a value"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R7
       22 SETTABLEKS                       R7 R6 K5 ["placeholder"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R7 R6 K6 ["onItemChanged"]
       28 GETTABLEKS                       R7 R1 K7 ["hasError"]
       30 SETTABLEKS                       R7 R6 K7 ["hasError"]
       32 GETTABLEKS                       R7 R1 K8 ["isDisabled"]
       34 SETTABLEKS                       R7 R6 K8 ["isDisabled"]
       36 NEWTABLE                         R7 0 2
       38 DUPTABLE                         R8 K20 [{["id"] = "A", ["text"] = "Item A"}]
       39 DUPTABLE                         R9 K24 [{["id"] = "B", ["text"] = "Item B", ["isDisabled"] = True}]
       40 SETLIST                          R7 R8 2 [1]
       42 SETTABLEKS                       R7 R6 K9 ["items"]
       44 GETTABLEKS                       R7 R1 K10 ["size"]
       46 SETTABLEKS                       R7 R6 K10 ["size"]
       48 GETTABLEKS                       R7 R1 K11 ["label"]
       50 SETTABLEKS                       R7 R6 K11 ["label"]
       52 GETIMPORT                        R7 K27 [UDim.new]
       54 LOADN                            R8 1
       55 LOADN                            R9 0
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K12 ["width"]
       59 CALL                             R4 2 -1
       60 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Dropdown"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Utility"]
       51 GETTABLEKS                       R9 R9 K16 ["Flags"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K17 [PROTO_0]
       55 DUPTABLE                         R10 K22 [{["summary"] = "Dropdown component", ["stories"], ["controls"]}]
       56 NEWTABLE                         R11 0 6
       58 DUPTABLE                         R12 K26 [{["name"] = "Base", ["story"]}]
       59 DUPCLOSURE                       R13 K27 [PROTO_2]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R13 R12 K25 ["story"]
       65 DUPTABLE                         R13 K29 [{["name"] = "Overflow", ["story"]}]
       66 DUPCLOSURE                       R14 K30 [PROTO_5]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R14 R13 K25 ["story"]
       71 DUPTABLE                         R14 K32 [{["name"] = "With item groups", ["story"]}]
       72 DUPCLOSURE                       R15 K33 [PROTO_7]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R5
       77 SETTABLEKS                       R15 R14 K25 ["story"]
       79 DUPTABLE                         R15 K35 [{["name"] = "Narrow dropdown narrow items", ["story"]}]
       80 DUPCLOSURE                       R16 K36 [PROTO_9]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R5
       83 SETTABLEKS                       R16 R15 K25 ["story"]
       85 DUPTABLE                         R16 K38 [{["name"] = "Narrow dropdown wider items", ["story"]}]
       86 DUPCLOSURE                       R17 K39 [PROTO_11]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R5
       90 SETTABLEKS                       R17 R16 K25 ["story"]
       92 DUPTABLE                         R17 K41 [{["name"] = "Wide dropdown narrow items", ["story"]}]
       93 DUPCLOSURE                       R18 K42 [PROTO_13]
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R5
       96 SETTABLEKS                       R18 R17 K25 ["story"]
       98 SETLIST                          R11 R12 6 [1]
      100 SETTABLEKS                       R11 R10 K20 ["stories"]
      102 DUPTABLE                         R11 K52 [{["size"], ["isDisabled"] = False, ["label"] = "Dropdown Label", ["hasError"] = False, ["hasIcon"] = True, ["hasPlaceholder"] = False}]
      103 GETTABLEKS                       R12 R3 K53 ["values"]
      105 MOVE                             R13 R7
      106 CALL                             R12 1 1
      107 SETTABLEKS                       R12 R11 K43 ["size"]
      109 SETTABLEKS                       R11 R10 K21 ["controls"]
      111 RETURN                           R10 1
