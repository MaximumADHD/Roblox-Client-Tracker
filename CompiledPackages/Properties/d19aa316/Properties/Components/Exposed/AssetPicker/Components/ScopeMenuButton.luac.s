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
       44 LOADK                            R14 K6 ["Unsupported scope type: %*"]
       45 GETTABLEKS                       R16 R9 K5 ["type"]
       47 NAMECALL                         R14 R14 K7 ["format"]
       49 CALL                             R14 2 1
       50 MOVE                             R13 R14
       51 FASTCALL2                        ASSERT R12 R13 ; [+3]
       53 GETIMPORT                        R11 K9 [assert]
       55 CALL                             R11 2 0
       56 MOVE                             R11 R10
       57 MOVE                             R12 R9
       58 CALL                             R11 1 0
       59 FORGLOOP                         R5 2 ; [-23]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K10 ["universeCreatorInfo"]
       64 JUMPIFEQKNIL                     R6 ; [+17]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K10 ["universeCreatorInfo"]
       69 GETTABLEKS                       R6 R6 K5 ["type"]
       71 JUMPIFNOTEQKS                    R6 K3 ["Group"] ; [+10]
       73 GETUPVAL                         R5 2
       74 LOADK                            R6 K3 ["Group"]
       75 GETUPVAL                         R7 0
       76 GETTABLEKS                       R7 R7 K10 ["universeCreatorInfo"]
       78 GETTABLEKS                       R7 R7 K11 ["id"]
       80 CALL                             R5 2 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R5
       83 GETIMPORT                        R6 K14 [table.sort]
       85 MOVE                             R7 R3
       86 NEWCLOSURE                       R8 P3
       87 CAPTURE                          VAL R5
       88 CALL                             R6 2 0
       89 MOVE                             R6 R2
       90 LOADNIL                          R7
       91 LOADNIL                          R8
       92 FORGPREP                         R6
       93 FASTCALL2                        TABLE_INSERT R0 R10 ; [+5]
       95 MOVE                             R12 R0
       96 MOVE                             R13 R10
       97 GETIMPORT                        R11 K16 [table.insert]
       99 CALL                             R11 2 0
      100 FORGLOOP                         R6 2 ; [-8]
      102 MOVE                             R6 R3
      103 LOADNIL                          R7
      104 LOADNIL                          R8
      105 FORGPREP                         R6
      106 FASTCALL2                        TABLE_INSERT R0 R10 ; [+5]
      108 MOVE                             R12 R0
      109 MOVE                             R13 R10
      110 GETIMPORT                        R11 K16 [table.insert]
      112 CALL                             R11 2 0
      113 FORGLOOP                         R6 2 ; [-8]
      115 NEWTABLE                         R6 0 2
      117 DUPTABLE                         R7 K19 [{"id", "text", "items"}]
      118 LOADK                            R8 K20 ["UserAndGroup"]
      119 SETTABLEKS                       R8 R7 K11 ["id"]
      121 LOADNIL                          R8
      122 SETTABLEKS                       R8 R7 K17 ["text"]
      124 SETTABLEKS                       R0 R7 K18 ["items"]
      126 DUPTABLE                         R8 K19 [{"id", "text", "items"}]
      127 LOADK                            R9 K21 ["OpenAssetManager"]
      128 SETTABLEKS                       R9 R8 K11 ["id"]
      130 LOADNIL                          R9
      131 SETTABLEKS                       R9 R8 K17 ["text"]
      133 NEWTABLE                         R9 0 1
      135 DUPTABLE                         R10 K22 [{"id", "text"}]
      136 LOADK                            R11 K21 ["OpenAssetManager"]
      137 SETTABLEKS                       R11 R10 K11 ["id"]
      139 GETUPVAL                         R11 1
      140 LOADK                            R13 K23 ["ScopeMenuItem"]
      141 LOADK                            R14 K21 ["OpenAssetManager"]
      142 NAMECALL                         R11 R11 K24 ["getText"]
      144 CALL                             R11 3 1
      145 SETTABLEKS                       R11 R10 K17 ["text"]
      147 SETLIST                          R9 R10 1 [1]
      149 SETTABLEKS                       R9 R8 K18 ["items"]
      151 SETLIST                          R6 R7 2 [1]
      153 LENGTH                           R7 R1
      154 LOADN                            R8 0
      155 JUMPIFNOTLT                      R8 R7 ; [+17]
      157 LOADN                            R9 1
      158 DUPTABLE                         R10 K19 [{"id", "text", "items"}]
      159 LOADK                            R11 K1 ["Universe"]
      160 SETTABLEKS                       R11 R10 K11 ["id"]
      162 LOADNIL                          R11
      163 SETTABLEKS                       R11 R10 K17 ["text"]
      165 SETTABLEKS                       R1 R10 K18 ["items"]
      167 FASTCALL3                        TABLE_INSERT R6 R9 R10
      169 MOVE                             R8 R6
      170 GETIMPORT                        R7 K16 [table.insert]
      172 CALL                             R7 3 0
      173 RETURN                           R6 1

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
       79 DUPTABLE                         R18 K25 [{"tag", "Size", "onActivated"}]
       80 LOADK                            R19 K26 ["padding-x-small radius-small row align-y-center gap-xsmall"]
       81 SETTABLEKS                       R19 R18 K22 ["tag"]
       83 GETIMPORT                        R19 K29 [UDim2.fromOffset]
       85 LOADN                            R20 120
       86 GETTABLEKS                       R21 R7 K23 ["Size"]
       88 GETTABLEKS                       R21 R21 K30 ["Size_600"]
       90 CALL                             R19 2 1
       91 SETTABLEKS                       R19 R18 K23 ["Size"]
       93 GETTABLEKS                       R19 R4 K31 ["enable"]
       95 SETTABLEKS                       R19 R18 K24 ["onActivated"]
       97 DUPTABLE                         R19 K35 [{"Thumbnail", "ScopeName", "ArrowIcon"}]
       98 GETTABLEKS                       R21 R0 K36 ["loadedScope"]
      100 JUMPIFNOTEQKNIL                  R21 ; [+25]
      102 GETUPVAL                         R20 8
      103 GETUPVAL                         R21 10
      104 DUPTABLE                         R22 K37 [{"tag"}]
      105 LOADK                            R23 K38 ["auto-xy"]
      106 SETTABLEKS                       R23 R22 K22 ["tag"]
      108 DUPTABLE                         R23 K40 [{"Loading"}]
      109 GETUPVAL                         R24 8
      110 GETUPVAL                         R25 11
      111 DUPTABLE                         R26 K42 [{"size"}]
      112 GETUPVAL                         R27 12
      113 GETTABLEKS                       R27 R27 K43 ["Enums"]
      115 GETTABLEKS                       R27 R27 K44 ["IconSize"]
      117 GETTABLEKS                       R27 R27 K45 ["Small"]
      119 SETTABLEKS                       R27 R26 K41 ["size"]
      121 CALL                             R24 2 1
      122 SETTABLEKS                       R24 R23 K39 ["Loading"]
      124 CALL                             R20 3 1
      125 JUMP                             ; [+59]
      126 GETUPVAL                         R20 8
      127 GETUPVAL                         R21 13
      128 DUPTABLE                         R22 K47 [{"tag", "LayoutOrder", "Image"}]
      129 LOADK                            R23 K48 ["size-400"]
      130 SETTABLEKS                       R23 R22 K22 ["tag"]
      132 MOVE                             R23 R6
      133 CALL                             R23 0 1
      134 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      136 GETTABLEKS                       R23 R0 K36 ["loadedScope"]
      138 JUMPIFNOT                        R23 ; [+43]
      139 GETTABLEKS                       R24 R0 K36 ["loadedScope"]
      141 GETTABLEKS                       R24 R24 K49 ["type"]
      143 GETTABLEKS                       R25 R2 K50 ["theme"]
      145 JUMPIFNOTEQKS                    R24 K51 ["Universe"] ; [+8]
      147 LOADK                            R26 K52 ["rbxasset://studio_svg_textures/Lua/AssetManager/%*/Standard/PlacesFolder.png"]
      148 MOVE                             R28 R25
      149 NAMECALL                         R26 R26 K53 ["format"]
      151 CALL                             R26 2 1
      152 MOVE                             R23 R26
      153 JUMP                             ; [+28]
      154 JUMPIFNOTEQKS                    R24 K54 ["User"] ; [+8]
      156 LOADK                            R26 K55 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/StarterPlayer.png"]
      157 MOVE                             R28 R25
      158 NAMECALL                         R26 R26 K53 ["format"]
      160 CALL                             R26 2 1
      161 MOVE                             R23 R26
      162 JUMP                             ; [+19]
      163 JUMPIFNOTEQKS                    R24 K56 ["Group"] ; [+8]
      165 LOADK                            R26 K57 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/Teams.png"]
      166 MOVE                             R28 R25
      167 NAMECALL                         R26 R26 K53 ["format"]
      169 CALL                             R26 2 1
      170 MOVE                             R23 R26
      171 JUMP                             ; [+10]
      172 GETIMPORT                        R26 K59 [error]
      174 LOADK                            R28 K60 ["Unsupported scope type: %*"]
      175 MOVE                             R30 R24
      176 NAMECALL                         R28 R28 K53 ["format"]
      178 CALL                             R28 2 1
      179 MOVE                             R27 R28
      180 CALL                             R26 1 0
      181 LOADNIL                          R23
      182 SETTABLEKS                       R23 R22 K46 ["Image"]
      184 CALL                             R20 2 1
      185 SETTABLEKS                       R20 R19 K32 ["Thumbnail"]
      187 GETUPVAL                         R20 8
      188 GETUPVAL                         R21 14
      189 DUPTABLE                         R22 K62 [{"tag", "LayoutOrder", "Text"}]
      190 LOADK                            R23 K63 ["size-0-full fill clip text-body-small text-align-x-left text-align-y-center"]
      191 SETTABLEKS                       R23 R22 K22 ["tag"]
      193 MOVE                             R23 R6
      194 CALL                             R23 0 1
      195 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      197 GETTABLEKS                       R24 R0 K36 ["loadedScope"]
      199 JUMPIFNOTEQKNIL                  R24 ; [+3]
      201 LOADK                            R23 K64 [""]
      202 JUMP                             ; [+4]
      203 GETTABLEKS                       R23 R0 K36 ["loadedScope"]
      205 GETTABLEKS                       R23 R23 K65 ["name"]
      207 SETTABLEKS                       R23 R22 K61 ["Text"]
      209 CALL                             R20 2 1
      210 SETTABLEKS                       R20 R19 K33 ["ScopeName"]
      212 GETUPVAL                         R20 8
      213 GETUPVAL                         R21 15
      214 DUPTABLE                         R22 K66 [{"LayoutOrder", "name", "size"}]
      215 MOVE                             R23 R6
      216 CALL                             R23 0 1
      217 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      219 GETUPVAL                         R23 12
      220 GETTABLEKS                       R23 R23 K43 ["Enums"]
      222 GETTABLEKS                       R23 R23 K67 ["IconName"]
      224 GETTABLEKS                       R23 R23 K68 ["ChevronSmallDown"]
      226 SETTABLEKS                       R23 R22 K65 ["name"]
      228 GETUPVAL                         R23 12
      229 GETTABLEKS                       R23 R23 K43 ["Enums"]
      231 GETTABLEKS                       R23 R23 K44 ["IconSize"]
      233 GETTABLEKS                       R23 R23 K45 ["Small"]
      235 SETTABLEKS                       R23 R22 K41 ["size"]
      237 CALL                             R20 2 1
      238 SETTABLEKS                       R20 R19 K34 ["ArrowIcon"]
      240 CALL                             R16 3 1
      241 SETTABLEKS                       R16 R15 K20 ["Button"]
      243 CALL                             R12 3 1
      244 SETTABLEKS                       R12 R11 K13 ["ScopeMenuAnchor"]
      246 GETTABLEKS                       R13 R4 K12 ["enabled"]
      248 JUMPIFNOT                        R13 ; [+61]
      249 GETUPVAL                         R12 8
      250 GETUPVAL                         R13 9
      251 GETTABLEKS                       R13 R13 K14 ["Content"]
      253 DUPTABLE                         R14 K73 [{"hasArrow", "onPressedOutside", "align", "side"}]
      254 LOADB                            R15 0
      255 SETTABLEKS                       R15 R14 K69 ["hasArrow"]
      257 GETTABLEKS                       R15 R4 K74 ["disable"]
      259 SETTABLEKS                       R15 R14 K70 ["onPressedOutside"]
      261 DUPTABLE                         R15 K77 [{"position", "offset"}]
      262 GETUPVAL                         R16 12
      263 GETTABLEKS                       R16 R16 K43 ["Enums"]
      265 GETTABLEKS                       R16 R16 K78 ["PopoverAlign"]
      267 GETTABLEKS                       R16 R16 K79 ["End"]
      269 SETTABLEKS                       R16 R15 K75 ["position"]
      271 LOADN                            R16 0
      272 SETTABLEKS                       R16 R15 K76 ["offset"]
      274 SETTABLEKS                       R15 R14 K71 ["align"]
      276 DUPTABLE                         R15 K77 [{"position", "offset"}]
      277 GETUPVAL                         R16 12
      278 GETTABLEKS                       R16 R16 K43 ["Enums"]
      280 GETTABLEKS                       R16 R16 K80 ["PopoverSide"]
      282 GETTABLEKS                       R16 R16 K81 ["Bottom"]
      284 SETTABLEKS                       R16 R15 K75 ["position"]
      286 LOADN                            R16 4
      287 SETTABLEKS                       R16 R15 K76 ["offset"]
      289 SETTABLEKS                       R15 R14 K72 ["side"]
      291 DUPTABLE                         R15 K83 [{"ScopeMenu"}]
      292 GETUPVAL                         R16 8
      293 GETUPVAL                         R17 16
      294 DUPTABLE                         R18 K88 [{"items", "shouldDisplayChecks", "width", "onItemSelected"}]
      295 SETTABLEKS                       R3 R18 K84 ["items"]
      297 LOADB                            R19 0
      298 SETTABLEKS                       R19 R18 K85 ["shouldDisplayChecks"]
      300 LOADN                            R19 180
      301 SETTABLEKS                       R19 R18 K86 ["width"]
      303 SETTABLEKS                       R5 R18 K87 ["onItemSelected"]
      305 CALL                             R16 2 1
      306 SETTABLEKS                       R16 R15 K82 ["ScopeMenu"]
      308 CALL                             R12 3 1
      309 JUMP                             ; [+1]
      310 LOADNIL                          R12
      311 SETTABLEKS                       R12 R11 K14 ["Content"]
      313 CALL                             R8 3 -1
      314 RETURN                           R8 -1

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
