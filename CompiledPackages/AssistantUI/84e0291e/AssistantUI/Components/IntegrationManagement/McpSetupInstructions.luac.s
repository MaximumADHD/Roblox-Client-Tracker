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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R2 K1 ["useTokens"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 DUPTABLE                         R5 K6 [{["testId"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       11 GETUPVAL                         R6 4
       12 GETTABLEKS                       R6 R6 K7 ["McpSetup"]
       14 GETTABLEKS                       R6 R6 K8 ["AuthRejectedWarning"]
       16 SETTABLEKS                       R6 R5 K2 ["testId"]
       18 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       20 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       22 DUPTABLE                         R6 K11 [{"Icon", "Text"}]
       23 GETUPVAL                         R7 2
       24 GETUPVAL                         R8 5
       25 DUPTABLE                         R9 K16 [{"name", "style", "size", "variant", "LayoutOrder"}]
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R10 R10 K17 ["Enums"]
       29 GETTABLEKS                       R10 R10 K18 ["IconName"]
       31 GETTABLEKS                       R10 R10 K19 ["TriangleExclamation"]
       33 SETTABLEKS                       R10 R9 K12 ["name"]
       35 GETTABLEKS                       R10 R2 K20 ["Color"]
       37 GETTABLEKS                       R10 R10 K21 ["System"]
       39 GETTABLEKS                       R10 R10 K22 ["Warning"]
       41 SETTABLEKS                       R10 R9 K13 ["style"]
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R10 R10 K17 ["Enums"]
       46 GETTABLEKS                       R10 R10 K23 ["IconSize"]
       48 GETTABLEKS                       R10 R10 K24 ["Small"]
       50 SETTABLEKS                       R10 R9 K14 ["size"]
       52 GETUPVAL                         R10 1
       53 GETTABLEKS                       R10 R10 K17 ["Enums"]
       55 GETTABLEKS                       R10 R10 K25 ["IconVariant"]
       57 GETTABLEKS                       R10 R10 K26 ["Filled"]
       59 SETTABLEKS                       R10 R9 K15 ["variant"]
       61 MOVE                             R10 R1
       62 CALL                             R10 0 1
       63 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K9 ["Icon"]
       68 GETUPVAL                         R7 2
       69 GETUPVAL                         R8 6
       70 DUPTABLE                         R9 K28 [{["tag"] = "shrink auto-xy text-caption-small text-wrap text-align-x-left content-system-warning", ["Text"], ["LayoutOrder"]}]
       71 GETUPVAL                         R10 7
       72 LOADK                            R12 K7 ["McpSetup"]
       73 GETUPVAL                         R14 8
       74 GETTABLEKS                       R15 R0 K29 ["reason"]
       76 GETTABLE                         R13 R14 R15
       77 NAMECALL                         R10 R10 K30 ["getText"]
       79 CALL                             R10 3 1
       80 SETTABLEKS                       R10 R9 K10 ["Text"]
       82 MOVE                             R10 R1
       83 CALL                             R10 0 1
       84 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       86 CALL                             R7 2 1
       87 SETTABLEKS                       R7 R6 K10 ["Text"]
       89 CALL                             R3 3 -1
       90 RETURN                           R3 -1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 DUPTABLE                         R1 K3 [{[1], ["copyText"] = }]
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 DUPTABLE                         R2 K6 [{"startup", "json"}]
        4 SETTABLEKS                       R1 R2 K4 ["startup"]
        6 SETTABLEKS                       R1 R2 K5 ["json"]
        8 RETURN                           R2 1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+4]
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 LOADB                            R3 1
       14 NAMECALL                         R0 R0 K1 ["connect"]
       16 CALL                             R0 3 1
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["start"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["stop"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["setupInstructions"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETTABLEKS                       R3 R3 K1 ["Loading"]
        8 CALL                             R0 3 1
        9 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setupInstructions"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETTABLEKS                       R1 R0 K1 ["error"]
        7 JUMPIFEQKNIL                     R1 ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["openUrl"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["FStringMCPDocsUrl"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_29:
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
       15 DUPCLOSURE                       R6 K3 [PROTO_15]
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
       49 LOADNIL                          R12
       50 CALL                             R11 1 2
       51 GETTABLEKS                       R13 R2 K14 ["authRejectedObservable"]
       53 GETUPVAL                         R14 4
       54 GETTABLEKS                       R14 R14 K15 ["useEffect"]
       56 NEWCLOSURE                       R15 P1
       57 CAPTURE                          UPVAL U8
       58 CAPTURE                          VAL R13
       59 CAPTURE                          VAL R12
       60 NEWTABLE                         R16 0 1
       62 MOVE                             R17 R13
       63 SETLIST                          R16 R17 1 [1]
       65 CALL                             R14 2 0
       66 GETUPVAL                         R14 4
       67 GETTABLEKS                       R14 R14 K5 ["useState"]
       69 LOADN                            R15 0
       70 CALL                             R14 1 2
       71 GETTABLEKS                       R16 R2 K16 ["connectionCountObservable"]
       73 GETUPVAL                         R17 4
       74 GETTABLEKS                       R17 R17 K15 ["useEffect"]
       76 NEWCLOSURE                       R18 P2
       77 CAPTURE                          VAL R16
       78 CAPTURE                          VAL R15
       79 NEWTABLE                         R19 0 1
       81 MOVE                             R20 R16
       82 SETLIST                          R19 R20 1 [1]
       84 CALL                             R17 2 0
       85 JUMPIFNOTEQKN                    R14 K17 [0] ; [+4]
       87 GETTABLEKS                       R17 R5 K18 ["NoClientsConnected"]
       89 JUMP                             ; [+23]
       90 JUMPIFNOTEQKN                    R14 K19 [1] ; [+8]
       92 GETUPVAL                         R17 5
       93 LOADK                            R19 K20 ["McpSetup"]
       94 LOADK                            R20 K21 ["ClientConnected"]
       95 NAMECALL                         R17 R17 K22 ["getText"]
       97 CALL                             R17 3 1
       98 JUMP                             ; [+14]
       99 GETUPVAL                         R17 5
      100 LOADK                            R19 K20 ["McpSetup"]
      101 LOADK                            R20 K23 ["ClientsConnected"]
      102 DUPTABLE                         R21 K25 [{"count"}]
      103 FASTCALL1                        TOSTRING R14 ; [+3]
      104 MOVE                             R23 R14
      105 GETIMPORT                        R22 K27 [tostring]
      107 CALL                             R22 1 1
      108 SETTABLEKS                       R22 R21 K24 ["count"]
      110 NAMECALL                         R17 R17 K22 ["getText"]
      112 CALL                             R17 4 1
      113 GETUPVAL                         R18 4
      114 GETTABLEKS                       R18 R18 K28 ["useCallback"]
      116 NEWCLOSURE                       R19 P3
      117 CAPTURE                          VAL R7
      118 NEWTABLE                         R20 0 0
      120 CALL                             R18 2 1
      121 GETUPVAL                         R19 9
      122 GETTABLEKS                       R19 R19 K29 ["useAsync"]
      124 NEWCLOSURE                       R20 P4
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R8
      127 NEWTABLE                         R21 0 1
      129 GETTABLEKS                       R22 R2 K30 ["setupInstructions"]
      131 SETLIST                          R21 R22 1 [1]
      133 CALL                             R19 2 1
      134 GETUPVAL                         R20 4
      135 GETTABLEKS                       R20 R20 K28 ["useCallback"]
      137 NEWCLOSURE                       R21 P5
      138 CAPTURE                          VAL R2
      139 NEWTABLE                         R22 0 2
      141 GETTABLEKS                       R23 R2 K31 ["start"]
      143 GETTABLEKS                       R24 R2 K32 ["stop"]
      145 SETLIST                          R22 R23 2 [1]
      147 CALL                             R20 2 1
      148 GETUPVAL                         R21 4
      149 GETTABLEKS                       R21 R21 K2 ["useMemo"]
      151 NEWCLOSURE                       R22 P6
      152 CAPTURE                          UPVAL U10
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R5
      156 NEWTABLE                         R23 0 3
      158 GETTABLEKS                       R24 R2 K30 ["setupInstructions"]
      160 MOVE                             R25 R19
      161 GETTABLEKS                       R26 R5 K33 ["Loading"]
      163 SETLIST                          R23 R24 3 [1]
      165 CALL                             R21 2 1
      166 GETUPVAL                         R22 4
      167 GETTABLEKS                       R22 R22 K2 ["useMemo"]
      169 NEWCLOSURE                       R23 P7
      170 CAPTURE                          VAL R2
      171 NEWTABLE                         R24 0 1
      173 GETTABLEKS                       R25 R2 K30 ["setupInstructions"]
      175 SETLIST                          R24 R25 1 [1]
      177 CALL                             R22 2 1
      178 GETUPVAL                         R23 4
      179 GETTABLEKS                       R23 R23 K28 ["useCallback"]
      181 NEWCLOSURE                       R24 P8
      182 CAPTURE                          VAL R8
      183 CAPTURE                          UPVAL U8
      184 NEWTABLE                         R25 0 1
      186 GETTABLEKS                       R26 R8 K34 ["http"]
      188 SETLIST                          R25 R26 1 [1]
      190 CALL                             R23 2 1
      191 GETUPVAL                         R24 11
      192 GETUPVAL                         R25 12
      193 DUPTABLE                         R26 K38 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y padding-x-large padding-y-xsmall radius-medium bg-surface-100"}]
      194 GETTABLEKS                       R27 R0 K35 ["LayoutOrder"]
      196 SETTABLEKS                       R27 R26 K35 ["LayoutOrder"]
      198 DUPTABLE                         R27 K44 [{"Disclaimer", "TitleGroup", "QuickConnect", "InstructionsAccordion", "LearnMore"}]
      199 GETUPVAL                         R28 11
      200 GETUPVAL                         R29 12
      201 DUPTABLE                         R30 K46 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xsmall stroke-standard stroke-muted radius-small", ["LayoutOrder"]}]
      202 MOVE                             R31 R1
      203 CALL                             R31 0 1
      204 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      206 DUPTABLE                         R31 K49 [{"Icon", "Text"}]
      207 GETUPVAL                         R32 11
      208 GETUPVAL                         R33 13
      209 DUPTABLE                         R34 K53 [{"name", "style", "size", "LayoutOrder"}]
      210 GETUPVAL                         R35 3
      211 GETTABLEKS                       R35 R35 K54 ["Enums"]
      213 GETTABLEKS                       R35 R35 K55 ["IconName"]
      215 GETTABLEKS                       R35 R35 K56 ["CircleI"]
      217 SETTABLEKS                       R35 R34 K50 ["name"]
      219 GETTABLEKS                       R35 R4 K57 ["Color"]
      221 GETTABLEKS                       R35 R35 K58 ["Content"]
      223 GETTABLEKS                       R35 R35 K59 ["Muted"]
      225 SETTABLEKS                       R35 R34 K51 ["style"]
      227 GETUPVAL                         R35 3
      228 GETTABLEKS                       R35 R35 K54 ["Enums"]
      230 GETTABLEKS                       R35 R35 K60 ["IconSize"]
      232 GETTABLEKS                       R35 R35 K61 ["Medium"]
      234 SETTABLEKS                       R35 R34 K52 ["size"]
      236 MOVE                             R35 R1
      237 CALL                             R35 0 1
      238 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      240 CALL                             R32 2 1
      241 SETTABLEKS                       R32 R31 K47 ["Icon"]
      243 GETUPVAL                         R32 11
      244 GETUPVAL                         R33 14
      245 DUPTABLE                         R34 K63 [{["tag"] = "shrink auto-xy text-caption-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      246 GETTABLEKS                       R35 R5 K39 ["Disclaimer"]
      248 SETTABLEKS                       R35 R34 K48 ["Text"]
      250 MOVE                             R35 R1
      251 CALL                             R35 0 1
      252 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      254 CALL                             R32 2 1
      255 SETTABLEKS                       R32 R31 K48 ["Text"]
      257 CALL                             R28 3 1
      258 SETTABLEKS                       R28 R27 K39 ["Disclaimer"]
      260 GETUPVAL                         R28 11
      261 GETUPVAL                         R29 12
      262 DUPTABLE                         R30 K65 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      263 MOVE                             R31 R1
      264 CALL                             R31 0 1
      265 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      267 DUPTABLE                         R31 K68 [{"TitleRow", "ConnectionIndicator"}]
      268 GETUPVAL                         R32 11
      269 GETUPVAL                         R33 12
      270 DUPTABLE                         R34 K70 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
      271 MOVE                             R35 R1
      272 CALL                             R35 0 1
      273 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      275 DUPTABLE                         R35 K74 [{"Title", "Spacer", "Toggle"}]
      276 GETUPVAL                         R36 11
      277 GETUPVAL                         R37 14
      278 DUPTABLE                         R38 K76 [{["tag"] = "auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      279 GETTABLEKS                       R39 R5 K71 ["Title"]
      281 SETTABLEKS                       R39 R38 K48 ["Text"]
      283 MOVE                             R39 R1
      284 CALL                             R39 0 1
      285 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      287 CALL                             R36 2 1
      288 SETTABLEKS                       R36 R35 K71 ["Title"]
      290 GETUPVAL                         R36 11
      291 GETUPVAL                         R37 12
      292 DUPTABLE                         R38 K78 [{["tag"] = "fill", ["LayoutOrder"]}]
      293 MOVE                             R39 R1
      294 CALL                             R39 0 1
      295 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      297 CALL                             R36 2 1
      298 SETTABLEKS                       R36 R35 K72 ["Spacer"]
      300 GETUPVAL                         R36 11
      301 GETUPVAL                         R37 15
      302 DUPTABLE                         R38 K85 [{["testId"], ["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
      303 GETUPVAL                         R39 16
      304 GETTABLEKS                       R39 R39 K20 ["McpSetup"]
      306 GETTABLEKS                       R39 R39 K73 ["Toggle"]
      308 SETTABLEKS                       R39 R38 K79 ["testId"]
      310 SETTABLEKS                       R9 R38 K82 ["isChecked"]
      312 SETTABLEKS                       R10 R38 K83 ["isDisabled"]
      314 SETTABLEKS                       R20 R38 K84 ["onActivated"]
      316 GETUPVAL                         R39 17
      317 GETTABLEKS                       R39 R39 K86 ["Small"]
      319 SETTABLEKS                       R39 R38 K52 ["size"]
      321 MOVE                             R39 R1
      322 CALL                             R39 0 1
      323 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      325 CALL                             R36 2 1
      326 SETTABLEKS                       R36 R35 K73 ["Toggle"]
      328 CALL                             R32 3 1
      329 SETTABLEKS                       R32 R31 K66 ["TitleRow"]
      331 GETUPVAL                         R33 8
      332 GETTABLEKS                       R33 R33 K87 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
      334 JUMPIFNOT                        R33 ; [+12]
      335 JUMPIFNOT                        R11 ; [+11]
      336 GETUPVAL                         R32 11
      337 GETUPVAL                         R33 18
      338 DUPTABLE                         R34 K89 [{"reason", "LayoutOrder"}]
      339 SETTABLEKS                       R11 R34 K88 ["reason"]
      341 MOVE                             R35 R1
      342 CALL                             R35 0 1
      343 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      345 CALL                             R32 2 1
      346 JUMP                             ; [+74]
      347 GETUPVAL                         R33 8
      348 GETTABLEKS                       R33 R33 K90 ["FFlagDisableMCPConnectionIndicator"]
      350 JUMPIFNOT                        R33 ; [+2]
      351 LOADNIL                          R32
      352 JUMP                             ; [+68]
      353 GETUPVAL                         R33 8
      354 GETTABLEKS                       R33 R33 K91 ["FFlagMCPConnectionIndicatorTooltip"]
      356 JUMPIFNOT                        R33 ; [+13]
      357 GETUPVAL                         R32 11
      358 GETUPVAL                         R33 19
      359 DUPTABLE                         R34 K93 [{"activeConnectionsObservable", "LayoutOrder"}]
      360 GETTABLEKS                       R35 R2 K92 ["activeConnectionsObservable"]
      362 SETTABLEKS                       R35 R34 K92 ["activeConnectionsObservable"]
      364 MOVE                             R35 R1
      365 CALL                             R35 0 1
      366 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      368 CALL                             R32 2 1
      369 JUMP                             ; [+51]
      370 GETUPVAL                         R32 11
      371 GETUPVAL                         R33 12
      372 DUPTABLE                         R34 K95 [{["tag"] = "row align-y-center auto-xy gap-small", ["LayoutOrder"]}]
      373 MOVE                             R35 R1
      374 CALL                             R35 0 1
      375 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      377 DUPTABLE                         R35 K97 [{"Icon", "StatusText"}]
      378 GETUPVAL                         R36 11
      379 GETUPVAL                         R37 20
      380 DUPTABLE                         R38 K99 [{"variant", "LayoutOrder"}]
      381 LOADN                            R40 0
      382 JUMPIFNOTLT                      R40 R14 ; [+9]
      384 GETUPVAL                         R39 3
      385 GETTABLEKS                       R39 R39 K54 ["Enums"]
      387 GETTABLEKS                       R39 R39 K100 ["StatusIndicatorVariant"]
      389 GETTABLEKS                       R39 R39 K101 ["Success"]
      391 JUMP                             ; [+7]
      392 GETUPVAL                         R39 3
      393 GETTABLEKS                       R39 R39 K54 ["Enums"]
      395 GETTABLEKS                       R39 R39 K100 ["StatusIndicatorVariant"]
      397 GETTABLEKS                       R39 R39 K102 ["Neutral"]
      399 SETTABLEKS                       R39 R38 K98 ["variant"]
      401 MOVE                             R39 R1
      402 CALL                             R39 0 1
      403 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      405 CALL                             R36 2 1
      406 SETTABLEKS                       R36 R35 K47 ["Icon"]
      408 GETUPVAL                         R36 11
      409 GETUPVAL                         R37 14
      410 DUPTABLE                         R38 K104 [{["tag"] = "auto-xy text-caption-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      411 SETTABLEKS                       R17 R38 K48 ["Text"]
      413 MOVE                             R39 R1
      414 CALL                             R39 0 1
      415 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      417 CALL                             R36 2 1
      418 SETTABLEKS                       R36 R35 K96 ["StatusText"]
      420 CALL                             R32 3 1
      421 SETTABLEKS                       R32 R31 K67 ["ConnectionIndicator"]
      423 CALL                             R28 3 1
      424 SETTABLEKS                       R28 R27 K40 ["TitleGroup"]
      426 JUMPIFNOT                        R22 ; [+16]
      427 GETUPVAL                         R28 11
      428 GETUPVAL                         R29 21
      429 DUPTABLE                         R30 K106 [{"isDisabled", "mcpServerInfo", "LayoutOrder"}]
      430 MOVE                             R31 R10
      431 JUMPIF                           R31 ; [+1]
      432 NOT                              R31 R9
      433 SETTABLEKS                       R31 R30 K83 ["isDisabled"]
      435 SETTABLEKS                       R22 R30 K105 ["mcpServerInfo"]
      437 MOVE                             R31 R1
      438 CALL                             R31 0 1
      439 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      441 CALL                             R28 2 1
      442 JUMP                             ; [+1]
      443 LOADNIL                          R28
      444 SETTABLEKS                       R28 R27 K41 ["QuickConnect"]
      446 GETUPVAL                         R28 11
      447 GETUPVAL                         R29 12
      448 DUPTABLE                         R30 K108 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      449 MOVE                             R31 R1
      450 CALL                             R31 0 1
      451 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      453 DUPTABLE                         R31 K110 [{"Accordion"}]
      454 GETUPVAL                         R32 11
      455 GETUPVAL                         R33 22
      456 GETTABLEKS                       R33 R33 K111 ["Root"]
      458 DUPTABLE                         R34 K115 [{["expanded"], ["contentId"] = "studio_mcp_instructions", ["editThisContent"]}]
      459 GETTABLEKS                       R35 R6 K6 ["expanded"]
      461 SETTABLEKS                       R35 R34 K6 ["expanded"]
      463 SETTABLEKS                       R18 R34 K114 ["editThisContent"]
      465 DUPTABLE                         R35 K117 [{"Header", "Content"}]
      466 GETUPVAL                         R36 11
      467 GETUPVAL                         R37 22
      468 GETTABLEKS                       R37 R37 K116 ["Header"]
      470 DUPTABLE                         R38 K123 [{["LayoutOrder"], ["AutomaticHeight"] = True, ["IconSize"] = "medium", ["VerticalAlignment"] = "center"}]
      471 MOVE                             R39 R1
      472 CALL                             R39 0 1
      473 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      475 DUPTABLE                         R39 K124 [{"Title"}]
      476 GETUPVAL                         R40 11
      477 GETUPVAL                         R41 14
      478 DUPTABLE                         R42 K126 [{["tag"] = "auto-xy text-title-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      479 GETTABLEKS                       R43 R5 K127 ["InstructionsHeader"]
      481 SETTABLEKS                       R43 R42 K48 ["Text"]
      483 MOVE                             R43 R1
      484 CALL                             R43 0 1
      485 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      487 CALL                             R40 2 1
      488 SETTABLEKS                       R40 R39 K71 ["Title"]
      490 CALL                             R36 3 1
      491 SETTABLEKS                       R36 R35 K116 ["Header"]
      493 GETUPVAL                         R36 11
      494 GETUPVAL                         R37 22
      495 GETTABLEKS                       R37 R37 K58 ["Content"]
      497 DUPTABLE                         R38 K131 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True, ["disableVerticalBar"] = True}]
      498 MOVE                             R39 R1
      499 CALL                             R39 0 1
      500 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      502 DUPTABLE                         R39 K135 [{"Instruction", "JsonConfigBlock", "StartupCommandBlock"}]
      503 GETUPVAL                         R40 11
      504 GETUPVAL                         R41 14
      505 DUPTABLE                         R42 K137 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      506 GETTABLEKS                       R43 R5 K138 ["InstructionsBody"]
      508 SETTABLEKS                       R43 R42 K48 ["Text"]
      510 MOVE                             R43 R1
      511 CALL                             R43 0 1
      512 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      514 CALL                             R40 2 1
      515 SETTABLEKS                       R40 R39 K132 ["Instruction"]
      517 GETUPVAL                         R40 11
      518 GETUPVAL                         R41 23
      519 DUPTABLE                         R42 K143 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      520 GETTABLEKS                       R43 R5 K144 ["JsonConfigLabel"]
      522 SETTABLEKS                       R43 R42 K80 ["label"]
      524 GETUPVAL                         R43 16
      525 GETTABLEKS                       R43 R43 K20 ["McpSetup"]
      527 GETTABLEKS                       R43 R43 K144 ["JsonConfigLabel"]
      529 SETTABLEKS                       R43 R42 K139 ["labelTestId"]
      531 GETTABLEKS                       R43 R21 K145 ["json"]
      533 SETTABLEKS                       R43 R42 K140 ["data"]
      535 GETTABLEKS                       R43 R5 K146 ["Copied"]
      537 SETTABLEKS                       R43 R42 K141 ["copiedText"]
      539 GETUPVAL                         R43 16
      540 GETTABLEKS                       R43 R43 K20 ["McpSetup"]
      542 GETTABLEKS                       R43 R43 K147 ["JsonConfigCopy"]
      544 SETTABLEKS                       R43 R42 K142 ["copyButtonTestId"]
      546 MOVE                             R43 R1
      547 CALL                             R43 0 1
      548 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      550 CALL                             R40 2 1
      551 SETTABLEKS                       R40 R39 K133 ["JsonConfigBlock"]
      553 GETUPVAL                         R40 11
      554 GETUPVAL                         R41 23
      555 DUPTABLE                         R42 K143 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      556 GETTABLEKS                       R43 R5 K148 ["StartupCommandLabel"]
      558 SETTABLEKS                       R43 R42 K80 ["label"]
      560 GETUPVAL                         R43 16
      561 GETTABLEKS                       R43 R43 K20 ["McpSetup"]
      563 GETTABLEKS                       R43 R43 K148 ["StartupCommandLabel"]
      565 SETTABLEKS                       R43 R42 K139 ["labelTestId"]
      567 GETTABLEKS                       R43 R21 K149 ["startup"]
      569 SETTABLEKS                       R43 R42 K140 ["data"]
      571 GETTABLEKS                       R43 R5 K146 ["Copied"]
      573 SETTABLEKS                       R43 R42 K141 ["copiedText"]
      575 GETUPVAL                         R43 16
      576 GETTABLEKS                       R43 R43 K20 ["McpSetup"]
      578 GETTABLEKS                       R43 R43 K150 ["StartupCommandCopy"]
      580 SETTABLEKS                       R43 R42 K142 ["copyButtonTestId"]
      582 MOVE                             R43 R1
      583 CALL                             R43 0 1
      584 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      586 CALL                             R40 2 1
      587 SETTABLEKS                       R40 R39 K134 ["StartupCommandBlock"]
      589 CALL                             R36 3 1
      590 SETTABLEKS                       R36 R35 K58 ["Content"]
      592 CALL                             R32 3 1
      593 SETTABLEKS                       R32 R31 K109 ["Accordion"]
      595 CALL                             R28 3 1
      596 SETTABLEKS                       R28 R27 K42 ["InstructionsAccordion"]
      598 GETUPVAL                         R28 11
      599 GETUPVAL                         R29 12
      600 DUPTABLE                         R30 K152 [{["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      601 MOVE                             R31 R1
      602 CALL                             R31 0 1
      603 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      605 DUPTABLE                         R31 K156 [{"Before", "Link", "After"}]
      606 GETTABLEKS                       R34 R5 K43 ["LearnMore"]
      608 GETTABLEKS                       R34 R34 K157 ["before"]
      610 LENGTH                           R33 R34
      611 LOADN                            R34 0
      612 JUMPIFNOTLT                      R34 R33 ; [+16]
      614 GETUPVAL                         R32 11
      615 GETUPVAL                         R33 14
      616 DUPTABLE                         R34 K159 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      617 GETTABLEKS                       R35 R5 K43 ["LearnMore"]
      619 GETTABLEKS                       R35 R35 K157 ["before"]
      621 SETTABLEKS                       R35 R34 K48 ["Text"]
      623 MOVE                             R35 R1
      624 CALL                             R35 0 1
      625 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      627 CALL                             R32 2 1
      628 JUMP                             ; [+1]
      629 LOADNIL                          R32
      630 SETTABLEKS                       R32 R31 K153 ["Before"]
      632 GETTABLEKS                       R34 R5 K43 ["LearnMore"]
      634 GETTABLEKS                       R34 R34 K160 ["link"]
      636 LENGTH                           R33 R34
      637 LOADN                            R34 0
      638 JUMPIFNOTLT                      R34 R33 ; [+18]
      640 GETUPVAL                         R32 11
      641 GETUPVAL                         R33 14
      642 DUPTABLE                         R34 K162 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["onActivated"], ["LayoutOrder"]}]
      643 GETTABLEKS                       R35 R5 K43 ["LearnMore"]
      645 GETTABLEKS                       R35 R35 K160 ["link"]
      647 SETTABLEKS                       R35 R34 K48 ["Text"]
      649 SETTABLEKS                       R23 R34 K84 ["onActivated"]
      651 MOVE                             R35 R1
      652 CALL                             R35 0 1
      653 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      655 CALL                             R32 2 1
      656 JUMP                             ; [+1]
      657 LOADNIL                          R32
      658 SETTABLEKS                       R32 R31 K154 ["Link"]
      660 GETTABLEKS                       R34 R5 K43 ["LearnMore"]
      662 GETTABLEKS                       R34 R34 K163 ["after"]
      664 LENGTH                           R33 R34
      665 LOADN                            R34 0
      666 JUMPIFNOTLT                      R34 R33 ; [+16]
      668 GETUPVAL                         R32 11
      669 GETUPVAL                         R33 14
      670 DUPTABLE                         R34 K159 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      671 GETTABLEKS                       R35 R5 K43 ["LearnMore"]
      673 GETTABLEKS                       R35 R35 K163 ["after"]
      675 SETTABLEKS                       R35 R34 K48 ["Text"]
      677 MOVE                             R35 R1
      678 CALL                             R35 0 1
      679 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      681 CALL                             R32 2 1
      682 JUMP                             ; [+1]
      683 LOADNIL                          R32
      684 SETTABLEKS                       R32 R31 K155 ["After"]
      686 CALL                             R28 3 1
      687 SETTABLEKS                       R28 R27 K43 ["LearnMore"]
      689 CALL                             R24 3 -1
      690 RETURN                           R24 -1

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
      168 DUPTABLE                         R29 K59 [{["restartRequired"] = "AuthRejected", ["authFailed"] = "AuthFailed"}]
      169 DUPCLOSURE                       R30 K60 [PROTO_10]
      170 CAPTURE                          VAL R23
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R24
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R7
      178 CAPTURE                          VAL R29
      179 DUPCLOSURE                       R31 K61 [PROTO_11]
      180 DUPCLOSURE                       R32 K62 [PROTO_12]
      181 DUPCLOSURE                       R33 K63 [PROTO_13]
      182 DUPCLOSURE                       R34 K64 [PROTO_14]
      183 CAPTURE                          VAL R32
      184 DUPCLOSURE                       R35 K65 [PROTO_29]
      185 CAPTURE                          VAL R23
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R14
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R7
      191 CAPTURE                          VAL R31
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R34
      196 CAPTURE                          VAL R24
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R19
      200 CAPTURE                          VAL R20
      201 CAPTURE                          VAL R6
      202 CAPTURE                          VAL R22
      203 CAPTURE                          VAL R30
      204 CAPTURE                          VAL R28
      205 CAPTURE                          VAL R18
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R2
      209 GETTABLEKS                       R36 R11 K66 ["memo"]
      211 MOVE                             R37 R35
      212 CALL                             R36 1 -1
      213 RETURN                           R36 -1
