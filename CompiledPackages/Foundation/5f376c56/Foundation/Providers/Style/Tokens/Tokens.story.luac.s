PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["value"]
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K2 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["number"] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["fullPath"]
        3 GETUPVAL                         R6 1
        4 JUMPIFNOT                        R6 ; [+8]
        5 LOADK                            R6 K1 ["| %* |"]
        6 GETTABLEKS                       R8 R0 K2 ["value"]
        8 NAMECALL                         R6 R6 K3 ["format"]
       10 CALL                             R6 2 1
       11 MOVE                             R5 R6
       12 JUMP                             ; [+1]
       13 LOADK                            R5 K4 [""]
       14 CONCAT                           R3 R4 R5
       15 GETTABLEKS                       R5 R1 K0 ["fullPath"]
       17 GETUPVAL                         R7 1
       18 JUMPIFNOT                        R7 ; [+8]
       19 LOADK                            R7 K1 ["| %* |"]
       20 GETTABLEKS                       R9 R1 K2 ["value"]
       22 NAMECALL                         R7 R7 K3 ["format"]
       24 CALL                             R7 2 1
       25 MOVE                             R6 R7
       26 JUMP                             ; [+1]
       27 LOADK                            R6 K4 [""]
       28 CONCAT                           R4 R5 R6
       29 GETUPVAL                         R5 1
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETIMPORT                        R9 K2 [string.lower]
        8 MOVE                             R10 R1
        9 CALL                             R9 1 1
       10 MOVE                             R11 R2
       11 LOADK                            R12 K3 ["."]
       12 GETTABLEKS                       R13 R8 K4 ["fullPath"]
       14 CONCAT                           R10 R11 R13
       15 GETIMPORT                        R11 K2 [string.lower]
       17 MOVE                             R12 R10
       18 CALL                             R11 1 1
       19 JUMPIFEQKS                       R1 K5 [""] ; [+9]
       21 GETIMPORT                        R12 K7 [string.find]
       23 MOVE                             R13 R11
       24 MOVE                             R14 R9
       25 LOADN                            R15 1
       26 LOADB                            R16 1
       27 CALL                             R12 4 1
       28 JUMPIFNOT                        R12 ; [+7]
       29 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       31 MOVE                             R13 R3
       32 MOVE                             R14 R8
       33 GETIMPORT                        R12 K10 [table.insert]
       35 CALL                             R12 2 0
       36 FORGLOOP                         R4 2 ; [-31]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R4 R5 K11 ["some"]
       41 MOVE                             R5 R3
       42 DUPCLOSURE                       R6 K12 [PROTO_0]
       43 CALL                             R4 2 1
       44 NOT                              R5 R4
       45 GETIMPORT                        R6 K14 [table.sort]
       47 MOVE                             R7 R3
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R5
       51 CALL                             R6 2 0
       52 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["token"]
        2 GETTABLEKS                       R4 R1 K1 ["value"]
        4 FASTCALL1                        TYPEOF R4 ; [+2]
        5 GETIMPORT                        R3 K3 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFEQKS                       R3 K4 ["Color3"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R4 R1 K1 ["value"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K5 ["createElement"]
       19 GETUPVAL                         R5 2
       20 DUPTABLE                         R6 K8 [{"tag", "LayoutOrder"}]
       21 LOADK                            R8 K9 ["size-full-0 auto-y row gap-small align-center"]
       22 GETTABLEKS                       R10 R0 K10 ["isOdd"]
       24 JUMPIFNOT                        R10 ; [+5]
       25 GETTABLEKS                       R10 R0 K11 ["alternateRowBackgrounds"]
       27 JUMPIFNOT                        R10 ; [+2]
       28 LOADK                            R9 K12 [" bg-surface-100"]
       29 JUMP                             ; [+1]
       30 LOADK                            R9 K13 [""]
       31 CONCAT                           R7 R8 R9
       32 SETTABLEKS                       R7 R6 K6 ["tag"]
       34 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       36 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       38 DUPTABLE                         R7 K17 [{"Name", "ColorPreview", "Value"}]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K5 ["createElement"]
       42 GETUPVAL                         R9 3
       43 DUPTABLE                         R10 K20 [{"tag", "Size", "Text", "LayoutOrder"}]
       44 LOADK                            R11 K21 ["auto-y text-body-medium text-align-x-left"]
       45 SETTABLEKS                       R11 R10 K6 ["tag"]
       47 GETIMPORT                        R11 K24 [UDim2.fromScale]
       49 LOADK                            R12 K25 [0.5]
       50 LOADN                            R13 0
       51 CALL                             R11 2 1
       52 SETTABLEKS                       R11 R10 K18 ["Size"]
       54 LOADK                            R12 K26 ["%*.%*"]
       55 GETTABLEKS                       R14 R0 K27 ["category"]
       57 GETTABLEKS                       R15 R1 K28 ["fullPath"]
       59 NAMECALL                         R12 R12 K29 ["format"]
       61 CALL                             R12 3 1
       62 MOVE                             R11 R12
       63 SETTABLEKS                       R11 R10 K19 ["Text"]
       65 LOADN                            R11 1
       66 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K14 ["Name"]
       71 JUMPIF                           R2 ; [+1]
       72 JUMPIFNOT                        R3 ; [+30]
       73 GETUPVAL                         R9 1
       74 GETTABLEKS                       R8 R9 K5 ["createElement"]
       76 GETUPVAL                         R9 2
       77 DUPTABLE                         R10 K31 [{"tag", "backgroundStyle", "LayoutOrder"}]
       78 LOADK                            R11 K32 ["size-500-500 radius-small"]
       79 SETTABLEKS                       R11 R10 K6 ["tag"]
       81 JUMPIFNOT                        R2 ; [+9]
       82 DUPTABLE                         R11 K34 [{"Color3", "Transparency"}]
       83 GETTABLEKS                       R12 R1 K1 ["value"]
       85 SETTABLEKS                       R12 R11 K4 ["Color3"]
       87 LOADN                            R12 0
       88 SETTABLEKS                       R12 R11 K33 ["Transparency"]
       90 JUMP                             ; [+5]
       91 JUMPIFNOT                        R3 ; [+3]
       92 GETTABLEKS                       R11 R1 K1 ["value"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R11
       96 SETTABLEKS                       R11 R10 K30 ["backgroundStyle"]
       98 LOADN                            R11 2
       99 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
      101 CALL                             R8 2 1
      102 JUMP                             ; [+1]
      103 LOADNIL                          R8
      104 SETTABLEKS                       R8 R7 K15 ["ColorPreview"]
      106 GETUPVAL                         R9 1
      107 GETTABLEKS                       R8 R9 K5 ["createElement"]
      109 GETUPVAL                         R9 3
      110 DUPTABLE                         R10 K35 [{"tag", "Text", "LayoutOrder"}]
      111 LOADK                            R11 K36 ["size-0-0 auto-xy text-caption-large text-align-x-left"]
      112 SETTABLEKS                       R11 R10 K6 ["tag"]
      114 GETUPVAL                         R11 4
      115 GETTABLEKS                       R12 R1 K1 ["value"]
      117 CALL                             R11 1 1
      118 SETTABLEKS                       R11 R10 K19 ["Text"]
      120 LOADN                            R11 3
      121 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
      123 CALL                             R8 2 1
      124 SETTABLEKS                       R8 R7 K16 ["Value"]
      126 CALL                             R4 3 -1
      127 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["tokens"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["searchText"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["category"]
       10 CALL                             R0 3 1
       11 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K8 [{"key", "token", "category", "subcategory", "LayoutOrder", "isOdd", "alternateRowBackgrounds"}]
        5 LOADK                            R6 K9 ["%*-%*"]
        6 GETTABLEKS                       R8 R0 K3 ["category"]
        8 GETTABLEKS                       R9 R0 K10 ["fullPath"]
       10 NAMECALL                         R6 R6 K11 ["format"]
       12 CALL                             R6 3 1
       13 MOVE                             R5 R6
       14 SETTABLEKS                       R5 R4 K1 ["key"]
       16 SETTABLEKS                       R0 R4 K2 ["token"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K3 ["category"]
       21 SETTABLEKS                       R5 R4 K3 ["category"]
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R5 R6 K4 ["subcategory"]
       26 SETTABLEKS                       R5 R4 K4 ["subcategory"]
       28 SETTABLEKS                       R1 R4 K5 ["LayoutOrder"]
       30 MODK                             R6 R1 K12 [2]
       31 JUMPIFEQKN                       R6 K13 [1] ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K6 ["isOdd"]
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R5 R6 K7 ["alternateRowBackgrounds"]
       40 SETTABLEKS                       R5 R4 K7 ["alternateRowBackgrounds"]
       42 CALL                             R2 2 -1
       43 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 2
        8 GETTABLEKS                       R4 R0 K1 ["tokens"]
       10 GETTABLEKS                       R5 R0 K2 ["searchText"]
       12 SETLIST                          R3 R4 2 [1]
       14 CALL                             R1 2 1
       15 LENGTH                           R2 R1
       16 JUMPIFNOTEQKN                    R2 K3 [0] ; [+3]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K4 ["createElement"]
       23 GETUPVAL                         R3 2
       24 DUPTABLE                         R4 K7 [{"tag", "LayoutOrder"}]
       25 LOADK                            R5 K8 ["col gap-small size-full-0 auto-y"]
       26 SETTABLEKS                       R5 R4 K5 ["tag"]
       28 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       30 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       32 DUPTABLE                         R5 K11 [{"SubHeader", "TokensList"}]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K4 ["createElement"]
       36 GETUPVAL                         R7 3
       37 DUPTABLE                         R8 K13 [{"Text", "tag", "LayoutOrder"}]
       38 GETTABLEKS                       R9 R0 K14 ["subcategory"]
       40 SETTABLEKS                       R9 R8 K12 ["Text"]
       42 LOADK                            R9 K15 ["size-full-0 auto-y padding-top-medium text-title-medium text-align-x-left"]
       43 SETTABLEKS                       R9 R8 K5 ["tag"]
       45 LOADN                            R9 1
       46 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K9 ["SubHeader"]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R6 R7 K4 ["createElement"]
       54 GETUPVAL                         R7 2
       55 DUPTABLE                         R8 K7 [{"tag", "LayoutOrder"}]
       56 LOADK                            R9 K8 ["col gap-small size-full-0 auto-y"]
       57 SETTABLEKS                       R9 R8 K5 ["tag"]
       59 LOADN                            R9 2
       60 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       62 GETUPVAL                         R10 4
       63 GETTABLEKS                       R9 R10 K16 ["map"]
       65 MOVE                             R10 R1
       66 NEWCLOSURE                       R11 P1
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R0
       70 CALL                             R9 2 -1
       71 CALL                             R6 -1 1
       72 SETTABLEKS                       R6 R5 K10 ["TokensList"]
       74 CALL                             R2 3 -1
       75 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K8 [{"key", "subcategory", "tokens", "searchText", "category", "LayoutOrder", "alternateRowBackgrounds"}]
        5 SETTABLEKS                       R0 R4 K1 ["key"]
        7 SETTABLEKS                       R0 R4 K2 ["subcategory"]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R6 R7 K3 ["tokens"]
       12 GETTABLE                         R5 R6 R0
       13 SETTABLEKS                       R5 R4 K3 ["tokens"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K4 ["searchText"]
       18 SETTABLEKS                       R5 R4 K4 ["searchText"]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K5 ["category"]
       23 SETTABLEKS                       R5 R4 K5 ["category"]
       25 LOADN                            R6 2
       26 ADD                              R5 R6 R1
       27 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R5 R6 K7 ["alternateRowBackgrounds"]
       32 SETTABLEKS                       R5 R4 K7 ["alternateRowBackgrounds"]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["tokens"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["searchText"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["category"]
       10 CALL                             R0 3 1
       11 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K8 [{"key", "token", "category", "subcategory", "LayoutOrder", "isOdd", "alternateRowBackgrounds"}]
        5 LOADK                            R6 K9 ["%*-%*"]
        6 GETTABLEKS                       R8 R0 K3 ["category"]
        8 GETTABLEKS                       R9 R0 K10 ["fullPath"]
       10 NAMECALL                         R6 R6 K11 ["format"]
       12 CALL                             R6 3 1
       13 MOVE                             R5 R6
       14 SETTABLEKS                       R5 R4 K1 ["key"]
       16 SETTABLEKS                       R0 R4 K2 ["token"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R5 R6 K3 ["category"]
       21 SETTABLEKS                       R5 R4 K3 ["category"]
       23 LOADNIL                          R5
       24 SETTABLEKS                       R5 R4 K4 ["subcategory"]
       26 LOADN                            R6 2
       27 ADD                              R5 R6 R1
       28 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       30 MODK                             R6 R1 K12 [2]
       31 JUMPIFEQKN                       R6 K13 [1] ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K6 ["isOdd"]
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R5 R6 K7 ["alternateRowBackgrounds"]
       40 SETTABLEKS                       R5 R4 K7 ["alternateRowBackgrounds"]
       42 CALL                             R2 2 -1
       43 RETURN                           R2 -1

PROTO_10:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["hasSubcategories"]
        3 JUMPIFNOT                        R2 ; [+97]
        4 GETTABLEKS                       R3 R0 K1 ["tokens"]
        6 FASTCALL1                        TYPE R3 ; [+2]
        7 GETIMPORT                        R2 K3 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+90]
       12 NEWTABLE                         R2 0 0
       14 GETTABLEKS                       R3 R0 K1 ["tokens"]
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       21 MOVE                             R9 R2
       22 MOVE                             R10 R6
       23 GETIMPORT                        R8 K6 [table.insert]
       25 CALL                             R8 2 0
       26 FORGLOOP                         R3 1 ; [-8]
       28 GETIMPORT                        R3 K8 [table.sort]
       30 MOVE                             R4 R2
       31 GETUPVAL                         R5 0
       32 CALL                             R3 2 0
       33 LOADB                            R3 0
       34 MOVE                             R4 R2
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 GETTABLEKS                       R10 R0 K1 ["tokens"]
       40 GETTABLE                         R9 R10 R8
       41 JUMPIFNOT                        R9 ; [+42]
       42 LENGTH                           R10 R9
       43 LOADN                            R11 0
       44 JUMPIFNOTLT                      R11 R10 ; [+39]
       46 MOVE                             R10 R9
       47 LOADNIL                          R11
       48 LOADNIL                          R12
       49 FORGPREP                         R10
       50 GETIMPORT                        R15 K11 [string.lower]
       52 GETTABLEKS                       R16 R0 K12 ["searchText"]
       54 CALL                             R15 1 1
       55 LOADK                            R17 K13 ["%*.%*"]
       56 GETTABLEKS                       R19 R0 K14 ["category"]
       58 GETTABLEKS                       R20 R14 K15 ["fullPath"]
       60 NAMECALL                         R17 R17 K16 ["format"]
       62 CALL                             R17 3 1
       63 MOVE                             R16 R17
       64 GETIMPORT                        R17 K11 [string.lower]
       66 MOVE                             R18 R16
       67 CALL                             R17 1 1
       68 GETTABLEKS                       R18 R0 K12 ["searchText"]
       70 JUMPIFEQKS                       R18 K17 [""] ; [+9]
       72 GETIMPORT                        R18 K19 [string.find]
       74 MOVE                             R19 R17
       75 MOVE                             R20 R15
       76 LOADN                            R21 1
       77 LOADB                            R22 1
       78 CALL                             R18 4 1
       79 JUMPIFNOT                        R18 ; [+2]
       80 LOADB                            R3 1
       81 JUMP                             ; [+2]
       82 FORGLOOP                         R10 2 ; [-33]
       84 JUMPIF                           R3 ; [+2]
       85 FORGLOOP                         R4 2 ; [-48]
       87 JUMPIF                           R3 ; [+2]
       88 LOADNIL                          R4
       89 RETURN                           R4 1
       90 GETUPVAL                         R5 1
       91 GETTABLEKS                       R4 R5 K20 ["map"]
       93 MOVE                             R5 R2
       94 NEWCLOSURE                       R6 P0
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          UPVAL U3
       97 CAPTURE                          VAL R0
       98 CALL                             R4 2 1
       99 MOVE                             R1 R4
      100 JUMP                             ; [+30]
      101 GETUPVAL                         R3 2
      102 GETTABLEKS                       R2 R3 K21 ["useMemo"]
      104 NEWCLOSURE                       R3 P1
      105 CAPTURE                          UPVAL U4
      106 CAPTURE                          VAL R0
      107 NEWTABLE                         R4 0 2
      109 GETTABLEKS                       R5 R0 K1 ["tokens"]
      111 GETTABLEKS                       R6 R0 K12 ["searchText"]
      113 SETLIST                          R4 R5 2 [1]
      115 CALL                             R2 2 1
      116 LENGTH                           R3 R2
      117 JUMPIFNOTEQKN                    R3 K22 [0] ; [+3]
      119 LOADNIL                          R3
      120 RETURN                           R3 1
      121 GETUPVAL                         R4 1
      122 GETTABLEKS                       R3 R4 K20 ["map"]
      124 MOVE                             R4 R2
      125 NEWCLOSURE                       R5 P2
      126 CAPTURE                          UPVAL U2
      127 CAPTURE                          UPVAL U5
      128 CAPTURE                          VAL R0
      129 CALL                             R3 2 1
      130 MOVE                             R1 R3
      131 GETUPVAL                         R3 2
      132 GETTABLEKS                       R2 R3 K23 ["createElement"]
      134 GETUPVAL                         R3 6
      135 DUPTABLE                         R4 K26 [{"tag", "LayoutOrder"}]
      136 LOADK                            R5 K27 ["col gap-medium size-full-0 auto-y"]
      137 SETTABLEKS                       R5 R4 K24 ["tag"]
      139 GETTABLEKS                       R5 R0 K25 ["LayoutOrder"]
      141 SETTABLEKS                       R5 R4 K25 ["LayoutOrder"]
      143 DUPTABLE                         R5 K30 [{"Header", "Content"}]
      144 GETUPVAL                         R7 2
      145 GETTABLEKS                       R6 R7 K23 ["createElement"]
      147 GETUPVAL                         R7 7
      148 DUPTABLE                         R8 K32 [{"Text", "tag", "LayoutOrder"}]
      149 GETTABLEKS                       R9 R0 K14 ["category"]
      151 SETTABLEKS                       R9 R8 K31 ["Text"]
      153 LOADK                            R9 K33 ["size-full-0 auto-y text-heading-small text-align-x-left"]
      154 SETTABLEKS                       R9 R8 K24 ["tag"]
      156 LOADN                            R9 1
      157 SETTABLEKS                       R9 R8 K25 ["LayoutOrder"]
      159 CALL                             R6 2 1
      160 SETTABLEKS                       R6 R5 K28 ["Header"]
      162 GETUPVAL                         R7 2
      163 GETTABLEKS                       R6 R7 K23 ["createElement"]
      165 GETUPVAL                         R7 6
      166 DUPTABLE                         R8 K26 [{"tag", "LayoutOrder"}]
      167 LOADK                            R9 K34 ["col gap-small size-full-0 auto-y"]
      168 SETTABLEKS                       R9 R8 K24 ["tag"]
      170 LOADN                            R9 2
      171 SETTABLEKS                       R9 R8 K25 ["LayoutOrder"]
      173 MOVE                             R9 R1
      174 CALL                             R6 3 1
      175 SETTABLEKS                       R6 R5 K29 ["Content"]
      177 CALL                             R2 3 -1
      178 RETURN                           R2 -1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLE                         R6 R7 R5
        8 JUMPIFNOT                        R6 ; [+21]
        9 GETUPVAL                         R7 1
       10 GETTABLE                         R6 R7 R5
       11 GETUPVAL                         R7 2
       12 MOVE                             R8 R6
       13 CALL                             R7 1 1
       14 JUMPIFNOT                        R7 ; [+8]
       15 GETUPVAL                         R7 3
       16 MOVE                             R8 R6
       17 MOVE                             R9 R5
       18 LOADNIL                          R10
       19 GETUPVAL                         R11 4
       20 CALL                             R7 4 1
       21 SETTABLE                         R7 R0 R5
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R7 5
       24 MOVE                             R8 R6
       25 MOVE                             R9 R5
       26 LOADNIL                          R10
       27 GETUPVAL                         R11 4
       28 CALL                             R7 4 1
       29 SETTABLE                         R7 R0 R5
       30 FORGLOOP                         R1 2 ; [-25]
       32 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADB                            R3 0
        3 JUMPIFNOT                        R2 ; [+29]
        4 FASTCALL1                        TYPE R2 ; [+3]
        5 MOVE                             R5 R2
        6 GETIMPORT                        R4 K1 [type]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+23]
       11 MOVE                             R4 R2
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 FASTCALL1                        TYPE R8 ; [+3]
       16 MOVE                             R10 R8
       17 GETIMPORT                        R9 K1 [type]
       19 CALL                             R9 1 1
       20 JUMPIFNOTEQKS                    R9 K2 ["table"] ; [+10]
       22 FASTCALL1                        TYPE R7 ; [+3]
       23 MOVE                             R10 R7
       24 GETIMPORT                        R9 K1 [type]
       26 CALL                             R9 1 1
       27 JUMPIFNOTEQKS                    R9 K3 ["string"] ; [+3]
       29 LOADB                            R3 1
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R4 2 ; [-17]
       33 GETUPVAL                         R5 1
       34 GETTABLEKS                       R4 R5 K4 ["createElement"]
       36 GETUPVAL                         R5 2
       37 DUPTABLE                         R6 K12 [{"key", "category", "tokens", "searchText", "hasSubcategories", "LayoutOrder", "alternateRowBackgrounds"}]
       38 SETTABLEKS                       R0 R6 K5 ["key"]
       40 SETTABLEKS                       R0 R6 K6 ["category"]
       42 SETTABLEKS                       R2 R6 K7 ["tokens"]
       44 GETUPVAL                         R7 3
       45 SETTABLEKS                       R7 R6 K8 ["searchText"]
       47 SETTABLEKS                       R3 R6 K9 ["hasSubcategories"]
       49 SETTABLEKS                       R1 R6 K10 ["LayoutOrder"]
       51 GETUPVAL                         R7 4
       52 SETTABLEKS                       R7 R6 K11 ["alternateRowBackgrounds"]
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1

PROTO_13:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLE                         R6 R7 R5
        8 JUMPIFNOT                        R6 ; [+7]
        9 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       11 MOVE                             R7 R0
       12 MOVE                             R8 R5
       13 GETIMPORT                        R6 K2 [table.insert]
       15 CALL                             R6 2 0
       16 FORGLOOP                         R1 2 ; [-11]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K3 ["map"]
       21 MOVE                             R2 R0
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CALL                             R1 2 -1
       29 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["controls"]
        2 GETTABLEKS                       R1 R2 K1 ["searchText"]
        4 GETTABLEKS                       R3 R0 K0 ["controls"]
        6 GETTABLEKS                       R2 R3 K2 ["flattenColors"]
        8 GETTABLEKS                       R4 R0 K0 ["controls"]
       10 GETTABLEKS                       R3 R4 K3 ["alternateRowBackgrounds"]
       12 GETUPVAL                         R4 0
       13 CALL                             R4 0 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K4 ["useMemo"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R4
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U5
       24 NEWTABLE                         R7 0 2
       26 MOVE                             R8 R4
       27 MOVE                             R9 R2
       28 SETLIST                          R7 R8 2 [1]
       30 CALL                             R5 2 1
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R6 R7 K5 ["createElement"]
       34 GETUPVAL                         R7 6
       35 DUPTABLE                         R8 K7 [{"tag"}]
       36 LOADK                            R9 K8 ["col gap-xlarge size-full-0 auto-y"]
       37 SETTABLEKS                       R9 R8 K6 ["tag"]
       39 NEWCLOSURE                       R9 P1
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U8
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 CALL                             R9 0 -1
       48 CALL                             R6 -1 -1
       49 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Text"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R10 R0 K12 ["Providers"]
       37 GETTABLEKS                       R9 R10 K13 ["Style"]
       39 GETTABLEKS                       R8 R9 K14 ["Tokens"]
       41 GETTABLEKS                       R7 R8 K15 ["TokenProcessingUtilities"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R10 R0 K12 ["Providers"]
       48 GETTABLEKS                       R9 R10 K13 ["Style"]
       50 GETTABLEKS                       R8 R9 K16 ["useTokens"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R6 K17 ["orderedTokenCategories"]
       55 GETTABLEKS                       R9 R6 K18 ["formatTokenValue"]
       57 GETTABLEKS                       R10 R6 K19 ["isColorStyle"]
       59 GETTABLEKS                       R11 R6 K20 ["collectTokens"]
       61 GETTABLEKS                       R12 R6 K21 ["collectTokensWithSubcategories"]
       63 GETTABLEKS                       R13 R6 K22 ["hasSubcategories"]
       65 GETTABLEKS                       R14 R6 K23 ["sortTokens"]
       67 DUPCLOSURE                       R15 K24 [PROTO_2]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R14
       70 DUPCLOSURE                       R16 K25 [PROTO_3]
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R9
       76 DUPCLOSURE                       R17 K26 [PROTO_6]
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R16
       83 DUPCLOSURE                       R18 K27 [PROTO_10]
       84 CAPTURE                          VAL R14
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R17
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R4
       92 DUPCLOSURE                       R19 K28 [PROTO_14]
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R18
      102 DUPTABLE                         R20 K32 [{"name", "story", "controls"}]
      103 LOADK                            R21 K14 ["Tokens"]
      104 SETTABLEKS                       R21 R20 K29 ["name"]
      106 SETTABLEKS                       R19 R20 K30 ["story"]
      108 DUPTABLE                         R21 K36 [{"searchText", "flattenColors", "alternateRowBackgrounds"}]
      109 LOADK                            R22 K37 [""]
      110 SETTABLEKS                       R22 R21 K33 ["searchText"]
      112 LOADB                            R22 1
      113 SETTABLEKS                       R22 R21 K34 ["flattenColors"]
      115 LOADB                            R22 0
      116 SETTABLEKS                       R22 R21 K35 ["alternateRowBackgrounds"]
      118 SETTABLEKS                       R21 R20 K31 ["controls"]
      120 RETURN                           R20 1
