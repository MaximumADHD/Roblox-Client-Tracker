PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 OR                               R1 R2 R0
        3 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R10 R7 K1 ["name"]
       10 ORK                              R9 R10 K0 ["Unknown"]
       11 GETUPVAL                         R11 0
       12 GETTABLE                         R10 R11 R9
       13 OR                               R8 R10 R9
       14 GETTABLE                         R9 R1 R8
       15 JUMPIFNOTEQKNIL                  R9 ; [+8]
       17 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       19 MOVE                             R10 R2
       20 MOVE                             R11 R8
       21 GETIMPORT                        R9 K4 [table.insert]
       23 CALL                             R9 2 0
       24 GETTABLE                         R11 R1 R8
       25 ORK                              R10 R11 K6 [0]
       26 ADDK                             R9 R10 K5 [1]
       27 SETTABLE                         R9 R1 R8
       28 FORGLOOP                         R3 2 ; [-21]
       30 NEWTABLE                         R3 0 0
       32 MOVE                             R4 R2
       33 LOADNIL                          R5
       34 LOADNIL                          R6
       35 FORGPREP                         R4
       36 GETTABLE                         R9 R1 R8
       37 LOADN                            R13 1
       38 JUMPIFNOTLT                      R13 R9 ; [+18]
       40 GETUPVAL                         R12 1
       41 LOADK                            R14 K7 ["McpSetup"]
       42 LOADK                            R15 K8 ["ConnectedClientCount"]
       43 DUPTABLE                         R16 K10 [{"name", "count"}]
       44 SETTABLEKS                       R8 R16 K1 ["name"]
       46 FASTCALL1                        TOSTRING R9 ; [+3]
       47 MOVE                             R18 R9
       48 GETIMPORT                        R17 K12 [tostring]
       50 CALL                             R17 1 1
       51 SETTABLEKS                       R17 R16 K9 ["count"]
       53 NAMECALL                         R12 R12 K13 ["getText"]
       55 CALL                             R12 4 1
       56 JUMP                             ; [+1]
       57 MOVE                             R12 R8
       58 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       60 MOVE                             R11 R3
       61 GETIMPORT                        R10 K4 [table.insert]
       63 CALL                             R10 2 0
       64 FORGLOOP                         R4 2 ; [-29]
       66 GETIMPORT                        R4 K15 [table.concat]
       68 MOVE                             R5 R3
       69 LOADK                            R6 K16 ["\n"]
       70 CALL                             R4 2 -1
       71 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U1
       10 LOADB                            R3 1
       11 NAMECALL                         R0 R0 K0 ["connect"]
       13 CALL                             R0 3 1
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADK                            R1 K3 [0.5]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GuiState"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 GETIMPORT                        R3 K3 [Enum.GuiState.Hover]
        7 JUMPIFEQ                         R0 R3 ; [+7]
        9 GETIMPORT                        R3 K5 [Enum.GuiState.Press]
       11 JUMPIFEQ                         R0 R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 LOADK                            R4 K1 ["GuiState"]
        9 NAMECALL                         R2 R0 K2 ["GetPropertyChangedSignal"]
       11 CALL                             R2 2 1
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K3 ["Connect"]
       15 CALL                             R2 2 1
       16 GETTABLEKS                       R3 R0 K1 ["GuiState"]
       18 GETUPVAL                         R4 1
       19 LOADB                            R5 1
       20 GETIMPORT                        R6 K6 [Enum.GuiState.Hover]
       22 JUMPIFEQ                         R3 R6 ; [+7]
       24 GETIMPORT                        R6 K8 [Enum.GuiState.Press]
       26 JUMPIFEQ                         R3 R6 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 CALL                             R4 1 0
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          VAL R2
       33 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R2 K1 ["useTokens"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useState"]
       11 NEWTABLE                         R4 0 0
       13 CALL                             R3 1 2
       14 GETTABLEKS                       R5 R0 K3 ["activeConnectionsObservable"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       19 NEWCLOSURE                       R7 P0
       20 CAPTURE                          VAL R5
       21 CAPTURE                          VAL R4
       22 NEWTABLE                         R8 0 1
       24 MOVE                             R9 R5
       25 SETLIST                          R8 R9 1 [1]
       27 CALL                             R6 2 0
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K5 ["useRef"]
       31 LOADNIL                          R7
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K2 ["useState"]
       36 LOADB                            R8 0
       37 CALL                             R7 1 2
       38 GETUPVAL                         R9 3
       39 GETTABLEKS                       R9 R9 K6 ["useAsync"]
       41 NEWCLOSURE                       R10 P1
       42 CAPTURE                          VAL R7
       43 NEWTABLE                         R11 0 1
       45 MOVE                             R12 R7
       46 SETLIST                          R11 R12 1 [1]
       48 CALL                             R9 2 1
       49 GETUPVAL                         R10 2
       50 GETTABLEKS                       R10 R10 K4 ["useEffect"]
       52 NEWCLOSURE                       R11 P2
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R8
       55 NEWTABLE                         R12 0 1
       57 GETTABLEKS                       R13 R6 K7 ["current"]
       59 SETLIST                          R12 R13 1 [1]
       61 CALL                             R10 2 0
       62 LENGTH                           R10 R3
       63 LOADN                            R12 0
       64 JUMPIFNOTLT                      R12 R10 ; [+3]
       66 LOADK                            R11 K8 ["content-system-success"]
       67 JUMP                             ; [+1]
       68 LOADK                            R11 K9 ["content-system-neutral"]
       69 JUMPIFNOTEQKN                    R10 K10 [0] ; [+8]
       71 GETUPVAL                         R12 4
       72 LOADK                            R14 K11 ["McpSetup"]
       73 LOADK                            R15 K12 ["NoClientsConnected"]
       74 NAMECALL                         R12 R12 K13 ["getText"]
       76 CALL                             R12 3 1
       77 JUMP                             ; [+23]
       78 JUMPIFNOTEQKN                    R10 K14 [1] ; [+8]
       80 GETUPVAL                         R12 4
       81 LOADK                            R14 K11 ["McpSetup"]
       82 LOADK                            R15 K15 ["ClientConnected"]
       83 NAMECALL                         R12 R12 K13 ["getText"]
       85 CALL                             R12 3 1
       86 JUMP                             ; [+14]
       87 GETUPVAL                         R12 4
       88 LOADK                            R14 K11 ["McpSetup"]
       89 LOADK                            R15 K16 ["ClientsConnected"]
       90 DUPTABLE                         R16 K18 [{"count"}]
       91 FASTCALL1                        TOSTRING R10 ; [+3]
       92 MOVE                             R18 R10
       93 GETIMPORT                        R17 K20 [tostring]
       95 CALL                             R17 1 1
       96 SETTABLEKS                       R17 R16 K17 ["count"]
       98 NAMECALL                         R12 R12 K13 ["getText"]
      100 CALL                             R12 4 1
      101 GETUPVAL                         R13 5
      102 MOVE                             R14 R3
      103 CALL                             R13 1 1
      104 LOADB                            R14 0
      105 GETTABLEKS                       R15 R9 K21 ["status"]
      107 JUMPIFNOTEQKS                    R15 K22 ["ok"] ; [+8]
      109 GETTABLEKS                       R14 R9 K23 ["value"]
      111 JUMPIFNOT                        R14 ; [+4]
      112 JUMPIFNOTEQKS                    R13 K24 [""] ; [+2]
      114 LOADB                            R14 0 +1
      115 LOADB                            R14 1
      116 GETUPVAL                         R15 6
      117 GETUPVAL                         R16 2
      118 GETTABLEKS                       R16 R16 K25 ["Fragment"]
      120 LOADNIL                          R17
      121 DUPTABLE                         R18 K28 [{"Indicator", "Tooltip"}]
      122 GETUPVAL                         R19 6
      123 GETUPVAL                         R20 7
      124 DUPTABLE                         R21 K32 [{"tag", "LayoutOrder", "ref"}]
      125 NEWTABLE                         R22 2 0
      127 LOADB                            R23 1
      128 SETTABLEKS                       R23 R22 K33 ["row align-y-center auto-xy"]
      130 GETUPVAL                         R23 8
      131 GETTABLEKS                       R23 R23 K34 ["FFlagAssistantUseBuilderIcons"]
      133 SETTABLEKS                       R23 R22 K35 ["gap-small"]
      135 SETTABLEKS                       R22 R21 K29 ["tag"]
      137 GETTABLEKS                       R22 R0 K30 ["LayoutOrder"]
      139 SETTABLEKS                       R22 R21 K30 ["LayoutOrder"]
      141 SETTABLEKS                       R6 R21 K31 ["ref"]
      143 DUPTABLE                         R22 K38 [{"Icon", "StatusText"}]
      144 GETUPVAL                         R24 8
      145 GETTABLEKS                       R24 R24 K34 ["FFlagAssistantUseBuilderIcons"]
      147 JUMPIFNOT                        R24 ; [+29]
      148 GETUPVAL                         R23 6
      149 GETUPVAL                         R24 9
      150 DUPTABLE                         R25 K40 [{"variant", "LayoutOrder"}]
      151 LOADN                            R27 0
      152 JUMPIFNOTLT                      R27 R10 ; [+9]
      154 GETUPVAL                         R26 1
      155 GETTABLEKS                       R26 R26 K41 ["Enums"]
      157 GETTABLEKS                       R26 R26 K42 ["StatusIndicatorVariant"]
      159 GETTABLEKS                       R26 R26 K43 ["Success"]
      161 JUMP                             ; [+7]
      162 GETUPVAL                         R26 1
      163 GETTABLEKS                       R26 R26 K41 ["Enums"]
      165 GETTABLEKS                       R26 R26 K42 ["StatusIndicatorVariant"]
      167 GETTABLEKS                       R26 R26 K44 ["Neutral"]
      169 SETTABLEKS                       R26 R25 K39 ["variant"]
      171 MOVE                             R26 R1
      172 CALL                             R26 0 1
      173 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      175 CALL                             R23 2 1
      176 JUMP                             ; [+17]
      177 GETUPVAL                         R23 6
      178 GETUPVAL                         R24 10
      179 DUPTABLE                         R25 K49 [{["icon"] = "component_assets/circle_16", ["tag"] = "align-x-center align-y-center size-400-400", ["iconTag"], ["LayoutOrder"]}]
      180 NEWTABLE                         R26 2 0
      182 LOADB                            R27 1
      183 SETTABLEKS                       R27 R26 K50 ["size-200-200"]
      185 LOADB                            R27 1
      186 SETTABLE                         R27 R26 R11
      187 SETTABLEKS                       R26 R25 K48 ["iconTag"]
      189 MOVE                             R26 R1
      190 CALL                             R26 0 1
      191 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      193 CALL                             R23 2 1
      194 SETTABLEKS                       R23 R22 K36 ["Icon"]
      196 GETUPVAL                         R23 6
      197 GETUPVAL                         R24 11
      198 DUPTABLE                         R25 K53 [{["tag"] = "auto-xy text-caption-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      199 SETTABLEKS                       R12 R25 K52 ["Text"]
      201 MOVE                             R26 R1
      202 CALL                             R26 0 1
      203 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      205 CALL                             R23 2 1
      206 SETTABLEKS                       R23 R22 K37 ["StatusText"]
      208 CALL                             R19 3 1
      209 SETTABLEKS                       R19 R18 K26 ["Indicator"]
      211 JUMPIFNOT                        R14 ; [+79]
      212 GETUPVAL                         R19 6
      213 GETUPVAL                         R20 12
      214 GETTABLEKS                       R20 R20 K54 ["Root"]
      216 DUPTABLE                         R21 K57 [{["isOpen"] = True}]
      217 DUPTABLE                         R22 K60 [{"Anchor", "Content"}]
      218 GETUPVAL                         R23 6
      219 GETUPVAL                         R24 12
      220 GETTABLEKS                       R24 R24 K58 ["Anchor"]
      222 DUPTABLE                         R25 K62 [{"anchorRef"}]
      223 SETTABLEKS                       R6 R25 K61 ["anchorRef"]
      225 CALL                             R23 2 1
      226 SETTABLEKS                       R23 R22 K58 ["Anchor"]
      228 GETUPVAL                         R23 6
      229 GETUPVAL                         R24 12
      230 GETTABLEKS                       R24 R24 K59 ["Content"]
      232 DUPTABLE                         R25 K68 [{["side"], ["align"], ["hasArrow"] = True, ["backgroundStyle"], ["radius"]}]
      233 DUPTABLE                         R26 K71 [{"position", "offset"}]
      234 GETUPVAL                         R27 1
      235 GETTABLEKS                       R27 R27 K41 ["Enums"]
      237 GETTABLEKS                       R27 R27 K72 ["PopoverSide"]
      239 GETTABLEKS                       R27 R27 K73 ["Right"]
      241 SETTABLEKS                       R27 R26 K69 ["position"]
      243 GETTABLEKS                       R27 R2 K74 ["Gap"]
      245 GETTABLEKS                       R27 R27 K75 ["XSmall"]
      247 SETTABLEKS                       R27 R26 K70 ["offset"]
      249 SETTABLEKS                       R26 R25 K63 ["side"]
      251 GETUPVAL                         R26 1
      252 GETTABLEKS                       R26 R26 K41 ["Enums"]
      254 GETTABLEKS                       R26 R26 K76 ["PopoverAlign"]
      256 GETTABLEKS                       R26 R26 K77 ["Center"]
      258 SETTABLEKS                       R26 R25 K64 ["align"]
      260 GETTABLEKS                       R26 R2 K78 ["Inverse"]
      262 GETTABLEKS                       R26 R26 K79 ["Surface"]
      264 GETTABLEKS                       R26 R26 K80 ["Surface_0"]
      266 SETTABLEKS                       R26 R25 K66 ["backgroundStyle"]
      268 GETUPVAL                         R26 1
      269 GETTABLEKS                       R26 R26 K41 ["Enums"]
      271 GETTABLEKS                       R26 R26 K81 ["Radius"]
      273 GETTABLEKS                       R26 R26 K82 ["Small"]
      275 SETTABLEKS                       R26 R25 K67 ["radius"]
      277 DUPTABLE                         R26 K83 [{"Text"}]
      278 GETUPVAL                         R27 6
      279 GETUPVAL                         R28 11
      280 DUPTABLE                         R29 K85 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall text-label-small text-align-x-left content-inverse-emphasis", ["Text"]}]
      281 SETTABLEKS                       R13 R29 K52 ["Text"]
      283 CALL                             R27 2 1
      284 SETTABLEKS                       R27 R26 K52 ["Text"]
      286 CALL                             R23 3 1
      287 SETTABLEKS                       R23 R22 K59 ["Content"]
      289 CALL                             R19 3 1
      290 JUMP                             ; [+1]
      291 LOADNIL                          R19
      292 SETTABLEKS                       R19 R18 K27 ["Tooltip"]
      294 CALL                             R15 3 -1
      295 RETURN                           R15 -1

PROTO_10:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\x<LS>\x"]
        4 LOADN                            R4 1
        5 LOADB                            R5 1
        6 CALL                             R1 4 2
        7 GETIMPORT                        R3 K2 [string.find]
        9 MOVE                             R4 R0
       10 LOADK                            R5 K4 ["\x<LE>\x"]
       11 LOADN                            R6 1
       12 LOADB                            R7 1
       13 CALL                             R3 4 2
       14 JUMPIFNOT                        R1 ; [+1]
       15 JUMPIF                           R3 ; [+4]
       16 DUPTABLE                         R5 K9 [{["before"], ["link"] = "", ["after"] = ""}]
       17 SETTABLEKS                       R0 R5 K5 ["before"]
       19 RETURN                           R5 1
       20 AND                              R6 R2 R4
       21 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       23 LOADK                            R7 K10 ["Expected openEnd and closeEnd"]
       24 GETIMPORT                        R5 K12 [assert]
       26 CALL                             R5 2 0
       27 DUPTABLE                         R5 K13 [{"before", "link", "after"}]
       28 LOADN                            R8 1
       29 SUBK                             R9 R1 K14 [1]
       30 FASTCALL3                        STRING_SUB R0 R8 R9
       32 MOVE                             R7 R0
       33 GETIMPORT                        R6 K16 [string.sub]
       35 CALL                             R6 3 1
       36 SETTABLEKS                       R6 R5 K5 ["before"]
       38 ADDK                             R8 R2 K14 [1]
       39 SUBK                             R9 R3 K14 [1]
       40 FASTCALL3                        STRING_SUB R0 R8 R9
       42 MOVE                             R7 R0
       43 GETIMPORT                        R6 K16 [string.sub]
       45 CALL                             R6 3 1
       46 SETTABLEKS                       R6 R5 K6 ["link"]
       48 ADDK                             R8 R4 K14 [1]
       49 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       51 MOVE                             R7 R0
       52 GETIMPORT                        R6 K16 [string.sub]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K8 ["after"]
       57 RETURN                           R5 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["mcpServers"]
        2 MOVE                             R2 R1
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TYPEOF R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K2 [typeof]
       10 CALL                             R7 1 1
       11 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+38]
       13 GETTABLEKS                       R8 R6 K4 ["command"]
       15 FASTCALL1                        TYPEOF R8 ; [+2]
       16 GETIMPORT                        R7 K2 [typeof]
       18 CALL                             R7 1 1
       19 JUMPIFNOTEQKS                    R7 K5 ["string"] ; [+30]
       21 GETTABLEKS                       R7 R6 K4 ["command"]
       23 GETTABLEKS                       R9 R6 K6 ["args"]
       25 FASTCALL1                        TYPEOF R9 ; [+2]
       26 GETIMPORT                        R8 K2 [typeof]
       28 CALL                             R8 1 1
       29 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+19]
       31 GETTABLEKS                       R8 R6 K6 ["args"]
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 FORGPREP                         R8
       36 FASTCALL1                        TYPEOF R12 ; [+3]
       37 MOVE                             R14 R12
       38 GETIMPORT                        R13 K2 [typeof]
       40 CALL                             R13 1 1
       41 JUMPIFNOTEQKS                    R13 K5 ["string"] ; [+5]
       43 MOVE                             R13 R7
       44 LOADK                            R14 K7 [" "]
       45 MOVE                             R15 R12
       46 CONCAT                           R7 R13 R15
       47 FORGLOOP                         R8 2 ; [-12]
       49 RETURN                           R7 1
       50 FORGLOOP                         R2 2 ; [-45]
       52 LOADK                            R2 K8 ["No command found?"]
       53 RETURN                           R2 1

PROTO_12:
        0 DUPTABLE                         R1 K3 [{[1], ["copyText"] = }]
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 DUPTABLE                         R2 K6 [{"startup", "json"}]
        4 SETTABLEKS                       R1 R2 K4 ["startup"]
        6 SETTABLEKS                       R1 R2 K5 ["json"]
        8 RETURN                           R2 1

PROTO_13:
        0 JUMPIF                           R0 ; [+9]
        1 DUPTABLE                         R4 K3 [{[1], ["copyText"] = }]
        2 SETTABLEKS                       R2 R4 K0 ["text"]
        4 DUPTABLE                         R3 K6 [{"startup", "json"}]
        5 SETTABLEKS                       R4 R3 K4 ["startup"]
        7 SETTABLEKS                       R4 R3 K5 ["json"]
        9 RETURN                           R3 1
       10 GETTABLEKS                       R4 R0 K7 ["error"]
       12 FASTCALL1                        TYPEOF R4 ; [+2]
       13 GETIMPORT                        R3 K9 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K10 ["string"] ; [+12]
       18 GETTABLEKS                       R4 R0 K7 ["error"]
       20 DUPTABLE                         R5 K3 [{[1], ["copyText"] = }]
       21 SETTABLEKS                       R4 R5 K0 ["text"]
       23 DUPTABLE                         R3 K6 [{"startup", "json"}]
       24 SETTABLEKS                       R5 R3 K4 ["startup"]
       26 SETTABLEKS                       R5 R3 K5 ["json"]
       28 RETURN                           R3 1
       29 GETTABLEKS                       R3 R1 K11 ["status"]
       31 JUMPIFNOTEQKS                    R3 K12 ["loading"] ; [+10]
       33 DUPTABLE                         R4 K3 [{[1], ["copyText"] = }]
       34 SETTABLEKS                       R2 R4 K0 ["text"]
       36 DUPTABLE                         R3 K6 [{"startup", "json"}]
       37 SETTABLEKS                       R4 R3 K4 ["startup"]
       39 SETTABLEKS                       R4 R3 K5 ["json"]
       41 RETURN                           R3 1
       42 GETTABLEKS                       R3 R1 K11 ["status"]
       44 JUMPIFNOTEQKS                    R3 K7 ["error"] ; [+12]
       46 GETTABLEKS                       R4 R1 K13 ["problem"]
       48 DUPTABLE                         R5 K3 [{[1], ["copyText"] = }]
       49 SETTABLEKS                       R4 R5 K0 ["text"]
       51 DUPTABLE                         R3 K6 [{"startup", "json"}]
       52 SETTABLEKS                       R5 R3 K4 ["startup"]
       54 SETTABLEKS                       R5 R3 K5 ["json"]
       56 RETURN                           R3 1
       57 GETTABLEKS                       R3 R1 K14 ["value"]
       59 FASTCALL1                        TYPEOF R3 ; [+3]
       60 MOVE                             R5 R3
       61 GETIMPORT                        R4 K9 [typeof]
       63 CALL                             R4 1 1
       64 JUMPIFEQKS                       R4 K10 ["string"] ; [+8]
       66 DUPTABLE                         R5 K16 [{[1] = "MCP Server not supported", ["copyText"] = }]
       67 DUPTABLE                         R4 K6 [{"startup", "json"}]
       68 SETTABLEKS                       R5 R4 K4 ["startup"]
       70 SETTABLEKS                       R5 R4 K5 ["json"]
       72 RETURN                           R4 1
       73 GETUPVAL                         R4 0
       74 MOVE                             R5 R0
       75 CALL                             R4 1 1
       76 GETIMPORT                        R5 K18 [string.gsub]
       78 MOVE                             R6 R3
       79 GETIMPORT                        R7 K20 [string.rep]
       81 LOADK                            R8 K21 [" "]
       82 LOADN                            R9 4
       83 CALL                             R7 2 1
       84 GETIMPORT                        R8 K20 [string.rep]
       86 LOADK                            R9 K21 [" "]
       87 LOADN                            R10 2
       88 CALL                             R8 2 -1
       89 CALL                             R5 -1 1
       90 DUPTABLE                         R6 K6 [{"startup", "json"}]
       91 DUPTABLE                         R7 K22 [{"text", "copyText"}]
       92 SETTABLEKS                       R4 R7 K0 ["text"]
       94 SETTABLEKS                       R4 R7 K1 ["copyText"]
       96 SETTABLEKS                       R7 R6 K4 ["startup"]
       98 DUPTABLE                         R7 K22 [{"text", "copyText"}]
       99 SETTABLEKS                       R5 R7 K0 ["text"]
      101 SETTABLEKS                       R5 R7 K1 ["copyText"]
      103 SETTABLEKS                       R7 R6 K5 ["json"]
      105 RETURN                           R6 1

PROTO_14:
        0 DUPTABLE                         R0 K10 [{"Title", "Disclaimer", "InstructionsHeader", "InstructionsBody", "StartupCommandLabel", "JsonConfigLabel", "Loading", "Copied", "NoClientsConnected", "LearnMore"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K11 ["McpSetup"]
        3 LOADK                            R4 K0 ["Title"]
        4 NAMECALL                         R1 R1 K12 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K11 ["McpSetup"]
       11 LOADK                            R4 K1 ["Disclaimer"]
       12 NAMECALL                         R1 R1 K12 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Disclaimer"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K11 ["McpSetup"]
       19 LOADK                            R4 K2 ["InstructionsHeader"]
       20 NAMECALL                         R1 R1 K12 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["InstructionsHeader"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K11 ["McpSetup"]
       27 LOADK                            R4 K3 ["InstructionsBody"]
       28 NAMECALL                         R1 R1 K12 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["InstructionsBody"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K11 ["McpSetup"]
       35 LOADK                            R4 K4 ["StartupCommandLabel"]
       36 NAMECALL                         R1 R1 K12 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["StartupCommandLabel"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K11 ["McpSetup"]
       43 LOADK                            R4 K5 ["JsonConfigLabel"]
       44 NAMECALL                         R1 R1 K12 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["JsonConfigLabel"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K11 ["McpSetup"]
       51 LOADK                            R4 K6 ["Loading"]
       52 NAMECALL                         R1 R1 K12 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Loading"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K11 ["McpSetup"]
       59 LOADK                            R4 K7 ["Copied"]
       60 NAMECALL                         R1 R1 K12 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["Copied"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K11 ["McpSetup"]
       67 LOADK                            R4 K8 ["NoClientsConnected"]
       68 NAMECALL                         R1 R1 K12 ["getText"]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["NoClientsConnected"]
       73 GETUPVAL                         R1 1
       74 GETUPVAL                         R2 0
       75 LOADK                            R4 K11 ["McpSetup"]
       76 LOADK                            R5 K9 ["LearnMore"]
       77 DUPTABLE                         R6 K17 [{["linkStart"] = "\x<LS>\x", ["linkEnd"] = "\x<LE>\x"}]
       78 NAMECALL                         R2 R2 K12 ["getText"]
       80 CALL                             R2 4 -1
       81 CALL                             R1 -1 1
       82 SETTABLEKS                       R1 R0 K9 ["LearnMore"]
       84 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADN                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 LOADB                            R3 1
       10 NAMECALL                         R0 R0 K0 ["connect"]
       12 CALL                             R0 3 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_18:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setupInstructions"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["error"]
        8 JUMPIFNOT                        R1 ; [+2]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K2 ["json"]
       14 GETTABLEKS                       R1 R1 K3 ["encodeAsync"]
       16 MOVE                             R2 R0
       17 LOADB                            R3 1
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_21:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["start"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["stop"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["setupInstructions"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETTABLEKS                       R3 R3 K1 ["Loading"]
        8 CALL                             R0 3 1
        9 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setupInstructions"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETTABLEKS                       R1 R0 K1 ["error"]
        7 JUMPIFEQKNIL                     R1 ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["openUrl"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["FStringMCPDocsUrl"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantUseBuilderIcons"]
        9 JUMPIFNOT                        R5 ; [+7]
       10 GETUPVAL                         R4 4
       11 GETTABLEKS                       R4 R4 K1 ["Hooks"]
       13 GETTABLEKS                       R4 R4 K2 ["useTokens"]
       15 CALL                             R4 0 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R4
       18 GETUPVAL                         R5 5
       19 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       21 DUPCLOSURE                       R6 K4 [PROTO_14]
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 NEWTABLE                         R7 0 1
       26 GETUPVAL                         R8 6
       27 GETTABLEKS                       R8 R8 K5 ["locale"]
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 5
       33 GETTABLEKS                       R6 R6 K6 ["useState"]
       35 DUPTABLE                         R7 K9 [{["expanded"] = False}]
       36 CALL                             R6 1 2
       37 GETUPVAL                         R8 8
       38 GETTABLEKS                       R8 R8 K10 ["get"]
       40 CALL                             R8 0 1
       41 GETTABLEKS                       R10 R2 K11 ["state"]
       43 JUMPIFNOTEQKS                    R10 K12 ["disconnected"] ; [+2]
       45 LOADB                            R9 0 +1
       46 LOADB                            R9 1
       47 GETTABLEKS                       R10 R2 K13 ["isBusy"]
       49 JUMPIF                           R10 ; [+2]
       50 GETTABLEKS                       R10 R3 K14 ["isProcessing"]
       52 GETUPVAL                         R11 5
       53 GETTABLEKS                       R11 R11 K6 ["useState"]
       55 LOADN                            R12 0
       56 CALL                             R11 1 2
       57 GETTABLEKS                       R13 R2 K15 ["connectionCountObservable"]
       59 GETUPVAL                         R14 5
       60 GETTABLEKS                       R14 R14 K16 ["useEffect"]
       62 NEWCLOSURE                       R15 P1
       63 CAPTURE                          VAL R13
       64 CAPTURE                          VAL R12
       65 NEWTABLE                         R16 0 1
       67 MOVE                             R17 R13
       68 SETLIST                          R16 R17 1 [1]
       70 CALL                             R14 2 0
       71 LOADN                            R15 0
       72 JUMPIFNOTLT                      R15 R11 ; [+3]
       74 LOADK                            R14 K17 ["content-system-success"]
       75 JUMP                             ; [+1]
       76 LOADK                            R14 K18 ["content-system-neutral"]
       77 JUMPIFNOTEQKN                    R11 K19 [0] ; [+4]
       79 GETTABLEKS                       R15 R5 K20 ["NoClientsConnected"]
       81 JUMP                             ; [+23]
       82 JUMPIFNOTEQKN                    R11 K21 [1] ; [+8]
       84 GETUPVAL                         R15 6
       85 LOADK                            R17 K22 ["McpSetup"]
       86 LOADK                            R18 K23 ["ClientConnected"]
       87 NAMECALL                         R15 R15 K24 ["getText"]
       89 CALL                             R15 3 1
       90 JUMP                             ; [+14]
       91 GETUPVAL                         R15 6
       92 LOADK                            R17 K22 ["McpSetup"]
       93 LOADK                            R18 K25 ["ClientsConnected"]
       94 DUPTABLE                         R19 K27 [{"count"}]
       95 FASTCALL1                        TOSTRING R11 ; [+3]
       96 MOVE                             R21 R11
       97 GETIMPORT                        R20 K29 [tostring]
       99 CALL                             R20 1 1
      100 SETTABLEKS                       R20 R19 K26 ["count"]
      102 NAMECALL                         R15 R15 K24 ["getText"]
      104 CALL                             R15 4 1
      105 GETUPVAL                         R16 5
      106 GETTABLEKS                       R16 R16 K30 ["useCallback"]
      108 NEWCLOSURE                       R17 P2
      109 CAPTURE                          VAL R7
      110 NEWTABLE                         R18 0 0
      112 CALL                             R16 2 1
      113 GETUPVAL                         R17 9
      114 GETTABLEKS                       R17 R17 K31 ["useAsync"]
      116 NEWCLOSURE                       R18 P3
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R8
      119 NEWTABLE                         R19 0 1
      121 GETTABLEKS                       R20 R2 K32 ["setupInstructions"]
      123 SETLIST                          R19 R20 1 [1]
      125 CALL                             R17 2 1
      126 GETUPVAL                         R18 5
      127 GETTABLEKS                       R18 R18 K30 ["useCallback"]
      129 NEWCLOSURE                       R19 P4
      130 CAPTURE                          VAL R2
      131 NEWTABLE                         R20 0 2
      133 GETTABLEKS                       R21 R2 K33 ["start"]
      135 GETTABLEKS                       R22 R2 K34 ["stop"]
      137 SETLIST                          R20 R21 2 [1]
      139 CALL                             R18 2 1
      140 GETUPVAL                         R19 5
      141 GETTABLEKS                       R19 R19 K3 ["useMemo"]
      143 NEWCLOSURE                       R20 P5
      144 CAPTURE                          UPVAL U10
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R5
      148 NEWTABLE                         R21 0 3
      150 GETTABLEKS                       R22 R2 K32 ["setupInstructions"]
      152 MOVE                             R23 R17
      153 GETTABLEKS                       R24 R5 K35 ["Loading"]
      155 SETLIST                          R21 R22 3 [1]
      157 CALL                             R19 2 1
      158 GETUPVAL                         R20 5
      159 GETTABLEKS                       R20 R20 K3 ["useMemo"]
      161 NEWCLOSURE                       R21 P6
      162 CAPTURE                          VAL R2
      163 NEWTABLE                         R22 0 1
      165 GETTABLEKS                       R23 R2 K32 ["setupInstructions"]
      167 SETLIST                          R22 R23 1 [1]
      169 CALL                             R20 2 1
      170 GETUPVAL                         R21 5
      171 GETTABLEKS                       R21 R21 K30 ["useCallback"]
      173 NEWCLOSURE                       R22 P7
      174 CAPTURE                          VAL R8
      175 CAPTURE                          UPVAL U3
      176 NEWTABLE                         R23 0 1
      178 GETTABLEKS                       R24 R8 K36 ["http"]
      180 SETLIST                          R23 R24 1 [1]
      182 CALL                             R21 2 1
      183 GETUPVAL                         R22 11
      184 GETUPVAL                         R23 12
      185 DUPTABLE                         R24 K40 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y padding-x-large padding-y-xsmall radius-medium bg-surface-100"}]
      186 GETTABLEKS                       R25 R0 K37 ["LayoutOrder"]
      188 SETTABLEKS                       R25 R24 K37 ["LayoutOrder"]
      190 DUPTABLE                         R25 K46 [{"Disclaimer", "TitleGroup", "QuickConnect", "InstructionsAccordion", "LearnMore"}]
      191 GETUPVAL                         R26 11
      192 GETUPVAL                         R27 12
      193 DUPTABLE                         R28 K48 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xsmall stroke-standard stroke-muted radius-small", ["LayoutOrder"]}]
      194 MOVE                             R29 R1
      195 CALL                             R29 0 1
      196 SETTABLEKS                       R29 R28 K37 ["LayoutOrder"]
      198 DUPTABLE                         R29 K51 [{"Icon", "Text"}]
      199 GETUPVAL                         R31 3
      200 GETTABLEKS                       R31 R31 K0 ["FFlagAssistantUseBuilderIcons"]
      202 JUMPIFNOT                        R31 ; [+35]
      203 GETUPVAL                         R30 11
      204 GETUPVAL                         R31 13
      205 DUPTABLE                         R32 K55 [{"name", "style", "size", "LayoutOrder"}]
      206 GETUPVAL                         R33 4
      207 GETTABLEKS                       R33 R33 K56 ["Enums"]
      209 GETTABLEKS                       R33 R33 K57 ["IconName"]
      211 GETTABLEKS                       R33 R33 K58 ["CircleI"]
      213 SETTABLEKS                       R33 R32 K52 ["name"]
      215 GETTABLEKS                       R33 R4 K59 ["Color"]
      217 GETTABLEKS                       R33 R33 K60 ["Content"]
      219 GETTABLEKS                       R33 R33 K61 ["Muted"]
      221 SETTABLEKS                       R33 R32 K53 ["style"]
      223 GETUPVAL                         R33 4
      224 GETTABLEKS                       R33 R33 K56 ["Enums"]
      226 GETTABLEKS                       R33 R33 K62 ["IconSize"]
      228 GETTABLEKS                       R33 R33 K63 ["Medium"]
      230 SETTABLEKS                       R33 R32 K54 ["size"]
      232 MOVE                             R33 R1
      233 CALL                             R33 0 1
      234 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      236 CALL                             R30 2 1
      237 JUMP                             ; [+8]
      238 GETUPVAL                         R30 11
      239 GETUPVAL                         R31 14
      240 DUPTABLE                         R32 K67 [{["tag"] = "size-500-500 content-emphasis", ["Image"] = "icons/actions/info", ["LayoutOrder"]}]
      241 MOVE                             R33 R1
      242 CALL                             R33 0 1
      243 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      245 CALL                             R30 2 1
      246 SETTABLEKS                       R30 R29 K49 ["Icon"]
      248 GETUPVAL                         R30 11
      249 GETUPVAL                         R31 15
      250 DUPTABLE                         R32 K69 [{["tag"] = "shrink auto-xy text-caption-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      251 GETTABLEKS                       R33 R5 K41 ["Disclaimer"]
      253 SETTABLEKS                       R33 R32 K50 ["Text"]
      255 MOVE                             R33 R1
      256 CALL                             R33 0 1
      257 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      259 CALL                             R30 2 1
      260 SETTABLEKS                       R30 R29 K50 ["Text"]
      262 CALL                             R26 3 1
      263 SETTABLEKS                       R26 R25 K41 ["Disclaimer"]
      265 GETUPVAL                         R26 11
      266 GETUPVAL                         R27 12
      267 DUPTABLE                         R28 K71 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      268 MOVE                             R29 R1
      269 CALL                             R29 0 1
      270 SETTABLEKS                       R29 R28 K37 ["LayoutOrder"]
      272 DUPTABLE                         R29 K74 [{"TitleRow", "ConnectionIndicator"}]
      273 GETUPVAL                         R30 11
      274 GETUPVAL                         R31 12
      275 DUPTABLE                         R32 K76 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
      276 MOVE                             R33 R1
      277 CALL                             R33 0 1
      278 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      280 DUPTABLE                         R33 K80 [{"Title", "Spacer", "Toggle"}]
      281 GETUPVAL                         R34 11
      282 GETUPVAL                         R35 15
      283 DUPTABLE                         R36 K82 [{["tag"] = "auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      284 GETTABLEKS                       R37 R5 K77 ["Title"]
      286 SETTABLEKS                       R37 R36 K50 ["Text"]
      288 MOVE                             R37 R1
      289 CALL                             R37 0 1
      290 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      292 CALL                             R34 2 1
      293 SETTABLEKS                       R34 R33 K77 ["Title"]
      295 GETUPVAL                         R34 11
      296 GETUPVAL                         R35 12
      297 DUPTABLE                         R36 K84 [{["tag"] = "fill", ["LayoutOrder"]}]
      298 MOVE                             R37 R1
      299 CALL                             R37 0 1
      300 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      302 CALL                             R34 2 1
      303 SETTABLEKS                       R34 R33 K78 ["Spacer"]
      305 GETUPVAL                         R34 11
      306 GETUPVAL                         R35 16
      307 DUPTABLE                         R36 K91 [{["testId"], ["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
      308 GETUPVAL                         R37 17
      309 GETTABLEKS                       R37 R37 K22 ["McpSetup"]
      311 GETTABLEKS                       R37 R37 K79 ["Toggle"]
      313 SETTABLEKS                       R37 R36 K85 ["testId"]
      315 SETTABLEKS                       R9 R36 K88 ["isChecked"]
      317 SETTABLEKS                       R10 R36 K89 ["isDisabled"]
      319 SETTABLEKS                       R18 R36 K90 ["onActivated"]
      321 GETUPVAL                         R37 18
      322 GETTABLEKS                       R37 R37 K92 ["Small"]
      324 SETTABLEKS                       R37 R36 K54 ["size"]
      326 MOVE                             R37 R1
      327 CALL                             R37 0 1
      328 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      330 CALL                             R34 2 1
      331 SETTABLEKS                       R34 R33 K79 ["Toggle"]
      333 CALL                             R30 3 1
      334 SETTABLEKS                       R30 R29 K72 ["TitleRow"]
      336 GETUPVAL                         R31 3
      337 GETTABLEKS                       R31 R31 K93 ["FFlagDisableMCPConnectionIndicator"]
      339 JUMPIFNOT                        R31 ; [+2]
      340 LOADNIL                          R30
      341 JUMP                             ; [+102]
      342 GETUPVAL                         R31 3
      343 GETTABLEKS                       R31 R31 K94 ["FFlagMCPConnectionIndicatorTooltip"]
      345 JUMPIFNOT                        R31 ; [+13]
      346 GETUPVAL                         R30 11
      347 GETUPVAL                         R31 19
      348 DUPTABLE                         R32 K96 [{"activeConnectionsObservable", "LayoutOrder"}]
      349 GETTABLEKS                       R33 R2 K95 ["activeConnectionsObservable"]
      351 SETTABLEKS                       R33 R32 K95 ["activeConnectionsObservable"]
      353 MOVE                             R33 R1
      354 CALL                             R33 0 1
      355 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      357 CALL                             R30 2 1
      358 JUMP                             ; [+85]
      359 GETUPVAL                         R30 11
      360 GETUPVAL                         R31 12
      361 DUPTABLE                         R32 K97 [{"tag", "LayoutOrder"}]
      362 NEWTABLE                         R33 2 0
      364 LOADB                            R34 1
      365 SETTABLEKS                       R34 R33 K98 ["row align-y-center auto-xy"]
      367 GETUPVAL                         R34 3
      368 GETTABLEKS                       R34 R34 K0 ["FFlagAssistantUseBuilderIcons"]
      370 SETTABLEKS                       R34 R33 K99 ["gap-small"]
      372 SETTABLEKS                       R33 R32 K38 ["tag"]
      374 MOVE                             R33 R1
      375 CALL                             R33 0 1
      376 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      378 DUPTABLE                         R33 K101 [{"Icon", "StatusText"}]
      379 GETUPVAL                         R35 3
      380 GETTABLEKS                       R35 R35 K0 ["FFlagAssistantUseBuilderIcons"]
      382 JUMPIFNOT                        R35 ; [+29]
      383 GETUPVAL                         R34 11
      384 GETUPVAL                         R35 20
      385 DUPTABLE                         R36 K103 [{"variant", "LayoutOrder"}]
      386 LOADN                            R38 0
      387 JUMPIFNOTLT                      R38 R11 ; [+9]
      389 GETUPVAL                         R37 4
      390 GETTABLEKS                       R37 R37 K56 ["Enums"]
      392 GETTABLEKS                       R37 R37 K104 ["StatusIndicatorVariant"]
      394 GETTABLEKS                       R37 R37 K105 ["Success"]
      396 JUMP                             ; [+7]
      397 GETUPVAL                         R37 4
      398 GETTABLEKS                       R37 R37 K56 ["Enums"]
      400 GETTABLEKS                       R37 R37 K104 ["StatusIndicatorVariant"]
      402 GETTABLEKS                       R37 R37 K106 ["Neutral"]
      404 SETTABLEKS                       R37 R36 K102 ["variant"]
      406 MOVE                             R37 R1
      407 CALL                             R37 0 1
      408 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      410 CALL                             R34 2 1
      411 JUMP                             ; [+17]
      412 GETUPVAL                         R34 11
      413 GETUPVAL                         R35 21
      414 DUPTABLE                         R36 K111 [{["icon"] = "component_assets/circle_16", ["tag"] = "align-x-center align-y-center size-400-400", ["iconTag"], ["LayoutOrder"]}]
      415 NEWTABLE                         R37 2 0
      417 LOADB                            R38 1
      418 SETTABLEKS                       R38 R37 K112 ["size-200-200"]
      420 LOADB                            R38 1
      421 SETTABLE                         R38 R37 R14
      422 SETTABLEKS                       R37 R36 K110 ["iconTag"]
      424 MOVE                             R37 R1
      425 CALL                             R37 0 1
      426 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      428 CALL                             R34 2 1
      429 SETTABLEKS                       R34 R33 K49 ["Icon"]
      431 GETUPVAL                         R34 11
      432 GETUPVAL                         R35 15
      433 DUPTABLE                         R36 K114 [{["tag"] = "auto-xy text-caption-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      434 SETTABLEKS                       R15 R36 K50 ["Text"]
      436 MOVE                             R37 R1
      437 CALL                             R37 0 1
      438 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      440 CALL                             R34 2 1
      441 SETTABLEKS                       R34 R33 K100 ["StatusText"]
      443 CALL                             R30 3 1
      444 SETTABLEKS                       R30 R29 K73 ["ConnectionIndicator"]
      446 CALL                             R26 3 1
      447 SETTABLEKS                       R26 R25 K42 ["TitleGroup"]
      449 JUMPIFNOT                        R20 ; [+16]
      450 GETUPVAL                         R26 11
      451 GETUPVAL                         R27 22
      452 DUPTABLE                         R28 K116 [{"isDisabled", "mcpServerInfo", "LayoutOrder"}]
      453 MOVE                             R29 R10
      454 JUMPIF                           R29 ; [+1]
      455 NOT                              R29 R9
      456 SETTABLEKS                       R29 R28 K89 ["isDisabled"]
      458 SETTABLEKS                       R20 R28 K115 ["mcpServerInfo"]
      460 MOVE                             R29 R1
      461 CALL                             R29 0 1
      462 SETTABLEKS                       R29 R28 K37 ["LayoutOrder"]
      464 CALL                             R26 2 1
      465 JUMP                             ; [+1]
      466 LOADNIL                          R26
      467 SETTABLEKS                       R26 R25 K43 ["QuickConnect"]
      469 GETUPVAL                         R26 11
      470 GETUPVAL                         R27 12
      471 DUPTABLE                         R28 K118 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      472 MOVE                             R29 R1
      473 CALL                             R29 0 1
      474 SETTABLEKS                       R29 R28 K37 ["LayoutOrder"]
      476 DUPTABLE                         R29 K120 [{"Accordion"}]
      477 GETUPVAL                         R30 11
      478 GETUPVAL                         R31 23
      479 GETTABLEKS                       R31 R31 K121 ["Root"]
      481 DUPTABLE                         R32 K125 [{["expanded"], ["contentId"] = "studio_mcp_instructions", ["editThisContent"]}]
      482 GETTABLEKS                       R33 R6 K7 ["expanded"]
      484 SETTABLEKS                       R33 R32 K7 ["expanded"]
      486 SETTABLEKS                       R16 R32 K124 ["editThisContent"]
      488 DUPTABLE                         R33 K127 [{"Header", "Content"}]
      489 GETUPVAL                         R34 11
      490 GETUPVAL                         R35 23
      491 GETTABLEKS                       R35 R35 K126 ["Header"]
      493 DUPTABLE                         R36 K133 [{["LayoutOrder"], ["AutomaticHeight"] = True, ["IconSize"] = "medium", ["VerticalAlignment"] = "center"}]
      494 MOVE                             R37 R1
      495 CALL                             R37 0 1
      496 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      498 DUPTABLE                         R37 K134 [{"Title"}]
      499 GETUPVAL                         R38 11
      500 GETUPVAL                         R39 15
      501 DUPTABLE                         R40 K136 [{["tag"] = "auto-xy text-title-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      502 GETTABLEKS                       R41 R5 K137 ["InstructionsHeader"]
      504 SETTABLEKS                       R41 R40 K50 ["Text"]
      506 MOVE                             R41 R1
      507 CALL                             R41 0 1
      508 SETTABLEKS                       R41 R40 K37 ["LayoutOrder"]
      510 CALL                             R38 2 1
      511 SETTABLEKS                       R38 R37 K77 ["Title"]
      513 CALL                             R34 3 1
      514 SETTABLEKS                       R34 R33 K126 ["Header"]
      516 GETUPVAL                         R34 11
      517 GETUPVAL                         R35 23
      518 GETTABLEKS                       R35 R35 K60 ["Content"]
      520 DUPTABLE                         R36 K141 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True, ["disableVerticalBar"] = True}]
      521 MOVE                             R37 R1
      522 CALL                             R37 0 1
      523 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      525 DUPTABLE                         R37 K145 [{"Instruction", "JsonConfigBlock", "StartupCommandBlock"}]
      526 GETUPVAL                         R38 11
      527 GETUPVAL                         R39 15
      528 DUPTABLE                         R40 K147 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      529 GETTABLEKS                       R41 R5 K148 ["InstructionsBody"]
      531 SETTABLEKS                       R41 R40 K50 ["Text"]
      533 MOVE                             R41 R1
      534 CALL                             R41 0 1
      535 SETTABLEKS                       R41 R40 K37 ["LayoutOrder"]
      537 CALL                             R38 2 1
      538 SETTABLEKS                       R38 R37 K142 ["Instruction"]
      540 GETUPVAL                         R38 11
      541 GETUPVAL                         R39 24
      542 DUPTABLE                         R40 K153 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      543 GETTABLEKS                       R41 R5 K154 ["JsonConfigLabel"]
      545 SETTABLEKS                       R41 R40 K86 ["label"]
      547 GETUPVAL                         R41 17
      548 GETTABLEKS                       R41 R41 K22 ["McpSetup"]
      550 GETTABLEKS                       R41 R41 K154 ["JsonConfigLabel"]
      552 SETTABLEKS                       R41 R40 K149 ["labelTestId"]
      554 GETTABLEKS                       R41 R19 K155 ["json"]
      556 SETTABLEKS                       R41 R40 K150 ["data"]
      558 GETTABLEKS                       R41 R5 K156 ["Copied"]
      560 SETTABLEKS                       R41 R40 K151 ["copiedText"]
      562 GETUPVAL                         R41 17
      563 GETTABLEKS                       R41 R41 K22 ["McpSetup"]
      565 GETTABLEKS                       R41 R41 K157 ["JsonConfigCopy"]
      567 SETTABLEKS                       R41 R40 K152 ["copyButtonTestId"]
      569 MOVE                             R41 R1
      570 CALL                             R41 0 1
      571 SETTABLEKS                       R41 R40 K37 ["LayoutOrder"]
      573 CALL                             R38 2 1
      574 SETTABLEKS                       R38 R37 K143 ["JsonConfigBlock"]
      576 GETUPVAL                         R38 11
      577 GETUPVAL                         R39 24
      578 DUPTABLE                         R40 K153 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      579 GETTABLEKS                       R41 R5 K158 ["StartupCommandLabel"]
      581 SETTABLEKS                       R41 R40 K86 ["label"]
      583 GETUPVAL                         R41 17
      584 GETTABLEKS                       R41 R41 K22 ["McpSetup"]
      586 GETTABLEKS                       R41 R41 K158 ["StartupCommandLabel"]
      588 SETTABLEKS                       R41 R40 K149 ["labelTestId"]
      590 GETTABLEKS                       R41 R19 K159 ["startup"]
      592 SETTABLEKS                       R41 R40 K150 ["data"]
      594 GETTABLEKS                       R41 R5 K156 ["Copied"]
      596 SETTABLEKS                       R41 R40 K151 ["copiedText"]
      598 GETUPVAL                         R41 17
      599 GETTABLEKS                       R41 R41 K22 ["McpSetup"]
      601 GETTABLEKS                       R41 R41 K160 ["StartupCommandCopy"]
      603 SETTABLEKS                       R41 R40 K152 ["copyButtonTestId"]
      605 MOVE                             R41 R1
      606 CALL                             R41 0 1
      607 SETTABLEKS                       R41 R40 K37 ["LayoutOrder"]
      609 CALL                             R38 2 1
      610 SETTABLEKS                       R38 R37 K144 ["StartupCommandBlock"]
      612 CALL                             R34 3 1
      613 SETTABLEKS                       R34 R33 K60 ["Content"]
      615 CALL                             R30 3 1
      616 SETTABLEKS                       R30 R29 K119 ["Accordion"]
      618 CALL                             R26 3 1
      619 SETTABLEKS                       R26 R25 K44 ["InstructionsAccordion"]
      621 GETUPVAL                         R26 11
      622 GETUPVAL                         R27 12
      623 DUPTABLE                         R28 K162 [{["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      624 MOVE                             R29 R1
      625 CALL                             R29 0 1
      626 SETTABLEKS                       R29 R28 K37 ["LayoutOrder"]
      628 DUPTABLE                         R29 K166 [{"Before", "Link", "After"}]
      629 GETTABLEKS                       R32 R5 K45 ["LearnMore"]
      631 GETTABLEKS                       R32 R32 K167 ["before"]
      633 LENGTH                           R31 R32
      634 LOADN                            R32 0
      635 JUMPIFNOTLT                      R32 R31 ; [+16]
      637 GETUPVAL                         R30 11
      638 GETUPVAL                         R31 15
      639 DUPTABLE                         R32 K169 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      640 GETTABLEKS                       R33 R5 K45 ["LearnMore"]
      642 GETTABLEKS                       R33 R33 K167 ["before"]
      644 SETTABLEKS                       R33 R32 K50 ["Text"]
      646 MOVE                             R33 R1
      647 CALL                             R33 0 1
      648 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      650 CALL                             R30 2 1
      651 JUMP                             ; [+1]
      652 LOADNIL                          R30
      653 SETTABLEKS                       R30 R29 K163 ["Before"]
      655 GETTABLEKS                       R32 R5 K45 ["LearnMore"]
      657 GETTABLEKS                       R32 R32 K170 ["link"]
      659 LENGTH                           R31 R32
      660 LOADN                            R32 0
      661 JUMPIFNOTLT                      R32 R31 ; [+18]
      663 GETUPVAL                         R30 11
      664 GETUPVAL                         R31 15
      665 DUPTABLE                         R32 K172 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["onActivated"], ["LayoutOrder"]}]
      666 GETTABLEKS                       R33 R5 K45 ["LearnMore"]
      668 GETTABLEKS                       R33 R33 K170 ["link"]
      670 SETTABLEKS                       R33 R32 K50 ["Text"]
      672 SETTABLEKS                       R21 R32 K90 ["onActivated"]
      674 MOVE                             R33 R1
      675 CALL                             R33 0 1
      676 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      678 CALL                             R30 2 1
      679 JUMP                             ; [+1]
      680 LOADNIL                          R30
      681 SETTABLEKS                       R30 R29 K164 ["Link"]
      683 GETTABLEKS                       R32 R5 K45 ["LearnMore"]
      685 GETTABLEKS                       R32 R32 K173 ["after"]
      687 LENGTH                           R31 R32
      688 LOADN                            R32 0
      689 JUMPIFNOTLT                      R32 R31 ; [+16]
      691 GETUPVAL                         R30 11
      692 GETUPVAL                         R31 15
      693 DUPTABLE                         R32 K169 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      694 GETTABLEKS                       R33 R5 K45 ["LearnMore"]
      696 GETTABLEKS                       R33 R33 K173 ["after"]
      698 SETTABLEKS                       R33 R32 K50 ["Text"]
      700 MOVE                             R33 R1
      701 CALL                             R33 0 1
      702 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      704 CALL                             R30 2 1
      705 JUMP                             ; [+1]
      706 LOADNIL                          R30
      707 SETTABLEKS                       R30 R29 K165 ["After"]
      709 CALL                             R26 3 1
      710 SETTABLEKS                       R26 R25 K45 ["LearnMore"]
      712 CALL                             R22 3 -1
      713 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["IntegrationManagement"]
       20 GETTABLEKS                       R3 R3 K9 ["CopyableCodeBlock"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K10 ["CustomIconButton"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Guest"]
       34 GETTABLEKS                       R5 R5 K12 ["Environment"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       43 GETTABLEKS                       R6 R6 K14 ["ExternalServerContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Components"]
       50 GETTABLEKS                       R7 R7 K8 ["IntegrationManagement"]
       52 GETTABLEKS                       R7 R7 K15 ["QuickConnectSection"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K16 ["Util"]
       59 GETTABLEKS                       R8 R8 K17 ["TestIds"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K18 ["Resources"]
       66 GETTABLEKS                       R9 R9 K19 ["Localization"]
       68 GETTABLEKS                       R9 R9 K20 ["Translator"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K21 ["Types"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K22 ["Parent"]
       80 GETTABLEKS                       R11 R11 K23 ["Foundation"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K22 ["Parent"]
       87 GETTABLEKS                       R12 R12 K24 ["ModelContextProtocol"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K22 ["Parent"]
       94 GETTABLEKS                       R13 R13 K25 ["React"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K22 ["Parent"]
      101 GETTABLEKS                       R14 R14 K26 ["ReactUtils"]
      103 CALL                             R13 1 1
      104 GETIMPORT                        R14 K5 [require]
      106 GETTABLEKS                       R15 R0 K27 ["Flags"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K28 ["Hooks"]
      113 GETTABLEKS                       R16 R16 K29 ["useAsyncGuard"]
      115 CALL                             R15 1 1
      116 GETTABLEKS                       R16 R5 K30 ["useExternalServer"]
      118 GETTABLEKS                       R17 R10 K31 ["Icon"]
      120 GETTABLEKS                       R18 R10 K32 ["Image"]
      122 GETTABLEKS                       R19 R10 K33 ["Popover"]
      124 GETTABLEKS                       R20 R10 K34 ["StatusIndicator"]
      126 GETTABLEKS                       R21 R10 K35 ["Text"]
      128 GETTABLEKS                       R22 R10 K36 ["Toggle"]
      130 GETTABLEKS                       R23 R10 K37 ["View"]
      132 GETTABLEKS                       R24 R10 K38 ["Enums"]
      134 GETTABLEKS                       R24 R24 K39 ["InputSize"]
      136 GETTABLEKS                       R25 R13 K40 ["createNextOrder"]
      138 GETTABLEKS                       R26 R12 K41 ["createElement"]
      140 NEWTABLE                         R27 8 0
      142 LOADK                            R28 K42 ["MCP Inspector"]
      143 SETTABLEKS                       R28 R27 K43 ["mcp-inspector"]
      145 LOADK                            R28 K44 ["Cursor"]
      146 SETTABLEKS                       R28 R27 K45 ["cursor-vscode"]
      148 LOADK                            R28 K46 ["Antigravity"]
      149 SETTABLEKS                       R28 R27 K47 ["antigravity-client"]
      151 LOADK                            R28 K48 ["Claude"]
      152 SETTABLEKS                       R28 R27 K49 ["claude-ai"]
      154 LOADK                            R28 K50 ["Claude Code"]
      155 SETTABLEKS                       R28 R27 K51 ["claude-code"]
      157 LOADK                            R28 K52 ["ChatGPT / Codex"]
      158 SETTABLEKS                       R28 R27 K53 ["codex-mcp-client"]
      160 DUPCLOSURE                       R28 K54 [PROTO_0]
      161 CAPTURE                          VAL R27
      162 DUPCLOSURE                       R29 K55 [PROTO_1]
      163 CAPTURE                          VAL R27
      164 CAPTURE                          VAL R8
      165 DUPCLOSURE                       R30 K56 [PROTO_9]
      166 CAPTURE                          VAL R25
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R8
      171 CAPTURE                          VAL R29
      172 CAPTURE                          VAL R26
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R14
      175 CAPTURE                          VAL R20
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R19
      179 DUPCLOSURE                       R31 K57 [PROTO_10]
      180 DUPCLOSURE                       R32 K58 [PROTO_11]
      181 DUPCLOSURE                       R33 K59 [PROTO_12]
      182 DUPCLOSURE                       R34 K60 [PROTO_13]
      183 CAPTURE                          VAL R32
      184 DUPCLOSURE                       R35 K61 [PROTO_25]
      185 CAPTURE                          VAL R25
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R31
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R34
      196 CAPTURE                          VAL R26
      197 CAPTURE                          VAL R23
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R21
      201 CAPTURE                          VAL R22
      202 CAPTURE                          VAL R7
      203 CAPTURE                          VAL R24
      204 CAPTURE                          VAL R30
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R1
      209 CAPTURE                          VAL R2
      210 GETTABLEKS                       R36 R12 K62 ["memo"]
      212 MOVE                             R37 R35
      213 CALL                             R36 1 -1
      214 RETURN                           R36 -1
