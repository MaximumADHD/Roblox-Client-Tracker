PROTO_0:
        0 NEWTABLE                         R0 0 4
        2 DUPTABLE                         R1 K3 [{[1], ["Key"] = "name"}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K4 ["AssetMetadataTable"]
        5 LOADK                            R5 K5 ["ColumnName"]
        6 NAMECALL                         R2 R2 K6 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K0 ["Name"]
       11 DUPTABLE                         R2 K8 [{[1], ["Key"] = "owner"}]
       12 GETUPVAL                         R3 0
       13 LOADK                            R5 K4 ["AssetMetadataTable"]
       14 LOADK                            R6 K9 ["ColumnOwner"]
       15 NAMECALL                         R3 R3 K6 ["getText"]
       17 CALL                             R3 3 1
       18 SETTABLEKS                       R3 R2 K0 ["Name"]
       20 DUPTABLE                         R3 K11 [{[1], ["Key"] = "id"}]
       21 GETUPVAL                         R4 0
       22 LOADK                            R6 K4 ["AssetMetadataTable"]
       23 LOADK                            R7 K12 ["ColumnId"]
       24 NAMECALL                         R4 R4 K6 ["getText"]
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K0 ["Name"]
       29 DUPTABLE                         R4 K14 [{[1], ["Key"] = "type"}]
       30 GETUPVAL                         R5 0
       31 LOADK                            R7 K4 ["AssetMetadataTable"]
       32 LOADK                            R8 K15 ["ColumnType"]
       33 NAMECALL                         R5 R5 K6 ["getText"]
       35 CALL                             R5 3 1
       36 SETTABLEKS                       R5 R4 K0 ["Name"]
       38 SETLIST                          R0 R1 4 [1]
       40 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["AssetModels"]
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
       64 GETTABLEKS                       R6 R5 K17 ["metadata"]
       66 GETTABLEKS                       R6 R6 K18 ["visibility"]
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
       92 GETTABLEKS                       R6 R5 K17 ["metadata"]
       94 GETTABLEKS                       R6 R6 K18 ["visibility"]
       96 JUMPIFNOTEQKS                    R6 K21 ["Public"] ; [+30]
       98 DUPTABLE                         R8 K10 [{"name", "owner", "id", "type"}]
       99 GETTABLEKS                       R9 R5 K17 ["metadata"]
      101 GETTABLEKS                       R9 R9 K6 ["name"]
      103 SETTABLEKS                       R9 R8 K6 ["name"]
      105 GETTABLEKS                       R9 R5 K17 ["metadata"]
      107 GETTABLEKS                       R9 R9 K7 ["owner"]
      109 SETTABLEKS                       R9 R8 K7 ["owner"]
      111 SETTABLEKS                       R4 R8 K8 ["id"]
      113 GETTABLEKS                       R9 R5 K17 ["metadata"]
      115 GETTABLEKS                       R9 R9 K9 ["type"]
      117 GETTABLEKS                       R9 R9 K22 ["Name"]
      119 SETTABLEKS                       R9 R8 K9 ["type"]
      121 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
      123 MOVE                             R7 R0
      124 GETIMPORT                        R6 K13 [table.insert]
      126 CALL                             R6 2 0
      127 FORGLOOP                         R1 2 ; [-120]
      129 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["index"]
        4 GETTABLE                         R2 R3 R4
        5 GETTABLEKS                       R2 R2 K1 ["Key"]
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
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R5 R5 K10 ["order"]
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
       23 SUBRK                            R1 K4 [8] R4
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R1 K2 ["locale"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R5 0 2
       24 GETTABLEKS                       R6 R1 K2 ["locale"]
       26 GETTABLEKS                       R7 R0 K3 ["AssetModels"]
       28 SETLIST                          R5 R6 2 [1]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K4 ["useState"]
       34 LOADN                            R5 1
       35 CALL                             R4 1 2
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K4 ["useState"]
       39 DUPTABLE                         R7 K8 [{["index"] = 3, ["order"]}]
       40 GETIMPORT                        R8 K12 [Enum.SortDirection.Descending]
       42 SETTABLEKS                       R8 R7 K7 ["order"]
       44 CALL                             R6 1 2
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K1 ["useMemo"]
       48 NEWCLOSURE                       R9 P2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R6
       52 NEWTABLE                         R10 0 3
       54 MOVE                             R11 R2
       55 MOVE                             R12 R3
       56 MOVE                             R13 R6
       57 SETLIST                          R10 R11 3 [1]
       59 CALL                             R8 2 1
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K1 ["useMemo"]
       63 NEWCLOSURE                       R10 P3
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R4
       66 NEWTABLE                         R11 0 2
       68 MOVE                             R12 R8
       69 MOVE                             R13 R4
       70 SETLIST                          R11 R12 2 [1]
       72 CALL                             R9 2 1
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R10 R10 K13 ["createElement"]
       76 GETUPVAL                         R11 2
       77 DUPTABLE                         R12 K26 [{["Rows"], ["Columns"], ["PageIndex"], ["PageCount"], ["PageSize"] = 8, ["SortIndex"], ["SortOrder"], ["OnPageChange"], ["OnSortChange"], ["Size"], ["AutomaticSize"]}]
       78 SETTABLEKS                       R9 R12 K14 ["Rows"]
       80 SETTABLEKS                       R2 R12 K15 ["Columns"]
       82 SETTABLEKS                       R4 R12 K16 ["PageIndex"]
       84 LENGTH                           R17 R3
       85 ADDK                             R16 R17 K19 [8]
       86 SUBK                             R15 R16 K27 [1]
       87 IDIVK                            R14 R15 K19 [8]
       88 FASTCALL2K                       MATH_MAX R14 K27 ; [+4]
       90 LOADK                            R15 K27 [1]
       91 GETIMPORT                        R13 K30 [math.max]
       93 CALL                             R13 2 1
       94 SETTABLEKS                       R13 R12 K17 ["PageCount"]
       96 GETTABLEKS                       R13 R6 K5 ["index"]
       98 SETTABLEKS                       R13 R12 K20 ["SortIndex"]
      100 GETTABLEKS                       R13 R6 K7 ["order"]
      102 SETTABLEKS                       R13 R12 K21 ["SortOrder"]
      104 SETTABLEKS                       R5 R12 K22 ["OnPageChange"]
      106 NEWCLOSURE                       R13 P4
      107 CAPTURE                          VAL R7
      108 SETTABLEKS                       R13 R12 K23 ["OnSortChange"]
      110 GETIMPORT                        R13 K33 [UDim2.fromScale]
      112 LOADN                            R14 1
      113 LOADN                            R15 0
      114 CALL                             R13 2 1
      115 SETTABLEKS                       R13 R12 K24 ["Size"]
      117 GETIMPORT                        R13 K35 [Enum.AutomaticSize.Y]
      119 SETTABLEKS                       R13 R12 K25 ["AutomaticSize"]
      121 CALL                             R10 2 -1
      122 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetAccess"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["PaginatedTable"]
       25 GETTABLEKS                       R4 R1 K11 ["ContextServices"]
       27 GETTABLEKS                       R4 R4 K12 ["Localization"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K13 ["Src"]
       33 GETTABLEKS                       R6 R6 K14 ["Types"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K15 [PROTO_6]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 RETURN                           R6 1
