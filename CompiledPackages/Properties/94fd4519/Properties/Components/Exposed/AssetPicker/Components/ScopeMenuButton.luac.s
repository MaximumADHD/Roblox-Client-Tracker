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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["loadedScopeMap"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+4]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 NEWTABLE                         R1 0 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R2 R5 K0 ["loadedScopeMap"]
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 DUPTABLE                         R7 K3 [{"id", "text"}]
       19 GETTABLEKS                       R8 R6 K1 ["id"]
       21 SETTABLEKS                       R8 R7 K1 ["id"]
       23 GETTABLEKS                       R8 R6 K4 ["name"]
       25 SETTABLEKS                       R8 R7 K2 ["text"]
       27 GETTABLEKS                       R8 R6 K5 ["type"]
       29 JUMPIFNOTEQKS                    R8 K6 ["User"] ; [+10]
       31 LOADN                            R10 1
       32 FASTCALL3                        TABLE_INSERT R0 R10 R7
       34 MOVE                             R9 R0
       35 MOVE                             R11 R7
       36 GETIMPORT                        R8 K9 [table.insert]
       38 CALL                             R8 3 0
       39 JUMP                             ; [+34]
       40 GETTABLEKS                       R8 R6 K5 ["type"]
       42 JUMPIFNOTEQKS                    R8 K10 ["Group"] ; [+9]
       44 FASTCALL2                        TABLE_INSERT R0 R7 ; [+5]
       46 MOVE                             R9 R0
       47 MOVE                             R10 R7
       48 GETIMPORT                        R8 K9 [table.insert]
       50 CALL                             R8 2 0
       51 JUMP                             ; [+22]
       52 GETTABLEKS                       R8 R6 K5 ["type"]
       54 JUMPIFNOTEQKS                    R8 K11 ["Universe"] ; [+9]
       56 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       58 MOVE                             R9 R1
       59 MOVE                             R10 R7
       60 GETIMPORT                        R8 K9 [table.insert]
       62 CALL                             R8 2 0
       63 JUMP                             ; [+10]
       64 GETIMPORT                        R8 K13 [error]
       66 LOADK                            R10 K14 ["Unsupported scope type: %*"]
       67 GETTABLEKS                       R12 R6 K5 ["type"]
       69 NAMECALL                         R10 R10 K15 ["format"]
       71 CALL                             R10 2 1
       72 MOVE                             R9 R10
       73 CALL                             R8 1 0
       74 FORGLOOP                         R2 2 ; [-57]
       76 NEWTABLE                         R2 0 3
       78 DUPTABLE                         R3 K17 [{"id", "text", "items"}]
       79 LOADK                            R4 K11 ["Universe"]
       80 SETTABLEKS                       R4 R3 K1 ["id"]
       82 LOADNIL                          R4
       83 SETTABLEKS                       R4 R3 K2 ["text"]
       85 SETTABLEKS                       R1 R3 K16 ["items"]
       87 DUPTABLE                         R4 K17 [{"id", "text", "items"}]
       88 LOADK                            R5 K18 ["UserAndGroup"]
       89 SETTABLEKS                       R5 R4 K1 ["id"]
       91 LOADNIL                          R5
       92 SETTABLEKS                       R5 R4 K2 ["text"]
       94 SETTABLEKS                       R0 R4 K16 ["items"]
       96 DUPTABLE                         R5 K17 [{"id", "text", "items"}]
       97 LOADK                            R6 K19 ["OpenAssetManager"]
       98 SETTABLEKS                       R6 R5 K1 ["id"]
      100 LOADNIL                          R6
      101 SETTABLEKS                       R6 R5 K2 ["text"]
      103 NEWTABLE                         R6 0 1
      105 DUPTABLE                         R7 K3 [{"id", "text"}]
      106 LOADK                            R8 K19 ["OpenAssetManager"]
      107 SETTABLEKS                       R8 R7 K1 ["id"]
      109 LOADK                            R8 K20 ["Open Asset Manager..."]
      110 SETTABLEKS                       R8 R7 K2 ["text"]
      112 SETLIST                          R6 R7 1 [1]
      114 SETTABLEKS                       R6 R5 K16 ["items"]
      116 SETLIST                          R2 R3 3 [1]
      118 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["OpenAssetManager"] ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["openAssetManager"]
        5 CALL                             R1 0 0
        6 JUMP                             ; [+21]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["loadedScopeMap"]
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       16 LOADK                            R3 K3 ["Somehow, user selected a scope when they haven't loaded yet"]
       17 GETIMPORT                        R1 K5 [assert]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K6 ["onScopeChanged"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K2 ["loadedScopeMap"]
       26 GETTABLE                         R2 R3 R0
       27 CALL                             R1 1 0
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R1 R2 K7 ["disable"]
       31 CALL                             R1 0 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R5 0 1
       21 GETTABLEKS                       R6 R0 K3 ["loadedScopeMap"]
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 3
       27 CALL                             R4 0 1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       31 NEWCLOSURE                       R6 P1
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 NEWTABLE                         R7 0 2
       37 GETTABLEKS                       R8 R0 K3 ["loadedScopeMap"]
       39 GETTABLEKS                       R9 R0 K5 ["onScopeChanged"]
       41 SETLIST                          R7 R8 2 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R6 R7 K6 ["createNextOrder"]
       47 CALL                             R6 0 1
       48 GETUPVAL                         R7 5
       49 CALL                             R7 0 1
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K7 ["createElement"]
       53 GETUPVAL                         R10 6
       54 GETTABLEKS                       R9 R10 K8 ["Root"]
       56 DUPTABLE                         R10 K10 [{"isOpen"}]
       57 GETTABLEKS                       R11 R4 K11 ["enabled"]
       59 SETTABLEKS                       R11 R10 K9 ["isOpen"]
       61 DUPTABLE                         R11 K14 [{"ScopeMenuAnchor", "Content"}]
       62 GETUPVAL                         R13 0
       63 GETTABLEKS                       R12 R13 K7 ["createElement"]
       65 GETUPVAL                         R14 6
       66 GETTABLEKS                       R13 R14 K15 ["Anchor"]
       68 DUPTABLE                         R14 K17 [{"LayoutOrder"}]
       69 GETTABLEKS                       R15 R0 K18 ["layoutOrder"]
       71 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
       73 DUPTABLE                         R15 K20 [{"Button"}]
       74 GETUPVAL                         R16 7
       75 GETUPVAL                         R17 8
       76 DUPTABLE                         R18 K24 [{"tag", "Size", "onActivated"}]
       77 LOADK                            R19 K25 ["row align-y-center gap-xsmall padding-x-xsmall radius-small"]
       78 SETTABLEKS                       R19 R18 K21 ["tag"]
       80 GETIMPORT                        R19 K28 [UDim2.fromOffset]
       82 LOADN                            R20 120
       83 GETTABLEKS                       R22 R7 K22 ["Size"]
       85 GETTABLEKS                       R21 R22 K29 ["Size_600"]
       87 CALL                             R19 2 1
       88 SETTABLEKS                       R19 R18 K22 ["Size"]
       90 GETTABLEKS                       R19 R4 K30 ["enable"]
       92 SETTABLEKS                       R19 R18 K23 ["onActivated"]
       94 DUPTABLE                         R19 K34 [{"Thumbnail", "ScopeName", "ArrowIcon"}]
       95 GETTABLEKS                       R20 R0 K35 ["loadedScope"]
       97 JUMPIFNOT                        R20 ; [+56]
       98 GETUPVAL                         R20 7
       99 GETUPVAL                         R21 9
      100 DUPTABLE                         R22 K37 [{"tag", "LayoutOrder", "Image"}]
      101 LOADK                            R23 K38 ["size-400 radius-small"]
      102 SETTABLEKS                       R23 R22 K21 ["tag"]
      104 MOVE                             R23 R6
      105 CALL                             R23 0 1
      106 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      108 GETTABLEKS                       R25 R0 K35 ["loadedScope"]
      110 GETTABLEKS                       R24 R25 K39 ["type"]
      112 GETTABLEKS                       R25 R2 K40 ["theme"]
      114 JUMPIFNOTEQKS                    R24 K41 ["Universe"] ; [+8]
      116 LOADK                            R26 K42 ["rbxasset://studio_svg_textures/Lua/AssetManager/%*/Standard/PlacesFolder.png"]
      117 MOVE                             R28 R25
      118 NAMECALL                         R26 R26 K43 ["format"]
      120 CALL                             R26 2 1
      121 MOVE                             R23 R26
      122 JUMP                             ; [+28]
      123 JUMPIFNOTEQKS                    R24 K44 ["User"] ; [+8]
      125 LOADK                            R26 K45 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/StarterPlayer.png"]
      126 MOVE                             R28 R25
      127 NAMECALL                         R26 R26 K43 ["format"]
      129 CALL                             R26 2 1
      130 MOVE                             R23 R26
      131 JUMP                             ; [+19]
      132 JUMPIFNOTEQKS                    R24 K46 ["Group"] ; [+8]
      134 LOADK                            R26 K47 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/Teams.png"]
      135 MOVE                             R28 R25
      136 NAMECALL                         R26 R26 K43 ["format"]
      138 CALL                             R26 2 1
      139 MOVE                             R23 R26
      140 JUMP                             ; [+10]
      141 GETIMPORT                        R26 K49 [error]
      143 LOADK                            R28 K50 ["Unsupported scope type: %*"]
      144 MOVE                             R30 R24
      145 NAMECALL                         R28 R28 K43 ["format"]
      147 CALL                             R28 2 1
      148 MOVE                             R27 R28
      149 CALL                             R26 1 0
      150 LOADNIL                          R23
      151 SETTABLEKS                       R23 R22 K36 ["Image"]
      153 CALL                             R20 2 1
      154 SETTABLEKS                       R20 R19 K31 ["Thumbnail"]
      156 GETTABLEKS                       R20 R0 K35 ["loadedScope"]
      158 JUMPIFNOT                        R20 ; [+17]
      159 GETUPVAL                         R20 7
      160 GETUPVAL                         R21 10
      161 DUPTABLE                         R22 K52 [{"tag", "LayoutOrder", "Text"}]
      162 LOADK                            R23 K53 ["size-0-full fill clip text-body-small text-align-x-left text-align-y-center"]
      163 SETTABLEKS                       R23 R22 K21 ["tag"]
      165 MOVE                             R23 R6
      166 CALL                             R23 0 1
      167 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      169 GETTABLEKS                       R24 R0 K35 ["loadedScope"]
      171 GETTABLEKS                       R23 R24 K54 ["name"]
      173 SETTABLEKS                       R23 R22 K51 ["Text"]
      175 CALL                             R20 2 1
      176 SETTABLEKS                       R20 R19 K32 ["ScopeName"]
      178 GETTABLEKS                       R20 R0 K35 ["loadedScope"]
      180 JUMPIFNOT                        R20 ; [+26]
      181 GETUPVAL                         R20 7
      182 GETUPVAL                         R21 11
      183 DUPTABLE                         R22 K56 [{"LayoutOrder", "name", "size"}]
      184 MOVE                             R23 R6
      185 CALL                             R23 0 1
      186 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      188 GETUPVAL                         R26 12
      189 GETTABLEKS                       R25 R26 K57 ["Enums"]
      191 GETTABLEKS                       R24 R25 K58 ["IconName"]
      193 GETTABLEKS                       R23 R24 K59 ["ChevronLargeDown"]
      195 SETTABLEKS                       R23 R22 K54 ["name"]
      197 GETUPVAL                         R26 12
      198 GETTABLEKS                       R25 R26 K57 ["Enums"]
      200 GETTABLEKS                       R24 R25 K60 ["IconSize"]
      202 GETTABLEKS                       R23 R24 K61 ["Small"]
      204 SETTABLEKS                       R23 R22 K55 ["size"]
      206 CALL                             R20 2 1
      207 SETTABLEKS                       R20 R19 K33 ["ArrowIcon"]
      209 CALL                             R16 3 1
      210 SETTABLEKS                       R16 R15 K19 ["Button"]
      212 CALL                             R12 3 1
      213 SETTABLEKS                       R12 R11 K12 ["ScopeMenuAnchor"]
      215 GETTABLEKS                       R13 R4 K11 ["enabled"]
      217 JUMPIFNOT                        R13 ; [+63]
      218 GETUPVAL                         R13 0
      219 GETTABLEKS                       R12 R13 K7 ["createElement"]
      221 GETUPVAL                         R14 6
      222 GETTABLEKS                       R13 R14 K13 ["Content"]
      224 DUPTABLE                         R14 K66 [{"hasArrow", "onPressedOutside", "align", "side"}]
      225 LOADB                            R15 1
      226 SETTABLEKS                       R15 R14 K62 ["hasArrow"]
      228 GETTABLEKS                       R15 R4 K67 ["disable"]
      230 SETTABLEKS                       R15 R14 K63 ["onPressedOutside"]
      232 DUPTABLE                         R15 K70 [{"position", "offset"}]
      233 GETUPVAL                         R19 12
      234 GETTABLEKS                       R18 R19 K57 ["Enums"]
      236 GETTABLEKS                       R17 R18 K71 ["PopoverAlign"]
      238 GETTABLEKS                       R16 R17 K72 ["End"]
      240 SETTABLEKS                       R16 R15 K68 ["position"]
      242 LOADN                            R16 0
      243 SETTABLEKS                       R16 R15 K69 ["offset"]
      245 SETTABLEKS                       R15 R14 K64 ["align"]
      247 DUPTABLE                         R15 K70 [{"position", "offset"}]
      248 GETUPVAL                         R19 12
      249 GETTABLEKS                       R18 R19 K57 ["Enums"]
      251 GETTABLEKS                       R17 R18 K73 ["PopoverSide"]
      253 GETTABLEKS                       R16 R17 K74 ["Bottom"]
      255 SETTABLEKS                       R16 R15 K68 ["position"]
      257 LOADN                            R16 4
      258 SETTABLEKS                       R16 R15 K69 ["offset"]
      260 SETTABLEKS                       R15 R14 K65 ["side"]
      262 DUPTABLE                         R15 K76 [{"ScopeMenu"}]
      263 GETUPVAL                         R16 7
      264 GETUPVAL                         R17 13
      265 DUPTABLE                         R18 K81 [{"items", "shouldDisplayChecks", "width", "onItemSelected"}]
      266 SETTABLEKS                       R3 R18 K77 ["items"]
      268 LOADB                            R19 0
      269 SETTABLEKS                       R19 R18 K78 ["shouldDisplayChecks"]
      271 LOADN                            R19 180
      272 SETTABLEKS                       R19 R18 K79 ["width"]
      274 SETTABLEKS                       R5 R18 K80 ["onItemSelected"]
      276 CALL                             R16 2 1
      277 SETTABLEKS                       R16 R15 K75 ["ScopeMenu"]
      279 CALL                             R12 3 1
      280 JUMP                             ; [+1]
      281 LOADNIL                          R12
      282 SETTABLEKS                       R12 R11 K13 ["Content"]
      284 CALL                             R8 3 -1
      285 RETURN                           R8 -1

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
       17 GETTABLEKS                       R5 R1 K8 ["Contexts"]
       19 GETTABLEKS                       R4 R5 K9 ["AssetManagerContext"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K7 [require]
       24 GETTABLEKS                       R7 R1 K10 ["Components"]
       26 GETTABLEKS                       R6 R7 K11 ["Util"]
       28 GETTABLEKS                       R5 R6 K12 ["DividedMenu"]
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
       48 GETTABLEKS                       R11 R0 K10 ["Components"]
       50 GETTABLEKS                       R10 R11 K8 ["Contexts"]
       52 GETTABLEKS                       R9 R10 K16 ["ThemeContext"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K7 [require]
       57 GETTABLEKS                       R10 R1 K17 ["Types"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R5 K18 ["Icon"]
       62 GETTABLEKS                       R11 R5 K19 ["Image"]
       64 GETTABLEKS                       R12 R5 K20 ["Popover"]
       66 GETTABLEKS                       R13 R5 K21 ["Text"]
       68 GETTABLEKS                       R14 R5 K22 ["View"]
       70 GETTABLEKS                       R15 R6 K23 ["createElement"]
       72 GETTABLEKS                       R16 R7 K24 ["useToggleState"]
       74 GETTABLEKS                       R18 R5 K25 ["Hooks"]
       76 GETTABLEKS                       R17 R18 K26 ["useTokens"]
       78 DUPCLOSURE                       R18 K27 [PROTO_0]
       79 DUPCLOSURE                       R19 K28 [PROTO_3]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R16
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R17
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R4
       94 RETURN                           R19 1
