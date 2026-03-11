PROTO_0:
        0 DUPTABLE                         R2 K2 [{"StyledPropertiesChangedConnection", "NonStyledPropertiesChangedConnection"}]
        1 GETTABLEKS                       R3 R0 K3 ["StyleRulePropertyChanged"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K4 ["Connect"]
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K0 ["StyledPropertiesChangedConnection"]
        9 GETTABLEKS                       R3 R0 K5 ["Changed"]
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R3 K4 ["Connect"]
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K1 ["NonStyledPropertiesChangedConnection"]
       17 RETURN                           R2 1

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
        3 GETTABLEKS                       R2 R0 K1 ["ClipboardInstance"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

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
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Localization"]
        5 GETTABLEKS                       R6 R0 K2 ["Value"]
        7 GETTABLEKS                       R5 R6 K3 ["Schema"]
        9 GETTABLEKS                       R4 R5 K4 ["Type"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K5 ["TokenReferenceSchema"]
       14 GETTABLEKS                       R5 R6 K4 ["Type"]
       16 JUMPIFEQ                         R4 R5 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R4 R5 K6 ["getSelectorChain"]
       23 GETTABLEKS                       R5 R1 K7 ["RootInstance"]
       25 CALL                             R4 1 1
       26 JUMPIFNOT                        R4 ; [+7]
       27 GETTABLEKS                       R6 R4 K8 ["Class"]
       29 JUMPIFNOTEQKS                    R6 K9 [""] ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 JUMP                             ; [+1]
       34 LOADB                            R5 0
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R6 R7 K10 ["getTokenSourceStyleSheet"]
       38 GETTABLEKS                       R7 R1 K7 ["RootInstance"]
       40 GETTABLEKS                       R9 R0 K2 ["Value"]
       42 GETTABLEKS                       R8 R9 K2 ["Value"]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R7 R8 K11 ["isTheme"]
       48 MOVE                             R8 R6
       49 CALL                             R7 1 1
       50 JUMPIFNOT                        R3 ; [+34]
       51 DUPTABLE                         R8 K16 [{"Id", "Text", "Icon", "OnItemClicked"}]
       52 LOADK                            R9 K17 ["UnlinkToken"]
       53 SETTABLEKS                       R9 R8 K12 ["Id"]
       55 LOADK                            R11 K18 ["ContextMenu"]
       56 LOADK                            R12 K17 ["UnlinkToken"]
       57 NAMECALL                         R9 R2 K19 ["getText"]
       59 CALL                             R9 3 1
       60 SETTABLEKS                       R9 R8 K13 ["Text"]
       62 GETUPVAL                         R11 5
       63 GETTABLEKS                       R10 R11 K20 ["Standard"]
       65 GETTABLEKS                       R9 R10 K21 ["TokenSheet"]
       67 CALL                             R9 0 1
       68 SETTABLEKS                       R9 R8 K14 ["Icon"]
       70 GETUPVAL                         R9 6
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R11 R12 K22 ["menuActions"]
       74 GETTABLEKS                       R10 R11 K23 ["unlinkToken"]
       76 NEWTABLE                         R11 0 1
       78 MOVE                             R12 R0
       79 SETLIST                          R11 R12 1 [1]
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K15 ["OnItemClicked"]
       84 JUMP                             ; [+33]
       85 DUPTABLE                         R8 K16 [{"Id", "Text", "Icon", "OnItemClicked"}]
       86 LOADK                            R9 K24 ["LinkToken"]
       87 SETTABLEKS                       R9 R8 K12 ["Id"]
       89 LOADK                            R11 K18 ["ContextMenu"]
       90 LOADK                            R12 K24 ["LinkToken"]
       91 NAMECALL                         R9 R2 K19 ["getText"]
       93 CALL                             R9 3 1
       94 SETTABLEKS                       R9 R8 K13 ["Text"]
       96 GETUPVAL                         R11 5
       97 GETTABLEKS                       R10 R11 K20 ["Standard"]
       99 GETTABLEKS                       R9 R10 K21 ["TokenSheet"]
      101 CALL                             R9 0 1
      102 SETTABLEKS                       R9 R8 K14 ["Icon"]
      104 GETUPVAL                         R9 6
      105 GETUPVAL                         R12 0
      106 GETTABLEKS                       R11 R12 K22 ["menuActions"]
      108 GETTABLEKS                       R10 R11 K25 ["linkToken"]
      110 NEWTABLE                         R11 0 1
      112 MOVE                             R12 R0
      113 SETLIST                          R11 R12 1 [1]
      115 CALL                             R9 2 1
      116 SETTABLEKS                       R9 R8 K15 ["OnItemClicked"]
      118 GETUPVAL                         R10 1
      119 GETTABLEKS                       R9 R10 K26 ["getPossiblePropertyTypes"]
      121 GETTABLEKS                       R11 R0 K27 ["Name"]
      123 GETTABLEKS                       R10 R11 K2 ["Value"]
      125 CALL                             R9 1 1
      126 GETUPVAL                         R11 7
      127 GETTABLEKS                       R10 R11 K28 ["getAttributeTypeActions"]
      129 MOVE                             R11 R9
      130 GETUPVAL                         R12 6
      131 GETUPVAL                         R15 0
      132 GETTABLEKS                       R14 R15 K22 ["menuActions"]
      134 GETTABLEKS                       R13 R14 K29 ["changePropertyType"]
      136 NEWTABLE                         R14 0 1
      138 MOVE                             R15 R0
      139 SETLIST                          R14 R15 1 [1]
      141 CALL                             R12 2 -1
      142 CALL                             R10 -1 1
      143 DUPTABLE                         R11 K31 [{"Id", "Children"}]
      144 LOADK                            R12 K32 ["PropertyRowMenu"]
      145 SETTABLEKS                       R12 R11 K12 ["Id"]
      147 NEWTABLE                         R12 0 6
      149 MOVE                             R13 R8
      150 DUPTABLE                         R14 K34 [{"Id", "Text", "Icon", "Hidden", "OnItemClicked"}]
      151 LOADK                            R15 K35 ["ViewTheme"]
      152 SETTABLEKS                       R15 R14 K12 ["Id"]
      154 LOADK                            R17 K18 ["ContextMenu"]
      155 JUMPIFNOT                        R7 ; [+2]
      156 LOADK                            R18 K35 ["ViewTheme"]
      157 JUMP                             ; [+1]
      158 LOADK                            R18 K36 ["ViewToken"]
      159 NAMECALL                         R15 R2 K19 ["getText"]
      161 CALL                             R15 3 1
      162 SETTABLEKS                       R15 R14 K13 ["Text"]
      164 GETUPVAL                         R16 5
      165 GETTABLEKS                       R15 R16 K37 ["open"]
      167 CALL                             R15 0 1
      168 SETTABLEKS                       R15 R14 K14 ["Icon"]
      170 NOT                              R15 R3
      171 SETTABLEKS                       R15 R14 K33 ["Hidden"]
      173 GETUPVAL                         R15 6
      174 GETUPVAL                         R18 0
      175 GETTABLEKS                       R17 R18 K22 ["menuActions"]
      177 GETTABLEKS                       R16 R17 K38 ["viewTheme"]
      179 NEWTABLE                         R17 0 1
      181 MOVE                             R18 R0
      182 SETLIST                          R17 R18 1 [1]
      184 CALL                             R15 2 1
      185 SETTABLEKS                       R15 R14 K15 ["OnItemClicked"]
      187 DUPTABLE                         R15 K39 [{"Id", "Text", "Hidden", "Children"}]
      188 LOADK                            R16 K40 ["ChangeType"]
      189 SETTABLEKS                       R16 R15 K12 ["Id"]
      191 LOADK                            R18 K18 ["ContextMenu"]
      192 LOADK                            R19 K40 ["ChangeType"]
      193 NAMECALL                         R16 R2 K19 ["getText"]
      195 CALL                             R16 3 1
      196 SETTABLEKS                       R16 R15 K13 ["Text"]
      198 MOVE                             R16 R5
      199 JUMPIF                           R16 ; [+6]
      200 LENGTH                           R17 R9
      201 LOADN                            R18 1
      202 JUMPIFLE                         R17 R18 ; [+2]
      204 LOADB                            R16 0 +1
      205 LOADB                            R16 1
      206 SETTABLEKS                       R16 R15 K33 ["Hidden"]
      208 SETTABLEKS                       R10 R15 K30 ["Children"]
      210 DUPTABLE                         R16 K16 [{"Id", "Text", "Icon", "OnItemClicked"}]
      211 LOADK                            R17 K41 ["Copy"]
      212 SETTABLEKS                       R17 R16 K12 ["Id"]
      214 LOADK                            R19 K18 ["ContextMenu"]
      215 LOADK                            R20 K41 ["Copy"]
      216 NAMECALL                         R17 R2 K19 ["getText"]
      218 CALL                             R17 3 1
      219 SETTABLEKS                       R17 R16 K13 ["Text"]
      221 GETUPVAL                         R18 5
      222 GETTABLEKS                       R17 R18 K42 ["copy"]
      224 CALL                             R17 0 1
      225 SETTABLEKS                       R17 R16 K14 ["Icon"]
      227 GETUPVAL                         R17 6
      228 GETUPVAL                         R20 0
      229 GETTABLEKS                       R19 R20 K22 ["menuActions"]
      231 GETTABLEKS                       R18 R19 K43 ["copyProperty"]
      233 NEWTABLE                         R19 0 1
      235 MOVE                             R20 R0
      236 SETLIST                          R19 R20 1 [1]
      238 CALL                             R17 2 1
      239 SETTABLEKS                       R17 R16 K15 ["OnItemClicked"]
      241 DUPTABLE                         R17 K45 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      242 LOADK                            R18 K46 ["Paste"]
      243 SETTABLEKS                       R18 R17 K12 ["Id"]
      245 LOADK                            R20 K18 ["ContextMenu"]
      246 LOADK                            R21 K46 ["Paste"]
      247 NAMECALL                         R18 R2 K19 ["getText"]
      249 CALL                             R18 3 1
      250 SETTABLEKS                       R18 R17 K13 ["Text"]
      252 GETUPVAL                         R19 5
      253 GETTABLEKS                       R18 R19 K47 ["paste"]
      255 CALL                             R18 0 1
      256 SETTABLEKS                       R18 R17 K14 ["Icon"]
      258 GETUPVAL                         R19 0
      259 GETTABLEKS                       R18 R19 K48 ["canPasteProperty"]
      261 CALL                             R18 0 1
      262 SETTABLEKS                       R18 R17 K44 ["Enabled"]
      264 GETUPVAL                         R18 6
      265 GETUPVAL                         R21 0
      266 GETTABLEKS                       R20 R21 K22 ["menuActions"]
      268 GETTABLEKS                       R19 R20 K49 ["pasteProperty"]
      270 NEWTABLE                         R20 0 1
      272 MOVE                             R21 R0
      273 SETLIST                          R20 R21 1 [1]
      275 CALL                             R18 2 1
      276 SETTABLEKS                       R18 R17 K15 ["OnItemClicked"]
      278 DUPTABLE                         R18 K16 [{"Id", "Text", "Icon", "OnItemClicked"}]
      279 LOADK                            R19 K50 ["Delete"]
      280 SETTABLEKS                       R19 R18 K12 ["Id"]
      282 LOADK                            R21 K18 ["ContextMenu"]
      283 LOADK                            R22 K50 ["Delete"]
      284 NAMECALL                         R19 R2 K19 ["getText"]
      286 CALL                             R19 3 1
      287 SETTABLEKS                       R19 R18 K13 ["Text"]
      289 GETUPVAL                         R20 5
      290 GETTABLEKS                       R19 R20 K51 ["delete"]
      292 CALL                             R19 0 1
      293 SETTABLEKS                       R19 R18 K14 ["Icon"]
      295 GETUPVAL                         R19 6
      296 GETUPVAL                         R22 0
      297 GETTABLEKS                       R21 R22 K22 ["menuActions"]
      299 GETTABLEKS                       R20 R21 K52 ["deleteProperty"]
      301 NEWTABLE                         R21 0 1
      303 MOVE                             R22 R0
      304 SETLIST                          R21 R22 1 [1]
      306 CALL                             R19 2 1
      307 SETTABLEKS                       R19 R18 K15 ["OnItemClicked"]
      309 SETLIST                          R12 R13 6 [1]
      311 SETTABLEKS                       R12 R11 K30 ["Children"]
      313 GETTABLEKS                       R12 R1 K53 ["Plugin"]
      315 NAMECALL                         R12 R12 K54 ["get"]
      317 CALL                             R12 1 1
      318 GETTABLEKS                       R13 R1 K55 ["Telemetry"]
      320 NAMECALL                         R13 R13 K54 ["get"]
      322 CALL                             R13 1 1
      323 GETUPVAL                         R15 7
      324 GETTABLEKS                       R14 R15 K56 ["trackClicks"]
      326 MOVE                             R15 R11
      327 MOVE                             R16 R13
      328 CALL                             R14 2 0
      329 GETUPVAL                         R15 7
      330 GETTABLEKS                       R14 R15 K57 ["showContextMenu"]
      332 MOVE                             R15 R12
      333 MOVE                             R16 R11
      334 CALL                             R14 2 0
      335 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R0 K1 ["Instance"]
        5 FASTCALL1                        TYPEOF R3 ; [+2]
        6 GETIMPORT                        R2 K3 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K1 ["Instance"] ; [+22]
       11 GETTABLEKS                       R2 R1 K4 ["dispatch"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R4 R0 K1 ["Instance"]
       16 GETUPVAL                         R5 2
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K5 ["menuActions"]
       20 GETTABLEKS                       R6 R7 K6 ["rename"]
       22 NEWTABLE                         R7 0 1
       24 MOVE                             R8 R0
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 LOADB                            R6 0
       29 CALL                             R3 3 -1
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R2 R0 K7 ["Value"]
       34 JUMPIFNOT                        R2 ; [+5]
       35 GETTABLEKS                       R3 R0 K7 ["Value"]
       37 GETTABLEKS                       R2 R3 K8 ["Schema"]
       39 JUMPIF                           R2 ; [+1]
       40 RETURN                           R0 0
       41 GETTABLEKS                       R4 R0 K7 ["Value"]
       43 GETTABLEKS                       R3 R4 K8 ["Schema"]
       45 GETTABLEKS                       R2 R3 K9 ["Type"]
       47 JUMPIFNOTEQKS                    R2 K10 ["Empty"] ; [+7]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R2 R3 K11 ["showEmptyRowContextMenu"]
       52 MOVE                             R3 R0
       53 CALL                             R2 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R2 R3 K12 ["showPropertyRowContextMenu"]
       58 MOVE                             R3 R0
       59 CALL                             R2 1 0
       60 RETURN                           R0 0

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
        0 LOADK                            R3 K0 ["StyleRule"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["instanceMap"]
       10 GETGLOBAL                        R2 K3 ["connectToStyleRule"]
       12 MOVE                             R3 R0
       13 GETUPVAL                         R4 0
       14 CALL                             R2 2 1
       15 SETTABLE                         R2 R1 R0
       16 RETURN                           R0 0

PROTO_30:
        0 LOADK                            R3 K0 ["StyleRule"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+22]
        5 GETUPVAL                         R1 0
        6 CALL                             R1 0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["instanceMap"]
       10 GETTABLE                         R1 R2 R0
       11 JUMPIFNOT                        R1 ; [+15]
       12 GETTABLEKS                       R2 R1 K3 ["StyledPropertiesChangedConnection"]
       14 NAMECALL                         R2 R2 K4 ["Disconnect"]
       16 CALL                             R2 1 0
       17 GETTABLEKS                       R2 R1 K5 ["NonStyledPropertiesChangedConnection"]
       19 NAMECALL                         R2 R2 K4 ["Disconnect"]
       21 CALL                             R2 1 0
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R2 R3 K2 ["instanceMap"]
       25 LOADNIL                          R3
       26 SETTABLE                         R3 R2 R0
       27 RETURN                           R0 0

PROTO_31:
        0 DUPTABLE                         R2 K3 [{"instanceMap", "descendantAddedConnection", "descendantRemovingConnection"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["instanceMap"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K1 ["descendantAddedConnection"]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K2 ["descendantRemovingConnection"]
       11 LOADK                            R5 K4 ["StyleRule"]
       12 NAMECALL                         R3 R0 K5 ["IsA"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+8]
       16 GETTABLEKS                       R3 R2 K0 ["instanceMap"]
       18 GETGLOBAL                        R4 K6 ["connectToStyleRule"]
       20 MOVE                             R5 R0
       21 MOVE                             R6 R1
       22 CALL                             R4 2 1
       23 SETTABLE                         R4 R3 R0
       24 NAMECALL                         R3 R0 K7 ["GetDescendants"]
       26 CALL                             R3 1 3
       27 FORGPREP                         R3
       28 LOADK                            R10 K4 ["StyleRule"]
       29 NAMECALL                         R8 R7 K5 ["IsA"]
       31 CALL                             R8 2 1
       32 JUMPIFNOT                        R8 ; [+8]
       33 GETTABLEKS                       R8 R2 K0 ["instanceMap"]
       35 GETGLOBAL                        R9 K6 ["connectToStyleRule"]
       37 MOVE                             R10 R7
       38 MOVE                             R11 R1
       39 CALL                             R9 2 1
       40 SETTABLE                         R9 R8 R7
       41 FORGLOOP                         R3 2 ; [-14]
       43 GETTABLEKS                       R3 R0 K8 ["DescendantAdded"]
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 NAMECALL                         R3 R3 K9 ["Connect"]
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R2 K1 ["descendantAddedConnection"]
       53 GETTABLEKS                       R3 R0 K10 ["DescendantRemoving"]
       55 NEWCLOSURE                       R5 P1
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 NAMECALL                         R3 R3 K9 ["Connect"]
       60 CALL                             R3 2 1
       61 SETTABLEKS                       R3 R2 K2 ["descendantRemovingConnection"]
       63 RETURN                           R2 1

PROTO_32:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 DUPCLOSURE                       R2 K0 [PROTO_31]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 CALL                             R4 2 1
        9 SETTABLEKS                       R4 R3 K1 ["connections"]
       11 RETURN                           R0 0

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
        6 MOVE                             R1 R0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["connections"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R1 K1 ["connections"]
       15 RETURN                           R0 0

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
       82 CAPTURE                          UPVAL U5
       83 CAPTURE                          UPVAL U9
       84 CAPTURE                          UPVAL U10
       85 CAPTURE                          UPVAL U11
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          UPVAL U8
       89 SETTABLEKS                       R2 R0 K20 ["showPropertyRowContextMenu"]
       91 NEWCLOSURE                       R2 P7
       92 CAPTURE                          VAL R0
       93 CAPTURE                          UPVAL U12
       94 CAPTURE                          UPVAL U7
       95 SETTABLEKS                       R2 R0 K21 ["showContextMenu"]
       97 GETTABLEKS                       R2 R0 K12 ["tableCallbacks"]
       99 NEWCLOSURE                       R3 P8
      100 CAPTURE                          UPVAL U13
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R3 R2 K22 ["OnSelectionChange"]
      104 NEWCLOSURE                       R2 P9
      105 CAPTURE                          VAL R0
      106 CAPTURE                          UPVAL U14
      107 SETTABLEKS                       R2 R0 K23 ["onSizeChange"]
      109 DUPTABLE                         R2 K32 [{"linkToken", "unlinkToken", "changePropertyType", "copyProperty", "pasteProperty", "deleteProperty", "viewTheme", "rename"}]
      110 NEWCLOSURE                       R3 P10
      111 CAPTURE                          VAL R0
      112 CAPTURE                          UPVAL U3
      113 CAPTURE                          UPVAL U5
      114 CAPTURE                          VAL R1
      115 CAPTURE                          UPVAL U4
      116 CAPTURE                          UPVAL U0
      117 SETTABLEKS                       R3 R2 K24 ["linkToken"]
      119 NEWCLOSURE                       R3 P11
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U3
      122 CAPTURE                          UPVAL U15
      123 SETTABLEKS                       R3 R2 K25 ["unlinkToken"]
      125 NEWCLOSURE                       R3 P12
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U3
      128 CAPTURE                          UPVAL U16
      129 SETTABLEKS                       R3 R2 K26 ["changePropertyType"]
      131 NEWCLOSURE                       R3 P13
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U17
      134 SETTABLEKS                       R3 R2 K27 ["copyProperty"]
      136 NEWCLOSURE                       R3 P14
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U3
      139 CAPTURE                          UPVAL U18
      140 SETTABLEKS                       R3 R2 K28 ["pasteProperty"]
      142 NEWCLOSURE                       R3 P15
      143 CAPTURE                          UPVAL U3
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U18
      146 SETTABLEKS                       R3 R2 K29 ["deleteProperty"]
      148 NEWCLOSURE                       R3 P16
      149 CAPTURE                          VAL R0
      150 CAPTURE                          UPVAL U10
      151 CAPTURE                          UPVAL U13
      152 CAPTURE                          UPVAL U19
      153 SETTABLEKS                       R3 R2 K30 ["viewTheme"]
      155 NEWCLOSURE                       R3 P17
      156 CAPTURE                          VAL R0
      157 SETTABLEKS                       R3 R2 K31 ["rename"]
      159 SETTABLEKS                       R2 R0 K33 ["menuActions"]
      161 NEWCLOSURE                       R2 P18
      162 CAPTURE                          UPVAL U3
      163 CAPTURE                          VAL R0
      164 SETTABLEKS                       R2 R0 K34 ["onAction"]
      166 NEWCLOSURE                       R2 P19
      167 CAPTURE                          VAL R0
      168 CAPTURE                          UPVAL U3
      169 SETTABLEKS                       R2 R0 K35 ["onPropertyPressed"]
      171 NEWCLOSURE                       R2 P20
      172 CAPTURE                          VAL R0
      173 CAPTURE                          UPVAL U20
      174 SETTABLEKS                       R2 R0 K36 ["createStyleRuleConnections"]
      176 NEWCLOSURE                       R2 P21
      177 CAPTURE                          VAL R0
      178 SETTABLEKS                       R2 R0 K37 ["removeStyleRuleConnections"]
      180 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["DEPRECATED_buildItems"]
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
        0 DUPTABLE                         R1 K2 [{"ClipboardInstance", "ClipboardProperty"}]
        1 GETTABLEKS                       R3 R0 K3 ["Clipboard"]
        3 GETTABLEKS                       R2 R3 K4 ["DEPRECATED_Instance"]
        5 SETTABLEKS                       R2 R1 K0 ["ClipboardInstance"]
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
      129 GETTABLEKS                       R26 R1 K21 ["Src"]
      131 GETTABLEKS                       R25 R26 K36 ["Util"]
      133 GETTABLEKS                       R24 R25 K37 ["mapDispatchToProps"]
      135 CALL                             R23 1 1
      136 GETIMPORT                        R24 K8 [require]
      138 GETTABLEKS                       R27 R1 K21 ["Src"]
      140 GETTABLEKS                       R26 R27 K36 ["Util"]
      142 GETTABLEKS                       R25 R26 K38 ["DesignHelpers"]
      144 CALL                             R24 1 1
      145 GETIMPORT                        R25 K8 [require]
      147 GETTABLEKS                       R28 R1 K21 ["Src"]
      149 GETTABLEKS                       R27 R28 K36 ["Util"]
      151 GETTABLEKS                       R26 R27 K39 ["MenuHelpers"]
      153 CALL                             R25 1 1
      154 GETIMPORT                        R26 K8 [require]
      156 GETTABLEKS                       R29 R1 K21 ["Src"]
      158 GETTABLEKS                       R28 R29 K40 ["Resources"]
      160 GETTABLEKS                       R27 R28 K41 ["ModernIcons"]
      162 CALL                             R26 1 1
      163 GETIMPORT                        R27 K8 [require]
      165 GETTABLEKS                       R30 R1 K21 ["Src"]
      167 GETTABLEKS                       R29 R30 K36 ["Util"]
      169 GETTABLEKS                       R28 R29 K42 ["StyleSchema"]
      171 CALL                             R27 1 1
      172 GETIMPORT                        R28 K8 [require]
      174 GETTABLEKS                       R31 R1 K21 ["Src"]
      176 GETTABLEKS                       R30 R31 K36 ["Util"]
      178 GETTABLEKS                       R29 R30 K43 ["SelectorHelpers"]
      180 CALL                             R28 1 1
      181 GETIMPORT                        R29 K8 [require]
      183 GETTABLEKS                       R32 R1 K21 ["Src"]
      185 GETTABLEKS                       R31 R32 K36 ["Util"]
      187 GETTABLEKS                       R30 R31 K44 ["TokenHelpers"]
      189 CALL                             R29 1 1
      190 GETIMPORT                        R30 K8 [require]
      192 GETTABLEKS                       R33 R1 K21 ["Src"]
      194 GETTABLEKS                       R32 R33 K40 ["Resources"]
      196 GETTABLEKS                       R31 R32 K45 ["PluginStyles"]
      198 CALL                             R30 1 1
      199 GETIMPORT                        R31 K8 [require]
      201 GETTABLEKS                       R33 R1 K21 ["Src"]
      203 GETTABLEKS                       R32 R33 K46 ["Renderers"]
      205 CALL                             R31 1 1
      206 GETIMPORT                        R32 K8 [require]
      208 GETTABLEKS                       R35 R1 K21 ["Src"]
      210 GETTABLEKS                       R34 R35 K36 ["Util"]
      212 GETTABLEKS                       R33 R34 K47 ["bind"]
      214 CALL                             R32 1 1
      215 GETIMPORT                        R33 K8 [require]
      217 GETTABLEKS                       R36 R1 K21 ["Src"]
      219 GETTABLEKS                       R35 R36 K36 ["Util"]
      221 GETTABLEKS                       R34 R35 K48 ["recordChange"]
      223 CALL                             R33 1 1
      224 MOVE                             R34 R0
      225 CALL                             R33 1 1
      226 GETIMPORT                        R34 K8 [require]
      228 GETTABLEKS                       R37 R1 K21 ["Src"]
      230 GETTABLEKS                       R36 R37 K36 ["Util"]
      232 GETTABLEKS                       R35 R36 K49 ["TreeTableHelpers"]
      234 CALL                             R34 1 1
      235 GETIMPORT                        R35 K8 [require]
      237 GETTABLEKS                       R39 R1 K21 ["Src"]
      239 GETTABLEKS                       R38 R39 K50 ["Contexts"]
      241 GETTABLEKS                       R37 R38 K51 ["Telemetry"]
      243 GETTABLEKS                       R36 R37 K52 ["TelemetryContext"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K8 [require]
      248 GETIMPORT                        R39 K5 [script]
      250 GETTABLEKS                       R38 R39 K6 ["Parent"]
      252 GETTABLEKS                       R37 R38 K53 ["onEdited"]
      254 CALL                             R36 1 1
      255 GETIMPORT                        R37 K8 [require]
      257 GETTABLEKS                       R40 R1 K21 ["Src"]
      259 GETTABLEKS                       R39 R40 K54 ["Flags"]
      261 GETTABLEKS                       R38 R39 K55 ["getFFlagStyleEditorNumberSequenceUpdate"]
      263 CALL                             R37 1 1
      264 CALL                             R37 0 1
      265 GETIMPORT                        R38 K8 [require]
      267 GETIMPORT                        R41 K5 [script]
      269 GETTABLEKS                       R40 R41 K6 ["Parent"]
      271 GETTABLEKS                       R39 R40 K56 ["Tree"]
      273 CALL                             R38 1 1
      274 GETTABLEKS                       R39 R38 K57 ["EditTree"]
      276 LOADK                            R42 K58 ["RowHeight"]
      277 NAMECALL                         R40 R30 K59 ["GetAttribute"]
      279 CALL                             R40 2 1
      280 GETTABLEKS                       R41 R2 K60 ["PureComponent"]
      282 LOADK                            R43 K61 ["SelectorPropertyTable"]
      283 NAMECALL                         R41 R41 K62 ["extend"]
      285 CALL                             R41 2 1
      286 DUPCLOSURE                       R42 K63 [PROTO_0]
      287 SETGLOBAL                        R42 K64 ["connectToStyleRule"]
      289 NEWCLOSURE                       R42 P1
      290 CAPTURE                          VAL R5
      291 CAPTURE                          VAL R38
      292 CAPTURE                          VAL R37
      293 CAPTURE                          VAL R39
      294 CAPTURE                          VAL R6
      295 CAPTURE                          VAL R27
      296 CAPTURE                          VAL R26
      297 CAPTURE                          VAL R32
      298 CAPTURE                          VAL R25
      299 CAPTURE                          VAL R28
      300 CAPTURE                          VAL R29
      301 CAPTURE                          VAL R24
      302 CAPTURE                          VAL R21
      303 CAPTURE                          VAL R34
      304 CAPTURE                          VAL R7
      305 CAPTURE                          VAL R22
      306 CAPTURE                          VAL R20
      307 CAPTURE                          VAL R17
      308 CAPTURE                          VAL R33
      309 CAPTURE                          VAL R18
      310 CAPTURE                          REF R41
      311 SETTABLEKS                       R42 R41 K65 ["init"]
      313 DUPCLOSURE                       R42 K66 [PROTO_36]
      314 CAPTURE                          VAL R38
      315 CAPTURE                          VAL R5
      316 CAPTURE                          VAL R6
      317 SETTABLEKS                       R42 R41 K67 ["rebuildTableState"]
      319 DUPCLOSURE                       R42 K68 [PROTO_37]
      320 SETTABLEKS                       R42 R41 K69 ["didMount"]
      322 DUPCLOSURE                       R42 K70 [PROTO_38]
      323 SETTABLEKS                       R42 R41 K71 ["didUpdate"]
      325 DUPCLOSURE                       R42 K72 [PROTO_39]
      326 SETTABLEKS                       R42 R41 K73 ["willUnmount"]
      328 NEWCLOSURE                       R42 P6
      329 CAPTURE                          REF R41
      330 SETTABLEKS                       R42 R41 K74 ["getDerivedStateFromProps"]
      332 DUPCLOSURE                       R42 K75 [PROTO_42]
      333 CAPTURE                          VAL R6
      334 CAPTURE                          VAL R38
      335 CAPTURE                          VAL R36
      336 CAPTURE                          VAL R37
      337 CAPTURE                          VAL R31
      338 CAPTURE                          VAL R40
      339 CAPTURE                          VAL R2
      340 CAPTURE                          VAL R10
      341 SETTABLEKS                       R42 R41 K76 ["render"]
      343 MOVE                             R42 R12
      344 DUPTABLE                         R43 K79 [{"Plugin", "Localization", "Telemetry"}]
      345 GETTABLEKS                       R44 R11 K77 ["Plugin"]
      347 SETTABLEKS                       R44 R43 K77 ["Plugin"]
      349 GETTABLEKS                       R44 R11 K78 ["Localization"]
      351 SETTABLEKS                       R44 R43 K78 ["Localization"]
      353 SETTABLEKS                       R35 R43 K51 ["Telemetry"]
      355 CALL                             R42 1 1
      356 MOVE                             R43 R41
      357 CALL                             R42 1 1
      358 MOVE                             R41 R42
      359 GETTABLEKS                       R42 R3 K80 ["connect"]
      361 DUPCLOSURE                       R43 K81 [PROTO_43]
      362 MOVE                             R44 R23
      363 CALL                             R42 2 1
      364 MOVE                             R43 R41
      365 CALL                             R42 1 -1
      366 CLOSEUPVALS                      R41
      367 RETURN                           R42 -1
