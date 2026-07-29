PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["profile"]
        6 GETTABLEKS                       R1 R1 K1 ["id"]
        8 JUMPIFEQ                         R0 R1 ; [+9]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["canvasState"]
       13 LOADK                            R3 K3 ["deviceProfileRequested"]
       14 MOVE                             R4 R0
       15 NAMECALL                         R1 R1 K4 ["emit"]
       17 CALL                             R1 3 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canvasState"]
        3 LOADK                            R2 K1 ["useInsets"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["canvasState"]
        7 LOADK                            R6 K1 ["useInsets"]
        8 NAMECALL                         R4 R4 K2 ["get"]
       10 CALL                             R4 2 1
       11 NOT                              R3 R4
       12 NAMECALL                         R0 R0 K3 ["set"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0

PROTO_3:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_3]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 JUMPIFNOTEQKS                    R1 K1 ["use-insets"] ; [+17]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["canvasState"]
        7 LOADK                            R3 K3 ["useInsets"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["canvasState"]
       11 LOADK                            R7 K3 ["useInsets"]
       12 NAMECALL                         R5 R5 K4 ["get"]
       14 CALL                             R5 2 1
       15 NOT                              R4 R5
       16 NAMECALL                         R1 R1 K5 ["set"]
       18 CALL                             R1 3 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R1 R0 K0 ["id"]
       22 GETUPVAL                         R2 1
       23 LOADB                            R3 0
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K6 ["profile"]
       28 GETTABLEKS                       R2 R2 K0 ["id"]
       30 JUMPIFEQ                         R1 R2 ; [+9]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K2 ["canvasState"]
       35 LOADK                            R4 K7 ["deviceProfileRequested"]
       36 MOVE                             R5 R1
       37 NAMECALL                         R2 R2 K8 ["emit"]
       39 CALL                             R2 3 0
       40 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R2
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 NEWCLOSURE                       R6 P2
       16 CAPTURE                          VAL R0
       17 GETTABLEKS                       R7 R0 K2 ["tokens"]
       19 GETTABLEKS                       R7 R7 K3 ["Color"]
       21 GETTABLEKS                       R7 R7 K4 ["ActionUtility"]
       23 GETTABLEKS                       R8 R7 K5 ["Border"]
       25 JUMPIF                           R8 ; [+8]
       26 GETTABLEKS                       R8 R0 K2 ["tokens"]
       28 GETTABLEKS                       R8 R8 K3 ["Color"]
       30 GETTABLEKS                       R8 R8 K6 ["Stroke"]
       32 GETTABLEKS                       R8 R8 K7 ["Default"]
       34 NEWCLOSURE                       R9 P3
       35 CAPTURE                          VAL R2
       36 GETTABLEKS                       R11 R0 K8 ["triggerMode"]
       38 JUMPIFNOTEQKS                    R11 K9 ["icon"] ; [+71]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K10 ["createElement"]
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K11 ["View"]
       46 DUPTABLE                         R12 K16 [{"ref", "LayoutOrder", "Size", "tag"}]
       47 SETTABLEKS                       R3 R12 K12 ["ref"]
       49 GETTABLEKS                       R13 R0 K13 ["LayoutOrder"]
       51 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       53 GETIMPORT                        R13 K19 [UDim2.fromOffset]
       55 GETTABLEKS                       R14 R0 K20 ["chromeControlHeight"]
       57 GETTABLEKS                       R15 R0 K20 ["chromeControlHeight"]
       59 CALL                             R13 2 1
       60 SETTABLEKS                       R13 R12 K14 ["Size"]
       62 JUMPIFNOT                        R1 ; [+2]
       63 LOADK                            R13 K21 ["row align-x-center align-y-center bg-surface-100 radius-small"]
       64 JUMP                             ; [+1]
       65 LOADK                            R13 K22 ["row align-x-center align-y-center radius-small"]
       66 SETTABLEKS                       R13 R12 K15 ["tag"]
       68 DUPTABLE                         R13 K24 [{"IconButton"}]
       69 GETUPVAL                         R14 0
       70 GETTABLEKS                       R14 R14 K10 ["createElement"]
       72 GETUPVAL                         R15 1
       73 GETTABLEKS                       R15 R15 K23 ["IconButton"]
       75 DUPTABLE                         R16 K28 [{"icon", "variant", "size", "onActivated"}]
       76 GETUPVAL                         R17 1
       77 GETTABLEKS                       R17 R17 K29 ["Enums"]
       79 GETTABLEKS                       R17 R17 K30 ["IconName"]
       81 GETTABLEKS                       R17 R17 K31 ["SmartphonePortrait"]
       83 SETTABLEKS                       R17 R16 K9 ["icon"]
       85 GETUPVAL                         R17 1
       86 GETTABLEKS                       R17 R17 K29 ["Enums"]
       88 GETTABLEKS                       R17 R17 K32 ["ButtonVariant"]
       90 GETTABLEKS                       R17 R17 K33 ["Utility"]
       92 SETTABLEKS                       R17 R16 K25 ["variant"]
       94 GETUPVAL                         R17 1
       95 GETTABLEKS                       R17 R17 K29 ["Enums"]
       97 GETTABLEKS                       R17 R17 K34 ["InputSize"]
       99 GETTABLEKS                       R17 R17 K35 ["XSmall"]
      101 SETTABLEKS                       R17 R16 K26 ["size"]
      103 SETTABLEKS                       R9 R16 K27 ["onActivated"]
      105 CALL                             R14 2 1
      106 SETTABLEKS                       R14 R13 K23 ["IconButton"]
      108 CALL                             R10 3 1
      109 JUMP                             ; [+132]
      110 GETUPVAL                         R10 0
      111 GETTABLEKS                       R10 R10 K10 ["createElement"]
      113 GETUPVAL                         R11 1
      114 GETTABLEKS                       R11 R11 K11 ["View"]
      116 DUPTABLE                         R12 K40 [{["Size"], ["ref"], ["LayoutOrder"], ["tag"] = "row align-y-center align-x-center gap-xsmall radius-small", ["backgroundStyle"], ["stroke"], ["padding"], ["onActivated"]}]
      117 GETIMPORT                        R13 K19 [UDim2.fromOffset]
      119 LOADN                            R14 168
      120 GETTABLEKS                       R15 R0 K20 ["chromeControlHeight"]
      122 CALL                             R13 2 1
      123 SETTABLEKS                       R13 R12 K14 ["Size"]
      125 SETTABLEKS                       R3 R12 K12 ["ref"]
      127 GETTABLEKS                       R13 R0 K13 ["LayoutOrder"]
      129 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      131 JUMPIFNOT                        R1 ; [+9]
      132 GETTABLEKS                       R13 R0 K2 ["tokens"]
      134 GETTABLEKS                       R13 R13 K3 ["Color"]
      136 GETTABLEKS                       R13 R13 K41 ["Surface"]
      138 GETTABLEKS                       R13 R13 K42 ["Surface_100"]
      140 JUMP                             ; [+2]
      141 GETTABLEKS                       R13 R7 K43 ["Background"]
      143 SETTABLEKS                       R13 R12 K37 ["backgroundStyle"]
      145 DUPTABLE                         R13 K47 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
      146 GETTABLEKS                       R14 R8 K48 ["Color3"]
      148 SETTABLEKS                       R14 R13 K3 ["Color"]
      150 GETTABLEKS                       R14 R8 K44 ["Transparency"]
      152 SETTABLEKS                       R14 R13 K44 ["Transparency"]
      154 SETTABLEKS                       R13 R12 K38 ["stroke"]
      156 DUPTABLE                         R13 K51 [{"left", "right"}]
      157 GETIMPORT                        R14 K54 [UDim.new]
      159 LOADN                            R15 0
      160 LOADN                            R16 8
      161 CALL                             R14 2 1
      162 SETTABLEKS                       R14 R13 K49 ["left"]
      164 GETIMPORT                        R14 K54 [UDim.new]
      166 LOADN                            R15 0
      167 LOADN                            R16 6
      168 CALL                             R14 2 1
      169 SETTABLEKS                       R14 R13 K50 ["right"]
      171 SETTABLEKS                       R13 R12 K39 ["padding"]
      173 SETTABLEKS                       R9 R12 K27 ["onActivated"]
      175 DUPTABLE                         R13 K57 [{"Value", "Chevron"}]
      176 GETUPVAL                         R14 0
      177 GETTABLEKS                       R14 R14 K10 ["createElement"]
      179 GETUPVAL                         R15 1
      180 GETTABLEKS                       R15 R15 K58 ["Text"]
      182 DUPTABLE                         R16 K62 [{["Text"], ["TextTruncate"], ["LayoutOrder"] = 1, ["textStyle"], ["tag"] = "fill size-full-0 text-body-small text-align-x-left text-align-y-center"}]
      183 GETTABLEKS                       R17 R0 K63 ["profile"]
      185 GETTABLEKS                       R17 R17 K64 ["label"]
      187 SETTABLEKS                       R17 R16 K58 ["Text"]
      189 GETIMPORT                        R17 K67 [Enum.TextTruncate.AtEnd]
      191 SETTABLEKS                       R17 R16 K59 ["TextTruncate"]
      193 GETTABLEKS                       R17 R7 K68 ["Foreground"]
      195 SETTABLEKS                       R17 R16 K60 ["textStyle"]
      197 CALL                             R14 2 1
      198 SETTABLEKS                       R14 R13 K55 ["Value"]
      200 GETUPVAL                         R14 0
      201 GETTABLEKS                       R14 R14 K10 ["createElement"]
      203 GETUPVAL                         R15 1
      204 GETTABLEKS                       R15 R15 K69 ["Icon"]
      206 DUPTABLE                         R16 K73 [{["name"], ["size"], ["style"], ["LayoutOrder"] = 2}]
      207 JUMPIFNOT                        R1 ; [+8]
      208 GETUPVAL                         R17 1
      209 GETTABLEKS                       R17 R17 K29 ["Enums"]
      211 GETTABLEKS                       R17 R17 K30 ["IconName"]
      213 GETTABLEKS                       R17 R17 K74 ["ChevronLargeUp"]
      215 JUMP                             ; [+7]
      216 GETUPVAL                         R17 1
      217 GETTABLEKS                       R17 R17 K29 ["Enums"]
      219 GETTABLEKS                       R17 R17 K30 ["IconName"]
      221 GETTABLEKS                       R17 R17 K75 ["ChevronLargeDown"]
      223 SETTABLEKS                       R17 R16 K70 ["name"]
      225 GETUPVAL                         R17 1
      226 GETTABLEKS                       R17 R17 K29 ["Enums"]
      228 GETTABLEKS                       R17 R17 K76 ["IconSize"]
      230 GETTABLEKS                       R17 R17 K35 ["XSmall"]
      232 SETTABLEKS                       R17 R16 K26 ["size"]
      234 GETTABLEKS                       R17 R7 K68 ["Foreground"]
      236 SETTABLEKS                       R17 R16 K71 ["style"]
      238 CALL                             R14 2 1
      239 SETTABLEKS                       R14 R13 K56 ["Chevron"]
      241 CALL                             R10 3 1
      242 GETUPVAL                         R11 2
      243 GETTABLEKS                       R11 R11 K77 ["list"]
      245 CALL                             R11 0 1
      246 NEWTABLE                         R12 0 0
      248 MOVE                             R13 R11
      249 LOADNIL                          R14
      250 LOADNIL                          R15
      251 FORGPREP                         R13
      252 DUPTABLE                         R20 K81 [{"id", "label", "detail", "leading"}]
      253 GETTABLEKS                       R21 R17 K78 ["id"]
      255 SETTABLEKS                       R21 R20 K78 ["id"]
      257 GETTABLEKS                       R21 R17 K64 ["label"]
      259 SETTABLEKS                       R21 R20 K64 ["label"]
      261 GETIMPORT                        R21 K84 [string.format]
      263 LOADK                            R22 K85 ["%d×%d"]
      264 GETTABLEKS                       R23 R17 K86 ["width"]
      266 GETTABLEKS                       R24 R17 K87 ["height"]
      268 CALL                             R21 3 1
      269 SETTABLEKS                       R21 R20 K79 ["detail"]
      271 NEWTABLE                         R21 0 1
      273 DUPTABLE                         R22 K91 [{["kind"] = "check", ["isVisible"]}]
      274 GETTABLEKS                       R24 R17 K78 ["id"]
      276 GETTABLEKS                       R25 R0 K63 ["profile"]
      278 GETTABLEKS                       R25 R25 K78 ["id"]
      280 JUMPIFEQ                         R24 R25 ; [+2]
      282 LOADB                            R23 0 +1
      283 LOADB                            R23 1
      284 SETTABLEKS                       R23 R22 K90 ["isVisible"]
      286 SETLIST                          R21 R22 1 [1]
      288 SETTABLEKS                       R21 R20 K80 ["leading"]
      290 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
      292 MOVE                             R19 R12
      293 GETIMPORT                        R18 K94 [table.insert]
      295 CALL                             R18 2 0
      296 FORGLOOP                         R13 2 ; [-45]
      298 DUPTABLE                         R15 K100 [{["id"] = "use-insets", ["label"] = "Use insets", ["dividerAbove"] = True, ["keepsMenuOpen"] = True, ["leading"]}]
      299 NEWTABLE                         R16 0 1
      301 DUPTABLE                         R17 K91 [{["kind"] = "check", ["isVisible"]}]
      302 GETTABLEKS                       R18 R0 K101 ["useInsets"]
      304 SETTABLEKS                       R18 R17 K90 ["isVisible"]
      306 SETLIST                          R16 R17 1 [1]
      308 SETTABLEKS                       R16 R15 K80 ["leading"]
      310 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
      312 MOVE                             R14 R12
      313 GETIMPORT                        R13 K94 [table.insert]
      315 CALL                             R13 2 0
      316 GETUPVAL                         R13 0
      317 GETTABLEKS                       R13 R13 K10 ["createElement"]
      319 GETUPVAL                         R14 3
      320 GETTABLEKS                       R14 R14 K102 ["Anchored"]
      322 DUPTABLE                         R15 K111 [{["isOpen"], ["anchorRef"], ["trigger"], ["items"], ["width"] = 200, ["side"], ["align"], ["onClose"], ["onActivated"]}]
      323 SETTABLEKS                       R1 R15 K103 ["isOpen"]
      325 SETTABLEKS                       R3 R15 K104 ["anchorRef"]
      327 SETTABLEKS                       R10 R15 K105 ["trigger"]
      329 SETTABLEKS                       R12 R15 K106 ["items"]
      331 GETUPVAL                         R16 1
      332 GETTABLEKS                       R16 R16 K29 ["Enums"]
      334 GETTABLEKS                       R16 R16 K112 ["PopoverSide"]
      336 GETTABLEKS                       R16 R16 K113 ["Bottom"]
      338 SETTABLEKS                       R16 R15 K108 ["side"]
      340 GETTABLEKS                       R17 R0 K8 ["triggerMode"]
      342 JUMPIFNOTEQKS                    R17 K9 ["icon"] ; [+9]
      344 GETUPVAL                         R16 1
      345 GETTABLEKS                       R16 R16 K29 ["Enums"]
      347 GETTABLEKS                       R16 R16 K114 ["PopoverAlign"]
      349 GETTABLEKS                       R16 R16 K115 ["End"]
      351 JUMP                             ; [+7]
      352 GETUPVAL                         R16 1
      353 GETTABLEKS                       R16 R16 K29 ["Enums"]
      355 GETTABLEKS                       R16 R16 K114 ["PopoverAlign"]
      357 GETTABLEKS                       R16 R16 K116 ["Start"]
      359 SETTABLEKS                       R16 R15 K109 ["align"]
      361 SETTABLEKS                       R4 R15 K110 ["onClose"]
      363 NEWCLOSURE                       R16 P4
      364 CAPTURE                          VAL R0
      365 CAPTURE                          VAL R2
      366 SETTABLEKS                       R16 R15 K27 ["onActivated"]
      368 CALL                             R13 2 -1
      369 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["AppFramework"]
       27 GETTABLEKS                       R4 R4 K11 ["DeviceProfiles"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Components"]
       36 GETTABLEKS                       R5 R5 K13 ["Menu"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Components"]
       45 GETTABLEKS                       R6 R6 K13 ["Menu"]
       47 GETTABLEKS                       R6 R6 K14 ["Types"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_6]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 DUPTABLE                         R7 K19 [{["DeviceDropdown"], ["TRIGGER_WIDTH"] = 168}]
       56 SETTABLEKS                       R6 R7 K16 ["DeviceDropdown"]
       58 RETURN                           R7 1
