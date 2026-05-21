PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Universe"] ; [+8]
        2 LOADK                            R3 K1 ["rbxasset://studio_svg_textures/Lua/AssetManager/%*/Standard/PlacesFolder.png"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K2 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKS                    R0 K3 ["User"] ; [+8]
       11 LOADK                            R3 K4 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/StarterPlayer.png"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R3 R3 K2 ["format"]
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 RETURN                           R2 1
       18 JUMPIFNOTEQKS                    R0 K5 ["Group"] ; [+8]
       20 LOADK                            R3 K6 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/Teams.png"]
       21 MOVE                             R5 R1
       22 NAMECALL                         R3 R3 K2 ["format"]
       24 CALL                             R3 2 1
       25 MOVE                             R2 R3
       26 RETURN                           R2 1
       27 GETIMPORT                        R2 K8 [error]
       29 LOADK                            R4 K9 ["Unsupported scope type: %*"]
       30 MOVE                             R6 R0
       31 NAMECALL                         R4 R4 K2 ["format"]
       33 CALL                             R4 2 1
       34 MOVE                             R3 R4
       35 CALL                             R2 1 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"id", "text"}]
        2 GETTABLEKS                       R4 R0 K3 ["uniqueId"]
        4 SETTABLEKS                       R4 R3 K0 ["id"]
        6 GETUPVAL                         R4 1
        7 LOADK                            R6 K4 ["ScopeMenuItem"]
        8 LOADK                            R7 K5 ["Universe"]
        9 NAMECALL                         R4 R4 K6 ["getText"]
       11 CALL                             R4 3 1
       12 SETTABLEKS                       R4 R3 K1 ["text"]
       14 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       16 GETIMPORT                        R1 K9 [table.insert]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"id", "text"}]
        2 GETTABLEKS                       R4 R0 K3 ["uniqueId"]
        4 SETTABLEKS                       R4 R3 K0 ["id"]
        6 GETUPVAL                         R4 1
        7 LOADK                            R6 K4 ["ScopeMenuItem"]
        8 LOADK                            R7 K5 ["User"]
        9 DUPTABLE                         R8 K7 [{"user"}]
       10 GETTABLEKS                       R9 R0 K8 ["name"]
       12 SETTABLEKS                       R9 R8 K6 ["user"]
       14 NAMECALL                         R4 R4 K9 ["getText"]
       16 CALL                             R4 4 1
       17 SETTABLEKS                       R4 R3 K1 ["text"]
       19 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       21 GETIMPORT                        R1 K12 [table.insert]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"id", "text"}]
        2 GETTABLEKS                       R4 R0 K3 ["uniqueId"]
        4 SETTABLEKS                       R4 R3 K0 ["id"]
        6 GETTABLEKS                       R4 R0 K4 ["name"]
        8 SETTABLEKS                       R4 R3 K1 ["text"]
       10 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       12 GETIMPORT                        R1 K7 [table.insert]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETTABLEKS                       R3 R1 K0 ["id"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K0 ["id"]
       10 GETUPVAL                         R3 0
       11 JUMPIFNOTEQ                      R2 R3 ; [+3]
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R1 K0 ["id"]
       17 GETUPVAL                         R3 0
       18 JUMPIFNOTEQ                      R2 R3 ; [+3]
       20 LOADB                            R2 0
       21 RETURN                           R2 1
       22 GETTABLEKS                       R3 R0 K1 ["text"]
       24 GETTABLEKS                       R4 R1 K1 ["text"]
       26 JUMPIFLT                         R3 R4 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["loadedScopeMap"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 NEWTABLE                         R1 0 0
       12 GETUPVAL                         R2 1
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+104]
       15 NEWTABLE                         R2 0 0
       17 NEWTABLE                         R3 0 0
       19 DUPTABLE                         R4 K4 [{"Universe", "User", "Group"}]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U2
       23 SETTABLEKS                       R5 R4 K1 ["Universe"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U2
       28 SETTABLEKS                       R5 R4 K2 ["User"]
       30 NEWCLOSURE                       R5 P2
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R5 R4 K3 ["Group"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K0 ["loadedScopeMap"]
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 GETTABLEKS                       R11 R9 K5 ["type"]
       42 GETTABLE                         R10 R4 R11
       43 JUMPIFNOTEQKNIL                  R10 ; [+2]
       45 LOADB                            R12 0 +1
       46 LOADB                            R12 1
       47 LOADK                            R14 K6 ["Unsupported scope type: %*"]
       48 GETTABLEKS                       R16 R9 K5 ["type"]
       50 NAMECALL                         R14 R14 K7 ["format"]
       52 CALL                             R14 2 1
       53 MOVE                             R13 R14
       54 FASTCALL2                        ASSERT R12 R13 ; [+3]
       56 GETIMPORT                        R11 K9 [assert]
       58 CALL                             R11 2 0
       59 MOVE                             R11 R10
       60 MOVE                             R12 R9
       61 CALL                             R11 1 0
       62 FORGLOOP                         R5 2 ; [-23]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R6 R6 K10 ["universeCreatorInfo"]
       67 JUMPIFEQKNIL                     R6 ; [+17]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K10 ["universeCreatorInfo"]
       72 GETTABLEKS                       R6 R6 K5 ["type"]
       74 JUMPIFNOTEQKS                    R6 K3 ["Group"] ; [+10]
       76 GETUPVAL                         R5 3
       77 LOADK                            R6 K3 ["Group"]
       78 GETUPVAL                         R7 0
       79 GETTABLEKS                       R7 R7 K10 ["universeCreatorInfo"]
       81 GETTABLEKS                       R7 R7 K11 ["id"]
       83 CALL                             R5 2 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R5
       86 GETIMPORT                        R6 K14 [table.sort]
       88 MOVE                             R7 R3
       89 NEWCLOSURE                       R8 P3
       90 CAPTURE                          VAL R5
       91 CALL                             R6 2 0
       92 MOVE                             R6 R2
       93 LOADNIL                          R7
       94 LOADNIL                          R8
       95 FORGPREP                         R6
       96 FASTCALL2                        TABLE_INSERT R0 R10 ; [+5]
       98 MOVE                             R12 R0
       99 MOVE                             R13 R10
      100 GETIMPORT                        R11 K16 [table.insert]
      102 CALL                             R11 2 0
      103 FORGLOOP                         R6 2 ; [-8]
      105 MOVE                             R6 R3
      106 LOADNIL                          R7
      107 LOADNIL                          R8
      108 FORGPREP                         R6
      109 FASTCALL2                        TABLE_INSERT R0 R10 ; [+5]
      111 MOVE                             R12 R0
      112 MOVE                             R13 R10
      113 GETIMPORT                        R11 K16 [table.insert]
      115 CALL                             R11 2 0
      116 FORGLOOP                         R6 2 ; [-8]
      118 JUMP                             ; [+92]
      119 GETUPVAL                         R2 0
      120 GETTABLEKS                       R2 R2 K0 ["loadedScopeMap"]
      122 LOADNIL                          R3
      123 LOADNIL                          R4
      124 FORGPREP                         R2
      125 GETTABLEKS                       R7 R6 K5 ["type"]
      127 JUMPIFNOTEQKS                    R7 K1 ["Universe"] ; [+21]
      129 DUPTABLE                         R9 K18 [{"id", "text"}]
      130 GETTABLEKS                       R10 R6 K19 ["uniqueId"]
      132 SETTABLEKS                       R10 R9 K11 ["id"]
      134 GETUPVAL                         R10 2
      135 LOADK                            R12 K20 ["ScopeMenuItem"]
      136 LOADK                            R13 K1 ["Universe"]
      137 NAMECALL                         R10 R10 K21 ["getText"]
      139 CALL                             R10 3 1
      140 SETTABLEKS                       R10 R9 K17 ["text"]
      142 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      144 MOVE                             R8 R1
      145 GETIMPORT                        R7 K16 [table.insert]
      147 CALL                             R7 2 0
      148 JUMP                             ; [+60]
      149 GETTABLEKS                       R7 R6 K5 ["type"]
      151 JUMPIFNOTEQKS                    R7 K2 ["User"] ; [+27]
      153 LOADN                            R9 1
      154 DUPTABLE                         R10 K18 [{"id", "text"}]
      155 GETTABLEKS                       R11 R6 K19 ["uniqueId"]
      157 SETTABLEKS                       R11 R10 K11 ["id"]
      159 GETUPVAL                         R11 2
      160 LOADK                            R13 K20 ["ScopeMenuItem"]
      161 LOADK                            R14 K2 ["User"]
      162 DUPTABLE                         R15 K23 [{"user"}]
      163 GETTABLEKS                       R16 R6 K24 ["name"]
      165 SETTABLEKS                       R16 R15 K22 ["user"]
      167 NAMECALL                         R11 R11 K21 ["getText"]
      169 CALL                             R11 4 1
      170 SETTABLEKS                       R11 R10 K17 ["text"]
      172 FASTCALL3                        TABLE_INSERT R0 R9 R10
      174 MOVE                             R8 R0
      175 GETIMPORT                        R7 K16 [table.insert]
      177 CALL                             R7 3 0
      178 JUMP                             ; [+30]
      179 GETTABLEKS                       R7 R6 K5 ["type"]
      181 JUMPIFNOTEQKS                    R7 K3 ["Group"] ; [+17]
      183 DUPTABLE                         R9 K18 [{"id", "text"}]
      184 GETTABLEKS                       R10 R6 K19 ["uniqueId"]
      186 SETTABLEKS                       R10 R9 K11 ["id"]
      188 GETTABLEKS                       R10 R6 K24 ["name"]
      190 SETTABLEKS                       R10 R9 K17 ["text"]
      192 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      194 MOVE                             R8 R0
      195 GETIMPORT                        R7 K16 [table.insert]
      197 CALL                             R7 2 0
      198 JUMP                             ; [+10]
      199 GETIMPORT                        R7 K26 [error]
      201 LOADK                            R9 K6 ["Unsupported scope type: %*"]
      202 GETTABLEKS                       R11 R6 K5 ["type"]
      204 NAMECALL                         R9 R9 K7 ["format"]
      206 CALL                             R9 2 1
      207 MOVE                             R8 R9
      208 CALL                             R7 1 0
      209 FORGLOOP                         R2 2 ; [-85]
      211 NEWTABLE                         R2 0 2
      213 DUPTABLE                         R3 K28 [{"id", "text", "items"}]
      214 LOADK                            R4 K29 ["UserAndGroup"]
      215 SETTABLEKS                       R4 R3 K11 ["id"]
      217 LOADNIL                          R4
      218 SETTABLEKS                       R4 R3 K17 ["text"]
      220 SETTABLEKS                       R0 R3 K27 ["items"]
      222 DUPTABLE                         R4 K28 [{"id", "text", "items"}]
      223 LOADK                            R5 K30 ["OpenAssetManager"]
      224 SETTABLEKS                       R5 R4 K11 ["id"]
      226 LOADNIL                          R5
      227 SETTABLEKS                       R5 R4 K17 ["text"]
      229 NEWTABLE                         R5 0 1
      231 DUPTABLE                         R6 K18 [{"id", "text"}]
      232 LOADK                            R7 K30 ["OpenAssetManager"]
      233 SETTABLEKS                       R7 R6 K11 ["id"]
      235 GETUPVAL                         R7 2
      236 LOADK                            R9 K20 ["ScopeMenuItem"]
      237 LOADK                            R10 K30 ["OpenAssetManager"]
      238 NAMECALL                         R7 R7 K21 ["getText"]
      240 CALL                             R7 3 1
      241 SETTABLEKS                       R7 R6 K17 ["text"]
      243 SETLIST                          R5 R6 1 [1]
      245 SETTABLEKS                       R5 R4 K27 ["items"]
      247 SETLIST                          R2 R3 2 [1]
      249 LENGTH                           R3 R1
      250 LOADN                            R4 0
      251 JUMPIFNOTLT                      R4 R3 ; [+17]
      253 LOADN                            R5 1
      254 DUPTABLE                         R6 K28 [{"id", "text", "items"}]
      255 LOADK                            R7 K1 ["Universe"]
      256 SETTABLEKS                       R7 R6 K11 ["id"]
      258 LOADNIL                          R7
      259 SETTABLEKS                       R7 R6 K17 ["text"]
      261 SETTABLEKS                       R1 R6 K27 ["items"]
      263 FASTCALL3                        TABLE_INSERT R2 R5 R6
      265 MOVE                             R4 R2
      266 GETIMPORT                        R3 K16 [table.insert]
      268 CALL                             R3 3 0
      269 RETURN                           R2 1

PROTO_6:
        0 JUMPIFNOTEQKS                    R1 K0 ["OpenAssetManager"] ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["openAssetManager"]
        5 CALL                             R2 0 0
        6 JUMP                             ; [+21]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["loadedScopeMap"]
       10 JUMPIFNOTEQKNIL                  R4 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       16 LOADK                            R4 K3 ["Somehow, user selected a scope when they haven't loaded yet"]
       17 GETIMPORT                        R2 K5 [assert]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K6 ["onScopeChanged"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K2 ["loadedScopeMap"]
       26 GETTABLE                         R3 R4 R1
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K7 ["disable"]
       31 CALL                             R2 0 0
       32 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 NEWTABLE                         R5 0 3
       24 GETTABLEKS                       R6 R0 K3 ["loadedScopeMap"]
       26 GETTABLEKS                       R7 R0 K4 ["universeCreatorInfo"]
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R8 R8 K5 ["locale"]
       31 SETLIST                          R5 R6 3 [1]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 6
       35 CALL                             R4 0 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       39 NEWCLOSURE                       R6 P1
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R7 0 2
       45 GETTABLEKS                       R8 R0 K3 ["loadedScopeMap"]
       47 GETTABLEKS                       R9 R0 K7 ["onScopeChanged"]
       49 SETLIST                          R7 R8 2 [1]
       51 CALL                             R5 2 1
       52 GETUPVAL                         R6 7
       53 GETTABLEKS                       R6 R6 K8 ["createNextOrder"]
       55 CALL                             R6 0 1
       56 GETUPVAL                         R7 8
       57 CALL                             R7 0 1
       58 GETUPVAL                         R8 9
       59 GETUPVAL                         R9 10
       60 GETTABLEKS                       R9 R9 K9 ["Root"]
       62 DUPTABLE                         R10 K11 [{"isOpen"}]
       63 GETTABLEKS                       R11 R4 K12 ["enabled"]
       65 SETTABLEKS                       R11 R10 K10 ["isOpen"]
       67 DUPTABLE                         R11 K15 [{"ScopeMenuAnchor", "Content"}]
       68 GETUPVAL                         R12 9
       69 GETUPVAL                         R13 10
       70 GETTABLEKS                       R13 R13 K16 ["Anchor"]
       72 DUPTABLE                         R14 K18 [{"LayoutOrder"}]
       73 GETTABLEKS                       R15 R0 K19 ["layoutOrder"]
       75 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       77 DUPTABLE                         R15 K21 [{"Button"}]
       78 GETUPVAL                         R16 9
       79 GETUPVAL                         R17 11
       80 DUPTABLE                         R18 K25 [{"tag", "Size", "onActivated"}]
       81 LOADK                            R19 K26 ["padding-x-small radius-small row align-y-center gap-xsmall"]
       82 SETTABLEKS                       R19 R18 K22 ["tag"]
       84 GETIMPORT                        R19 K29 [UDim2.fromOffset]
       86 LOADN                            R20 120
       87 GETTABLEKS                       R21 R7 K23 ["Size"]
       89 GETTABLEKS                       R21 R21 K30 ["Size_600"]
       91 CALL                             R19 2 1
       92 SETTABLEKS                       R19 R18 K23 ["Size"]
       94 GETTABLEKS                       R19 R4 K31 ["enable"]
       96 SETTABLEKS                       R19 R18 K24 ["onActivated"]
       98 DUPTABLE                         R19 K35 [{"Thumbnail", "ScopeName", "ArrowIcon"}]
       99 GETTABLEKS                       R21 R0 K36 ["loadedScope"]
      101 JUMPIFNOTEQKNIL                  R21 ; [+25]
      103 GETUPVAL                         R20 9
      104 GETUPVAL                         R21 11
      105 DUPTABLE                         R22 K37 [{"tag"}]
      106 LOADK                            R23 K38 ["auto-xy"]
      107 SETTABLEKS                       R23 R22 K22 ["tag"]
      109 DUPTABLE                         R23 K40 [{"Loading"}]
      110 GETUPVAL                         R24 9
      111 GETUPVAL                         R25 12
      112 DUPTABLE                         R26 K42 [{"size"}]
      113 GETUPVAL                         R27 13
      114 GETTABLEKS                       R27 R27 K43 ["Enums"]
      116 GETTABLEKS                       R27 R27 K44 ["IconSize"]
      118 GETTABLEKS                       R27 R27 K45 ["Small"]
      120 SETTABLEKS                       R27 R26 K41 ["size"]
      122 CALL                             R24 2 1
      123 SETTABLEKS                       R24 R23 K39 ["Loading"]
      125 CALL                             R20 3 1
      126 JUMP                             ; [+59]
      127 GETUPVAL                         R20 9
      128 GETUPVAL                         R21 14
      129 DUPTABLE                         R22 K47 [{"tag", "LayoutOrder", "Image"}]
      130 LOADK                            R23 K48 ["size-400"]
      131 SETTABLEKS                       R23 R22 K22 ["tag"]
      133 MOVE                             R23 R6
      134 CALL                             R23 0 1
      135 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      137 GETTABLEKS                       R23 R0 K36 ["loadedScope"]
      139 JUMPIFNOT                        R23 ; [+43]
      140 GETTABLEKS                       R24 R0 K36 ["loadedScope"]
      142 GETTABLEKS                       R24 R24 K49 ["type"]
      144 GETTABLEKS                       R25 R2 K50 ["theme"]
      146 JUMPIFNOTEQKS                    R24 K51 ["Universe"] ; [+8]
      148 LOADK                            R26 K52 ["rbxasset://studio_svg_textures/Lua/AssetManager/%*/Standard/PlacesFolder.png"]
      149 MOVE                             R28 R25
      150 NAMECALL                         R26 R26 K53 ["format"]
      152 CALL                             R26 2 1
      153 MOVE                             R23 R26
      154 JUMP                             ; [+28]
      155 JUMPIFNOTEQKS                    R24 K54 ["User"] ; [+8]
      157 LOADK                            R26 K55 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/StarterPlayer.png"]
      158 MOVE                             R28 R25
      159 NAMECALL                         R26 R26 K53 ["format"]
      161 CALL                             R26 2 1
      162 MOVE                             R23 R26
      163 JUMP                             ; [+19]
      164 JUMPIFNOTEQKS                    R24 K56 ["Group"] ; [+8]
      166 LOADK                            R26 K57 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/Teams.png"]
      167 MOVE                             R28 R25
      168 NAMECALL                         R26 R26 K53 ["format"]
      170 CALL                             R26 2 1
      171 MOVE                             R23 R26
      172 JUMP                             ; [+10]
      173 GETIMPORT                        R26 K59 [error]
      175 LOADK                            R28 K60 ["Unsupported scope type: %*"]
      176 MOVE                             R30 R24
      177 NAMECALL                         R28 R28 K53 ["format"]
      179 CALL                             R28 2 1
      180 MOVE                             R27 R28
      181 CALL                             R26 1 0
      182 LOADNIL                          R23
      183 SETTABLEKS                       R23 R22 K46 ["Image"]
      185 CALL                             R20 2 1
      186 SETTABLEKS                       R20 R19 K32 ["Thumbnail"]
      188 GETUPVAL                         R20 9
      189 GETUPVAL                         R21 15
      190 DUPTABLE                         R22 K62 [{"tag", "LayoutOrder", "Text"}]
      191 LOADK                            R23 K63 ["size-0-full fill clip text-body-small text-align-x-left text-align-y-center"]
      192 SETTABLEKS                       R23 R22 K22 ["tag"]
      194 MOVE                             R23 R6
      195 CALL                             R23 0 1
      196 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      198 GETTABLEKS                       R24 R0 K36 ["loadedScope"]
      200 JUMPIFNOTEQKNIL                  R24 ; [+3]
      202 LOADK                            R23 K64 [""]
      203 JUMP                             ; [+4]
      204 GETTABLEKS                       R23 R0 K36 ["loadedScope"]
      206 GETTABLEKS                       R23 R23 K65 ["name"]
      208 SETTABLEKS                       R23 R22 K61 ["Text"]
      210 CALL                             R20 2 1
      211 SETTABLEKS                       R20 R19 K33 ["ScopeName"]
      213 GETUPVAL                         R20 9
      214 GETUPVAL                         R21 16
      215 DUPTABLE                         R22 K66 [{"LayoutOrder", "name", "size"}]
      216 MOVE                             R23 R6
      217 CALL                             R23 0 1
      218 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      220 GETUPVAL                         R23 13
      221 GETTABLEKS                       R23 R23 K43 ["Enums"]
      223 GETTABLEKS                       R23 R23 K67 ["IconName"]
      225 GETTABLEKS                       R23 R23 K68 ["ChevronSmallDown"]
      227 SETTABLEKS                       R23 R22 K65 ["name"]
      229 GETUPVAL                         R23 13
      230 GETTABLEKS                       R23 R23 K43 ["Enums"]
      232 GETTABLEKS                       R23 R23 K44 ["IconSize"]
      234 GETTABLEKS                       R23 R23 K45 ["Small"]
      236 SETTABLEKS                       R23 R22 K41 ["size"]
      238 CALL                             R20 2 1
      239 SETTABLEKS                       R20 R19 K34 ["ArrowIcon"]
      241 CALL                             R16 3 1
      242 SETTABLEKS                       R16 R15 K20 ["Button"]
      244 CALL                             R12 3 1
      245 SETTABLEKS                       R12 R11 K13 ["ScopeMenuAnchor"]
      247 GETTABLEKS                       R13 R4 K12 ["enabled"]
      249 JUMPIFNOT                        R13 ; [+61]
      250 GETUPVAL                         R12 9
      251 GETUPVAL                         R13 10
      252 GETTABLEKS                       R13 R13 K14 ["Content"]
      254 DUPTABLE                         R14 K73 [{"hasArrow", "onPressedOutside", "align", "side"}]
      255 LOADB                            R15 0
      256 SETTABLEKS                       R15 R14 K69 ["hasArrow"]
      258 GETTABLEKS                       R15 R4 K74 ["disable"]
      260 SETTABLEKS                       R15 R14 K70 ["onPressedOutside"]
      262 DUPTABLE                         R15 K77 [{"position", "offset"}]
      263 GETUPVAL                         R16 13
      264 GETTABLEKS                       R16 R16 K43 ["Enums"]
      266 GETTABLEKS                       R16 R16 K78 ["PopoverAlign"]
      268 GETTABLEKS                       R16 R16 K79 ["End"]
      270 SETTABLEKS                       R16 R15 K75 ["position"]
      272 LOADN                            R16 0
      273 SETTABLEKS                       R16 R15 K76 ["offset"]
      275 SETTABLEKS                       R15 R14 K71 ["align"]
      277 DUPTABLE                         R15 K77 [{"position", "offset"}]
      278 GETUPVAL                         R16 13
      279 GETTABLEKS                       R16 R16 K43 ["Enums"]
      281 GETTABLEKS                       R16 R16 K80 ["PopoverSide"]
      283 GETTABLEKS                       R16 R16 K81 ["Bottom"]
      285 SETTABLEKS                       R16 R15 K75 ["position"]
      287 LOADN                            R16 4
      288 SETTABLEKS                       R16 R15 K76 ["offset"]
      290 SETTABLEKS                       R15 R14 K72 ["side"]
      292 DUPTABLE                         R15 K83 [{"ScopeMenu"}]
      293 GETUPVAL                         R16 9
      294 GETUPVAL                         R17 17
      295 DUPTABLE                         R18 K88 [{"items", "shouldDisplayChecks", "width", "onItemSelected"}]
      296 SETTABLEKS                       R3 R18 K84 ["items"]
      298 LOADB                            R19 0
      299 SETTABLEKS                       R19 R18 K85 ["shouldDisplayChecks"]
      301 LOADN                            R19 180
      302 SETTABLEKS                       R19 R18 K86 ["width"]
      304 SETTABLEKS                       R5 R18 K87 ["onItemSelected"]
      306 CALL                             R16 2 1
      307 SETTABLEKS                       R16 R15 K82 ["ScopeMenu"]
      309 CALL                             R12 3 1
      310 JUMP                             ; [+1]
      311 LOADNIL                          R12
      312 SETTABLEKS                       R12 R11 K14 ["Content"]
      314 CALL                             R8 3 -1
      315 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Contexts"]
       19 GETTABLEKS                       R4 R4 K9 ["AssetManagerContext"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R5 R1 K10 ["Components"]
       26 GETTABLEKS                       R5 R5 K11 ["Util"]
       28 GETTABLEKS                       R5 R5 K12 ["DividedMenu"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K7 [require]
       33 GETTABLEKS                       R6 R2 K13 ["Foundation"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K7 [require]
       38 GETTABLEKS                       R7 R2 K14 ["React"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K7 [require]
       43 GETTABLEKS                       R8 R2 K15 ["ReactUtils"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K7 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Components"]
       50 GETTABLEKS                       R9 R9 K8 ["Contexts"]
       52 GETTABLEKS                       R9 R9 K16 ["ThemeContext"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K7 [require]
       57 GETTABLEKS                       R10 R1 K17 ["Resources"]
       59 GETTABLEKS                       R10 R10 K18 ["Localization"]
       61 GETTABLEKS                       R10 R10 K19 ["Translator"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K7 [require]
       66 GETTABLEKS                       R11 R1 K20 ["Types"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K7 [require]
       71 GETTABLEKS                       R12 R1 K11 ["Util"]
       73 GETTABLEKS                       R12 R12 K21 ["createScopeUniqueId"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K7 [require]
       78 GETTABLEKS                       R13 R1 K22 ["Flags"]
       80 GETTABLEKS                       R13 R13 K23 ["getFFlagAssetPickerSmarterGroups"]
       82 CALL                             R12 1 1
       83 GETTABLEKS                       R13 R5 K24 ["Icon"]
       85 GETTABLEKS                       R14 R5 K25 ["Image"]
       87 GETTABLEKS                       R15 R5 K26 ["Loading"]
       89 GETTABLEKS                       R16 R5 K27 ["Popover"]
       91 GETTABLEKS                       R17 R5 K28 ["Text"]
       93 GETTABLEKS                       R18 R5 K29 ["View"]
       95 GETTABLEKS                       R19 R6 K30 ["createElement"]
       97 GETTABLEKS                       R20 R7 K31 ["useToggleState"]
       99 GETTABLEKS                       R21 R5 K32 ["Hooks"]
      101 GETTABLEKS                       R21 R21 K33 ["useTokens"]
      103 DUPCLOSURE                       R22 K34 [PROTO_0]
      104 DUPCLOSURE                       R23 K35 [PROTO_7]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R20
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R21
      114 CAPTURE                          VAL R19
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R15
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R4
      123 RETURN                           R23 1
