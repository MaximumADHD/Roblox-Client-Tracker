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
       18 GETTABLEKS                       R7 R6 K1 ["type"]
       20 JUMPIFNOTEQKS                    R7 K2 ["Universe"] ; [+21]
       22 DUPTABLE                         R9 K5 [{"id", "text"}]
       23 GETTABLEKS                       R10 R6 K3 ["id"]
       25 SETTABLEKS                       R10 R9 K3 ["id"]
       27 GETUPVAL                         R10 1
       28 LOADK                            R12 K6 ["ScopeMenuItem"]
       29 LOADK                            R13 K2 ["Universe"]
       30 NAMECALL                         R10 R10 K7 ["getText"]
       32 CALL                             R10 3 1
       33 SETTABLEKS                       R10 R9 K4 ["text"]
       35 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       37 MOVE                             R8 R1
       38 GETIMPORT                        R7 K10 [table.insert]
       40 CALL                             R7 2 0
       41 JUMP                             ; [+60]
       42 GETTABLEKS                       R7 R6 K1 ["type"]
       44 JUMPIFNOTEQKS                    R7 K11 ["User"] ; [+27]
       46 LOADN                            R9 1
       47 DUPTABLE                         R10 K5 [{"id", "text"}]
       48 GETTABLEKS                       R11 R6 K3 ["id"]
       50 SETTABLEKS                       R11 R10 K3 ["id"]
       52 GETUPVAL                         R11 1
       53 LOADK                            R13 K6 ["ScopeMenuItem"]
       54 LOADK                            R14 K11 ["User"]
       55 DUPTABLE                         R15 K13 [{"user"}]
       56 GETTABLEKS                       R16 R6 K14 ["name"]
       58 SETTABLEKS                       R16 R15 K12 ["user"]
       60 NAMECALL                         R11 R11 K7 ["getText"]
       62 CALL                             R11 4 1
       63 SETTABLEKS                       R11 R10 K4 ["text"]
       65 FASTCALL3                        TABLE_INSERT R0 R9 R10
       67 MOVE                             R8 R0
       68 GETIMPORT                        R7 K10 [table.insert]
       70 CALL                             R7 3 0
       71 JUMP                             ; [+30]
       72 GETTABLEKS                       R7 R6 K1 ["type"]
       74 JUMPIFNOTEQKS                    R7 K15 ["Group"] ; [+17]
       76 DUPTABLE                         R9 K5 [{"id", "text"}]
       77 GETTABLEKS                       R10 R6 K3 ["id"]
       79 SETTABLEKS                       R10 R9 K3 ["id"]
       81 GETTABLEKS                       R10 R6 K14 ["name"]
       83 SETTABLEKS                       R10 R9 K4 ["text"]
       85 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       87 MOVE                             R8 R0
       88 GETIMPORT                        R7 K10 [table.insert]
       90 CALL                             R7 2 0
       91 JUMP                             ; [+10]
       92 GETIMPORT                        R7 K17 [error]
       94 LOADK                            R9 K18 ["Unsupported scope type: %*"]
       95 GETTABLEKS                       R11 R6 K1 ["type"]
       97 NAMECALL                         R9 R9 K19 ["format"]
       99 CALL                             R9 2 1
      100 MOVE                             R8 R9
      101 CALL                             R7 1 0
      102 FORGLOOP                         R2 2 ; [-85]
      104 NEWTABLE                         R2 0 2
      106 DUPTABLE                         R3 K21 [{"id", "text", "items"}]
      107 LOADK                            R4 K22 ["UserAndGroup"]
      108 SETTABLEKS                       R4 R3 K3 ["id"]
      110 LOADNIL                          R4
      111 SETTABLEKS                       R4 R3 K4 ["text"]
      113 SETTABLEKS                       R0 R3 K20 ["items"]
      115 DUPTABLE                         R4 K21 [{"id", "text", "items"}]
      116 LOADK                            R5 K23 ["OpenAssetManager"]
      117 SETTABLEKS                       R5 R4 K3 ["id"]
      119 LOADNIL                          R5
      120 SETTABLEKS                       R5 R4 K4 ["text"]
      122 NEWTABLE                         R5 0 1
      124 DUPTABLE                         R6 K5 [{"id", "text"}]
      125 LOADK                            R7 K23 ["OpenAssetManager"]
      126 SETTABLEKS                       R7 R6 K3 ["id"]
      128 GETUPVAL                         R7 1
      129 LOADK                            R9 K6 ["ScopeMenuItem"]
      130 LOADK                            R10 K23 ["OpenAssetManager"]
      131 NAMECALL                         R7 R7 K7 ["getText"]
      133 CALL                             R7 3 1
      134 SETTABLEKS                       R7 R6 K4 ["text"]
      136 SETLIST                          R5 R6 1 [1]
      138 SETTABLEKS                       R5 R4 K20 ["items"]
      140 SETLIST                          R2 R3 2 [1]
      142 LENGTH                           R3 R1
      143 LOADN                            R4 0
      144 JUMPIFNOTLT                      R4 R3 ; [+17]
      146 LOADN                            R5 1
      147 DUPTABLE                         R6 K21 [{"id", "text", "items"}]
      148 LOADK                            R7 K2 ["Universe"]
      149 SETTABLEKS                       R7 R6 K3 ["id"]
      151 LOADNIL                          R7
      152 SETTABLEKS                       R7 R6 K4 ["text"]
      154 SETTABLEKS                       R1 R6 K20 ["items"]
      156 FASTCALL3                        TABLE_INSERT R2 R5 R6
      158 MOVE                             R4 R2
      159 GETIMPORT                        R3 K10 [table.insert]
      161 CALL                             R3 3 0
      162 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKS                    R1 K0 ["OpenAssetManager"] ; [+6]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["openAssetManager"]
        5 CALL                             R2 0 0
        6 JUMP                             ; [+21]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["loadedScopeMap"]
       10 JUMPIFNOTEQKNIL                  R4 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       16 LOADK                            R4 K3 ["Somehow, user selected a scope when they haven't loaded yet"]
       17 GETIMPORT                        R2 K5 [assert]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K6 ["onScopeChanged"]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K2 ["loadedScopeMap"]
       26 GETTABLE                         R3 R4 R1
       27 CALL                             R2 1 0
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R2 R3 K7 ["disable"]
       31 CALL                             R2 0 0
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
       19 CAPTURE                          UPVAL U3
       20 NEWTABLE                         R5 0 2
       22 GETTABLEKS                       R6 R0 K3 ["loadedScopeMap"]
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R7 R8 K4 ["locale"]
       27 SETLIST                          R5 R6 2 [1]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 4
       31 CALL                             R4 0 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       35 NEWCLOSURE                       R6 P1
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R7 0 2
       41 GETTABLEKS                       R8 R0 K3 ["loadedScopeMap"]
       43 GETTABLEKS                       R9 R0 K6 ["onScopeChanged"]
       45 SETLIST                          R7 R8 2 [1]
       47 CALL                             R5 2 1
       48 GETUPVAL                         R7 5
       49 GETTABLEKS                       R6 R7 K7 ["createNextOrder"]
       51 CALL                             R6 0 1
       52 GETUPVAL                         R7 6
       53 CALL                             R7 0 1
       54 GETUPVAL                         R8 7
       55 GETUPVAL                         R10 8
       56 GETTABLEKS                       R9 R10 K8 ["Root"]
       58 DUPTABLE                         R10 K10 [{"isOpen"}]
       59 GETTABLEKS                       R11 R4 K11 ["enabled"]
       61 SETTABLEKS                       R11 R10 K9 ["isOpen"]
       63 DUPTABLE                         R11 K14 [{"ScopeMenuAnchor", "Content"}]
       64 GETUPVAL                         R12 7
       65 GETUPVAL                         R14 8
       66 GETTABLEKS                       R13 R14 K15 ["Anchor"]
       68 DUPTABLE                         R14 K17 [{"LayoutOrder"}]
       69 GETTABLEKS                       R15 R0 K18 ["layoutOrder"]
       71 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
       73 DUPTABLE                         R15 K20 [{"Button"}]
       74 GETUPVAL                         R16 7
       75 GETUPVAL                         R17 9
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
       95 GETTABLEKS                       R21 R0 K35 ["loadedScope"]
       97 JUMPIFNOTEQKNIL                  R21 ; [+25]
       99 GETUPVAL                         R20 7
      100 GETUPVAL                         R21 9
      101 DUPTABLE                         R22 K36 [{"tag"}]
      102 LOADK                            R23 K37 ["auto-xy"]
      103 SETTABLEKS                       R23 R22 K21 ["tag"]
      105 DUPTABLE                         R23 K39 [{"Loading"}]
      106 GETUPVAL                         R24 7
      107 GETUPVAL                         R25 10
      108 DUPTABLE                         R26 K41 [{"size"}]
      109 GETUPVAL                         R30 11
      110 GETTABLEKS                       R29 R30 K42 ["Enums"]
      112 GETTABLEKS                       R28 R29 K43 ["IconSize"]
      114 GETTABLEKS                       R27 R28 K44 ["Small"]
      116 SETTABLEKS                       R27 R26 K40 ["size"]
      118 CALL                             R24 2 1
      119 SETTABLEKS                       R24 R23 K38 ["Loading"]
      121 CALL                             R20 3 1
      122 JUMP                             ; [+59]
      123 GETUPVAL                         R20 7
      124 GETUPVAL                         R21 12
      125 DUPTABLE                         R22 K46 [{"tag", "LayoutOrder", "Image"}]
      126 LOADK                            R23 K47 ["size-400 radius-small"]
      127 SETTABLEKS                       R23 R22 K21 ["tag"]
      129 MOVE                             R23 R6
      130 CALL                             R23 0 1
      131 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      133 GETTABLEKS                       R23 R0 K35 ["loadedScope"]
      135 JUMPIFNOT                        R23 ; [+43]
      136 GETTABLEKS                       R25 R0 K35 ["loadedScope"]
      138 GETTABLEKS                       R24 R25 K48 ["type"]
      140 GETTABLEKS                       R25 R2 K49 ["theme"]
      142 JUMPIFNOTEQKS                    R24 K50 ["Universe"] ; [+8]
      144 LOADK                            R26 K51 ["rbxasset://studio_svg_textures/Lua/AssetManager/%*/Standard/PlacesFolder.png"]
      145 MOVE                             R28 R25
      146 NAMECALL                         R26 R26 K52 ["format"]
      148 CALL                             R26 2 1
      149 MOVE                             R23 R26
      150 JUMP                             ; [+28]
      151 JUMPIFNOTEQKS                    R24 K53 ["User"] ; [+8]
      153 LOADK                            R26 K54 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/StarterPlayer.png"]
      154 MOVE                             R28 R25
      155 NAMECALL                         R26 R26 K52 ["format"]
      157 CALL                             R26 2 1
      158 MOVE                             R23 R26
      159 JUMP                             ; [+19]
      160 JUMPIFNOTEQKS                    R24 K55 ["Group"] ; [+8]
      162 LOADK                            R26 K56 ["rbxasset://studio_svg_textures/Shared/InsertableObjects/%*/Standard/Teams.png"]
      163 MOVE                             R28 R25
      164 NAMECALL                         R26 R26 K52 ["format"]
      166 CALL                             R26 2 1
      167 MOVE                             R23 R26
      168 JUMP                             ; [+10]
      169 GETIMPORT                        R26 K58 [error]
      171 LOADK                            R28 K59 ["Unsupported scope type: %*"]
      172 MOVE                             R30 R24
      173 NAMECALL                         R28 R28 K52 ["format"]
      175 CALL                             R28 2 1
      176 MOVE                             R27 R28
      177 CALL                             R26 1 0
      178 LOADNIL                          R23
      179 SETTABLEKS                       R23 R22 K45 ["Image"]
      181 CALL                             R20 2 1
      182 SETTABLEKS                       R20 R19 K31 ["Thumbnail"]
      184 GETUPVAL                         R20 7
      185 GETUPVAL                         R21 13
      186 DUPTABLE                         R22 K61 [{"tag", "LayoutOrder", "Text"}]
      187 LOADK                            R23 K62 ["size-0-full fill clip text-body-small text-align-x-left text-align-y-center"]
      188 SETTABLEKS                       R23 R22 K21 ["tag"]
      190 MOVE                             R23 R6
      191 CALL                             R23 0 1
      192 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      194 GETTABLEKS                       R24 R0 K35 ["loadedScope"]
      196 JUMPIFNOTEQKNIL                  R24 ; [+3]
      198 LOADK                            R23 K63 [""]
      199 JUMP                             ; [+4]
      200 GETTABLEKS                       R24 R0 K35 ["loadedScope"]
      202 GETTABLEKS                       R23 R24 K64 ["name"]
      204 SETTABLEKS                       R23 R22 K60 ["Text"]
      206 CALL                             R20 2 1
      207 SETTABLEKS                       R20 R19 K32 ["ScopeName"]
      209 GETUPVAL                         R20 7
      210 GETUPVAL                         R21 14
      211 DUPTABLE                         R22 K65 [{"LayoutOrder", "name", "size"}]
      212 MOVE                             R23 R6
      213 CALL                             R23 0 1
      214 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      216 GETUPVAL                         R26 11
      217 GETTABLEKS                       R25 R26 K42 ["Enums"]
      219 GETTABLEKS                       R24 R25 K66 ["IconName"]
      221 GETTABLEKS                       R23 R24 K67 ["ChevronLargeDown"]
      223 SETTABLEKS                       R23 R22 K64 ["name"]
      225 GETUPVAL                         R26 11
      226 GETTABLEKS                       R25 R26 K42 ["Enums"]
      228 GETTABLEKS                       R24 R25 K43 ["IconSize"]
      230 GETTABLEKS                       R23 R24 K44 ["Small"]
      232 SETTABLEKS                       R23 R22 K40 ["size"]
      234 CALL                             R20 2 1
      235 SETTABLEKS                       R20 R19 K33 ["ArrowIcon"]
      237 CALL                             R16 3 1
      238 SETTABLEKS                       R16 R15 K19 ["Button"]
      240 CALL                             R12 3 1
      241 SETTABLEKS                       R12 R11 K12 ["ScopeMenuAnchor"]
      243 GETTABLEKS                       R13 R4 K11 ["enabled"]
      245 JUMPIFNOT                        R13 ; [+61]
      246 GETUPVAL                         R12 7
      247 GETUPVAL                         R14 8
      248 GETTABLEKS                       R13 R14 K13 ["Content"]
      250 DUPTABLE                         R14 K72 [{"hasArrow", "onPressedOutside", "align", "side"}]
      251 LOADB                            R15 1
      252 SETTABLEKS                       R15 R14 K68 ["hasArrow"]
      254 GETTABLEKS                       R15 R4 K73 ["disable"]
      256 SETTABLEKS                       R15 R14 K69 ["onPressedOutside"]
      258 DUPTABLE                         R15 K76 [{"position", "offset"}]
      259 GETUPVAL                         R19 11
      260 GETTABLEKS                       R18 R19 K42 ["Enums"]
      262 GETTABLEKS                       R17 R18 K77 ["PopoverAlign"]
      264 GETTABLEKS                       R16 R17 K78 ["End"]
      266 SETTABLEKS                       R16 R15 K74 ["position"]
      268 LOADN                            R16 0
      269 SETTABLEKS                       R16 R15 K75 ["offset"]
      271 SETTABLEKS                       R15 R14 K70 ["align"]
      273 DUPTABLE                         R15 K76 [{"position", "offset"}]
      274 GETUPVAL                         R19 11
      275 GETTABLEKS                       R18 R19 K42 ["Enums"]
      277 GETTABLEKS                       R17 R18 K79 ["PopoverSide"]
      279 GETTABLEKS                       R16 R17 K80 ["Bottom"]
      281 SETTABLEKS                       R16 R15 K74 ["position"]
      283 LOADN                            R16 4
      284 SETTABLEKS                       R16 R15 K75 ["offset"]
      286 SETTABLEKS                       R15 R14 K71 ["side"]
      288 DUPTABLE                         R15 K82 [{"ScopeMenu"}]
      289 GETUPVAL                         R16 7
      290 GETUPVAL                         R17 15
      291 DUPTABLE                         R18 K87 [{"items", "shouldDisplayChecks", "width", "onItemSelected"}]
      292 SETTABLEKS                       R3 R18 K83 ["items"]
      294 LOADB                            R19 0
      295 SETTABLEKS                       R19 R18 K84 ["shouldDisplayChecks"]
      297 LOADN                            R19 180
      298 SETTABLEKS                       R19 R18 K85 ["width"]
      300 SETTABLEKS                       R5 R18 K86 ["onItemSelected"]
      302 CALL                             R16 2 1
      303 SETTABLEKS                       R16 R15 K81 ["ScopeMenu"]
      305 CALL                             R12 3 1
      306 JUMP                             ; [+1]
      307 LOADNIL                          R12
      308 SETTABLEKS                       R12 R11 K13 ["Content"]
      310 CALL                             R8 3 -1
      311 RETURN                           R8 -1

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
       57 GETTABLEKS                       R12 R1 K17 ["Resources"]
       59 GETTABLEKS                       R11 R12 K18 ["Localization"]
       61 GETTABLEKS                       R10 R11 K19 ["Translator"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K7 [require]
       66 GETTABLEKS                       R11 R1 K20 ["Types"]
       68 CALL                             R10 1 1
       69 GETTABLEKS                       R11 R5 K21 ["Icon"]
       71 GETTABLEKS                       R12 R5 K22 ["Image"]
       73 GETTABLEKS                       R13 R5 K23 ["Loading"]
       75 GETTABLEKS                       R14 R5 K24 ["Popover"]
       77 GETTABLEKS                       R15 R5 K25 ["Text"]
       79 GETTABLEKS                       R16 R5 K26 ["View"]
       81 GETTABLEKS                       R17 R6 K27 ["createElement"]
       83 GETTABLEKS                       R18 R7 K28 ["useToggleState"]
       85 GETTABLEKS                       R20 R5 K29 ["Hooks"]
       87 GETTABLEKS                       R19 R20 K30 ["useTokens"]
       89 DUPCLOSURE                       R20 K31 [PROTO_0]
       90 DUPCLOSURE                       R21 K32 [PROTO_3]
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R18
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R19
       98 CAPTURE                          VAL R17
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R4
      107 RETURN                           R21 1
