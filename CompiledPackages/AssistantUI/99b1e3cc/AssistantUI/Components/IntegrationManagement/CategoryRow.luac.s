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
       35 DUPTABLE                         R11 K19 [{["text"], ["isChecked"] = False, ["isDisabled"], ["variant"], ["size"], ["onActivated"], ["testId"]}]
       36 JUMPIFNOT                        R2 ; [+6]
       37 GETTABLEKS                       R13 R0 K14 ["isDisabled"]
       39 JUMPIF                           R13 ; [+3]
       40 GETTABLEKS                       R12 R1 K20 ["RestoreDefault"]
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R12 R1 K21 ["Custom"]
       45 SETTABLEKS                       R12 R11 K11 ["text"]
       47 GETTABLEKS                       R12 R0 K14 ["isDisabled"]
       49 SETTABLEKS                       R12 R11 K14 ["isDisabled"]
       51 GETUPVAL                         R12 2
       52 GETTABLEKS                       R12 R12 K22 ["Enums"]
       54 GETTABLEKS                       R12 R12 K23 ["ChipVariant"]
       56 GETTABLEKS                       R12 R12 K24 ["Standard"]
       58 SETTABLEKS                       R12 R11 K15 ["variant"]
       60 GETUPVAL                         R12 2
       61 GETTABLEKS                       R12 R12 K22 ["Enums"]
       63 GETTABLEKS                       R12 R12 K25 ["ChipSize"]
       65 GETTABLEKS                       R12 R12 K26 ["Small"]
       67 SETTABLEKS                       R12 R11 K16 ["size"]
       69 NEWCLOSURE                       R12 P2
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R12 R11 K17 ["onActivated"]
       73 GETUPVAL                         R12 6
       74 GETTABLEKS                       R12 R12 K27 ["ScopePermissions"]
       76 GETTABLEKS                       R12 R12 K28 ["CategoryControl"]
       78 GETTABLEKS                       R13 R0 K29 ["categoryKey"]
       80 CALL                             R12 1 1
       81 SETTABLEKS                       R12 R11 K18 ["testId"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K9 ["Chip"]
       86 CALL                             R5 3 -1
       87 RETURN                           R5 -1

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
        1 GETTABLEKS                       R1 R1 K0 ["isDisabled"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["onCategoryValue"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["key"]
       11 JUMPIFEQKS                       R0 K3 ["allow"] ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

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
      150 JUMPIFNOT                        R2 ; [+99]
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
      164 DUPTABLE                         R20 K57 [{"entry", "onToggle", "isDisabled", "LayoutOrder"}]
      165 SETTABLEKS                       R16 R20 K54 ["entry"]
      167 GETTABLEKS                       R21 R0 K55 ["onToggle"]
      169 SETTABLEKS                       R21 R20 K55 ["onToggle"]
      171 GETTABLEKS                       R21 R0 K56 ["isDisabled"]
      173 SETTABLEKS                       R21 R20 K56 ["isDisabled"]
      175 MOVE                             R21 R11
      176 CALL                             R21 0 1
      177 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      179 CALL                             R18 2 1
      180 SETTABLE                         R18 R10 R17
      181 FORGLOOP                         R12 2 ; [-22]
      183 GETTABLEKS                       R12 R0 K58 ["extraContent"]
      185 JUMPIFNOT                        R12 ; [+15]
      186 GETUPVAL                         R12 4
      187 GETUPVAL                         R13 6
      188 DUPTABLE                         R14 K60 [{["tag"] = "col size-full-0 auto-y padding-top-medium", ["LayoutOrder"]}]
      189 MOVE                             R15 R11
      190 CALL                             R15 0 1
      191 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      193 DUPTABLE                         R15 K62 [{"Inner"}]
      194 GETTABLEKS                       R16 R0 K58 ["extraContent"]
      196 SETTABLEKS                       R16 R15 K61 ["Inner"]
      198 CALL                             R12 3 1
      199 SETTABLEKS                       R12 R10 K63 ["ExtraContent"]
      201 GETUPVAL                         R12 4
      202 GETUPVAL                         R13 6
      203 DUPTABLE                         R14 K66 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["padding"], ["LayoutOrder"] = 2}]
      204 DUPTABLE                         R15 K70 [{"left", "right", "bottom"}]
      205 GETIMPORT                        R16 K73 [UDim.new]
      207 LOADN                            R17 0
      208 GETTABLEKS                       R19 R4 K74 ["Size"]
      210 GETTABLEKS                       R19 R19 K75 ["Size_900"]
      212 GETTABLEKS                       R20 R4 K76 ["Padding"]
      214 GETTABLEKS                       R20 R20 K77 ["Medium"]
      216 ADD                              R18 R19 R20
      217 CALL                             R16 2 1
      218 SETTABLEKS                       R16 R15 K67 ["left"]
      220 GETIMPORT                        R16 K73 [UDim.new]
      222 LOADN                            R17 0
      223 GETTABLEKS                       R19 R4 K76 ["Padding"]
      225 GETTABLEKS                       R19 R19 K77 ["Medium"]
      227 GETTABLEKS                       R20 R4 K76 ["Padding"]
      229 GETTABLEKS                       R20 R20 K78 ["XLarge"]
      231 ADD                              R18 R19 R20
      232 CALL                             R16 2 1
      233 SETTABLEKS                       R16 R15 K68 ["right"]
      235 GETIMPORT                        R16 K73 [UDim.new]
      237 LOADN                            R17 0
      238 GETTABLEKS                       R18 R4 K76 ["Padding"]
      240 GETTABLEKS                       R18 R18 K77 ["Medium"]
      242 CALL                             R16 2 1
      243 SETTABLEKS                       R16 R15 K69 ["bottom"]
      245 SETTABLEKS                       R15 R14 K65 ["padding"]
      247 MOVE                             R15 R10
      248 CALL                             R12 3 1
      249 MOVE                             R9 R12
      250 GETUPVAL                         R10 4
      251 GETUPVAL                         R11 6
      252 DUPTABLE                         R12 K80 [{["tag"] = "col size-full-0 auto-y", ["testId"], ["LayoutOrder"]}]
      253 GETUPVAL                         R13 7
      254 GETTABLEKS                       R13 R13 K41 ["ScopePermissions"]
      256 GETTABLEKS                       R13 R13 K81 ["CategoryRow"]
      258 GETTABLEKS                       R14 R1 K43 ["key"]
      260 CALL                             R13 1 1
      261 SETTABLEKS                       R13 R12 K38 ["testId"]
      263 GETTABLEKS                       R13 R0 K27 ["LayoutOrder"]
      265 SETTABLEKS                       R13 R12 K27 ["LayoutOrder"]
      267 DUPTABLE                         R13 K84 [{"Header", "PermissionList"}]
      268 GETUPVAL                         R14 4
      269 GETUPVAL                         R15 6
      270 DUPTABLE                         R16 K86 [{["tag"] = "row gap-large size-full-0 auto-y padding-y-medium padding-right-medium", ["LayoutOrder"] = 1}]
      271 DUPTABLE                         R17 K89 [{"Details", "Control"}]
      272 GETUPVAL                         R18 4
      273 GETUPVAL                         R19 6
      274 DUPTABLE                         R20 K91 [{["tag"] = "row align-y-center gap-medium grow size-0-0 auto-y", ["LayoutOrder"] = 1}]
      275 DUPTABLE                         R21 K93 [{"CategoryIcon", "Text"}]
      276 GETUPVAL                         R22 4
      277 GETUPVAL                         R23 8
      278 DUPTABLE                         R24 K48 [{["name"], ["size"], ["LayoutOrder"] = 1}]
      279 GETTABLEKS                       R26 R1 K94 ["icon"]
      281 JUMPIFEQKS                       R26 K32 [""] ; [+4]
      283 GETTABLEKS                       R25 R1 K94 ["icon"]
      285 JUMP                             ; [+1]
      286 LOADK                            R25 K95 ["circle-outline"]
      287 SETTABLEKS                       R25 R24 K30 ["name"]
      289 GETUPVAL                         R25 10
      290 GETTABLEKS                       R25 R25 K77 ["Medium"]
      292 SETTABLEKS                       R25 R24 K47 ["size"]
      294 CALL                             R22 2 1
      295 SETTABLEKS                       R22 R21 K92 ["CategoryIcon"]
      297 GETUPVAL                         R22 4
      298 GETUPVAL                         R23 6
      299 DUPTABLE                         R24 K97 [{["tag"] = "col grow gap-xxsmall size-0-0 auto-y", ["LayoutOrder"] = 2}]
      300 MOVE                             R25 R8
      301 CALL                             R22 3 1
      302 SETTABLEKS                       R22 R21 K26 ["Text"]
      304 CALL                             R18 3 1
      305 SETTABLEKS                       R18 R17 K87 ["Details"]
      307 GETUPVAL                         R18 4
      308 GETUPVAL                         R19 6
      309 DUPTABLE                         R20 K100 [{["tag"] = "row align-x-right align-y-center auto-y", ["Size"], ["GroupTransparency"], ["LayoutOrder"] = 2}]
      310 GETIMPORT                        R21 K103 [UDim2.fromOffset]
      312 LOADN                            R22 200
      313 LOADN                            R23 0
      314 CALL                             R21 2 1
      315 SETTABLEKS                       R21 R20 K74 ["Size"]
      317 GETTABLEKS                       R22 R0 K56 ["isDisabled"]
      319 JUMPIFNOT                        R22 ; [+5]
      320 GETTABLEKS                       R22 R6 K7 ["isMixed"]
      322 JUMPIF                           R22 ; [+2]
      323 LOADK                            R21 K104 [0.5]
      324 JUMP                             ; [+1]
      325 LOADNIL                          R21
      326 SETTABLEKS                       R21 R20 K99 ["GroupTransparency"]
      328 DUPTABLE                         R21 K62 [{"Inner"}]
      329 GETTABLEKS                       R23 R6 K7 ["isMixed"]
      331 JUMPIFNOT                        R23 ; [+17]
      332 GETUPVAL                         R22 4
      333 GETUPVAL                         R23 13
      334 DUPTABLE                         R24 K107 [{"categoryKey", "onCategoryValue", "isDisabled"}]
      335 GETTABLEKS                       R25 R1 K43 ["key"]
      337 SETTABLEKS                       R25 R24 K105 ["categoryKey"]
      339 GETTABLEKS                       R25 R0 K106 ["onCategoryValue"]
      341 SETTABLEKS                       R25 R24 K106 ["onCategoryValue"]
      343 GETTABLEKS                       R25 R0 K56 ["isDisabled"]
      345 SETTABLEKS                       R25 R24 K56 ["isDisabled"]
      347 CALL                             R22 2 1
      348 JUMP                             ; [+48]
      349 GETUPVAL                         R22 4
      350 GETUPVAL                         R23 14
      351 DUPTABLE                         R24 K110 [{"segments", "value", "onActivated", "size", "testId"}]
      352 NEWTABLE                         R25 0 2
      354 DUPTABLE                         R26 K114 [{["id"] = "deny", ["text"]}]
      355 GETTABLEKS                       R27 R5 K115 ["Deny"]
      357 SETTABLEKS                       R27 R26 K113 ["text"]
      359 DUPTABLE                         R27 K117 [{["id"] = "allow", ["text"]}]
      360 GETTABLEKS                       R28 R5 K118 ["Allow"]
      362 SETTABLEKS                       R28 R27 K113 ["text"]
      364 SETLIST                          R25 R26 2 [1]
      366 SETTABLEKS                       R25 R24 K108 ["segments"]
      368 GETTABLEKS                       R26 R6 K119 ["allValue"]
      370 JUMPIFNOT                        R26 ; [+2]
      371 LOADK                            R25 K116 ["allow"]
      372 JUMP                             ; [+1]
      373 LOADK                            R25 K112 ["deny"]
      374 SETTABLEKS                       R25 R24 K109 ["value"]
      376 NEWCLOSURE                       R25 P2
      377 CAPTURE                          VAL R0
      378 CAPTURE                          VAL R1
      379 SETTABLEKS                       R25 R24 K37 ["onActivated"]
      381 GETUPVAL                         R25 15
      382 GETTABLEKS                       R25 R25 K120 ["Large"]
      384 SETTABLEKS                       R25 R24 K47 ["size"]
      386 GETUPVAL                         R25 7
      387 GETTABLEKS                       R25 R25 K41 ["ScopePermissions"]
      389 GETTABLEKS                       R25 R25 K121 ["CategoryControl"]
      391 GETTABLEKS                       R26 R1 K43 ["key"]
      393 CALL                             R25 1 1
      394 SETTABLEKS                       R25 R24 K38 ["testId"]
      396 CALL                             R22 2 1
      397 SETTABLEKS                       R22 R21 K61 ["Inner"]
      399 CALL                             R18 3 1
      400 SETTABLEKS                       R18 R17 K88 ["Control"]
      402 CALL                             R14 3 1
      403 SETTABLEKS                       R14 R13 K82 ["Header"]
      405 SETTABLEKS                       R9 R13 K83 ["PermissionList"]
      407 CALL                             R10 3 -1
      408 RETURN                           R10 -1

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
