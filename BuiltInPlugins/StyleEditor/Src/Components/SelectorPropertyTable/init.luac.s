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
       16 JUMPIFNOT                        R2 ; [+17]
       17 GETTABLEKS                       R2 R1 K2 ["Instance"]
       19 LOADK                            R4 K3 ["Folder"]
       20 NAMECALL                         R2 R2 K4 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIFNOT                        R2 ; [+10]
       24 GETTABLEKS                       R3 R1 K5 ["Name"]
       26 GETTABLEKS                       R2 R3 K6 ["Value"]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R3 R4 K7 ["FolderName"]
       31 JUMPIFNOTEQ                      R2 R3 ; [+2]
       33 RETURN                           R0 0
       34 DUPTABLE                         R2 K9 [{"Schema"}]
       35 GETUPVAL                         R3 4
       36 GETUPVAL                         R5 5
       37 GETTABLEKS                       R4 R5 K10 ["SelectorSchema"]
       39 DUPTABLE                         R5 K12 [{"Editing"}]
       40 LOADB                            R6 1
       41 SETTABLEKS                       R6 R5 K11 ["Editing"]
       43 CALL                             R3 2 1
       44 SETTABLEKS                       R3 R2 K8 ["Schema"]
       46 GETUPVAL                         R3 0
       47 MOVE                             R5 R0
       48 MOVE                             R6 R2
       49 GETUPVAL                         R7 1
       50 LOADN                            R8 1
       51 NAMECALL                         R3 R3 K13 ["updateCell"]
       53 CALL                             R3 5 -1
       54 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+19]
        5 LOADB                            R1 1
        6 GETTABLEKS                       R2 R0 K1 ["ClipboardProperty"]
        8 JUMPIFNOTEQKNIL                  R2 ; [+14]
       10 LOADB                            R1 0
       11 GETTABLEKS                       R2 R0 K2 ["ClipboardTransition"]
       13 JUMPIFEQKNIL                     R2 ; [+9]
       15 GETTABLEKS                       R3 R0 K2 ["ClipboardTransition"]
       17 GETTABLEKS                       R2 R3 K3 ["Name"]
       19 JUMPIFNOTEQKNIL                  R2 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 RETURN                           R1 1
       24 GETTABLEKS                       R2 R0 K1 ["ClipboardProperty"]
       26 JUMPIFNOTEQKNIL                  R2 ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 RETURN                           R1 1

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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K1 [{"Expansion"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R5 R0 K0 ["Expansion"]
        6 NEWTABLE                         R6 1 0
        8 GETUPVAL                         R7 1
        9 GETUPVAL                         R8 2
       10 SETTABLE                         R8 R6 R7
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K0 ["Expansion"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_10:
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
       34 GETUPVAL                         R7 2
       35 JUMPIFNOT                        R7 ; [+13]
       36 GETUPVAL                         R6 3
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R8 R9 K17 ["menuActions"]
       40 GETTABLEKS                       R7 R8 K18 ["pastePropertyOrTransition"]
       42 NEWTABLE                         R8 0 1
       44 MOVE                             R9 R0
       45 SETLIST                          R8 R9 1 [1]
       47 CALL                             R6 2 1
       48 JUMP                             ; [+12]
       49 GETUPVAL                         R6 3
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R8 R9 K17 ["menuActions"]
       53 GETTABLEKS                       R7 R8 K19 ["pasteProperty"]
       55 NEWTABLE                         R8 0 1
       57 MOVE                             R9 R0
       58 SETLIST                          R8 R9 1 [1]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K9 ["OnItemClicked"]
       63 SETLIST                          R4 R5 1 [1]
       65 SETTABLEKS                       R4 R3 K3 ["Children"]
       67 GETTABLEKS                       R4 R1 K20 ["Plugin"]
       69 NAMECALL                         R4 R4 K21 ["get"]
       71 CALL                             R4 1 1
       72 GETTABLEKS                       R5 R1 K22 ["Telemetry"]
       74 NAMECALL                         R5 R5 K21 ["get"]
       76 CALL                             R5 1 1
       77 GETUPVAL                         R7 4
       78 GETTABLEKS                       R6 R7 K23 ["trackClicks"]
       80 MOVE                             R7 R3
       81 MOVE                             R8 R5
       82 CALL                             R6 2 0
       83 GETUPVAL                         R7 4
       84 GETTABLEKS                       R6 R7 K24 ["showContextMenu"]
       86 MOVE                             R7 R4
       87 MOVE                             R8 R3
       88 CALL                             R6 2 0
       89 RETURN                           R0 0

PROTO_11:
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
      183 LOADNIL                          R13
      184 GETUPVAL                         R14 10
      185 JUMPIFNOT                        R14 ; [+70]
      186 GETTABLEKS                       R15 R0 K39 ["Name"]
      188 GETTABLEKS                       R14 R15 K15 ["Value"]
      190 NAMECALL                         R17 R3 K42 ["GetPropertyTransitions"]
      192 CALL                             R17 1 1
      193 GETTABLE                         R16 R17 R14
      194 JUMPIFNOTEQKNIL                  R16 ; [+2]
      196 LOADB                            R15 0 +1
      197 LOADB                            R15 1
      198 DUPTABLE                         R16 K44 [{"Id", "Text", "Icon", "Children"}]
      199 LOADK                            R17 K45 ["Insert"]
      200 SETTABLEKS                       R17 R16 K24 ["Id"]
      202 LOADK                            R19 K30 ["ContextMenu"]
      203 LOADK                            R20 K45 ["Insert"]
      204 NAMECALL                         R17 R4 K31 ["getText"]
      206 CALL                             R17 3 1
      207 SETTABLEKS                       R17 R16 K25 ["Text"]
      209 GETUPVAL                         R18 7
      210 GETTABLEKS                       R17 R18 K46 ["insert"]
      212 CALL                             R17 0 1
      213 SETTABLEKS                       R17 R16 K26 ["Icon"]
      215 NEWTABLE                         R17 0 1
      217 DUPTABLE                         R18 K48 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      218 LOADK                            R19 K49 ["Transition"]
      219 SETTABLEKS                       R19 R18 K24 ["Id"]
      221 LOADK                            R21 K30 ["ContextMenu"]
      222 LOADK                            R22 K50 ["New.Transition"]
      223 NAMECALL                         R19 R4 K31 ["getText"]
      225 CALL                             R19 3 1
      226 SETTABLEKS                       R19 R18 K25 ["Text"]
      228 GETUPVAL                         R20 7
      229 GETTABLEKS                       R19 R20 K46 ["insert"]
      231 CALL                             R19 0 1
      232 SETTABLEKS                       R19 R18 K26 ["Icon"]
      234 NOT                              R19 R15
      235 SETTABLEKS                       R19 R18 K47 ["Enabled"]
      237 GETUPVAL                         R19 8
      238 GETUPVAL                         R22 0
      239 GETTABLEKS                       R21 R22 K34 ["menuActions"]
      241 GETTABLEKS                       R20 R21 K51 ["insertTransition"]
      243 NEWTABLE                         R21 0 1
      245 MOVE                             R22 R0
      246 SETLIST                          R21 R22 1 [1]
      248 CALL                             R19 2 1
      249 SETTABLEKS                       R19 R18 K27 ["OnItemClicked"]
      251 SETLIST                          R17 R18 1 [1]
      253 SETTABLEKS                       R17 R16 K43 ["Children"]
      255 MOVE                             R13 R16
      256 DUPTABLE                         R14 K52 [{"Id", "Children"}]
      257 LOADK                            R15 K53 ["PropertyRowMenu"]
      258 SETTABLEKS                       R15 R14 K24 ["Id"]
      260 NEWTABLE                         R15 0 6
      262 MOVE                             R16 R10
      263 DUPTABLE                         R17 K55 [{"Id", "Text", "Icon", "Hidden", "OnItemClicked"}]
      264 LOADK                            R18 K56 ["ViewTheme"]
      265 SETTABLEKS                       R18 R17 K24 ["Id"]
      267 LOADK                            R20 K30 ["ContextMenu"]
      268 JUMPIFNOT                        R9 ; [+2]
      269 LOADK                            R21 K56 ["ViewTheme"]
      270 JUMP                             ; [+1]
      271 LOADK                            R21 K57 ["ViewToken"]
      272 NAMECALL                         R18 R4 K31 ["getText"]
      274 CALL                             R18 3 1
      275 SETTABLEKS                       R18 R17 K25 ["Text"]
      277 GETUPVAL                         R19 7
      278 GETTABLEKS                       R18 R19 K58 ["open"]
      280 CALL                             R18 0 1
      281 SETTABLEKS                       R18 R17 K26 ["Icon"]
      283 NOT                              R18 R5
      284 SETTABLEKS                       R18 R17 K54 ["Hidden"]
      286 GETUPVAL                         R18 8
      287 GETUPVAL                         R21 0
      288 GETTABLEKS                       R20 R21 K34 ["menuActions"]
      290 GETTABLEKS                       R19 R20 K59 ["viewTheme"]
      292 NEWTABLE                         R20 0 1
      294 MOVE                             R21 R0
      295 SETLIST                          R20 R21 1 [1]
      297 CALL                             R18 2 1
      298 SETTABLEKS                       R18 R17 K27 ["OnItemClicked"]
      300 DUPTABLE                         R18 K60 [{"Id", "Text", "Hidden", "Children"}]
      301 LOADK                            R19 K61 ["ChangeType"]
      302 SETTABLEKS                       R19 R18 K24 ["Id"]
      304 LOADK                            R21 K30 ["ContextMenu"]
      305 LOADK                            R22 K61 ["ChangeType"]
      306 NAMECALL                         R19 R4 K31 ["getText"]
      308 CALL                             R19 3 1
      309 SETTABLEKS                       R19 R18 K25 ["Text"]
      311 MOVE                             R19 R7
      312 JUMPIF                           R19 ; [+6]
      313 LENGTH                           R20 R11
      314 LOADN                            R21 1
      315 JUMPIFLE                         R20 R21 ; [+2]
      317 LOADB                            R19 0 +1
      318 LOADB                            R19 1
      319 SETTABLEKS                       R19 R18 K54 ["Hidden"]
      321 SETTABLEKS                       R12 R18 K43 ["Children"]
      323 DUPTABLE                         R19 K28 [{"Id", "Text", "Icon", "OnItemClicked"}]
      324 LOADK                            R20 K62 ["Copy"]
      325 SETTABLEKS                       R20 R19 K24 ["Id"]
      327 LOADK                            R22 K30 ["ContextMenu"]
      328 LOADK                            R23 K62 ["Copy"]
      329 NAMECALL                         R20 R4 K31 ["getText"]
      331 CALL                             R20 3 1
      332 SETTABLEKS                       R20 R19 K25 ["Text"]
      334 GETUPVAL                         R21 7
      335 GETTABLEKS                       R20 R21 K63 ["copy"]
      337 CALL                             R20 0 1
      338 SETTABLEKS                       R20 R19 K26 ["Icon"]
      340 GETUPVAL                         R20 8
      341 GETUPVAL                         R23 0
      342 GETTABLEKS                       R22 R23 K34 ["menuActions"]
      344 GETTABLEKS                       R21 R22 K64 ["copyProperty"]
      346 NEWTABLE                         R22 0 1
      348 MOVE                             R23 R0
      349 SETLIST                          R22 R23 1 [1]
      351 CALL                             R20 2 1
      352 SETTABLEKS                       R20 R19 K27 ["OnItemClicked"]
      354 DUPTABLE                         R20 K48 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
      355 LOADK                            R21 K65 ["Paste"]
      356 SETTABLEKS                       R21 R20 K24 ["Id"]
      358 LOADK                            R23 K30 ["ContextMenu"]
      359 LOADK                            R24 K65 ["Paste"]
      360 NAMECALL                         R21 R4 K31 ["getText"]
      362 CALL                             R21 3 1
      363 SETTABLEKS                       R21 R20 K25 ["Text"]
      365 GETUPVAL                         R22 7
      366 GETTABLEKS                       R21 R22 K66 ["paste"]
      368 CALL                             R21 0 1
      369 SETTABLEKS                       R21 R20 K26 ["Icon"]
      371 GETUPVAL                         R22 0
      372 GETTABLEKS                       R21 R22 K67 ["canPasteProperty"]
      374 CALL                             R21 0 1
      375 SETTABLEKS                       R21 R20 K47 ["Enabled"]
      377 GETUPVAL                         R22 10
      378 JUMPIFNOT                        R22 ; [+13]
      379 GETUPVAL                         R21 8
      380 GETUPVAL                         R24 0
      381 GETTABLEKS                       R23 R24 K34 ["menuActions"]
      383 GETTABLEKS                       R22 R23 K68 ["pastePropertyOrTransition"]
      385 NEWTABLE                         R23 0 1
      387 MOVE                             R24 R0
      388 SETLIST                          R23 R24 1 [1]
      390 CALL                             R21 2 1
      391 JUMP                             ; [+12]
      392 GETUPVAL                         R21 8
      393 GETUPVAL                         R24 0
      394 GETTABLEKS                       R23 R24 K34 ["menuActions"]
      396 GETTABLEKS                       R22 R23 K69 ["pasteProperty"]
      398 NEWTABLE                         R23 0 1
      400 MOVE                             R24 R0
      401 SETLIST                          R23 R24 1 [1]
      403 CALL                             R21 2 1
      404 SETTABLEKS                       R21 R20 K27 ["OnItemClicked"]
      406 DUPTABLE                         R21 K28 [{"Id", "Text", "Icon", "OnItemClicked"}]
      407 LOADK                            R22 K70 ["Delete"]
      408 SETTABLEKS                       R22 R21 K24 ["Id"]
      410 LOADK                            R24 K30 ["ContextMenu"]
      411 LOADK                            R25 K70 ["Delete"]
      412 NAMECALL                         R22 R4 K31 ["getText"]
      414 CALL                             R22 3 1
      415 SETTABLEKS                       R22 R21 K25 ["Text"]
      417 GETUPVAL                         R23 7
      418 GETTABLEKS                       R22 R23 K71 ["delete"]
      420 CALL                             R22 0 1
      421 SETTABLEKS                       R22 R21 K26 ["Icon"]
      423 GETUPVAL                         R22 8
      424 GETUPVAL                         R25 0
      425 GETTABLEKS                       R24 R25 K34 ["menuActions"]
      427 GETTABLEKS                       R23 R24 K72 ["deleteProperty"]
      429 NEWTABLE                         R24 0 1
      431 MOVE                             R25 R0
      432 SETLIST                          R24 R25 1 [1]
      434 CALL                             R22 2 1
      435 SETTABLEKS                       R22 R21 K27 ["OnItemClicked"]
      437 SETLIST                          R15 R16 6 [1]
      439 SETTABLEKS                       R15 R14 K43 ["Children"]
      441 GETUPVAL                         R15 10
      442 JUMPIFNOT                        R15 ; [+9]
      443 GETTABLEKS                       R16 R14 K43 ["Children"]
      445 LOADN                            R17 2
      446 FASTCALL3                        TABLE_INSERT R16 R17 R13
      448 MOVE                             R18 R13
      449 GETIMPORT                        R15 K73 [table.insert]
      451 CALL                             R15 3 0
      452 GETTABLEKS                       R15 R2 K74 ["Plugin"]
      454 NAMECALL                         R15 R15 K75 ["get"]
      456 CALL                             R15 1 1
      457 GETTABLEKS                       R16 R2 K76 ["Telemetry"]
      459 NAMECALL                         R16 R16 K75 ["get"]
      461 CALL                             R16 1 1
      462 GETUPVAL                         R18 9
      463 GETTABLEKS                       R17 R18 K77 ["trackClicks"]
      465 MOVE                             R18 R14
      466 MOVE                             R19 R16
      467 CALL                             R17 2 0
      468 GETUPVAL                         R18 9
      469 GETTABLEKS                       R17 R18 K78 ["showContextMenu"]
      471 MOVE                             R18 R15
      472 MOVE                             R19 R14
      473 CALL                             R17 2 0
      474 RETURN                           R0 0

PROTO_12:
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
       17 GETUPVAL                         R5 2
       18 SETTABLEKS                       R5 R4 K6 ["Instance"]
       20 NEWTABLE                         R5 0 1
       22 LOADK                            R6 K9 ["TweenInfo"]
       23 SETLIST                          R5 R6 1 [1]
       25 SETTABLEKS                       R5 R4 K7 ["ExpectedTypes"]
       27 CALL                             R2 2 1
       28 SETTABLEKS                       R2 R1 K1 ["Schema"]
       30 GETUPVAL                         R2 3
       31 MOVE                             R4 R0
       32 MOVE                             R5 R1
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R6 R7 K10 ["Path"]
       36 LOADN                            R7 2
       37 NAMECALL                         R2 R2 K11 ["updateCell"]
       39 CALL                             R2 5 1
       40 GETUPVAL                         R3 5
       41 MOVE                             R4 R2
       42 CALL                             R3 1 -1
       43 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["state"]
        6 GETTABLEKS                       R4 R0 K2 ["Instance"]
        8 FASTCALL1                        TYPEOF R4 ; [+2]
        9 GETIMPORT                        R3 K4 [typeof]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K2 ["Instance"] ; [+69]
       14 GETUPVAL                         R3 1
       15 JUMPIFNOT                        R3 ; [+45]
       16 GETTABLEKS                       R3 R0 K2 ["Instance"]
       18 LOADK                            R5 K5 ["StyleRule"]
       19 NAMECALL                         R3 R3 K6 ["IsA"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+21]
       23 GETTABLEKS                       R3 R1 K7 ["dispatch"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R5 R0 K2 ["Instance"]
       28 GETUPVAL                         R6 3
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K8 ["menuActions"]
       32 GETTABLEKS                       R7 R8 K9 ["rename"]
       34 NEWTABLE                         R8 0 1
       36 MOVE                             R9 R0
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R6 2 1
       40 LOADB                            R7 0
       41 CALL                             R4 3 -1
       42 CALL                             R3 -1 0
       43 RETURN                           R0 0
       44 GETTABLEKS                       R3 R0 K2 ["Instance"]
       46 LOADK                            R5 K10 ["Folder"]
       47 NAMECALL                         R3 R3 K6 ["IsA"]
       49 CALL                             R3 2 1
       50 JUMPIFNOT                        R3 ; [+31]
       51 GETTABLEKS                       R3 R1 K7 ["dispatch"]
       53 GETUPVAL                         R4 4
       54 GETTABLEKS                       R5 R0 K2 ["Instance"]
       56 LOADB                            R6 0
       57 CALL                             R4 2 -1
       58 CALL                             R3 -1 0
       59 RETURN                           R0 0
       60 JUMP                             ; [+21]
       61 GETTABLEKS                       R3 R1 K7 ["dispatch"]
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R5 R0 K2 ["Instance"]
       66 GETUPVAL                         R6 3
       67 GETUPVAL                         R9 0
       68 GETTABLEKS                       R8 R9 K8 ["menuActions"]
       70 GETTABLEKS                       R7 R8 K9 ["rename"]
       72 NEWTABLE                         R8 0 1
       74 MOVE                             R9 R0
       75 SETLIST                          R8 R9 1 [1]
       77 CALL                             R6 2 1
       78 LOADB                            R7 0
       79 CALL                             R4 3 -1
       80 CALL                             R3 -1 0
       81 RETURN                           R0 0
       82 GETTABLEKS                       R3 R0 K11 ["Value"]
       84 JUMPIFNOT                        R3 ; [+5]
       85 GETTABLEKS                       R4 R0 K11 ["Value"]
       87 GETTABLEKS                       R3 R4 K12 ["Schema"]
       89 JUMPIF                           R3 ; [+1]
       90 RETURN                           R0 0
       91 LOADNIL                          R3
       92 GETUPVAL                         R4 5
       93 JUMPIFNOT                        R4 ; [+26]
       94 GETUPVAL                         R4 6
       95 GETTABLEKS                       R7 R2 K13 ["table"]
       97 GETTABLEKS                       R6 R7 K14 ["Items"]
       99 MOVE                             R7 R0
      100 NAMECALL                         R4 R4 K15 ["getParent"]
      102 CALL                             R4 3 1
      103 GETTABLEKS                       R5 R4 K2 ["Instance"]
      105 JUMPIFNOT                        R5 ; [+3]
      106 GETTABLEKS                       R3 R4 K2 ["Instance"]
      108 JUMP                             ; [+11]
      109 GETUPVAL                         R5 6
      110 GETTABLEKS                       R8 R2 K13 ["table"]
      112 GETTABLEKS                       R7 R8 K14 ["Items"]
      114 MOVE                             R8 R4
      115 NAMECALL                         R5 R5 K15 ["getParent"]
      117 CALL                             R5 3 1
      118 GETTABLEKS                       R3 R5 K2 ["Instance"]
      120 GETTABLEKS                       R6 R0 K11 ["Value"]
      122 GETTABLEKS                       R5 R6 K12 ["Schema"]
      124 GETTABLEKS                       R4 R5 K16 ["Type"]
      126 JUMPIFNOTEQKS                    R4 K17 ["Empty"] ; [+7]
      128 GETUPVAL                         R5 0
      129 GETTABLEKS                       R4 R5 K18 ["showEmptyRowContextMenu"]
      131 MOVE                             R5 R0
      132 CALL                             R4 1 0
      133 JUMP                             ; [+43]
      134 GETUPVAL                         R4 5
      135 JUMPIFNOT                        R4 ; [+36]
      136 GETTABLEKS                       R4 R0 K19 ["Metadata"]
      138 JUMPIFNOT                        R4 ; [+33]
      139 GETTABLEKS                       R5 R0 K19 ["Metadata"]
      141 GETTABLEKS                       R4 R5 K20 ["RowType"]
      143 JUMPIFNOTEQKS                    R4 K21 ["Transition"] ; [+28]
      145 FASTCALL2K                       ASSERT R3 K22 ; [+5]
      147 MOVE                             R5 R3
      148 LOADK                            R6 K22 ["StyleRule must be valid"]
      149 GETIMPORT                        R4 K24 [assert]
      151 CALL                             R4 2 0
      152 NEWCLOSURE                       R4 P0
      153 CAPTURE                          UPVAL U7
      154 CAPTURE                          UPVAL U8
      155 CAPTURE                          UPVAL U9
      156 CAPTURE                          REF R3
      157 CAPTURE                          UPVAL U6
      158 CAPTURE                          VAL R0
      159 CAPTURE                          UPVAL U10
      160 GETTABLEKS                       R5 R1 K7 ["dispatch"]
      162 GETUPVAL                         R6 11
      163 MOVE                             R7 R3
      164 GETTABLEKS                       R9 R0 K19 ["Metadata"]
      166 GETTABLEKS                       R8 R9 K25 ["TransitionPropertyName"]
      168 MOVE                             R9 R4
      169 CALL                             R6 3 -1
      170 CALL                             R5 -1 0
      171 JUMP                             ; [+5]
      172 GETUPVAL                         R5 0
      173 GETTABLEKS                       R4 R5 K26 ["showPropertyRowContextMenu"]
      175 MOVE                             R5 R0
      176 CALL                             R4 1 0
      177 CLOSEUPVALS                      R3
      178 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 JUMPIFNOT                        R3 ; [+71]
        5 LOADNIL                          R3
        6 GETTABLEKS                       R4 R0 K1 ["Metadata"]
        8 JUMPIFNOT                        R4 ; [+23]
        9 GETTABLEKS                       R5 R0 K1 ["Metadata"]
       11 GETTABLEKS                       R4 R5 K2 ["RowType"]
       13 JUMPIFNOTEQKS                    R4 K3 ["Property"] ; [+18]
       15 GETTABLEKS                       R5 R0 K1 ["Metadata"]
       17 GETTABLEKS                       R4 R5 K4 ["IsUnset"]
       19 JUMPIF                           R4 ; [+12]
       20 GETTABLEKS                       R5 R0 K5 ["Value"]
       22 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       24 LOADK                            R6 K6 ["row expected to have value column"]
       25 GETIMPORT                        R4 K8 [assert]
       27 CALL                             R4 2 0
       28 GETTABLEKS                       R4 R0 K5 ["Value"]
       30 GETTABLEKS                       R3 R4 K5 ["Value"]
       32 LOADNIL                          R4
       33 GETTABLEKS                       R5 R0 K9 ["Children"]
       35 JUMPIFNOT                        R5 ; [+28]
       36 GETTABLEKS                       R6 R0 K9 ["Children"]
       38 LENGTH                           R5 R6
       39 LOADN                            R6 1
       40 JUMPIFNOTLE                      R6 R5 ; [+23]
       42 GETTABLEKS                       R6 R0 K9 ["Children"]
       44 GETTABLEKS                       R8 R0 K9 ["Children"]
       46 LENGTH                           R7 R8
       47 GETTABLE                         R5 R6 R7
       48 GETTABLEKS                       R6 R5 K1 ["Metadata"]
       50 JUMPIFNOT                        R6 ; [+13]
       51 GETTABLEKS                       R7 R5 K1 ["Metadata"]
       53 GETTABLEKS                       R6 R7 K2 ["RowType"]
       55 JUMPIFNOTEQKS                    R6 K10 ["Transition"] ; [+8]
       57 GETTABLEKS                       R6 R5 K5 ["Value"]
       59 JUMPIFNOT                        R6 ; [+4]
       60 GETTABLEKS                       R6 R5 K5 ["Value"]
       62 GETTABLEKS                       R4 R6 K5 ["Value"]
       64 GETTABLEKS                       R5 R2 K11 ["dispatch"]
       66 GETUPVAL                         R6 2
       67 GETTABLEKS                       R8 R0 K12 ["Name"]
       69 GETTABLEKS                       R7 R8 K5 ["Value"]
       71 MOVE                             R8 R3
       72 MOVE                             R9 R4
       73 CALL                             R6 3 -1
       74 CALL                             R5 -1 0
       75 RETURN                           R0 0
       76 GETTABLEKS                       R3 R2 K11 ["dispatch"]
       78 GETUPVAL                         R4 2
       79 GETTABLEKS                       R6 R0 K12 ["Name"]
       81 GETTABLEKS                       R5 R6 K5 ["Value"]
       83 GETTABLEKS                       R7 R0 K5 ["Value"]
       85 GETTABLEKS                       R6 R7 K5 ["Value"]
       87 CALL                             R4 2 -1
       88 CALL                             R3 -1 0
       89 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["ClipboardProperty"]
        5 JUMPIFNOT                        R3 ; [+9]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K2 ["menuActions"]
        9 GETTABLEKS                       R3 R4 K3 ["pasteProperty"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 CALL                             R3 2 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R2 K4 ["ClipboardTransition"]
       17 JUMPIFNOT                        R3 ; [+8]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K2 ["menuActions"]
       21 GETTABLEKS                       R3 R4 K5 ["pasteTransition"]
       23 MOVE                             R4 R0
       24 MOVE                             R5 R1
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["ClipboardTransition"]
        5 GETTABLEKS                       R3 R4 K1 ["TransitionValue"]
        7 NAMECALL                         R0 R0 K2 ["SetPropertyTransition"]
        9 CALL                             R0 3 0
       10 GETIMPORT                        R0 K6 [Enum.FinishRecordingOperation.Commit]
       12 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["props"]
        6 GETTABLEKS                       R4 R3 K2 ["ClipboardTransition"]
        8 JUMPIF                           R4 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R5 R3 K2 ["ClipboardTransition"]
       12 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       14 LOADK                            R6 K3 ["ClipboardTransition cannot be nil when pasting"]
       15 GETIMPORT                        R4 K5 [assert]
       17 CALL                             R4 2 0
       18 LOADNIL                          R4
       19 MOVE                             R5 R0
       20 JUMPIFNOT                        R5 ; [+14]
       21 JUMPIF                           R4 ; [+13]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R9 R2 K6 ["table"]
       25 GETTABLEKS                       R8 R9 K7 ["Items"]
       27 MOVE                             R9 R5
       28 NAMECALL                         R6 R6 K8 ["getParent"]
       30 CALL                             R6 3 1
       31 MOVE                             R5 R6
       32 GETTABLEKS                       R4 R5 K9 ["Instance"]
       34 JUMPBACK                         ; [-15]
       35 JUMPIFNOT                        R4 ; [+5]
       36 LOADK                            R8 K10 ["StyleRule"]
       37 NAMECALL                         R6 R4 K11 ["IsA"]
       39 CALL                             R6 2 1
       40 JUMPIF                           R6 ; [+2]
       41 CLOSEUPVALS                      R4
       42 RETURN                           R0 0
       43 GETTABLEKS                       R6 R0 K12 ["Value"]
       45 JUMPIFNOT                        R6 ; [+10]
       46 GETTABLEKS                       R9 R0 K12 ["Value"]
       48 GETTABLEKS                       R8 R9 K13 ["Schema"]
       50 GETTABLEKS                       R7 R8 K14 ["Type"]
       52 JUMPIFEQKS                       R7 K15 ["Empty"] ; [+2]
       54 LOADB                            R6 0 +1
       55 LOADB                            R6 1
       56 JUMPIFNOT                        R6 ; [+5]
       57 GETTABLEKS                       R8 R3 K2 ["ClipboardTransition"]
       59 GETTABLEKS                       R7 R8 K16 ["Name"]
       61 JUMP                             ; [+4]
       62 GETTABLEKS                       R8 R0 K16 ["Name"]
       64 GETTABLEKS                       R7 R8 K12 ["Value"]
       66 GETUPVAL                         R8 2
       67 DUPTABLE                         R9 K19 [{"Name", "DisplayName", "DoChange"}]
       68 LOADK                            R10 K20 ["StyleEditor.PasteTransition"]
       69 SETTABLEKS                       R10 R9 K16 ["Name"]
       71 LOADK                            R10 K21 ["StyleEditor - Paste Transition"]
       72 SETTABLEKS                       R10 R9 K17 ["DisplayName"]
       74 NEWCLOSURE                       R10 P0
       75 CAPTURE                          REF R4
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R10 R9 K18 ["DoChange"]
       80 CALL                             R8 1 0
       81 CLOSEUPVALS                      R4
       82 RETURN                           R0 0

PROTO_26:
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
       16 GETUPVAL                         R1 2
       17 JUMPIFNOT                        R1 ; [+13]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K1 ["ClipboardProperty"]
       21 GETTABLEKS                       R3 R4 K2 ["Name"]
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K1 ["ClipboardProperty"]
       26 GETTABLEKS                       R4 R5 K5 ["Transition"]
       28 NAMECALL                         R1 R0 K6 ["SetPropertyTransition"]
       30 CALL                             R1 3 0
       31 GETIMPORT                        R1 K10 [Enum.FinishRecordingOperation.Commit]
       33 RETURN                           R1 1

PROTO_27:
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
       43 CAPTURE                          UPVAL U3
       44 SETTABLEKS                       R7 R6 K12 ["DoChange"]
       46 CALL                             R5 1 0
       47 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Instance"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Name"]
        6 GETTABLEKS                       R2 R3 K2 ["Value"]
        8 LOADNIL                          R3
        9 NAMECALL                         R0 R0 K3 ["SetProperty"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+12]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K0 ["Instance"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K1 ["Name"]
       20 GETTABLEKS                       R2 R3 K2 ["Value"]
       22 LOADNIL                          R3
       23 NAMECALL                         R0 R0 K4 ["SetPropertyTransition"]
       25 CALL                             R0 3 0
       26 GETIMPORT                        R0 K8 [Enum.FinishRecordingOperation.Commit]
       28 RETURN                           R0 1

PROTO_29:
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
       28 CAPTURE                          UPVAL U3
       29 SETTABLEKS                       R5 R4 K7 ["DoChange"]
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["onDoubleClick"]
        3 GETTABLEKS                       R3 R0 K1 ["Path"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_32:
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
       25 GETUPVAL                         R12 3
       26 GETTABLEKS                       R11 R12 K9 ["TweenInfoSchema"]
       28 GETTABLEKS                       R10 R11 K10 ["GetDefaultValue"]
       30 CALL                             R10 0 -1
       31 CALL                             R7 -1 -1
       32 CALL                             R6 -1 0
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K11 ["setRowExpanded"]
       36 GETTABLEKS                       R7 R0 K12 ["Id"]
       38 LOADB                            R8 1
       39 CALL                             R6 2 0
       40 RETURN                           R0 0

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R0 R0 K0 ["setState"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 DUPCLOSURE                       R2 K0 [PROTO_41]
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

PROTO_43:
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

PROTO_44:
        0 DUPCLOSURE                       R0 K0 [PROTO_43]
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

PROTO_45:
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
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          UPVAL U7
       56 SETTABLEKS                       R2 R0 K14 ["onDoubleClick"]
       58 NEWCLOSURE                       R2 P1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U8
       61 SETTABLEKS                       R2 R0 K15 ["canPasteProperty"]
       63 NEWCLOSURE                       R2 P2
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U4
       66 SETTABLEKS                       R2 R0 K16 ["canPasteSelector"]
       68 NEWCLOSURE                       R2 P3
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U6
       71 SETTABLEKS                       R2 R0 K17 ["selectRow"]
       73 NEWCLOSURE                       R2 P4
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R2 R0 K18 ["onRightClickRow"]
       77 GETUPVAL                         R2 8
       78 JUMPIFNOT                        R2 ; [+5]
       79 NEWCLOSURE                       R2 P5
       80 CAPTURE                          VAL R1
       81 CAPTURE                          UPVAL U6
       82 SETTABLEKS                       R2 R0 K19 ["setRowExpanded"]
       84 NEWCLOSURE                       R2 P6
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U9
       87 CAPTURE                          UPVAL U8
       88 CAPTURE                          UPVAL U10
       89 CAPTURE                          UPVAL U11
       90 SETTABLEKS                       R2 R0 K20 ["showEmptyRowContextMenu"]
       92 NEWCLOSURE                       R2 P7
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          UPVAL U3
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          UPVAL U12
       98 CAPTURE                          UPVAL U13
       99 CAPTURE                          UPVAL U14
      100 CAPTURE                          UPVAL U9
      101 CAPTURE                          UPVAL U10
      102 CAPTURE                          UPVAL U11
      103 CAPTURE                          UPVAL U8
      104 SETTABLEKS                       R2 R0 K21 ["showPropertyRowContextMenu"]
      106 NEWCLOSURE                       R2 P8
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U4
      109 CAPTURE                          UPVAL U15
      110 CAPTURE                          UPVAL U10
      111 CAPTURE                          UPVAL U16
      112 CAPTURE                          UPVAL U8
      113 CAPTURE                          UPVAL U3
      114 CAPTURE                          VAL R1
      115 CAPTURE                          UPVAL U7
      116 CAPTURE                          UPVAL U6
      117 CAPTURE                          UPVAL U0
      118 CAPTURE                          UPVAL U17
      119 SETTABLEKS                       R2 R0 K22 ["showContextMenu"]
      121 GETTABLEKS                       R2 R0 K12 ["tableCallbacks"]
      123 NEWCLOSURE                       R3 P9
      124 CAPTURE                          UPVAL U18
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R3 R2 K23 ["OnSelectionChange"]
      128 NEWCLOSURE                       R2 P10
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U19
      131 SETTABLEKS                       R2 R0 K24 ["onSizeChange"]
      133 DUPTABLE                         R2 K36 [{"linkToken", "unlinkToken", "changePropertyType", "copyProperty", "pastePropertyOrTransition", "pasteTransition", "pasteProperty", "deleteProperty", "viewTheme", "rename", "insertTransition"}]
      134 NEWCLOSURE                       R3 P11
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U3
      137 CAPTURE                          UPVAL U7
      138 CAPTURE                          VAL R1
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          UPVAL U0
      141 SETTABLEKS                       R3 R2 K25 ["linkToken"]
      143 NEWCLOSURE                       R3 P12
      144 CAPTURE                          VAL R0
      145 CAPTURE                          UPVAL U3
      146 CAPTURE                          UPVAL U20
      147 SETTABLEKS                       R3 R2 K26 ["unlinkToken"]
      149 NEWCLOSURE                       R3 P13
      150 CAPTURE                          VAL R0
      151 CAPTURE                          UPVAL U3
      152 CAPTURE                          UPVAL U21
      153 SETTABLEKS                       R3 R2 K27 ["changePropertyType"]
      155 NEWCLOSURE                       R3 P14
      156 CAPTURE                          VAL R0
      157 CAPTURE                          UPVAL U8
      158 CAPTURE                          UPVAL U22
      159 SETTABLEKS                       R3 R2 K28 ["copyProperty"]
      161 GETUPVAL                         R4 8
      162 JUMPIFNOT                        R4 ; [+3]
      163 NEWCLOSURE                       R3 P15
      164 CAPTURE                          VAL R0
      165 JUMP                             ; [+1]
      166 LOADNIL                          R3
      167 SETTABLEKS                       R3 R2 K29 ["pastePropertyOrTransition"]
      169 GETUPVAL                         R4 8
      170 JUMPIFNOT                        R4 ; [+5]
      171 NEWCLOSURE                       R3 P16
      172 CAPTURE                          VAL R0
      173 CAPTURE                          UPVAL U3
      174 CAPTURE                          UPVAL U23
      175 JUMP                             ; [+1]
      176 LOADNIL                          R3
      177 SETTABLEKS                       R3 R2 K30 ["pasteTransition"]
      179 NEWCLOSURE                       R3 P17
      180 CAPTURE                          VAL R0
      181 CAPTURE                          UPVAL U3
      182 CAPTURE                          UPVAL U23
      183 CAPTURE                          UPVAL U8
      184 SETTABLEKS                       R3 R2 K31 ["pasteProperty"]
      186 NEWCLOSURE                       R3 P18
      187 CAPTURE                          UPVAL U3
      188 CAPTURE                          VAL R0
      189 CAPTURE                          UPVAL U23
      190 CAPTURE                          UPVAL U8
      191 SETTABLEKS                       R3 R2 K32 ["deleteProperty"]
      193 NEWCLOSURE                       R3 P19
      194 CAPTURE                          VAL R0
      195 CAPTURE                          UPVAL U13
      196 CAPTURE                          UPVAL U18
      197 CAPTURE                          UPVAL U24
      198 SETTABLEKS                       R3 R2 K33 ["viewTheme"]
      200 NEWCLOSURE                       R3 P20
      201 CAPTURE                          VAL R0
      202 SETTABLEKS                       R3 R2 K34 ["rename"]
      204 GETUPVAL                         R4 8
      205 JUMPIFNOT                        R4 ; [+6]
      206 NEWCLOSURE                       R3 P21
      207 CAPTURE                          VAL R0
      208 CAPTURE                          UPVAL U3
      209 CAPTURE                          UPVAL U25
      210 CAPTURE                          UPVAL U7
      211 JUMP                             ; [+1]
      212 LOADNIL                          R3
      213 SETTABLEKS                       R3 R2 K35 ["insertTransition"]
      215 SETTABLEKS                       R2 R0 K37 ["menuActions"]
      217 NEWCLOSURE                       R2 P22
      218 CAPTURE                          UPVAL U3
      219 CAPTURE                          VAL R0
      220 SETTABLEKS                       R2 R0 K38 ["onAction"]
      222 NEWCLOSURE                       R2 P23
      223 CAPTURE                          VAL R0
      224 CAPTURE                          UPVAL U3
      225 SETTABLEKS                       R2 R0 K39 ["onPropertyPressed"]
      227 NEWCLOSURE                       R2 P24
      228 CAPTURE                          VAL R0
      229 CAPTURE                          UPVAL U26
      230 CAPTURE                          UPVAL U4
      231 CAPTURE                          UPVAL U5
      232 SETTABLEKS                       R2 R0 K40 ["createStyleRuleConnections"]
      234 NEWCLOSURE                       R2 P25
      235 CAPTURE                          VAL R0
      236 CAPTURE                          UPVAL U4
      237 SETTABLEKS                       R2 R0 K41 ["removeStyleRuleConnections"]
      239 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["createStyleRuleConnections"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R3 K2 ["RootInstance"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["removeStyleRuleConnections"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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

PROTO_53:
        0 DUPTABLE                         R1 K4 [{"ClipboardInstances", "DEPRECATED_ClipboardInstance", "ClipboardProperty", "ClipboardTransition"}]
        1 GETTABLEKS                       R3 R0 K5 ["Clipboard"]
        3 GETTABLEKS                       R2 R3 K6 ["Instances"]
        5 SETTABLEKS                       R2 R1 K0 ["ClipboardInstances"]
        7 GETTABLEKS                       R3 R0 K5 ["Clipboard"]
        9 GETTABLEKS                       R2 R3 K7 ["DEPRECATED_Instance"]
       11 SETTABLEKS                       R2 R1 K1 ["DEPRECATED_ClipboardInstance"]
       13 GETTABLEKS                       R3 R0 K5 ["Clipboard"]
       15 GETTABLEKS                       R2 R3 K8 ["Property"]
       17 SETTABLEKS                       R2 R1 K2 ["ClipboardProperty"]
       19 GETUPVAL                         R3 0
       20 JUMPIFNOT                        R3 ; [+5]
       21 GETTABLEKS                       R3 R0 K5 ["Clipboard"]
       23 GETTABLEKS                       R2 R3 K9 ["Transition"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K3 ["ClipboardTransition"]
       29 RETURN                           R1 1

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
      127 GETTABLEKS                       R25 R19 K31 ["Change"]
      129 GETTABLEKS                       R24 R25 K36 ["SetStyleRulePropertyTransition"]
      131 CALL                             R23 1 1
      132 GETIMPORT                        R24 K8 [require]
      134 GETTABLEKS                       R26 R19 K33 ["ContextMenu"]
      136 GETTABLEKS                       R25 R26 K37 ["ShowFolderMenu"]
      138 CALL                             R24 1 1
      139 GETIMPORT                        R25 K8 [require]
      141 GETTABLEKS                       R27 R19 K33 ["ContextMenu"]
      143 GETTABLEKS                       R26 R27 K38 ["ShowPropertyTransitionMenu"]
      145 CALL                             R25 1 1
      146 GETIMPORT                        R26 K8 [require]
      148 GETTABLEKS                       R29 R1 K21 ["Src"]
      150 GETTABLEKS                       R28 R29 K39 ["Util"]
      152 GETTABLEKS                       R27 R28 K40 ["mapDispatchToProps"]
      154 CALL                             R26 1 1
      155 GETIMPORT                        R27 K8 [require]
      157 GETTABLEKS                       R30 R1 K21 ["Src"]
      159 GETTABLEKS                       R29 R30 K39 ["Util"]
      161 GETTABLEKS                       R28 R29 K41 ["DesignHelpers"]
      163 CALL                             R27 1 1
      164 GETIMPORT                        R28 K8 [require]
      166 GETTABLEKS                       R31 R1 K21 ["Src"]
      168 GETTABLEKS                       R30 R31 K39 ["Util"]
      170 GETTABLEKS                       R29 R30 K42 ["MenuHelpers"]
      172 CALL                             R28 1 1
      173 GETIMPORT                        R29 K8 [require]
      175 GETTABLEKS                       R32 R1 K21 ["Src"]
      177 GETTABLEKS                       R31 R32 K43 ["Resources"]
      179 GETTABLEKS                       R30 R31 K44 ["ModernIcons"]
      181 CALL                             R29 1 1
      182 GETIMPORT                        R30 K8 [require]
      184 GETTABLEKS                       R33 R1 K21 ["Src"]
      186 GETTABLEKS                       R32 R33 K39 ["Util"]
      188 GETTABLEKS                       R31 R32 K45 ["StyleSchema"]
      190 CALL                             R30 1 1
      191 GETIMPORT                        R31 K8 [require]
      193 GETTABLEKS                       R34 R1 K21 ["Src"]
      195 GETTABLEKS                       R33 R34 K39 ["Util"]
      197 GETTABLEKS                       R32 R33 K46 ["SelectorHelpers"]
      199 CALL                             R31 1 1
      200 GETIMPORT                        R32 K8 [require]
      202 GETTABLEKS                       R35 R1 K21 ["Src"]
      204 GETTABLEKS                       R34 R35 K39 ["Util"]
      206 GETTABLEKS                       R33 R34 K47 ["StyleQueryHelpers"]
      208 CALL                             R32 1 1
      209 GETIMPORT                        R33 K8 [require]
      211 GETTABLEKS                       R36 R1 K21 ["Src"]
      213 GETTABLEKS                       R35 R36 K39 ["Util"]
      215 GETTABLEKS                       R34 R35 K48 ["TokenHelpers"]
      217 CALL                             R33 1 1
      218 GETIMPORT                        R34 K8 [require]
      220 GETTABLEKS                       R37 R1 K21 ["Src"]
      222 GETTABLEKS                       R36 R37 K43 ["Resources"]
      224 GETTABLEKS                       R35 R36 K49 ["PluginStyles"]
      226 CALL                             R34 1 1
      227 GETIMPORT                        R35 K8 [require]
      229 GETTABLEKS                       R37 R1 K21 ["Src"]
      231 GETTABLEKS                       R36 R37 K50 ["Renderers"]
      233 CALL                             R35 1 1
      234 GETIMPORT                        R36 K8 [require]
      236 GETTABLEKS                       R39 R1 K21 ["Src"]
      238 GETTABLEKS                       R38 R39 K39 ["Util"]
      240 GETTABLEKS                       R37 R38 K51 ["bind"]
      242 CALL                             R36 1 1
      243 GETIMPORT                        R37 K8 [require]
      245 GETTABLEKS                       R40 R1 K21 ["Src"]
      247 GETTABLEKS                       R39 R40 K39 ["Util"]
      249 GETTABLEKS                       R38 R39 K52 ["recordChange"]
      251 CALL                             R37 1 1
      252 MOVE                             R38 R0
      253 CALL                             R37 1 1
      254 GETIMPORT                        R38 K8 [require]
      256 GETTABLEKS                       R41 R1 K21 ["Src"]
      258 GETTABLEKS                       R40 R41 K39 ["Util"]
      260 GETTABLEKS                       R39 R40 K53 ["TreeTableHelpers"]
      262 CALL                             R38 1 1
      263 GETIMPORT                        R39 K8 [require]
      265 GETTABLEKS                       R43 R1 K21 ["Src"]
      267 GETTABLEKS                       R42 R43 K54 ["Contexts"]
      269 GETTABLEKS                       R41 R42 K55 ["Telemetry"]
      271 GETTABLEKS                       R40 R41 K56 ["TelemetryContext"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K8 [require]
      276 GETIMPORT                        R42 K5 [script]
      278 GETTABLEKS                       R41 R42 K57 ["onEdited"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K8 [require]
      283 GETTABLEKS                       R44 R1 K21 ["Src"]
      285 GETTABLEKS                       R43 R44 K58 ["Flags"]
      287 GETTABLEKS                       R42 R43 K59 ["getFFlagStyleEditorNumberSequenceUpdate"]
      289 CALL                             R41 1 1
      290 CALL                             R41 0 1
      291 GETIMPORT                        R42 K8 [require]
      293 GETTABLEKS                       R45 R1 K21 ["Src"]
      295 GETTABLEKS                       R44 R45 K58 ["Flags"]
      297 GETTABLEKS                       R43 R44 K60 ["getFFlagStyleQuery"]
      299 CALL                             R42 1 1
      300 CALL                             R42 0 1
      301 GETIMPORT                        R43 K8 [require]
      303 GETTABLEKS                       R46 R1 K21 ["Src"]
      305 GETTABLEKS                       R45 R46 K58 ["Flags"]
      307 GETTABLEKS                       R44 R45 K61 ["getFFlagStyleEditorSupportTransitions"]
      309 CALL                             R43 1 1
      310 CALL                             R43 0 1
      311 GETIMPORT                        R44 K8 [require]
      313 GETIMPORT                        R46 K5 [script]
      315 GETTABLEKS                       R45 R46 K62 ["Tree"]
      317 CALL                             R44 1 1
      318 GETTABLEKS                       R45 R44 K63 ["EditTree"]
      320 LOADK                            R48 K64 ["RowHeight"]
      321 NAMECALL                         R46 R34 K65 ["GetAttribute"]
      323 CALL                             R46 2 1
      324 GETTABLEKS                       R47 R2 K66 ["PureComponent"]
      326 LOADK                            R49 K67 ["SelectorPropertyTable"]
      327 NAMECALL                         R47 R47 K68 ["extend"]
      329 CALL                             R47 2 1
      330 DUPCLOSURE                       R48 K69 [PROTO_0]
      331 CAPTURE                          VAL R42
      332 SETGLOBAL                        R48 K70 ["connectToStyleRule"]
      334 NEWCLOSURE                       R48 P1
      335 CAPTURE                          VAL R5
      336 CAPTURE                          VAL R44
      337 CAPTURE                          VAL R41
      338 CAPTURE                          VAL R45
      339 CAPTURE                          VAL R42
      340 CAPTURE                          VAL R32
      341 CAPTURE                          VAL R6
      342 CAPTURE                          VAL R30
      343 CAPTURE                          VAL R43
      344 CAPTURE                          VAL R29
      345 CAPTURE                          VAL R36
      346 CAPTURE                          VAL R28
      347 CAPTURE                          VAL R31
      348 CAPTURE                          VAL R33
      349 CAPTURE                          VAL R27
      350 CAPTURE                          VAL R21
      351 CAPTURE                          VAL R24
      352 CAPTURE                          VAL R25
      353 CAPTURE                          VAL R38
      354 CAPTURE                          VAL R7
      355 CAPTURE                          VAL R22
      356 CAPTURE                          VAL R20
      357 CAPTURE                          VAL R17
      358 CAPTURE                          VAL R37
      359 CAPTURE                          VAL R18
      360 CAPTURE                          VAL R23
      361 CAPTURE                          REF R47
      362 SETTABLEKS                       R48 R47 K71 ["init"]
      364 DUPCLOSURE                       R48 K72 [PROTO_46]
      365 CAPTURE                          VAL R42
      366 CAPTURE                          VAL R44
      367 CAPTURE                          VAL R5
      368 CAPTURE                          VAL R6
      369 SETTABLEKS                       R48 R47 K73 ["rebuildTableState"]
      371 DUPCLOSURE                       R48 K74 [PROTO_47]
      372 SETTABLEKS                       R48 R47 K75 ["didMount"]
      374 DUPCLOSURE                       R48 K76 [PROTO_48]
      375 SETTABLEKS                       R48 R47 K77 ["didUpdate"]
      377 DUPCLOSURE                       R48 K78 [PROTO_49]
      378 SETTABLEKS                       R48 R47 K79 ["willUnmount"]
      380 NEWCLOSURE                       R48 P6
      381 CAPTURE                          REF R47
      382 SETTABLEKS                       R48 R47 K80 ["getDerivedStateFromProps"]
      384 DUPCLOSURE                       R48 K81 [PROTO_52]
      385 CAPTURE                          VAL R6
      386 CAPTURE                          VAL R44
      387 CAPTURE                          VAL R40
      388 CAPTURE                          VAL R41
      389 CAPTURE                          VAL R35
      390 CAPTURE                          VAL R46
      391 CAPTURE                          VAL R2
      392 CAPTURE                          VAL R10
      393 SETTABLEKS                       R48 R47 K82 ["render"]
      395 MOVE                             R48 R12
      396 DUPTABLE                         R49 K85 [{"Plugin", "Localization", "Telemetry"}]
      397 GETTABLEKS                       R50 R11 K83 ["Plugin"]
      399 SETTABLEKS                       R50 R49 K83 ["Plugin"]
      401 GETTABLEKS                       R50 R11 K84 ["Localization"]
      403 SETTABLEKS                       R50 R49 K84 ["Localization"]
      405 SETTABLEKS                       R39 R49 K55 ["Telemetry"]
      407 CALL                             R48 1 1
      408 MOVE                             R49 R47
      409 CALL                             R48 1 1
      410 MOVE                             R47 R48
      411 GETTABLEKS                       R48 R3 K86 ["connect"]
      413 DUPCLOSURE                       R49 K87 [PROTO_53]
      414 CAPTURE                          VAL R43
      415 MOVE                             R50 R26
      416 CALL                             R48 2 1
      417 MOVE                             R49 R47
      418 CALL                             R48 1 -1
      419 CLOSEUPVALS                      R47
      420 RETURN                           R48 -1
