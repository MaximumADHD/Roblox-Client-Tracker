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
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K11 ["some"]
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
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K5 ["createElement"]
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
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K5 ["createElement"]
       42 GETUPVAL                         R9 3
       43 DUPTABLE                         R10 K22 [{["tag"] = "auto-y text-body-medium text-align-x-left", ["Size"], ["Text"], ["LayoutOrder"] = 1}]
       44 GETIMPORT                        R11 K25 [UDim2.fromScale]
       46 LOADK                            R12 K26 [0.5]
       47 LOADN                            R13 0
       48 CALL                             R11 2 1
       49 SETTABLEKS                       R11 R10 K19 ["Size"]
       51 LOADK                            R12 K27 ["%*.%*"]
       52 GETTABLEKS                       R14 R0 K28 ["category"]
       54 GETTABLEKS                       R15 R1 K29 ["fullPath"]
       56 NAMECALL                         R12 R12 K30 ["format"]
       58 CALL                             R12 3 1
       59 MOVE                             R11 R12
       60 SETTABLEKS                       R11 R10 K20 ["Text"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K14 ["Name"]
       65 JUMPIF                           R2 ; [+1]
       66 JUMPIFNOT                        R3 ; [+21]
       67 GETUPVAL                         R8 1
       68 GETTABLEKS                       R8 R8 K5 ["createElement"]
       70 GETUPVAL                         R9 2
       71 DUPTABLE                         R10 K34 [{["tag"] = "size-500-500 radius-small", ["backgroundStyle"], ["LayoutOrder"] = 2}]
       72 JUMPIFNOT                        R2 ; [+6]
       73 DUPTABLE                         R11 K37 [{["Color3"], ["Transparency"] = 0}]
       74 GETTABLEKS                       R12 R1 K1 ["value"]
       76 SETTABLEKS                       R12 R11 K4 ["Color3"]
       78 JUMP                             ; [+5]
       79 JUMPIFNOT                        R3 ; [+3]
       80 GETTABLEKS                       R11 R1 K1 ["value"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R11
       84 SETTABLEKS                       R11 R10 K32 ["backgroundStyle"]
       86 CALL                             R8 2 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R8
       89 SETTABLEKS                       R8 R7 K15 ["ColorPreview"]
       91 GETUPVAL                         R8 1
       92 GETTABLEKS                       R8 R8 K5 ["createElement"]
       94 GETUPVAL                         R9 3
       95 DUPTABLE                         R10 K40 [{["tag"] = "size-0-0 auto-xy text-caption-large text-align-x-left", ["Text"], ["LayoutOrder"] = 3}]
       96 GETUPVAL                         R11 4
       97 GETTABLEKS                       R12 R1 K1 ["value"]
       99 CALL                             R11 1 1
      100 SETTABLEKS                       R11 R10 K20 ["Text"]
      102 CALL                             R8 2 1
      103 SETTABLEKS                       R8 R7 K16 ["Value"]
      105 CALL                             R4 3 -1
      106 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["tokens"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["searchText"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["category"]
       10 CALL                             R0 3 1
       11 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
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
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K3 ["category"]
       21 SETTABLEKS                       R5 R4 K3 ["category"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K4 ["subcategory"]
       26 SETTABLEKS                       R5 R4 K4 ["subcategory"]
       28 SETTABLEKS                       R1 R4 K5 ["LayoutOrder"]
       30 MODK                             R6 R1 K12 [2]
       31 JUMPIFEQKN                       R6 K13 [1] ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 SETTABLEKS                       R5 R4 K6 ["isOdd"]
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R5 R5 K7 ["alternateRowBackgrounds"]
       40 SETTABLEKS                       R5 R4 K7 ["alternateRowBackgrounds"]
       42 CALL                             R2 2 -1
       43 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
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
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K4 ["createElement"]
       23 GETUPVAL                         R3 2
       24 DUPTABLE                         R4 K8 [{["tag"] = "size-full-0 auto-y col gap-small", ["LayoutOrder"]}]
       25 GETTABLEKS                       R5 R0 K7 ["LayoutOrder"]
       27 SETTABLEKS                       R5 R4 K7 ["LayoutOrder"]
       29 DUPTABLE                         R5 K11 [{"SubHeader", "TokensList"}]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K4 ["createElement"]
       33 GETUPVAL                         R7 3
       34 DUPTABLE                         R8 K15 [{["Text"], ["tag"] = "size-full-0 auto-y text-title-medium text-align-x-left padding-top-medium", ["LayoutOrder"] = 1}]
       35 GETTABLEKS                       R9 R0 K16 ["subcategory"]
       37 SETTABLEKS                       R9 R8 K12 ["Text"]
       39 CALL                             R6 2 1
       40 SETTABLEKS                       R6 R5 K9 ["SubHeader"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K4 ["createElement"]
       45 GETUPVAL                         R7 2
       46 DUPTABLE                         R8 K18 [{["tag"] = "size-full-0 auto-y col gap-small", ["LayoutOrder"] = 2}]
       47 GETUPVAL                         R9 4
       48 GETTABLEKS                       R9 R9 K19 ["map"]
       50 MOVE                             R10 R1
       51 NEWCLOSURE                       R11 P1
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R0
       55 CALL                             R9 2 -1
       56 CALL                             R6 -1 1
       57 SETTABLEKS                       R6 R5 K10 ["TokensList"]
       59 CALL                             R2 3 -1
       60 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K8 [{"key", "subcategory", "tokens", "searchText", "category", "LayoutOrder", "alternateRowBackgrounds"}]
        5 SETTABLEKS                       R0 R4 K1 ["key"]
        7 SETTABLEKS                       R0 R4 K2 ["subcategory"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K3 ["tokens"]
       12 GETTABLE                         R5 R6 R0
       13 SETTABLEKS                       R5 R4 K3 ["tokens"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K4 ["searchText"]
       18 SETTABLEKS                       R5 R4 K4 ["searchText"]
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K5 ["category"]
       23 SETTABLEKS                       R5 R4 K5 ["category"]
       25 LOADN                            R6 2
       26 ADD                              R5 R6 R1
       27 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K7 ["alternateRowBackgrounds"]
       32 SETTABLEKS                       R5 R4 K7 ["alternateRowBackgrounds"]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["tokens"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["searchText"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["category"]
       10 CALL                             R0 3 1
       11 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K9 [{["key"], ["token"], ["category"], ["subcategory"] = , ["LayoutOrder"], ["isOdd"], ["alternateRowBackgrounds"]}]
        5 LOADK                            R6 K10 ["%*-%*"]
        6 GETTABLEKS                       R8 R0 K3 ["category"]
        8 GETTABLEKS                       R9 R0 K11 ["fullPath"]
       10 NAMECALL                         R6 R6 K12 ["format"]
       12 CALL                             R6 3 1
       13 MOVE                             R5 R6
       14 SETTABLEKS                       R5 R4 K1 ["key"]
       16 SETTABLEKS                       R0 R4 K2 ["token"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K3 ["category"]
       21 SETTABLEKS                       R5 R4 K3 ["category"]
       23 LOADN                            R6 2
       24 ADD                              R5 R6 R1
       25 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       27 MODK                             R6 R1 K13 [2]
       28 JUMPIFEQKN                       R6 K14 [1] ; [+2]
       30 LOADB                            R5 0 +1
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K7 ["isOdd"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K8 ["alternateRowBackgrounds"]
       37 SETTABLEKS                       R5 R4 K8 ["alternateRowBackgrounds"]
       39 CALL                             R2 2 -1
       40 RETURN                           R2 -1

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
       90 GETUPVAL                         R4 1
       91 GETTABLEKS                       R4 R4 K20 ["map"]
       93 MOVE                             R5 R2
       94 NEWCLOSURE                       R6 P0
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          UPVAL U3
       97 CAPTURE                          VAL R0
       98 CALL                             R4 2 1
       99 MOVE                             R1 R4
      100 JUMP                             ; [+30]
      101 GETUPVAL                         R2 2
      102 GETTABLEKS                       R2 R2 K21 ["useMemo"]
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
      121 GETUPVAL                         R3 1
      122 GETTABLEKS                       R3 R3 K20 ["map"]
      124 MOVE                             R4 R2
      125 NEWCLOSURE                       R5 P2
      126 CAPTURE                          UPVAL U2
      127 CAPTURE                          UPVAL U5
      128 CAPTURE                          VAL R0
      129 CALL                             R3 2 1
      130 MOVE                             R1 R3
      131 GETUPVAL                         R2 2
      132 GETTABLEKS                       R2 R2 K23 ["createElement"]
      134 GETUPVAL                         R3 6
      135 DUPTABLE                         R4 K27 [{["tag"] = "size-full-0 auto-y col gap-medium", ["LayoutOrder"]}]
      136 GETTABLEKS                       R5 R0 K26 ["LayoutOrder"]
      138 SETTABLEKS                       R5 R4 K26 ["LayoutOrder"]
      140 DUPTABLE                         R5 K30 [{"Header", "Content"}]
      141 GETUPVAL                         R6 2
      142 GETTABLEKS                       R6 R6 K23 ["createElement"]
      144 GETUPVAL                         R7 7
      145 DUPTABLE                         R8 K34 [{["Text"], ["tag"] = "size-full-0 auto-y text-heading-small text-align-x-left", ["LayoutOrder"] = 1}]
      146 GETTABLEKS                       R9 R0 K14 ["category"]
      148 SETTABLEKS                       R9 R8 K31 ["Text"]
      150 CALL                             R6 2 1
      151 SETTABLEKS                       R6 R5 K28 ["Header"]
      153 GETUPVAL                         R6 2
      154 GETTABLEKS                       R6 R6 K23 ["createElement"]
      156 GETUPVAL                         R7 6
      157 DUPTABLE                         R8 K37 [{["tag"] = "size-full-0 auto-y col gap-small", ["LayoutOrder"] = 2}]
      158 MOVE                             R9 R1
      159 CALL                             R6 3 1
      160 SETTABLEKS                       R6 R5 K29 ["Content"]
      162 CALL                             R2 3 -1
      163 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getTokens"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 NEWTABLE                         R1 0 0
        8 GETUPVAL                         R2 3
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLE                         R7 R0 R6
       13 JUMPIFNOT                        R7 ; [+20]
       14 GETTABLE                         R7 R0 R6
       15 GETUPVAL                         R8 4
       16 MOVE                             R9 R7
       17 CALL                             R8 1 1
       18 JUMPIFNOT                        R8 ; [+8]
       19 GETUPVAL                         R8 5
       20 MOVE                             R9 R7
       21 MOVE                             R10 R6
       22 LOADNIL                          R11
       23 GETUPVAL                         R12 6
       24 CALL                             R8 4 1
       25 SETTABLE                         R8 R1 R6
       26 JUMP                             ; [+7]
       27 GETUPVAL                         R8 7
       28 MOVE                             R9 R7
       29 MOVE                             R10 R6
       30 LOADNIL                          R11
       31 GETUPVAL                         R12 6
       32 CALL                             R8 4 1
       33 SETTABLE                         R8 R1 R6
       34 FORGLOOP                         R2 2 ; [-23]
       36 RETURN                           R1 1

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
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K4 ["createElement"]
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
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K3 ["map"]
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
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R1 R1 K1 ["searchText"]
        4 GETTABLEKS                       R2 R0 K0 ["controls"]
        6 GETTABLEKS                       R2 R2 K2 ["flattenColors"]
        8 GETTABLEKS                       R3 R0 K0 ["controls"]
       10 GETTABLEKS                       R3 R3 K3 ["alternateRowBackgrounds"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R6 R0 K4 ["theme"]
       15 GETTABLE                         R4 R5 R6
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R7 R0 K5 ["platform"]
       19 GETTABLE                         R5 R6 R7
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R4
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U7
       32 NEWTABLE                         R8 0 3
       34 MOVE                             R9 R4
       35 MOVE                             R10 R5
       36 MOVE                             R11 R2
       37 SETLIST                          R8 R9 3 [1]
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K7 ["createElement"]
       43 GETUPVAL                         R8 8
       44 DUPTABLE                         R9 K10 [{["tag"] = "size-full-0 auto-y col gap-xlarge"}]
       45 NEWCLOSURE                       R10 P1
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          VAL R6
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U2
       50 CAPTURE                          UPVAL U10
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R3
       53 CALL                             R10 0 -1
       54 CALL                             R7 -1 -1
       55 RETURN                           R7 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Text"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["View"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["Device"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["Theme"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K15 ["Providers"]
       51 GETTABLEKS                       R9 R9 K16 ["Style"]
       53 GETTABLEKS                       R9 R9 K17 ["Tokens"]
       55 GETTABLEKS                       R9 R9 K18 ["TokenProcessingUtilities"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K15 ["Providers"]
       62 GETTABLEKS                       R10 R10 K16 ["Style"]
       64 GETTABLEKS                       R10 R10 K17 ["Tokens"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R8 K19 ["orderedTokenCategories"]
       69 GETTABLEKS                       R11 R8 K20 ["formatTokenValue"]
       71 GETTABLEKS                       R12 R8 K21 ["isColorStyle"]
       73 GETTABLEKS                       R13 R8 K22 ["collectTokens"]
       75 GETTABLEKS                       R14 R8 K23 ["collectTokensWithSubcategories"]
       77 GETTABLEKS                       R15 R8 K24 ["hasSubcategories"]
       79 GETTABLEKS                       R16 R8 K25 ["sortTokens"]
       81 DUPCLOSURE                       R17 K26 [PROTO_2]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R16
       84 DUPCLOSURE                       R18 K27 [PROTO_3]
       85 CAPTURE                          VAL R12
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R11
       90 DUPCLOSURE                       R19 K28 [PROTO_6]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R17
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R18
       97 DUPCLOSURE                       R20 K29 [PROTO_10]
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R19
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R18
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R4
      106 DUPCLOSURE                       R21 K30 [PROTO_14]
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R15
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R20
      118 DUPTABLE                         R22 K34 [{["name"] = "Tokens", ["story"], ["controls"]}]
      119 SETTABLEKS                       R21 R22 K32 ["story"]
      121 DUPTABLE                         R23 K41 [{["searchText"] = "", ["flattenColors"] = True, ["alternateRowBackgrounds"] = False}]
      122 SETTABLEKS                       R23 R22 K33 ["controls"]
      124 RETURN                           R22 1
