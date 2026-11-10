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
        0 JUMPIFNOT                        R0 ; [+17]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["start"]
        4 CALL                             R1 0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantMcpCapturePerTurn"]
        8 JUMPIFNOT                        R1 ; [+13]
        9 GETIMPORT                        R1 K4 [task.spawn]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K5 ["saveDefaultAsync"]
       14 GETUPVAL                         R3 3
       15 LOADB                            R4 1
       16 CALL                             R1 3 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["stop"]
       21 CALL                             R1 0 0
       22 RETURN                           R0 0

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
      139 CAPTURE                          UPVAL U8
      140 CAPTURE                          UPVAL U10
      141 CAPTURE                          VAL R8
      142 NEWTABLE                         R22 0 3
      144 GETTABLEKS                       R23 R2 K31 ["start"]
      146 GETTABLEKS                       R24 R2 K32 ["stop"]
      148 MOVE                             R25 R8
      149 SETLIST                          R22 R23 3 [1]
      151 CALL                             R20 2 1
      152 GETUPVAL                         R21 4
      153 GETTABLEKS                       R21 R21 K2 ["useMemo"]
      155 NEWCLOSURE                       R22 P6
      156 CAPTURE                          UPVAL U11
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R5
      160 NEWTABLE                         R23 0 3
      162 GETTABLEKS                       R24 R2 K30 ["setupInstructions"]
      164 MOVE                             R25 R19
      165 GETTABLEKS                       R26 R5 K33 ["Loading"]
      167 SETLIST                          R23 R24 3 [1]
      169 CALL                             R21 2 1
      170 GETUPVAL                         R22 4
      171 GETTABLEKS                       R22 R22 K2 ["useMemo"]
      173 NEWCLOSURE                       R23 P7
      174 CAPTURE                          VAL R2
      175 NEWTABLE                         R24 0 1
      177 GETTABLEKS                       R25 R2 K30 ["setupInstructions"]
      179 SETLIST                          R24 R25 1 [1]
      181 CALL                             R22 2 1
      182 GETUPVAL                         R23 4
      183 GETTABLEKS                       R23 R23 K28 ["useCallback"]
      185 NEWCLOSURE                       R24 P8
      186 CAPTURE                          VAL R8
      187 CAPTURE                          UPVAL U8
      188 NEWTABLE                         R25 0 1
      190 GETTABLEKS                       R26 R8 K34 ["http"]
      192 SETLIST                          R25 R26 1 [1]
      194 CALL                             R23 2 1
      195 GETUPVAL                         R24 12
      196 GETUPVAL                         R25 13
      197 DUPTABLE                         R26 K38 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y padding-x-large padding-y-xsmall radius-medium bg-surface-100"}]
      198 GETTABLEKS                       R27 R0 K35 ["LayoutOrder"]
      200 SETTABLEKS                       R27 R26 K35 ["LayoutOrder"]
      202 DUPTABLE                         R27 K45 [{"Disclaimer", "TitleGroup", "PromptSharing", "QuickConnect", "InstructionsAccordion", "LearnMore"}]
      203 GETUPVAL                         R28 12
      204 GETUPVAL                         R29 13
      205 DUPTABLE                         R30 K47 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xsmall stroke-standard stroke-muted radius-small", ["LayoutOrder"]}]
      206 MOVE                             R31 R1
      207 CALL                             R31 0 1
      208 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      210 DUPTABLE                         R31 K50 [{"Icon", "Text"}]
      211 GETUPVAL                         R32 12
      212 GETUPVAL                         R33 14
      213 DUPTABLE                         R34 K54 [{"name", "style", "size", "LayoutOrder"}]
      214 GETUPVAL                         R35 3
      215 GETTABLEKS                       R35 R35 K55 ["Enums"]
      217 GETTABLEKS                       R35 R35 K56 ["IconName"]
      219 GETTABLEKS                       R35 R35 K57 ["CircleI"]
      221 SETTABLEKS                       R35 R34 K51 ["name"]
      223 GETTABLEKS                       R35 R4 K58 ["Color"]
      225 GETTABLEKS                       R35 R35 K59 ["Content"]
      227 GETTABLEKS                       R35 R35 K60 ["Muted"]
      229 SETTABLEKS                       R35 R34 K52 ["style"]
      231 GETUPVAL                         R35 3
      232 GETTABLEKS                       R35 R35 K55 ["Enums"]
      234 GETTABLEKS                       R35 R35 K61 ["IconSize"]
      236 GETTABLEKS                       R35 R35 K62 ["Medium"]
      238 SETTABLEKS                       R35 R34 K53 ["size"]
      240 MOVE                             R35 R1
      241 CALL                             R35 0 1
      242 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      244 CALL                             R32 2 1
      245 SETTABLEKS                       R32 R31 K48 ["Icon"]
      247 GETUPVAL                         R32 12
      248 GETUPVAL                         R33 15
      249 DUPTABLE                         R34 K64 [{["tag"] = "shrink auto-xy text-caption-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      250 GETTABLEKS                       R35 R5 K39 ["Disclaimer"]
      252 SETTABLEKS                       R35 R34 K49 ["Text"]
      254 MOVE                             R35 R1
      255 CALL                             R35 0 1
      256 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      258 CALL                             R32 2 1
      259 SETTABLEKS                       R32 R31 K49 ["Text"]
      261 CALL                             R28 3 1
      262 SETTABLEKS                       R28 R27 K39 ["Disclaimer"]
      264 GETUPVAL                         R28 12
      265 GETUPVAL                         R29 13
      266 DUPTABLE                         R30 K66 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      267 MOVE                             R31 R1
      268 CALL                             R31 0 1
      269 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      271 DUPTABLE                         R31 K69 [{"TitleRow", "ConnectionIndicator"}]
      272 GETUPVAL                         R32 12
      273 GETUPVAL                         R33 13
      274 DUPTABLE                         R34 K71 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
      275 MOVE                             R35 R1
      276 CALL                             R35 0 1
      277 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      279 DUPTABLE                         R35 K75 [{"Title", "Spacer", "Toggle"}]
      280 GETUPVAL                         R36 12
      281 GETUPVAL                         R37 15
      282 DUPTABLE                         R38 K77 [{["tag"] = "auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      283 GETTABLEKS                       R39 R5 K72 ["Title"]
      285 SETTABLEKS                       R39 R38 K49 ["Text"]
      287 MOVE                             R39 R1
      288 CALL                             R39 0 1
      289 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      291 CALL                             R36 2 1
      292 SETTABLEKS                       R36 R35 K72 ["Title"]
      294 GETUPVAL                         R36 12
      295 GETUPVAL                         R37 13
      296 DUPTABLE                         R38 K79 [{["tag"] = "fill", ["LayoutOrder"]}]
      297 MOVE                             R39 R1
      298 CALL                             R39 0 1
      299 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      301 CALL                             R36 2 1
      302 SETTABLEKS                       R36 R35 K73 ["Spacer"]
      304 GETUPVAL                         R36 12
      305 GETUPVAL                         R37 16
      306 DUPTABLE                         R38 K86 [{["testId"], ["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
      307 GETUPVAL                         R39 17
      308 GETTABLEKS                       R39 R39 K20 ["McpSetup"]
      310 GETTABLEKS                       R39 R39 K74 ["Toggle"]
      312 SETTABLEKS                       R39 R38 K80 ["testId"]
      314 SETTABLEKS                       R9 R38 K83 ["isChecked"]
      316 SETTABLEKS                       R10 R38 K84 ["isDisabled"]
      318 SETTABLEKS                       R20 R38 K85 ["onActivated"]
      320 GETUPVAL                         R39 18
      321 GETTABLEKS                       R39 R39 K87 ["Small"]
      323 SETTABLEKS                       R39 R38 K53 ["size"]
      325 MOVE                             R39 R1
      326 CALL                             R39 0 1
      327 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      329 CALL                             R36 2 1
      330 SETTABLEKS                       R36 R35 K74 ["Toggle"]
      332 CALL                             R32 3 1
      333 SETTABLEKS                       R32 R31 K67 ["TitleRow"]
      335 GETUPVAL                         R33 8
      336 GETTABLEKS                       R33 R33 K88 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
      338 JUMPIFNOT                        R33 ; [+12]
      339 JUMPIFNOT                        R11 ; [+11]
      340 GETUPVAL                         R32 12
      341 GETUPVAL                         R33 19
      342 DUPTABLE                         R34 K90 [{"reason", "LayoutOrder"}]
      343 SETTABLEKS                       R11 R34 K89 ["reason"]
      345 MOVE                             R35 R1
      346 CALL                             R35 0 1
      347 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      349 CALL                             R32 2 1
      350 JUMP                             ; [+74]
      351 GETUPVAL                         R33 8
      352 GETTABLEKS                       R33 R33 K91 ["FFlagDisableMCPConnectionIndicator"]
      354 JUMPIFNOT                        R33 ; [+2]
      355 LOADNIL                          R32
      356 JUMP                             ; [+68]
      357 GETUPVAL                         R33 8
      358 GETTABLEKS                       R33 R33 K92 ["FFlagMCPConnectionIndicatorTooltip"]
      360 JUMPIFNOT                        R33 ; [+13]
      361 GETUPVAL                         R32 12
      362 GETUPVAL                         R33 20
      363 DUPTABLE                         R34 K94 [{"activeConnectionsObservable", "LayoutOrder"}]
      364 GETTABLEKS                       R35 R2 K93 ["activeConnectionsObservable"]
      366 SETTABLEKS                       R35 R34 K93 ["activeConnectionsObservable"]
      368 MOVE                             R35 R1
      369 CALL                             R35 0 1
      370 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      372 CALL                             R32 2 1
      373 JUMP                             ; [+51]
      374 GETUPVAL                         R32 12
      375 GETUPVAL                         R33 13
      376 DUPTABLE                         R34 K96 [{["tag"] = "row align-y-center auto-xy gap-small", ["LayoutOrder"]}]
      377 MOVE                             R35 R1
      378 CALL                             R35 0 1
      379 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      381 DUPTABLE                         R35 K98 [{"Icon", "StatusText"}]
      382 GETUPVAL                         R36 12
      383 GETUPVAL                         R37 21
      384 DUPTABLE                         R38 K100 [{"variant", "LayoutOrder"}]
      385 LOADN                            R40 0
      386 JUMPIFNOTLT                      R40 R14 ; [+9]
      388 GETUPVAL                         R39 3
      389 GETTABLEKS                       R39 R39 K55 ["Enums"]
      391 GETTABLEKS                       R39 R39 K101 ["StatusIndicatorVariant"]
      393 GETTABLEKS                       R39 R39 K102 ["Success"]
      395 JUMP                             ; [+7]
      396 GETUPVAL                         R39 3
      397 GETTABLEKS                       R39 R39 K55 ["Enums"]
      399 GETTABLEKS                       R39 R39 K101 ["StatusIndicatorVariant"]
      401 GETTABLEKS                       R39 R39 K103 ["Neutral"]
      403 SETTABLEKS                       R39 R38 K99 ["variant"]
      405 MOVE                             R39 R1
      406 CALL                             R39 0 1
      407 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      409 CALL                             R36 2 1
      410 SETTABLEKS                       R36 R35 K48 ["Icon"]
      412 GETUPVAL                         R36 12
      413 GETUPVAL                         R37 15
      414 DUPTABLE                         R38 K105 [{["tag"] = "auto-xy text-caption-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      415 SETTABLEKS                       R17 R38 K49 ["Text"]
      417 MOVE                             R39 R1
      418 CALL                             R39 0 1
      419 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      421 CALL                             R36 2 1
      422 SETTABLEKS                       R36 R35 K97 ["StatusText"]
      424 CALL                             R32 3 1
      425 SETTABLEKS                       R32 R31 K68 ["ConnectionIndicator"]
      427 CALL                             R28 3 1
      428 SETTABLEKS                       R28 R27 K40 ["TitleGroup"]
      430 GETUPVAL                         R29 8
      431 GETTABLEKS                       R29 R29 K106 ["FFlagAssistantMcpCapturePerTurn"]
      433 JUMPIFNOT                        R29 ; [+19]
      434 JUMPIFNOT                        R22 ; [+18]
      435 GETUPVAL                         R28 12
      436 GETUPVAL                         R29 22
      437 DUPTABLE                         R30 K109 [{"isServerRunning", "isDisabled", "mcpServerInfo", "LayoutOrder"}]
      438 SETTABLEKS                       R9 R30 K107 ["isServerRunning"]
      440 MOVE                             R31 R10
      441 JUMPIF                           R31 ; [+1]
      442 NOT                              R31 R9
      443 SETTABLEKS                       R31 R30 K84 ["isDisabled"]
      445 SETTABLEKS                       R22 R30 K108 ["mcpServerInfo"]
      447 MOVE                             R31 R1
      448 CALL                             R31 0 1
      449 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      451 CALL                             R28 2 1
      452 JUMP                             ; [+1]
      453 LOADNIL                          R28
      454 SETTABLEKS                       R28 R27 K41 ["PromptSharing"]
      456 JUMPIFNOT                        R22 ; [+16]
      457 GETUPVAL                         R28 12
      458 GETUPVAL                         R29 23
      459 DUPTABLE                         R30 K110 [{"isDisabled", "mcpServerInfo", "LayoutOrder"}]
      460 MOVE                             R31 R10
      461 JUMPIF                           R31 ; [+1]
      462 NOT                              R31 R9
      463 SETTABLEKS                       R31 R30 K84 ["isDisabled"]
      465 SETTABLEKS                       R22 R30 K108 ["mcpServerInfo"]
      467 MOVE                             R31 R1
      468 CALL                             R31 0 1
      469 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      471 CALL                             R28 2 1
      472 JUMP                             ; [+1]
      473 LOADNIL                          R28
      474 SETTABLEKS                       R28 R27 K42 ["QuickConnect"]
      476 GETUPVAL                         R28 12
      477 GETUPVAL                         R29 13
      478 DUPTABLE                         R30 K112 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      479 MOVE                             R31 R1
      480 CALL                             R31 0 1
      481 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      483 DUPTABLE                         R31 K114 [{"Accordion"}]
      484 GETUPVAL                         R32 12
      485 GETUPVAL                         R33 24
      486 GETTABLEKS                       R33 R33 K115 ["Root"]
      488 DUPTABLE                         R34 K119 [{["expanded"], ["contentId"] = "studio_mcp_instructions", ["editThisContent"]}]
      489 GETTABLEKS                       R35 R6 K6 ["expanded"]
      491 SETTABLEKS                       R35 R34 K6 ["expanded"]
      493 SETTABLEKS                       R18 R34 K118 ["editThisContent"]
      495 DUPTABLE                         R35 K121 [{"Header", "Content"}]
      496 GETUPVAL                         R36 12
      497 GETUPVAL                         R37 24
      498 GETTABLEKS                       R37 R37 K120 ["Header"]
      500 DUPTABLE                         R38 K127 [{["LayoutOrder"], ["AutomaticHeight"] = True, ["IconSize"] = "medium", ["VerticalAlignment"] = "center"}]
      501 MOVE                             R39 R1
      502 CALL                             R39 0 1
      503 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      505 DUPTABLE                         R39 K128 [{"Title"}]
      506 GETUPVAL                         R40 12
      507 GETUPVAL                         R41 15
      508 DUPTABLE                         R42 K130 [{["tag"] = "auto-xy text-title-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      509 GETTABLEKS                       R43 R5 K131 ["InstructionsHeader"]
      511 SETTABLEKS                       R43 R42 K49 ["Text"]
      513 MOVE                             R43 R1
      514 CALL                             R43 0 1
      515 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      517 CALL                             R40 2 1
      518 SETTABLEKS                       R40 R39 K72 ["Title"]
      520 CALL                             R36 3 1
      521 SETTABLEKS                       R36 R35 K120 ["Header"]
      523 GETUPVAL                         R36 12
      524 GETUPVAL                         R37 24
      525 GETTABLEKS                       R37 R37 K59 ["Content"]
      527 DUPTABLE                         R38 K135 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True, ["disableVerticalBar"] = True}]
      528 MOVE                             R39 R1
      529 CALL                             R39 0 1
      530 SETTABLEKS                       R39 R38 K35 ["LayoutOrder"]
      532 DUPTABLE                         R39 K139 [{"Instruction", "JsonConfigBlock", "StartupCommandBlock"}]
      533 GETUPVAL                         R40 12
      534 GETUPVAL                         R41 15
      535 DUPTABLE                         R42 K141 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      536 GETTABLEKS                       R43 R5 K142 ["InstructionsBody"]
      538 SETTABLEKS                       R43 R42 K49 ["Text"]
      540 MOVE                             R43 R1
      541 CALL                             R43 0 1
      542 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      544 CALL                             R40 2 1
      545 SETTABLEKS                       R40 R39 K136 ["Instruction"]
      547 GETUPVAL                         R40 12
      548 GETUPVAL                         R41 25
      549 DUPTABLE                         R42 K147 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      550 GETTABLEKS                       R43 R5 K148 ["JsonConfigLabel"]
      552 SETTABLEKS                       R43 R42 K81 ["label"]
      554 GETUPVAL                         R43 17
      555 GETTABLEKS                       R43 R43 K20 ["McpSetup"]
      557 GETTABLEKS                       R43 R43 K148 ["JsonConfigLabel"]
      559 SETTABLEKS                       R43 R42 K143 ["labelTestId"]
      561 GETTABLEKS                       R43 R21 K149 ["json"]
      563 SETTABLEKS                       R43 R42 K144 ["data"]
      565 GETTABLEKS                       R43 R5 K150 ["Copied"]
      567 SETTABLEKS                       R43 R42 K145 ["copiedText"]
      569 GETUPVAL                         R43 17
      570 GETTABLEKS                       R43 R43 K20 ["McpSetup"]
      572 GETTABLEKS                       R43 R43 K151 ["JsonConfigCopy"]
      574 SETTABLEKS                       R43 R42 K146 ["copyButtonTestId"]
      576 MOVE                             R43 R1
      577 CALL                             R43 0 1
      578 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      580 CALL                             R40 2 1
      581 SETTABLEKS                       R40 R39 K137 ["JsonConfigBlock"]
      583 GETUPVAL                         R40 12
      584 GETUPVAL                         R41 25
      585 DUPTABLE                         R42 K147 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      586 GETTABLEKS                       R43 R5 K152 ["StartupCommandLabel"]
      588 SETTABLEKS                       R43 R42 K81 ["label"]
      590 GETUPVAL                         R43 17
      591 GETTABLEKS                       R43 R43 K20 ["McpSetup"]
      593 GETTABLEKS                       R43 R43 K152 ["StartupCommandLabel"]
      595 SETTABLEKS                       R43 R42 K143 ["labelTestId"]
      597 GETTABLEKS                       R43 R21 K153 ["startup"]
      599 SETTABLEKS                       R43 R42 K144 ["data"]
      601 GETTABLEKS                       R43 R5 K150 ["Copied"]
      603 SETTABLEKS                       R43 R42 K145 ["copiedText"]
      605 GETUPVAL                         R43 17
      606 GETTABLEKS                       R43 R43 K20 ["McpSetup"]
      608 GETTABLEKS                       R43 R43 K154 ["StartupCommandCopy"]
      610 SETTABLEKS                       R43 R42 K146 ["copyButtonTestId"]
      612 MOVE                             R43 R1
      613 CALL                             R43 0 1
      614 SETTABLEKS                       R43 R42 K35 ["LayoutOrder"]
      616 CALL                             R40 2 1
      617 SETTABLEKS                       R40 R39 K138 ["StartupCommandBlock"]
      619 CALL                             R36 3 1
      620 SETTABLEKS                       R36 R35 K59 ["Content"]
      622 CALL                             R32 3 1
      623 SETTABLEKS                       R32 R31 K113 ["Accordion"]
      625 CALL                             R28 3 1
      626 SETTABLEKS                       R28 R27 K43 ["InstructionsAccordion"]
      628 GETUPVAL                         R28 12
      629 GETUPVAL                         R29 13
      630 DUPTABLE                         R30 K156 [{["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      631 MOVE                             R31 R1
      632 CALL                             R31 0 1
      633 SETTABLEKS                       R31 R30 K35 ["LayoutOrder"]
      635 DUPTABLE                         R31 K160 [{"Before", "Link", "After"}]
      636 GETTABLEKS                       R34 R5 K44 ["LearnMore"]
      638 GETTABLEKS                       R34 R34 K161 ["before"]
      640 LENGTH                           R33 R34
      641 LOADN                            R34 0
      642 JUMPIFNOTLT                      R34 R33 ; [+16]
      644 GETUPVAL                         R32 12
      645 GETUPVAL                         R33 15
      646 DUPTABLE                         R34 K163 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      647 GETTABLEKS                       R35 R5 K44 ["LearnMore"]
      649 GETTABLEKS                       R35 R35 K161 ["before"]
      651 SETTABLEKS                       R35 R34 K49 ["Text"]
      653 MOVE                             R35 R1
      654 CALL                             R35 0 1
      655 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      657 CALL                             R32 2 1
      658 JUMP                             ; [+1]
      659 LOADNIL                          R32
      660 SETTABLEKS                       R32 R31 K157 ["Before"]
      662 GETTABLEKS                       R34 R5 K44 ["LearnMore"]
      664 GETTABLEKS                       R34 R34 K164 ["link"]
      666 LENGTH                           R33 R34
      667 LOADN                            R34 0
      668 JUMPIFNOTLT                      R34 R33 ; [+18]
      670 GETUPVAL                         R32 12
      671 GETUPVAL                         R33 15
      672 DUPTABLE                         R34 K166 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["onActivated"], ["LayoutOrder"]}]
      673 GETTABLEKS                       R35 R5 K44 ["LearnMore"]
      675 GETTABLEKS                       R35 R35 K164 ["link"]
      677 SETTABLEKS                       R35 R34 K49 ["Text"]
      679 SETTABLEKS                       R23 R34 K85 ["onActivated"]
      681 MOVE                             R35 R1
      682 CALL                             R35 0 1
      683 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      685 CALL                             R32 2 1
      686 JUMP                             ; [+1]
      687 LOADNIL                          R32
      688 SETTABLEKS                       R32 R31 K158 ["Link"]
      690 GETTABLEKS                       R34 R5 K44 ["LearnMore"]
      692 GETTABLEKS                       R34 R34 K167 ["after"]
      694 LENGTH                           R33 R34
      695 LOADN                            R34 0
      696 JUMPIFNOTLT                      R34 R33 ; [+16]
      698 GETUPVAL                         R32 12
      699 GETUPVAL                         R33 15
      700 DUPTABLE                         R34 K163 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      701 GETTABLEKS                       R35 R5 K44 ["LearnMore"]
      703 GETTABLEKS                       R35 R35 K167 ["after"]
      705 SETTABLEKS                       R35 R34 K49 ["Text"]
      707 MOVE                             R35 R1
      708 CALL                             R35 0 1
      709 SETTABLEKS                       R35 R34 K35 ["LayoutOrder"]
      711 CALL                             R32 2 1
      712 JUMP                             ; [+1]
      713 LOADNIL                          R32
      714 SETTABLEKS                       R32 R31 K159 ["After"]
      716 CALL                             R28 3 1
      717 SETTABLEKS                       R28 R27 K44 ["LearnMore"]
      719 CALL                             R24 3 -1
      720 RETURN                           R24 -1

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
       45 GETTABLEKS                       R6 R6 K14 ["McpCaptureConsent"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Components"]
       52 GETTABLEKS                       R7 R7 K8 ["IntegrationManagement"]
       54 GETTABLEKS                       R7 R7 K15 ["PromptSharingSection"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Components"]
       61 GETTABLEKS                       R8 R8 K8 ["IntegrationManagement"]
       63 GETTABLEKS                       R8 R8 K16 ["QuickConnectSection"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K17 ["Util"]
       70 GETTABLEKS                       R9 R9 K18 ["TestIds"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K19 ["Resources"]
       77 GETTABLEKS                       R10 R10 K20 ["Localization"]
       79 GETTABLEKS                       R10 R10 K21 ["Translator"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K22 ["Types"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K23 ["Parent"]
       91 GETTABLEKS                       R12 R12 K24 ["Foundation"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K5 [require]
       96 GETTABLEKS                       R13 R0 K23 ["Parent"]
       98 GETTABLEKS                       R13 R13 K25 ["ModelContextProtocol"]
      100 CALL                             R12 1 1
      101 GETIMPORT                        R13 K5 [require]
      103 GETTABLEKS                       R14 R0 K23 ["Parent"]
      105 GETTABLEKS                       R14 R14 K26 ["React"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K23 ["Parent"]
      112 GETTABLEKS                       R15 R15 K27 ["ReactUtils"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K28 ["Flags"]
      119 CALL                             R15 1 1
      120 GETIMPORT                        R16 K5 [require]
      122 GETTABLEKS                       R17 R0 K29 ["Hooks"]
      124 GETTABLEKS                       R17 R17 K30 ["useAsyncGuard"]
      126 CALL                             R16 1 1
      127 GETTABLEKS                       R17 R4 K31 ["useExternalServer"]
      129 GETTABLEKS                       R18 R11 K32 ["Icon"]
      131 GETTABLEKS                       R19 R11 K33 ["Popover"]
      133 GETTABLEKS                       R20 R11 K34 ["StatusIndicator"]
      135 GETTABLEKS                       R21 R11 K35 ["Text"]
      137 GETTABLEKS                       R22 R11 K36 ["Toggle"]
      139 GETTABLEKS                       R23 R11 K37 ["View"]
      141 GETTABLEKS                       R24 R11 K38 ["Enums"]
      143 GETTABLEKS                       R24 R24 K39 ["InputSize"]
      145 GETTABLEKS                       R25 R14 K40 ["createNextOrder"]
      147 GETTABLEKS                       R26 R13 K41 ["createElement"]
      149 NEWTABLE                         R27 8 0
      151 LOADK                            R28 K42 ["MCP Inspector"]
      152 SETTABLEKS                       R28 R27 K43 ["mcp-inspector"]
      154 LOADK                            R28 K44 ["Cursor"]
      155 SETTABLEKS                       R28 R27 K45 ["cursor-vscode"]
      157 LOADK                            R28 K46 ["Antigravity"]
      158 SETTABLEKS                       R28 R27 K47 ["antigravity-client"]
      160 LOADK                            R28 K48 ["Claude"]
      161 SETTABLEKS                       R28 R27 K49 ["claude-ai"]
      163 LOADK                            R28 K50 ["Claude Code"]
      164 SETTABLEKS                       R28 R27 K51 ["claude-code"]
      166 LOADK                            R28 K52 ["ChatGPT / Codex"]
      167 SETTABLEKS                       R28 R27 K53 ["codex-mcp-client"]
      169 DUPCLOSURE                       R28 K54 [PROTO_0]
      170 CAPTURE                          VAL R27
      171 DUPCLOSURE                       R29 K55 [PROTO_1]
      172 CAPTURE                          VAL R27
      173 CAPTURE                          VAL R9
      174 DUPCLOSURE                       R30 K56 [PROTO_9]
      175 CAPTURE                          VAL R25
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R29
      181 CAPTURE                          VAL R26
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R21
      185 CAPTURE                          VAL R19
      186 DUPTABLE                         R31 K61 [{["restartRequired"] = "AuthRejected", ["authFailed"] = "AuthFailed"}]
      187 DUPCLOSURE                       R32 K62 [PROTO_10]
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R11
      190 CAPTURE                          VAL R26
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R31
      197 DUPCLOSURE                       R33 K63 [PROTO_11]
      198 DUPCLOSURE                       R34 K64 [PROTO_12]
      199 DUPCLOSURE                       R35 K65 [PROTO_13]
      200 DUPCLOSURE                       R36 K66 [PROTO_14]
      201 CAPTURE                          VAL R34
      202 DUPCLOSURE                       R37 K67 [PROTO_29]
      203 CAPTURE                          VAL R25
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R33
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R14
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R36
      215 CAPTURE                          VAL R26
      216 CAPTURE                          VAL R23
      217 CAPTURE                          VAL R18
      218 CAPTURE                          VAL R21
      219 CAPTURE                          VAL R22
      220 CAPTURE                          VAL R8
      221 CAPTURE                          VAL R24
      222 CAPTURE                          VAL R32
      223 CAPTURE                          VAL R30
      224 CAPTURE                          VAL R20
      225 CAPTURE                          VAL R6
      226 CAPTURE                          VAL R7
      227 CAPTURE                          VAL R1
      228 CAPTURE                          VAL R2
      229 GETTABLEKS                       R38 R13 K68 ["memo"]
      231 MOVE                             R39 R37
      232 CALL                             R38 1 -1
      233 RETURN                           R38 -1
