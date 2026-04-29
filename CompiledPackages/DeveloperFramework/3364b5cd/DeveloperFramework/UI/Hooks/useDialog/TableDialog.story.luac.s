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
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["index"]
        4 GETTABLE                         R3 R4 R5
        5 GETTABLEKS                       R2 R3 K1 ["Key"]
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
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K7 ["order"]
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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["Rows"]
        5 CALL                             R0 1 1
        6 GETIMPORT                        R1 K5 [table.sort]
        8 MOVE                             R2 R0
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 2 0
       13 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["slice"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADN                            R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["useState"]
        8 DUPTABLE                         R4 K3 [{"index", "order"}]
        9 LOADN                            R5 1
       10 SETTABLEKS                       R5 R4 K1 ["index"]
       12 GETIMPORT                        R5 K7 [Enum.SortDirection.Descending]
       14 SETTABLEKS                       R5 R4 K2 ["order"]
       16 CALL                             R3 1 2
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K8 ["useMemo"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R7 0 2
       26 GETTABLEKS                       R8 R0 K9 ["Rows"]
       28 MOVE                             R9 R3
       29 SETLIST                          R7 R8 2 [1]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K8 ["useMemo"]
       35 NEWCLOSURE                       R7 P1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R8 0 2
       41 MOVE                             R9 R5
       42 MOVE                             R10 R1
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R7 R8 K10 ["createElement"]
       49 GETUPVAL                         R8 3
       50 DUPTABLE                         R9 K21 [{"Rows", "Columns", "PageIndex", "PageCount", "PageSize", "SortIndex", "SortOrder", "OnPageChange", "OnSortChange", "Size", "AutomaticSize"}]
       51 SETTABLEKS                       R6 R9 K9 ["Rows"]
       53 GETUPVAL                         R10 1
       54 SETTABLEKS                       R10 R9 K11 ["Columns"]
       56 SETTABLEKS                       R1 R9 K12 ["PageIndex"]
       58 GETTABLEKS                       R15 R0 K9 ["Rows"]
       60 LENGTH                           R14 R15
       61 ADDK                             R13 R14 K22 [4]
       62 SUBK                             R12 R13 K23 [1]
       63 DIVK                             R11 R12 K22 [4]
       64 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       65 GETIMPORT                        R10 K26 [math.floor]
       67 CALL                             R10 1 1
       68 SETTABLEKS                       R10 R9 K13 ["PageCount"]
       70 LOADN                            R10 4
       71 SETTABLEKS                       R10 R9 K14 ["PageSize"]
       73 GETTABLEKS                       R10 R3 K1 ["index"]
       75 SETTABLEKS                       R10 R9 K15 ["SortIndex"]
       77 GETTABLEKS                       R10 R3 K2 ["order"]
       79 SETTABLEKS                       R10 R9 K16 ["SortOrder"]
       81 SETTABLEKS                       R2 R9 K17 ["OnPageChange"]
       83 NEWCLOSURE                       R10 P2
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R10 R9 K18 ["OnSortChange"]
       87 GETIMPORT                        R10 K29 [UDim2.fromScale]
       89 LOADN                            R11 1
       90 LOADN                            R12 0
       91 CALL                             R10 2 1
       92 SETTABLEKS                       R10 R9 K19 ["Size"]
       94 GETIMPORT                        R10 K31 [Enum.AutomaticSize.Y]
       96 SETTABLEKS                       R10 R9 K20 ["AutomaticSize"]
       98 CALL                             R7 2 -1
       99 RETURN                           R7 -1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R1 K1 [PROTO_6]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R2 0 0
        8 CALL                             R0 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["useMemo"]
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R3 0 1
       16 MOVE                             R4 R0
       17 SETLIST                          R3 R4 1 [1]
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 3
       21 DUPTABLE                         R3 K8 [{"Intent", "Heading", "Body", "Contents", "ActionPrimary", "Width"}]
       22 LOADK                            R4 K9 ["Error"]
       23 SETTABLEKS                       R4 R3 K2 ["Intent"]
       25 LOADK                            R4 K10 ["Can't share access to assets"]
       26 SETTABLEKS                       R4 R3 K3 ["Heading"]
       28 LOADK                            R4 K11 ["You don't have access to share the listed assets. Please get access from the asset owners. The listed assets will not be available if you proceed without sharing access to this experience."]
       29 SETTABLEKS                       R4 R3 K4 ["Body"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K12 ["createElement"]
       34 GETUPVAL                         R5 4
       35 DUPTABLE                         R6 K14 [{"Rows"}]
       36 SETTABLEKS                       R1 R6 K13 ["Rows"]
       38 CALL                             R4 2 1
       39 SETTABLEKS                       R4 R3 K5 ["Contents"]
       41 GETUPVAL                         R5 5
       42 GETTABLEKS                       R4 R5 K15 ["OK"]
       44 SETTABLEKS                       R4 R3 K6 ["ActionPrimary"]
       46 LOADN                            R4 215
       47 SETTABLEKS                       R4 R3 K7 ["Width"]
       49 CALL                             R2 1 1
       50 GETUPVAL                         R3 3
       51 DUPTABLE                         R4 K17 [{"Intent", "Heading", "Body", "Contents", "ActionPrimary", "ActionSecondary", "Width"}]
       52 LOADK                            R5 K18 ["Warning"]
       53 SETTABLEKS                       R5 R4 K2 ["Intent"]
       55 LOADK                            R5 K19 ["Experience needs access to assets"]
       56 SETTABLEKS                       R5 R4 K3 ["Heading"]
       58 LOADK                            R5 K20 ["This experience needs access to the listed assets. You can only share access to assets that you have access to. The listed assets will not be available in this experience if you proceed without sharing access to this experience."]
       59 SETTABLEKS                       R5 R4 K4 ["Body"]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R5 R6 K12 ["createElement"]
       64 GETUPVAL                         R6 4
       65 DUPTABLE                         R7 K14 [{"Rows"}]
       66 SETTABLEKS                       R0 R7 K13 ["Rows"]
       68 CALL                             R5 2 1
       69 SETTABLEKS                       R5 R4 K5 ["Contents"]
       71 DUPTABLE                         R5 K24 [{"Label", "HidesDialog", "OnActivated"}]
       72 LOADK                            R6 K25 ["Share access"]
       73 SETTABLEKS                       R6 R5 K21 ["Label"]
       75 LOADB                            R6 1
       76 SETTABLEKS                       R6 R5 K22 ["HidesDialog"]
       78 SETTABLEKS                       R2 R5 K23 ["OnActivated"]
       80 SETTABLEKS                       R5 R4 K6 ["ActionPrimary"]
       82 GETUPVAL                         R6 5
       83 GETTABLEKS                       R5 R6 K26 ["CLOSE"]
       85 SETTABLEKS                       R5 R4 K16 ["ActionSecondary"]
       87 LOADN                            R5 215
       88 SETTABLEKS                       R5 R4 K7 ["Width"]
       90 CALL                             R3 1 1
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R4 R5 K12 ["createElement"]
       94 GETUPVAL                         R5 6
       95 DUPTABLE                         R6 K29 [{"OnClick", "Text"}]
       96 SETTABLEKS                       R3 R6 K27 ["OnClick"]
       98 LOADK                            R7 K30 ["Show Table Dialog"]
       99 SETTABLEKS                       R7 R6 K28 ["Text"]
      101 CALL                             R4 2 -1
      102 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["React"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R0 K2 ["UI"]
       25 GETTABLEKS                       R3 R4 K10 ["Components"]
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R3 K11 ["IconButton"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R3 K12 ["PaginatedTable"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K8 ["Util"]
       41 GETTABLEKS                       R7 R8 K13 ["DialogAction"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETIMPORT                        R9 K1 [script]
       48 GETTABLEKS                       R8 R9 K4 ["Parent"]
       50 CALL                             R7 1 1
       51 NEWTABLE                         R8 0 4
       53 DUPTABLE                         R9 K16 [{"Name", "Key"}]
       54 LOADK                            R10 K17 ["Asset Name"]
       55 SETTABLEKS                       R10 R9 K14 ["Name"]
       57 LOADK                            R10 K18 ["name"]
       58 SETTABLEKS                       R10 R9 K15 ["Key"]
       60 DUPTABLE                         R10 K16 [{"Name", "Key"}]
       61 LOADK                            R11 K19 ["Owner"]
       62 SETTABLEKS                       R11 R10 K14 ["Name"]
       64 LOADK                            R11 K20 ["owner"]
       65 SETTABLEKS                       R11 R10 K15 ["Key"]
       67 DUPTABLE                         R11 K16 [{"Name", "Key"}]
       68 LOADK                            R12 K21 ["Asset ID"]
       69 SETTABLEKS                       R12 R11 K14 ["Name"]
       71 LOADK                            R12 K22 ["id"]
       72 SETTABLEKS                       R12 R11 K15 ["Key"]
       74 DUPTABLE                         R12 K16 [{"Name", "Key"}]
       75 LOADK                            R13 K23 ["Asset Type"]
       76 SETTABLEKS                       R13 R12 K14 ["Name"]
       78 LOADK                            R13 K24 ["type"]
       79 SETTABLEKS                       R13 R12 K15 ["Key"]
       81 SETLIST                          R8 R9 4 [1]
       83 NEWTABLE                         R9 0 4
       85 LOADK                            R10 K25 ["Audio"]
       86 LOADK                            R11 K26 ["Video"]
       87 LOADK                            R12 K27 ["Image"]
       88 LOADK                            R13 K28 ["Mesh"]
       89 SETLIST                          R9 R10 4 [1]
       91 DUPCLOSURE                       R10 K29 [PROTO_0]
       92 DUPCLOSURE                       R11 K30 [PROTO_5]
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R5
       97 DUPCLOSURE                       R12 K31 [PROTO_8]
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R4
      105 DUPTABLE                         R13 K33 [{"story"}]
      106 GETTABLEKS                       R14 R2 K34 ["createElement"]
      108 MOVE                             R15 R12
      109 CALL                             R14 1 1
      110 SETTABLEKS                       R14 R13 K32 ["story"]
      112 RETURN                           R13 1
