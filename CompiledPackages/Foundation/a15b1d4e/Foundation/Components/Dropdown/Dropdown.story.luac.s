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
       17 DUPTABLE                         R7 K14 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "variant", "label"}]
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
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R9 R9 K17 ["FoundationDropdownVariant"]
       49 JUMPIFNOT                        R9 ; [+3]
       50 GETTABLEKS                       R8 R1 K12 ["variant"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R8
       54 SETTABLEKS                       R8 R7 K12 ["variant"]
       56 GETTABLEKS                       R8 R1 K13 ["label"]
       58 SETTABLEKS                       R8 R7 K13 ["label"]
       60 CALL                             R5 2 -1
       61 RETURN                           R5 -1

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
       20 DUPTABLE                         R7 K17 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "variant", "label", "width", "maxHeight"}]
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
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K20 ["FoundationDropdownVariant"]
       52 JUMPIFNOT                        R9 ; [+3]
       53 GETTABLEKS                       R8 R1 K13 ["variant"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R8
       57 SETTABLEKS                       R8 R7 K13 ["variant"]
       59 GETTABLEKS                       R8 R1 K14 ["label"]
       61 SETTABLEKS                       R8 R7 K14 ["label"]
       63 GETIMPORT                        R8 K23 [UDim.new]
       65 LOADN                            R9 0
       66 LOADN                            R10 150
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K15 ["width"]
       70 LOADN                            R8 244
       71 SETTABLEKS                       R8 R7 K16 ["maxHeight"]
       73 CALL                             R5 2 -1
       74 RETURN                           R5 -1

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
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["createElement"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["Root"]
       13 DUPTABLE                         R6 K13 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "variant", "label"}]
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
       36 NEWTABLE                         R7 0 3
       38 DUPTABLE                         R8 K17 [{"title", "items"}]
       39 LOADK                            R9 K18 ["First title"]
       40 SETTABLEKS                       R9 R8 K16 ["title"]
       42 NEWTABLE                         R9 0 2
       44 DUPTABLE                         R10 K22 [{"id", "icon", "text"}]
       45 LOADK                            R11 K23 ["a1"]
       46 SETTABLEKS                       R11 R10 K19 ["id"]
       48 LOADK                            R11 K24 ["icons/common/robux"]
       49 SETTABLEKS                       R11 R10 K20 ["icon"]
       51 LOADK                            R11 K25 ["Alpha 1"]
       52 SETTABLEKS                       R11 R10 K21 ["text"]
       54 DUPTABLE                         R11 K26 [{"id", "text"}]
       55 LOADK                            R12 K27 ["a2"]
       56 SETTABLEKS                       R12 R11 K19 ["id"]
       58 LOADK                            R12 K28 ["Alpha 2"]
       59 SETTABLEKS                       R12 R11 K21 ["text"]
       61 SETLIST                          R9 R10 2 [1]
       63 SETTABLEKS                       R9 R8 K9 ["items"]
       65 DUPTABLE                         R9 K29 [{"items"}]
       66 NEWTABLE                         R10 0 2
       68 DUPTABLE                         R11 K26 [{"id", "text"}]
       69 LOADK                            R12 K30 ["b1"]
       70 SETTABLEKS                       R12 R11 K19 ["id"]
       72 LOADK                            R12 K31 ["Beta 1"]
       73 SETTABLEKS                       R12 R11 K21 ["text"]
       75 DUPTABLE                         R12 K32 [{"id", "isDisabled", "text"}]
       76 LOADK                            R13 K33 ["b2"]
       77 SETTABLEKS                       R13 R12 K19 ["id"]
       79 LOADB                            R13 1
       80 SETTABLEKS                       R13 R12 K8 ["isDisabled"]
       82 LOADK                            R13 K34 ["Beta 2 (disabled)"]
       83 SETTABLEKS                       R13 R12 K21 ["text"]
       85 SETLIST                          R10 R11 2 [1]
       87 SETTABLEKS                       R10 R9 K9 ["items"]
       89 DUPTABLE                         R10 K29 [{"items"}]
       90 NEWTABLE                         R11 0 1
       92 DUPTABLE                         R12 K26 [{"id", "text"}]
       93 LOADK                            R13 K35 ["c1"]
       94 SETTABLEKS                       R13 R12 K19 ["id"]
       96 LOADK                            R13 K36 ["Untitled group item"]
       97 SETTABLEKS                       R13 R12 K21 ["text"]
       99 SETLIST                          R11 R12 1 [1]
      101 SETTABLEKS                       R11 R10 K9 ["items"]
      103 SETLIST                          R7 R8 3 [1]
      105 SETTABLEKS                       R7 R6 K9 ["items"]
      107 GETTABLEKS                       R7 R1 K10 ["size"]
      109 SETTABLEKS                       R7 R6 K10 ["size"]
      111 GETUPVAL                         R8 2
      112 GETTABLEKS                       R8 R8 K37 ["FoundationDropdownVariant"]
      114 JUMPIFNOT                        R8 ; [+3]
      115 GETTABLEKS                       R7 R1 K11 ["variant"]
      117 JUMP                             ; [+1]
      118 LOADNIL                          R7
      119 SETTABLEKS                       R7 R6 K11 ["variant"]
      121 GETTABLEKS                       R7 R1 K12 ["label"]
      123 SETTABLEKS                       R7 R6 K12 ["label"]
      125 CALL                             R4 2 -1
      126 RETURN                           R4 -1

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
       13 DUPTABLE                         R6 K14 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "variant", "label", "width"}]
       14 SETTABLEKS                       R2 R6 K4 ["value"]
       16 GETTABLEKS                       R8 R1 K15 ["hasPlaceholder"]
       18 JUMPIFNOT                        R8 ; [+2]
       19 LOADK                            R7 K16 ["Choose a value"]
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
       38 DUPTABLE                         R8 K19 [{"id", "text"}]
       39 LOADK                            R9 K20 ["A"]
       40 SETTABLEKS                       R9 R8 K17 ["id"]
       42 LOADK                            R9 K21 ["Item A"]
       43 SETTABLEKS                       R9 R8 K18 ["text"]
       45 DUPTABLE                         R9 K22 [{"id", "text", "isDisabled"}]
       46 LOADK                            R10 K23 ["B"]
       47 SETTABLEKS                       R10 R9 K17 ["id"]
       49 LOADK                            R10 K24 ["Item B"]
       50 SETTABLEKS                       R10 R9 K18 ["text"]
       52 LOADB                            R10 1
       53 SETTABLEKS                       R10 R9 K8 ["isDisabled"]
       55 SETLIST                          R7 R8 2 [1]
       57 SETTABLEKS                       R7 R6 K9 ["items"]
       59 GETTABLEKS                       R7 R1 K10 ["size"]
       61 SETTABLEKS                       R7 R6 K10 ["size"]
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R8 R8 K25 ["FoundationDropdownVariant"]
       66 JUMPIFNOT                        R8 ; [+3]
       67 GETTABLEKS                       R7 R1 K11 ["variant"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R7
       71 SETTABLEKS                       R7 R6 K11 ["variant"]
       73 GETTABLEKS                       R7 R1 K12 ["label"]
       75 SETTABLEKS                       R7 R6 K12 ["label"]
       77 GETIMPORT                        R7 K28 [UDim.new]
       79 LOADN                            R8 0
       80 LOADN                            R9 150
       81 CALL                             R7 2 1
       82 SETTABLEKS                       R7 R6 K13 ["width"]
       84 CALL                             R4 2 -1
       85 RETURN                           R4 -1

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
       17 DUPTABLE                         R7 K15 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "variant", "label", "width"}]
       18 SETTABLEKS                       R2 R7 K5 ["value"]
       20 GETTABLEKS                       R9 R1 K16 ["hasPlaceholder"]
       22 JUMPIFNOT                        R9 ; [+2]
       23 LOADK                            R8 K17 ["Choose a value"]
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
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R9 R9 K18 ["FoundationDropdownVariant"]
       49 JUMPIFNOT                        R9 ; [+3]
       50 GETTABLEKS                       R8 R1 K12 ["variant"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R8
       54 SETTABLEKS                       R8 R7 K12 ["variant"]
       56 GETTABLEKS                       R8 R1 K13 ["label"]
       58 SETTABLEKS                       R8 R7 K13 ["label"]
       60 GETIMPORT                        R8 K21 [UDim.new]
       62 LOADN                            R9 0
       63 LOADN                            R10 150
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K14 ["width"]
       67 CALL                             R5 2 -1
       68 RETURN                           R5 -1

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
       13 DUPTABLE                         R6 K14 [{"value", "placeholder", "onItemChanged", "hasError", "isDisabled", "items", "size", "variant", "label", "width"}]
       14 SETTABLEKS                       R2 R6 K4 ["value"]
       16 GETTABLEKS                       R8 R1 K15 ["hasPlaceholder"]
       18 JUMPIFNOT                        R8 ; [+2]
       19 LOADK                            R7 K16 ["Choose a value"]
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
       38 DUPTABLE                         R8 K19 [{"id", "text"}]
       39 LOADK                            R9 K20 ["A"]
       40 SETTABLEKS                       R9 R8 K17 ["id"]
       42 LOADK                            R9 K21 ["Item A"]
       43 SETTABLEKS                       R9 R8 K18 ["text"]
       45 DUPTABLE                         R9 K22 [{"id", "text", "isDisabled"}]
       46 LOADK                            R10 K23 ["B"]
       47 SETTABLEKS                       R10 R9 K17 ["id"]
       49 LOADK                            R10 K24 ["Item B"]
       50 SETTABLEKS                       R10 R9 K18 ["text"]
       52 LOADB                            R10 1
       53 SETTABLEKS                       R10 R9 K8 ["isDisabled"]
       55 SETLIST                          R7 R8 2 [1]
       57 SETTABLEKS                       R7 R6 K9 ["items"]
       59 GETTABLEKS                       R7 R1 K10 ["size"]
       61 SETTABLEKS                       R7 R6 K10 ["size"]
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R8 R8 K25 ["FoundationDropdownVariant"]
       66 JUMPIFNOT                        R8 ; [+3]
       67 GETTABLEKS                       R7 R1 K11 ["variant"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R7
       71 SETTABLEKS                       R7 R6 K11 ["variant"]
       73 GETTABLEKS                       R7 R1 K12 ["label"]
       75 SETTABLEKS                       R7 R6 K12 ["label"]
       77 GETIMPORT                        R7 K28 [UDim.new]
       79 LOADN                            R8 1
       80 LOADN                            R9 0
       81 CALL                             R7 2 1
       82 SETTABLEKS                       R7 R6 K13 ["width"]
       84 CALL                             R4 2 -1
       85 RETURN                           R4 -1

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
       23 GETTABLEKS                       R5 R5 K10 ["Dropdown"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R6 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Enums"]
       37 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R8 K15 ["InputVariant"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K16 ["Types"]
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
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 SETTABLEKS                       R13 R12 K24 ["story"]
       72 DUPTABLE                         R13 K25 [{"name", "story"}]
       73 LOADK                            R14 K28 ["Overflow"]
       74 SETTABLEKS                       R14 R13 K23 ["name"]
       76 DUPCLOSURE                       R14 K29 [PROTO_5]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R14 R13 K24 ["story"]
       82 DUPTABLE                         R14 K25 [{"name", "story"}]
       83 LOADK                            R15 K30 ["With item groups"]
       84 SETTABLEKS                       R15 R14 K23 ["name"]
       86 DUPCLOSURE                       R15 K31 [PROTO_7]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R5
       90 SETTABLEKS                       R15 R14 K24 ["story"]
       92 DUPTABLE                         R15 K25 [{"name", "story"}]
       93 LOADK                            R16 K32 ["Narrow dropdown narrow items"]
       94 SETTABLEKS                       R16 R15 K23 ["name"]
       96 DUPCLOSURE                       R16 K33 [PROTO_9]
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R5
      100 SETTABLEKS                       R16 R15 K24 ["story"]
      102 DUPTABLE                         R16 K25 [{"name", "story"}]
      103 LOADK                            R17 K34 ["Narrow dropdown wider items"]
      104 SETTABLEKS                       R17 R16 K23 ["name"]
      106 DUPCLOSURE                       R17 K35 [PROTO_11]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R5
      111 SETTABLEKS                       R17 R16 K24 ["story"]
      113 DUPTABLE                         R17 K25 [{"name", "story"}]
      114 LOADK                            R18 K36 ["Wide dropdown narrow items"]
      115 SETTABLEKS                       R18 R17 K23 ["name"]
      117 DUPCLOSURE                       R18 K37 [PROTO_13]
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R5
      121 SETTABLEKS                       R18 R17 K24 ["story"]
      123 SETLIST                          R11 R12 6 [1]
      125 SETTABLEKS                       R11 R10 K19 ["stories"]
      127 DUPTABLE                         R11 K45 [{"size", "variant", "isDisabled", "label", "hasError", "hasIcon", "hasPlaceholder"}]
      128 GETTABLEKS                       R12 R3 K46 ["values"]
      130 MOVE                             R13 R6
      131 CALL                             R12 1 1
      132 SETTABLEKS                       R12 R11 K38 ["size"]
      134 GETTABLEKS                       R13 R5 K47 ["FoundationDropdownVariant"]
      136 JUMPIFNOT                        R13 ; [+5]
      137 GETTABLEKS                       R12 R3 K46 ["values"]
      139 MOVE                             R13 R7
      140 CALL                             R12 1 1
      141 JUMP                             ; [+1]
      142 LOADNIL                          R12
      143 SETTABLEKS                       R12 R11 K39 ["variant"]
      145 LOADB                            R12 0
      146 SETTABLEKS                       R12 R11 K40 ["isDisabled"]
      148 LOADK                            R12 K48 ["Dropdown Label"]
      149 SETTABLEKS                       R12 R11 K41 ["label"]
      151 LOADB                            R12 0
      152 SETTABLEKS                       R12 R11 K42 ["hasError"]
      154 LOADB                            R12 1
      155 SETTABLEKS                       R12 R11 K43 ["hasIcon"]
      157 LOADB                            R12 0
      158 SETTABLEKS                       R12 R11 K44 ["hasPlaceholder"]
      160 SETTABLEKS                       R11 R10 K20 ["controls"]
      162 RETURN                           R10 1
