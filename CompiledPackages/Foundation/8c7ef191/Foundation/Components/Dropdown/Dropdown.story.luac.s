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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["FoundationDropdownGroups"]
       10 JUMPIF                           R4 ; [+13]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["createElement"]
       14 GETUPVAL                         R5 2
       15 DUPTABLE                         R6 K6 [{"tag", "Text"}]
       16 LOADK                            R7 K7 ["auto-xy"]
       17 SETTABLEKS                       R7 R6 K4 ["tag"]
       19 LOADK                            R7 K8 ["Enable FoundationDropdownGroups to see the story"]
       20 SETTABLEKS                       R7 R6 K5 ["Text"]
       22 CALL                             R4 2 -1
       23 RETURN                           R4 -1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K3 ["createElement"]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K9 ["Root"]
       30 DUPTABLE                         R6 K18 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "label"}]
       31 SETTABLEKS                       R2 R6 K10 ["value"]
       33 GETTABLEKS                       R8 R1 K19 ["hasPlaceholder"]
       35 JUMPIFNOT                        R8 ; [+2]
       36 LOADK                            R7 K20 ["Choose a value"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R7
       39 SETTABLEKS                       R7 R6 K11 ["placeholder"]
       41 NEWCLOSURE                       R7 P0
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R7 R6 K12 ["onItemChanged"]
       45 GETTABLEKS                       R7 R1 K13 ["hasError"]
       47 SETTABLEKS                       R7 R6 K13 ["hasError"]
       49 GETTABLEKS                       R7 R1 K14 ["isDisabled"]
       51 SETTABLEKS                       R7 R6 K14 ["isDisabled"]
       53 NEWTABLE                         R7 0 3
       55 DUPTABLE                         R8 K22 [{"title", "items"}]
       56 LOADK                            R9 K23 ["First title"]
       57 SETTABLEKS                       R9 R8 K21 ["title"]
       59 NEWTABLE                         R9 0 2
       61 DUPTABLE                         R10 K27 [{"id", "icon", "text"}]
       62 LOADK                            R11 K28 ["a1"]
       63 SETTABLEKS                       R11 R10 K24 ["id"]
       65 LOADK                            R11 K29 ["icons/common/robux"]
       66 SETTABLEKS                       R11 R10 K25 ["icon"]
       68 LOADK                            R11 K30 ["Alpha 1"]
       69 SETTABLEKS                       R11 R10 K26 ["text"]
       71 DUPTABLE                         R11 K31 [{"id", "text"}]
       72 LOADK                            R12 K32 ["a2"]
       73 SETTABLEKS                       R12 R11 K24 ["id"]
       75 LOADK                            R12 K33 ["Alpha 2"]
       76 SETTABLEKS                       R12 R11 K26 ["text"]
       78 SETLIST                          R9 R10 2 [1]
       80 SETTABLEKS                       R9 R8 K15 ["items"]
       82 DUPTABLE                         R9 K34 [{"items"}]
       83 NEWTABLE                         R10 0 2
       85 DUPTABLE                         R11 K31 [{"id", "text"}]
       86 LOADK                            R12 K35 ["b1"]
       87 SETTABLEKS                       R12 R11 K24 ["id"]
       89 LOADK                            R12 K36 ["Beta 1"]
       90 SETTABLEKS                       R12 R11 K26 ["text"]
       92 DUPTABLE                         R12 K37 [{"id", "isDisabled", "text"}]
       93 LOADK                            R13 K38 ["b2"]
       94 SETTABLEKS                       R13 R12 K24 ["id"]
       96 LOADB                            R13 1
       97 SETTABLEKS                       R13 R12 K14 ["isDisabled"]
       99 LOADK                            R13 K39 ["Beta 2 (disabled)"]
      100 SETTABLEKS                       R13 R12 K26 ["text"]
      102 SETLIST                          R10 R11 2 [1]
      104 SETTABLEKS                       R10 R9 K15 ["items"]
      106 DUPTABLE                         R10 K34 [{"items"}]
      107 NEWTABLE                         R11 0 1
      109 DUPTABLE                         R12 K31 [{"id", "text"}]
      110 LOADK                            R13 K40 ["c1"]
      111 SETTABLEKS                       R13 R12 K24 ["id"]
      113 LOADK                            R13 K41 ["Untitled group item"]
      114 SETTABLEKS                       R13 R12 K26 ["text"]
      116 SETLIST                          R11 R12 1 [1]
      118 SETTABLEKS                       R11 R10 K15 ["items"]
      120 SETLIST                          R7 R8 3 [1]
      122 SETTABLEKS                       R7 R6 K15 ["items"]
      124 GETTABLEKS                       R7 R1 K16 ["size"]
      126 SETTABLEKS                       R7 R6 K16 ["size"]
      128 GETTABLEKS                       R7 R1 K17 ["label"]
      130 SETTABLEKS                       R7 R6 K17 ["label"]
      132 CALL                             R4 2 -1
      133 RETURN                           R4 -1

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
       55 DUPTABLE                         R10 K21 [{"summary", "stories", "controls"}]
       56 LOADK                            R11 K22 ["Dropdown component"]
       57 SETTABLEKS                       R11 R10 K18 ["summary"]
       59 NEWTABLE                         R11 0 6
       61 DUPTABLE                         R12 K25 [{"name", "story"}]
       62 LOADK                            R13 K26 ["Base"]
       63 SETTABLEKS                       R13 R12 K23 ["name"]
       65 DUPCLOSURE                       R13 K27 [PROTO_2]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R13 R12 K24 ["story"]
       71 DUPTABLE                         R13 K25 [{"name", "story"}]
       72 LOADK                            R14 K28 ["Overflow"]
       73 SETTABLEKS                       R14 R13 K23 ["name"]
       75 DUPCLOSURE                       R14 K29 [PROTO_5]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R14 R13 K24 ["story"]
       80 DUPTABLE                         R14 K25 [{"name", "story"}]
       81 LOADK                            R15 K30 ["With item groups"]
       82 SETTABLEKS                       R15 R14 K23 ["name"]
       84 DUPCLOSURE                       R15 K31 [PROTO_7]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R5
       89 SETTABLEKS                       R15 R14 K24 ["story"]
       91 DUPTABLE                         R15 K25 [{"name", "story"}]
       92 LOADK                            R16 K32 ["Narrow dropdown narrow items"]
       93 SETTABLEKS                       R16 R15 K23 ["name"]
       95 DUPCLOSURE                       R16 K33 [PROTO_9]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R5
       98 SETTABLEKS                       R16 R15 K24 ["story"]
      100 DUPTABLE                         R16 K25 [{"name", "story"}]
      101 LOADK                            R17 K34 ["Narrow dropdown wider items"]
      102 SETTABLEKS                       R17 R16 K23 ["name"]
      104 DUPCLOSURE                       R17 K35 [PROTO_11]
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R5
      108 SETTABLEKS                       R17 R16 K24 ["story"]
      110 DUPTABLE                         R17 K25 [{"name", "story"}]
      111 LOADK                            R18 K36 ["Wide dropdown narrow items"]
      112 SETTABLEKS                       R18 R17 K23 ["name"]
      114 DUPCLOSURE                       R18 K37 [PROTO_13]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R5
      117 SETTABLEKS                       R18 R17 K24 ["story"]
      119 SETLIST                          R11 R12 6 [1]
      121 SETTABLEKS                       R11 R10 K19 ["stories"]
      123 DUPTABLE                         R11 K44 [{"size", "isDisabled", "label", "hasError", "hasIcon", "hasPlaceholder"}]
      124 GETTABLEKS                       R12 R3 K45 ["values"]
      126 MOVE                             R13 R7
      127 CALL                             R12 1 1
      128 SETTABLEKS                       R12 R11 K38 ["size"]
      130 LOADB                            R12 0
      131 SETTABLEKS                       R12 R11 K39 ["isDisabled"]
      133 LOADK                            R12 K46 ["Dropdown Label"]
      134 SETTABLEKS                       R12 R11 K40 ["label"]
      136 LOADB                            R12 0
      137 SETTABLEKS                       R12 R11 K41 ["hasError"]
      139 LOADB                            R12 1
      140 SETTABLEKS                       R12 R11 K42 ["hasIcon"]
      142 LOADB                            R12 0
      143 SETTABLEKS                       R12 R11 K43 ["hasPlaceholder"]
      145 SETTABLEKS                       R11 R10 K20 ["controls"]
      147 RETURN                           R10 1
