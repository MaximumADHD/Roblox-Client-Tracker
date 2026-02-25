PROTO_0:
        0 NEWTABLE                         R0 0 4
        2 DUPTABLE                         R1 K2 [{"Name", "Key"}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K3 ["AssetMetadataTable"]
        5 LOADK                            R5 K4 ["ColumnName"]
        6 NAMECALL                         R2 R2 K5 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K0 ["Name"]
       11 LOADK                            R2 K6 ["name"]
       12 SETTABLEKS                       R2 R1 K1 ["Key"]
       14 DUPTABLE                         R2 K2 [{"Name", "Key"}]
       15 GETUPVAL                         R3 0
       16 LOADK                            R5 K3 ["AssetMetadataTable"]
       17 LOADK                            R6 K7 ["ColumnOwner"]
       18 NAMECALL                         R3 R3 K5 ["getText"]
       20 CALL                             R3 3 1
       21 SETTABLEKS                       R3 R2 K0 ["Name"]
       23 LOADK                            R3 K8 ["owner"]
       24 SETTABLEKS                       R3 R2 K1 ["Key"]
       26 DUPTABLE                         R3 K2 [{"Name", "Key"}]
       27 GETUPVAL                         R4 0
       28 LOADK                            R6 K3 ["AssetMetadataTable"]
       29 LOADK                            R7 K9 ["ColumnId"]
       30 NAMECALL                         R4 R4 K5 ["getText"]
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K0 ["Name"]
       35 LOADK                            R4 K10 ["id"]
       36 SETTABLEKS                       R4 R3 K1 ["Key"]
       38 DUPTABLE                         R4 K2 [{"Name", "Key"}]
       39 GETUPVAL                         R5 0
       40 LOADK                            R7 K3 ["AssetMetadataTable"]
       41 LOADK                            R8 K11 ["ColumnType"]
       42 NAMECALL                         R5 R5 K5 ["getText"]
       44 CALL                             R5 3 1
       45 SETTABLEKS                       R5 R4 K0 ["Name"]
       47 LOADK                            R5 K12 ["type"]
       48 SETTABLEKS                       R5 R4 K1 ["Key"]
       50 SETLIST                          R0 R1 4 [1]
       52 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["AssetModels"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["state"]
       10 JUMPIFNOTEQKS                    R6 K2 ["Loading"] ; [+23]
       12 GETUPVAL                         R6 1
       13 LOADK                            R8 K3 ["AssetMetadataTable"]
       14 LOADK                            R9 K4 ["PlaceholderLoading"]
       15 NAMECALL                         R6 R6 K5 ["getText"]
       17 CALL                             R6 3 1
       18 DUPTABLE                         R9 K10 [{"name", "owner", "id", "type"}]
       19 SETTABLEKS                       R6 R9 K6 ["name"]
       21 SETTABLEKS                       R6 R9 K7 ["owner"]
       23 SETTABLEKS                       R4 R9 K8 ["id"]
       25 SETTABLEKS                       R6 R9 K9 ["type"]
       27 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       29 MOVE                             R8 R0
       30 GETIMPORT                        R7 K13 [table.insert]
       32 CALL                             R7 2 0
       33 JUMP                             ; [+93]
       34 GETTABLEKS                       R6 R5 K1 ["state"]
       36 JUMPIFNOTEQKS                    R6 K14 ["Failed"] ; [+23]
       38 GETUPVAL                         R6 1
       39 LOADK                            R8 K3 ["AssetMetadataTable"]
       40 LOADK                            R9 K15 ["PlaceholderFailed"]
       41 NAMECALL                         R6 R6 K5 ["getText"]
       43 CALL                             R6 3 1
       44 DUPTABLE                         R9 K10 [{"name", "owner", "id", "type"}]
       45 SETTABLEKS                       R6 R9 K6 ["name"]
       47 SETTABLEKS                       R6 R9 K7 ["owner"]
       49 SETTABLEKS                       R4 R9 K8 ["id"]
       51 SETTABLEKS                       R6 R9 K9 ["type"]
       53 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       55 MOVE                             R8 R0
       56 GETIMPORT                        R7 K13 [table.insert]
       58 CALL                             R7 2 0
       59 JUMP                             ; [+67]
       60 GETTABLEKS                       R6 R5 K1 ["state"]
       62 JUMPIFNOTEQKS                    R6 K16 ["Loaded"] ; [+64]
       64 GETTABLEKS                       R7 R5 K17 ["metadata"]
       66 GETTABLEKS                       R6 R7 K18 ["visibility"]
       68 JUMPIFNOTEQKS                    R6 K19 ["Private"] ; [+23]
       70 GETUPVAL                         R6 1
       71 LOADK                            R8 K3 ["AssetMetadataTable"]
       72 LOADK                            R9 K20 ["PlaceholderPrivate"]
       73 NAMECALL                         R6 R6 K5 ["getText"]
       75 CALL                             R6 3 1
       76 DUPTABLE                         R9 K10 [{"name", "owner", "id", "type"}]
       77 SETTABLEKS                       R6 R9 K6 ["name"]
       79 SETTABLEKS                       R6 R9 K7 ["owner"]
       81 SETTABLEKS                       R4 R9 K8 ["id"]
       83 SETTABLEKS                       R6 R9 K9 ["type"]
       85 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       87 MOVE                             R8 R0
       88 GETIMPORT                        R7 K13 [table.insert]
       90 CALL                             R7 2 0
       91 JUMP                             ; [+35]
       92 GETTABLEKS                       R7 R5 K17 ["metadata"]
       94 GETTABLEKS                       R6 R7 K18 ["visibility"]
       96 JUMPIFNOTEQKS                    R6 K21 ["Public"] ; [+30]
       98 DUPTABLE                         R8 K10 [{"name", "owner", "id", "type"}]
       99 GETTABLEKS                       R10 R5 K17 ["metadata"]
      101 GETTABLEKS                       R9 R10 K6 ["name"]
      103 SETTABLEKS                       R9 R8 K6 ["name"]
      105 GETTABLEKS                       R10 R5 K17 ["metadata"]
      107 GETTABLEKS                       R9 R10 K7 ["owner"]
      109 SETTABLEKS                       R9 R8 K7 ["owner"]
      111 SETTABLEKS                       R4 R8 K8 ["id"]
      113 GETTABLEKS                       R11 R5 K17 ["metadata"]
      115 GETTABLEKS                       R10 R11 K9 ["type"]
      117 GETTABLEKS                       R9 R10 K22 ["Name"]
      119 SETTABLEKS                       R9 R8 K9 ["type"]
      121 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
      123 MOVE                             R7 R0
      124 GETIMPORT                        R6 K13 [table.insert]
      126 CALL                             R6 2 0
      127 FORGLOOP                         R1 2 ; [-120]
      129 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["index"]
        4 GETTABLE                         R3 R4 R5
        5 GETTABLEKS                       R2 R3 K1 ["Key"]
        7 GETTABLE                         R3 R0 R2
        8 GETTABLE                         R4 R1 R2
        9 FASTCALL1                        TYPEOF R3 ; [+3]
       10 MOVE                             R8 R3
       11 GETIMPORT                        R7 K3 [typeof]
       13 CALL                             R7 1 1
       14 FASTCALL1                        TYPEOF R4 ; [+3]
       15 MOVE                             R9 R4
       16 GETIMPORT                        R8 K3 [typeof]
       18 CALL                             R8 1 1
       19 JUMPIFEQ                         R7 R8 ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 FASTCALL2K                       ASSERT R6 K4 ; [+4]
       25 LOADK                            R7 K4 ["valueA and valueB should have the same type"]
       26 GETIMPORT                        R5 K6 [assert]
       28 CALL                             R5 2 0
       29 FASTCALL1                        TYPEOF R3 ; [+3]
       30 MOVE                             R6 R3
       31 GETIMPORT                        R5 K3 [typeof]
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+11]
       36 GETIMPORT                        R5 K9 [string.upper]
       38 MOVE                             R6 R3
       39 CALL                             R5 1 1
       40 MOVE                             R3 R5
       41 GETIMPORT                        R5 K9 [string.upper]
       43 MOVE                             R6 R4
       44 CALL                             R5 1 1
       45 MOVE                             R4 R5
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R5 R6 K10 ["order"]
       49 GETIMPORT                        R6 K14 [Enum.SortDirection.Ascending]
       51 JUMPIFNOTEQ                      R5 R6 ; [+6]
       53 JUMPIFLT                         R4 R3 ; [+2]
       55 LOADB                            R5 0 +1
       56 LOADB                            R5 1
       57 RETURN                           R5 1
       58 JUMPIFLT                         R3 R4 ; [+2]
       60 LOADB                            R5 0 +1
       61 LOADB                            R5 1
       62 RETURN                           R5 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K4 [table.sort]
        6 MOVE                             R2 R0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CALL                             R1 2 0
       11 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K2 [table.move]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R5 1
        4 SUBK                             R4 R5 K3 [1]
        5 MULK                             R3 R4 K4 [8]
        6 ADDK                             R2 R3 K3 [1]
        7 GETUPVAL                         R4 1
        8 MULK                             R3 R4 K4 [8]
        9 LOADN                            R4 1
       10 NEWTABLE                         R5 0 0
       12 CALL                             R0 5 1
       13 LENGTH                           R2 R0
       14 MODK                             R1 R2 K4 [8]
       15 JUMPIFNOTEQKN                    R1 K5 [0] ; [+4]
       17 LENGTH                           R1 R0
       18 JUMPIFNOTEQKN                    R1 K5 [0] ; [+16]
       20 LOADN                            R3 1
       21 LENGTH                           R5 R0
       22 MODK                             R4 R5 K4 [8]
       23 SUBRK                            R1 R4 K4 [8]
       24 LOADN                            R2 1
       25 FORNPREP                         R1
       26 NEWTABLE                         R6 0 0
       28 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
       30 MOVE                             R5 R0
       31 GETIMPORT                        R4 K7 [table.insert]
       33 CALL                             R4 2 0
       34 FORNLOOP                         R1
       35 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"index", "order"}]
        2 SETTABLEKS                       R0 R3 K0 ["index"]
        4 SETTABLEKS                       R1 R3 K1 ["order"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R1 K2 ["locale"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R5 0 2
       24 GETTABLEKS                       R6 R1 K2 ["locale"]
       26 GETTABLEKS                       R7 R0 K3 ["AssetModels"]
       28 SETLIST                          R5 R6 2 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R4 R5 K4 ["useState"]
       34 LOADN                            R5 1
       35 CALL                             R4 1 2
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K4 ["useState"]
       39 DUPTABLE                         R7 K7 [{"index", "order"}]
       40 LOADN                            R8 3
       41 SETTABLEKS                       R8 R7 K5 ["index"]
       43 GETIMPORT                        R8 K11 [Enum.SortDirection.Descending]
       45 SETTABLEKS                       R8 R7 K6 ["order"]
       47 CALL                             R6 1 2
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R8 R9 K1 ["useMemo"]
       51 NEWCLOSURE                       R9 P2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R6
       55 NEWTABLE                         R10 0 3
       57 MOVE                             R11 R2
       58 MOVE                             R12 R3
       59 MOVE                             R13 R6
       60 SETLIST                          R10 R11 3 [1]
       62 CALL                             R8 2 1
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R9 R10 K1 ["useMemo"]
       66 NEWCLOSURE                       R10 P3
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R4
       69 NEWTABLE                         R11 0 2
       71 MOVE                             R12 R8
       72 MOVE                             R13 R4
       73 SETLIST                          R11 R12 2 [1]
       75 CALL                             R9 2 1
       76 GETUPVAL                         R11 1
       77 GETTABLEKS                       R10 R11 K12 ["createElement"]
       79 GETUPVAL                         R11 2
       80 DUPTABLE                         R12 K24 [{"Rows", "Columns", "PageIndex", "PageCount", "PageSize", "SortIndex", "SortOrder", "OnPageChange", "OnSortChange", "Size", "AutomaticSize"}]
       81 SETTABLEKS                       R9 R12 K13 ["Rows"]
       83 SETTABLEKS                       R2 R12 K14 ["Columns"]
       85 SETTABLEKS                       R4 R12 K15 ["PageIndex"]
       87 LENGTH                           R17 R3
       88 ADDK                             R16 R17 K25 [8]
       89 SUBK                             R15 R16 K26 [1]
       90 IDIVK                            R14 R15 K25 [8]
       91 FASTCALL2K                       MATH_MAX R14 K26 ; [+4]
       93 LOADK                            R15 K26 [1]
       94 GETIMPORT                        R13 K29 [math.max]
       96 CALL                             R13 2 1
       97 SETTABLEKS                       R13 R12 K16 ["PageCount"]
       99 LOADN                            R13 8
      100 SETTABLEKS                       R13 R12 K17 ["PageSize"]
      102 GETTABLEKS                       R13 R6 K5 ["index"]
      104 SETTABLEKS                       R13 R12 K18 ["SortIndex"]
      106 GETTABLEKS                       R13 R6 K6 ["order"]
      108 SETTABLEKS                       R13 R12 K19 ["SortOrder"]
      110 SETTABLEKS                       R5 R12 K20 ["OnPageChange"]
      112 NEWCLOSURE                       R13 P4
      113 CAPTURE                          VAL R7
      114 SETTABLEKS                       R13 R12 K21 ["OnSortChange"]
      116 GETIMPORT                        R13 K32 [UDim2.fromScale]
      118 LOADN                            R14 1
      119 LOADN                            R15 0
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K22 ["Size"]
      123 GETIMPORT                        R13 K34 [Enum.AutomaticSize.Y]
      125 SETTABLEKS                       R13 R12 K23 ["AutomaticSize"]
      127 CALL                             R10 2 -1
      128 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetAccess"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R1 K9 ["UI"]
       23 GETTABLEKS                       R3 R4 K10 ["PaginatedTable"]
       25 GETTABLEKS                       R5 R1 K11 ["ContextServices"]
       27 GETTABLEKS                       R4 R5 K12 ["Localization"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R7 R0 K13 ["Src"]
       33 GETTABLEKS                       R6 R7 K14 ["Types"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K15 [PROTO_6]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 RETURN                           R6 1
