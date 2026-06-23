PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K3 ["id"]
       10 GETUPVAL                         R8 0
       11 JUMPIFNOTEQ                      R7 R8 ; [+6]
       13 GETTABLEKS                       R8 R6 K4 ["isChecked"]
       15 NOT                              R7 R8
       16 SETTABLEKS                       R7 R6 K4 ["isChecked"]
       18 FORGLOOP                         R2 2 ; [-11]
       20 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 1
       12 MOVE                             R6 R2
       13 SETLIST                          R5 R6 1 [1]
       15 CALL                             R3 2 1
       16 MOVE                             R4 R1
       17 MOVE                             R5 R3
       18 RETURN                           R4 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 ["1"]
        4 CALL                             R1 1 2
        5 GETTABLEKS                       R4 R0 K2 ["controls"]
        7 GETTABLEKS                       R4 R4 K3 ["hasIcon"]
        9 JUMPIFNOT                        R4 ; [+5]
       10 GETTABLEKS                       R3 R0 K2 ["controls"]
       12 GETTABLEKS                       R3 R3 K4 ["icon"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K5 ["createElement"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K6 ["Root"]
       22 DUPTABLE                         R6 K10 [{"size", "onActivated", "items"}]
       23 GETTABLEKS                       R7 R0 K2 ["controls"]
       25 GETTABLEKS                       R7 R7 K7 ["size"]
       27 SETTABLEKS                       R7 R6 K7 ["size"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R7 R6 K8 ["onActivated"]
       33 NEWTABLE                         R7 0 3
       35 DUPTABLE                         R8 K15 [{"id", "icon", "isChecked", "isDisabled", "text"}]
       36 LOADK                            R9 K1 ["1"]
       37 SETTABLEKS                       R9 R8 K11 ["id"]
       39 SETTABLEKS                       R3 R8 K4 ["icon"]
       41 JUMPIFEQKS                       R1 K1 ["1"] ; [+2]
       43 LOADB                            R9 0 +1
       44 LOADB                            R9 1
       45 SETTABLEKS                       R9 R8 K12 ["isChecked"]
       47 LOADB                            R9 0
       48 SETTABLEKS                       R9 R8 K13 ["isDisabled"]
       50 LOADK                            R9 K16 ["Item 1"]
       51 SETTABLEKS                       R9 R8 K14 ["text"]
       53 DUPTABLE                         R9 K15 [{"id", "icon", "isChecked", "isDisabled", "text"}]
       54 LOADK                            R10 K17 ["2"]
       55 SETTABLEKS                       R10 R9 K11 ["id"]
       57 SETTABLEKS                       R3 R9 K4 ["icon"]
       59 JUMPIFEQKS                       R1 K17 ["2"] ; [+2]
       61 LOADB                            R10 0 +1
       62 LOADB                            R10 1
       63 SETTABLEKS                       R10 R9 K12 ["isChecked"]
       65 LOADB                            R10 0
       66 SETTABLEKS                       R10 R9 K13 ["isDisabled"]
       68 LOADK                            R10 K18 ["Item 2,000,000,000,000,000,000,000,000"]
       69 SETTABLEKS                       R10 R9 K14 ["text"]
       71 DUPTABLE                         R10 K15 [{"id", "icon", "isChecked", "isDisabled", "text"}]
       72 LOADK                            R11 K19 ["3"]
       73 SETTABLEKS                       R11 R10 K11 ["id"]
       75 SETTABLEKS                       R3 R10 K4 ["icon"]
       77 JUMPIFEQKS                       R1 K19 ["3"] ; [+2]
       79 LOADB                            R11 0 +1
       80 LOADB                            R11 1
       81 SETTABLEKS                       R11 R10 K12 ["isChecked"]
       83 LOADB                            R11 1
       84 SETTABLEKS                       R11 R10 K13 ["isDisabled"]
       86 LOADK                            R11 K20 ["Item 3"]
       87 SETTABLEKS                       R11 R10 K14 ["text"]
       89 SETLIST                          R7 R8 3 [1]
       91 SETTABLEKS                       R7 R6 K9 ["items"]
       93 CALL                             R4 2 -1
       94 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 3
        3 DUPTABLE                         R3 K3 [{"id", "icon", "text"}]
        4 LOADK                            R4 K4 ["1"]
        5 SETTABLEKS                       R4 R3 K0 ["id"]
        7 LOADK                            R4 K5 ["icons/common/robux"]
        8 SETTABLEKS                       R4 R3 K1 ["icon"]
       10 LOADK                            R4 K6 ["Item 1"]
       11 SETTABLEKS                       R4 R3 K2 ["text"]
       13 DUPTABLE                         R4 K3 [{"id", "icon", "text"}]
       14 LOADK                            R5 K7 ["2"]
       15 SETTABLEKS                       R5 R4 K0 ["id"]
       17 LOADK                            R5 K5 ["icons/common/robux"]
       18 SETTABLEKS                       R5 R4 K1 ["icon"]
       20 LOADK                            R5 K8 ["Item 2"]
       21 SETTABLEKS                       R5 R4 K2 ["text"]
       23 DUPTABLE                         R5 K3 [{"id", "icon", "text"}]
       24 LOADK                            R6 K9 ["3"]
       25 SETTABLEKS                       R6 R5 K0 ["id"]
       27 LOADK                            R6 K5 ["icons/common/robux"]
       28 SETTABLEKS                       R6 R5 K1 ["icon"]
       30 LOADK                            R6 K10 ["Item 3"]
       31 SETTABLEKS                       R6 R5 K2 ["text"]
       33 SETLIST                          R2 R3 3 [1]
       35 CALL                             R1 1 2
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K11 ["createElement"]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K12 ["Root"]
       42 DUPTABLE                         R5 K16 [{"size", "items", "onActivated"}]
       43 GETTABLEKS                       R6 R0 K17 ["controls"]
       45 GETTABLEKS                       R6 R6 K13 ["size"]
       47 SETTABLEKS                       R6 R5 K13 ["size"]
       49 SETTABLEKS                       R1 R5 K14 ["items"]
       51 SETTABLEKS                       R2 R5 K15 ["onActivated"]
       53 CALL                             R3 2 -1
       54 RETURN                           R3 -1

PROTO_6:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Clicked item: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Root"]
        6 DUPTABLE                         R3 K5 [{"size", "onActivated", "items"}]
        7 GETTABLEKS                       R4 R0 K6 ["controls"]
        9 GETTABLEKS                       R4 R4 K2 ["size"]
       11 SETTABLEKS                       R4 R3 K2 ["size"]
       13 DUPCLOSURE                       R4 K7 [PROTO_6]
       14 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       16 NEWTABLE                         R4 0 3
       18 DUPTABLE                         R5 K11 [{"id", "icon", "text"}]
       19 LOADK                            R6 K12 ["1"]
       20 SETTABLEKS                       R6 R5 K8 ["id"]
       22 LOADK                            R6 K13 ["icons/common/robux"]
       23 SETTABLEKS                       R6 R5 K9 ["icon"]
       25 LOADK                            R6 K14 ["Item 1"]
       26 SETTABLEKS                       R6 R5 K10 ["text"]
       28 DUPTABLE                         R6 K11 [{"id", "icon", "text"}]
       29 LOADK                            R7 K15 ["2"]
       30 SETTABLEKS                       R7 R6 K8 ["id"]
       32 LOADK                            R7 K13 ["icons/common/robux"]
       33 SETTABLEKS                       R7 R6 K9 ["icon"]
       35 LOADK                            R7 K16 ["Item 2"]
       36 SETTABLEKS                       R7 R6 K10 ["text"]
       38 DUPTABLE                         R7 K11 [{"id", "icon", "text"}]
       39 LOADK                            R8 K17 ["3"]
       40 SETTABLEKS                       R8 R7 K8 ["id"]
       42 LOADK                            R8 K13 ["icons/common/robux"]
       43 SETTABLEKS                       R8 R7 K9 ["icon"]
       45 LOADK                            R8 K18 ["Item 3"]
       46 SETTABLEKS                       R8 R7 K10 ["text"]
       48 SETLIST                          R4 R5 3 [1]
       50 SETTABLEKS                       R4 R3 K4 ["items"]
       52 CALL                             R1 2 -1
       53 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Root"]
        6 DUPTABLE                         R3 K5 [{"size", "items", "onActivated"}]
        7 SETTABLEKS                       R0 R3 K2 ["size"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["items"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K6 ["noop"]
       15 CALL                             R4 0 1
       16 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"tag"}]
        5 LOADK                            R3 K3 ["row wrap gap-xxlarge size-full-0 auto-y"]
        6 SETTABLEKS                       R3 R2 K1 ["tag"]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K4 ["map"]
       11 GETUPVAL                         R4 3
       12 DUPCLOSURE                       R5 K5 [PROTO_8]
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CAPTURE                          UPVAL U2
       17 CALL                             R3 2 -1
       18 CALL                             R0 -1 -1
       19 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Root"]
        6 DUPTABLE                         R2 K5 [{"width", "items", "onActivated"}]
        7 GETIMPORT                        R3 K8 [UDim.new]
        9 LOADN                            R4 0
       10 LOADN                            R5 44
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K2 ["width"]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R3 R2 K3 ["items"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K9 ["noop"]
       20 CALL                             R3 0 1
       21 SETTABLEKS                       R3 R2 K4 ["onActivated"]
       23 CALL                             R0 2 -1
       24 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Root"]
        6 DUPTABLE                         R2 K5 [{"width", "items", "onActivated"}]
        7 GETIMPORT                        R3 K8 [UDim.new]
        9 LOADN                            R4 1
       10 LOADN                            R5 0
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K2 ["width"]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R3 R2 K3 ["items"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K9 ["noop"]
       20 CALL                             R3 0 1
       21 SETTABLEKS                       R3 R2 K4 ["onActivated"]
       23 CALL                             R0 2 -1
       24 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Root"]
        6 DUPTABLE                         R3 K5 [{"size", "items", "onActivated"}]
        7 GETTABLEKS                       R4 R0 K6 ["controls"]
        9 GETTABLEKS                       R4 R4 K2 ["size"]
       11 SETTABLEKS                       R4 R3 K2 ["size"]
       13 NEWTABLE                         R4 0 3
       15 DUPTABLE                         R5 K8 [{"title", "items"}]
       16 LOADK                            R6 K9 ["First Title"]
       17 SETTABLEKS                       R6 R5 K7 ["title"]
       19 NEWTABLE                         R6 0 2
       21 DUPTABLE                         R7 K13 [{"id", "icon", "text"}]
       22 LOADK                            R8 K14 ["a1"]
       23 SETTABLEKS                       R8 R7 K10 ["id"]
       25 LOADK                            R8 K15 ["icons/common/robux"]
       26 SETTABLEKS                       R8 R7 K11 ["icon"]
       28 LOADK                            R8 K16 ["Alpha 1"]
       29 SETTABLEKS                       R8 R7 K12 ["text"]
       31 DUPTABLE                         R8 K17 [{"id", "text"}]
       32 LOADK                            R9 K18 ["a2"]
       33 SETTABLEKS                       R9 R8 K10 ["id"]
       35 LOADK                            R9 K19 ["Alpha 2"]
       36 SETTABLEKS                       R9 R8 K12 ["text"]
       38 SETLIST                          R6 R7 2 [1]
       40 SETTABLEKS                       R6 R5 K3 ["items"]
       42 DUPTABLE                         R6 K8 [{"title", "items"}]
       43 LOADK                            R7 K20 ["Second Title"]
       44 SETTABLEKS                       R7 R6 K7 ["title"]
       46 NEWTABLE                         R7 0 2
       48 DUPTABLE                         R8 K17 [{"id", "text"}]
       49 LOADK                            R9 K21 ["b1"]
       50 SETTABLEKS                       R9 R8 K10 ["id"]
       52 LOADK                            R9 K22 ["Beta 1"]
       53 SETTABLEKS                       R9 R8 K12 ["text"]
       55 DUPTABLE                         R9 K24 [{"id", "isDisabled", "text"}]
       56 LOADK                            R10 K25 ["b2"]
       57 SETTABLEKS                       R10 R9 K10 ["id"]
       59 LOADB                            R10 1
       60 SETTABLEKS                       R10 R9 K23 ["isDisabled"]
       62 LOADK                            R10 K26 ["Beta 2 (disabled)"]
       63 SETTABLEKS                       R10 R9 K12 ["text"]
       65 SETLIST                          R7 R8 2 [1]
       67 SETTABLEKS                       R7 R6 K3 ["items"]
       69 DUPTABLE                         R7 K27 [{"items"}]
       70 NEWTABLE                         R8 0 1
       72 DUPTABLE                         R9 K17 [{"id", "text"}]
       73 LOADK                            R10 K28 ["c1"]
       74 SETTABLEKS                       R10 R9 K10 ["id"]
       76 LOADK                            R10 K29 ["Untitled group item"]
       77 SETTABLEKS                       R10 R9 K12 ["text"]
       79 SETLIST                          R8 R9 1 [1]
       81 SETTABLEKS                       R8 R7 K3 ["items"]
       83 SETLIST                          R4 R5 3 [1]
       85 SETTABLEKS                       R4 R3 K3 ["items"]
       87 GETUPVAL                         R4 2
       88 GETTABLEKS                       R4 R4 K30 ["noop"]
       90 CALL                             R4 0 1
       91 SETTABLEKS                       R4 R3 K4 ["onActivated"]
       93 CALL                             R1 2 -1
       94 RETURN                           R1 -1

PROTO_13:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R3 K2 ["Clicked %*"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Root"]
        6 DUPTABLE                         R3 K4 [{"size", "onActivated"}]
        7 GETTABLEKS                       R4 R0 K5 ["controls"]
        9 GETTABLEKS                       R4 R4 K2 ["size"]
       11 SETTABLEKS                       R4 R3 K2 ["size"]
       13 DUPCLOSURE                       R4 K6 [PROTO_13]
       14 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["createElement"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K7 ["Group"]
       22 DUPTABLE                         R6 K10 [{"LayoutOrder", "title"}]
       23 LOADN                            R7 1
       24 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       26 LOADK                            R7 K11 ["Test title"]
       27 SETTABLEKS                       R7 R6 K9 ["title"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K0 ["createElement"]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R8 R8 K12 ["Item"]
       35 DUPTABLE                         R9 K16 [{"LayoutOrder", "id", "text", "icon"}]
       36 LOADN                            R10 1
       37 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       39 LOADK                            R10 K17 ["a1"]
       40 SETTABLEKS                       R10 R9 K13 ["id"]
       42 LOADK                            R10 K18 ["Text 1"]
       43 SETTABLEKS                       R10 R9 K14 ["text"]
       45 LOADK                            R10 K19 ["icons/common/robux"]
       46 SETTABLEKS                       R10 R9 K15 ["icon"]
       48 CALL                             R7 2 1
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K0 ["createElement"]
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R9 R9 K12 ["Item"]
       55 DUPTABLE                         R10 K20 [{"LayoutOrder", "id", "text"}]
       56 LOADN                            R11 2
       57 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       59 LOADK                            R11 K21 ["a2"]
       60 SETTABLEKS                       R11 R10 K13 ["id"]
       62 LOADK                            R11 K22 ["Text 2"]
       63 SETTABLEKS                       R11 R10 K14 ["text"]
       65 CALL                             R8 2 1
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K0 ["createElement"]
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R10 R10 K12 ["Item"]
       72 DUPTABLE                         R11 K20 [{"LayoutOrder", "id", "text"}]
       73 LOADN                            R12 3
       74 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       76 LOADK                            R12 K23 ["a3"]
       77 SETTABLEKS                       R12 R11 K13 ["id"]
       79 LOADK                            R12 K24 ["Text 3"]
       80 SETTABLEKS                       R12 R11 K14 ["text"]
       82 CALL                             R9 2 -1
       83 CALL                             R4 -1 1
       84 GETUPVAL                         R5 0
       85 GETTABLEKS                       R5 R5 K0 ["createElement"]
       87 GETUPVAL                         R6 1
       88 GETTABLEKS                       R6 R6 K7 ["Group"]
       90 DUPTABLE                         R7 K25 [{"LayoutOrder"}]
       91 LOADN                            R8 2
       92 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       94 GETUPVAL                         R8 0
       95 GETTABLEKS                       R8 R8 K0 ["createElement"]
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K12 ["Item"]
      100 DUPTABLE                         R10 K20 [{"LayoutOrder", "id", "text"}]
      101 LOADN                            R11 1
      102 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      104 LOADK                            R11 K26 ["b1"]
      105 SETTABLEKS                       R11 R10 K13 ["id"]
      107 LOADK                            R11 K27 ["Text 11"]
      108 SETTABLEKS                       R11 R10 K14 ["text"]
      110 CALL                             R8 2 1
      111 GETUPVAL                         R9 0
      112 GETTABLEKS                       R9 R9 K0 ["createElement"]
      114 GETUPVAL                         R10 1
      115 GETTABLEKS                       R10 R10 K12 ["Item"]
      117 DUPTABLE                         R11 K20 [{"LayoutOrder", "id", "text"}]
      118 LOADN                            R12 2
      119 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      121 LOADK                            R12 K28 ["b2"]
      122 SETTABLEKS                       R12 R11 K13 ["id"]
      124 LOADK                            R12 K29 ["Text 22"]
      125 SETTABLEKS                       R12 R11 K14 ["text"]
      127 CALL                             R9 2 1
      128 GETUPVAL                         R10 0
      129 GETTABLEKS                       R10 R10 K0 ["createElement"]
      131 GETUPVAL                         R11 1
      132 GETTABLEKS                       R11 R11 K12 ["Item"]
      134 DUPTABLE                         R12 K20 [{"LayoutOrder", "id", "text"}]
      135 LOADN                            R13 3
      136 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      138 LOADK                            R13 K30 ["b3"]
      139 SETTABLEKS                       R13 R12 K13 ["id"]
      141 LOADK                            R13 K31 ["Text 33"]
      142 SETTABLEKS                       R13 R12 K14 ["text"]
      144 CALL                             R10 2 -1
      145 CALL                             R5 -1 -1
      146 CALL                             R1 -1 -1
      147 RETURN                           R1 -1

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LOADN                            R2 100
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 DUPTABLE                         R7 K5 [{"id", "icon", "text", "isChecked", "isDisabled"}]
        7 FASTCALL1                        TOSTRING R4 ; [+3]
        8 MOVE                             R9 R4
        9 GETIMPORT                        R8 K7 [tostring]
       11 CALL                             R8 1 1
       12 SETTABLEKS                       R8 R7 K0 ["id"]
       14 LOADK                            R8 K8 ["icons/common/robux"]
       15 SETTABLEKS                       R8 R7 K1 ["icon"]
       17 LOADK                            R9 K9 ["Item "]
       18 FASTCALL1                        TOSTRING R4 ; [+3]
       19 MOVE                             R11 R4
       20 GETIMPORT                        R10 K7 [tostring]
       22 CALL                             R10 1 1
       23 CONCAT                           R8 R9 R10
       24 SETTABLEKS                       R8 R7 K2 ["text"]
       26 MODK                             R9 R4 K10 [3]
       27 JUMPIFEQKN                       R9 K11 [0] ; [+2]
       29 LOADB                            R8 0 +1
       30 LOADB                            R8 1
       31 SETTABLEKS                       R8 R7 K3 ["isChecked"]
       33 MODK                             R9 R4 K12 [7]
       34 JUMPIFEQKN                       R9 K11 [0] ; [+2]
       36 LOADB                            R8 0 +1
       37 LOADB                            R8 1
       38 SETTABLEKS                       R8 R7 K4 ["isDisabled"]
       40 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       42 MOVE                             R6 R1
       43 GETIMPORT                        R5 K15 [table.insert]
       45 CALL                             R5 2 0
       46 FORNLOOP                         R2
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R2 R2 K16 ["createElement"]
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K17 ["Root"]
       53 DUPTABLE                         R4 K22 [{"size", "items", "maxHeight", "onActivated"}]
       54 GETTABLEKS                       R5 R0 K23 ["controls"]
       56 GETTABLEKS                       R5 R5 K18 ["size"]
       58 SETTABLEKS                       R5 R4 K18 ["size"]
       60 SETTABLEKS                       R1 R4 K19 ["items"]
       62 LOADN                            R5 244
       63 SETTABLEKS                       R5 R4 K20 ["maxHeight"]
       65 GETUPVAL                         R5 2
       66 GETTABLEKS                       R5 R5 K24 ["noop"]
       68 CALL                             R5 0 1
       69 SETTABLEKS                       R5 R4 K21 ["onActivated"]
       71 CALL                             R2 2 -1
       72 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R3 1
        4 GETTABLEN                        R2 R3 1
        5 GETTABLEKS                       R2 R2 K1 ["name"]
        7 CALL                             R1 1 2
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R4 1
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 DUPTABLE                         R11 K6 [{"id", "icon", "isChecked", "text"}]
       15 GETTABLEKS                       R12 R8 K1 ["name"]
       17 SETTABLEKS                       R12 R11 K2 ["id"]
       19 GETUPVAL                         R12 2
       20 GETUPVAL                         R13 3
       21 GETTABLEKS                       R13 R13 K7 ["GameIcon"]
       23 GETTABLEKS                       R14 R8 K8 ["universeId"]
       25 CALL                             R12 2 1
       26 SETTABLEKS                       R12 R11 K3 ["icon"]
       28 GETTABLEKS                       R13 R8 K1 ["name"]
       30 JUMPIFEQ                         R1 R13 ; [+2]
       32 LOADB                            R12 0 +1
       33 LOADB                            R12 1
       34 SETTABLEKS                       R12 R11 K4 ["isChecked"]
       36 GETTABLEKS                       R12 R8 K1 ["name"]
       38 SETTABLEKS                       R12 R11 K5 ["text"]
       40 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       42 MOVE                             R10 R3
       43 GETIMPORT                        R9 K11 [table.insert]
       45 CALL                             R9 2 0
       46 FORGLOOP                         R4 2 ; [-33]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K12 ["createElement"]
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R5 R5 K13 ["Root"]
       54 DUPTABLE                         R6 K17 [{"size", "onActivated", "items"}]
       55 GETTABLEKS                       R7 R0 K18 ["controls"]
       57 GETTABLEKS                       R7 R7 K14 ["size"]
       59 SETTABLEKS                       R7 R6 K14 ["size"]
       61 NEWCLOSURE                       R7 P0
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R7 R6 K15 ["onActivated"]
       65 SETTABLEKS                       R3 R6 K16 ["items"]
       67 CALL                             R4 2 -1
       68 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Enums"]
       28 GETTABLEKS                       R6 R6 K11 ["ThumbnailType"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R7 K13 ["Types"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K14 ["Utility"]
       42 GETTABLEKS                       R8 R8 K15 ["getRbxThumb"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K12 ["Components"]
       49 GETTABLEKS                       R9 R9 K16 ["BaseMenu"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K10 ["Enums"]
       56 GETTABLEKS                       R10 R10 K17 ["InputSize"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K12 ["Components"]
       63 GETTABLEKS                       R11 R11 K18 ["View"]
       65 CALL                             R10 1 1
       66 NEWTABLE                         R11 0 0
       68 GETIMPORT                        R12 K20 [pairs]
       70 GETTABLEKS                       R15 R2 K22 ["Migration"]
       72 GETTABLEKS                       R13 R15 K21 ["uiblox"]
       74 CALL                             R12 1 3
       75 FORGPREP_NEXT                    R12
       76 FASTCALL2                        TABLE_INSERT R11 R15 ; [+5]
       78 MOVE                             R18 R11
       79 MOVE                             R19 R15
       80 GETIMPORT                        R17 K25 [table.insert]
       82 CALL                             R17 2 0
       83 FORGLOOP                         R12 2 ; [-8]
       85 DUPCLOSURE                       R12 K26 [PROTO_2]
       86 CAPTURE                          VAL R4
       87 NEWTABLE                         R13 0 3
       89 DUPTABLE                         R14 K30 [{"id", "icon", "text"}]
       90 LOADK                            R15 K31 ["1"]
       91 SETTABLEKS                       R15 R14 K27 ["id"]
       93 LOADK                            R15 K32 ["icons/common/robux"]
       94 SETTABLEKS                       R15 R14 K28 ["icon"]
       96 LOADK                            R15 K33 ["Item"]
       97 SETTABLEKS                       R15 R14 K29 ["text"]
       99 DUPTABLE                         R15 K35 [{"id", "icon", "isChecked", "text"}]
      100 LOADK                            R16 K36 ["2"]
      101 SETTABLEKS                       R16 R15 K27 ["id"]
      103 LOADK                            R16 K37 ["icons/menu/gem_medium"]
      104 SETTABLEKS                       R16 R15 K28 ["icon"]
      106 LOADB                            R16 1
      107 SETTABLEKS                       R16 R15 K34 ["isChecked"]
      109 LOADK                            R16 K33 ["Item"]
      110 SETTABLEKS                       R16 R15 K29 ["text"]
      112 DUPTABLE                         R16 K39 [{"id", "isDisabled", "text"}]
      113 LOADK                            R17 K40 ["3"]
      114 SETTABLEKS                       R17 R16 K27 ["id"]
      116 LOADB                            R17 1
      117 SETTABLEKS                       R17 R16 K38 ["isDisabled"]
      119 LOADK                            R17 K33 ["Item"]
      120 SETTABLEKS                       R17 R16 K29 ["text"]
      122 SETLIST                          R13 R14 3 [1]
      124 NEWTABLE                         R14 0 5
      126 DUPTABLE                         R15 K43 [{"name", "universeId"}]
      127 LOADK                            R16 K44 ["[💘] RIVALS"]
      128 SETTABLEKS                       R16 R15 K41 ["name"]
      130 LOADK                            R16 K45 [6035872082]
      131 SETTABLEKS                       R16 R15 K42 ["universeId"]
      133 DUPTABLE                         R16 K43 [{"name", "universeId"}]
      134 LOADK                            R17 K46 ["[❤️ Event] Blox Fruits"]
      135 SETTABLEKS                       R17 R16 K41 ["name"]
      137 LOADK                            R17 K47 [994732206]
      138 SETTABLEKS                       R17 R16 K42 ["universeId"]
      140 DUPTABLE                         R17 K43 [{"name", "universeId"}]
      141 LOADK                            R18 K48 ["Bee Swarm Simulator"]
      142 SETTABLEKS                       R18 R17 K41 ["name"]
      144 LOADK                            R18 K49 [601130232]
      145 SETTABLEKS                       R18 R17 K42 ["universeId"]
      147 DUPTABLE                         R18 K43 [{"name", "universeId"}]
      148 LOADK                            R19 K50 ["Murder Mystery 2"]
      149 SETTABLEKS                       R19 R18 K41 ["name"]
      151 LOADK                            R19 K51 [66654135]
      152 SETTABLEKS                       R19 R18 K42 ["universeId"]
      154 DUPTABLE                         R19 K43 [{"name", "universeId"}]
      155 LOADK                            R20 K52 ["[❤️‍🔥] Adopt Me!"]
      156 SETTABLEKS                       R20 R19 K41 ["name"]
      158 LOADK                            R20 K53 [383310974]
      159 SETTABLEKS                       R20 R19 K42 ["universeId"]
      161 SETLIST                          R14 R15 5 [1]
      163 DUPTABLE                         R15 K57 [{"summary", "stories", "controls"}]
      164 LOADK                            R16 K16 ["BaseMenu"]
      165 SETTABLEKS                       R16 R15 K54 ["summary"]
      167 NEWTABLE                         R16 0 10
      169 DUPTABLE                         R17 K59 [{"name", "story"}]
      170 LOADK                            R18 K60 ["Base"]
      171 SETTABLEKS                       R18 R17 K41 ["name"]
      173 DUPCLOSURE                       R18 K61 [PROTO_4]
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R8
      176 SETTABLEKS                       R18 R17 K58 ["story"]
      178 DUPTABLE                         R18 K59 [{"name", "story"}]
      179 LOADK                            R19 K62 ["Multi select"]
      180 SETTABLEKS                       R19 R18 K41 ["name"]
      182 DUPCLOSURE                       R19 K63 [PROTO_5]
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R8
      186 SETTABLEKS                       R19 R18 K58 ["story"]
      188 DUPTABLE                         R19 K59 [{"name", "story"}]
      189 LOADK                            R20 K64 ["Actions menu"]
      190 SETTABLEKS                       R20 R19 K41 ["name"]
      192 DUPCLOSURE                       R20 K65 [PROTO_7]
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R8
      195 SETTABLEKS                       R20 R19 K58 ["story"]
      197 DUPTABLE                         R20 K59 [{"name", "story"}]
      198 LOADK                            R21 K66 ["All Sizes"]
      199 SETTABLEKS                       R21 R20 K41 ["name"]
      201 DUPCLOSURE                       R21 K67 [PROTO_9]
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R9
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R13
      208 SETTABLEKS                       R21 R20 K58 ["story"]
      210 DUPTABLE                         R21 K59 [{"name", "story"}]
      211 LOADK                            R22 K68 ["Fixed width"]
      212 SETTABLEKS                       R22 R21 K41 ["name"]
      214 DUPCLOSURE                       R22 K69 [PROTO_10]
      215 CAPTURE                          VAL R4
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R3
      219 SETTABLEKS                       R22 R21 K58 ["story"]
      221 DUPTABLE                         R22 K59 [{"name", "story"}]
      222 LOADK                            R23 K70 ["Full width"]
      223 SETTABLEKS                       R23 R22 K41 ["name"]
      225 DUPCLOSURE                       R23 K71 [PROTO_11]
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R8
      228 CAPTURE                          VAL R13
      229 CAPTURE                          VAL R3
      230 SETTABLEKS                       R23 R22 K58 ["story"]
      232 DUPTABLE                         R23 K59 [{"name", "story"}]
      233 LOADK                            R24 K72 ["Grouped"]
      234 SETTABLEKS                       R24 R23 K41 ["name"]
      236 DUPCLOSURE                       R24 K73 [PROTO_12]
      237 CAPTURE                          VAL R4
      238 CAPTURE                          VAL R8
      239 CAPTURE                          VAL R3
      240 SETTABLEKS                       R24 R23 K58 ["story"]
      242 DUPTABLE                         R24 K59 [{"name", "story"}]
      243 LOADK                            R25 K74 ["Composites"]
      244 SETTABLEKS                       R25 R24 K41 ["name"]
      246 DUPCLOSURE                       R25 K75 [PROTO_14]
      247 CAPTURE                          VAL R4
      248 CAPTURE                          VAL R8
      249 SETTABLEKS                       R25 R24 K58 ["story"]
      251 DUPTABLE                         R25 K59 [{"name", "story"}]
      252 LOADK                            R26 K76 ["Overflow"]
      253 SETTABLEKS                       R26 R25 K41 ["name"]
      255 DUPCLOSURE                       R26 K77 [PROTO_15]
      256 CAPTURE                          VAL R4
      257 CAPTURE                          VAL R8
      258 CAPTURE                          VAL R3
      259 SETTABLEKS                       R26 R25 K58 ["story"]
      261 DUPTABLE                         R26 K59 [{"name", "story"}]
      262 LOADK                            R27 K78 ["Experience Icons"]
      263 SETTABLEKS                       R27 R26 K41 ["name"]
      265 DUPCLOSURE                       R27 K79 [PROTO_17]
      266 CAPTURE                          VAL R4
      267 CAPTURE                          VAL R14
      268 CAPTURE                          VAL R7
      269 CAPTURE                          VAL R5
      270 CAPTURE                          VAL R8
      271 SETTABLEKS                       R27 R26 K58 ["story"]
      273 SETLIST                          R16 R17 10 [1]
      275 SETTABLEKS                       R16 R15 K55 ["stories"]
      277 DUPTABLE                         R16 K82 [{"size", "icon", "hasIcon"}]
      278 GETTABLEKS                       R17 R3 K83 ["values"]
      280 MOVE                             R18 R9
      281 CALL                             R17 1 1
      282 SETTABLEKS                       R17 R16 K80 ["size"]
      284 GETTABLEKS                       R17 R3 K83 ["values"]
      286 MOVE                             R18 R11
      287 CALL                             R17 1 1
      288 SETTABLEKS                       R17 R16 K28 ["icon"]
      290 LOADB                            R17 1
      291 SETTABLEKS                       R17 R16 K81 ["hasIcon"]
      293 SETTABLEKS                       R16 R15 K56 ["controls"]
      295 RETURN                           R15 1
