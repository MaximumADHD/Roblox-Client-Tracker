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
       63 JUMPIFNOTEQKN                    R10 K8 [0] ; [+8]
       65 GETUPVAL                         R11 4
       66 LOADK                            R13 K9 ["McpSetup"]
       67 LOADK                            R14 K10 ["NoClientsConnected"]
       68 NAMECALL                         R11 R11 K11 ["getText"]
       70 CALL                             R11 3 1
       71 JUMP                             ; [+23]
       72 JUMPIFNOTEQKN                    R10 K12 [1] ; [+8]
       74 GETUPVAL                         R11 4
       75 LOADK                            R13 K9 ["McpSetup"]
       76 LOADK                            R14 K13 ["ClientConnected"]
       77 NAMECALL                         R11 R11 K11 ["getText"]
       79 CALL                             R11 3 1
       80 JUMP                             ; [+14]
       81 GETUPVAL                         R11 4
       82 LOADK                            R13 K9 ["McpSetup"]
       83 LOADK                            R14 K14 ["ClientsConnected"]
       84 DUPTABLE                         R15 K16 [{"count"}]
       85 FASTCALL1                        TOSTRING R10 ; [+3]
       86 MOVE                             R17 R10
       87 GETIMPORT                        R16 K18 [tostring]
       89 CALL                             R16 1 1
       90 SETTABLEKS                       R16 R15 K15 ["count"]
       92 NAMECALL                         R11 R11 K11 ["getText"]
       94 CALL                             R11 4 1
       95 GETUPVAL                         R12 5
       96 MOVE                             R13 R3
       97 CALL                             R12 1 1
       98 LOADB                            R13 0
       99 GETTABLEKS                       R14 R9 K19 ["status"]
      101 JUMPIFNOTEQKS                    R14 K20 ["ok"] ; [+8]
      103 GETTABLEKS                       R13 R9 K21 ["value"]
      105 JUMPIFNOT                        R13 ; [+4]
      106 JUMPIFNOTEQKS                    R12 K22 [""] ; [+2]
      108 LOADB                            R13 0 +1
      109 LOADB                            R13 1
      110 GETUPVAL                         R14 6
      111 GETUPVAL                         R15 2
      112 GETTABLEKS                       R15 R15 K23 ["Fragment"]
      114 LOADNIL                          R16
      115 DUPTABLE                         R17 K26 [{"Indicator", "Tooltip"}]
      116 GETUPVAL                         R18 6
      117 GETUPVAL                         R19 7
      118 DUPTABLE                         R20 K31 [{["tag"] = "row align-y-center auto-xy gap-small", ["LayoutOrder"], ["ref"]}]
      119 GETTABLEKS                       R21 R0 K29 ["LayoutOrder"]
      121 SETTABLEKS                       R21 R20 K29 ["LayoutOrder"]
      123 SETTABLEKS                       R6 R20 K30 ["ref"]
      125 DUPTABLE                         R21 K34 [{"Icon", "StatusText"}]
      126 GETUPVAL                         R22 6
      127 GETUPVAL                         R23 8
      128 DUPTABLE                         R24 K36 [{"variant", "LayoutOrder"}]
      129 LOADN                            R26 0
      130 JUMPIFNOTLT                      R26 R10 ; [+9]
      132 GETUPVAL                         R25 1
      133 GETTABLEKS                       R25 R25 K37 ["Enums"]
      135 GETTABLEKS                       R25 R25 K38 ["StatusIndicatorVariant"]
      137 GETTABLEKS                       R25 R25 K39 ["Success"]
      139 JUMP                             ; [+7]
      140 GETUPVAL                         R25 1
      141 GETTABLEKS                       R25 R25 K37 ["Enums"]
      143 GETTABLEKS                       R25 R25 K38 ["StatusIndicatorVariant"]
      145 GETTABLEKS                       R25 R25 K40 ["Neutral"]
      147 SETTABLEKS                       R25 R24 K35 ["variant"]
      149 MOVE                             R25 R1
      150 CALL                             R25 0 1
      151 SETTABLEKS                       R25 R24 K29 ["LayoutOrder"]
      153 CALL                             R22 2 1
      154 SETTABLEKS                       R22 R21 K32 ["Icon"]
      156 GETUPVAL                         R22 6
      157 GETUPVAL                         R23 9
      158 DUPTABLE                         R24 K43 [{["tag"] = "auto-xy text-caption-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      159 SETTABLEKS                       R11 R24 K42 ["Text"]
      161 MOVE                             R25 R1
      162 CALL                             R25 0 1
      163 SETTABLEKS                       R25 R24 K29 ["LayoutOrder"]
      165 CALL                             R22 2 1
      166 SETTABLEKS                       R22 R21 K33 ["StatusText"]
      168 CALL                             R18 3 1
      169 SETTABLEKS                       R18 R17 K24 ["Indicator"]
      171 JUMPIFNOT                        R13 ; [+79]
      172 GETUPVAL                         R18 6
      173 GETUPVAL                         R19 10
      174 GETTABLEKS                       R19 R19 K44 ["Root"]
      176 DUPTABLE                         R20 K47 [{["isOpen"] = True}]
      177 DUPTABLE                         R21 K50 [{"Anchor", "Content"}]
      178 GETUPVAL                         R22 6
      179 GETUPVAL                         R23 10
      180 GETTABLEKS                       R23 R23 K48 ["Anchor"]
      182 DUPTABLE                         R24 K52 [{"anchorRef"}]
      183 SETTABLEKS                       R6 R24 K51 ["anchorRef"]
      185 CALL                             R22 2 1
      186 SETTABLEKS                       R22 R21 K48 ["Anchor"]
      188 GETUPVAL                         R22 6
      189 GETUPVAL                         R23 10
      190 GETTABLEKS                       R23 R23 K49 ["Content"]
      192 DUPTABLE                         R24 K58 [{["side"], ["align"], ["hasArrow"] = True, ["backgroundStyle"], ["radius"]}]
      193 DUPTABLE                         R25 K61 [{"position", "offset"}]
      194 GETUPVAL                         R26 1
      195 GETTABLEKS                       R26 R26 K37 ["Enums"]
      197 GETTABLEKS                       R26 R26 K62 ["PopoverSide"]
      199 GETTABLEKS                       R26 R26 K63 ["Right"]
      201 SETTABLEKS                       R26 R25 K59 ["position"]
      203 GETTABLEKS                       R26 R2 K64 ["Gap"]
      205 GETTABLEKS                       R26 R26 K65 ["XSmall"]
      207 SETTABLEKS                       R26 R25 K60 ["offset"]
      209 SETTABLEKS                       R25 R24 K53 ["side"]
      211 GETUPVAL                         R25 1
      212 GETTABLEKS                       R25 R25 K37 ["Enums"]
      214 GETTABLEKS                       R25 R25 K66 ["PopoverAlign"]
      216 GETTABLEKS                       R25 R25 K67 ["Center"]
      218 SETTABLEKS                       R25 R24 K54 ["align"]
      220 GETTABLEKS                       R25 R2 K68 ["Inverse"]
      222 GETTABLEKS                       R25 R25 K69 ["Surface"]
      224 GETTABLEKS                       R25 R25 K70 ["Surface_0"]
      226 SETTABLEKS                       R25 R24 K56 ["backgroundStyle"]
      228 GETUPVAL                         R25 1
      229 GETTABLEKS                       R25 R25 K37 ["Enums"]
      231 GETTABLEKS                       R25 R25 K71 ["Radius"]
      233 GETTABLEKS                       R25 R25 K72 ["Small"]
      235 SETTABLEKS                       R25 R24 K57 ["radius"]
      237 DUPTABLE                         R25 K73 [{"Text"}]
      238 GETUPVAL                         R26 6
      239 GETUPVAL                         R27 9
      240 DUPTABLE                         R28 K75 [{["tag"] = "auto-xy padding-x-small padding-y-xsmall text-label-small text-align-x-left content-inverse-emphasis", ["Text"]}]
      241 SETTABLEKS                       R12 R28 K42 ["Text"]
      243 CALL                             R26 2 1
      244 SETTABLEKS                       R26 R25 K42 ["Text"]
      246 CALL                             R22 3 1
      247 SETTABLEKS                       R22 R21 K49 ["Content"]
      249 CALL                             R18 3 1
      250 JUMP                             ; [+1]
      251 LOADNIL                          R18
      252 SETTABLEKS                       R18 R17 K25 ["Tooltip"]
      254 CALL                             R14 3 -1
      255 RETURN                           R14 -1

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
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["Hooks"]
        9 GETTABLEKS                       R4 R4 K1 ["useTokens"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 4
       13 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       15 DUPCLOSURE                       R6 K3 [PROTO_14]
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 NEWTABLE                         R7 0 1
       20 GETUPVAL                         R8 5
       21 GETTABLEKS                       R8 R8 K4 ["locale"]
       23 SETLIST                          R7 R8 1 [1]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K5 ["useState"]
       29 DUPTABLE                         R7 K8 [{["expanded"] = False}]
       30 CALL                             R6 1 2
       31 GETUPVAL                         R8 7
       32 GETTABLEKS                       R8 R8 K9 ["get"]
       34 CALL                             R8 0 1
       35 GETTABLEKS                       R10 R2 K10 ["state"]
       37 JUMPIFNOTEQKS                    R10 K11 ["disconnected"] ; [+2]
       39 LOADB                            R9 0 +1
       40 LOADB                            R9 1
       41 GETTABLEKS                       R10 R2 K12 ["isBusy"]
       43 JUMPIF                           R10 ; [+2]
       44 GETTABLEKS                       R10 R3 K13 ["isProcessing"]
       46 GETUPVAL                         R11 4
       47 GETTABLEKS                       R11 R11 K5 ["useState"]
       49 LOADN                            R12 0
       50 CALL                             R11 1 2
       51 GETTABLEKS                       R13 R2 K14 ["connectionCountObservable"]
       53 GETUPVAL                         R14 4
       54 GETTABLEKS                       R14 R14 K15 ["useEffect"]
       56 NEWCLOSURE                       R15 P1
       57 CAPTURE                          VAL R13
       58 CAPTURE                          VAL R12
       59 NEWTABLE                         R16 0 1
       61 MOVE                             R17 R13
       62 SETLIST                          R16 R17 1 [1]
       64 CALL                             R14 2 0
       65 JUMPIFNOTEQKN                    R11 K16 [0] ; [+4]
       67 GETTABLEKS                       R14 R5 K17 ["NoClientsConnected"]
       69 JUMP                             ; [+23]
       70 JUMPIFNOTEQKN                    R11 K18 [1] ; [+8]
       72 GETUPVAL                         R14 5
       73 LOADK                            R16 K19 ["McpSetup"]
       74 LOADK                            R17 K20 ["ClientConnected"]
       75 NAMECALL                         R14 R14 K21 ["getText"]
       77 CALL                             R14 3 1
       78 JUMP                             ; [+14]
       79 GETUPVAL                         R14 5
       80 LOADK                            R16 K19 ["McpSetup"]
       81 LOADK                            R17 K22 ["ClientsConnected"]
       82 DUPTABLE                         R18 K24 [{"count"}]
       83 FASTCALL1                        TOSTRING R11 ; [+3]
       84 MOVE                             R20 R11
       85 GETIMPORT                        R19 K26 [tostring]
       87 CALL                             R19 1 1
       88 SETTABLEKS                       R19 R18 K23 ["count"]
       90 NAMECALL                         R14 R14 K21 ["getText"]
       92 CALL                             R14 4 1
       93 GETUPVAL                         R15 4
       94 GETTABLEKS                       R15 R15 K27 ["useCallback"]
       96 NEWCLOSURE                       R16 P2
       97 CAPTURE                          VAL R7
       98 NEWTABLE                         R17 0 0
      100 CALL                             R15 2 1
      101 GETUPVAL                         R16 8
      102 GETTABLEKS                       R16 R16 K28 ["useAsync"]
      104 NEWCLOSURE                       R17 P3
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R8
      107 NEWTABLE                         R18 0 1
      109 GETTABLEKS                       R19 R2 K29 ["setupInstructions"]
      111 SETLIST                          R18 R19 1 [1]
      113 CALL                             R16 2 1
      114 GETUPVAL                         R17 4
      115 GETTABLEKS                       R17 R17 K27 ["useCallback"]
      117 NEWCLOSURE                       R18 P4
      118 CAPTURE                          VAL R2
      119 NEWTABLE                         R19 0 2
      121 GETTABLEKS                       R20 R2 K30 ["start"]
      123 GETTABLEKS                       R21 R2 K31 ["stop"]
      125 SETLIST                          R19 R20 2 [1]
      127 CALL                             R17 2 1
      128 GETUPVAL                         R18 4
      129 GETTABLEKS                       R18 R18 K2 ["useMemo"]
      131 NEWCLOSURE                       R19 P5
      132 CAPTURE                          UPVAL U9
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R5
      136 NEWTABLE                         R20 0 3
      138 GETTABLEKS                       R21 R2 K29 ["setupInstructions"]
      140 MOVE                             R22 R16
      141 GETTABLEKS                       R23 R5 K32 ["Loading"]
      143 SETLIST                          R20 R21 3 [1]
      145 CALL                             R18 2 1
      146 GETUPVAL                         R19 4
      147 GETTABLEKS                       R19 R19 K2 ["useMemo"]
      149 NEWCLOSURE                       R20 P6
      150 CAPTURE                          VAL R2
      151 NEWTABLE                         R21 0 1
      153 GETTABLEKS                       R22 R2 K29 ["setupInstructions"]
      155 SETLIST                          R21 R22 1 [1]
      157 CALL                             R19 2 1
      158 GETUPVAL                         R20 4
      159 GETTABLEKS                       R20 R20 K27 ["useCallback"]
      161 NEWCLOSURE                       R21 P7
      162 CAPTURE                          VAL R8
      163 CAPTURE                          UPVAL U10
      164 NEWTABLE                         R22 0 1
      166 GETTABLEKS                       R23 R8 K33 ["http"]
      168 SETLIST                          R22 R23 1 [1]
      170 CALL                             R20 2 1
      171 GETUPVAL                         R21 11
      172 GETUPVAL                         R22 12
      173 DUPTABLE                         R23 K37 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y padding-x-large padding-y-xsmall radius-medium bg-surface-100"}]
      174 GETTABLEKS                       R24 R0 K34 ["LayoutOrder"]
      176 SETTABLEKS                       R24 R23 K34 ["LayoutOrder"]
      178 DUPTABLE                         R24 K43 [{"Disclaimer", "TitleGroup", "QuickConnect", "InstructionsAccordion", "LearnMore"}]
      179 GETUPVAL                         R25 11
      180 GETUPVAL                         R26 12
      181 DUPTABLE                         R27 K45 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xsmall stroke-standard stroke-muted radius-small", ["LayoutOrder"]}]
      182 MOVE                             R28 R1
      183 CALL                             R28 0 1
      184 SETTABLEKS                       R28 R27 K34 ["LayoutOrder"]
      186 DUPTABLE                         R28 K48 [{"Icon", "Text"}]
      187 GETUPVAL                         R29 11
      188 GETUPVAL                         R30 13
      189 DUPTABLE                         R31 K52 [{"name", "style", "size", "LayoutOrder"}]
      190 GETUPVAL                         R32 3
      191 GETTABLEKS                       R32 R32 K53 ["Enums"]
      193 GETTABLEKS                       R32 R32 K54 ["IconName"]
      195 GETTABLEKS                       R32 R32 K55 ["CircleI"]
      197 SETTABLEKS                       R32 R31 K49 ["name"]
      199 GETTABLEKS                       R32 R4 K56 ["Color"]
      201 GETTABLEKS                       R32 R32 K57 ["Content"]
      203 GETTABLEKS                       R32 R32 K58 ["Muted"]
      205 SETTABLEKS                       R32 R31 K50 ["style"]
      207 GETUPVAL                         R32 3
      208 GETTABLEKS                       R32 R32 K53 ["Enums"]
      210 GETTABLEKS                       R32 R32 K59 ["IconSize"]
      212 GETTABLEKS                       R32 R32 K60 ["Medium"]
      214 SETTABLEKS                       R32 R31 K51 ["size"]
      216 MOVE                             R32 R1
      217 CALL                             R32 0 1
      218 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      220 CALL                             R29 2 1
      221 SETTABLEKS                       R29 R28 K46 ["Icon"]
      223 GETUPVAL                         R29 11
      224 GETUPVAL                         R30 14
      225 DUPTABLE                         R31 K62 [{["tag"] = "shrink auto-xy text-caption-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      226 GETTABLEKS                       R32 R5 K38 ["Disclaimer"]
      228 SETTABLEKS                       R32 R31 K47 ["Text"]
      230 MOVE                             R32 R1
      231 CALL                             R32 0 1
      232 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      234 CALL                             R29 2 1
      235 SETTABLEKS                       R29 R28 K47 ["Text"]
      237 CALL                             R25 3 1
      238 SETTABLEKS                       R25 R24 K38 ["Disclaimer"]
      240 GETUPVAL                         R25 11
      241 GETUPVAL                         R26 12
      242 DUPTABLE                         R27 K64 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      243 MOVE                             R28 R1
      244 CALL                             R28 0 1
      245 SETTABLEKS                       R28 R27 K34 ["LayoutOrder"]
      247 DUPTABLE                         R28 K67 [{"TitleRow", "ConnectionIndicator"}]
      248 GETUPVAL                         R29 11
      249 GETUPVAL                         R30 12
      250 DUPTABLE                         R31 K69 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
      251 MOVE                             R32 R1
      252 CALL                             R32 0 1
      253 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      255 DUPTABLE                         R32 K73 [{"Title", "Spacer", "Toggle"}]
      256 GETUPVAL                         R33 11
      257 GETUPVAL                         R34 14
      258 DUPTABLE                         R35 K75 [{["tag"] = "auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      259 GETTABLEKS                       R36 R5 K70 ["Title"]
      261 SETTABLEKS                       R36 R35 K47 ["Text"]
      263 MOVE                             R36 R1
      264 CALL                             R36 0 1
      265 SETTABLEKS                       R36 R35 K34 ["LayoutOrder"]
      267 CALL                             R33 2 1
      268 SETTABLEKS                       R33 R32 K70 ["Title"]
      270 GETUPVAL                         R33 11
      271 GETUPVAL                         R34 12
      272 DUPTABLE                         R35 K77 [{["tag"] = "fill", ["LayoutOrder"]}]
      273 MOVE                             R36 R1
      274 CALL                             R36 0 1
      275 SETTABLEKS                       R36 R35 K34 ["LayoutOrder"]
      277 CALL                             R33 2 1
      278 SETTABLEKS                       R33 R32 K71 ["Spacer"]
      280 GETUPVAL                         R33 11
      281 GETUPVAL                         R34 15
      282 DUPTABLE                         R35 K84 [{["testId"], ["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
      283 GETUPVAL                         R36 16
      284 GETTABLEKS                       R36 R36 K19 ["McpSetup"]
      286 GETTABLEKS                       R36 R36 K72 ["Toggle"]
      288 SETTABLEKS                       R36 R35 K78 ["testId"]
      290 SETTABLEKS                       R9 R35 K81 ["isChecked"]
      292 SETTABLEKS                       R10 R35 K82 ["isDisabled"]
      294 SETTABLEKS                       R17 R35 K83 ["onActivated"]
      296 GETUPVAL                         R36 17
      297 GETTABLEKS                       R36 R36 K85 ["Small"]
      299 SETTABLEKS                       R36 R35 K51 ["size"]
      301 MOVE                             R36 R1
      302 CALL                             R36 0 1
      303 SETTABLEKS                       R36 R35 K34 ["LayoutOrder"]
      305 CALL                             R33 2 1
      306 SETTABLEKS                       R33 R32 K72 ["Toggle"]
      308 CALL                             R29 3 1
      309 SETTABLEKS                       R29 R28 K65 ["TitleRow"]
      311 GETUPVAL                         R30 10
      312 GETTABLEKS                       R30 R30 K86 ["FFlagDisableMCPConnectionIndicator"]
      314 JUMPIFNOT                        R30 ; [+2]
      315 LOADNIL                          R29
      316 JUMP                             ; [+68]
      317 GETUPVAL                         R30 10
      318 GETTABLEKS                       R30 R30 K87 ["FFlagMCPConnectionIndicatorTooltip"]
      320 JUMPIFNOT                        R30 ; [+13]
      321 GETUPVAL                         R29 11
      322 GETUPVAL                         R30 18
      323 DUPTABLE                         R31 K89 [{"activeConnectionsObservable", "LayoutOrder"}]
      324 GETTABLEKS                       R32 R2 K88 ["activeConnectionsObservable"]
      326 SETTABLEKS                       R32 R31 K88 ["activeConnectionsObservable"]
      328 MOVE                             R32 R1
      329 CALL                             R32 0 1
      330 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      332 CALL                             R29 2 1
      333 JUMP                             ; [+51]
      334 GETUPVAL                         R29 11
      335 GETUPVAL                         R30 12
      336 DUPTABLE                         R31 K91 [{["tag"] = "row align-y-center auto-xy gap-small", ["LayoutOrder"]}]
      337 MOVE                             R32 R1
      338 CALL                             R32 0 1
      339 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      341 DUPTABLE                         R32 K93 [{"Icon", "StatusText"}]
      342 GETUPVAL                         R33 11
      343 GETUPVAL                         R34 19
      344 DUPTABLE                         R35 K95 [{"variant", "LayoutOrder"}]
      345 LOADN                            R37 0
      346 JUMPIFNOTLT                      R37 R11 ; [+9]
      348 GETUPVAL                         R36 3
      349 GETTABLEKS                       R36 R36 K53 ["Enums"]
      351 GETTABLEKS                       R36 R36 K96 ["StatusIndicatorVariant"]
      353 GETTABLEKS                       R36 R36 K97 ["Success"]
      355 JUMP                             ; [+7]
      356 GETUPVAL                         R36 3
      357 GETTABLEKS                       R36 R36 K53 ["Enums"]
      359 GETTABLEKS                       R36 R36 K96 ["StatusIndicatorVariant"]
      361 GETTABLEKS                       R36 R36 K98 ["Neutral"]
      363 SETTABLEKS                       R36 R35 K94 ["variant"]
      365 MOVE                             R36 R1
      366 CALL                             R36 0 1
      367 SETTABLEKS                       R36 R35 K34 ["LayoutOrder"]
      369 CALL                             R33 2 1
      370 SETTABLEKS                       R33 R32 K46 ["Icon"]
      372 GETUPVAL                         R33 11
      373 GETUPVAL                         R34 14
      374 DUPTABLE                         R35 K100 [{["tag"] = "auto-xy text-caption-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      375 SETTABLEKS                       R14 R35 K47 ["Text"]
      377 MOVE                             R36 R1
      378 CALL                             R36 0 1
      379 SETTABLEKS                       R36 R35 K34 ["LayoutOrder"]
      381 CALL                             R33 2 1
      382 SETTABLEKS                       R33 R32 K92 ["StatusText"]
      384 CALL                             R29 3 1
      385 SETTABLEKS                       R29 R28 K66 ["ConnectionIndicator"]
      387 CALL                             R25 3 1
      388 SETTABLEKS                       R25 R24 K39 ["TitleGroup"]
      390 JUMPIFNOT                        R19 ; [+16]
      391 GETUPVAL                         R25 11
      392 GETUPVAL                         R26 20
      393 DUPTABLE                         R27 K102 [{"isDisabled", "mcpServerInfo", "LayoutOrder"}]
      394 MOVE                             R28 R10
      395 JUMPIF                           R28 ; [+1]
      396 NOT                              R28 R9
      397 SETTABLEKS                       R28 R27 K82 ["isDisabled"]
      399 SETTABLEKS                       R19 R27 K101 ["mcpServerInfo"]
      401 MOVE                             R28 R1
      402 CALL                             R28 0 1
      403 SETTABLEKS                       R28 R27 K34 ["LayoutOrder"]
      405 CALL                             R25 2 1
      406 JUMP                             ; [+1]
      407 LOADNIL                          R25
      408 SETTABLEKS                       R25 R24 K40 ["QuickConnect"]
      410 GETUPVAL                         R25 11
      411 GETUPVAL                         R26 12
      412 DUPTABLE                         R27 K104 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      413 MOVE                             R28 R1
      414 CALL                             R28 0 1
      415 SETTABLEKS                       R28 R27 K34 ["LayoutOrder"]
      417 DUPTABLE                         R28 K106 [{"Accordion"}]
      418 GETUPVAL                         R29 11
      419 GETUPVAL                         R30 21
      420 GETTABLEKS                       R30 R30 K107 ["Root"]
      422 DUPTABLE                         R31 K111 [{["expanded"], ["contentId"] = "studio_mcp_instructions", ["editThisContent"]}]
      423 GETTABLEKS                       R32 R6 K6 ["expanded"]
      425 SETTABLEKS                       R32 R31 K6 ["expanded"]
      427 SETTABLEKS                       R15 R31 K110 ["editThisContent"]
      429 DUPTABLE                         R32 K113 [{"Header", "Content"}]
      430 GETUPVAL                         R33 11
      431 GETUPVAL                         R34 21
      432 GETTABLEKS                       R34 R34 K112 ["Header"]
      434 DUPTABLE                         R35 K119 [{["LayoutOrder"], ["AutomaticHeight"] = True, ["IconSize"] = "medium", ["VerticalAlignment"] = "center"}]
      435 MOVE                             R36 R1
      436 CALL                             R36 0 1
      437 SETTABLEKS                       R36 R35 K34 ["LayoutOrder"]
      439 DUPTABLE                         R36 K120 [{"Title"}]
      440 GETUPVAL                         R37 11
      441 GETUPVAL                         R38 14
      442 DUPTABLE                         R39 K122 [{["tag"] = "auto-xy text-title-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      443 GETTABLEKS                       R40 R5 K123 ["InstructionsHeader"]
      445 SETTABLEKS                       R40 R39 K47 ["Text"]
      447 MOVE                             R40 R1
      448 CALL                             R40 0 1
      449 SETTABLEKS                       R40 R39 K34 ["LayoutOrder"]
      451 CALL                             R37 2 1
      452 SETTABLEKS                       R37 R36 K70 ["Title"]
      454 CALL                             R33 3 1
      455 SETTABLEKS                       R33 R32 K112 ["Header"]
      457 GETUPVAL                         R33 11
      458 GETUPVAL                         R34 21
      459 GETTABLEKS                       R34 R34 K57 ["Content"]
      461 DUPTABLE                         R35 K127 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True, ["disableVerticalBar"] = True}]
      462 MOVE                             R36 R1
      463 CALL                             R36 0 1
      464 SETTABLEKS                       R36 R35 K34 ["LayoutOrder"]
      466 DUPTABLE                         R36 K131 [{"Instruction", "JsonConfigBlock", "StartupCommandBlock"}]
      467 GETUPVAL                         R37 11
      468 GETUPVAL                         R38 14
      469 DUPTABLE                         R39 K133 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      470 GETTABLEKS                       R40 R5 K134 ["InstructionsBody"]
      472 SETTABLEKS                       R40 R39 K47 ["Text"]
      474 MOVE                             R40 R1
      475 CALL                             R40 0 1
      476 SETTABLEKS                       R40 R39 K34 ["LayoutOrder"]
      478 CALL                             R37 2 1
      479 SETTABLEKS                       R37 R36 K128 ["Instruction"]
      481 GETUPVAL                         R37 11
      482 GETUPVAL                         R38 22
      483 DUPTABLE                         R39 K139 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      484 GETTABLEKS                       R40 R5 K140 ["JsonConfigLabel"]
      486 SETTABLEKS                       R40 R39 K79 ["label"]
      488 GETUPVAL                         R40 16
      489 GETTABLEKS                       R40 R40 K19 ["McpSetup"]
      491 GETTABLEKS                       R40 R40 K140 ["JsonConfigLabel"]
      493 SETTABLEKS                       R40 R39 K135 ["labelTestId"]
      495 GETTABLEKS                       R40 R18 K141 ["json"]
      497 SETTABLEKS                       R40 R39 K136 ["data"]
      499 GETTABLEKS                       R40 R5 K142 ["Copied"]
      501 SETTABLEKS                       R40 R39 K137 ["copiedText"]
      503 GETUPVAL                         R40 16
      504 GETTABLEKS                       R40 R40 K19 ["McpSetup"]
      506 GETTABLEKS                       R40 R40 K143 ["JsonConfigCopy"]
      508 SETTABLEKS                       R40 R39 K138 ["copyButtonTestId"]
      510 MOVE                             R40 R1
      511 CALL                             R40 0 1
      512 SETTABLEKS                       R40 R39 K34 ["LayoutOrder"]
      514 CALL                             R37 2 1
      515 SETTABLEKS                       R37 R36 K129 ["JsonConfigBlock"]
      517 GETUPVAL                         R37 11
      518 GETUPVAL                         R38 22
      519 DUPTABLE                         R39 K139 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      520 GETTABLEKS                       R40 R5 K144 ["StartupCommandLabel"]
      522 SETTABLEKS                       R40 R39 K79 ["label"]
      524 GETUPVAL                         R40 16
      525 GETTABLEKS                       R40 R40 K19 ["McpSetup"]
      527 GETTABLEKS                       R40 R40 K144 ["StartupCommandLabel"]
      529 SETTABLEKS                       R40 R39 K135 ["labelTestId"]
      531 GETTABLEKS                       R40 R18 K145 ["startup"]
      533 SETTABLEKS                       R40 R39 K136 ["data"]
      535 GETTABLEKS                       R40 R5 K142 ["Copied"]
      537 SETTABLEKS                       R40 R39 K137 ["copiedText"]
      539 GETUPVAL                         R40 16
      540 GETTABLEKS                       R40 R40 K19 ["McpSetup"]
      542 GETTABLEKS                       R40 R40 K146 ["StartupCommandCopy"]
      544 SETTABLEKS                       R40 R39 K138 ["copyButtonTestId"]
      546 MOVE                             R40 R1
      547 CALL                             R40 0 1
      548 SETTABLEKS                       R40 R39 K34 ["LayoutOrder"]
      550 CALL                             R37 2 1
      551 SETTABLEKS                       R37 R36 K130 ["StartupCommandBlock"]
      553 CALL                             R33 3 1
      554 SETTABLEKS                       R33 R32 K57 ["Content"]
      556 CALL                             R29 3 1
      557 SETTABLEKS                       R29 R28 K105 ["Accordion"]
      559 CALL                             R25 3 1
      560 SETTABLEKS                       R25 R24 K41 ["InstructionsAccordion"]
      562 GETUPVAL                         R25 11
      563 GETUPVAL                         R26 12
      564 DUPTABLE                         R27 K148 [{["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      565 MOVE                             R28 R1
      566 CALL                             R28 0 1
      567 SETTABLEKS                       R28 R27 K34 ["LayoutOrder"]
      569 DUPTABLE                         R28 K152 [{"Before", "Link", "After"}]
      570 GETTABLEKS                       R31 R5 K42 ["LearnMore"]
      572 GETTABLEKS                       R31 R31 K153 ["before"]
      574 LENGTH                           R30 R31
      575 LOADN                            R31 0
      576 JUMPIFNOTLT                      R31 R30 ; [+16]
      578 GETUPVAL                         R29 11
      579 GETUPVAL                         R30 14
      580 DUPTABLE                         R31 K155 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      581 GETTABLEKS                       R32 R5 K42 ["LearnMore"]
      583 GETTABLEKS                       R32 R32 K153 ["before"]
      585 SETTABLEKS                       R32 R31 K47 ["Text"]
      587 MOVE                             R32 R1
      588 CALL                             R32 0 1
      589 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      591 CALL                             R29 2 1
      592 JUMP                             ; [+1]
      593 LOADNIL                          R29
      594 SETTABLEKS                       R29 R28 K149 ["Before"]
      596 GETTABLEKS                       R31 R5 K42 ["LearnMore"]
      598 GETTABLEKS                       R31 R31 K156 ["link"]
      600 LENGTH                           R30 R31
      601 LOADN                            R31 0
      602 JUMPIFNOTLT                      R31 R30 ; [+18]
      604 GETUPVAL                         R29 11
      605 GETUPVAL                         R30 14
      606 DUPTABLE                         R31 K158 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["onActivated"], ["LayoutOrder"]}]
      607 GETTABLEKS                       R32 R5 K42 ["LearnMore"]
      609 GETTABLEKS                       R32 R32 K156 ["link"]
      611 SETTABLEKS                       R32 R31 K47 ["Text"]
      613 SETTABLEKS                       R20 R31 K83 ["onActivated"]
      615 MOVE                             R32 R1
      616 CALL                             R32 0 1
      617 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      619 CALL                             R29 2 1
      620 JUMP                             ; [+1]
      621 LOADNIL                          R29
      622 SETTABLEKS                       R29 R28 K150 ["Link"]
      624 GETTABLEKS                       R31 R5 K42 ["LearnMore"]
      626 GETTABLEKS                       R31 R31 K159 ["after"]
      628 LENGTH                           R30 R31
      629 LOADN                            R31 0
      630 JUMPIFNOTLT                      R31 R30 ; [+16]
      632 GETUPVAL                         R29 11
      633 GETUPVAL                         R30 14
      634 DUPTABLE                         R31 K155 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      635 GETTABLEKS                       R32 R5 K42 ["LearnMore"]
      637 GETTABLEKS                       R32 R32 K159 ["after"]
      639 SETTABLEKS                       R32 R31 K47 ["Text"]
      641 MOVE                             R32 R1
      642 CALL                             R32 0 1
      643 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      645 CALL                             R29 2 1
      646 JUMP                             ; [+1]
      647 LOADNIL                          R29
      648 SETTABLEKS                       R29 R28 K151 ["After"]
      650 CALL                             R25 3 1
      651 SETTABLEKS                       R25 R24 K42 ["LearnMore"]
      653 CALL                             R21 3 -1
      654 RETURN                           R21 -1

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
       25 GETTABLEKS                       R4 R0 K10 ["Guest"]
       27 GETTABLEKS                       R4 R4 K11 ["Environment"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["ExternalServerContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Components"]
       43 GETTABLEKS                       R6 R6 K8 ["IntegrationManagement"]
       45 GETTABLEKS                       R6 R6 K14 ["QuickConnectSection"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K15 ["Util"]
       52 GETTABLEKS                       R7 R7 K16 ["TestIds"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K17 ["Resources"]
       59 GETTABLEKS                       R8 R8 K18 ["Localization"]
       61 GETTABLEKS                       R8 R8 K19 ["Translator"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K20 ["Types"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K21 ["Parent"]
       73 GETTABLEKS                       R10 R10 K22 ["Foundation"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K21 ["Parent"]
       80 GETTABLEKS                       R11 R11 K23 ["ModelContextProtocol"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K21 ["Parent"]
       87 GETTABLEKS                       R12 R12 K24 ["React"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K21 ["Parent"]
       94 GETTABLEKS                       R13 R13 K25 ["ReactUtils"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K26 ["Flags"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K27 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K28 ["useAsyncGuard"]
      108 CALL                             R14 1 1
      109 GETTABLEKS                       R15 R4 K29 ["useExternalServer"]
      111 GETTABLEKS                       R16 R9 K30 ["Icon"]
      113 GETTABLEKS                       R17 R9 K31 ["Popover"]
      115 GETTABLEKS                       R18 R9 K32 ["StatusIndicator"]
      117 GETTABLEKS                       R19 R9 K33 ["Text"]
      119 GETTABLEKS                       R20 R9 K34 ["Toggle"]
      121 GETTABLEKS                       R21 R9 K35 ["View"]
      123 GETTABLEKS                       R22 R9 K36 ["Enums"]
      125 GETTABLEKS                       R22 R22 K37 ["InputSize"]
      127 GETTABLEKS                       R23 R12 K38 ["createNextOrder"]
      129 GETTABLEKS                       R24 R11 K39 ["createElement"]
      131 NEWTABLE                         R25 8 0
      133 LOADK                            R26 K40 ["MCP Inspector"]
      134 SETTABLEKS                       R26 R25 K41 ["mcp-inspector"]
      136 LOADK                            R26 K42 ["Cursor"]
      137 SETTABLEKS                       R26 R25 K43 ["cursor-vscode"]
      139 LOADK                            R26 K44 ["Antigravity"]
      140 SETTABLEKS                       R26 R25 K45 ["antigravity-client"]
      142 LOADK                            R26 K46 ["Claude"]
      143 SETTABLEKS                       R26 R25 K47 ["claude-ai"]
      145 LOADK                            R26 K48 ["Claude Code"]
      146 SETTABLEKS                       R26 R25 K49 ["claude-code"]
      148 LOADK                            R26 K50 ["ChatGPT / Codex"]
      149 SETTABLEKS                       R26 R25 K51 ["codex-mcp-client"]
      151 DUPCLOSURE                       R26 K52 [PROTO_0]
      152 CAPTURE                          VAL R25
      153 DUPCLOSURE                       R27 K53 [PROTO_1]
      154 CAPTURE                          VAL R25
      155 CAPTURE                          VAL R7
      156 DUPCLOSURE                       R28 K54 [PROTO_9]
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R12
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R27
      163 CAPTURE                          VAL R24
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R17
      168 DUPCLOSURE                       R29 K55 [PROTO_10]
      169 DUPCLOSURE                       R30 K56 [PROTO_11]
      170 DUPCLOSURE                       R31 K57 [PROTO_12]
      171 DUPCLOSURE                       R32 K58 [PROTO_13]
      172 CAPTURE                          VAL R30
      173 DUPCLOSURE                       R33 K59 [PROTO_25]
      174 CAPTURE                          VAL R23
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R14
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R29
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R32
      184 CAPTURE                          VAL R13
      185 CAPTURE                          VAL R24
      186 CAPTURE                          VAL R21
      187 CAPTURE                          VAL R16
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R28
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R2
      197 GETTABLEKS                       R34 R11 K60 ["memo"]
      199 MOVE                             R35 R33
      200 CALL                             R34 1 -1
      201 RETURN                           R34 -1
