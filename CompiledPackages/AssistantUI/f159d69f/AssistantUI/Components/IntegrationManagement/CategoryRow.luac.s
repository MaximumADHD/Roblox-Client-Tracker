PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["icon"]
        2 JUMPIFEQKS                       R1 K1 [""] ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["icon"]
        6 RETURN                           R1 1
        7 LOADK                            R1 K2 ["circle-outline"]
        8 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["permissions"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K1 ["enabled"]
        8 JUMPIFNOT                        R7 ; [+1]
        9 ADDK                             R1 R1 K2 [1]
       10 FORGLOOP                         R2 2 ; [-5]
       12 GETTABLEKS                       R3 R0 K0 ["permissions"]
       14 LENGTH                           R2 R3
       15 SUB                              R3 R2 R1
       16 DUPTABLE                         R4 K7 [{"allowed", "denied", "isMixed", "allValue"}]
       17 SETTABLEKS                       R1 R4 K3 ["allowed"]
       19 SETTABLEKS                       R3 R4 K4 ["denied"]
       21 LOADB                            R5 0
       22 LOADN                            R6 0
       23 JUMPIFNOTLT                      R6 R1 ; [+6]
       25 LOADN                            R6 0
       26 JUMPIFLT                         R6 R3 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 SETTABLEKS                       R5 R4 K5 ["isMixed"]
       32 JUMPIFEQ                         R1 R2 ; [+2]
       34 LOADB                            R5 0 +1
       35 LOADB                            R5 1
       36 SETTABLEKS                       R5 R4 K6 ["allValue"]
       38 RETURN                           R4 1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"Custom", "RestoreDefault"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["Permissions"]
        3 LOADK                            R4 K0 ["Custom"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Custom"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["Permissions"]
       11 LOADK                            R4 K1 ["RestoreDefault"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["RestoreDefault"]
       17 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 1
        7 GETTABLEKS                       R4 R1 K2 ["Hover"]
        9 JUMPIFEQ                         R0 R4 ; [+7]
       11 GETTABLEKS                       R4 R1 K3 ["Pressed"]
       13 JUMPIFEQ                         R0 R4 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCategoryValue"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["categoryKey"]
        6 LOADB                            R2 0
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_2]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["useState"]
       16 LOADB                            R3 0
       17 CALL                             R2 1 2
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R6 0 0
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 3
       28 GETUPVAL                         R6 4
       29 DUPTABLE                         R7 K8 [{["tag"] = "auto-xy", ["onStateChanged"]}]
       30 SETTABLEKS                       R4 R7 K7 ["onStateChanged"]
       32 DUPTABLE                         R8 K10 [{"Chip"}]
       33 GETUPVAL                         R9 3
       34 GETUPVAL                         R10 5
       35 DUPTABLE                         R11 K18 [{["text"], ["isChecked"] = False, ["variant"], ["size"], ["onActivated"], ["testId"]}]
       36 JUMPIFNOT                        R2 ; [+3]
       37 GETTABLEKS                       R12 R1 K19 ["RestoreDefault"]
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R12 R1 K20 ["Custom"]
       42 SETTABLEKS                       R12 R11 K11 ["text"]
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R12 R12 K21 ["Enums"]
       47 GETTABLEKS                       R12 R12 K22 ["ChipVariant"]
       49 GETTABLEKS                       R12 R12 K23 ["Standard"]
       51 SETTABLEKS                       R12 R11 K14 ["variant"]
       53 GETUPVAL                         R12 2
       54 GETTABLEKS                       R12 R12 K21 ["Enums"]
       56 GETTABLEKS                       R12 R12 K24 ["ChipSize"]
       58 GETTABLEKS                       R12 R12 K25 ["Small"]
       60 SETTABLEKS                       R12 R11 K15 ["size"]
       62 NEWCLOSURE                       R12 P2
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R12 R11 K16 ["onActivated"]
       66 GETUPVAL                         R12 6
       67 GETTABLEKS                       R12 R12 K26 ["ScopePermissions"]
       69 GETTABLEKS                       R12 R12 K27 ["CategoryControl"]
       71 GETTABLEKS                       R13 R0 K28 ["categoryKey"]
       73 CALL                             R12 1 1
       74 SETTABLEKS                       R12 R11 K17 ["testId"]
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K9 ["Chip"]
       79 CALL                             R5 3 -1
       80 RETURN                           R5 -1

PROTO_6:
        0 DUPTABLE                         R0 K2 [{"Deny", "Allow"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["Permissions"]
        3 LOADK                            R4 K0 ["Deny"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Deny"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["Permissions"]
       11 LOADK                            R4 K1 ["Allow"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Allow"]
       17 RETURN                           R0 1

PROTO_7:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_7]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onCategoryValue"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["key"]
        6 JUMPIFEQKS                       R0 K2 ["allow"] ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["category"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["Hooks"]
       10 GETTABLEKS                       R4 R4 K3 ["useTokens"]
       12 CALL                             R4 0 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["useMemo"]
       16 DUPCLOSURE                       R6 K5 [PROTO_6]
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R7 0 1
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R8 R8 K6 ["locale"]
       23 SETLIST                          R7 R8 1 [1]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 3
       27 MOVE                             R7 R1
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R8 R6 K7 ["isMixed"]
       31 JUMPIFNOT                        R8 ; [+24]
       32 GETUPVAL                         R7 2
       33 LOADK                            R9 K8 ["Permissions"]
       34 LOADK                            R10 K9 ["MixedCapabilitiesCount"]
       35 DUPTABLE                         R11 K12 [{"allowed", "denied"}]
       36 GETTABLEKS                       R13 R6 K10 ["allowed"]
       38 FASTCALL1                        TOSTRING R13 ; [+2]
       39 GETIMPORT                        R12 K14 [tostring]
       41 CALL                             R12 1 1
       42 SETTABLEKS                       R12 R11 K10 ["allowed"]
       44 GETTABLEKS                       R13 R6 K11 ["denied"]
       46 FASTCALL1                        TOSTRING R13 ; [+2]
       47 GETIMPORT                        R12 K14 [tostring]
       49 CALL                             R12 1 1
       50 SETTABLEKS                       R12 R11 K11 ["denied"]
       52 NAMECALL                         R7 R7 K15 ["getText"]
       54 CALL                             R7 4 1
       55 JUMP                             ; [+16]
       56 GETUPVAL                         R7 2
       57 LOADK                            R9 K8 ["Permissions"]
       58 LOADK                            R10 K16 ["CapabilitiesCount"]
       59 DUPTABLE                         R11 K18 [{"count"}]
       60 GETTABLEKS                       R14 R1 K19 ["permissions"]
       62 LENGTH                           R13 R14
       63 FASTCALL1                        TOSTRING R13 ; [+2]
       64 GETIMPORT                        R12 K14 [tostring]
       66 CALL                             R12 1 1
       67 SETTABLEKS                       R12 R11 K17 ["count"]
       69 NAMECALL                         R7 R7 K15 ["getText"]
       71 CALL                             R7 4 1
       72 DUPTABLE                         R8 K23 [{"Name", "Description", "Expander"}]
       73 GETUPVAL                         R9 4
       74 GETUPVAL                         R10 5
       75 DUPTABLE                         R11 K29 [{["tag"] = "size-full-0 auto-y text-title-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
       76 GETTABLEKS                       R12 R1 K30 ["name"]
       78 SETTABLEKS                       R12 R11 K26 ["Text"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K20 ["Name"]
       83 GETTABLEKS                       R10 R1 K31 ["description"]
       85 JUMPIFEQKS                       R10 K32 [""] ; [+10]
       87 GETUPVAL                         R9 4
       88 GETUPVAL                         R10 5
       89 DUPTABLE                         R11 K35 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"] = 2}]
       90 GETTABLEKS                       R12 R1 K31 ["description"]
       92 SETTABLEKS                       R12 R11 K26 ["Text"]
       94 CALL                             R9 2 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R9
       97 SETTABLEKS                       R9 R8 K21 ["Description"]
       99 GETUPVAL                         R9 4
      100 GETUPVAL                         R10 6
      101 DUPTABLE                         R11 K40 [{["tag"] = "row align-y-center gap-xsmall auto-xy padding-top-xxsmall", ["onActivated"], ["testId"], ["LayoutOrder"] = 3}]
      102 NEWCLOSURE                       R12 P1
      103 CAPTURE                          VAL R3
      104 SETTABLEKS                       R12 R11 K37 ["onActivated"]
      106 GETUPVAL                         R12 7
      107 GETTABLEKS                       R12 R12 K41 ["ScopePermissions"]
      109 GETTABLEKS                       R12 R12 K42 ["CategoryExpander"]
      111 GETTABLEKS                       R13 R1 K43 ["key"]
      113 CALL                             R12 1 1
      114 SETTABLEKS                       R12 R11 K38 ["testId"]
      116 DUPTABLE                         R12 K46 [{"Chevron", "CapabilitiesLabel"}]
      117 GETUPVAL                         R13 4
      118 GETUPVAL                         R14 8
      119 DUPTABLE                         R15 K48 [{["name"], ["size"], ["LayoutOrder"] = 1}]
      120 JUMPIFNOT                        R2 ; [+4]
      121 GETUPVAL                         R16 9
      122 GETTABLEKS                       R16 R16 K49 ["ChevronSmallDown"]
      124 JUMP                             ; [+3]
      125 GETUPVAL                         R16 9
      126 GETTABLEKS                       R16 R16 K50 ["ChevronSmallRight"]
      128 SETTABLEKS                       R16 R15 K30 ["name"]
      130 GETUPVAL                         R16 10
      131 GETTABLEKS                       R16 R16 K51 ["Small"]
      133 SETTABLEKS                       R16 R15 K47 ["size"]
      135 CALL                             R13 2 1
      136 SETTABLEKS                       R13 R12 K44 ["Chevron"]
      138 GETUPVAL                         R13 4
      139 GETUPVAL                         R14 5
      140 DUPTABLE                         R15 K53 [{["tag"] = "auto-xy text-label-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 2}]
      141 SETTABLEKS                       R7 R15 K26 ["Text"]
      143 CALL                             R13 2 1
      144 SETTABLEKS                       R13 R12 K45 ["CapabilitiesLabel"]
      146 CALL                             R9 3 1
      147 SETTABLEKS                       R9 R8 K22 ["Expander"]
      149 LOADNIL                          R9
      150 JUMPIFNOT                        R2 ; [+95]
      151 NEWTABLE                         R10 1 0
      153 GETUPVAL                         R11 11
      154 CALL                             R11 0 1
      155 GETTABLEKS                       R12 R1 K19 ["permissions"]
      157 LOADNIL                          R13
      158 LOADNIL                          R14
      159 FORGPREP                         R12
      160 GETTABLEKS                       R17 R16 K43 ["key"]
      162 GETUPVAL                         R18 4
      163 GETUPVAL                         R19 12
      164 DUPTABLE                         R20 K56 [{"entry", "onToggle", "LayoutOrder"}]
      165 SETTABLEKS                       R16 R20 K54 ["entry"]
      167 GETTABLEKS                       R21 R0 K55 ["onToggle"]
      169 SETTABLEKS                       R21 R20 K55 ["onToggle"]
      171 MOVE                             R21 R11
      172 CALL                             R21 0 1
      173 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      175 CALL                             R18 2 1
      176 SETTABLE                         R18 R10 R17
      177 FORGLOOP                         R12 2 ; [-18]
      179 GETTABLEKS                       R12 R0 K57 ["extraContent"]
      181 JUMPIFNOT                        R12 ; [+15]
      182 GETUPVAL                         R12 4
      183 GETUPVAL                         R13 6
      184 DUPTABLE                         R14 K59 [{["tag"] = "col size-full-0 auto-y padding-top-medium", ["LayoutOrder"]}]
      185 MOVE                             R15 R11
      186 CALL                             R15 0 1
      187 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      189 DUPTABLE                         R15 K61 [{"Inner"}]
      190 GETTABLEKS                       R16 R0 K57 ["extraContent"]
      192 SETTABLEKS                       R16 R15 K60 ["Inner"]
      194 CALL                             R12 3 1
      195 SETTABLEKS                       R12 R10 K62 ["ExtraContent"]
      197 GETUPVAL                         R12 4
      198 GETUPVAL                         R13 6
      199 DUPTABLE                         R14 K65 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["padding"], ["LayoutOrder"] = 2}]
      200 DUPTABLE                         R15 K69 [{"left", "right", "bottom"}]
      201 GETIMPORT                        R16 K72 [UDim.new]
      203 LOADN                            R17 0
      204 GETTABLEKS                       R19 R4 K73 ["Size"]
      206 GETTABLEKS                       R19 R19 K74 ["Size_900"]
      208 GETTABLEKS                       R20 R4 K75 ["Padding"]
      210 GETTABLEKS                       R20 R20 K76 ["Medium"]
      212 ADD                              R18 R19 R20
      213 CALL                             R16 2 1
      214 SETTABLEKS                       R16 R15 K66 ["left"]
      216 GETIMPORT                        R16 K72 [UDim.new]
      218 LOADN                            R17 0
      219 GETTABLEKS                       R19 R4 K75 ["Padding"]
      221 GETTABLEKS                       R19 R19 K76 ["Medium"]
      223 GETTABLEKS                       R20 R4 K75 ["Padding"]
      225 GETTABLEKS                       R20 R20 K77 ["XLarge"]
      227 ADD                              R18 R19 R20
      228 CALL                             R16 2 1
      229 SETTABLEKS                       R16 R15 K67 ["right"]
      231 GETIMPORT                        R16 K72 [UDim.new]
      233 LOADN                            R17 0
      234 GETTABLEKS                       R18 R4 K75 ["Padding"]
      236 GETTABLEKS                       R18 R18 K76 ["Medium"]
      238 CALL                             R16 2 1
      239 SETTABLEKS                       R16 R15 K68 ["bottom"]
      241 SETTABLEKS                       R15 R14 K64 ["padding"]
      243 MOVE                             R15 R10
      244 CALL                             R12 3 1
      245 MOVE                             R9 R12
      246 GETUPVAL                         R10 4
      247 GETUPVAL                         R11 6
      248 DUPTABLE                         R12 K79 [{["tag"] = "col size-full-0 auto-y", ["testId"], ["LayoutOrder"]}]
      249 GETUPVAL                         R13 7
      250 GETTABLEKS                       R13 R13 K41 ["ScopePermissions"]
      252 GETTABLEKS                       R13 R13 K80 ["CategoryRow"]
      254 GETTABLEKS                       R14 R1 K43 ["key"]
      256 CALL                             R13 1 1
      257 SETTABLEKS                       R13 R12 K38 ["testId"]
      259 GETTABLEKS                       R13 R0 K27 ["LayoutOrder"]
      261 SETTABLEKS                       R13 R12 K27 ["LayoutOrder"]
      263 DUPTABLE                         R13 K83 [{"Header", "PermissionList"}]
      264 GETUPVAL                         R14 4
      265 GETUPVAL                         R15 6
      266 DUPTABLE                         R16 K85 [{["tag"] = "row gap-large size-full-0 auto-y padding-y-medium padding-right-medium", ["LayoutOrder"] = 1}]
      267 DUPTABLE                         R17 K88 [{"Details", "Control"}]
      268 GETUPVAL                         R18 4
      269 GETUPVAL                         R19 6
      270 DUPTABLE                         R20 K90 [{["tag"] = "row align-y-center gap-medium grow size-0-0 auto-y", ["LayoutOrder"] = 1}]
      271 DUPTABLE                         R21 K92 [{"CategoryIcon", "Text"}]
      272 GETUPVAL                         R22 4
      273 GETUPVAL                         R23 8
      274 DUPTABLE                         R24 K48 [{["name"], ["size"], ["LayoutOrder"] = 1}]
      275 GETTABLEKS                       R26 R1 K93 ["icon"]
      277 JUMPIFEQKS                       R26 K32 [""] ; [+4]
      279 GETTABLEKS                       R25 R1 K93 ["icon"]
      281 JUMP                             ; [+1]
      282 LOADK                            R25 K94 ["circle-outline"]
      283 SETTABLEKS                       R25 R24 K30 ["name"]
      285 GETUPVAL                         R25 10
      286 GETTABLEKS                       R25 R25 K76 ["Medium"]
      288 SETTABLEKS                       R25 R24 K47 ["size"]
      290 CALL                             R22 2 1
      291 SETTABLEKS                       R22 R21 K91 ["CategoryIcon"]
      293 GETUPVAL                         R22 4
      294 GETUPVAL                         R23 6
      295 DUPTABLE                         R24 K96 [{["tag"] = "col grow gap-xxsmall size-0-0 auto-y", ["LayoutOrder"] = 2}]
      296 MOVE                             R25 R8
      297 CALL                             R22 3 1
      298 SETTABLEKS                       R22 R21 K26 ["Text"]
      300 CALL                             R18 3 1
      301 SETTABLEKS                       R18 R17 K86 ["Details"]
      303 GETUPVAL                         R18 4
      304 GETUPVAL                         R19 6
      305 DUPTABLE                         R20 K98 [{["tag"] = "row align-x-right align-y-center auto-y", ["Size"], ["LayoutOrder"] = 2}]
      306 GETIMPORT                        R21 K101 [UDim2.fromOffset]
      308 LOADN                            R22 200
      309 LOADN                            R23 0
      310 CALL                             R21 2 1
      311 SETTABLEKS                       R21 R20 K73 ["Size"]
      313 DUPTABLE                         R21 K61 [{"Inner"}]
      314 GETTABLEKS                       R23 R6 K7 ["isMixed"]
      316 JUMPIFNOT                        R23 ; [+13]
      317 GETUPVAL                         R22 4
      318 GETUPVAL                         R23 13
      319 DUPTABLE                         R24 K104 [{"categoryKey", "onCategoryValue"}]
      320 GETTABLEKS                       R25 R1 K43 ["key"]
      322 SETTABLEKS                       R25 R24 K102 ["categoryKey"]
      324 GETTABLEKS                       R25 R0 K103 ["onCategoryValue"]
      326 SETTABLEKS                       R25 R24 K103 ["onCategoryValue"]
      328 CALL                             R22 2 1
      329 JUMP                             ; [+48]
      330 GETUPVAL                         R22 4
      331 GETUPVAL                         R23 14
      332 DUPTABLE                         R24 K107 [{"segments", "value", "onActivated", "size", "testId"}]
      333 NEWTABLE                         R25 0 2
      335 DUPTABLE                         R26 K111 [{["id"] = "deny", ["text"]}]
      336 GETTABLEKS                       R27 R5 K112 ["Deny"]
      338 SETTABLEKS                       R27 R26 K110 ["text"]
      340 DUPTABLE                         R27 K114 [{["id"] = "allow", ["text"]}]
      341 GETTABLEKS                       R28 R5 K115 ["Allow"]
      343 SETTABLEKS                       R28 R27 K110 ["text"]
      345 SETLIST                          R25 R26 2 [1]
      347 SETTABLEKS                       R25 R24 K105 ["segments"]
      349 GETTABLEKS                       R26 R6 K116 ["allValue"]
      351 JUMPIFNOT                        R26 ; [+2]
      352 LOADK                            R25 K113 ["allow"]
      353 JUMP                             ; [+1]
      354 LOADK                            R25 K109 ["deny"]
      355 SETTABLEKS                       R25 R24 K106 ["value"]
      357 NEWCLOSURE                       R25 P2
      358 CAPTURE                          VAL R0
      359 CAPTURE                          VAL R1
      360 SETTABLEKS                       R25 R24 K37 ["onActivated"]
      362 GETUPVAL                         R25 15
      363 GETTABLEKS                       R25 R25 K117 ["Large"]
      365 SETTABLEKS                       R25 R24 K47 ["size"]
      367 GETUPVAL                         R25 7
      368 GETTABLEKS                       R25 R25 K41 ["ScopePermissions"]
      370 GETTABLEKS                       R25 R25 K118 ["CategoryControl"]
      372 GETTABLEKS                       R26 R1 K43 ["key"]
      374 CALL                             R25 1 1
      375 SETTABLEKS                       R25 R24 K38 ["testId"]
      377 CALL                             R22 2 1
      378 SETTABLEKS                       R22 R21 K60 ["Inner"]
      380 CALL                             R18 3 1
      381 SETTABLEKS                       R18 R17 K87 ["Control"]
      383 CALL                             R14 3 1
      384 SETTABLEKS                       R14 R13 K81 ["Header"]
      386 SETTABLEKS                       R9 R13 K82 ["PermissionList"]
      388 CALL                             R10 3 -1
      389 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["ExecutionPermissionsModel"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K7 ["IntegrationManagement"]
       22 GETTABLEKS                       R3 R3 K9 ["PermissionRow"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["TestIds"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K12 ["Resources"]
       36 GETTABLEKS                       R5 R5 K13 ["Localization"]
       38 GETTABLEKS                       R5 R5 K14 ["Translator"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K15 ["Parent"]
       45 GETTABLEKS                       R6 R6 K16 ["Foundation"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K15 ["Parent"]
       52 GETTABLEKS                       R7 R7 K17 ["React"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K15 ["Parent"]
       59 GETTABLEKS                       R8 R8 K18 ["ReactUtils"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R5 K19 ["Chip"]
       64 GETTABLEKS                       R9 R5 K20 ["Icon"]
       66 GETTABLEKS                       R10 R5 K21 ["SegmentedControl"]
       68 GETTABLEKS                       R11 R5 K22 ["Text"]
       70 GETTABLEKS                       R12 R5 K23 ["View"]
       72 GETTABLEKS                       R13 R5 K24 ["Enums"]
       74 GETTABLEKS                       R13 R13 K25 ["IconName"]
       76 GETTABLEKS                       R14 R5 K24 ["Enums"]
       78 GETTABLEKS                       R14 R14 K26 ["IconSize"]
       80 GETTABLEKS                       R15 R5 K24 ["Enums"]
       82 GETTABLEKS                       R15 R15 K27 ["InputSize"]
       84 GETTABLEKS                       R16 R7 K28 ["createNextOrder"]
       86 GETTABLEKS                       R17 R6 K29 ["createElement"]
       88 DUPCLOSURE                       R18 K30 [PROTO_0]
       89 DUPCLOSURE                       R19 K31 [PROTO_1]
       90 DUPCLOSURE                       R20 K32 [PROTO_5]
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R3
       98 DUPCLOSURE                       R21 K33 [PROTO_10]
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R19
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R20
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R15
      115 RETURN                           R21 1
