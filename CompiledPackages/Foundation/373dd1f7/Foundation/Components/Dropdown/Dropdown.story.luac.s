PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADK                            R1 K0 ["icons/common/safety"]
        2 JUMP                             ; [+1]
        3 LOADNIL                          R1
        4 NEWTABLE                         R2 0 4
        6 DUPTABLE                         R3 K3 [{"id", "text"}]
        7 LOADK                            R4 K4 ["A"]
        8 SETTABLEKS                       R4 R3 K1 ["id"]
       10 LOADK                            R4 K5 ["Item A"]
       11 SETTABLEKS                       R4 R3 K2 ["text"]
       13 DUPTABLE                         R4 K7 [{"id", "text", "isDisabled"}]
       14 LOADK                            R5 K8 ["B"]
       15 SETTABLEKS                       R5 R4 K1 ["id"]
       17 LOADK                            R5 K9 ["Item B"]
       18 SETTABLEKS                       R5 R4 K2 ["text"]
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K6 ["isDisabled"]
       23 DUPTABLE                         R5 K3 [{"id", "text"}]
       24 LOADK                            R6 K10 ["G"]
       25 SETTABLEKS                       R6 R5 K1 ["id"]
       27 LOADK                            R6 K11 ["Sie dürfen das Geschwindigkeitsbegrenzung nicht überschreiten, die Strafe beträgt 100 Euro"]
       28 SETTABLEKS                       R6 R5 K2 ["text"]
       30 DUPTABLE                         R6 K13 [{"id", "text", "icon"}]
       31 LOADK                            R7 K14 ["C"]
       32 SETTABLEKS                       R7 R6 K1 ["id"]
       34 LOADK                            R7 K15 ["Item C"]
       35 SETTABLEKS                       R7 R6 K2 ["text"]
       37 SETTABLEKS                       R1 R6 K12 ["icon"]
       39 SETLIST                          R2 R3 4 [1]
       41 RETURN                           R2 1

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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R5 R1 K2 ["hasIcon"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K3 ["createElement"]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K4 ["Root"]
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
       11 DUPTABLE                         R7 K6 [{"id", "icon", "text", "isDisabled"}]
       12 SETTABLEKS                       R4 R7 K2 ["id"]
       14 LOADK                            R8 K7 ["icons/common/robux"]
       15 SETTABLEKS                       R8 R7 K3 ["icon"]
       17 LOADK                            R9 K8 ["Item %*"]
       18 MOVE                             R11 R4
       19 NAMECALL                         R9 R9 K9 ["format"]
       21 CALL                             R9 2 1
       22 MOVE                             R8 R9
       23 SETTABLEKS                       R8 R7 K4 ["text"]
       25 MODK                             R9 R3 K10 [7]
       26 JUMPIFEQKN                       R9 K11 [0] ; [+2]
       28 LOADB                            R8 0 +1
       29 LOADB                            R8 1
       30 SETTABLEKS                       R8 R7 K5 ["isDisabled"]
       32 FASTCALL2                        TABLE_INSERT R0 R7 ; [+4]
       34 MOVE                             R6 R0
       35 GETIMPORT                        R5 K14 [table.insert]
       37 CALL                             R5 2 0
       38 FORNLOOP                         R1
       39 RETURN                           R0 1

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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       10 DUPCLOSURE                       R5 K3 [PROTO_3]
       11 NEWTABLE                         R6 0 0
       13 CALL                             R4 2 1
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K4 ["createElement"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K5 ["Root"]
       20 DUPTABLE                         R7 K16 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label", "width", "maxHeight"}]
       21 SETTABLEKS                       R2 R7 K6 ["value"]
       23 GETTABLEKS                       R9 R1 K17 ["hasPlaceholder"]
       25 JUMPIFNOT                        R9 ; [+2]
       26 LOADK                            R8 K18 ["Choose a value"]
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
       53 GETIMPORT                        R8 K21 [UDim.new]
       55 LOADN                            R9 0
       56 LOADN                            R10 150
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K14 ["width"]
       60 LOADN                            R8 244
       61 SETTABLEKS                       R8 R7 K15 ["maxHeight"]
       63 CALL                             R5 2 -1
       64 RETURN                           R5 -1

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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["createElement"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K3 ["Root"]
       13 DUPTABLE                         R6 K12 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label"}]
       14 SETTABLEKS                       R2 R6 K4 ["value"]
       16 GETTABLEKS                       R8 R1 K13 ["hasPlaceholder"]
       18 JUMPIFNOT                        R8 ; [+2]
       19 LOADK                            R7 K14 ["Choose a value"]
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
       36 NEWTABLE                         R7 0 3
       38 DUPTABLE                         R8 K16 [{"title", "items"}]
       39 LOADK                            R9 K17 ["First title"]
       40 SETTABLEKS                       R9 R8 K15 ["title"]
       42 NEWTABLE                         R9 0 2
       44 DUPTABLE                         R10 K21 [{"id", "icon", "text"}]
       45 LOADK                            R11 K22 ["a1"]
       46 SETTABLEKS                       R11 R10 K18 ["id"]
       48 LOADK                            R11 K23 ["icons/common/robux"]
       49 SETTABLEKS                       R11 R10 K19 ["icon"]
       51 LOADK                            R11 K24 ["Alpha 1"]
       52 SETTABLEKS                       R11 R10 K20 ["text"]
       54 DUPTABLE                         R11 K25 [{"id", "text"}]
       55 LOADK                            R12 K26 ["a2"]
       56 SETTABLEKS                       R12 R11 K18 ["id"]
       58 LOADK                            R12 K27 ["Alpha 2"]
       59 SETTABLEKS                       R12 R11 K20 ["text"]
       61 SETLIST                          R9 R10 2 [1]
       63 SETTABLEKS                       R9 R8 K9 ["items"]
       65 DUPTABLE                         R9 K28 [{"items"}]
       66 NEWTABLE                         R10 0 2
       68 DUPTABLE                         R11 K25 [{"id", "text"}]
       69 LOADK                            R12 K29 ["b1"]
       70 SETTABLEKS                       R12 R11 K18 ["id"]
       72 LOADK                            R12 K30 ["Beta 1"]
       73 SETTABLEKS                       R12 R11 K20 ["text"]
       75 DUPTABLE                         R12 K31 [{"id", "isDisabled", "text"}]
       76 LOADK                            R13 K32 ["b2"]
       77 SETTABLEKS                       R13 R12 K18 ["id"]
       79 LOADB                            R13 1
       80 SETTABLEKS                       R13 R12 K8 ["isDisabled"]
       82 LOADK                            R13 K33 ["Beta 2 (disabled)"]
       83 SETTABLEKS                       R13 R12 K20 ["text"]
       85 SETLIST                          R10 R11 2 [1]
       87 SETTABLEKS                       R10 R9 K9 ["items"]
       89 DUPTABLE                         R10 K28 [{"items"}]
       90 NEWTABLE                         R11 0 1
       92 DUPTABLE                         R12 K25 [{"id", "text"}]
       93 LOADK                            R13 K34 ["c1"]
       94 SETTABLEKS                       R13 R12 K18 ["id"]
       96 LOADK                            R13 K35 ["Untitled group item"]
       97 SETTABLEKS                       R13 R12 K20 ["text"]
       99 SETLIST                          R11 R12 1 [1]
      101 SETTABLEKS                       R11 R10 K9 ["items"]
      103 SETLIST                          R7 R8 3 [1]
      105 SETTABLEKS                       R7 R6 K9 ["items"]
      107 GETTABLEKS                       R7 R1 K10 ["size"]
      109 SETTABLEKS                       R7 R6 K10 ["size"]
      111 GETTABLEKS                       R7 R1 K11 ["label"]
      113 SETTABLEKS                       R7 R6 K11 ["label"]
      115 CALL                             R4 2 -1
      116 RETURN                           R4 -1

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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["createElement"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K3 ["Root"]
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
       38 DUPTABLE                         R8 K18 [{"id", "text"}]
       39 LOADK                            R9 K19 ["A"]
       40 SETTABLEKS                       R9 R8 K16 ["id"]
       42 LOADK                            R9 K20 ["Item A"]
       43 SETTABLEKS                       R9 R8 K17 ["text"]
       45 DUPTABLE                         R9 K21 [{"id", "text", "isDisabled"}]
       46 LOADK                            R10 K22 ["B"]
       47 SETTABLEKS                       R10 R9 K16 ["id"]
       49 LOADK                            R10 K23 ["Item B"]
       50 SETTABLEKS                       R10 R9 K17 ["text"]
       52 LOADB                            R10 1
       53 SETTABLEKS                       R10 R9 K8 ["isDisabled"]
       55 SETLIST                          R7 R8 2 [1]
       57 SETTABLEKS                       R7 R6 K9 ["items"]
       59 GETTABLEKS                       R7 R1 K10 ["size"]
       61 SETTABLEKS                       R7 R6 K10 ["size"]
       63 GETTABLEKS                       R7 R1 K11 ["label"]
       65 SETTABLEKS                       R7 R6 K11 ["label"]
       67 GETIMPORT                        R7 K26 [UDim.new]
       69 LOADN                            R8 0
       70 LOADN                            R9 150
       71 CALL                             R7 2 1
       72 SETTABLEKS                       R7 R6 K12 ["width"]
       74 CALL                             R4 2 -1
       75 RETURN                           R4 -1

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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R5 R1 K2 ["hasIcon"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K3 ["createElement"]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K4 ["Root"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K2 ["createElement"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K3 ["Root"]
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
       38 DUPTABLE                         R8 K18 [{"id", "text"}]
       39 LOADK                            R9 K19 ["A"]
       40 SETTABLEKS                       R9 R8 K16 ["id"]
       42 LOADK                            R9 K20 ["Item A"]
       43 SETTABLEKS                       R9 R8 K17 ["text"]
       45 DUPTABLE                         R9 K21 [{"id", "text", "isDisabled"}]
       46 LOADK                            R10 K22 ["B"]
       47 SETTABLEKS                       R10 R9 K16 ["id"]
       49 LOADK                            R10 K23 ["Item B"]
       50 SETTABLEKS                       R10 R9 K17 ["text"]
       52 LOADB                            R10 1
       53 SETTABLEKS                       R10 R9 K8 ["isDisabled"]
       55 SETLIST                          R7 R8 2 [1]
       57 SETTABLEKS                       R7 R6 K9 ["items"]
       59 GETTABLEKS                       R7 R1 K10 ["size"]
       61 SETTABLEKS                       R7 R6 K10 ["size"]
       63 GETTABLEKS                       R7 R1 K11 ["label"]
       65 SETTABLEKS                       R7 R6 K11 ["label"]
       67 GETIMPORT                        R7 K26 [UDim.new]
       69 LOADN                            R8 1
       70 LOADN                            R9 0
       71 CALL                             R7 2 1
       72 SETTABLEKS                       R7 R6 K12 ["width"]
       74 CALL                             R4 2 -1
       75 RETURN                           R4 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Dropdown"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["InputSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["Types"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K14 [PROTO_0]
       41 DUPTABLE                         R8 K18 [{"summary", "stories", "controls"}]
       42 LOADK                            R9 K19 ["Dropdown component"]
       43 SETTABLEKS                       R9 R8 K15 ["summary"]
       45 NEWTABLE                         R9 0 6
       47 DUPTABLE                         R10 K22 [{"name", "story"}]
       48 LOADK                            R11 K23 ["Base"]
       49 SETTABLEKS                       R11 R10 K20 ["name"]
       51 DUPCLOSURE                       R11 K24 [PROTO_2]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R11 R10 K21 ["story"]
       57 DUPTABLE                         R11 K22 [{"name", "story"}]
       58 LOADK                            R12 K25 ["Overflow"]
       59 SETTABLEKS                       R12 R11 K20 ["name"]
       61 DUPCLOSURE                       R12 K26 [PROTO_5]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 SETTABLEKS                       R12 R11 K21 ["story"]
       66 DUPTABLE                         R12 K22 [{"name", "story"}]
       67 LOADK                            R13 K27 ["With item groups"]
       68 SETTABLEKS                       R13 R12 K20 ["name"]
       70 DUPCLOSURE                       R13 K28 [PROTO_7]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R13 R12 K21 ["story"]
       75 DUPTABLE                         R13 K22 [{"name", "story"}]
       76 LOADK                            R14 K29 ["Narrow dropdown narrow items"]
       77 SETTABLEKS                       R14 R13 K20 ["name"]
       79 DUPCLOSURE                       R14 K30 [PROTO_9]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R14 R13 K21 ["story"]
       84 DUPTABLE                         R14 K22 [{"name", "story"}]
       85 LOADK                            R15 K31 ["Narrow dropdown wider items"]
       86 SETTABLEKS                       R15 R14 K20 ["name"]
       88 DUPCLOSURE                       R15 K32 [PROTO_11]
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R15 R14 K21 ["story"]
       94 DUPTABLE                         R15 K22 [{"name", "story"}]
       95 LOADK                            R16 K33 ["Wide dropdown narrow items"]
       96 SETTABLEKS                       R16 R15 K20 ["name"]
       98 DUPCLOSURE                       R16 K34 [PROTO_13]
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R16 R15 K21 ["story"]
      103 SETLIST                          R9 R10 6 [1]
      105 SETTABLEKS                       R9 R8 K16 ["stories"]
      107 DUPTABLE                         R9 K41 [{"size", "isDisabled", "label", "hasError", "hasIcon", "hasPlaceholder"}]
      108 GETTABLEKS                       R10 R3 K42 ["values"]
      110 MOVE                             R11 R5
      111 CALL                             R10 1 1
      112 SETTABLEKS                       R10 R9 K35 ["size"]
      114 LOADB                            R10 0
      115 SETTABLEKS                       R10 R9 K36 ["isDisabled"]
      117 LOADK                            R10 K43 ["Dropdown Label"]
      118 SETTABLEKS                       R10 R9 K37 ["label"]
      120 LOADB                            R10 0
      121 SETTABLEKS                       R10 R9 K38 ["hasError"]
      123 LOADB                            R10 1
      124 SETTABLEKS                       R10 R9 K39 ["hasIcon"]
      126 LOADB                            R10 0
      127 SETTABLEKS                       R10 R9 K40 ["hasPlaceholder"]
      129 SETTABLEKS                       R9 R8 K17 ["controls"]
      131 RETURN                           R8 1
