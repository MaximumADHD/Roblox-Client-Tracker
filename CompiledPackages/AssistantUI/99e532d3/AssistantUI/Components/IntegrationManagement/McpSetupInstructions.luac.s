PROTO_0:
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
       15 JUMPIF                           R3 ; [+10]
       16 DUPTABLE                         R5 K8 [{"before", "link", "after"}]
       17 SETTABLEKS                       R0 R5 K5 ["before"]
       19 LOADK                            R6 K9 [""]
       20 SETTABLEKS                       R6 R5 K6 ["link"]
       22 LOADK                            R6 K9 [""]
       23 SETTABLEKS                       R6 R5 K7 ["after"]
       25 RETURN                           R5 1
       26 AND                              R6 R2 R4
       27 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       29 LOADK                            R7 K10 ["Expected openEnd and closeEnd"]
       30 GETIMPORT                        R5 K12 [assert]
       32 CALL                             R5 2 0
       33 DUPTABLE                         R5 K8 [{"before", "link", "after"}]
       34 LOADN                            R8 1
       35 SUBK                             R9 R1 K13 [1]
       36 FASTCALL3                        STRING_SUB R0 R8 R9
       38 MOVE                             R7 R0
       39 GETIMPORT                        R6 K15 [string.sub]
       41 CALL                             R6 3 1
       42 SETTABLEKS                       R6 R5 K5 ["before"]
       44 ADDK                             R8 R2 K13 [1]
       45 SUBK                             R9 R3 K13 [1]
       46 FASTCALL3                        STRING_SUB R0 R8 R9
       48 MOVE                             R7 R0
       49 GETIMPORT                        R6 K15 [string.sub]
       51 CALL                             R6 3 1
       52 SETTABLEKS                       R6 R5 K6 ["link"]
       54 ADDK                             R8 R4 K13 [1]
       55 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       57 MOVE                             R7 R0
       58 GETIMPORT                        R6 K15 [string.sub]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K7 ["after"]
       63 RETURN                           R5 1

PROTO_1:
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

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"text", "copyText"}]
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R1 K1 ["copyText"]
        6 DUPTABLE                         R2 K5 [{"startup", "json"}]
        7 SETTABLEKS                       R1 R2 K3 ["startup"]
        9 SETTABLEKS                       R1 R2 K4 ["json"]
       11 RETURN                           R2 1

PROTO_3:
        0 JUMPIF                           R0 ; [+12]
        1 DUPTABLE                         R4 K2 [{"text", "copyText"}]
        2 SETTABLEKS                       R2 R4 K0 ["text"]
        4 LOADNIL                          R5
        5 SETTABLEKS                       R5 R4 K1 ["copyText"]
        7 DUPTABLE                         R3 K5 [{"startup", "json"}]
        8 SETTABLEKS                       R4 R3 K3 ["startup"]
       10 SETTABLEKS                       R4 R3 K4 ["json"]
       12 RETURN                           R3 1
       13 GETTABLEKS                       R4 R0 K6 ["error"]
       15 FASTCALL1                        TYPEOF R4 ; [+2]
       16 GETIMPORT                        R3 K8 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K9 ["string"] ; [+15]
       21 GETTABLEKS                       R4 R0 K6 ["error"]
       23 DUPTABLE                         R5 K2 [{"text", "copyText"}]
       24 SETTABLEKS                       R4 R5 K0 ["text"]
       26 LOADNIL                          R6
       27 SETTABLEKS                       R6 R5 K1 ["copyText"]
       29 DUPTABLE                         R3 K5 [{"startup", "json"}]
       30 SETTABLEKS                       R5 R3 K3 ["startup"]
       32 SETTABLEKS                       R5 R3 K4 ["json"]
       34 RETURN                           R3 1
       35 GETTABLEKS                       R3 R1 K10 ["status"]
       37 JUMPIFNOTEQKS                    R3 K11 ["loading"] ; [+13]
       39 DUPTABLE                         R4 K2 [{"text", "copyText"}]
       40 SETTABLEKS                       R2 R4 K0 ["text"]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K1 ["copyText"]
       45 DUPTABLE                         R3 K5 [{"startup", "json"}]
       46 SETTABLEKS                       R4 R3 K3 ["startup"]
       48 SETTABLEKS                       R4 R3 K4 ["json"]
       50 RETURN                           R3 1
       51 GETTABLEKS                       R3 R1 K10 ["status"]
       53 JUMPIFNOTEQKS                    R3 K6 ["error"] ; [+15]
       55 GETTABLEKS                       R4 R1 K12 ["problem"]
       57 DUPTABLE                         R5 K2 [{"text", "copyText"}]
       58 SETTABLEKS                       R4 R5 K0 ["text"]
       60 LOADNIL                          R6
       61 SETTABLEKS                       R6 R5 K1 ["copyText"]
       63 DUPTABLE                         R3 K5 [{"startup", "json"}]
       64 SETTABLEKS                       R5 R3 K3 ["startup"]
       66 SETTABLEKS                       R5 R3 K4 ["json"]
       68 RETURN                           R3 1
       69 GETTABLEKS                       R3 R1 K13 ["value"]
       71 FASTCALL1                        TYPEOF R3 ; [+3]
       72 MOVE                             R5 R3
       73 GETIMPORT                        R4 K8 [typeof]
       75 CALL                             R4 1 1
       76 JUMPIFEQKS                       R4 K9 ["string"] ; [+14]
       78 DUPTABLE                         R5 K2 [{"text", "copyText"}]
       79 LOADK                            R6 K14 ["MCP Server not supported"]
       80 SETTABLEKS                       R6 R5 K0 ["text"]
       82 LOADNIL                          R6
       83 SETTABLEKS                       R6 R5 K1 ["copyText"]
       85 DUPTABLE                         R4 K5 [{"startup", "json"}]
       86 SETTABLEKS                       R5 R4 K3 ["startup"]
       88 SETTABLEKS                       R5 R4 K4 ["json"]
       90 RETURN                           R4 1
       91 GETUPVAL                         R4 0
       92 MOVE                             R5 R0
       93 CALL                             R4 1 1
       94 GETIMPORT                        R5 K16 [string.gsub]
       96 MOVE                             R6 R3
       97 GETIMPORT                        R7 K18 [string.rep]
       99 LOADK                            R8 K19 [" "]
      100 LOADN                            R9 4
      101 CALL                             R7 2 1
      102 GETIMPORT                        R8 K18 [string.rep]
      104 LOADK                            R9 K19 [" "]
      105 LOADN                            R10 2
      106 CALL                             R8 2 -1
      107 CALL                             R5 -1 1
      108 DUPTABLE                         R6 K5 [{"startup", "json"}]
      109 DUPTABLE                         R7 K2 [{"text", "copyText"}]
      110 SETTABLEKS                       R4 R7 K0 ["text"]
      112 SETTABLEKS                       R4 R7 K1 ["copyText"]
      114 SETTABLEKS                       R7 R6 K3 ["startup"]
      116 DUPTABLE                         R7 K2 [{"text", "copyText"}]
      117 SETTABLEKS                       R5 R7 K0 ["text"]
      119 SETTABLEKS                       R5 R7 K1 ["copyText"]
      121 SETTABLEKS                       R7 R6 K4 ["json"]
      123 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_6:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_6]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["copyToClipboard"]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R0 R1 K1 ["current"]
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETIMPORT                        R0 K4 [task.cancel]
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R1 R2 K1 ["current"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 3
       23 GETIMPORT                        R1 K6 [task.delay]
       25 LOADK                            R2 K7 [0.5]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U2
       29 CALL                             R1 2 1
       30 SETTABLEKS                       R1 R0 K1 ["current"]
       32 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R4 R1 K2 ["Config"]
        8 GETTABLEKS                       R3 R4 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R3 K4 ["Name"]
       12 GETTABLEKS                       R4 R1 K5 ["Typography"]
       14 GETTABLEKS                       R3 R4 K6 ["BodySmall"]
       16 GETTABLEKS                       R6 R1 K7 ["Color"]
       18 GETTABLEKS                       R5 R6 K8 ["Content"]
       20 GETTABLEKS                       R4 R5 K9 ["Default"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K10 ["get"]
       25 CALL                             R5 0 1
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K11 ["useState"]
       29 LOADB                            R7 0
       30 CALL                             R6 1 2
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R8 R9 K11 ["useState"]
       34 LOADB                            R9 0
       35 CALL                             R8 1 2
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R10 R11 K12 ["useRef"]
       39 LOADNIL                          R11
       40 CALL                             R10 1 1
       41 GETUPVAL                         R12 2
       42 GETTABLEKS                       R11 R12 K13 ["useEffect"]
       44 NEWCLOSURE                       R12 P0
       45 CAPTURE                          VAL R10
       46 NEWTABLE                         R13 0 0
       48 CALL                             R11 2 0
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R11 R12 K14 ["useCallback"]
       52 NEWCLOSURE                       R12 P1
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R13 0 0
       56 CALL                             R11 2 1
       57 GETTABLEKS                       R13 R0 K15 ["data"]
       59 GETTABLEKS                       R12 R13 K16 ["copyText"]
       61 GETUPVAL                         R14 2
       62 GETTABLEKS                       R13 R14 K14 ["useCallback"]
       64 NEWCLOSURE                       R14 P2
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R10
       69 NEWTABLE                         R15 0 2
       71 MOVE                             R16 R12
       72 MOVE                             R17 R5
       73 SETLIST                          R15 R16 2 [1]
       75 CALL                             R13 2 1
       76 GETUPVAL                         R14 3
       77 CALL                             R14 0 1
       78 GETUPVAL                         R15 4
       79 GETUPVAL                         R16 5
       80 DUPTABLE                         R17 K19 [{"tag", "LayoutOrder"}]
       81 LOADK                            R18 K20 ["col size-full-0 auto-y radius-small stroke-standard stroke-default"]
       82 SETTABLEKS                       R18 R17 K17 ["tag"]
       84 GETTABLEKS                       R18 R0 K18 ["LayoutOrder"]
       86 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
       88 DUPTABLE                         R18 K24 [{"Header", "HeaderDivider", "CodeScrollView"}]
       89 GETUPVAL                         R19 4
       90 GETUPVAL                         R20 5
       91 DUPTABLE                         R21 K26 [{"tag", "LayoutOrder", "onActivated"}]
       92 LOADK                            R22 K27 ["row size-full-0 auto-y gap-xsmall align-y-center bg-shift-100 padding-xsmall"]
       93 SETTABLEKS                       R22 R21 K17 ["tag"]
       95 MOVE                             R22 R14
       96 CALL                             R22 0 1
       97 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
       99 SETTABLEKS                       R11 R21 K25 ["onActivated"]
      101 DUPTABLE                         R22 K32 [{"ExpandIcon", "Label", "Spacer", "CopyButtonPopover"}]
      102 GETUPVAL                         R23 4
      103 GETUPVAL                         R24 6
      104 DUPTABLE                         R25 K35 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      105 JUMPIFNOT                        R6 ; [+2]
      106 LOADK                            R26 K36 ["icons/actions/truncationExpand_small"]
      107 JUMP                             ; [+1]
      108 LOADK                            R26 K37 ["icons/actions/cycleRight_small"]
      109 SETTABLEKS                       R26 R25 K33 ["icon"]
      111 LOADK                            R26 K38 ["size-300-300 align-x-center align-y-center"]
      112 SETTABLEKS                       R26 R25 K17 ["tag"]
      114 LOADK                            R26 K39 ["size-150-150 content-emphasis"]
      115 SETTABLEKS                       R26 R25 K34 ["iconTag"]
      117 MOVE                             R26 R14
      118 CALL                             R26 0 1
      119 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      121 CALL                             R23 2 1
      122 SETTABLEKS                       R23 R22 K28 ["ExpandIcon"]
      124 GETUPVAL                         R23 4
      125 GETUPVAL                         R24 7
      126 DUPTABLE                         R25 K42 [{"tag", "Text", "LayoutOrder", "testId"}]
      127 LOADK                            R26 K43 ["auto-xy shrink text-label-small text-align-x-left"]
      128 SETTABLEKS                       R26 R25 K17 ["tag"]
      130 GETTABLEKS                       R26 R0 K44 ["label"]
      132 SETTABLEKS                       R26 R25 K40 ["Text"]
      134 MOVE                             R26 R14
      135 CALL                             R26 0 1
      136 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      138 GETTABLEKS                       R26 R0 K45 ["labelTestId"]
      140 SETTABLEKS                       R26 R25 K41 ["testId"]
      142 CALL                             R23 2 1
      143 SETTABLEKS                       R23 R22 K29 ["Label"]
      145 GETUPVAL                         R23 4
      146 GETUPVAL                         R24 5
      147 DUPTABLE                         R25 K19 [{"tag", "LayoutOrder"}]
      148 LOADK                            R26 K46 ["fill"]
      149 SETTABLEKS                       R26 R25 K17 ["tag"]
      151 MOVE                             R26 R14
      152 CALL                             R26 0 1
      153 SETTABLEKS                       R26 R25 K18 ["LayoutOrder"]
      155 CALL                             R23 2 1
      156 SETTABLEKS                       R23 R22 K30 ["Spacer"]
      158 GETUPVAL                         R23 4
      159 GETUPVAL                         R25 8
      160 GETTABLEKS                       R24 R25 K47 ["Root"]
      162 DUPTABLE                         R25 K49 [{"isOpen"}]
      163 SETTABLEKS                       R8 R25 K48 ["isOpen"]
      165 DUPTABLE                         R26 K51 [{"Anchor", "Content"}]
      166 GETUPVAL                         R27 4
      167 GETUPVAL                         R29 8
      168 GETTABLEKS                       R28 R29 K50 ["Anchor"]
      170 DUPTABLE                         R29 K52 [{"LayoutOrder"}]
      171 MOVE                             R30 R14
      172 CALL                             R30 0 1
      173 SETTABLEKS                       R30 R29 K18 ["LayoutOrder"]
      175 DUPTABLE                         R30 K54 [{"CopyButton"}]
      176 GETUPVAL                         R31 4
      177 GETUPVAL                         R32 6
      178 DUPTABLE                         R33 K56 [{"icon", "tag", "iconTag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      179 GETUPVAL                         R35 9
      180 GETTABLE                         R34 R35 R2
      181 SETTABLEKS                       R34 R33 K33 ["icon"]
      183 LOADK                            R34 K57 ["size-600-600 radius-small align-x-center align-y-center"]
      184 SETTABLEKS                       R34 R33 K17 ["tag"]
      186 LOADK                            R34 K58 ["size-300-300 content-emphasis"]
      187 SETTABLEKS                       R34 R33 K34 ["iconTag"]
      189 JUMPIFEQKNIL                     R12 ; [+2]
      191 LOADB                            R34 0 +1
      192 LOADB                            R34 1
      193 SETTABLEKS                       R34 R33 K55 ["isDisabled"]
      195 SETTABLEKS                       R13 R33 K25 ["onActivated"]
      197 MOVE                             R34 R14
      198 CALL                             R34 0 1
      199 SETTABLEKS                       R34 R33 K18 ["LayoutOrder"]
      201 GETTABLEKS                       R34 R0 K59 ["copyButtonTestId"]
      203 SETTABLEKS                       R34 R33 K41 ["testId"]
      205 CALL                             R31 2 1
      206 SETTABLEKS                       R31 R30 K53 ["CopyButton"]
      208 CALL                             R27 3 1
      209 SETTABLEKS                       R27 R26 K50 ["Anchor"]
      211 GETUPVAL                         R27 4
      212 GETUPVAL                         R29 8
      213 GETTABLEKS                       R28 R29 K8 ["Content"]
      215 DUPTABLE                         R29 K66 [{"hasArrow", "align", "side", "radius", "backgroundStyle", "selectionGroup"}]
      216 LOADB                            R30 0
      217 SETTABLEKS                       R30 R29 K60 ["hasArrow"]
      219 GETUPVAL                         R33 0
      220 GETTABLEKS                       R32 R33 K67 ["Enums"]
      222 GETTABLEKS                       R31 R32 K68 ["PopoverAlign"]
      224 GETTABLEKS                       R30 R31 K69 ["Center"]
      226 SETTABLEKS                       R30 R29 K61 ["align"]
      228 DUPTABLE                         R30 K72 [{"position", "offset"}]
      229 GETUPVAL                         R34 0
      230 GETTABLEKS                       R33 R34 K67 ["Enums"]
      232 GETTABLEKS                       R32 R33 K73 ["PopoverSide"]
      234 GETTABLEKS                       R31 R32 K74 ["Top"]
      236 SETTABLEKS                       R31 R30 K70 ["position"]
      238 GETTABLEKS                       R32 R1 K75 ["Size"]
      240 GETTABLEKS                       R31 R32 K76 ["Size_100"]
      242 SETTABLEKS                       R31 R30 K71 ["offset"]
      244 SETTABLEKS                       R30 R29 K62 ["side"]
      246 GETUPVAL                         R33 0
      247 GETTABLEKS                       R32 R33 K67 ["Enums"]
      249 GETTABLEKS                       R31 R32 K77 ["Radius"]
      251 GETTABLEKS                       R30 R31 K78 ["Small"]
      253 SETTABLEKS                       R30 R29 K63 ["radius"]
      255 GETTABLEKS                       R32 R1 K79 ["Inverse"]
      257 GETTABLEKS                       R31 R32 K80 ["Surface"]
      259 GETTABLEKS                       R30 R31 K81 ["Surface_0"]
      261 SETTABLEKS                       R30 R29 K64 ["backgroundStyle"]
      263 LOADB                            R30 0
      264 SETTABLEKS                       R30 R29 K65 ["selectionGroup"]
      266 DUPTABLE                         R30 K83 [{"TooltipBody"}]
      267 GETUPVAL                         R31 4
      268 GETUPVAL                         R32 5
      269 DUPTABLE                         R33 K84 [{"tag"}]
      270 LOADK                            R34 K85 ["auto-xy padding-y-xsmall padding-x-small"]
      271 SETTABLEKS                       R34 R33 K17 ["tag"]
      273 DUPTABLE                         R34 K87 [{"Title"}]
      274 GETUPVAL                         R35 4
      275 GETUPVAL                         R36 7
      276 DUPTABLE                         R37 K88 [{"Text", "tag"}]
      277 GETTABLEKS                       R38 R0 K89 ["copiedText"]
      279 SETTABLEKS                       R38 R37 K40 ["Text"]
      281 LOADK                            R38 K90 ["auto-xy text-title-small content-inverse-emphasis"]
      282 SETTABLEKS                       R38 R37 K17 ["tag"]
      284 CALL                             R35 2 1
      285 SETTABLEKS                       R35 R34 K86 ["Title"]
      287 CALL                             R31 3 1
      288 SETTABLEKS                       R31 R30 K82 ["TooltipBody"]
      290 CALL                             R27 3 1
      291 SETTABLEKS                       R27 R26 K8 ["Content"]
      293 CALL                             R23 3 1
      294 SETTABLEKS                       R23 R22 K31 ["CopyButtonPopover"]
      296 CALL                             R19 3 1
      297 SETTABLEKS                       R19 R18 K21 ["Header"]
      299 JUMPIFNOT                        R6 ; [+9]
      300 GETUPVAL                         R19 4
      301 GETUPVAL                         R20 10
      302 DUPTABLE                         R21 K52 [{"LayoutOrder"}]
      303 MOVE                             R22 R14
      304 CALL                             R22 0 1
      305 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      307 CALL                             R19 2 1
      308 JUMP                             ; [+1]
      309 LOADNIL                          R19
      310 SETTABLEKS                       R19 R18 K22 ["HeaderDivider"]
      312 JUMPIFNOT                        R6 ; [+109]
      313 GETUPVAL                         R19 4
      314 GETUPVAL                         R20 11
      315 DUPTABLE                         R21 K92 [{"tag", "LayoutOrder", "scroll"}]
      316 LOADK                            R22 K93 ["size-full-0 auto-y"]
      317 SETTABLEKS                       R22 R21 K17 ["tag"]
      319 MOVE                             R22 R14
      320 CALL                             R22 0 1
      321 SETTABLEKS                       R22 R21 K18 ["LayoutOrder"]
      323 GETUPVAL                         R22 12
      324 SETTABLEKS                       R22 R21 K91 ["scroll"]
      326 DUPTABLE                         R22 K95 [{"Code"}]
      327 GETUPVAL                         R23 4
      328 LOADK                            R24 K96 ["TextBox"]
      329 DUPTABLE                         R25 K109 [{"Text", "AutomaticSize", "FontFace", "TextSize", "LineHeight", "TextColor3", "TextTransparency", "TextXAlignment", "MultiLine", "BackgroundTransparency", "BorderSizePixel", "ClearTextOnFocus", "TextEditable"}]
      330 GETTABLEKS                       R27 R0 K15 ["data"]
      332 GETTABLEKS                       R26 R27 K110 ["text"]
      334 SETTABLEKS                       R26 R25 K40 ["Text"]
      336 GETIMPORT                        R26 K113 [Enum.AutomaticSize.XY]
      338 SETTABLEKS                       R26 R25 K97 ["AutomaticSize"]
      340 GETUPVAL                         R27 13
      341 GETTABLEKS                       R26 R27 K114 ["CODE_FONT"]
      343 SETTABLEKS                       R26 R25 K98 ["FontFace"]
      345 GETTABLEKS                       R27 R1 K115 ["FontSize"]
      347 GETTABLEKS                       R26 R27 K116 ["FontSize_300"]
      349 SETTABLEKS                       R26 R25 K99 ["TextSize"]
      351 GETTABLEKS                       R26 R3 K100 ["LineHeight"]
      353 SETTABLEKS                       R26 R25 K100 ["LineHeight"]
      355 GETTABLEKS                       R26 R4 K117 ["Color3"]
      357 SETTABLEKS                       R26 R25 K101 ["TextColor3"]
      359 GETTABLEKS                       R26 R4 K118 ["Transparency"]
      361 SETTABLEKS                       R26 R25 K102 ["TextTransparency"]
      363 GETIMPORT                        R26 K120 [Enum.TextXAlignment.Left]
      365 SETTABLEKS                       R26 R25 K103 ["TextXAlignment"]
      367 LOADB                            R26 1
      368 SETTABLEKS                       R26 R25 K104 ["MultiLine"]
      370 LOADN                            R26 1
      371 SETTABLEKS                       R26 R25 K105 ["BackgroundTransparency"]
      373 LOADN                            R26 0
      374 SETTABLEKS                       R26 R25 K106 ["BorderSizePixel"]
      376 LOADB                            R26 0
      377 SETTABLEKS                       R26 R25 K107 ["ClearTextOnFocus"]
      379 LOADB                            R26 0
      380 SETTABLEKS                       R26 R25 K108 ["TextEditable"]
      382 DUPTABLE                         R26 K122 [{"Padding"}]
      383 GETUPVAL                         R27 4
      384 LOADK                            R28 K123 ["UIPadding"]
      385 DUPTABLE                         R29 K128 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      386 GETIMPORT                        R30 K131 [UDim.new]
      388 LOADN                            R31 0
      389 LOADN                            R32 12
      390 CALL                             R30 2 1
      391 SETTABLEKS                       R30 R29 K124 ["PaddingLeft"]
      393 GETIMPORT                        R30 K131 [UDim.new]
      395 LOADN                            R31 0
      396 LOADN                            R32 12
      397 CALL                             R30 2 1
      398 SETTABLEKS                       R30 R29 K125 ["PaddingRight"]
      400 GETIMPORT                        R30 K131 [UDim.new]
      402 LOADN                            R31 0
      403 LOADN                            R32 12
      404 CALL                             R30 2 1
      405 SETTABLEKS                       R30 R29 K126 ["PaddingTop"]
      407 GETIMPORT                        R30 K131 [UDim.new]
      409 LOADN                            R31 0
      410 LOADN                            R32 12
      411 CALL                             R30 2 1
      412 SETTABLEKS                       R30 R29 K127 ["PaddingBottom"]
      414 CALL                             R27 2 1
      415 SETTABLEKS                       R27 R26 K121 ["Padding"]
      417 CALL                             R23 3 1
      418 SETTABLEKS                       R23 R22 K94 ["Code"]
      420 CALL                             R19 3 1
      421 JUMP                             ; [+1]
      422 LOADNIL                          R19
      423 SETTABLEKS                       R19 R18 K23 ["CodeScrollView"]
      425 CALL                             R15 3 -1
      426 RETURN                           R15 -1

PROTO_11:
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
       77 DUPTABLE                         R6 K15 [{"linkStart", "linkEnd"}]
       78 LOADK                            R7 K16 ["\x<LS>\x"]
       79 SETTABLEKS                       R7 R6 K13 ["linkStart"]
       81 LOADK                            R7 K17 ["\x<LE>\x"]
       82 SETTABLEKS                       R7 R6 K14 ["linkEnd"]
       84 NAMECALL                         R2 R2 K12 ["getText"]
       86 CALL                             R2 4 -1
       87 CALL                             R1 -1 1
       88 SETTABLEKS                       R1 R0 K9 ["LearnMore"]
       90 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setupInstructions"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["error"]
        8 JUMPIFNOT                        R1 ; [+2]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K2 ["json"]
       14 GETTABLEKS                       R1 R2 K3 ["encodeAsync"]
       16 MOVE                             R2 R0
       17 LOADB                            R3 1
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_18:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["start"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["stop"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["setupInstructions"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R4 3
        6 GETTABLEKS                       R3 R4 K1 ["Loading"]
        8 CALL                             R0 3 1
        9 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["http"]
        3 GETTABLEKS                       R0 R1 K1 ["openUrl"]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["useMemo"]
        9 DUPCLOSURE                       R5 K1 [PROTO_11]
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 NEWTABLE                         R6 0 1
       14 GETUPVAL                         R8 4
       15 GETTABLEKS                       R7 R8 K2 ["locale"]
       17 SETLIST                          R6 R7 1 [1]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R5 R6 K3 ["useState"]
       23 DUPTABLE                         R6 K5 [{"expanded"}]
       24 LOADB                            R7 0
       25 SETTABLEKS                       R7 R6 K4 ["expanded"]
       27 CALL                             R5 1 2
       28 GETUPVAL                         R8 6
       29 GETTABLEKS                       R7 R8 K6 ["get"]
       31 CALL                             R7 0 1
       32 GETTABLEKS                       R9 R2 K7 ["state"]
       34 JUMPIFNOTEQKS                    R9 K8 ["disconnected"] ; [+2]
       36 LOADB                            R8 0 +1
       37 LOADB                            R8 1
       38 GETTABLEKS                       R9 R2 K9 ["isBusy"]
       40 JUMPIF                           R9 ; [+2]
       41 GETTABLEKS                       R9 R3 K10 ["isProcessing"]
       43 GETUPVAL                         R11 3
       44 GETTABLEKS                       R10 R11 K3 ["useState"]
       46 LOADN                            R11 0
       47 CALL                             R10 1 2
       48 GETTABLEKS                       R12 R2 K11 ["connectionCountObservable"]
       50 GETUPVAL                         R14 3
       51 GETTABLEKS                       R13 R14 K12 ["useEffect"]
       53 NEWCLOSURE                       R14 P1
       54 CAPTURE                          VAL R12
       55 CAPTURE                          VAL R11
       56 NEWTABLE                         R15 0 1
       58 MOVE                             R16 R12
       59 SETLIST                          R15 R16 1 [1]
       61 CALL                             R13 2 0
       62 LOADN                            R14 0
       63 JUMPIFNOTLT                      R14 R10 ; [+3]
       65 LOADK                            R13 K13 ["content-system-success"]
       66 JUMP                             ; [+1]
       67 LOADK                            R13 K14 ["content-system-neutral"]
       68 JUMPIFNOTEQKN                    R10 K15 [0] ; [+4]
       70 GETTABLEKS                       R14 R4 K16 ["NoClientsConnected"]
       72 JUMP                             ; [+23]
       73 JUMPIFNOTEQKN                    R10 K17 [1] ; [+8]
       75 GETUPVAL                         R14 4
       76 LOADK                            R16 K18 ["McpSetup"]
       77 LOADK                            R17 K19 ["ClientConnected"]
       78 NAMECALL                         R14 R14 K20 ["getText"]
       80 CALL                             R14 3 1
       81 JUMP                             ; [+14]
       82 GETUPVAL                         R14 4
       83 LOADK                            R16 K18 ["McpSetup"]
       84 LOADK                            R17 K21 ["ClientsConnected"]
       85 DUPTABLE                         R18 K23 [{"count"}]
       86 FASTCALL1                        TOSTRING R10 ; [+3]
       87 MOVE                             R20 R10
       88 GETIMPORT                        R19 K25 [tostring]
       90 CALL                             R19 1 1
       91 SETTABLEKS                       R19 R18 K22 ["count"]
       93 NAMECALL                         R14 R14 K20 ["getText"]
       95 CALL                             R14 4 1
       96 GETUPVAL                         R16 3
       97 GETTABLEKS                       R15 R16 K26 ["useCallback"]
       99 NEWCLOSURE                       R16 P2
      100 CAPTURE                          VAL R6
      101 NEWTABLE                         R17 0 0
      103 CALL                             R15 2 1
      104 GETUPVAL                         R17 7
      105 GETTABLEKS                       R16 R17 K27 ["useAsync"]
      107 NEWCLOSURE                       R17 P3
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R7
      110 NEWTABLE                         R18 0 1
      112 GETTABLEKS                       R19 R2 K28 ["setupInstructions"]
      114 SETLIST                          R18 R19 1 [1]
      116 CALL                             R16 2 1
      117 GETUPVAL                         R18 3
      118 GETTABLEKS                       R17 R18 K26 ["useCallback"]
      120 NEWCLOSURE                       R18 P4
      121 CAPTURE                          VAL R2
      122 NEWTABLE                         R19 0 2
      124 GETTABLEKS                       R20 R2 K29 ["start"]
      126 GETTABLEKS                       R21 R2 K30 ["stop"]
      128 SETLIST                          R19 R20 2 [1]
      130 CALL                             R17 2 1
      131 GETUPVAL                         R19 3
      132 GETTABLEKS                       R18 R19 K0 ["useMemo"]
      134 NEWCLOSURE                       R19 P5
      135 CAPTURE                          UPVAL U8
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R4
      139 NEWTABLE                         R20 0 3
      141 GETTABLEKS                       R21 R2 K28 ["setupInstructions"]
      143 MOVE                             R22 R16
      144 GETTABLEKS                       R23 R4 K31 ["Loading"]
      146 SETLIST                          R20 R21 3 [1]
      148 CALL                             R18 2 1
      149 GETUPVAL                         R20 3
      150 GETTABLEKS                       R19 R20 K26 ["useCallback"]
      152 NEWCLOSURE                       R20 P6
      153 CAPTURE                          VAL R7
      154 CAPTURE                          UPVAL U9
      155 NEWTABLE                         R21 0 1
      157 GETTABLEKS                       R22 R7 K32 ["http"]
      159 SETLIST                          R21 R22 1 [1]
      161 CALL                             R19 2 1
      162 GETUPVAL                         R20 10
      163 GETUPVAL                         R21 11
      164 DUPTABLE                         R22 K35 [{"LayoutOrder", "tag"}]
      165 GETTABLEKS                       R23 R0 K33 ["LayoutOrder"]
      167 SETTABLEKS                       R23 R22 K33 ["LayoutOrder"]
      169 LOADK                            R23 K36 ["col size-full-0 auto-y gap-small padding-x-large padding-y-xsmall radius-medium bg-surface-100"]
      170 SETTABLEKS                       R23 R22 K34 ["tag"]
      172 DUPTABLE                         R23 K41 [{"Disclaimer", "TitleGroup", "InstructionsAccordion", "LearnMore"}]
      173 GETUPVAL                         R24 10
      174 GETUPVAL                         R25 11
      175 DUPTABLE                         R26 K42 [{"tag", "LayoutOrder"}]
      176 LOADK                            R27 K43 ["row size-full-0 auto-y padding-xsmall gap-small align-y-center radius-small stroke-standard stroke-muted"]
      177 SETTABLEKS                       R27 R26 K34 ["tag"]
      179 MOVE                             R27 R1
      180 CALL                             R27 0 1
      181 SETTABLEKS                       R27 R26 K33 ["LayoutOrder"]
      183 DUPTABLE                         R27 K46 [{"Icon", "Text"}]
      184 GETUPVAL                         R28 10
      185 GETUPVAL                         R29 12
      186 DUPTABLE                         R30 K48 [{"tag", "Image", "LayoutOrder"}]
      187 LOADK                            R31 K49 ["size-500-500 content-emphasis"]
      188 SETTABLEKS                       R31 R30 K34 ["tag"]
      190 LOADK                            R31 K50 ["icons/actions/info"]
      191 SETTABLEKS                       R31 R30 K47 ["Image"]
      193 MOVE                             R31 R1
      194 CALL                             R31 0 1
      195 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      197 CALL                             R28 2 1
      198 SETTABLEKS                       R28 R27 K44 ["Icon"]
      200 GETUPVAL                         R28 10
      201 GETUPVAL                         R29 13
      202 DUPTABLE                         R30 K51 [{"tag", "Text", "LayoutOrder"}]
      203 LOADK                            R31 K52 ["auto-xy shrink text-caption-small text-wrap text-align-x-left content-muted"]
      204 SETTABLEKS                       R31 R30 K34 ["tag"]
      206 GETTABLEKS                       R31 R4 K37 ["Disclaimer"]
      208 SETTABLEKS                       R31 R30 K45 ["Text"]
      210 MOVE                             R31 R1
      211 CALL                             R31 0 1
      212 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      214 CALL                             R28 2 1
      215 SETTABLEKS                       R28 R27 K45 ["Text"]
      217 CALL                             R24 3 1
      218 SETTABLEKS                       R24 R23 K37 ["Disclaimer"]
      220 GETUPVAL                         R24 10
      221 GETUPVAL                         R25 11
      222 DUPTABLE                         R26 K42 [{"tag", "LayoutOrder"}]
      223 LOADK                            R27 K53 ["col size-full-0 auto-y gap-xxsmall"]
      224 SETTABLEKS                       R27 R26 K34 ["tag"]
      226 MOVE                             R27 R1
      227 CALL                             R27 0 1
      228 SETTABLEKS                       R27 R26 K33 ["LayoutOrder"]
      230 DUPTABLE                         R27 K56 [{"TitleRow", "ConnectionIndicator"}]
      231 GETUPVAL                         R28 10
      232 GETUPVAL                         R29 11
      233 DUPTABLE                         R30 K42 [{"tag", "LayoutOrder"}]
      234 LOADK                            R31 K57 ["row size-full-0 auto-y align-y-center"]
      235 SETTABLEKS                       R31 R30 K34 ["tag"]
      237 MOVE                             R31 R1
      238 CALL                             R31 0 1
      239 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      241 DUPTABLE                         R31 K61 [{"Title", "Spacer", "Toggle"}]
      242 GETUPVAL                         R32 10
      243 GETUPVAL                         R33 13
      244 DUPTABLE                         R34 K51 [{"tag", "Text", "LayoutOrder"}]
      245 LOADK                            R35 K62 ["auto-xy text-title-medium bold text-align-x-left"]
      246 SETTABLEKS                       R35 R34 K34 ["tag"]
      248 GETTABLEKS                       R35 R4 K58 ["Title"]
      250 SETTABLEKS                       R35 R34 K45 ["Text"]
      252 MOVE                             R35 R1
      253 CALL                             R35 0 1
      254 SETTABLEKS                       R35 R34 K33 ["LayoutOrder"]
      256 CALL                             R32 2 1
      257 SETTABLEKS                       R32 R31 K58 ["Title"]
      259 GETUPVAL                         R32 10
      260 GETUPVAL                         R33 11
      261 DUPTABLE                         R34 K42 [{"tag", "LayoutOrder"}]
      262 LOADK                            R35 K63 ["fill"]
      263 SETTABLEKS                       R35 R34 K34 ["tag"]
      265 MOVE                             R35 R1
      266 CALL                             R35 0 1
      267 SETTABLEKS                       R35 R34 K33 ["LayoutOrder"]
      269 CALL                             R32 2 1
      270 SETTABLEKS                       R32 R31 K59 ["Spacer"]
      272 GETUPVAL                         R32 10
      273 GETUPVAL                         R33 14
      274 DUPTABLE                         R34 K70 [{"testId", "label", "isChecked", "isDisabled", "onActivated", "size", "LayoutOrder"}]
      275 GETUPVAL                         R37 15
      276 GETTABLEKS                       R36 R37 K18 ["McpSetup"]
      278 GETTABLEKS                       R35 R36 K60 ["Toggle"]
      280 SETTABLEKS                       R35 R34 K64 ["testId"]
      282 LOADK                            R35 K71 [""]
      283 SETTABLEKS                       R35 R34 K65 ["label"]
      285 SETTABLEKS                       R8 R34 K66 ["isChecked"]
      287 SETTABLEKS                       R9 R34 K67 ["isDisabled"]
      289 SETTABLEKS                       R17 R34 K68 ["onActivated"]
      291 GETUPVAL                         R36 16
      292 GETTABLEKS                       R35 R36 K72 ["Small"]
      294 SETTABLEKS                       R35 R34 K69 ["size"]
      296 MOVE                             R35 R1
      297 CALL                             R35 0 1
      298 SETTABLEKS                       R35 R34 K33 ["LayoutOrder"]
      300 CALL                             R32 2 1
      301 SETTABLEKS                       R32 R31 K60 ["Toggle"]
      303 CALL                             R28 3 1
      304 SETTABLEKS                       R28 R27 K54 ["TitleRow"]
      306 GETUPVAL                         R29 17
      307 CALL                             R29 0 1
      308 JUMPIF                           R29 ; [+53]
      309 GETUPVAL                         R28 10
      310 GETUPVAL                         R29 11
      311 DUPTABLE                         R30 K42 [{"tag", "LayoutOrder"}]
      312 LOADK                            R31 K73 ["row auto-xy align-y-center"]
      313 SETTABLEKS                       R31 R30 K34 ["tag"]
      315 MOVE                             R31 R1
      316 CALL                             R31 0 1
      317 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      319 DUPTABLE                         R31 K75 [{"Icon", "StatusText"}]
      320 GETUPVAL                         R32 10
      321 GETUPVAL                         R33 18
      322 DUPTABLE                         R34 K78 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      323 LOADK                            R35 K79 ["component_assets/circle_16"]
      324 SETTABLEKS                       R35 R34 K76 ["icon"]
      326 LOADK                            R35 K80 ["size-400-400 align-x-center align-y-center"]
      327 SETTABLEKS                       R35 R34 K34 ["tag"]
      329 NEWTABLE                         R35 2 0
      331 LOADB                            R36 1
      332 SETTABLEKS                       R36 R35 K81 ["size-200-200"]
      334 LOADB                            R36 1
      335 SETTABLE                         R36 R35 R13
      336 SETTABLEKS                       R35 R34 K77 ["iconTag"]
      338 MOVE                             R35 R1
      339 CALL                             R35 0 1
      340 SETTABLEKS                       R35 R34 K33 ["LayoutOrder"]
      342 CALL                             R32 2 1
      343 SETTABLEKS                       R32 R31 K44 ["Icon"]
      345 GETUPVAL                         R32 10
      346 GETUPVAL                         R33 13
      347 DUPTABLE                         R34 K51 [{"tag", "Text", "LayoutOrder"}]
      348 LOADK                            R35 K82 ["auto-xy text-caption-small text-no-wrap text-align-x-left"]
      349 SETTABLEKS                       R35 R34 K34 ["tag"]
      351 SETTABLEKS                       R14 R34 K45 ["Text"]
      353 MOVE                             R35 R1
      354 CALL                             R35 0 1
      355 SETTABLEKS                       R35 R34 K33 ["LayoutOrder"]
      357 CALL                             R32 2 1
      358 SETTABLEKS                       R32 R31 K74 ["StatusText"]
      360 CALL                             R28 3 1
      361 JUMP                             ; [+1]
      362 LOADNIL                          R28
      363 SETTABLEKS                       R28 R27 K55 ["ConnectionIndicator"]
      365 CALL                             R24 3 1
      366 SETTABLEKS                       R24 R23 K38 ["TitleGroup"]
      368 GETUPVAL                         R24 10
      369 GETUPVAL                         R25 11
      370 DUPTABLE                         R26 K35 [{"LayoutOrder", "tag"}]
      371 MOVE                             R27 R1
      372 CALL                             R27 0 1
      373 SETTABLEKS                       R27 R26 K33 ["LayoutOrder"]
      375 LOADK                            R27 K83 ["size-full-0 auto-y"]
      376 SETTABLEKS                       R27 R26 K34 ["tag"]
      378 DUPTABLE                         R27 K85 [{"Accordion"}]
      379 GETUPVAL                         R28 10
      380 GETUPVAL                         R30 19
      381 GETTABLEKS                       R29 R30 K86 ["Root"]
      383 DUPTABLE                         R30 K89 [{"expanded", "contentId", "editThisContent"}]
      384 GETTABLEKS                       R31 R5 K4 ["expanded"]
      386 SETTABLEKS                       R31 R30 K4 ["expanded"]
      388 LOADK                            R31 K90 ["studio_mcp_instructions"]
      389 SETTABLEKS                       R31 R30 K87 ["contentId"]
      391 SETTABLEKS                       R15 R30 K88 ["editThisContent"]
      393 DUPTABLE                         R31 K93 [{"Header", "Content"}]
      394 GETUPVAL                         R32 10
      395 GETUPVAL                         R34 19
      396 GETTABLEKS                       R33 R34 K91 ["Header"]
      398 DUPTABLE                         R34 K97 [{"LayoutOrder", "AutomaticHeight", "IconSize", "VerticalAlignment"}]
      399 MOVE                             R35 R1
      400 CALL                             R35 0 1
      401 SETTABLEKS                       R35 R34 K33 ["LayoutOrder"]
      403 LOADB                            R35 1
      404 SETTABLEKS                       R35 R34 K94 ["AutomaticHeight"]
      406 LOADK                            R35 K98 ["medium"]
      407 SETTABLEKS                       R35 R34 K95 ["IconSize"]
      409 LOADK                            R35 K99 ["center"]
      410 SETTABLEKS                       R35 R34 K96 ["VerticalAlignment"]
      412 DUPTABLE                         R35 K100 [{"Title"}]
      413 GETUPVAL                         R36 10
      414 GETUPVAL                         R37 13
      415 DUPTABLE                         R38 K51 [{"tag", "Text", "LayoutOrder"}]
      416 LOADK                            R39 K101 ["auto-xy text-title-small bold text-align-x-left"]
      417 SETTABLEKS                       R39 R38 K34 ["tag"]
      419 GETTABLEKS                       R39 R4 K102 ["InstructionsHeader"]
      421 SETTABLEKS                       R39 R38 K45 ["Text"]
      423 MOVE                             R39 R1
      424 CALL                             R39 0 1
      425 SETTABLEKS                       R39 R38 K33 ["LayoutOrder"]
      427 CALL                             R36 2 1
      428 SETTABLEKS                       R36 R35 K58 ["Title"]
      430 CALL                             R32 3 1
      431 SETTABLEKS                       R32 R31 K91 ["Header"]
      433 GETUPVAL                         R32 10
      434 GETUPVAL                         R34 19
      435 GETTABLEKS                       R33 R34 K92 ["Content"]
      437 DUPTABLE                         R34 K105 [{"tag", "LayoutOrder", "UseVisible", "disableVerticalBar"}]
      438 LOADK                            R35 K106 ["col size-full-0 auto-y gap-small"]
      439 SETTABLEKS                       R35 R34 K34 ["tag"]
      441 MOVE                             R35 R1
      442 CALL                             R35 0 1
      443 SETTABLEKS                       R35 R34 K33 ["LayoutOrder"]
      445 LOADB                            R35 1
      446 SETTABLEKS                       R35 R34 K103 ["UseVisible"]
      448 LOADB                            R35 1
      449 SETTABLEKS                       R35 R34 K104 ["disableVerticalBar"]
      451 DUPTABLE                         R35 K110 [{"Instruction", "JsonConfigBlock", "StartupCommandBlock"}]
      452 GETUPVAL                         R36 10
      453 GETUPVAL                         R37 13
      454 DUPTABLE                         R38 K51 [{"tag", "Text", "LayoutOrder"}]
      455 LOADK                            R39 K111 ["auto-xy text-body-small text-wrap text-align-x-left"]
      456 SETTABLEKS                       R39 R38 K34 ["tag"]
      458 GETTABLEKS                       R39 R4 K112 ["InstructionsBody"]
      460 SETTABLEKS                       R39 R38 K45 ["Text"]
      462 MOVE                             R39 R1
      463 CALL                             R39 0 1
      464 SETTABLEKS                       R39 R38 K33 ["LayoutOrder"]
      466 CALL                             R36 2 1
      467 SETTABLEKS                       R36 R35 K107 ["Instruction"]
      469 GETUPVAL                         R36 10
      470 GETUPVAL                         R37 20
      471 DUPTABLE                         R38 K117 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      472 GETTABLEKS                       R39 R4 K118 ["JsonConfigLabel"]
      474 SETTABLEKS                       R39 R38 K65 ["label"]
      476 GETUPVAL                         R41 15
      477 GETTABLEKS                       R40 R41 K18 ["McpSetup"]
      479 GETTABLEKS                       R39 R40 K118 ["JsonConfigLabel"]
      481 SETTABLEKS                       R39 R38 K113 ["labelTestId"]
      483 GETTABLEKS                       R39 R18 K119 ["json"]
      485 SETTABLEKS                       R39 R38 K114 ["data"]
      487 GETTABLEKS                       R39 R4 K120 ["Copied"]
      489 SETTABLEKS                       R39 R38 K115 ["copiedText"]
      491 GETUPVAL                         R41 15
      492 GETTABLEKS                       R40 R41 K18 ["McpSetup"]
      494 GETTABLEKS                       R39 R40 K121 ["JsonConfigCopy"]
      496 SETTABLEKS                       R39 R38 K116 ["copyButtonTestId"]
      498 MOVE                             R39 R1
      499 CALL                             R39 0 1
      500 SETTABLEKS                       R39 R38 K33 ["LayoutOrder"]
      502 CALL                             R36 2 1
      503 SETTABLEKS                       R36 R35 K108 ["JsonConfigBlock"]
      505 GETUPVAL                         R36 10
      506 GETUPVAL                         R37 20
      507 DUPTABLE                         R38 K117 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      508 GETTABLEKS                       R39 R4 K122 ["StartupCommandLabel"]
      510 SETTABLEKS                       R39 R38 K65 ["label"]
      512 GETUPVAL                         R41 15
      513 GETTABLEKS                       R40 R41 K18 ["McpSetup"]
      515 GETTABLEKS                       R39 R40 K122 ["StartupCommandLabel"]
      517 SETTABLEKS                       R39 R38 K113 ["labelTestId"]
      519 GETTABLEKS                       R39 R18 K123 ["startup"]
      521 SETTABLEKS                       R39 R38 K114 ["data"]
      523 GETTABLEKS                       R39 R4 K120 ["Copied"]
      525 SETTABLEKS                       R39 R38 K115 ["copiedText"]
      527 GETUPVAL                         R41 15
      528 GETTABLEKS                       R40 R41 K18 ["McpSetup"]
      530 GETTABLEKS                       R39 R40 K124 ["StartupCommandCopy"]
      532 SETTABLEKS                       R39 R38 K116 ["copyButtonTestId"]
      534 MOVE                             R39 R1
      535 CALL                             R39 0 1
      536 SETTABLEKS                       R39 R38 K33 ["LayoutOrder"]
      538 CALL                             R36 2 1
      539 SETTABLEKS                       R36 R35 K109 ["StartupCommandBlock"]
      541 CALL                             R32 3 1
      542 SETTABLEKS                       R32 R31 K92 ["Content"]
      544 CALL                             R28 3 1
      545 SETTABLEKS                       R28 R27 K84 ["Accordion"]
      547 CALL                             R24 3 1
      548 SETTABLEKS                       R24 R23 K39 ["InstructionsAccordion"]
      550 GETUPVAL                         R24 10
      551 GETUPVAL                         R25 11
      552 DUPTABLE                         R26 K42 [{"tag", "LayoutOrder"}]
      553 LOADK                            R27 K125 ["row size-full-0 auto-y padding-xsmall align-y-center"]
      554 SETTABLEKS                       R27 R26 K34 ["tag"]
      556 MOVE                             R27 R1
      557 CALL                             R27 0 1
      558 SETTABLEKS                       R27 R26 K33 ["LayoutOrder"]
      560 DUPTABLE                         R27 K129 [{"Before", "Link", "After"}]
      561 GETTABLEKS                       R31 R4 K40 ["LearnMore"]
      563 GETTABLEKS                       R30 R31 K130 ["before"]
      565 LENGTH                           R29 R30
      566 LOADN                            R30 0
      567 JUMPIFNOTLT                      R30 R29 ; [+19]
      569 GETUPVAL                         R28 10
      570 GETUPVAL                         R29 13
      571 DUPTABLE                         R30 K51 [{"tag", "Text", "LayoutOrder"}]
      572 LOADK                            R31 K131 ["auto-xy text-body-small text-wrap text-align-x-left content-default"]
      573 SETTABLEKS                       R31 R30 K34 ["tag"]
      575 GETTABLEKS                       R32 R4 K40 ["LearnMore"]
      577 GETTABLEKS                       R31 R32 K130 ["before"]
      579 SETTABLEKS                       R31 R30 K45 ["Text"]
      581 MOVE                             R31 R1
      582 CALL                             R31 0 1
      583 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      585 CALL                             R28 2 1
      586 JUMP                             ; [+1]
      587 LOADNIL                          R28
      588 SETTABLEKS                       R28 R27 K126 ["Before"]
      590 GETTABLEKS                       R31 R4 K40 ["LearnMore"]
      592 GETTABLEKS                       R30 R31 K132 ["link"]
      594 LENGTH                           R29 R30
      595 LOADN                            R30 0
      596 JUMPIFNOTLT                      R30 R29 ; [+21]
      598 GETUPVAL                         R28 10
      599 GETUPVAL                         R29 13
      600 DUPTABLE                         R30 K133 [{"tag", "Text", "onActivated", "LayoutOrder"}]
      601 LOADK                            R31 K134 ["auto-xy text-body-small text-wrap text-align-x-left content-link text-underline"]
      602 SETTABLEKS                       R31 R30 K34 ["tag"]
      604 GETTABLEKS                       R32 R4 K40 ["LearnMore"]
      606 GETTABLEKS                       R31 R32 K132 ["link"]
      608 SETTABLEKS                       R31 R30 K45 ["Text"]
      610 SETTABLEKS                       R19 R30 K68 ["onActivated"]
      612 MOVE                             R31 R1
      613 CALL                             R31 0 1
      614 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      616 CALL                             R28 2 1
      617 JUMP                             ; [+1]
      618 LOADNIL                          R28
      619 SETTABLEKS                       R28 R27 K127 ["Link"]
      621 GETTABLEKS                       R31 R4 K40 ["LearnMore"]
      623 GETTABLEKS                       R30 R31 K135 ["after"]
      625 LENGTH                           R29 R30
      626 LOADN                            R30 0
      627 JUMPIFNOTLT                      R30 R29 ; [+19]
      629 GETUPVAL                         R28 10
      630 GETUPVAL                         R29 13
      631 DUPTABLE                         R30 K51 [{"tag", "Text", "LayoutOrder"}]
      632 LOADK                            R31 K131 ["auto-xy text-body-small text-wrap text-align-x-left content-default"]
      633 SETTABLEKS                       R31 R30 K34 ["tag"]
      635 GETTABLEKS                       R32 R4 K40 ["LearnMore"]
      637 GETTABLEKS                       R31 R32 K135 ["after"]
      639 SETTABLEKS                       R31 R30 K45 ["Text"]
      641 MOVE                             R31 R1
      642 CALL                             R31 0 1
      643 SETTABLEKS                       R31 R30 K33 ["LayoutOrder"]
      645 CALL                             R28 2 1
      646 JUMP                             ; [+1]
      647 LOADNIL                          R28
      648 SETTABLEKS                       R28 R27 K128 ["After"]
      650 CALL                             R24 3 1
      651 SETTABLEKS                       R24 R23 K40 ["LearnMore"]
      653 CALL                             R20 3 -1
      654 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R4 K8 ["CustomIconButton"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Guest"]
       25 GETTABLEKS                       R4 R5 K10 ["Environment"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K6 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K12 ["ExternalServerContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K14 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Resources"]
       48 GETTABLEKS                       R8 R9 K16 ["Localization"]
       50 GETTABLEKS                       R7 R8 K17 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K18 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K19 ["Parent"]
       62 GETTABLEKS                       R9 R10 K20 ["Foundation"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K19 ["Parent"]
       69 GETTABLEKS                       R10 R11 K21 ["React"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K19 ["Parent"]
       76 GETTABLEKS                       R11 R12 K22 ["ReactUtils"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       83 GETTABLEKS                       R12 R13 K24 ["useAsyncGuard"]
       85 CALL                             R11 1 1
       86 GETTABLEKS                       R12 R4 K25 ["useExternalServer"]
       88 GETIMPORT                        R13 K5 [require]
       90 GETTABLEKS                       R15 R0 K26 ["Flags"]
       92 GETTABLEKS                       R14 R15 K27 ["FStringMCPDocsUrl"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K5 [require]
       97 GETTABLEKS                       R16 R0 K26 ["Flags"]
       99 GETTABLEKS                       R15 R16 K28 ["FFlagDisableMCPConnectionIndicator"]
      101 CALL                             R14 1 1
      102 GETTABLEKS                       R15 R8 K29 ["Divider"]
      104 GETTABLEKS                       R16 R8 K30 ["Image"]
      106 GETTABLEKS                       R17 R8 K31 ["ScrollView"]
      108 GETTABLEKS                       R18 R8 K32 ["Text"]
      110 GETTABLEKS                       R19 R8 K33 ["Toggle"]
      112 GETTABLEKS                       R20 R8 K34 ["View"]
      114 GETTABLEKS                       R21 R8 K35 ["Popover"]
      116 GETTABLEKS                       R23 R8 K36 ["Enums"]
      118 GETTABLEKS                       R22 R23 K37 ["InputSize"]
      120 GETTABLEKS                       R24 R8 K36 ["Enums"]
      122 GETTABLEKS                       R23 R24 K38 ["Visibility"]
      124 GETTABLEKS                       R24 R10 K39 ["createNextOrder"]
      126 GETTABLEKS                       R25 R9 K40 ["createElement"]
      128 DUPTABLE                         R26 K47 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset"}]
      129 GETIMPORT                        R27 K50 [UDim2.fromOffset]
      131 LOADN                            R28 0
      132 LOADN                            R29 0
      133 CALL                             R27 2 1
      134 SETTABLEKS                       R27 R26 K41 ["CanvasSize"]
      136 GETIMPORT                        R27 K53 [Enum.AutomaticSize.Y]
      138 SETTABLEKS                       R27 R26 K42 ["AutomaticSize"]
      140 GETIMPORT                        R27 K55 [Enum.AutomaticSize.X]
      142 SETTABLEKS                       R27 R26 K43 ["AutomaticCanvasSize"]
      144 GETIMPORT                        R27 K56 [Enum.ScrollingDirection.X]
      146 SETTABLEKS                       R27 R26 K44 ["ScrollingDirection"]
      148 GETTABLEKS                       R27 R23 K57 ["Always"]
      150 SETTABLEKS                       R27 R26 K45 ["scrollBarVisibility"]
      152 GETIMPORT                        R27 K59 [Enum.ScrollBarInset.Always]
      154 SETTABLEKS                       R27 R26 K46 ["HorizontalScrollBarInset"]
      156 DUPTABLE                         R27 K62 [{"Dark", "Light"}]
      157 LOADK                            R28 K63 ["rbxasset://studio_svg_textures/Shared/Clipboard/Dark/Standard/Copy.png"]
      158 SETTABLEKS                       R28 R27 K60 ["Dark"]
      160 LOADK                            R28 K64 ["rbxasset://studio_svg_textures/Shared/Clipboard/Light/Standard/Copy.png"]
      161 SETTABLEKS                       R28 R27 K61 ["Light"]
      163 DUPCLOSURE                       R28 K65 [PROTO_0]
      164 DUPCLOSURE                       R29 K66 [PROTO_1]
      165 DUPCLOSURE                       R30 K67 [PROTO_2]
      166 DUPCLOSURE                       R31 K68 [PROTO_3]
      167 CAPTURE                          VAL R29
      168 DUPCLOSURE                       R32 K69 [PROTO_10]
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R24
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R21
      178 CAPTURE                          VAL R27
      179 CAPTURE                          VAL R15
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R26
      182 CAPTURE                          VAL R7
      183 DUPCLOSURE                       R33 K70 [PROTO_21]
      184 CAPTURE                          VAL R24
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R9
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R28
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R10
      192 CAPTURE                          VAL R31
      193 CAPTURE                          VAL R13
      194 CAPTURE                          VAL R25
      195 CAPTURE                          VAL R20
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R32
      205 GETTABLEKS                       R34 R9 K71 ["memo"]
      207 MOVE                             R35 R33
      208 CALL                             R34 1 -1
      209 RETURN                           R34 -1
