PROTO_0:
        0 LOADK                            R4 K0 ["StyleRule"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 DUPTABLE                         R2 K4 [{"StyledPropertiesChangedConnection", "NonStyledPropertiesChangedConnection"}]
        8 GETTABLEKS                       R3 R0 K5 ["StyleRulePropertyChanged"]
       10 MOVE                             R5 R1
       11 NAMECALL                         R3 R3 K6 ["Connect"]
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K2 ["StyledPropertiesChangedConnection"]
       16 GETTABLEKS                       R3 R0 K7 ["Changed"]
       18 MOVE                             R5 R1
       19 NAMECALL                         R3 R3 K6 ["Connect"]
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R2 K3 ["NonStyledPropertiesChangedConnection"]
       24 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Items"]
        3 GETUPVAL                         R4 1
        4 NAMECALL                         R1 R1 K1 ["getChild"]
        6 CALL                             R1 3 1
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 DUPTABLE                         R2 K3 [{"Schema"}]
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K4 ["SelectorSchema"]
       15 DUPTABLE                         R5 K6 [{"Editing"}]
       16 LOADB                            R6 1
       17 SETTABLEKS                       R6 R5 K5 ["Editing"]
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K2 ["Schema"]
       22 GETUPVAL                         R3 0
       23 MOVE                             R5 R0
       24 MOVE                             R6 R2
       25 GETUPVAL                         R7 1
       26 LOADN                            R8 1
       27 NAMECALL                         R3 R3 K7 ["updateCell"]
       29 CALL                             R3 5 -1
       30 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["ClipboardProperty"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R3 R0 K1 ["ClipboardInstances"]
        5 LENGTH                           R2 R3
        6 LOADN                            R3 0
        7 JUMPIFLT                         R3 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Expansion"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+20]
        4 GETTABLEKS                       R3 R0 K1 ["Selection"]
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFNOTEQKB                    R2 TRUE ; [+15]
       10 GETTABLEKS                       R4 R0 K0 ["Expansion"]
       12 GETUPVAL                         R5 1
       13 GETTABLE                         R3 R4 R5
       14 NOT                              R2 R3
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R4 R0 K0 ["Expansion"]
       18 NEWTABLE                         R5 1 0
       20 GETUPVAL                         R6 1
       21 SETTABLE                         R2 R5 R6
       22 CALL                             R3 2 1
       23 MOVE                             R1 R3
       24 GETUPVAL                         R2 2
       25 MOVE                             R3 R0
       26 DUPTABLE                         R4 K2 [{"Selection", "Expansion"}]
       27 NEWTABLE                         R5 1 0
       29 GETUPVAL                         R6 1
       30 LOADB                            R7 1
       31 SETTABLE                         R7 R5 R6
       32 SETTABLEKS                       R5 R4 K1 ["Selection"]
       34 SETTABLEKS                       R1 R4 K0 ["Expansion"]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["selectRow"]
        5 GETTABLEKS                       R3 R1 K2 ["Id"]
        7 LOADB                            R4 0
        8 CALL                             R2 2 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["showContextMenu"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Localization"]
        5 DUPTABLE                         R3 K4 [{"Id", "Children"}]
        6 LOADK                            R4 K5 ["EmptyRowMenu"]
        7 SETTABLEKS                       R4 R3 K2 ["Id"]
        9 NEWTABLE                         R4 0 1
       11 DUPTABLE                         R5 K10 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
       12 LOADK                            R6 K11 ["PasteProperty"]
       13 SETTABLEKS                       R6 R5 K2 ["Id"]
       15 LOADK                            R8 K12 ["ContextMenu"]
       16 LOADK                            R9 K13 ["Paste"]
       17 NAMECALL                         R6 R2 K14 ["getText"]
       19 CALL                             R6 3 1
       20 SETTABLEKS                       R6 R5 K6 ["Text"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K15 ["paste"]
       25 CALL                             R6 0 1
       26 SETTABLEKS                       R6 R5 K7 ["Icon"]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K16 ["canPasteProperty"]
       31 CALL                             R6 0 1
       32 SETTABLEKS                       R6 R5 K8 ["Enabled"]
       34 GETUPVAL                         R6 2
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R8 R9 K17 ["menuActions"]
       38 GETTABLEKS                       R7 R8 K18 ["pasteProperty"]
       40 NEWTABLE                         R8 0 1
       42 MOVE                             R9 R0
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K9 ["OnItemClicked"]
       48 SETLIST                          R4 R5 1 [1]
       50 SETTABLEKS                       R4 R3 K3 ["Children"]
       52 GETTABLEKS                       R4 R1 K19 ["Plugin"]
       54 NAMECALL                         R4 R4 K20 ["get"]
       56 CALL                             R4 1 1
       57 GETTABLEKS                       R5 R1 K21 ["Telemetry"]
       59 NAMECALL                         R5 R5 K20 ["get"]
       61 CALL                             R5 1 1
       62 GETUPVAL                         R7 3
       63 GETTABLEKS                       R6 R7 K22 ["trackClicks"]
       65 MOVE                             R7 R3
       66 MOVE                             R8 R5
       67 CALL                             R6 2 0
       68 GETUPVAL                         R7 3
       69 GETTABLEKS                       R6 R7 K23 ["showContextMenu"]
       71 MOVE                             R7 R4
       72 MOVE                             R8 R3
       73 CALL                             R6 2 0
       74 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["props"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R6 R1 K2 ["table"]
        9 GETTABLEKS                       R5 R6 K3 ["Items"]
       11 MOVE                             R6 R0
       12 NAMECALL                         R3 R3 K4 ["getParent"]
       14 CALL                             R3 3 1
       15 JUMPIFNOT                        R3 ; [+3]
       16 GETTABLEKS                       R4 R3 K5 ["Instance"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R4
       20 JUMPIFNOT                        R4 ; [+5]
       21 LOADK                            R7 K6 ["StyleRule"]
       22 NAMECALL                         R5 R4 K7 ["IsA"]
       24 CALL                             R5 2 1
       25 JUMPIF                           R5 ; [+5]
       26 GETIMPORT                        R5 K9 [warn]
       28 LOADK                            R6 K10 ["Property menu opened for an item not parented to a StyleRule"]
       29 CALL                             R5 1 0
       30 RETURN                           R0 0
       31 GETTABLEKS                       R5 R2 K11 ["Localization"]
       33 GETTABLEKS                       R9 R0 K12 ["Value"]
       35 GETTABLEKS                       R8 R9 K13 ["Schema"]
       37 GETTABLEKS                       R7 R8 K14 ["Type"]
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R9 R10 K15 ["TokenReferenceSchema"]
       42 GETTABLEKS                       R8 R9 K14 ["Type"]
       44 JUMPIFEQ                         R7 R8 ; [+2]
       46 LOADB                            R6 0 +1
       47 LOADB                            R6 1
       48 GETUPVAL                         R8 3
       49 GETTABLEKS                       R7 R8 K16 ["getSelectorChain"]
       51 MOVE                             R8 R4
       52 CALL                             R7 1 1
       53 JUMPIFNOT                        R7 ; [+7]
       54 GETTABLEKS                       R9 R7 K17 ["Class"]
       56 JUMPIFNOTEQKS                    R9 K18 [""] ; [+2]
       58 LOADB                            R8 0 +1
       59 LOADB                            R8 1
       60 JUMP                             ; [+1]
       61 LOADB                            R8 0
       62 GETUPVAL                         R10 4
       63 GETTABLEKS                       R9 R10 K19 ["getTokenSourceStyleSheet"]
       65 MOVE                             R10 R4
       66 GETTABLEKS                       R12 R0 K12 ["Value"]
       68 GETTABLEKS                       R11 R12 K12 ["Value"]
       70 CALL                             R9 2 1
       71 GETUPVAL                         R11 5
       72 GETTABLEKS                       R10 R11 K20 ["isTheme"]
       74 MOVE                             R11 R9
       75 CALL                             R10 1 1
       76 JUMPIFNOT                        R6 ; [+34]
       77 DUPTABLE                         R11 K25 [{"Id", "Text", "Icon", "OnItemClicked"}]
       78 LOADK                            R12 K26 ["UnlinkToken"]
       79 SETTABLEKS                       R12 R11 K21 ["Id"]
       81 LOADK                            R14 K27 ["ContextMenu"]
       82 LOADK                            R15 K26 ["UnlinkToken"]
       83 NAMECALL                         R12 R5 K28 ["getText"]
       85 CALL                             R12 3 1
       86 SETTABLEKS                       R12 R11 K22 ["Text"]
       88 GETUPVAL                         R14 6
       89 GETTABLEKS                       R13 R14 K29 ["Standard"]
       91 GETTABLEKS                       R12 R13 K30 ["TokenSheet"]
       93 CALL                             R12 0 1
       94 SETTABLEKS                       R12 R11 K23 ["Icon"]
       96 GETUPVAL                         R12 7
       97 GETUPVAL                         R15 0
       98 GETTABLEKS                       R14 R15 K31 ["menuActions"]
      100 GETTABLEKS                       R13 R14 K32 ["unlinkToken"]
      102 NEWTABLE                         R14 0 1
      104 MOVE                             R15 R0
      105 SETLIST                          R14 R15 1 [1]
      107 CALL                             R12 2 1
      108 SETTABLEKS                       R12 R11 K24 ["OnItemClicked"]
      110 JUMP                             ; [+33]
      111 DUPTABLE                         R11 K25 [{"Id", "Text", "Icon", "OnItemClicked"}]
      112 LOADK                            R12 K33 ["LinkToken"]
      113 SETTABLEKS                       R12 R11 K21 ["Id"]
      115 LOADK                            R14 K27 ["ContextMenu"]
      116 LOADK                            R15 K33 ["LinkToken"]
      117 NAMECALL                         R12 R5 K28 ["getText"]
      119 CALL                             R12 3 1
      120 SETTABLEKS                       R12 R11 K22 ["Text"]
      122 GETUPVAL                         R14 6
      123 GETTABLEKS                       R13 R14 K29 ["Standard"]
      125 GETTABLEKS                       R12 R13 K30 ["TokenSheet"]
      127 CALL                             R12 0 1
      128 SETTABLEKS                       R12 R11 K23 ["Icon"]
      130 GETUPVAL                         R12 7
      131 GETUPVAL                         R15 0
      132 GETTABLEKS                       R14 R15 K31 ["menuActions"]
      134 GETTABLEKS                       R13 R14 K34 ["linkToken"]
      136 NEWTABLE                         R14 0 1
      138 MOVE                             R15 R0
      139 SETLIST                          R14 R15 1 [1]
      141 CALL                             R12 2 1
      142 SETTABLEKS                       R12 R11 K24 ["OnItemClicked"]
      144 GETUPVAL                         R13 2
      145 GETTABLEKS                       R12 R13 K35 ["getPossiblePropertyTypes"]
      147 GETTABLEKS                       R14 R0 K36 ["Name"]
      149 GETTABLEKS                       R13 R14 K12 ["Value"]
      151 CALL                             R12 1 1
      152 GETUPVAL                         R14 8
      153 GETTABLEKS                       R13 R14 K37 ["getAttributeTypeActions"]
      155 MOVE                             R14 R12
      156 GETUPVAL                         R15 7
      157 GETUPVAL                         R18 0
      158 GETTABLEKS                       R17 R18 K31 ["menuActions"]
      160 GETTABLEKS                       R16 R17 K38 ["changePropertyType"]
      162 NEWTABLE                         R17 0 1
      164 MOVE                             R18 R0
      165 SETLIST                          R17 R18 1 [1]
      167 CALL                             R15 2 -1
      168 CALL                             R13 -1 1
      169 DUPTABLE                         R14 K40 [{"Id", "Children"}]
      170 LOADK                            R15 K41 ["PropertyRowMenu"]
      171 SETTABLEKS                       R15 R14 K21 ["Id"]
      173 NEWTABLE                         R15 0 6
      175 MOVE                             R16 R11
      176 DUPTABLE                         R17 K43 [{"Id", "Text", "Icon", "Hidden", "OnItemClicked"}]
      177 LOADK                            R18 K44 ["ViewTheme"]
      178 SETTABLEKS                       R18 R17 K21 ["Id"]
      180 LOADK                            R20 K27 ["ContextMenu"]
      181 JUMPIFNOT                        R10 ; [+2]
      182 LOADK                            R21 K44 ["ViewTheme"]
      183 JUMP                             ; [+1]
      184 LOADK                            R21 K45 ["ViewToken"]
      185 NAMECALL                         R18 R5 K28 ["getText"]
      187 CALL                             R18 3 1
      188 SETTABLEKS                       R18 R17 K22 ["Text"]
      190 GETUPVAL                         R19 6
      191 GETTABLEKS                       R18 R19 K46 ["open"]
      193 CALL                             R18 0 1
      194 SETTABLEKS                       R18 R17 K23 ["Icon"]
      196 NOT                              R18 R6
      197 SETTABLEKS                       R18 R17 K42 ["Hidden"]
      199 GETUPVAL                         R18 7
      200 GETUPVAL                         R21 0
      201 GETTABLEKS                       R20 R21 K31 ["menuActions"]
      203 GETTABLEKS                       R19 R20 K47 ["viewTheme"]
      205 NEWTABLE                         R20 0 1
      207 MOVE                             R21 R0
      208 SETLIST                          R20 R21 1 [1]
      210 CALL                             R18 2 1
      211 SETTABLEKS                       R18 R17 K24 ["OnItemClicked"]
      213 DUPTABLE                         R18 K48 [{"Id", "Text", "Hidden", "Children"}]
      214 LOADK                            R19 K49 ["ChangeType"]
      215 SETTABLEKS                       R19 R18 K21 ["Id"]
      217 LOADK                            R21 K27 ["ContextMenu"]
      218 LOADK                            R22 K49 ["ChangeType"]
      219 NAMECALL                         R19 R5 K28 ["getText"]
      221 CALL                             R19 3 1
      222 SETTABLEKS                       R19 R18 K22 ["Text"]
      224 MOVE                             R19 R8
      225 JUMPIF                           R19 ; [+6]
      226 LENGTH                           R20 R12
      227 LOADN                            R21 1
      228 JUMPIFLE                         R20 R21 ; [+2]
      230 LOADB                            R19 0 +1
      231 LOADB                            R19 1
      232 SETTABLEKS                       R19 R18 K42 ["Hidden"]
      234 SETTABLEKS                       R13 R18 K39 ["Children"]
      236 DUPTABLE                         R19 K25 [{"Id", "Text", "Icon", "OnItemClicked"}]
      237 LOADK                            R20 K50 ["Copy"]
      238 SETTABLEKS                       R20 R19 K21 ["Id"]
      240 LOADK                            R22 K27 ["ContextMenu"]
      241 LOADK                            R23 K50 ["Copy"]
      242 NAMECALL                         R20 R5 K28 ["getText"]
      244 CALL                             R20 3 1
      245 SETTABLEKS                       R20 R19 K22 ["Text"]
      247 GETUPVAL                         R21 6
      248 GETTABLEKS                       R20 R21 K51 ["copy"]
      250 CALL                             R20 0 1
      251 SETTABLEKS                       R20 R19 K23 ["Icon"]
      253 GETUPVAL                         R20 7
      254 GETUPVAL                         R23 0
      255 GETTABLEKS                       R22 R23 K31 ["menuActions"]
      257 GETTABLEKS                       R21 R22 K52 ["copyProperty"]
      259 NEWTABLE                         R22 0 1
      261 MOVE                             R23 R0
      262 SETLIST                          R22 R23 1 [1]
      264 CALL                             R20 2 1
      265 SETTABLEKS                       R20 R19 K24 ["OnItemClicked"]
      267 DUPTABLE                         R20 K54 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      268 LOADK                            R21 K55 ["Paste"]
      269 SETTABLEKS                       R21 R20 K21 ["Id"]
      271 LOADK                            R23 K27 ["ContextMenu"]
      272 LOADK                            R24 K55 ["Paste"]
      273 NAMECALL                         R21 R5 K28 ["getText"]
      275 CALL                             R21 3 1
      276 SETTABLEKS                       R21 R20 K22 ["Text"]
      278 GETUPVAL                         R22 6
      279 GETTABLEKS                       R21 R22 K56 ["paste"]
      281 CALL                             R21 0 1
      282 SETTABLEKS                       R21 R20 K23 ["Icon"]
      284 GETUPVAL                         R22 0
      285 GETTABLEKS                       R21 R22 K57 ["canPasteProperty"]
      287 CALL                             R21 0 1
      288 SETTABLEKS                       R21 R20 K53 ["Enabled"]
      290 GETUPVAL                         R21 7
      291 GETUPVAL                         R24 0
      292 GETTABLEKS                       R23 R24 K31 ["menuActions"]
      294 GETTABLEKS                       R22 R23 K58 ["pasteProperty"]
      296 NEWTABLE                         R23 0 1
      298 MOVE                             R24 R0
      299 SETLIST                          R23 R24 1 [1]
      301 CALL                             R21 2 1
      302 SETTABLEKS                       R21 R20 K24 ["OnItemClicked"]
      304 DUPTABLE                         R21 K25 [{"Id", "Text", "Icon", "OnItemClicked"}]
      305 LOADK                            R22 K59 ["Delete"]
      306 SETTABLEKS                       R22 R21 K21 ["Id"]
      308 LOADK                            R24 K27 ["ContextMenu"]
      309 LOADK                            R25 K59 ["Delete"]
      310 NAMECALL                         R22 R5 K28 ["getText"]
      312 CALL                             R22 3 1
      313 SETTABLEKS                       R22 R21 K22 ["Text"]
      315 GETUPVAL                         R23 6
      316 GETTABLEKS                       R22 R23 K60 ["delete"]
      318 CALL                             R22 0 1
      319 SETTABLEKS                       R22 R21 K23 ["Icon"]
      321 GETUPVAL                         R22 7
      322 GETUPVAL                         R25 0
      323 GETTABLEKS                       R24 R25 K31 ["menuActions"]
      325 GETTABLEKS                       R23 R24 K61 ["deleteProperty"]
      327 NEWTABLE                         R24 0 1
      329 MOVE                             R25 R0
      330 SETLIST                          R24 R25 1 [1]
      332 CALL                             R22 2 1
      333 SETTABLEKS                       R22 R21 K24 ["OnItemClicked"]
      335 SETLIST                          R15 R16 6 [1]
      337 SETTABLEKS                       R15 R14 K39 ["Children"]
      339 GETTABLEKS                       R15 R2 K62 ["Plugin"]
      341 NAMECALL                         R15 R15 K63 ["get"]
      343 CALL                             R15 1 1
      344 GETTABLEKS                       R16 R2 K64 ["Telemetry"]
      346 NAMECALL                         R16 R16 K63 ["get"]
      348 CALL                             R16 1 1
      349 GETUPVAL                         R18 8
      350 GETTABLEKS                       R17 R18 K65 ["trackClicks"]
      352 MOVE                             R18 R14
      353 MOVE                             R19 R16
      354 CALL                             R17 2 0
      355 GETUPVAL                         R18 8
      356 GETTABLEKS                       R17 R18 K66 ["showContextMenu"]
      358 MOVE                             R18 R15
      359 MOVE                             R19 R14
      360 CALL                             R17 2 0
      361 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R0 K1 ["Instance"]
        5 FASTCALL1                        TYPEOF R3 ; [+2]
        6 GETIMPORT                        R2 K3 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K1 ["Instance"] ; [+55]
       11 GETTABLEKS                       R2 R0 K1 ["Instance"]
       13 LOADK                            R4 K4 ["StyleRule"]
       14 NAMECALL                         R2 R2 K5 ["IsA"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+21]
       18 GETTABLEKS                       R2 R1 K6 ["dispatch"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R4 R0 K1 ["Instance"]
       23 GETUPVAL                         R5 2
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K7 ["menuActions"]
       27 GETTABLEKS                       R6 R7 K8 ["rename"]
       29 NEWTABLE                         R7 0 1
       31 MOVE                             R8 R0
       32 SETLIST                          R7 R8 1 [1]
       34 CALL                             R5 2 1
       35 LOADB                            R6 0
       36 CALL                             R3 3 -1
       37 CALL                             R2 -1 0
       38 JUMP                             ; [+26]
       39 GETTABLEKS                       R2 R0 K1 ["Instance"]
       41 LOADK                            R4 K9 ["Folder"]
       42 NAMECALL                         R2 R2 K5 ["IsA"]
       44 CALL                             R2 2 1
       45 JUMPIFNOT                        R2 ; [+19]
       46 GETTABLEKS                       R2 R1 K6 ["dispatch"]
       48 GETUPVAL                         R3 3
       49 GETTABLEKS                       R4 R0 K1 ["Instance"]
       51 GETUPVAL                         R5 2
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K7 ["menuActions"]
       55 GETTABLEKS                       R6 R7 K8 ["rename"]
       57 NEWTABLE                         R7 0 1
       59 MOVE                             R8 R0
       60 SETLIST                          R7 R8 1 [1]
       62 CALL                             R5 2 -1
       63 CALL                             R3 -1 -1
       64 CALL                             R2 -1 0
       65 GETTABLEKS                       R2 R0 K10 ["Value"]
       67 JUMPIFNOT                        R2 ; [+5]
       68 GETTABLEKS                       R3 R0 K10 ["Value"]
       70 GETTABLEKS                       R2 R3 K11 ["Schema"]
       72 JUMPIF                           R2 ; [+1]
       73 RETURN                           R0 0
       74 GETTABLEKS                       R4 R0 K10 ["Value"]
       76 GETTABLEKS                       R3 R4 K11 ["Schema"]
       78 GETTABLEKS                       R2 R3 K12 ["Type"]
       80 JUMPIFNOTEQKS                    R2 K13 ["Empty"] ; [+7]
       82 GETUPVAL                         R3 0
       83 GETTABLEKS                       R2 R3 K14 ["showEmptyRowContextMenu"]
       85 MOVE                             R3 R0
       86 CALL                             R2 1 0
       87 RETURN                           R0 0
       88 GETUPVAL                         R3 0
       89 GETTABLEKS                       R2 R3 K15 ["showPropertyRowContextMenu"]
       91 MOVE                             R3 R0
       92 CALL                             R2 1 0
       93 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getOneSelectedItem"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["selectRow"]
        9 MOVE                             R3 R1
       10 LOADB                            R4 1
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K1 [{"table"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["table"]
        4 DUPTABLE                         R4 K3 [{"Columns"}]
        5 NEWTABLE                         R5 0 2
        7 DUPTABLE                         R6 K5 [{"Width"}]
        8 GETUPVAL                         R7 1
        9 SETTABLEKS                       R7 R6 K4 ["Width"]
       11 DUPTABLE                         R7 K5 [{"Width"}]
       12 GETUPVAL                         R8 2
       13 SETTABLEKS                       R8 R7 K4 ["Width"]
       15 SETLIST                          R5 R6 2 [1]
       17 SETTABLEKS                       R5 R4 K2 ["Columns"]
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R1 K0 ["table"]
       22 RETURN                           R1 1

PROTO_13:
        0 LOADN                            R3 250
        1 MULK                             R4 R1 K0 [0.5]
        2 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
        4 GETIMPORT                        R2 K3 [math.min]
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K6 [UDim.new]
        9 LOADN                            R4 0
       10 MOVE                             R5 R2
       11 CALL                             R3 2 1
       12 GETIMPORT                        R4 K6 [UDim.new]
       14 LOADN                            R5 1
       15 MINUS                            R6 R2
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 0
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R4
       22 NAMECALL                         R5 R5 K7 ["setState"]
       24 CALL                             R5 2 0
       25 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K2 [{"Value", "Schema"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K3 ["TokenReferenceSchema"]
        4 GETTABLEKS                       R2 R3 K4 ["GetDefaultValue"]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K0 ["Value"]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["TokenReferenceSchema"]
       13 DUPTABLE                         R4 K8 [{"Editing", "Instance", "ExpectedTypes"}]
       14 LOADB                            R5 1
       15 SETTABLEKS                       R5 R4 K5 ["Editing"]
       17 GETUPVAL                         R6 2
       18 JUMPIFNOT                        R6 ; [+4]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K6 ["Instance"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R5
       24 SETTABLEKS                       R5 R4 K6 ["Instance"]
       26 GETUPVAL                         R5 3
       27 SETTABLEKS                       R5 R4 K7 ["ExpectedTypes"]
       29 CALL                             R2 2 1
       30 SETTABLEKS                       R2 R1 K1 ["Schema"]
       32 GETUPVAL                         R2 4
       33 MOVE                             R4 R0
       34 MOVE                             R5 R1
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R6 R7 K9 ["Path"]
       38 LOADN                            R7 2
       39 NAMECALL                         R2 R2 K10 ["updateCell"]
       41 CALL                             R2 5 1
       42 GETUPVAL                         R3 6
       43 MOVE                             R4 R2
       44 CALL                             R3 1 -1
       45 RETURN                           R3 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R6 R2 K1 ["table"]
        6 GETTABLEKS                       R5 R6 K2 ["Items"]
        8 MOVE                             R6 R0
        9 NAMECALL                         R3 R3 K3 ["getParent"]
       11 CALL                             R3 3 1
       12 GETTABLEKS                       R5 R0 K4 ["Name"]
       14 GETTABLEKS                       R4 R5 K5 ["Value"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K6 ["getPossiblePropertyTypes"]
       19 MOVE                             R6 R4
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 3
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R5
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U5
       30 CALL                             R6 1 0
       31 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["state"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R7 R3 K2 ["table"]
        9 GETTABLEKS                       R6 R7 K3 ["Items"]
       11 MOVE                             R7 R0
       12 NAMECALL                         R4 R4 K4 ["getParent"]
       14 CALL                             R4 3 1
       15 GETTABLEKS                       R6 R0 K5 ["Name"]
       17 GETTABLEKS                       R5 R6 K6 ["Value"]
       19 GETTABLEKS                       R6 R2 K7 ["dispatch"]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R8 R4 K8 ["Instance"]
       24 MOVE                             R9 R5
       25 CALL                             R7 2 -1
       26 CALL                             R6 -1 0
       27 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R1 K1 ["Data"]
        5 JUMPIFNOT                        R4 ; [+5]
        6 GETTABLEKS                       R4 R1 K1 ["Data"]
        8 GETTABLEKS                       R3 R4 K2 ["Type"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 JUMPIF                           R3 ; [+5]
       13 GETIMPORT                        R4 K4 [warn]
       15 LOADK                            R5 K5 ["Cannot change to nil type"]
       16 CALL                             R4 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K6 ["state"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R8 R4 K7 ["table"]
       24 GETTABLEKS                       R7 R8 K8 ["Items"]
       26 MOVE                             R8 R0
       27 NAMECALL                         R5 R5 K9 ["getParent"]
       29 CALL                             R5 3 1
       30 GETTABLEKS                       R7 R0 K10 ["Name"]
       32 GETTABLEKS                       R6 R7 K11 ["Value"]
       34 GETTABLEKS                       R7 R2 K12 ["dispatch"]
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R9 R5 K13 ["Instance"]
       39 MOVE                             R10 R6
       40 MOVE                             R11 R3
       41 CALL                             R8 3 -1
       42 CALL                             R7 -1 0
       43 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["dispatch"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R6 R0 K2 ["Name"]
        8 GETTABLEKS                       R5 R6 K3 ["Value"]
       10 GETTABLEKS                       R7 R0 K3 ["Value"]
       12 GETTABLEKS                       R6 R7 K3 ["Value"]
       14 CALL                             R4 2 -1
       15 CALL                             R3 -1 0
       16 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Instance"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["ClipboardProperty"]
        6 GETTABLEKS                       R3 R4 K2 ["Name"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K1 ["ClipboardProperty"]
       11 GETTABLEKS                       R4 R5 K3 ["Value"]
       13 NAMECALL                         R1 R0 K4 ["SetProperty"]
       15 CALL                             R1 3 0
       16 GETIMPORT                        R1 K8 [Enum.FinishRecordingOperation.Commit]
       18 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["props"]
        6 GETTABLEKS                       R4 R3 K2 ["ClipboardProperty"]
        8 JUMPIF                           R4 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R5 R3 K2 ["ClipboardProperty"]
       12 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       14 LOADK                            R6 K3 ["ClipboardProperty cannot be nil"]
       15 GETIMPORT                        R4 K5 [assert]
       17 CALL                             R4 2 0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R7 R2 K6 ["table"]
       21 GETTABLEKS                       R6 R7 K7 ["Items"]
       23 MOVE                             R7 R0
       24 NAMECALL                         R4 R4 K8 ["getParent"]
       26 CALL                             R4 3 1
       27 JUMPIFNOT                        R4 ; [+3]
       28 GETTABLEKS                       R5 R4 K9 ["Instance"]
       30 JUMPIF                           R5 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R5 2
       33 DUPTABLE                         R6 K13 [{"Name", "DisplayName", "DoChange"}]
       34 LOADK                            R7 K14 ["StyleEditor.PasteProperty"]
       35 SETTABLEKS                       R7 R6 K10 ["Name"]
       37 LOADK                            R7 K15 ["StyleEditor - Paste Property"]
       38 SETTABLEKS                       R7 R6 K11 ["DisplayName"]
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R7 R6 K12 ["DoChange"]
       45 CALL                             R5 1 0
       46 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Instance"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Name"]
        6 GETTABLEKS                       R2 R3 K2 ["Value"]
        8 LOADNIL                          R3
        9 NAMECALL                         R0 R0 K3 ["SetProperty"]
       11 CALL                             R0 3 0
       12 GETIMPORT                        R0 K7 [Enum.FinishRecordingOperation.Commit]
       14 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["state"]
        4 GETTABLEKS                       R5 R6 K1 ["table"]
        6 GETTABLEKS                       R4 R5 K2 ["Items"]
        8 MOVE                             R5 R0
        9 NAMECALL                         R2 R2 K3 ["getParent"]
       11 CALL                             R2 3 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R3 R2 K4 ["Instance"]
       15 JUMPIF                           R3 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R3 2
       18 DUPTABLE                         R4 K8 [{"Name", "DisplayName", "DoChange"}]
       19 LOADK                            R5 K9 ["StyleEditor.DeleteProperty"]
       20 SETTABLEKS                       R5 R4 K5 ["Name"]
       22 LOADK                            R5 K10 ["Style Editor - Delete Property"]
       23 SETTABLEKS                       R5 R4 K6 ["DisplayName"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R5 R4 K7 ["DoChange"]
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["getTokenSourceStyleSheet"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K0 ["props"]
        9 GETTABLEKS                       R4 R5 K2 ["RootInstance"]
       11 GETTABLEKS                       R6 R0 K3 ["Value"]
       13 GETTABLEKS                       R5 R6 K3 ["Value"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+11]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K4 ["createItemId"]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R5 R2 K5 ["dispatch"]
       24 GETUPVAL                         R6 3
       25 MOVE                             R7 R4
       26 CALL                             R6 1 -1
       27 CALL                             R5 -1 0
       28 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["onDoubleClick"]
        3 GETTABLEKS                       R3 R0 K1 ["Path"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_25:
        0 JUMPIFNOTEQKS                    R0 K0 ["Menu"] ; [+18]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R8 1
        4 GETTABLEKS                       R7 R8 K1 ["state"]
        6 GETTABLEKS                       R6 R7 K2 ["table"]
        8 GETTABLEKS                       R5 R6 K3 ["Items"]
       10 MOVE                             R6 R1
       11 NAMECALL                         R3 R3 K4 ["getChild"]
       13 CALL                             R3 3 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K5 ["showContextMenu"]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 0
       19 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R6 R2 K1 ["table"]
        6 GETTABLEKS                       R5 R6 K2 ["Items"]
        8 MOVE                             R6 R0
        9 NAMECALL                         R3 R3 K3 ["getChild"]
       11 CALL                             R3 3 1
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K4 ["selectRow"]
       15 GETTABLEKS                       R5 R3 K5 ["Id"]
       17 LOADB                            R6 0
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["rebuildTableState"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["state"]
        6 GETTABLEKS                       R2 R3 K2 ["rootInstance"]
        8 MOVE                             R3 R0
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["props"]
       12 GETTABLEKS                       R4 R5 K4 ["Localization"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["instanceMap"]
        5 GETGLOBAL                        R2 K1 ["connectToStyleRule"]
        7 MOVE                             R3 R0
        8 GETUPVAL                         R4 0
        9 CALL                             R2 2 1
       10 SETTABLE                         R2 R1 R0
       11 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["instanceMap"]
        5 GETTABLE                         R1 R2 R0
        6 JUMPIFNOT                        R1 ; [+15]
        7 GETTABLEKS                       R2 R1 K1 ["StyledPropertiesChangedConnection"]
        9 NAMECALL                         R2 R2 K2 ["Disconnect"]
       11 CALL                             R2 1 0
       12 GETTABLEKS                       R2 R1 K3 ["NonStyledPropertiesChangedConnection"]
       14 NAMECALL                         R2 R2 K2 ["Disconnect"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K0 ["instanceMap"]
       20 LOADNIL                          R3
       21 SETTABLE                         R3 R2 R0
       22 RETURN                           R0 0

PROTO_31:
        0 DUPTABLE                         R2 K3 [{"instanceMap", "descendantAddedConnection", "descendantRemovingConnection"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["instanceMap"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K1 ["descendantAddedConnection"]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K2 ["descendantRemovingConnection"]
       11 GETTABLEKS                       R3 R2 K0 ["instanceMap"]
       13 GETGLOBAL                        R4 K4 ["connectToStyleRule"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 CALL                             R4 2 1
       18 SETTABLE                         R4 R3 R0
       19 NAMECALL                         R3 R0 K5 ["GetDescendants"]
       21 CALL                             R3 1 3
       22 FORGPREP                         R3
       23 GETTABLEKS                       R8 R2 K0 ["instanceMap"]
       25 GETGLOBAL                        R9 K4 ["connectToStyleRule"]
       27 MOVE                             R10 R7
       28 MOVE                             R11 R1
       29 CALL                             R9 2 1
       30 SETTABLE                         R9 R8 R7
       31 FORGLOOP                         R3 2 ; [-9]
       33 GETTABLEKS                       R3 R0 K6 ["DescendantAdded"]
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 NAMECALL                         R3 R3 K7 ["Connect"]
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K1 ["descendantAddedConnection"]
       43 GETTABLEKS                       R3 R0 K8 ["DescendantRemoving"]
       45 NEWCLOSURE                       R5 P1
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 NAMECALL                         R3 R3 K7 ["Connect"]
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R2 K2 ["descendantRemovingConnection"]
       53 RETURN                           R2 1

PROTO_32:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 DUPCLOSURE                       R2 K0 [PROTO_31]
        4 GETUPVAL                         R3 0
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K1 ["connections"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K1 ["connections"]
       12 MOVE                             R5 R2
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 CALL                             R5 2 1
       16 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       18 GETIMPORT                        R3 K4 [table.insert]
       20 CALL                             R3 2 0
       21 LOADK                            R5 K5 ["StyleRule"]
       22 NAMECALL                         R3 R0 K6 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+37]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R3 R4 K7 ["getQueryTypeFromSelector"]
       29 GETTABLEKS                       R4 R0 K8 ["Selector"]
       31 CALL                             R3 1 1
       32 JUMPIFNOT                        R3 ; [+30]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R5 R6 K9 ["Type"]
       36 GETTABLEKS                       R4 R5 K10 ["Pseudo"]
       38 JUMPIFNOTEQ                      R3 R4 ; [+24]
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R4 R5 K11 ["getQueryStyleRulesForPseudo"]
       43 MOVE                             R5 R0
       44 CALL                             R4 1 1
       45 MOVE                             R5 R4
       46 LOADNIL                          R6
       47 LOADNIL                          R7
       48 FORGPREP                         R5
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R11 R12 K1 ["connections"]
       52 MOVE                             R12 R2
       53 MOVE                             R13 R9
       54 MOVE                             R14 R1
       55 CALL                             R12 2 1
       56 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       58 GETIMPORT                        R10 K4 [table.insert]
       60 CALL                             R10 2 0
       61 FORGLOOP                         R5 2 ; [-13]
       63 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["instanceMap"]
        2 JUMPIFNOT                        R1 ; [+23]
        3 GETTABLEKS                       R1 R0 K0 ["instanceMap"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["StyledPropertiesChangedConnection"]
       10 JUMPIFNOT                        R6 ; [+5]
       11 GETTABLEKS                       R6 R5 K1 ["StyledPropertiesChangedConnection"]
       13 NAMECALL                         R6 R6 K2 ["Disconnect"]
       15 CALL                             R6 1 0
       16 GETTABLEKS                       R6 R5 K3 ["NonStyledPropertiesChangedConnection"]
       18 JUMPIFNOT                        R6 ; [+5]
       19 GETTABLEKS                       R6 R5 K3 ["NonStyledPropertiesChangedConnection"]
       21 NAMECALL                         R6 R6 K2 ["Disconnect"]
       23 CALL                             R6 1 0
       24 FORGLOOP                         R1 2 ; [-17]
       26 GETTABLEKS                       R1 R0 K4 ["descendantAddedConnection"]
       28 JUMPIFNOT                        R1 ; [+5]
       29 GETTABLEKS                       R1 R0 K4 ["descendantAddedConnection"]
       31 NAMECALL                         R1 R1 K2 ["Disconnect"]
       33 CALL                             R1 1 0
       34 GETTABLEKS                       R1 R0 K5 ["descendantRemovingConnection"]
       36 JUMPIFNOT                        R1 ; [+5]
       37 GETTABLEKS                       R1 R0 K5 ["descendantRemovingConnection"]
       39 NAMECALL                         R1 R1 K2 ["Disconnect"]
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

PROTO_34:
        0 DUPCLOSURE                       R0 K0 [PROTO_33]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K1 ["connections"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R1 R4 K1 ["connections"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 MOVE                             R6 R0
       13 MOVE                             R7 R5
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 ; [-4]
       17 GETUPVAL                         R1 0
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K1 ["connections"]
       21 RETURN                           R0 0

PROTO_35:
        0 DUPTABLE                         R1 K2 [{"rootInstance", "table"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["rootInstance"]
        4 DUPTABLE                         R2 K7 [{"Columns", "Expansion", "Selection", "Items"}]
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K3 ["Columns"]
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R3 R2 K3 ["Columns"]
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K4 ["Expansion"]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K5 ["Selection"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K6 ["Items"]
       24 SETTABLEKS                       R2 R1 K1 ["table"]
       26 SETTABLEKS                       R1 R0 K8 ["state"]
       28 GETUPVAL                         R1 2
       29 JUMPIFNOT                        R1 ; [+4]
       30 NEWTABLE                         R1 0 0
       32 SETTABLEKS                       R1 R0 K9 ["lastEdit"]
       34 GETUPVAL                         R1 3
       35 MOVE                             R3 R0
       36 LOADK                            R4 K1 ["table"]
       37 NAMECALL                         R1 R1 K10 ["getStateAdaptor"]
       39 CALL                             R1 3 1
       40 GETUPVAL                         R2 3
       41 MOVE                             R4 R1
       42 NAMECALL                         R2 R2 K11 ["getCallbacks"]
       44 CALL                             R2 2 1
       45 SETTABLEKS                       R2 R0 K12 ["tableCallbacks"]
       47 SETTABLEKS                       R1 R0 K13 ["adaptor"]
       49 NEWCLOSURE                       R2 P0
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U5
       54 SETTABLEKS                       R2 R0 K14 ["onDoubleClick"]
       56 NEWCLOSURE                       R2 P1
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R2 R0 K15 ["canPasteProperty"]
       60 NEWCLOSURE                       R2 P2
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R2 R0 K16 ["canPasteSelector"]
       64 NEWCLOSURE                       R2 P3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U4
       67 SETTABLEKS                       R2 R0 K17 ["selectRow"]
       69 NEWCLOSURE                       R2 P4
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R2 R0 K18 ["onRightClickRow"]
       73 NEWCLOSURE                       R2 P5
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          UPVAL U7
       77 CAPTURE                          UPVAL U8
       78 SETTABLEKS                       R2 R0 K19 ["showEmptyRowContextMenu"]
       80 NEWCLOSURE                       R2 P6
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U3
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          UPVAL U9
       85 CAPTURE                          UPVAL U10
       86 CAPTURE                          UPVAL U11
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          UPVAL U8
       90 SETTABLEKS                       R2 R0 K20 ["showPropertyRowContextMenu"]
       92 NEWCLOSURE                       R2 P7
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U12
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          UPVAL U13
       97 SETTABLEKS                       R2 R0 K21 ["showContextMenu"]
       99 GETTABLEKS                       R2 R0 K12 ["tableCallbacks"]
      101 NEWCLOSURE                       R3 P8
      102 CAPTURE                          UPVAL U14
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R3 R2 K22 ["OnSelectionChange"]
      106 NEWCLOSURE                       R2 P9
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U15
      109 SETTABLEKS                       R2 R0 K23 ["onSizeChange"]
      111 DUPTABLE                         R2 K32 [{"linkToken", "unlinkToken", "changePropertyType", "copyProperty", "pasteProperty", "deleteProperty", "viewTheme", "rename"}]
      112 NEWCLOSURE                       R3 P10
      113 CAPTURE                          VAL R0
      114 CAPTURE                          UPVAL U3
      115 CAPTURE                          UPVAL U5
      116 CAPTURE                          VAL R1
      117 CAPTURE                          UPVAL U4
      118 CAPTURE                          UPVAL U0
      119 SETTABLEKS                       R3 R2 K24 ["linkToken"]
      121 NEWCLOSURE                       R3 P11
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U3
      124 CAPTURE                          UPVAL U16
      125 SETTABLEKS                       R3 R2 K25 ["unlinkToken"]
      127 NEWCLOSURE                       R3 P12
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U3
      130 CAPTURE                          UPVAL U17
      131 SETTABLEKS                       R3 R2 K26 ["changePropertyType"]
      133 NEWCLOSURE                       R3 P13
      134 CAPTURE                          VAL R0
      135 CAPTURE                          UPVAL U18
      136 SETTABLEKS                       R3 R2 K27 ["copyProperty"]
      138 NEWCLOSURE                       R3 P14
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U3
      141 CAPTURE                          UPVAL U19
      142 SETTABLEKS                       R3 R2 K28 ["pasteProperty"]
      144 NEWCLOSURE                       R3 P15
      145 CAPTURE                          UPVAL U3
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U19
      148 SETTABLEKS                       R3 R2 K29 ["deleteProperty"]
      150 NEWCLOSURE                       R3 P16
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U10
      153 CAPTURE                          UPVAL U14
      154 CAPTURE                          UPVAL U20
      155 SETTABLEKS                       R3 R2 K30 ["viewTheme"]
      157 NEWCLOSURE                       R3 P17
      158 CAPTURE                          VAL R0
      159 SETTABLEKS                       R3 R2 K31 ["rename"]
      161 SETTABLEKS                       R2 R0 K33 ["menuActions"]
      163 NEWCLOSURE                       R2 P18
      164 CAPTURE                          UPVAL U3
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R2 R0 K34 ["onAction"]
      168 NEWCLOSURE                       R2 P19
      169 CAPTURE                          VAL R0
      170 CAPTURE                          UPVAL U3
      171 SETTABLEKS                       R2 R0 K35 ["onPropertyPressed"]
      173 NEWCLOSURE                       R2 P20
      174 CAPTURE                          VAL R0
      175 CAPTURE                          UPVAL U21
      176 CAPTURE                          UPVAL U22
      177 SETTABLEKS                       R2 R0 K36 ["createStyleRuleConnections"]
      179 NEWCLOSURE                       R2 P21
      180 CAPTURE                          VAL R0
      181 SETTABLEKS                       R2 R0 K37 ["removeStyleRuleConnections"]
      183 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["buildItems"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R2
        5 CALL                             R3 2 1
        6 NEWTABLE                         R4 0 0
        8 NEWTABLE                         R5 0 0
       10 GETTABLEKS                       R6 R1 K1 ["rootInstance"]
       12 JUMPIFNOTEQ                      R0 R6 ; [+15]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R8 R1 K2 ["table"]
       17 GETTABLEKS                       R7 R8 K3 ["Expansion"]
       19 CALL                             R6 1 1
       20 MOVE                             R5 R6
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R8 R1 K2 ["table"]
       24 GETTABLEKS                       R7 R8 K4 ["Selection"]
       26 CALL                             R6 1 1
       27 MOVE                             R4 R6
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K5 ["expandNewRows"]
       31 MOVE                             R7 R3
       32 MOVE                             R8 R5
       33 CALL                             R6 2 0
       34 GETUPVAL                         R6 2
       35 MOVE                             R7 R1
       36 DUPTABLE                         R8 K6 [{"rootInstance", "table"}]
       37 SETTABLEKS                       R0 R8 K1 ["rootInstance"]
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R10 R1 K2 ["table"]
       42 DUPTABLE                         R11 K8 [{"Expansion", "Selection", "Items"}]
       43 SETTABLEKS                       R5 R11 K3 ["Expansion"]
       45 SETTABLEKS                       R4 R11 K4 ["Selection"]
       47 SETTABLEKS                       R3 R11 K7 ["Items"]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K2 ["table"]
       52 CALL                             R6 2 -1
       53 RETURN                           R6 -1

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["createStyleRuleConnections"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R3 K2 ["RootInstance"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R4 K1 ["RootInstance"]
        4 GETTABLEKS                       R4 R1 K1 ["RootInstance"]
        6 JUMPIFEQ                         R3 R4 ; [+8]
        8 GETTABLEKS                       R4 R0 K2 ["removeStyleRuleConnections"]
       10 CALL                             R4 0 0
       11 GETTABLEKS                       R4 R0 K3 ["createStyleRuleConnections"]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["removeStyleRuleConnections"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R2 R0 K0 ["RootInstance"]
        2 GETTABLEKS                       R3 R1 K1 ["rootInstance"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["rebuildTableState"]
        9 MOVE                             R4 R2
       10 MOVE                             R5 R1
       11 GETTABLEKS                       R6 R0 K3 ["Localization"]
       13 CALL                             R3 3 -1
       14 RETURN                           R3 -1
       15 RETURN                           R1 1

PROTO_41:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K7 [{"tableItems", "dispatch", "setState", "newValue", "path", "columnIndex", "lastEdit"}]
        2 GETUPVAL                         R7 1
        3 GETTABLEKS                       R6 R7 K8 ["table"]
        5 GETTABLEKS                       R5 R6 K9 ["Items"]
        7 SETTABLEKS                       R5 R4 K0 ["tableItems"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K1 ["dispatch"]
       12 SETTABLEKS                       R5 R4 K1 ["dispatch"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R5 R6 K10 ["adaptor"]
       17 SETTABLEKS                       R5 R4 K2 ["setState"]
       19 SETTABLEKS                       R0 R4 K3 ["newValue"]
       21 SETTABLEKS                       R1 R4 K4 ["path"]
       23 SETTABLEKS                       R2 R4 K5 ["columnIndex"]
       25 GETUPVAL                         R6 4
       26 JUMPIFNOT                        R6 ; [+4]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R5 R6 K6 ["lastEdit"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R5
       32 SETTABLEKS                       R5 R4 K6 ["lastEdit"]
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETUPVAL                         R3 0
        5 NEWTABLE                         R4 32 0
        7 GETTABLEKS                       R6 R1 K2 ["table"]
        9 GETTABLEKS                       R5 R6 K3 ["Columns"]
       11 SETTABLEKS                       R5 R4 K3 ["Columns"]
       13 LOADB                            R5 1
       14 SETTABLEKS                       R5 R4 K4 ["ClampSize"]
       16 GETTABLEKS                       R6 R1 K2 ["table"]
       18 GETTABLEKS                       R5 R6 K5 ["Expansion"]
       20 SETTABLEKS                       R5 R4 K5 ["Expansion"]
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K6 ["FullSpanEmphasis"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R5 R6 K7 ["getItemChildren"]
       28 SETTABLEKS                       R5 R4 K8 ["GetChildren"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R5 R6 K9 ["getItemId"]
       33 SETTABLEKS                       R5 R4 K10 ["GetItemId"]
       35 LOADN                            R5 2
       36 SETTABLEKS                       R5 R4 K11 ["LayoutOrder"]
       38 GETTABLEKS                       R5 R0 K12 ["onAction"]
       40 SETTABLEKS                       R5 R4 K13 ["OnCellAction"]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U3
       48 SETTABLEKS                       R5 R4 K14 ["OnCellEdited"]
       50 GETTABLEKS                       R5 R0 K15 ["onDoubleClick"]
       52 SETTABLEKS                       R5 R4 K16 ["OnCellDoubleClick"]
       54 GETTABLEKS                       R5 R0 K17 ["onSizeChange"]
       56 SETTABLEKS                       R5 R4 K18 ["OnSizeChange"]
       58 GETUPVAL                         R5 4
       59 SETTABLEKS                       R5 R4 K19 ["Renderers"]
       61 GETTABLEKS                       R5 R0 K20 ["onRightClickRow"]
       63 SETTABLEKS                       R5 R4 K21 ["RightClick"]
       65 GETTABLEKS                       R6 R1 K2 ["table"]
       67 GETTABLEKS                       R5 R6 K22 ["Items"]
       69 SETTABLEKS                       R5 R4 K23 ["RootItems"]
       71 GETUPVAL                         R5 5
       72 SETTABLEKS                       R5 R4 K24 ["RowHeight"]
       74 GETTABLEKS                       R6 R1 K2 ["table"]
       76 GETTABLEKS                       R5 R6 K25 ["Selection"]
       78 SETTABLEKS                       R5 R4 K25 ["Selection"]
       80 LOADB                            R5 1
       81 SETTABLEKS                       R5 R4 K26 ["Scroll"]
       83 DUPTABLE                         R5 K28 [{"VerticalScrollBarInset"}]
       84 GETIMPORT                        R6 K32 [Enum.ScrollBarInset.ScrollBar]
       86 SETTABLEKS                       R6 R5 K27 ["VerticalScrollBarInset"]
       88 SETTABLEKS                       R5 R4 K33 ["ScrollProps"]
       90 LOADB                            R5 0
       91 SETTABLEKS                       R5 R4 K34 ["ShowHeader"]
       93 LOADB                            R5 1
       94 SETTABLEKS                       R5 R4 K35 ["UseScale"]
       96 LOADK                            R5 K36 ["compact"]
       97 SETTABLEKS                       R5 R4 K37 ["Variant"]
       99 GETUPVAL                         R6 6
      100 GETTABLEKS                       R5 R6 K38 ["Tag"]
      102 LOADK                            R6 K36 ["compact"]
      103 SETTABLE                         R6 R4 R5
      104 GETTABLEKS                       R5 R0 K39 ["tableCallbacks"]
      106 CALL                             R3 2 1
      107 GETUPVAL                         R5 6
      108 GETTABLEKS                       R4 R5 K40 ["createElement"]
      110 GETUPVAL                         R5 7
      111 MOVE                             R6 R3
      112 CALL                             R4 2 -1
      113 RETURN                           R4 -1

PROTO_43:
        0 DUPTABLE                         R1 K2 [{"ClipboardInstances", "ClipboardProperty"}]
        1 GETTABLEKS                       R3 R0 K3 ["Clipboard"]
        3 GETTABLEKS                       R2 R3 K4 ["Instances"]
        5 SETTABLEKS                       R2 R1 K0 ["ClipboardInstances"]
        7 GETTABLEKS                       R3 R0 K3 ["Clipboard"]
        9 GETTABLEKS                       R2 R3 K5 ["Property"]
       11 SETTABLEKS                       R2 R1 K1 ["ClipboardProperty"]
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R5 K5 [script]
        9 GETTABLEKS                       R4 R5 K6 ["Parent"]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K6 ["Parent"]
       15 GETTABLEKS                       R1 R2 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R4 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R4 K10 ["React"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R5 R1 K9 ["Packages"]
       28 GETTABLEKS                       R4 R5 K11 ["RoactRodux"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R6 R1 K9 ["Packages"]
       35 GETTABLEKS                       R5 R6 K12 ["Dash"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R5 R4 K13 ["copy"]
       40 GETTABLEKS                       R6 R4 K14 ["join"]
       42 GETTABLEKS                       R7 R4 K15 ["joinDeep"]
       44 GETIMPORT                        R8 K8 [require]
       46 GETTABLEKS                       R10 R1 K9 ["Packages"]
       48 GETTABLEKS                       R9 R10 K16 ["Framework"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R8 K17 ["UI"]
       53 GETTABLEKS                       R10 R9 K18 ["TreeTable"]
       55 GETTABLEKS                       R11 R8 K19 ["ContextServices"]
       57 GETTABLEKS                       R12 R11 K20 ["withContext"]
       59 GETIMPORT                        R13 K8 [require]
       61 GETTABLEKS                       R15 R1 K21 ["Src"]
       63 GETTABLEKS                       R14 R15 K22 ["Types"]
       65 CALL                             R13 1 1
       66 GETIMPORT                        R14 K8 [require]
       68 GETTABLEKS                       R17 R1 K21 ["Src"]
       70 GETTABLEKS                       R16 R17 K23 ["Reducers"]
       72 GETTABLEKS                       R15 R16 K24 ["Clipboard"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K8 [require]
       77 GETTABLEKS                       R18 R1 K21 ["Src"]
       79 GETTABLEKS                       R17 R18 K23 ["Reducers"]
       81 GETTABLEKS                       R16 R17 K25 ["RootReducer"]
       83 CALL                             R15 1 1
       84 GETTABLEKS                       R17 R1 K21 ["Src"]
       86 GETTABLEKS                       R16 R17 K26 ["Actions"]
       88 GETIMPORT                        R17 K8 [require]
       90 GETTABLEKS                       R19 R16 K24 ["Clipboard"]
       92 GETTABLEKS                       R18 R19 K27 ["CopyPropertyToClipboard"]
       94 CALL                             R17 1 1
       95 GETIMPORT                        R18 K8 [require]
       97 GETTABLEKS                       R20 R16 K28 ["Window"]
       99 GETTABLEKS                       R19 R20 K29 ["SelectItem"]
      101 CALL                             R18 1 1
      102 GETTABLEKS                       R20 R1 K21 ["Src"]
      104 GETTABLEKS                       R19 R20 K30 ["Thunks"]
      106 GETIMPORT                        R20 K8 [require]
      108 GETTABLEKS                       R22 R19 K31 ["Change"]
      110 GETTABLEKS                       R21 R22 K32 ["SetStyleRulePropertyType"]
      112 CALL                             R20 1 1
      113 GETIMPORT                        R21 K8 [require]
      115 GETTABLEKS                       R23 R19 K33 ["ContextMenu"]
      117 GETTABLEKS                       R22 R23 K34 ["ShowStyleRuleMenu"]
      119 CALL                             R21 1 1
      120 GETIMPORT                        R22 K8 [require]
      122 GETTABLEKS                       R24 R19 K31 ["Change"]
      124 GETTABLEKS                       R23 R24 K35 ["UnlinkStyleRulePropertyTokenReference"]
      126 CALL                             R22 1 1
      127 GETIMPORT                        R23 K8 [require]
      129 GETTABLEKS                       R25 R19 K33 ["ContextMenu"]
      131 GETTABLEKS                       R24 R25 K36 ["ShowFolderMenu"]
      133 CALL                             R23 1 1
      134 GETIMPORT                        R24 K8 [require]
      136 GETTABLEKS                       R27 R1 K21 ["Src"]
      138 GETTABLEKS                       R26 R27 K37 ["Util"]
      140 GETTABLEKS                       R25 R26 K38 ["mapDispatchToProps"]
      142 CALL                             R24 1 1
      143 GETIMPORT                        R25 K8 [require]
      145 GETTABLEKS                       R28 R1 K21 ["Src"]
      147 GETTABLEKS                       R27 R28 K37 ["Util"]
      149 GETTABLEKS                       R26 R27 K39 ["DesignHelpers"]
      151 CALL                             R25 1 1
      152 GETIMPORT                        R26 K8 [require]
      154 GETTABLEKS                       R29 R1 K21 ["Src"]
      156 GETTABLEKS                       R28 R29 K37 ["Util"]
      158 GETTABLEKS                       R27 R28 K40 ["MenuHelpers"]
      160 CALL                             R26 1 1
      161 GETIMPORT                        R27 K8 [require]
      163 GETTABLEKS                       R30 R1 K21 ["Src"]
      165 GETTABLEKS                       R29 R30 K41 ["Resources"]
      167 GETTABLEKS                       R28 R29 K42 ["ModernIcons"]
      169 CALL                             R27 1 1
      170 GETIMPORT                        R28 K8 [require]
      172 GETTABLEKS                       R31 R1 K21 ["Src"]
      174 GETTABLEKS                       R30 R31 K37 ["Util"]
      176 GETTABLEKS                       R29 R30 K43 ["StyleSchema"]
      178 CALL                             R28 1 1
      179 GETIMPORT                        R29 K8 [require]
      181 GETTABLEKS                       R32 R1 K21 ["Src"]
      183 GETTABLEKS                       R31 R32 K37 ["Util"]
      185 GETTABLEKS                       R30 R31 K44 ["SelectorHelpers"]
      187 CALL                             R29 1 1
      188 GETIMPORT                        R30 K8 [require]
      190 GETTABLEKS                       R33 R1 K21 ["Src"]
      192 GETTABLEKS                       R32 R33 K37 ["Util"]
      194 GETTABLEKS                       R31 R32 K45 ["StyleQueryHelpers"]
      196 CALL                             R30 1 1
      197 GETIMPORT                        R31 K8 [require]
      199 GETTABLEKS                       R34 R1 K21 ["Src"]
      201 GETTABLEKS                       R33 R34 K37 ["Util"]
      203 GETTABLEKS                       R32 R33 K46 ["TokenHelpers"]
      205 CALL                             R31 1 1
      206 GETIMPORT                        R32 K8 [require]
      208 GETTABLEKS                       R35 R1 K21 ["Src"]
      210 GETTABLEKS                       R34 R35 K41 ["Resources"]
      212 GETTABLEKS                       R33 R34 K47 ["PluginStyles"]
      214 CALL                             R32 1 1
      215 GETIMPORT                        R33 K8 [require]
      217 GETTABLEKS                       R35 R1 K21 ["Src"]
      219 GETTABLEKS                       R34 R35 K48 ["Renderers"]
      221 CALL                             R33 1 1
      222 GETIMPORT                        R34 K8 [require]
      224 GETTABLEKS                       R37 R1 K21 ["Src"]
      226 GETTABLEKS                       R36 R37 K37 ["Util"]
      228 GETTABLEKS                       R35 R36 K49 ["bind"]
      230 CALL                             R34 1 1
      231 GETIMPORT                        R35 K8 [require]
      233 GETTABLEKS                       R38 R1 K21 ["Src"]
      235 GETTABLEKS                       R37 R38 K37 ["Util"]
      237 GETTABLEKS                       R36 R37 K50 ["recordChange"]
      239 CALL                             R35 1 1
      240 MOVE                             R36 R0
      241 CALL                             R35 1 1
      242 GETIMPORT                        R36 K8 [require]
      244 GETTABLEKS                       R39 R1 K21 ["Src"]
      246 GETTABLEKS                       R38 R39 K37 ["Util"]
      248 GETTABLEKS                       R37 R38 K51 ["TreeTableHelpers"]
      250 CALL                             R36 1 1
      251 GETIMPORT                        R37 K8 [require]
      253 GETTABLEKS                       R41 R1 K21 ["Src"]
      255 GETTABLEKS                       R40 R41 K52 ["Contexts"]
      257 GETTABLEKS                       R39 R40 K53 ["Telemetry"]
      259 GETTABLEKS                       R38 R39 K54 ["TelemetryContext"]
      261 CALL                             R37 1 1
      262 GETIMPORT                        R38 K8 [require]
      264 GETIMPORT                        R41 K5 [script]
      266 GETTABLEKS                       R40 R41 K6 ["Parent"]
      268 GETTABLEKS                       R39 R40 K55 ["onEdited"]
      270 CALL                             R38 1 1
      271 GETIMPORT                        R39 K8 [require]
      273 GETTABLEKS                       R42 R1 K21 ["Src"]
      275 GETTABLEKS                       R41 R42 K56 ["Flags"]
      277 GETTABLEKS                       R40 R41 K57 ["getFFlagStyleEditorNumberSequenceUpdate"]
      279 CALL                             R39 1 1
      280 CALL                             R39 0 1
      281 GETIMPORT                        R40 K8 [require]
      283 GETIMPORT                        R43 K5 [script]
      285 GETTABLEKS                       R42 R43 K6 ["Parent"]
      287 GETTABLEKS                       R41 R42 K58 ["Tree"]
      289 CALL                             R40 1 1
      290 GETTABLEKS                       R41 R40 K59 ["EditTree"]
      292 LOADK                            R44 K60 ["RowHeight"]
      293 NAMECALL                         R42 R32 K61 ["GetAttribute"]
      295 CALL                             R42 2 1
      296 GETTABLEKS                       R43 R2 K62 ["PureComponent"]
      298 LOADK                            R45 K63 ["SelectorPropertyTable"]
      299 NAMECALL                         R43 R43 K64 ["extend"]
      301 CALL                             R43 2 1
      302 DUPCLOSURE                       R44 K65 [PROTO_0]
      303 SETGLOBAL                        R44 K66 ["connectToStyleRule"]
      305 NEWCLOSURE                       R44 P1
      306 CAPTURE                          VAL R5
      307 CAPTURE                          VAL R40
      308 CAPTURE                          VAL R39
      309 CAPTURE                          VAL R41
      310 CAPTURE                          VAL R6
      311 CAPTURE                          VAL R28
      312 CAPTURE                          VAL R27
      313 CAPTURE                          VAL R34
      314 CAPTURE                          VAL R26
      315 CAPTURE                          VAL R29
      316 CAPTURE                          VAL R31
      317 CAPTURE                          VAL R25
      318 CAPTURE                          VAL R21
      319 CAPTURE                          VAL R23
      320 CAPTURE                          VAL R36
      321 CAPTURE                          VAL R7
      322 CAPTURE                          VAL R22
      323 CAPTURE                          VAL R20
      324 CAPTURE                          VAL R17
      325 CAPTURE                          VAL R35
      326 CAPTURE                          VAL R18
      327 CAPTURE                          REF R43
      328 CAPTURE                          VAL R30
      329 SETTABLEKS                       R44 R43 K67 ["init"]
      331 DUPCLOSURE                       R44 K68 [PROTO_36]
      332 CAPTURE                          VAL R40
      333 CAPTURE                          VAL R5
      334 CAPTURE                          VAL R6
      335 SETTABLEKS                       R44 R43 K69 ["rebuildTableState"]
      337 DUPCLOSURE                       R44 K70 [PROTO_37]
      338 SETTABLEKS                       R44 R43 K71 ["didMount"]
      340 DUPCLOSURE                       R44 K72 [PROTO_38]
      341 SETTABLEKS                       R44 R43 K73 ["didUpdate"]
      343 DUPCLOSURE                       R44 K74 [PROTO_39]
      344 SETTABLEKS                       R44 R43 K75 ["willUnmount"]
      346 NEWCLOSURE                       R44 P6
      347 CAPTURE                          REF R43
      348 SETTABLEKS                       R44 R43 K76 ["getDerivedStateFromProps"]
      350 DUPCLOSURE                       R44 K77 [PROTO_42]
      351 CAPTURE                          VAL R6
      352 CAPTURE                          VAL R40
      353 CAPTURE                          VAL R38
      354 CAPTURE                          VAL R39
      355 CAPTURE                          VAL R33
      356 CAPTURE                          VAL R42
      357 CAPTURE                          VAL R2
      358 CAPTURE                          VAL R10
      359 SETTABLEKS                       R44 R43 K78 ["render"]
      361 MOVE                             R44 R12
      362 DUPTABLE                         R45 K81 [{"Plugin", "Localization", "Telemetry"}]
      363 GETTABLEKS                       R46 R11 K79 ["Plugin"]
      365 SETTABLEKS                       R46 R45 K79 ["Plugin"]
      367 GETTABLEKS                       R46 R11 K80 ["Localization"]
      369 SETTABLEKS                       R46 R45 K80 ["Localization"]
      371 SETTABLEKS                       R37 R45 K53 ["Telemetry"]
      373 CALL                             R44 1 1
      374 MOVE                             R45 R43
      375 CALL                             R44 1 1
      376 MOVE                             R43 R44
      377 GETTABLEKS                       R44 R3 K82 ["connect"]
      379 DUPCLOSURE                       R45 K83 [PROTO_43]
      380 MOVE                             R46 R24
      381 CALL                             R44 2 1
      382 MOVE                             R45 R43
      383 CALL                             R44 1 -1
      384 CLOSEUPVALS                      R43
      385 RETURN                           R44 -1
