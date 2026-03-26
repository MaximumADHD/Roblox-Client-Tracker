PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 LOADK                            R4 K0 ["StyleRule"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIF                           R2 ; [+11]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 JUMP                             ; [+8]
       10 LOADK                            R5 K0 ["StyleRule"]
       11 NAMECALL                         R3 R0 K1 ["IsA"]
       13 CALL                             R3 2 -1
       14 FASTCALL                         ASSERT ; [+2]
       15 GETIMPORT                        R2 K3 [assert]
       17 CALL                             R2 -1 0
       18 DUPTABLE                         R2 K6 [{"StyledPropertiesChangedConnection", "NonStyledPropertiesChangedConnection"}]
       19 GETTABLEKS                       R3 R0 K7 ["StyleRulePropertyChanged"]
       21 MOVE                             R5 R1
       22 NAMECALL                         R3 R3 K8 ["Connect"]
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R2 K4 ["StyledPropertiesChangedConnection"]
       27 GETTABLEKS                       R3 R0 K9 ["Changed"]
       29 MOVE                             R5 R1
       30 NAMECALL                         R3 R3 K8 ["Connect"]
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R2 K5 ["NonStyledPropertiesChangedConnection"]
       35 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Items"]
        3 GETUPVAL                         R4 1
        4 NAMECALL                         R1 R1 K1 ["getChild"]
        6 CALL                             R1 3 1
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R2 2
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETTABLEKS                       R2 R1 K2 ["Instance"]
       12 JUMPIF                           R2 ; [+2]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETUPVAL                         R2 2
       16 JUMPIFNOT                        R2 ; [+22]
       17 GETTABLEKS                       R2 R1 K2 ["Instance"]
       19 LOADK                            R4 K3 ["Folder"]
       20 NAMECALL                         R2 R2 K4 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+15]
       24 GETTABLEKS                       R3 R1 K5 ["Name"]
       26 GETTABLEKS                       R2 R3 K6 ["Value"]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R3 R4 K7 ["Localization"]
       31 LOADK                            R5 K8 ["Categories"]
       32 LOADK                            R6 K9 ["Queries"]
       33 NAMECALL                         R3 R3 K10 ["getText"]
       35 CALL                             R3 3 1
       36 JUMPIFNOTEQ                      R2 R3 ; [+2]
       38 RETURN                           R0 0
       39 DUPTABLE                         R2 K12 [{"Schema"}]
       40 GETUPVAL                         R3 4
       41 GETUPVAL                         R5 5
       42 GETTABLEKS                       R4 R5 K13 ["SelectorSchema"]
       44 DUPTABLE                         R5 K15 [{"Editing"}]
       45 LOADB                            R6 1
       46 SETTABLEKS                       R6 R5 K14 ["Editing"]
       48 CALL                             R3 2 1
       49 SETTABLEKS                       R3 R2 K11 ["Schema"]
       51 GETUPVAL                         R3 0
       52 MOVE                             R5 R0
       53 MOVE                             R6 R2
       54 GETUPVAL                         R7 1
       55 LOADN                            R8 1
       56 NAMECALL                         R3 R3 K16 ["updateCell"]
       58 CALL                             R3 5 -1
       59 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

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
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETTABLEKS                       R3 R0 K1 ["ClipboardInstances"]
        7 LENGTH                           R2 R3
        8 LOADN                            R3 0
        9 JUMPIFLT                         R3 R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1
       14 GETTABLEKS                       R2 R0 K2 ["DEPRECATED_ClipboardInstance"]
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

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
        6 LOADNIL                          R3
        7 GETUPVAL                         R4 1
        8 JUMPIFNOT                        R4 ; [+26]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R7 R1 K2 ["table"]
       12 GETTABLEKS                       R6 R7 K3 ["Items"]
       14 MOVE                             R7 R0
       15 NAMECALL                         R4 R4 K4 ["getParent"]
       17 CALL                             R4 3 1
       18 JUMPIFNOT                        R4 ; [+3]
       19 GETTABLEKS                       R3 R4 K5 ["Instance"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 JUMPIFNOT                        R3 ; [+5]
       24 LOADK                            R7 K6 ["StyleRule"]
       25 NAMECALL                         R5 R3 K7 ["IsA"]
       27 CALL                             R5 2 1
       28 JUMPIF                           R5 ; [+16]
       29 GETIMPORT                        R5 K9 [warn]
       31 LOADK                            R6 K10 ["Property menu opened for an item not parented to a StyleRule"]
       32 CALL                             R5 1 0
       33 RETURN                           R0 0
       34 JUMP                             ; [+10]
       35 GETTABLEKS                       R3 R2 K11 ["RootInstance"]
       37 LOADK                            R7 K6 ["StyleRule"]
       38 NAMECALL                         R5 R3 K7 ["IsA"]
       40 CALL                             R5 2 -1
       41 FASTCALL                         ASSERT ; [+2]
       42 GETIMPORT                        R4 K13 [assert]
       44 CALL                             R4 -1 0
       45 GETTABLEKS                       R4 R2 K14 ["Localization"]
       47 GETTABLEKS                       R8 R0 K15 ["Value"]
       49 GETTABLEKS                       R7 R8 K16 ["Schema"]
       51 GETTABLEKS                       R6 R7 K17 ["Type"]
       53 GETUPVAL                         R9 3
       54 GETTABLEKS                       R8 R9 K18 ["TokenReferenceSchema"]
       56 GETTABLEKS                       R7 R8 K17 ["Type"]
       58 JUMPIFEQ                         R6 R7 ; [+2]
       60 LOADB                            R5 0 +1
       61 LOADB                            R5 1
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R6 R7 K19 ["getSelectorChain"]
       65 MOVE                             R7 R3
       66 CALL                             R6 1 1
       67 JUMPIFNOT                        R6 ; [+7]
       68 GETTABLEKS                       R8 R6 K20 ["Class"]
       70 JUMPIFNOTEQKS                    R8 K21 [""] ; [+2]
       72 LOADB                            R7 0 +1
       73 LOADB                            R7 1
       74 JUMP                             ; [+1]
       75 LOADB                            R7 0
       76 GETUPVAL                         R9 5
       77 GETTABLEKS                       R8 R9 K22 ["getTokenSourceStyleSheet"]
       79 MOVE                             R9 R3
       80 GETTABLEKS                       R11 R0 K15 ["Value"]
       82 GETTABLEKS                       R10 R11 K15 ["Value"]
       84 CALL                             R8 2 1
       85 GETUPVAL                         R10 6
       86 GETTABLEKS                       R9 R10 K23 ["isTheme"]
       88 MOVE                             R10 R8
       89 CALL                             R9 1 1
       90 JUMPIFNOT                        R5 ; [+34]
       91 DUPTABLE                         R10 K28 [{"Id", "Text", "Icon", "OnItemClicked"}]
       92 LOADK                            R11 K29 ["UnlinkToken"]
       93 SETTABLEKS                       R11 R10 K24 ["Id"]
       95 LOADK                            R13 K30 ["ContextMenu"]
       96 LOADK                            R14 K29 ["UnlinkToken"]
       97 NAMECALL                         R11 R4 K31 ["getText"]
       99 CALL                             R11 3 1
      100 SETTABLEKS                       R11 R10 K25 ["Text"]
      102 GETUPVAL                         R13 7
      103 GETTABLEKS                       R12 R13 K32 ["Standard"]
      105 GETTABLEKS                       R11 R12 K33 ["TokenSheet"]
      107 CALL                             R11 0 1
      108 SETTABLEKS                       R11 R10 K26 ["Icon"]
      110 GETUPVAL                         R11 8
      111 GETUPVAL                         R14 0
      112 GETTABLEKS                       R13 R14 K34 ["menuActions"]
      114 GETTABLEKS                       R12 R13 K35 ["unlinkToken"]
      116 NEWTABLE                         R13 0 1
      118 MOVE                             R14 R0
      119 SETLIST                          R13 R14 1 [1]
      121 CALL                             R11 2 1
      122 SETTABLEKS                       R11 R10 K27 ["OnItemClicked"]
      124 JUMP                             ; [+33]
      125 DUPTABLE                         R10 K28 [{"Id", "Text", "Icon", "OnItemClicked"}]
      126 LOADK                            R11 K36 ["LinkToken"]
      127 SETTABLEKS                       R11 R10 K24 ["Id"]
      129 LOADK                            R13 K30 ["ContextMenu"]
      130 LOADK                            R14 K36 ["LinkToken"]
      131 NAMECALL                         R11 R4 K31 ["getText"]
      133 CALL                             R11 3 1
      134 SETTABLEKS                       R11 R10 K25 ["Text"]
      136 GETUPVAL                         R13 7
      137 GETTABLEKS                       R12 R13 K32 ["Standard"]
      139 GETTABLEKS                       R11 R12 K33 ["TokenSheet"]
      141 CALL                             R11 0 1
      142 SETTABLEKS                       R11 R10 K26 ["Icon"]
      144 GETUPVAL                         R11 8
      145 GETUPVAL                         R14 0
      146 GETTABLEKS                       R13 R14 K34 ["menuActions"]
      148 GETTABLEKS                       R12 R13 K37 ["linkToken"]
      150 NEWTABLE                         R13 0 1
      152 MOVE                             R14 R0
      153 SETLIST                          R13 R14 1 [1]
      155 CALL                             R11 2 1
      156 SETTABLEKS                       R11 R10 K27 ["OnItemClicked"]
      158 GETUPVAL                         R12 3
      159 GETTABLEKS                       R11 R12 K38 ["getPossiblePropertyTypes"]
      161 GETTABLEKS                       R13 R0 K39 ["Name"]
      163 GETTABLEKS                       R12 R13 K15 ["Value"]
      165 CALL                             R11 1 1
      166 GETUPVAL                         R13 9
      167 GETTABLEKS                       R12 R13 K40 ["getAttributeTypeActions"]
      169 MOVE                             R13 R11
      170 GETUPVAL                         R14 8
      171 GETUPVAL                         R17 0
      172 GETTABLEKS                       R16 R17 K34 ["menuActions"]
      174 GETTABLEKS                       R15 R16 K41 ["changePropertyType"]
      176 NEWTABLE                         R16 0 1
      178 MOVE                             R17 R0
      179 SETLIST                          R16 R17 1 [1]
      181 CALL                             R14 2 -1
      182 CALL                             R12 -1 1
      183 DUPTABLE                         R13 K43 [{"Id", "Children"}]
      184 LOADK                            R14 K44 ["PropertyRowMenu"]
      185 SETTABLEKS                       R14 R13 K24 ["Id"]
      187 NEWTABLE                         R14 0 6
      189 MOVE                             R15 R10
      190 DUPTABLE                         R16 K46 [{"Id", "Text", "Icon", "Hidden", "OnItemClicked"}]
      191 LOADK                            R17 K47 ["ViewTheme"]
      192 SETTABLEKS                       R17 R16 K24 ["Id"]
      194 LOADK                            R19 K30 ["ContextMenu"]
      195 JUMPIFNOT                        R9 ; [+2]
      196 LOADK                            R20 K47 ["ViewTheme"]
      197 JUMP                             ; [+1]
      198 LOADK                            R20 K48 ["ViewToken"]
      199 NAMECALL                         R17 R4 K31 ["getText"]
      201 CALL                             R17 3 1
      202 SETTABLEKS                       R17 R16 K25 ["Text"]
      204 GETUPVAL                         R18 7
      205 GETTABLEKS                       R17 R18 K49 ["open"]
      207 CALL                             R17 0 1
      208 SETTABLEKS                       R17 R16 K26 ["Icon"]
      210 NOT                              R17 R5
      211 SETTABLEKS                       R17 R16 K45 ["Hidden"]
      213 GETUPVAL                         R17 8
      214 GETUPVAL                         R20 0
      215 GETTABLEKS                       R19 R20 K34 ["menuActions"]
      217 GETTABLEKS                       R18 R19 K50 ["viewTheme"]
      219 NEWTABLE                         R19 0 1
      221 MOVE                             R20 R0
      222 SETLIST                          R19 R20 1 [1]
      224 CALL                             R17 2 1
      225 SETTABLEKS                       R17 R16 K27 ["OnItemClicked"]
      227 DUPTABLE                         R17 K51 [{"Id", "Text", "Hidden", "Children"}]
      228 LOADK                            R18 K52 ["ChangeType"]
      229 SETTABLEKS                       R18 R17 K24 ["Id"]
      231 LOADK                            R20 K30 ["ContextMenu"]
      232 LOADK                            R21 K52 ["ChangeType"]
      233 NAMECALL                         R18 R4 K31 ["getText"]
      235 CALL                             R18 3 1
      236 SETTABLEKS                       R18 R17 K25 ["Text"]
      238 MOVE                             R18 R7
      239 JUMPIF                           R18 ; [+6]
      240 LENGTH                           R19 R11
      241 LOADN                            R20 1
      242 JUMPIFLE                         R19 R20 ; [+2]
      244 LOADB                            R18 0 +1
      245 LOADB                            R18 1
      246 SETTABLEKS                       R18 R17 K45 ["Hidden"]
      248 SETTABLEKS                       R12 R17 K42 ["Children"]
      250 DUPTABLE                         R18 K28 [{"Id", "Text", "Icon", "OnItemClicked"}]
      251 LOADK                            R19 K53 ["Copy"]
      252 SETTABLEKS                       R19 R18 K24 ["Id"]
      254 LOADK                            R21 K30 ["ContextMenu"]
      255 LOADK                            R22 K53 ["Copy"]
      256 NAMECALL                         R19 R4 K31 ["getText"]
      258 CALL                             R19 3 1
      259 SETTABLEKS                       R19 R18 K25 ["Text"]
      261 GETUPVAL                         R20 7
      262 GETTABLEKS                       R19 R20 K54 ["copy"]
      264 CALL                             R19 0 1
      265 SETTABLEKS                       R19 R18 K26 ["Icon"]
      267 GETUPVAL                         R19 8
      268 GETUPVAL                         R22 0
      269 GETTABLEKS                       R21 R22 K34 ["menuActions"]
      271 GETTABLEKS                       R20 R21 K55 ["copyProperty"]
      273 NEWTABLE                         R21 0 1
      275 MOVE                             R22 R0
      276 SETLIST                          R21 R22 1 [1]
      278 CALL                             R19 2 1
      279 SETTABLEKS                       R19 R18 K27 ["OnItemClicked"]
      281 DUPTABLE                         R19 K57 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      282 LOADK                            R20 K58 ["Paste"]
      283 SETTABLEKS                       R20 R19 K24 ["Id"]
      285 LOADK                            R22 K30 ["ContextMenu"]
      286 LOADK                            R23 K58 ["Paste"]
      287 NAMECALL                         R20 R4 K31 ["getText"]
      289 CALL                             R20 3 1
      290 SETTABLEKS                       R20 R19 K25 ["Text"]
      292 GETUPVAL                         R21 7
      293 GETTABLEKS                       R20 R21 K59 ["paste"]
      295 CALL                             R20 0 1
      296 SETTABLEKS                       R20 R19 K26 ["Icon"]
      298 GETUPVAL                         R21 0
      299 GETTABLEKS                       R20 R21 K60 ["canPasteProperty"]
      301 CALL                             R20 0 1
      302 SETTABLEKS                       R20 R19 K56 ["Enabled"]
      304 GETUPVAL                         R20 8
      305 GETUPVAL                         R23 0
      306 GETTABLEKS                       R22 R23 K34 ["menuActions"]
      308 GETTABLEKS                       R21 R22 K61 ["pasteProperty"]
      310 NEWTABLE                         R22 0 1
      312 MOVE                             R23 R0
      313 SETLIST                          R22 R23 1 [1]
      315 CALL                             R20 2 1
      316 SETTABLEKS                       R20 R19 K27 ["OnItemClicked"]
      318 DUPTABLE                         R20 K28 [{"Id", "Text", "Icon", "OnItemClicked"}]
      319 LOADK                            R21 K62 ["Delete"]
      320 SETTABLEKS                       R21 R20 K24 ["Id"]
      322 LOADK                            R23 K30 ["ContextMenu"]
      323 LOADK                            R24 K62 ["Delete"]
      324 NAMECALL                         R21 R4 K31 ["getText"]
      326 CALL                             R21 3 1
      327 SETTABLEKS                       R21 R20 K25 ["Text"]
      329 GETUPVAL                         R22 7
      330 GETTABLEKS                       R21 R22 K63 ["delete"]
      332 CALL                             R21 0 1
      333 SETTABLEKS                       R21 R20 K26 ["Icon"]
      335 GETUPVAL                         R21 8
      336 GETUPVAL                         R24 0
      337 GETTABLEKS                       R23 R24 K34 ["menuActions"]
      339 GETTABLEKS                       R22 R23 K64 ["deleteProperty"]
      341 NEWTABLE                         R23 0 1
      343 MOVE                             R24 R0
      344 SETLIST                          R23 R24 1 [1]
      346 CALL                             R21 2 1
      347 SETTABLEKS                       R21 R20 K27 ["OnItemClicked"]
      349 SETLIST                          R14 R15 6 [1]
      351 SETTABLEKS                       R14 R13 K42 ["Children"]
      353 GETTABLEKS                       R14 R2 K65 ["Plugin"]
      355 NAMECALL                         R14 R14 K66 ["get"]
      357 CALL                             R14 1 1
      358 GETTABLEKS                       R15 R2 K67 ["Telemetry"]
      360 NAMECALL                         R15 R15 K66 ["get"]
      362 CALL                             R15 1 1
      363 GETUPVAL                         R17 9
      364 GETTABLEKS                       R16 R17 K68 ["trackClicks"]
      366 MOVE                             R17 R13
      367 MOVE                             R18 R15
      368 CALL                             R16 2 0
      369 GETUPVAL                         R17 9
      370 GETTABLEKS                       R16 R17 K69 ["showContextMenu"]
      372 MOVE                             R17 R14
      373 MOVE                             R18 R13
      374 CALL                             R16 2 0
      375 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R0 K1 ["Instance"]
        5 FASTCALL1                        TYPEOF R3 ; [+2]
        6 GETIMPORT                        R2 K3 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K1 ["Instance"] ; [+69]
       11 GETUPVAL                         R2 1
       12 JUMPIFNOT                        R2 ; [+45]
       13 GETTABLEKS                       R2 R0 K1 ["Instance"]
       15 LOADK                            R4 K4 ["StyleRule"]
       16 NAMECALL                         R2 R2 K5 ["IsA"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+21]
       20 GETTABLEKS                       R2 R1 K6 ["dispatch"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R4 R0 K1 ["Instance"]
       25 GETUPVAL                         R5 3
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R7 R8 K7 ["menuActions"]
       29 GETTABLEKS                       R6 R7 K8 ["rename"]
       31 NEWTABLE                         R7 0 1
       33 MOVE                             R8 R0
       34 SETLIST                          R7 R8 1 [1]
       36 CALL                             R5 2 1
       37 LOADB                            R6 0
       38 CALL                             R3 3 -1
       39 CALL                             R2 -1 0
       40 RETURN                           R0 0
       41 GETTABLEKS                       R2 R0 K1 ["Instance"]
       43 LOADK                            R4 K9 ["Folder"]
       44 NAMECALL                         R2 R2 K5 ["IsA"]
       46 CALL                             R2 2 1
       47 JUMPIFNOT                        R2 ; [+31]
       48 GETTABLEKS                       R2 R1 K6 ["dispatch"]
       50 GETUPVAL                         R3 4
       51 GETTABLEKS                       R4 R0 K1 ["Instance"]
       53 LOADB                            R5 0
       54 CALL                             R3 2 -1
       55 CALL                             R2 -1 0
       56 RETURN                           R0 0
       57 JUMP                             ; [+21]
       58 GETTABLEKS                       R2 R1 K6 ["dispatch"]
       60 GETUPVAL                         R3 2
       61 GETTABLEKS                       R4 R0 K1 ["Instance"]
       63 GETUPVAL                         R5 3
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R7 R8 K7 ["menuActions"]
       67 GETTABLEKS                       R6 R7 K8 ["rename"]
       69 NEWTABLE                         R7 0 1
       71 MOVE                             R8 R0
       72 SETLIST                          R7 R8 1 [1]
       74 CALL                             R5 2 1
       75 LOADB                            R6 0
       76 CALL                             R3 3 -1
       77 CALL                             R2 -1 0
       78 RETURN                           R0 0
       79 GETTABLEKS                       R2 R0 K10 ["Value"]
       81 JUMPIFNOT                        R2 ; [+5]
       82 GETTABLEKS                       R3 R0 K10 ["Value"]
       84 GETTABLEKS                       R2 R3 K11 ["Schema"]
       86 JUMPIF                           R2 ; [+1]
       87 RETURN                           R0 0
       88 GETTABLEKS                       R4 R0 K10 ["Value"]
       90 GETTABLEKS                       R3 R4 K11 ["Schema"]
       92 GETTABLEKS                       R2 R3 K12 ["Type"]
       94 JUMPIFNOTEQKS                    R2 K13 ["Empty"] ; [+7]
       96 GETUPVAL                         R3 0
       97 GETTABLEKS                       R2 R3 K14 ["showEmptyRowContextMenu"]
       99 MOVE                             R3 R0
      100 CALL                             R2 1 0
      101 RETURN                           R0 0
      102 GETUPVAL                         R3 0
      103 GETTABLEKS                       R2 R3 K15 ["showPropertyRowContextMenu"]
      105 MOVE                             R3 R0
      106 CALL                             R2 1 0
      107 RETURN                           R0 0

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

PROTO_32:
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

PROTO_33:
        0 DUPTABLE                         R2 K3 [{"instanceMap", "descendantAddedConnection", "descendantRemovingConnection"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["instanceMap"]
        5 LOADNIL                          R3
        6 SETTABLEKS                       R3 R2 K1 ["descendantAddedConnection"]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K2 ["descendantRemovingConnection"]
       11 GETUPVAL                         R3 0
       12 JUMPIFNOT                        R3 ; [+43]
       13 GETTABLEKS                       R3 R2 K0 ["instanceMap"]
       15 GETGLOBAL                        R4 K4 ["connectToStyleRule"]
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 CALL                             R4 2 1
       20 SETTABLE                         R4 R3 R0
       21 NAMECALL                         R3 R0 K5 ["GetDescendants"]
       23 CALL                             R3 1 3
       24 FORGPREP                         R3
       25 GETTABLEKS                       R8 R2 K0 ["instanceMap"]
       27 GETGLOBAL                        R9 K4 ["connectToStyleRule"]
       29 MOVE                             R10 R7
       30 MOVE                             R11 R1
       31 CALL                             R9 2 1
       32 SETTABLE                         R9 R8 R7
       33 FORGLOOP                         R3 2 ; [-9]
       35 GETTABLEKS                       R3 R0 K6 ["DescendantAdded"]
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 NAMECALL                         R3 R3 K7 ["Connect"]
       42 CALL                             R3 2 1
       43 SETTABLEKS                       R3 R2 K1 ["descendantAddedConnection"]
       45 GETTABLEKS                       R3 R0 K8 ["DescendantRemoving"]
       47 NEWCLOSURE                       R5 P1
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 NAMECALL                         R3 R3 K7 ["Connect"]
       52 CALL                             R3 2 1
       53 SETTABLEKS                       R3 R2 K2 ["descendantRemovingConnection"]
       55 RETURN                           R2 1
       56 LOADK                            R5 K9 ["StyleRule"]
       57 NAMECALL                         R3 R0 K10 ["IsA"]
       59 CALL                             R3 2 1
       60 JUMPIFNOT                        R3 ; [+8]
       61 GETTABLEKS                       R3 R2 K0 ["instanceMap"]
       63 GETGLOBAL                        R4 K4 ["connectToStyleRule"]
       65 MOVE                             R5 R0
       66 MOVE                             R6 R1
       67 CALL                             R4 2 1
       68 SETTABLE                         R4 R3 R0
       69 NAMECALL                         R3 R0 K5 ["GetDescendants"]
       71 CALL                             R3 1 3
       72 FORGPREP                         R3
       73 LOADK                            R10 K9 ["StyleRule"]
       74 NAMECALL                         R8 R7 K10 ["IsA"]
       76 CALL                             R8 2 1
       77 JUMPIFNOT                        R8 ; [+8]
       78 GETTABLEKS                       R8 R2 K0 ["instanceMap"]
       80 GETGLOBAL                        R9 K4 ["connectToStyleRule"]
       82 MOVE                             R10 R7
       83 MOVE                             R11 R1
       84 CALL                             R9 2 1
       85 SETTABLE                         R9 R8 R7
       86 FORGLOOP                         R3 2 ; [-14]
       88 GETTABLEKS                       R3 R0 K6 ["DescendantAdded"]
       90 NEWCLOSURE                       R5 P2
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R2
       93 NAMECALL                         R3 R3 K7 ["Connect"]
       95 CALL                             R3 2 1
       96 SETTABLEKS                       R3 R2 K1 ["descendantAddedConnection"]
       98 GETTABLEKS                       R3 R0 K8 ["DescendantRemoving"]
      100 NEWCLOSURE                       R5 P3
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R2
      103 NAMECALL                         R3 R3 K7 ["Connect"]
      105 CALL                             R3 2 1
      106 SETTABLEKS                       R3 R2 K2 ["descendantRemovingConnection"]
      108 RETURN                           R2 1

PROTO_34:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 DUPCLOSURE                       R2 K0 [PROTO_33]
        4 CAPTURE                          UPVAL U2
        5 GETUPVAL                         R3 2
        6 JUMPIFNOT                        R3 ; [+60]
        7 GETUPVAL                         R3 0
        8 NEWTABLE                         R4 0 0
       10 SETTABLEKS                       R4 R3 K1 ["connections"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K1 ["connections"]
       15 MOVE                             R5 R2
       16 MOVE                             R6 R0
       17 MOVE                             R7 R1
       18 CALL                             R5 2 1
       19 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 2 0
       24 LOADK                            R5 K5 ["StyleRule"]
       25 NAMECALL                         R3 R0 K6 ["IsA"]
       27 CALL                             R3 2 1
       28 JUMPIFNOT                        R3 ; [+55]
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R3 R4 K7 ["getQueryTypeFromSelector"]
       32 GETTABLEKS                       R4 R0 K8 ["Selector"]
       34 CALL                             R3 1 1
       35 JUMPIFNOT                        R3 ; [+48]
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R5 R6 K9 ["Type"]
       39 GETTABLEKS                       R4 R5 K10 ["Pseudo"]
       41 JUMPIFNOTEQ                      R3 R4 ; [+42]
       43 GETUPVAL                         R5 3
       44 GETTABLEKS                       R4 R5 K11 ["getQueryStyleRulesForPseudo"]
       46 MOVE                             R5 R0
       47 CALL                             R4 1 1
       48 MOVE                             R5 R4
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 FORGPREP                         R5
       52 GETUPVAL                         R12 0
       53 GETTABLEKS                       R11 R12 K1 ["connections"]
       55 MOVE                             R12 R2
       56 MOVE                             R13 R9
       57 MOVE                             R14 R1
       58 CALL                             R12 2 1
       59 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       61 GETIMPORT                        R10 K4 [table.insert]
       63 CALL                             R10 2 0
       64 FORGLOOP                         R5 2 ; [-13]
       66 RETURN                           R0 0
       67 LOADK                            R6 K5 ["StyleRule"]
       68 NAMECALL                         R4 R0 K6 ["IsA"]
       70 CALL                             R4 2 1
       71 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       73 LOADK                            R5 K12 ["FFlagStyleQuery must be enabled to pass a non-StyleRule to SelectorPropertyTable"]
       74 GETIMPORT                        R3 K14 [assert]
       76 CALL                             R3 2 0
       77 GETUPVAL                         R3 0
       78 MOVE                             R4 R2
       79 MOVE                             R5 R0
       80 MOVE                             R6 R1
       81 CALL                             R4 2 1
       82 SETTABLEKS                       R4 R3 K1 ["connections"]
       84 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
        0 DUPCLOSURE                       R0 K0 [PROTO_35]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K1 ["connections"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 JUMPIFNOT                        R1 ; [+12]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R1 R4 K1 ["connections"]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 MOVE                             R6 R0
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-4]
       19 JUMP                             ; [+5]
       20 MOVE                             R1 R0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K1 ["connections"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 0
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K1 ["connections"]
       29 RETURN                           R0 0

PROTO_37:
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
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 SETTABLEKS                       R2 R0 K14 ["onDoubleClick"]
       58 NEWCLOSURE                       R2 P1
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R2 R0 K15 ["canPasteProperty"]
       62 NEWCLOSURE                       R2 P2
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U4
       65 SETTABLEKS                       R2 R0 K16 ["canPasteSelector"]
       67 NEWCLOSURE                       R2 P3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U5
       70 SETTABLEKS                       R2 R0 K17 ["selectRow"]
       72 NEWCLOSURE                       R2 P4
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R2 R0 K18 ["onRightClickRow"]
       76 NEWCLOSURE                       R2 P5
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          UPVAL U9
       81 SETTABLEKS                       R2 R0 K19 ["showEmptyRowContextMenu"]
       83 NEWCLOSURE                       R2 P6
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U10
       89 CAPTURE                          UPVAL U11
       90 CAPTURE                          UPVAL U12
       91 CAPTURE                          UPVAL U7
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          UPVAL U9
       94 SETTABLEKS                       R2 R0 K20 ["showPropertyRowContextMenu"]
       96 NEWCLOSURE                       R2 P7
       97 CAPTURE                          VAL R0
       98 CAPTURE                          UPVAL U4
       99 CAPTURE                          UPVAL U13
      100 CAPTURE                          UPVAL U8
      101 CAPTURE                          UPVAL U14
      102 SETTABLEKS                       R2 R0 K21 ["showContextMenu"]
      104 GETTABLEKS                       R2 R0 K12 ["tableCallbacks"]
      106 NEWCLOSURE                       R3 P8
      107 CAPTURE                          UPVAL U15
      108 CAPTURE                          VAL R0
      109 SETTABLEKS                       R3 R2 K22 ["OnSelectionChange"]
      111 NEWCLOSURE                       R2 P9
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U16
      114 SETTABLEKS                       R2 R0 K23 ["onSizeChange"]
      116 DUPTABLE                         R2 K32 [{"linkToken", "unlinkToken", "changePropertyType", "copyProperty", "pasteProperty", "deleteProperty", "viewTheme", "rename"}]
      117 NEWCLOSURE                       R3 P10
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U3
      120 CAPTURE                          UPVAL U6
      121 CAPTURE                          VAL R1
      122 CAPTURE                          UPVAL U5
      123 CAPTURE                          UPVAL U0
      124 SETTABLEKS                       R3 R2 K24 ["linkToken"]
      126 NEWCLOSURE                       R3 P11
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U3
      129 CAPTURE                          UPVAL U17
      130 SETTABLEKS                       R3 R2 K25 ["unlinkToken"]
      132 NEWCLOSURE                       R3 P12
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U3
      135 CAPTURE                          UPVAL U18
      136 SETTABLEKS                       R3 R2 K26 ["changePropertyType"]
      138 NEWCLOSURE                       R3 P13
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U19
      141 SETTABLEKS                       R3 R2 K27 ["copyProperty"]
      143 NEWCLOSURE                       R3 P14
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U3
      146 CAPTURE                          UPVAL U20
      147 SETTABLEKS                       R3 R2 K28 ["pasteProperty"]
      149 NEWCLOSURE                       R3 P15
      150 CAPTURE                          UPVAL U3
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U20
      153 SETTABLEKS                       R3 R2 K29 ["deleteProperty"]
      155 NEWCLOSURE                       R3 P16
      156 CAPTURE                          VAL R0
      157 CAPTURE                          UPVAL U11
      158 CAPTURE                          UPVAL U15
      159 CAPTURE                          UPVAL U21
      160 SETTABLEKS                       R3 R2 K30 ["viewTheme"]
      162 NEWCLOSURE                       R3 P17
      163 CAPTURE                          VAL R0
      164 SETTABLEKS                       R3 R2 K31 ["rename"]
      166 SETTABLEKS                       R2 R0 K33 ["menuActions"]
      168 NEWCLOSURE                       R2 P18
      169 CAPTURE                          UPVAL U3
      170 CAPTURE                          VAL R0
      171 SETTABLEKS                       R2 R0 K34 ["onAction"]
      173 NEWCLOSURE                       R2 P19
      174 CAPTURE                          VAL R0
      175 CAPTURE                          UPVAL U3
      176 SETTABLEKS                       R2 R0 K35 ["onPropertyPressed"]
      178 NEWCLOSURE                       R2 P20
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U22
      181 CAPTURE                          UPVAL U4
      182 CAPTURE                          UPVAL U23
      183 SETTABLEKS                       R2 R0 K36 ["createStyleRuleConnections"]
      185 NEWCLOSURE                       R2 P21
      186 CAPTURE                          VAL R0
      187 CAPTURE                          UPVAL U4
      188 SETTABLEKS                       R2 R0 K37 ["removeStyleRuleConnections"]
      190 RETURN                           R0 0

PROTO_38:
        0 LOADNIL                          R3
        1 GETUPVAL                         R4 0
        2 JUMPIFNOT                        R4 ; [+8]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["buildItems"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R2
        8 CALL                             R4 2 1
        9 MOVE                             R3 R4
       10 JUMP                             ; [+15]
       11 LOADK                            R7 K1 ["StyleRule"]
       12 NAMECALL                         R5 R0 K2 ["IsA"]
       14 CALL                             R5 2 -1
       15 FASTCALL                         ASSERT ; [+2]
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 -1 0
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K5 ["DEPRECATED_buildItems"]
       22 MOVE                             R5 R0
       23 MOVE                             R6 R2
       24 CALL                             R4 2 1
       25 MOVE                             R3 R4
       26 NEWTABLE                         R4 0 0
       28 NEWTABLE                         R5 0 0
       30 GETTABLEKS                       R6 R1 K6 ["rootInstance"]
       32 JUMPIFNOTEQ                      R0 R6 ; [+15]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R8 R1 K7 ["table"]
       37 GETTABLEKS                       R7 R8 K8 ["Expansion"]
       39 CALL                             R6 1 1
       40 MOVE                             R5 R6
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R8 R1 K7 ["table"]
       44 GETTABLEKS                       R7 R8 K9 ["Selection"]
       46 CALL                             R6 1 1
       47 MOVE                             R4 R6
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R6 R7 K10 ["expandNewRows"]
       51 MOVE                             R7 R3
       52 MOVE                             R8 R5
       53 CALL                             R6 2 0
       54 GETUPVAL                         R6 3
       55 MOVE                             R7 R1
       56 DUPTABLE                         R8 K11 [{"rootInstance", "table"}]
       57 SETTABLEKS                       R0 R8 K6 ["rootInstance"]
       59 GETUPVAL                         R9 3
       60 GETTABLEKS                       R10 R1 K7 ["table"]
       62 DUPTABLE                         R11 K13 [{"Expansion", "Selection", "Items"}]
       63 SETTABLEKS                       R5 R11 K8 ["Expansion"]
       65 SETTABLEKS                       R4 R11 K9 ["Selection"]
       67 SETTABLEKS                       R3 R11 K12 ["Items"]
       69 CALL                             R9 2 1
       70 SETTABLEKS                       R9 R8 K7 ["table"]
       72 CALL                             R6 2 -1
       73 RETURN                           R6 -1

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["createStyleRuleConnections"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R3 K2 ["RootInstance"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["removeStyleRuleConnections"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
        0 DUPTABLE                         R1 K3 [{"ClipboardInstances", "DEPRECATED_ClipboardInstance", "ClipboardProperty"}]
        1 GETTABLEKS                       R3 R0 K4 ["Clipboard"]
        3 GETTABLEKS                       R2 R3 K5 ["Instances"]
        5 SETTABLEKS                       R2 R1 K0 ["ClipboardInstances"]
        7 GETTABLEKS                       R3 R0 K4 ["Clipboard"]
        9 GETTABLEKS                       R2 R3 K6 ["DEPRECATED_Instance"]
       11 SETTABLEKS                       R2 R1 K1 ["DEPRECATED_ClipboardInstance"]
       13 GETTABLEKS                       R3 R0 K4 ["Clipboard"]
       15 GETTABLEKS                       R2 R3 K7 ["Property"]
       17 SETTABLEKS                       R2 R1 K2 ["ClipboardProperty"]
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R6 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R6 K12 ["Dash"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["copy"]
       38 GETTABLEKS                       R6 R4 K14 ["join"]
       40 GETTABLEKS                       R7 R4 K15 ["joinDeep"]
       42 GETIMPORT                        R8 K8 [require]
       44 GETTABLEKS                       R10 R1 K9 ["Packages"]
       46 GETTABLEKS                       R9 R10 K16 ["Framework"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R9 R8 K17 ["UI"]
       51 GETTABLEKS                       R10 R9 K18 ["TreeTable"]
       53 GETTABLEKS                       R11 R8 K19 ["ContextServices"]
       55 GETTABLEKS                       R12 R11 K20 ["withContext"]
       57 GETIMPORT                        R13 K8 [require]
       59 GETTABLEKS                       R15 R1 K21 ["Src"]
       61 GETTABLEKS                       R14 R15 K22 ["Types"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K8 [require]
       66 GETTABLEKS                       R17 R1 K21 ["Src"]
       68 GETTABLEKS                       R16 R17 K23 ["Reducers"]
       70 GETTABLEKS                       R15 R16 K24 ["Clipboard"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K8 [require]
       75 GETTABLEKS                       R18 R1 K21 ["Src"]
       77 GETTABLEKS                       R17 R18 K23 ["Reducers"]
       79 GETTABLEKS                       R16 R17 K25 ["RootReducer"]
       81 CALL                             R15 1 1
       82 GETTABLEKS                       R17 R1 K21 ["Src"]
       84 GETTABLEKS                       R16 R17 K26 ["Actions"]
       86 GETIMPORT                        R17 K8 [require]
       88 GETTABLEKS                       R19 R16 K24 ["Clipboard"]
       90 GETTABLEKS                       R18 R19 K27 ["CopyPropertyToClipboard"]
       92 CALL                             R17 1 1
       93 GETIMPORT                        R18 K8 [require]
       95 GETTABLEKS                       R20 R16 K28 ["Window"]
       97 GETTABLEKS                       R19 R20 K29 ["SelectItem"]
       99 CALL                             R18 1 1
      100 GETTABLEKS                       R20 R1 K21 ["Src"]
      102 GETTABLEKS                       R19 R20 K30 ["Thunks"]
      104 GETIMPORT                        R20 K8 [require]
      106 GETTABLEKS                       R22 R19 K31 ["Change"]
      108 GETTABLEKS                       R21 R22 K32 ["SetStyleRulePropertyType"]
      110 CALL                             R20 1 1
      111 GETIMPORT                        R21 K8 [require]
      113 GETTABLEKS                       R23 R19 K33 ["ContextMenu"]
      115 GETTABLEKS                       R22 R23 K34 ["ShowStyleRuleMenu"]
      117 CALL                             R21 1 1
      118 GETIMPORT                        R22 K8 [require]
      120 GETTABLEKS                       R24 R19 K31 ["Change"]
      122 GETTABLEKS                       R23 R24 K35 ["UnlinkStyleRulePropertyTokenReference"]
      124 CALL                             R22 1 1
      125 GETIMPORT                        R23 K8 [require]
      127 GETTABLEKS                       R25 R19 K33 ["ContextMenu"]
      129 GETTABLEKS                       R24 R25 K36 ["ShowFolderMenu"]
      131 CALL                             R23 1 1
      132 GETIMPORT                        R24 K8 [require]
      134 GETTABLEKS                       R27 R1 K21 ["Src"]
      136 GETTABLEKS                       R26 R27 K37 ["Util"]
      138 GETTABLEKS                       R25 R26 K38 ["mapDispatchToProps"]
      140 CALL                             R24 1 1
      141 GETIMPORT                        R25 K8 [require]
      143 GETTABLEKS                       R28 R1 K21 ["Src"]
      145 GETTABLEKS                       R27 R28 K37 ["Util"]
      147 GETTABLEKS                       R26 R27 K39 ["DesignHelpers"]
      149 CALL                             R25 1 1
      150 GETIMPORT                        R26 K8 [require]
      152 GETTABLEKS                       R29 R1 K21 ["Src"]
      154 GETTABLEKS                       R28 R29 K37 ["Util"]
      156 GETTABLEKS                       R27 R28 K40 ["MenuHelpers"]
      158 CALL                             R26 1 1
      159 GETIMPORT                        R27 K8 [require]
      161 GETTABLEKS                       R30 R1 K21 ["Src"]
      163 GETTABLEKS                       R29 R30 K41 ["Resources"]
      165 GETTABLEKS                       R28 R29 K42 ["ModernIcons"]
      167 CALL                             R27 1 1
      168 GETIMPORT                        R28 K8 [require]
      170 GETTABLEKS                       R31 R1 K21 ["Src"]
      172 GETTABLEKS                       R30 R31 K37 ["Util"]
      174 GETTABLEKS                       R29 R30 K43 ["StyleSchema"]
      176 CALL                             R28 1 1
      177 GETIMPORT                        R29 K8 [require]
      179 GETTABLEKS                       R32 R1 K21 ["Src"]
      181 GETTABLEKS                       R31 R32 K37 ["Util"]
      183 GETTABLEKS                       R30 R31 K44 ["SelectorHelpers"]
      185 CALL                             R29 1 1
      186 GETIMPORT                        R30 K8 [require]
      188 GETTABLEKS                       R33 R1 K21 ["Src"]
      190 GETTABLEKS                       R32 R33 K37 ["Util"]
      192 GETTABLEKS                       R31 R32 K45 ["StyleQueryHelpers"]
      194 CALL                             R30 1 1
      195 GETIMPORT                        R31 K8 [require]
      197 GETTABLEKS                       R34 R1 K21 ["Src"]
      199 GETTABLEKS                       R33 R34 K37 ["Util"]
      201 GETTABLEKS                       R32 R33 K46 ["TokenHelpers"]
      203 CALL                             R31 1 1
      204 GETIMPORT                        R32 K8 [require]
      206 GETTABLEKS                       R35 R1 K21 ["Src"]
      208 GETTABLEKS                       R34 R35 K41 ["Resources"]
      210 GETTABLEKS                       R33 R34 K47 ["PluginStyles"]
      212 CALL                             R32 1 1
      213 GETIMPORT                        R33 K8 [require]
      215 GETTABLEKS                       R35 R1 K21 ["Src"]
      217 GETTABLEKS                       R34 R35 K48 ["Renderers"]
      219 CALL                             R33 1 1
      220 GETIMPORT                        R34 K8 [require]
      222 GETTABLEKS                       R37 R1 K21 ["Src"]
      224 GETTABLEKS                       R36 R37 K37 ["Util"]
      226 GETTABLEKS                       R35 R36 K49 ["bind"]
      228 CALL                             R34 1 1
      229 GETIMPORT                        R35 K8 [require]
      231 GETTABLEKS                       R38 R1 K21 ["Src"]
      233 GETTABLEKS                       R37 R38 K37 ["Util"]
      235 GETTABLEKS                       R36 R37 K50 ["recordChange"]
      237 CALL                             R35 1 1
      238 MOVE                             R36 R0
      239 CALL                             R35 1 1
      240 GETIMPORT                        R36 K8 [require]
      242 GETTABLEKS                       R39 R1 K21 ["Src"]
      244 GETTABLEKS                       R38 R39 K37 ["Util"]
      246 GETTABLEKS                       R37 R38 K51 ["TreeTableHelpers"]
      248 CALL                             R36 1 1
      249 GETIMPORT                        R37 K8 [require]
      251 GETTABLEKS                       R41 R1 K21 ["Src"]
      253 GETTABLEKS                       R40 R41 K52 ["Contexts"]
      255 GETTABLEKS                       R39 R40 K53 ["Telemetry"]
      257 GETTABLEKS                       R38 R39 K54 ["TelemetryContext"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K8 [require]
      262 GETIMPORT                        R40 K5 [script]
      264 GETTABLEKS                       R39 R40 K55 ["onEdited"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K8 [require]
      269 GETTABLEKS                       R42 R1 K21 ["Src"]
      271 GETTABLEKS                       R41 R42 K56 ["Flags"]
      273 GETTABLEKS                       R40 R41 K57 ["getFFlagStyleEditorNumberSequenceUpdate"]
      275 CALL                             R39 1 1
      276 CALL                             R39 0 1
      277 GETIMPORT                        R40 K8 [require]
      279 GETTABLEKS                       R43 R1 K21 ["Src"]
      281 GETTABLEKS                       R42 R43 K56 ["Flags"]
      283 GETTABLEKS                       R41 R42 K58 ["getFFlagStyleQuery"]
      285 CALL                             R40 1 1
      286 CALL                             R40 0 1
      287 GETIMPORT                        R41 K8 [require]
      289 GETIMPORT                        R43 K5 [script]
      291 GETTABLEKS                       R42 R43 K59 ["Tree"]
      293 CALL                             R41 1 1
      294 GETTABLEKS                       R42 R41 K60 ["EditTree"]
      296 LOADK                            R45 K61 ["RowHeight"]
      297 NAMECALL                         R43 R32 K62 ["GetAttribute"]
      299 CALL                             R43 2 1
      300 GETTABLEKS                       R44 R2 K63 ["PureComponent"]
      302 LOADK                            R46 K64 ["SelectorPropertyTable"]
      303 NAMECALL                         R44 R44 K65 ["extend"]
      305 CALL                             R44 2 1
      306 DUPCLOSURE                       R45 K66 [PROTO_0]
      307 CAPTURE                          VAL R40
      308 SETGLOBAL                        R45 K67 ["connectToStyleRule"]
      310 NEWCLOSURE                       R45 P1
      311 CAPTURE                          VAL R5
      312 CAPTURE                          VAL R41
      313 CAPTURE                          VAL R39
      314 CAPTURE                          VAL R42
      315 CAPTURE                          VAL R40
      316 CAPTURE                          VAL R6
      317 CAPTURE                          VAL R28
      318 CAPTURE                          VAL R27
      319 CAPTURE                          VAL R34
      320 CAPTURE                          VAL R26
      321 CAPTURE                          VAL R29
      322 CAPTURE                          VAL R31
      323 CAPTURE                          VAL R25
      324 CAPTURE                          VAL R21
      325 CAPTURE                          VAL R23
      326 CAPTURE                          VAL R36
      327 CAPTURE                          VAL R7
      328 CAPTURE                          VAL R22
      329 CAPTURE                          VAL R20
      330 CAPTURE                          VAL R17
      331 CAPTURE                          VAL R35
      332 CAPTURE                          VAL R18
      333 CAPTURE                          REF R44
      334 CAPTURE                          VAL R30
      335 SETTABLEKS                       R45 R44 K68 ["init"]
      337 DUPCLOSURE                       R45 K69 [PROTO_38]
      338 CAPTURE                          VAL R40
      339 CAPTURE                          VAL R41
      340 CAPTURE                          VAL R5
      341 CAPTURE                          VAL R6
      342 SETTABLEKS                       R45 R44 K70 ["rebuildTableState"]
      344 DUPCLOSURE                       R45 K71 [PROTO_39]
      345 SETTABLEKS                       R45 R44 K72 ["didMount"]
      347 DUPCLOSURE                       R45 K73 [PROTO_40]
      348 SETTABLEKS                       R45 R44 K74 ["didUpdate"]
      350 DUPCLOSURE                       R45 K75 [PROTO_41]
      351 SETTABLEKS                       R45 R44 K76 ["willUnmount"]
      353 NEWCLOSURE                       R45 P6
      354 CAPTURE                          REF R44
      355 SETTABLEKS                       R45 R44 K77 ["getDerivedStateFromProps"]
      357 DUPCLOSURE                       R45 K78 [PROTO_44]
      358 CAPTURE                          VAL R6
      359 CAPTURE                          VAL R41
      360 CAPTURE                          VAL R38
      361 CAPTURE                          VAL R39
      362 CAPTURE                          VAL R33
      363 CAPTURE                          VAL R43
      364 CAPTURE                          VAL R2
      365 CAPTURE                          VAL R10
      366 SETTABLEKS                       R45 R44 K79 ["render"]
      368 MOVE                             R45 R12
      369 DUPTABLE                         R46 K82 [{"Plugin", "Localization", "Telemetry"}]
      370 GETTABLEKS                       R47 R11 K80 ["Plugin"]
      372 SETTABLEKS                       R47 R46 K80 ["Plugin"]
      374 GETTABLEKS                       R47 R11 K81 ["Localization"]
      376 SETTABLEKS                       R47 R46 K81 ["Localization"]
      378 SETTABLEKS                       R37 R46 K53 ["Telemetry"]
      380 CALL                             R45 1 1
      381 MOVE                             R46 R44
      382 CALL                             R45 1 1
      383 MOVE                             R44 R45
      384 GETTABLEKS                       R45 R3 K83 ["connect"]
      386 DUPCLOSURE                       R46 K84 [PROTO_45]
      387 MOVE                             R47 R24
      388 CALL                             R45 2 1
      389 MOVE                             R46 R44
      390 CALL                             R45 1 -1
      391 CLOSEUPVALS                      R44
      392 RETURN                           R45 -1
