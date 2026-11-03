PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Universe"] ; [+7]
        2 LOADK                            R2 K1 ["rbxasset://studio_svg_textures/Lua/AssetManager/%*/Standard/PlacesFolder.png"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K2 ["format"]
        6 CALL                             R2 2 1
        7 RETURN                           R2 1
        8 JUMPIFNOTEQKS                    R0 K3 ["User"] ; [+7]
       10 LOADK                            R2 K4 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/StarterPlayer.png"]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K2 ["format"]
       14 CALL                             R2 2 1
       15 RETURN                           R2 1
       16 JUMPIFNOTEQKS                    R0 K5 ["Group"] ; [+7]
       18 LOADK                            R2 K6 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/Teams.png"]
       19 MOVE                             R4 R1
       20 NAMECALL                         R2 R2 K2 ["format"]
       22 CALL                             R2 2 1
       23 RETURN                           R2 1
       24 GETIMPORT                        R2 K8 [error]
       26 LOADK                            R3 K9 ["Unsupported scope type: %*"]
       27 MOVE                             R5 R0
       28 NAMECALL                         R3 R3 K2 ["format"]
       30 CALL                             R3 2 1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

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
       12 NEWTABLE                         R2 0 0
       14 NEWTABLE                         R3 0 0
       16 DUPTABLE                         R4 K4 [{"Universe", "User", "Group"}]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R5 R4 K1 ["Universe"]
       22 NEWCLOSURE                       R5 P1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U1
       25 SETTABLEKS                       R5 R4 K2 ["User"]
       27 NEWCLOSURE                       R5 P2
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R4 K3 ["Group"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K0 ["loadedScopeMap"]
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 FORGPREP                         R5
       37 GETTABLEKS                       R11 R9 K5 ["type"]
       39 GETTABLE                         R10 R4 R11
       40 JUMPIFNOTEQKNIL                  R10 ; [+2]
       42 LOADB                            R12 0 +1
       43 LOADB                            R12 1
       44 LOADK                            R13 K6 ["Unsupported scope type: %*"]
       45 GETTABLEKS                       R15 R9 K5 ["type"]
       47 NAMECALL                         R13 R13 K7 ["format"]
       49 CALL                             R13 2 1
       50 FASTCALL2                        ASSERT R12 R13 ; [+3]
       52 GETIMPORT                        R11 K9 [assert]
       54 CALL                             R11 2 0
       55 MOVE                             R11 R10
       56 MOVE                             R12 R9
       57 CALL                             R11 1 0
       58 FORGLOOP                         R5 2 ; [-22]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K10 ["universeCreatorInfo"]
       63 JUMPIFEQKNIL                     R6 ; [+17]
       65 GETUPVAL                         R6 0
       66 GETTABLEKS                       R6 R6 K10 ["universeCreatorInfo"]
       68 GETTABLEKS                       R6 R6 K5 ["type"]
       70 JUMPIFNOTEQKS                    R6 K3 ["Group"] ; [+10]
       72 GETUPVAL                         R5 2
       73 LOADK                            R6 K3 ["Group"]
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K10 ["universeCreatorInfo"]
       77 GETTABLEKS                       R7 R7 K11 ["id"]
       79 CALL                             R5 2 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R5
       82 GETIMPORT                        R6 K14 [table.sort]
       84 MOVE                             R7 R3
       85 NEWCLOSURE                       R8 P3
       86 CAPTURE                          VAL R5
       87 CALL                             R6 2 0
       88 MOVE                             R6 R2
       89 LOADNIL                          R7
       90 LOADNIL                          R8
       91 FORGPREP                         R6
       92 FASTCALL2                        TABLE_INSERT R0 R10 ; [+5]
       94 MOVE                             R12 R0
       95 MOVE                             R13 R10
       96 GETIMPORT                        R11 K16 [table.insert]
       98 CALL                             R11 2 0
       99 FORGLOOP                         R6 2 ; [-8]
      101 MOVE                             R6 R3
      102 LOADNIL                          R7
      103 LOADNIL                          R8
      104 FORGPREP                         R6
      105 FASTCALL2                        TABLE_INSERT R0 R10 ; [+5]
      107 MOVE                             R12 R0
      108 MOVE                             R13 R10
      109 GETIMPORT                        R11 K16 [table.insert]
      111 CALL                             R11 2 0
      112 FORGLOOP                         R6 2 ; [-8]
      114 NEWTABLE                         R6 0 2
      116 DUPTABLE                         R7 K21 [{["id"] = "UserAndGroup", ["text"] = , ["items"]}]
      117 SETTABLEKS                       R0 R7 K20 ["items"]
      119 DUPTABLE                         R8 K23 [{["id"] = "OpenAssetManager", ["text"] = , ["items"]}]
      120 NEWTABLE                         R9 0 1
      122 DUPTABLE                         R10 K24 [{["id"] = "OpenAssetManager", ["text"]}]
      123 GETUPVAL                         R11 1
      124 LOADK                            R13 K25 ["ScopeMenuItem"]
      125 LOADK                            R14 K22 ["OpenAssetManager"]
      126 NAMECALL                         R11 R11 K26 ["getText"]
      128 CALL                             R11 3 1
      129 SETTABLEKS                       R11 R10 K18 ["text"]
      131 SETLIST                          R9 R10 1 [1]
      133 SETTABLEKS                       R9 R8 K20 ["items"]
      135 SETLIST                          R6 R7 2 [1]
      137 LENGTH                           R7 R1
      138 LOADN                            R8 0
      139 JUMPIFNOTLT                      R8 R7 ; [+11]
      141 LOADN                            R9 1
      142 DUPTABLE                         R10 K27 [{["id"] = "Universe", ["text"] = , ["items"]}]
      143 SETTABLEKS                       R1 R10 K20 ["items"]
      145 FASTCALL3                        TABLE_INSERT R6 R9 R10
      147 MOVE                             R8 R6
      148 GETIMPORT                        R7 K16 [table.insert]
      150 CALL                             R7 3 0
      151 RETURN                           R6 1

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
       21 NEWTABLE                         R5 0 3
       23 GETTABLEKS                       R6 R0 K3 ["loadedScopeMap"]
       25 GETTABLEKS                       R7 R0 K4 ["universeCreatorInfo"]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K5 ["locale"]
       30 SETLIST                          R5 R6 3 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 5
       34 CALL                             R4 0 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R7 0 2
       44 GETTABLEKS                       R8 R0 K3 ["loadedScopeMap"]
       46 GETTABLEKS                       R9 R0 K7 ["onScopeChanged"]
       48 SETLIST                          R7 R8 2 [1]
       50 CALL                             R5 2 1
       51 GETUPVAL                         R6 6
       52 GETTABLEKS                       R6 R6 K8 ["createNextOrder"]
       54 CALL                             R6 0 1
       55 GETUPVAL                         R7 7
       56 CALL                             R7 0 1
       57 GETUPVAL                         R8 8
       58 GETUPVAL                         R9 9
       59 GETTABLEKS                       R9 R9 K9 ["Root"]
       61 DUPTABLE                         R10 K11 [{"isOpen"}]
       62 GETTABLEKS                       R11 R4 K12 ["enabled"]
       64 SETTABLEKS                       R11 R10 K10 ["isOpen"]
       66 DUPTABLE                         R11 K15 [{"ScopeMenuAnchor", "Content"}]
       67 GETUPVAL                         R12 8
       68 GETUPVAL                         R13 9
       69 GETTABLEKS                       R13 R13 K16 ["Anchor"]
       71 DUPTABLE                         R14 K18 [{"LayoutOrder"}]
       72 GETTABLEKS                       R15 R0 K19 ["layoutOrder"]
       74 SETTABLEKS                       R15 R14 K17 ["LayoutOrder"]
       76 DUPTABLE                         R15 K21 [{"Button"}]
       77 GETUPVAL                         R16 8
       78 GETUPVAL                         R17 10
       79 DUPTABLE                         R18 K26 [{["tag"] = "row align-y-center gap-xsmall padding-x-small radius-small", ["Size"], ["onActivated"]}]
       80 GETIMPORT                        R19 K29 [UDim2.fromOffset]
       82 LOADN                            R20 120
       83 GETTABLEKS                       R21 R7 K24 ["Size"]
       85 GETTABLEKS                       R21 R21 K30 ["Size_600"]
       87 CALL                             R19 2 1
       88 SETTABLEKS                       R19 R18 K24 ["Size"]
       90 GETTABLEKS                       R19 R4 K31 ["enable"]
       92 SETTABLEKS                       R19 R18 K25 ["onActivated"]
       94 DUPTABLE                         R19 K35 [{"Thumbnail", "ScopeName", "ArrowIcon"}]
       95 GETTABLEKS                       R21 R0 K36 ["loadedScope"]
       97 JUMPIFNOTEQKNIL                  R21 ; [+22]
       99 GETUPVAL                         R20 8
      100 GETUPVAL                         R21 10
      101 DUPTABLE                         R22 K38 [{["tag"] = "auto-xy"}]
      102 DUPTABLE                         R23 K40 [{"Loading"}]
      103 GETUPVAL                         R24 8
      104 GETUPVAL                         R25 11
      105 DUPTABLE                         R26 K42 [{"size"}]
      106 GETUPVAL                         R27 12
      107 GETTABLEKS                       R27 R27 K43 ["Enums"]
      109 GETTABLEKS                       R27 R27 K44 ["IconSize"]
      111 GETTABLEKS                       R27 R27 K45 ["Small"]
      113 SETTABLEKS                       R27 R26 K41 ["size"]
      115 CALL                             R24 2 1
      116 SETTABLEKS                       R24 R23 K39 ["Loading"]
      118 CALL                             R20 3 1
      119 JUMP                             ; [+55]
      120 GETUPVAL                         R20 8
      121 GETUPVAL                         R21 13
      122 DUPTABLE                         R22 K48 [{["tag"] = "size-400", ["LayoutOrder"], ["Image"]}]
      123 MOVE                             R23 R6
      124 CALL                             R23 0 1
      125 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      127 GETTABLEKS                       R23 R0 K36 ["loadedScope"]
      129 JUMPIFNOT                        R23 ; [+42]
      130 GETTABLEKS                       R24 R0 K36 ["loadedScope"]
      132 GETTABLEKS                       R24 R24 K49 ["type"]
      134 GETTABLEKS                       R25 R2 K50 ["theme"]
      136 JUMPIFNOTEQKS                    R24 K51 ["Universe"] ; [+8]
      138 LOADK                            R26 K52 ["rbxasset://studio_svg_textures/Lua/AssetManager/%*/Standard/PlacesFolder.png"]
      139 MOVE                             R28 R25
      140 NAMECALL                         R26 R26 K53 ["format"]
      142 CALL                             R26 2 1
      143 MOVE                             R23 R26
      144 JUMP                             ; [+27]
      145 JUMPIFNOTEQKS                    R24 K54 ["User"] ; [+8]
      147 LOADK                            R26 K55 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/StarterPlayer.png"]
      148 MOVE                             R28 R25
      149 NAMECALL                         R26 R26 K53 ["format"]
      151 CALL                             R26 2 1
      152 MOVE                             R23 R26
      153 JUMP                             ; [+18]
      154 JUMPIFNOTEQKS                    R24 K56 ["Group"] ; [+8]
      156 LOADK                            R26 K57 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/Teams.png"]
      157 MOVE                             R28 R25
      158 NAMECALL                         R26 R26 K53 ["format"]
      160 CALL                             R26 2 1
      161 MOVE                             R23 R26
      162 JUMP                             ; [+9]
      163 GETIMPORT                        R26 K59 [error]
      165 LOADK                            R27 K60 ["Unsupported scope type: %*"]
      166 MOVE                             R29 R24
      167 NAMECALL                         R27 R27 K53 ["format"]
      169 CALL                             R27 2 1
      170 CALL                             R26 1 0
      171 LOADNIL                          R23
      172 SETTABLEKS                       R23 R22 K47 ["Image"]
      174 CALL                             R20 2 1
      175 SETTABLEKS                       R20 R19 K32 ["Thumbnail"]
      177 GETUPVAL                         R20 8
      178 GETUPVAL                         R21 14
      179 DUPTABLE                         R22 K63 [{["tag"] = "fill size-0-full text-body-small text-align-x-left text-align-y-center clip", ["LayoutOrder"], ["Text"]}]
      180 MOVE                             R23 R6
      181 CALL                             R23 0 1
      182 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      184 GETTABLEKS                       R24 R0 K36 ["loadedScope"]
      186 JUMPIFNOTEQKNIL                  R24 ; [+3]
      188 LOADK                            R23 K64 [""]
      189 JUMP                             ; [+4]
      190 GETTABLEKS                       R23 R0 K36 ["loadedScope"]
      192 GETTABLEKS                       R23 R23 K65 ["name"]
      194 SETTABLEKS                       R23 R22 K62 ["Text"]
      196 CALL                             R20 2 1
      197 SETTABLEKS                       R20 R19 K33 ["ScopeName"]
      199 GETUPVAL                         R20 8
      200 GETUPVAL                         R21 15
      201 DUPTABLE                         R22 K66 [{"LayoutOrder", "name", "size"}]
      202 MOVE                             R23 R6
      203 CALL                             R23 0 1
      204 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      206 GETUPVAL                         R23 12
      207 GETTABLEKS                       R23 R23 K43 ["Enums"]
      209 GETTABLEKS                       R23 R23 K67 ["IconName"]
      211 GETTABLEKS                       R23 R23 K68 ["ChevronSmallDown"]
      213 SETTABLEKS                       R23 R22 K65 ["name"]
      215 GETUPVAL                         R23 12
      216 GETTABLEKS                       R23 R23 K43 ["Enums"]
      218 GETTABLEKS                       R23 R23 K44 ["IconSize"]
      220 GETTABLEKS                       R23 R23 K45 ["Small"]
      222 SETTABLEKS                       R23 R22 K41 ["size"]
      224 CALL                             R20 2 1
      225 SETTABLEKS                       R20 R19 K34 ["ArrowIcon"]
      227 CALL                             R16 3 1
      228 SETTABLEKS                       R16 R15 K20 ["Button"]
      230 CALL                             R12 3 1
      231 SETTABLEKS                       R12 R11 K13 ["ScopeMenuAnchor"]
      233 GETTABLEKS                       R13 R4 K12 ["enabled"]
      235 JUMPIFNOT                        R13 ; [+46]
      236 GETUPVAL                         R12 8
      237 GETUPVAL                         R13 9
      238 GETTABLEKS                       R13 R13 K14 ["Content"]
      240 DUPTABLE                         R14 K74 [{["hasArrow"] = False, ["onPressedOutside"], ["align"], ["side"]}]
      241 GETTABLEKS                       R15 R4 K75 ["disable"]
      243 SETTABLEKS                       R15 R14 K71 ["onPressedOutside"]
      245 DUPTABLE                         R15 K79 [{["position"], ["offset"] = 0}]
      246 GETUPVAL                         R16 12
      247 GETTABLEKS                       R16 R16 K43 ["Enums"]
      249 GETTABLEKS                       R16 R16 K80 ["PopoverAlign"]
      251 GETTABLEKS                       R16 R16 K81 ["End"]
      253 SETTABLEKS                       R16 R15 K76 ["position"]
      255 SETTABLEKS                       R15 R14 K72 ["align"]
      257 DUPTABLE                         R15 K83 [{["position"], ["offset"] = 4}]
      258 GETUPVAL                         R16 12
      259 GETTABLEKS                       R16 R16 K43 ["Enums"]
      261 GETTABLEKS                       R16 R16 K84 ["PopoverSide"]
      263 GETTABLEKS                       R16 R16 K85 ["Bottom"]
      265 SETTABLEKS                       R16 R15 K76 ["position"]
      267 SETTABLEKS                       R15 R14 K73 ["side"]
      269 DUPTABLE                         R15 K87 [{"ScopeMenu"}]
      270 GETUPVAL                         R16 8
      271 GETUPVAL                         R17 16
      272 DUPTABLE                         R18 K93 [{["items"], ["shouldDisplayChecks"] = False, ["width"] = 180, ["onItemSelected"]}]
      273 SETTABLEKS                       R3 R18 K88 ["items"]
      275 SETTABLEKS                       R5 R18 K92 ["onItemSelected"]
      277 CALL                             R16 2 1
      278 SETTABLEKS                       R16 R15 K86 ["ScopeMenu"]
      280 CALL                             R12 3 1
      281 JUMP                             ; [+1]
      282 LOADNIL                          R12
      283 SETTABLEKS                       R12 R11 K14 ["Content"]
      285 CALL                             R8 3 -1
      286 RETURN                           R8 -1

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
       76 GETTABLEKS                       R12 R5 K22 ["Icon"]
       78 GETTABLEKS                       R13 R5 K23 ["Image"]
       80 GETTABLEKS                       R14 R5 K24 ["Loading"]
       82 GETTABLEKS                       R15 R5 K25 ["Popover"]
       84 GETTABLEKS                       R16 R5 K26 ["Text"]
       86 GETTABLEKS                       R17 R5 K27 ["View"]
       88 GETTABLEKS                       R18 R6 K28 ["createElement"]
       90 GETTABLEKS                       R19 R7 K29 ["useToggleState"]
       92 GETTABLEKS                       R20 R5 K30 ["Hooks"]
       94 GETTABLEKS                       R20 R20 K31 ["useTokens"]
       96 DUPCLOSURE                       R21 K32 [PROTO_0]
       97 DUPCLOSURE                       R22 K33 [PROTO_7]
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R19
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R20
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R4
      115 RETURN                           R22 1
