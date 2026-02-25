PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["itemsList"]
        3 LENGTH                           R0 R1
        4 JUMPIFNOTEQKN                    R0 K1 [0] ; [+109]
        6 NEWTABLE                         R0 0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["lookType"]
       11 JUMPIFNOTEQKS                    R1 K3 ["AvatarLook"] ; [+19]
       13 DUPTABLE                         R3 K7 [{"type", "color", "rowState"}]
       14 LOADK                            R4 K8 ["BodyColor"]
       15 SETTABLEKS                       R4 R3 K4 ["type"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K9 ["skinColor"]
       20 SETTABLEKS                       R4 R3 K5 ["color"]
       22 LOADK                            R4 K10 ["Selected"]
       23 SETTABLEKS                       R4 R3 K6 ["rowState"]
       25 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       27 MOVE                             R2 R0
       28 GETIMPORT                        R1 K13 [table.insert]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R1 2
       32 LOADNIL                          R2
       33 LOADNIL                          R3
       34 FORGPREP                         R1
       35 DUPTABLE                         R8 K20 [{"type", "id", "name", "creator", "price", "rowState", "key", "assetType"}]
       36 LOADK                            R9 K21 ["Asset"]
       37 SETTABLEKS                       R9 R8 K4 ["type"]
       39 GETTABLEKS                       R9 R5 K14 ["id"]
       41 SETTABLEKS                       R9 R8 K14 ["id"]
       43 GETTABLEKS                       R9 R5 K15 ["name"]
       45 SETTABLEKS                       R9 R8 K15 ["name"]
       47 GETTABLEKS                       R9 R5 K16 ["creator"]
       49 SETTABLEKS                       R9 R8 K16 ["creator"]
       51 GETTABLEKS                       R9 R5 K17 ["price"]
       53 SETTABLEKS                       R9 R8 K17 ["price"]
       55 LOADK                            R9 K10 ["Selected"]
       56 SETTABLEKS                       R9 R8 K6 ["rowState"]
       58 GETTABLEKS                       R9 R5 K18 ["key"]
       60 SETTABLEKS                       R9 R8 K18 ["key"]
       62 GETTABLEKS                       R9 R5 K19 ["assetType"]
       64 SETTABLEKS                       R9 R8 K19 ["assetType"]
       66 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       68 MOVE                             R7 R0
       69 GETIMPORT                        R6 K13 [table.insert]
       71 CALL                             R6 2 0
       72 FORGLOOP                         R1 2 ; [-38]
       74 GETUPVAL                         R1 3
       75 LOADNIL                          R2
       76 LOADNIL                          R3
       77 FORGPREP                         R1
       78 DUPTABLE                         R8 K22 [{"type", "id", "name", "creator", "price", "rowState"}]
       79 LOADK                            R9 K23 ["Bundle"]
       80 SETTABLEKS                       R9 R8 K4 ["type"]
       82 GETTABLEKS                       R9 R5 K14 ["id"]
       84 SETTABLEKS                       R9 R8 K14 ["id"]
       86 GETTABLEKS                       R9 R5 K15 ["name"]
       88 SETTABLEKS                       R9 R8 K15 ["name"]
       90 GETTABLEKS                       R9 R5 K16 ["creator"]
       92 SETTABLEKS                       R9 R8 K16 ["creator"]
       94 GETTABLEKS                       R9 R5 K17 ["price"]
       96 SETTABLEKS                       R9 R8 K17 ["price"]
       98 LOADK                            R9 K10 ["Selected"]
       99 SETTABLEKS                       R9 R8 K6 ["rowState"]
      101 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
      103 MOVE                             R7 R0
      104 GETIMPORT                        R6 K13 [table.insert]
      106 CALL                             R6 2 0
      107 FORGLOOP                         R1 2 ; [-30]
      109 GETUPVAL                         R2 0
      110 GETTABLEKS                       R1 R2 K24 ["setItemsList"]
      112 MOVE                             R2 R0
      113 CALL                             R1 1 0
      114 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["itemsList"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["type"]
       10 JUMPIFNOTEQKS                    R6 K2 ["Asset"] ; [+47]
       12 GETTABLEKS                       R6 R5 K3 ["rowState"]
       14 JUMPIFNOTEQKS                    R6 K4 ["Selected"] ; [+43]
       16 LOADNIL                          R6
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K5 ["lookType"]
       20 JUMPIFNOTEQKS                    R7 K6 ["MakeupLook"] ; [+10]
       22 GETTABLEKS                       R7 R5 K7 ["key"]
       24 JUMPIFNOT                        R7 ; [+6]
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R8 R5 K7 ["key"]
       28 CALL                             R7 1 1
       29 MOVE                             R6 R7
       30 JUMP                             ; [+5]
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K5 ["lookType"]
       34 JUMPIFNOTEQKS                    R7 K8 ["AvatarLook"] ; [+1]
       36 JUMPIFNOT                        R6 ; [+21]
       37 DUPTABLE                         R9 K11 [{"palette", "item"}]
       38 SETTABLEKS                       R6 R9 K9 ["palette"]
       40 DUPTABLE                         R10 K14 [{"source", "marketplaceItem"}]
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R11 R12 K15 ["SOURCE_MARKETPLACE"]
       44 SETTABLEKS                       R11 R10 K12 ["source"]
       46 GETTABLEKS                       R11 R5 K16 ["id"]
       48 SETTABLEKS                       R11 R10 K13 ["marketplaceItem"]
       50 SETTABLEKS                       R10 R9 K10 ["item"]
       52 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       54 MOVE                             R8 R0
       55 GETIMPORT                        R7 K19 [table.insert]
       57 CALL                             R7 2 0
       58 FORGLOOP                         R1 2 ; [-51]
       60 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["dialogItems"]
        4 JUMPIFEQ                         R0 R1 ; [+6]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["setDialogItems"]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toggleItem"]
        3 LOADN                            R2 0
        4 LOADK                            R3 K1 ["BodyColor"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toggleItem"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["id"]
        6 LOADK                            R3 K2 ["Asset"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["toggleItem"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["id"]
        6 LOADK                            R3 K2 ["Bundle"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R2 R5 K0 ["itemsList"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K1 ["type"]
       11 JUMPIFNOTEQKS                    R7 K2 ["BodyColor"] ; [+30]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K3 ["lookType"]
       16 JUMPIFNOTEQKS                    R7 K4 ["AvatarLook"] ; [+25]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K5 ["createElement"]
       21 GETUPVAL                         R8 3
       22 DUPTABLE                         R9 K10 [{"LayoutOrder", "color", "rowState", "onRowStateChanged"}]
       23 SETTABLEKS                       R1 R9 K6 ["LayoutOrder"]
       25 GETTABLEKS                       R10 R6 K7 ["color"]
       27 SETTABLEKS                       R10 R9 K7 ["color"]
       29 GETTABLEKS                       R10 R6 K8 ["rowState"]
       31 SETTABLEKS                       R10 R9 K8 ["rowState"]
       33 NEWCLOSURE                       R10 P0
       34 CAPTURE                          UPVAL U0
       35 SETTABLEKS                       R10 R9 K9 ["onRowStateChanged"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R0 K2 ["BodyColor"]
       40 ADDK                             R1 R1 K11 [1]
       41 JUMP                             ; [+95]
       42 GETTABLEKS                       R7 R6 K1 ["type"]
       44 JUMPIFNOTEQKS                    R7 K12 ["Asset"] ; [+45]
       46 LOADK                            R8 K13 ["Asset_"]
       47 GETTABLEKS                       R10 R6 K14 ["id"]
       49 FASTCALL1                        TOSTRING R10 ; [+2]
       50 GETIMPORT                        R9 K16 [tostring]
       52 CALL                             R9 1 1
       53 CONCAT                           R7 R8 R9
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R8 R9 K5 ["createElement"]
       57 GETUPVAL                         R9 4
       58 DUPTABLE                         R10 K21 [{"LayoutOrder", "assetId", "name", "creator", "price", "rowState", "onRowStateChanged"}]
       59 SETTABLEKS                       R1 R10 K6 ["LayoutOrder"]
       61 GETTABLEKS                       R11 R6 K14 ["id"]
       63 SETTABLEKS                       R11 R10 K17 ["assetId"]
       65 GETTABLEKS                       R11 R6 K18 ["name"]
       67 SETTABLEKS                       R11 R10 K18 ["name"]
       69 GETTABLEKS                       R11 R6 K19 ["creator"]
       71 SETTABLEKS                       R11 R10 K19 ["creator"]
       73 GETTABLEKS                       R11 R6 K20 ["price"]
       75 SETTABLEKS                       R11 R10 K20 ["price"]
       77 GETTABLEKS                       R11 R6 K8 ["rowState"]
       79 SETTABLEKS                       R11 R10 K8 ["rowState"]
       81 NEWCLOSURE                       R11 P1
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          VAL R6
       84 SETTABLEKS                       R11 R10 K9 ["onRowStateChanged"]
       86 CALL                             R8 2 1
       87 SETTABLE                         R8 R0 R7
       88 ADDK                             R1 R1 K11 [1]
       89 JUMP                             ; [+47]
       90 GETTABLEKS                       R7 R6 K1 ["type"]
       92 JUMPIFNOTEQKS                    R7 K22 ["Bundle"] ; [+44]
       94 LOADK                            R8 K23 ["Bundle_"]
       95 GETTABLEKS                       R10 R6 K14 ["id"]
       97 FASTCALL1                        TOSTRING R10 ; [+2]
       98 GETIMPORT                        R9 K16 [tostring]
      100 CALL                             R9 1 1
      101 CONCAT                           R7 R8 R9
      102 GETUPVAL                         R9 2
      103 GETTABLEKS                       R8 R9 K5 ["createElement"]
      105 GETUPVAL                         R9 5
      106 DUPTABLE                         R10 K25 [{"LayoutOrder", "bundleId", "name", "creator", "price", "rowState", "onRowStateChanged"}]
      107 SETTABLEKS                       R1 R10 K6 ["LayoutOrder"]
      109 GETTABLEKS                       R11 R6 K14 ["id"]
      111 SETTABLEKS                       R11 R10 K24 ["bundleId"]
      113 GETTABLEKS                       R11 R6 K18 ["name"]
      115 SETTABLEKS                       R11 R10 K18 ["name"]
      117 GETTABLEKS                       R11 R6 K19 ["creator"]
      119 SETTABLEKS                       R11 R10 K19 ["creator"]
      121 GETTABLEKS                       R11 R6 K20 ["price"]
      123 SETTABLEKS                       R11 R10 K20 ["price"]
      125 GETTABLEKS                       R11 R6 K8 ["rowState"]
      127 SETTABLEKS                       R11 R10 K8 ["rowState"]
      129 NEWCLOSURE                       R11 P2
      130 CAPTURE                          UPVAL U0
      131 CAPTURE                          VAL R6
      132 SETTABLEKS                       R11 R10 K9 ["onRowStateChanged"]
      134 CALL                             R8 2 1
      135 SETTABLE                         R8 R0 R7
      136 ADDK                             R1 R1 K11 [1]
      137 FORGLOOP                         R2 2 ; [-129]
      139 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K0 ["use"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["useContext"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K2 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R4 R0 K3 ["lookType"]
       18 JUMPIFNOTEQKS                    R4 K4 ["AvatarLook"] ; [+32]
       20 NEWTABLE                         R3 0 2
       22 DUPTABLE                         R4 K9 [{"id", "name", "creator", "price"}]
       23 LOADN                            R5 1
       24 SETTABLEKS                       R5 R4 K5 ["id"]
       26 LOADK                            R5 K10 ["Cool Hat"]
       27 SETTABLEKS                       R5 R4 K6 ["name"]
       29 LOADK                            R5 K11 ["Roblox"]
       30 SETTABLEKS                       R5 R4 K7 ["creator"]
       32 LOADN                            R5 100
       33 SETTABLEKS                       R5 R4 K8 ["price"]
       35 DUPTABLE                         R5 K9 [{"id", "name", "creator", "price"}]
       36 LOADN                            R6 2
       37 SETTABLEKS                       R6 R5 K5 ["id"]
       39 LOADK                            R6 K12 ["Fancy Shirt"]
       40 SETTABLEKS                       R6 R5 K6 ["name"]
       42 LOADK                            R6 K11 ["Roblox"]
       43 SETTABLEKS                       R6 R5 K7 ["creator"]
       45 LOADN                            R6 50
       46 SETTABLEKS                       R6 R5 K8 ["price"]
       48 SETLIST                          R3 R4 2 [1]
       50 JUMP                             ; [+2]
       51 NEWTABLE                         R3 0 0
       53 GETTABLEKS                       R4 R0 K3 ["lookType"]
       55 JUMPIFNOTEQKS                    R4 K13 ["MakeupLook"] ; [+86]
       57 NEWTABLE                         R4 0 5
       59 DUPTABLE                         R5 K15 [{"key", "id", "name", "creator", "price"}]
       60 LOADK                            R6 K16 ["Eyebrows"]
       61 SETTABLEKS                       R6 R5 K14 ["key"]
       63 LOADK                            R6 K17 [109930885212036]
       64 SETTABLEKS                       R6 R5 K5 ["id"]
       66 LOADK                            R6 K16 ["Eyebrows"]
       67 SETTABLEKS                       R6 R5 K6 ["name"]
       69 LOADK                            R6 K11 ["Roblox"]
       70 SETTABLEKS                       R6 R5 K7 ["creator"]
       72 LOADN                            R6 0
       73 SETTABLEKS                       R6 R5 K8 ["price"]
       75 DUPTABLE                         R6 K15 [{"key", "id", "name", "creator", "price"}]
       76 LOADK                            R7 K18 ["Eyelashes"]
       77 SETTABLEKS                       R7 R6 K14 ["key"]
       79 LOADK                            R7 K19 [104750665674049]
       80 SETTABLEKS                       R7 R6 K5 ["id"]
       82 LOADK                            R7 K18 ["Eyelashes"]
       83 SETTABLEKS                       R7 R6 K6 ["name"]
       85 LOADK                            R7 K11 ["Roblox"]
       86 SETTABLEKS                       R7 R6 K7 ["creator"]
       88 LOADN                            R7 0
       89 SETTABLEKS                       R7 R6 K8 ["price"]
       91 DUPTABLE                         R7 K15 [{"key", "id", "name", "creator", "price"}]
       92 LOADK                            R8 K20 ["Eyes"]
       93 SETTABLEKS                       R8 R7 K14 ["key"]
       95 LOADK                            R8 K21 [83541791592645]
       96 SETTABLEKS                       R8 R7 K5 ["id"]
       98 LOADK                            R8 K20 ["Eyes"]
       99 SETTABLEKS                       R8 R7 K6 ["name"]
      101 LOADK                            R8 K11 ["Roblox"]
      102 SETTABLEKS                       R8 R7 K7 ["creator"]
      104 LOADN                            R8 0
      105 SETTABLEKS                       R8 R7 K8 ["price"]
      107 DUPTABLE                         R8 K15 [{"key", "id", "name", "creator", "price"}]
      108 LOADK                            R9 K22 ["Lips"]
      109 SETTABLEKS                       R9 R8 K14 ["key"]
      111 LOADK                            R9 K23 [74103051439437]
      112 SETTABLEKS                       R9 R8 K5 ["id"]
      114 LOADK                            R9 K22 ["Lips"]
      115 SETTABLEKS                       R9 R8 K6 ["name"]
      117 LOADK                            R9 K11 ["Roblox"]
      118 SETTABLEKS                       R9 R8 K7 ["creator"]
      120 LOADN                            R9 0
      121 SETTABLEKS                       R9 R8 K8 ["price"]
      123 DUPTABLE                         R9 K15 [{"key", "id", "name", "creator", "price"}]
      124 LOADK                            R10 K24 ["FaceMakeup"]
      125 SETTABLEKS                       R10 R9 K14 ["key"]
      127 LOADK                            R10 K25 [117610411638303]
      128 SETTABLEKS                       R10 R9 K5 ["id"]
      130 LOADK                            R10 K26 ["Face Makeup"]
      131 SETTABLEKS                       R10 R9 K6 ["name"]
      133 LOADK                            R10 K11 ["Roblox"]
      134 SETTABLEKS                       R10 R9 K7 ["creator"]
      136 LOADN                            R10 0
      137 SETTABLEKS                       R10 R9 K8 ["price"]
      139 SETLIST                          R4 R5 5 [1]
      141 MOVE                             R3 R4
      142 NEWTABLE                         R4 0 1
      144 DUPTABLE                         R5 K9 [{"id", "name", "creator", "price"}]
      145 LOADN                            R6 1
      146 SETTABLEKS                       R6 R5 K5 ["id"]
      148 LOADK                            R6 K27 ["Avatar Bundle"]
      149 SETTABLEKS                       R6 R5 K6 ["name"]
      151 LOADK                            R6 K11 ["Roblox"]
      152 SETTABLEKS                       R6 R5 K7 ["creator"]
      154 LOADN                            R6 200
      155 SETTABLEKS                       R6 R5 K8 ["price"]
      157 SETLIST                          R4 R5 1 [1]
      159 GETUPVAL                         R6 2
      160 GETTABLEKS                       R5 R6 K28 ["useEffect"]
      162 NEWCLOSURE                       R6 P0
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R0
      165 CAPTURE                          REF R3
      166 CAPTURE                          VAL R4
      167 NEWTABLE                         R7 0 6
      169 MOVE                             R8 R3
      170 MOVE                             R9 R4
      171 GETTABLEKS                       R10 R0 K3 ["lookType"]
      173 GETTABLEKS                       R11 R0 K29 ["skinColor"]
      175 GETTABLEKS                       R12 R2 K30 ["itemsList"]
      177 GETTABLEKS                       R13 R2 K31 ["setItemsList"]
      179 SETLIST                          R7 R8 6 [1]
      181 CALL                             R5 2 0
      182 GETUPVAL                         R6 2
      183 GETTABLEKS                       R5 R6 K32 ["useMemo"]
      185 NEWCLOSURE                       R6 P1
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R0
      188 CAPTURE                          UPVAL U4
      189 CAPTURE                          UPVAL U5
      190 NEWTABLE                         R7 0 2
      192 GETTABLEKS                       R8 R2 K30 ["itemsList"]
      194 GETTABLEKS                       R9 R0 K3 ["lookType"]
      196 SETLIST                          R7 R8 2 [1]
      198 CALL                             R5 2 1
      199 GETUPVAL                         R7 2
      200 GETTABLEKS                       R6 R7 K28 ["useEffect"]
      202 NEWCLOSURE                       R7 P2
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R2
      205 NEWTABLE                         R8 0 3
      207 MOVE                             R9 R5
      208 GETTABLEKS                       R10 R2 K33 ["dialogItems"]
      210 GETTABLEKS                       R11 R2 K34 ["setDialogItems"]
      212 SETLIST                          R8 R9 3 [1]
      214 CALL                             R6 2 0
      215 GETUPVAL                         R7 2
      216 GETTABLEKS                       R6 R7 K32 ["useMemo"]
      218 NEWCLOSURE                       R7 P3
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R0
      221 CAPTURE                          UPVAL U2
      222 CAPTURE                          UPVAL U6
      223 CAPTURE                          UPVAL U7
      224 CAPTURE                          UPVAL U8
      225 NEWTABLE                         R8 0 4
      227 GETTABLEKS                       R9 R2 K30 ["itemsList"]
      229 GETTABLEKS                       R10 R0 K3 ["lookType"]
      231 GETTABLEKS                       R11 R0 K29 ["skinColor"]
      233 GETTABLEKS                       R12 R2 K35 ["toggleItem"]
      235 SETLIST                          R8 R9 4 [1]
      237 CALL                             R6 2 1
      238 GETUPVAL                         R8 2
      239 GETTABLEKS                       R7 R8 K36 ["createElement"]
      241 GETUPVAL                         R8 9
      242 DUPTABLE                         R9 K39 [{"tag", "LayoutOrder"}]
      243 LOADK                            R10 K40 ["col gap-medium size-full-0 auto-y"]
      244 SETTABLEKS                       R10 R9 K37 ["tag"]
      246 GETTABLEKS                       R10 R0 K38 ["LayoutOrder"]
      248 SETTABLEKS                       R10 R9 K38 ["LayoutOrder"]
      250 DUPTABLE                         R10 K44 [{"DividerContainer", "Header", "ItemsList"}]
      251 GETUPVAL                         R12 2
      252 GETTABLEKS                       R11 R12 K36 ["createElement"]
      254 GETUPVAL                         R12 9
      255 DUPTABLE                         R13 K39 [{"tag", "LayoutOrder"}]
      256 LOADK                            R14 K45 ["size-full-0 auto-y padding-bottom-medium"]
      257 SETTABLEKS                       R14 R13 K37 ["tag"]
      259 LOADN                            R14 1
      260 SETTABLEKS                       R14 R13 K38 ["LayoutOrder"]
      262 DUPTABLE                         R14 K47 [{"Divider"}]
      263 GETUPVAL                         R16 2
      264 GETTABLEKS                       R15 R16 K36 ["createElement"]
      266 GETUPVAL                         R16 10
      267 CALL                             R15 1 1
      268 SETTABLEKS                       R15 R14 K46 ["Divider"]
      270 CALL                             R11 3 1
      271 SETTABLEKS                       R11 R10 K41 ["DividerContainer"]
      273 GETUPVAL                         R12 2
      274 GETTABLEKS                       R11 R12 K36 ["createElement"]
      276 GETUPVAL                         R12 9
      277 DUPTABLE                         R13 K39 [{"tag", "LayoutOrder"}]
      278 LOADK                            R14 K48 ["row size-full-0 auto-y align-y-center"]
      279 SETTABLEKS                       R14 R13 K37 ["tag"]
      281 LOADN                            R14 2
      282 SETTABLEKS                       R14 R13 K38 ["LayoutOrder"]
      284 DUPTABLE                         R14 K52 [{"Title", "Spacer", "ItemCount"}]
      285 GETUPVAL                         R16 2
      286 GETTABLEKS                       R15 R16 K36 ["createElement"]
      288 GETUPVAL                         R16 11
      289 DUPTABLE                         R17 K54 [{"Text", "tag", "LayoutOrder"}]
      290 LOADK                            R20 K55 ["LookComposerDialog"]
      291 LOADK                            R21 K56 ["LookDetails"]
      292 NAMECALL                         R18 R1 K57 ["getText"]
      294 CALL                             R18 3 1
      295 SETTABLEKS                       R18 R17 K53 ["Text"]
      297 LOADK                            R18 K58 ["text-label-large auto-xy content-default"]
      298 SETTABLEKS                       R18 R17 K37 ["tag"]
      300 LOADN                            R18 1
      301 SETTABLEKS                       R18 R17 K38 ["LayoutOrder"]
      303 CALL                             R15 2 1
      304 SETTABLEKS                       R15 R14 K49 ["Title"]
      306 GETUPVAL                         R16 2
      307 GETTABLEKS                       R15 R16 K36 ["createElement"]
      309 GETUPVAL                         R16 9
      310 DUPTABLE                         R17 K39 [{"tag", "LayoutOrder"}]
      311 LOADK                            R18 K59 ["grow"]
      312 SETTABLEKS                       R18 R17 K37 ["tag"]
      314 LOADN                            R18 2
      315 SETTABLEKS                       R18 R17 K38 ["LayoutOrder"]
      317 CALL                             R15 2 1
      318 SETTABLEKS                       R15 R14 K50 ["Spacer"]
      320 GETUPVAL                         R16 2
      321 GETTABLEKS                       R15 R16 K36 ["createElement"]
      323 GETUPVAL                         R16 11
      324 DUPTABLE                         R17 K54 [{"Text", "tag", "LayoutOrder"}]
      325 GETTABLEKS                       R24 R2 K30 ["itemsList"]
      327 LENGTH                           R23 R24
      328 FASTCALL1                        TOSTRING R23 ; [+2]
      329 GETIMPORT                        R22 K61 [tostring]
      331 CALL                             R22 1 1
      332 MOVE                             R19 R22
      333 LOADK                            R20 K62 [" "]
      334 LOADK                            R23 K55 ["LookComposerDialog"]
      335 LOADK                            R24 K63 ["Items"]
      336 NAMECALL                         R21 R1 K57 ["getText"]
      338 CALL                             R21 3 1
      339 CONCAT                           R18 R19 R21
      340 SETTABLEKS                       R18 R17 K53 ["Text"]
      342 LOADK                            R18 K64 ["text-body-medium auto-xy content-muted"]
      343 SETTABLEKS                       R18 R17 K37 ["tag"]
      345 LOADN                            R18 3
      346 SETTABLEKS                       R18 R17 K38 ["LayoutOrder"]
      348 CALL                             R15 2 1
      349 SETTABLEKS                       R15 R14 K51 ["ItemCount"]
      351 CALL                             R11 3 1
      352 SETTABLEKS                       R11 R10 K42 ["Header"]
      354 GETUPVAL                         R12 2
      355 GETTABLEKS                       R11 R12 K36 ["createElement"]
      357 GETUPVAL                         R12 9
      358 DUPTABLE                         R13 K39 [{"tag", "LayoutOrder"}]
      359 LOADK                            R14 K65 ["col gap-small size-full-0 auto-y padding-top-medium"]
      360 SETTABLEKS                       R14 R13 K37 ["tag"]
      362 LOADN                            R14 3
      363 SETTABLEKS                       R14 R13 K38 ["LayoutOrder"]
      365 MOVE                             R14 R6
      366 CALL                             R11 3 1
      367 SETTABLEKS                       R11 R10 K43 ["ItemsList"]
      369 CALL                             R7 3 -1
      370 CLOSEUPVALS                      R3
      371 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["Divider"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R8 R0 K6 ["Packages"]
       31 GETTABLEKS                       R7 R8 K12 ["Framework"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R8 R6 K13 ["ContextServices"]
       36 GETTABLEKS                       R7 R8 K14 ["Localization"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R11 R0 K15 ["Src"]
       42 GETTABLEKS                       R10 R11 K16 ["Flags"]
       44 GETTABLEKS                       R9 R10 K17 ["getFFlagAvatarPreviewerLookComposer"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R12 R0 K15 ["Src"]
       51 GETTABLEKS                       R11 R12 K18 ["Util"]
       53 GETTABLEKS                       R10 R11 K19 ["Constants"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R12 R0 K15 ["Src"]
       60 GETTABLEKS                       R11 R12 K20 ["Types"]
       62 CALL                             R10 1 1
       63 GETIMPORT                        R11 K5 [require]
       65 GETIMPORT                        R14 K1 [script]
       67 GETTABLEKS                       R13 R14 K21 ["Parent"]
       69 GETTABLEKS                       R12 R13 K20 ["Types"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R15 R0 K15 ["Src"]
       76 GETTABLEKS                       R14 R15 K18 ["Util"]
       78 GETTABLEKS                       R13 R14 K22 ["getPaletteFromKey"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R16 R0 K15 ["Src"]
       85 GETTABLEKS                       R15 R16 K23 ["Components"]
       87 GETTABLEKS                       R14 R15 K24 ["LookContext"]
       89 CALL                             R13 1 1
       90 GETIMPORT                        R14 K5 [require]
       92 GETIMPORT                        R17 K1 [script]
       94 GETTABLEKS                       R16 R17 K21 ["Parent"]
       96 GETTABLEKS                       R15 R16 K25 ["AssetRow"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K5 [require]
      101 GETIMPORT                        R18 K1 [script]
      103 GETTABLEKS                       R17 R18 K21 ["Parent"]
      105 GETTABLEKS                       R16 R17 K26 ["BundleRow"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K5 [require]
      110 GETIMPORT                        R19 K1 [script]
      112 GETTABLEKS                       R18 R19 K21 ["Parent"]
      114 GETTABLEKS                       R17 R18 K27 ["BodyColorRow"]
      116 CALL                             R16 1 1
      117 DUPCLOSURE                       R17 K28 [PROTO_7]
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R4
      130 RETURN                           R17 1
