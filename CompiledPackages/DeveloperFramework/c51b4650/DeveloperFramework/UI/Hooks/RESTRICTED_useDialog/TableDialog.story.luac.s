PROTO_0:
        0 LOADK                            R3 K0 [""]
        1 GETIMPORT                        R4 K3 [math.random]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 LOADN                            R7 1
        7 MOVE                             R5 R4
        8 LOADN                            R6 1
        9 FORNPREP                         R5
       10 GETIMPORT                        R8 K3 [math.random]
       12 LOADN                            R9 1
       13 LENGTH                           R10 R2
       14 CALL                             R8 2 1
       15 MOVE                             R9 R3
       16 MOVE                             R12 R8
       17 MOVE                             R13 R8
       18 NAMECALL                         R10 R2 K4 ["sub"]
       20 CALL                             R10 3 1
       21 CONCAT                           R3 R9 R10
       22 FORNLOOP                         R5
       23 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["index"]
        4 GETTABLE                         R2 R3 R4
        5 GETTABLEKS                       R2 R2 K1 ["Key"]
        7 GETTABLE                         R3 R0 R2
        8 GETTABLE                         R4 R1 R2
        9 FASTCALL1                        TYPEOF R3 ; [+3]
       10 MOVE                             R6 R3
       11 GETIMPORT                        R5 K3 [typeof]
       13 CALL                             R5 1 1
       14 JUMPIFNOTEQKS                    R5 K4 ["string"] ; [+11]
       16 GETIMPORT                        R5 K6 [string.upper]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 1
       20 MOVE                             R3 R5
       21 GETIMPORT                        R5 K6 [string.upper]
       23 MOVE                             R6 R4
       24 CALL                             R5 1 1
       25 MOVE                             R4 R5
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K7 ["order"]
       29 GETIMPORT                        R6 K11 [Enum.SortDirection.Ascending]
       31 JUMPIFNOTEQ                      R5 R6 ; [+6]
       33 JUMPIFLT                         R4 R3 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 RETURN                           R5 1
       38 JUMPIFLT                         R3 R4 ; [+2]
       40 LOADB                            R5 0 +1
       41 LOADB                            R5 1
       42 RETURN                           R5 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["Rows"]
        5 CALL                             R0 1 1
        6 GETIMPORT                        R1 K5 [table.sort]
        8 MOVE                             R2 R0
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 2 0
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["slice"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R5 2
        5 SUBK                             R4 R5 K1 [1]
        6 MULK                             R3 R4 K2 [4]
        7 ADDK                             R2 R3 K1 [1]
        8 GETUPVAL                         R4 2
        9 MULK                             R3 R4 K2 [4]
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"index", "order"}]
        2 SETTABLEKS                       R0 R3 K0 ["index"]
        4 SETTABLEKS                       R1 R3 K1 ["order"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADN                            R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 DUPTABLE                         R4 K4 [{["index"] = 1, ["order"]}]
        9 GETIMPORT                        R5 K8 [Enum.SortDirection.Descending]
       11 SETTABLEKS                       R5 R4 K3 ["order"]
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R7 0 2
       23 GETTABLEKS                       R8 R0 K10 ["Rows"]
       25 MOVE                             R9 R3
       26 SETLIST                          R7 R8 2 [1]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R8 0 2
       38 MOVE                             R9 R5
       39 MOVE                             R10 R1
       40 SETLIST                          R8 R9 2 [1]
       42 CALL                             R6 2 1
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K11 ["createElement"]
       46 GETUPVAL                         R8 3
       47 DUPTABLE                         R9 K23 [{["Rows"], ["Columns"], ["PageIndex"], ["PageCount"], ["PageSize"] = 4, ["SortIndex"], ["SortOrder"], ["OnPageChange"], ["OnSortChange"], ["Size"], ["AutomaticSize"]}]
       48 SETTABLEKS                       R6 R9 K10 ["Rows"]
       50 GETUPVAL                         R10 1
       51 SETTABLEKS                       R10 R9 K12 ["Columns"]
       53 SETTABLEKS                       R1 R9 K13 ["PageIndex"]
       55 GETTABLEKS                       R15 R0 K10 ["Rows"]
       57 LENGTH                           R14 R15
       58 ADDK                             R13 R14 K16 [4]
       59 SUBK                             R12 R13 K2 [1]
       60 DIVK                             R11 R12 K16 [4]
       61 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       62 GETIMPORT                        R10 K26 [math.floor]
       64 CALL                             R10 1 1
       65 SETTABLEKS                       R10 R9 K14 ["PageCount"]
       67 GETTABLEKS                       R10 R3 K1 ["index"]
       69 SETTABLEKS                       R10 R9 K17 ["SortIndex"]
       71 GETTABLEKS                       R10 R3 K3 ["order"]
       73 SETTABLEKS                       R10 R9 K18 ["SortOrder"]
       75 SETTABLEKS                       R2 R9 K19 ["OnPageChange"]
       77 NEWCLOSURE                       R10 P2
       78 CAPTURE                          VAL R4
       79 SETTABLEKS                       R10 R9 K20 ["OnSortChange"]
       81 GETIMPORT                        R10 K29 [UDim2.fromScale]
       83 LOADN                            R11 1
       84 LOADN                            R12 0
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K21 ["Size"]
       88 GETIMPORT                        R10 K31 [Enum.AutomaticSize.Y]
       90 SETTABLEKS                       R10 R9 K22 ["AutomaticSize"]
       92 CALL                             R7 2 -1
       93 RETURN                           R7 -1

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 LOADN                            R1 20
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 DUPTABLE                         R6 K4 [{"name", "owner", "id", "type"}]
        7 GETUPVAL                         R7 0
        8 LOADN                            R8 10
        9 LOADN                            R9 20
       10 LOADK                            R10 K5 ["ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"]
       11 CALL                             R7 3 1
       12 SETTABLEKS                       R7 R6 K0 ["name"]
       14 GETUPVAL                         R7 0
       15 LOADN                            R8 6
       16 LOADN                            R9 10
       17 LOADK                            R10 K5 ["ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"]
       18 CALL                             R7 3 1
       19 SETTABLEKS                       R7 R6 K1 ["owner"]
       21 GETUPVAL                         R8 0
       22 LOADN                            R9 8
       23 LOADN                            R10 10
       24 LOADK                            R11 K6 ["1234567890"]
       25 CALL                             R8 3 1
       26 FASTCALL1                        TONUMBER R8 ; [+2]
       27 GETIMPORT                        R7 K8 [tonumber]
       29 CALL                             R7 1 1
       30 SETTABLEKS                       R7 R6 K2 ["id"]
       32 GETUPVAL                         R8 1
       33 GETIMPORT                        R9 K11 [math.random]
       35 LOADN                            R10 1
       36 GETUPVAL                         R12 1
       37 LENGTH                           R11 R12
       38 CALL                             R9 2 1
       39 GETTABLE                         R7 R8 R9
       40 SETTABLEKS                       R7 R6 K3 ["type"]
       42 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
       44 MOVE                             R5 R0
       45 GETIMPORT                        R4 K14 [table.insert]
       47 CALL                             R4 2 0
       48 FORNLOOP                         R1
       49 RETURN                           R0 1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETIMPORT                        R6 K2 [math.random]
        8 CALL                             R6 0 1
        9 LOADK                            R7 K3 [0.5]
       10 JUMPIFNOTLT                      R6 R7 ; [+8]
       12 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R5
       16 GETIMPORT                        R6 K6 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 2 ; [-14]
       21 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useMemo"]
        3 DUPCLOSURE                       R1 K1 [PROTO_6]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R2 0 0
        8 CALL                             R0 2 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["useMemo"]
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R3 0 1
       16 MOVE                             R4 R0
       17 SETLIST                          R3 R4 1 [1]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 3
       21 DUPTABLE                         R3 K12 [{["Intent"] = "Error", ["Heading"] = "Can't share access to assets", ["Body"] = "You don't have access to share the listed assets. Please get access from the asset owners. The listed assets will not be available if you proceed without sharing access to this experience.", ["Contents"], ["ActionPrimary"], ["Width"] = 727}]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K13 ["createElement"]
       25 GETUPVAL                         R5 4
       26 DUPTABLE                         R6 K15 [{"Rows"}]
       27 SETTABLEKS                       R1 R6 K14 ["Rows"]
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K8 ["Contents"]
       32 GETUPVAL                         R4 5
       33 GETTABLEKS                       R4 R4 K16 ["OK"]
       35 SETTABLEKS                       R4 R3 K9 ["ActionPrimary"]
       37 CALL                             R2 1 1
       38 GETUPVAL                         R3 3
       39 DUPTABLE                         R4 K21 [{["Intent"] = "Warning", ["Heading"] = "Experience needs access to assets", ["Body"] = "This experience needs access to the listed assets. You can only share access to assets that you have access to. The listed assets will not be available in this experience if you proceed without sharing access to this experience.", ["Contents"], ["ActionPrimary"], ["ActionSecondary"], ["Width"] = 727}]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K13 ["createElement"]
       43 GETUPVAL                         R6 4
       44 DUPTABLE                         R7 K15 [{"Rows"}]
       45 SETTABLEKS                       R0 R7 K14 ["Rows"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K8 ["Contents"]
       50 DUPTABLE                         R5 K27 [{["Label"] = "Share access", ["HidesDialog"] = True, ["OnActivated"]}]
       51 SETTABLEKS                       R2 R5 K26 ["OnActivated"]
       53 SETTABLEKS                       R5 R4 K9 ["ActionPrimary"]
       55 GETUPVAL                         R5 5
       56 GETTABLEKS                       R5 R5 K28 ["CLOSE"]
       58 SETTABLEKS                       R5 R4 K20 ["ActionSecondary"]
       60 CALL                             R3 1 1
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K13 ["createElement"]
       64 GETUPVAL                         R5 6
       65 DUPTABLE                         R6 K32 [{["OnClick"], ["Text"] = "Show Table Dialog"}]
       66 SETTABLEKS                       R3 R6 K29 ["OnClick"]
       68 CALL                             R4 2 -1
       69 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K2 ["UI"]
       25 GETTABLEKS                       R3 R3 K10 ["Components"]
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R3 K11 ["IconButton"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R3 K12 ["PaginatedTable"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K8 ["Util"]
       41 GETTABLEKS                       R7 R7 K13 ["DialogAction"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R8 K1 [script]
       48 GETTABLEKS                       R8 R8 K4 ["Parent"]
       50 CALL                             R7 1 1
       51 NEWTABLE                         R8 0 4
       53 DUPTABLE                         R9 K18 [{["Name"] = "Asset Name", ["Key"] = "name"}]
       54 DUPTABLE                         R10 K21 [{["Name"] = "Owner", ["Key"] = "owner"}]
       55 DUPTABLE                         R11 K24 [{["Name"] = "Asset ID", ["Key"] = "id"}]
       56 DUPTABLE                         R12 K27 [{["Name"] = "Asset Type", ["Key"] = "type"}]
       57 SETLIST                          R8 R9 4 [1]
       59 NEWTABLE                         R9 0 4
       61 LOADK                            R10 K28 ["Audio"]
       62 LOADK                            R11 K29 ["Video"]
       63 LOADK                            R12 K30 ["Image"]
       64 LOADK                            R13 K31 ["Mesh"]
       65 SETLIST                          R9 R10 4 [1]
       67 DUPCLOSURE                       R10 K32 [PROTO_0]
       68 DUPCLOSURE                       R11 K33 [PROTO_5]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R5
       73 DUPCLOSURE                       R12 K34 [PROTO_8]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R4
       81 DUPTABLE                         R13 K36 [{"story"}]
       82 GETTABLEKS                       R14 R2 K37 ["createElement"]
       84 MOVE                             R15 R12
       85 CALL                             R14 1 1
       86 SETTABLEKS                       R14 R13 K35 ["story"]
       88 RETURN                           R13 1
