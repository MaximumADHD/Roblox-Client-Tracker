PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["total"]
        3 LOADN                            R1 0
        4 JUMPIFNOTLE                      R0 R1 ; [+3]
        6 LOADN                            R0 0
        7 RETURN                           R0 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["completed"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["total"]
       14 DIV                              R2 R3 R4
       15 MULK                             R1 R2 K1 [100]
       16 LOADN                            R2 0
       17 LOADN                            R3 100
       18 FASTCALL                         MATH_CLAMP ; [+2]
       19 GETIMPORT                        R0 K5 [math.clamp]
       21 CALL                             R0 3 1
       22 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKN                    R1 K0 [1] ; [+3]
        3 LOADK                            R0 K1 ["task"]
        4 JUMP                             ; [+1]
        5 LOADK                            R0 K2 ["tasks"]
        6 LOADK                            R1 K3 ["%* %*"]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R0
        9 NAMECALL                         R1 R1 K4 ["format"]
       11 CALL                             R1 3 1
       12 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R4 R0 K2 ["total"]
        8 GETTABLEKS                       R5 R0 K3 ["completed"]
       10 SUB                              R3 R4 R5
       11 GETTABLEKS                       R4 R0 K4 ["errors"]
       13 SUB                              R2 R3 R4
       14 LOADN                            R4 0
       15 JUMPIFLT                         R4 R2 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 GETTABLEKS                       R5 R0 K4 ["errors"]
       21 LOADN                            R6 0
       22 JUMPIFLT                         R6 R5 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 GETTABLEKS                       R6 R0 K3 ["completed"]
       28 LOADN                            R7 0
       29 JUMPIFLT                         R7 R6 ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       36 NEWCLOSURE                       R7 P0
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R8 0 2
       40 GETTABLEKS                       R9 R0 K3 ["completed"]
       42 GETTABLEKS                       R10 R0 K2 ["total"]
       44 SETLIST                          R8 R9 2 [1]
       46 CALL                             R6 2 1
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       50 NEWCLOSURE                       R8 P1
       51 CAPTURE                          VAL R2
       52 NEWTABLE                         R9 0 1
       54 MOVE                             R10 R2
       55 SETLIST                          R9 R10 1 [1]
       57 CALL                             R7 2 1
       58 NEWTABLE                         R8 4 0
       60 JUMPIFNOT                        R3 ; [+39]
       61 GETUPVAL                         R9 2
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R10 R10 K6 ["View"]
       65 DUPTABLE                         R11 K11 [{["tag"] = "row items-center gap-xsmall auto-xy padding-x-xsmall", ["LayoutOrder"] = 1}]
       66 DUPTABLE                         R12 K14 [{"ProgressIndicator", "TaskCountText"}]
       67 GETUPVAL                         R13 2
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R14 R14 K15 ["Progress"]
       71 DUPTABLE                         R15 K19 [{["shape"], ["size"], ["value"], ["LayoutOrder"] = 1}]
       72 GETUPVAL                         R16 3
       73 GETTABLEKS                       R16 R16 K20 ["Circle"]
       75 SETTABLEKS                       R16 R15 K16 ["shape"]
       77 GETUPVAL                         R16 4
       78 GETTABLEKS                       R16 R16 K21 ["Small"]
       80 SETTABLEKS                       R16 R15 K17 ["size"]
       82 SETTABLEKS                       R6 R15 K18 ["value"]
       84 CALL                             R13 2 1
       85 SETTABLEKS                       R13 R12 K12 ["ProgressIndicator"]
       87 GETUPVAL                         R13 2
       88 GETUPVAL                         R14 0
       89 GETTABLEKS                       R14 R14 K22 ["Text"]
       91 DUPTABLE                         R15 K27 [{["tag"] = "auto-xy text-body-small content-muted", ["Text"], ["TextWrapped"] = False, ["LayoutOrder"] = 2}]
       92 SETTABLEKS                       R7 R15 K22 ["Text"]
       94 CALL                             R13 2 1
       95 SETTABLEKS                       R13 R12 K13 ["TaskCountText"]
       97 CALL                             R9 3 1
       98 SETTABLEKS                       R9 R8 K28 ["ActiveSection"]
      100 JUMPIFNOT                        R4 ; [+58]
      101 GETUPVAL                         R9 2
      102 GETUPVAL                         R10 0
      103 GETTABLEKS                       R10 R10 K6 ["View"]
      105 DUPTABLE                         R11 K29 [{["tag"] = "row items-center gap-xsmall auto-xy padding-x-xsmall", ["LayoutOrder"] = 2}]
      106 DUPTABLE                         R12 K32 [{"ErrorIcon", "ErrorCount"}]
      107 GETUPVAL                         R13 2
      108 GETUPVAL                         R14 0
      109 GETTABLEKS                       R14 R14 K33 ["Icon"]
      111 DUPTABLE                         R15 K37 [{["name"], ["size"], ["variant"], ["style"], ["LayoutOrder"] = 1}]
      112 GETUPVAL                         R16 5
      113 GETTABLEKS                       R16 R16 K33 ["Icon"]
      115 GETTABLEKS                       R16 R16 K38 ["CircleX"]
      117 SETTABLEKS                       R16 R15 K34 ["name"]
      119 GETUPVAL                         R16 6
      120 GETTABLEKS                       R16 R16 K21 ["Small"]
      122 SETTABLEKS                       R16 R15 K17 ["size"]
      124 GETUPVAL                         R16 7
      125 GETTABLEKS                       R16 R16 K39 ["Filled"]
      127 SETTABLEKS                       R16 R15 K35 ["variant"]
      129 GETTABLEKS                       R16 R1 K40 ["Color"]
      131 GETTABLEKS                       R16 R16 K41 ["System"]
      133 GETTABLEKS                       R16 R16 K42 ["Alert"]
      135 SETTABLEKS                       R16 R15 K36 ["style"]
      137 CALL                             R13 2 1
      138 SETTABLEKS                       R13 R12 K30 ["ErrorIcon"]
      140 GETUPVAL                         R13 2
      141 GETUPVAL                         R14 0
      142 GETTABLEKS                       R14 R14 K22 ["Text"]
      144 DUPTABLE                         R15 K44 [{["tag"] = "auto-xy text-body-small", ["Text"], ["TextWrapped"] = False, ["LayoutOrder"] = 2}]
      145 GETTABLEKS                       R17 R0 K4 ["errors"]
      147 FASTCALL1                        TOSTRING R17 ; [+2]
      148 GETIMPORT                        R16 K46 [tostring]
      150 CALL                             R16 1 1
      151 SETTABLEKS                       R16 R15 K22 ["Text"]
      153 CALL                             R13 2 1
      154 SETTABLEKS                       R13 R12 K31 ["ErrorCount"]
      156 CALL                             R9 3 1
      157 SETTABLEKS                       R9 R8 K47 ["ErrorSection"]
      159 JUMPIFNOT                        R5 ; [+58]
      160 GETUPVAL                         R9 2
      161 GETUPVAL                         R10 0
      162 GETTABLEKS                       R10 R10 K6 ["View"]
      164 DUPTABLE                         R11 K49 [{["tag"] = "row items-center gap-xsmall auto-xy padding-x-xsmall", ["LayoutOrder"] = 3}]
      165 DUPTABLE                         R12 K52 [{"HistoryIcon", "CompletedCount"}]
      166 GETUPVAL                         R13 2
      167 GETUPVAL                         R14 0
      168 GETTABLEKS                       R14 R14 K33 ["Icon"]
      170 DUPTABLE                         R15 K37 [{["name"], ["size"], ["variant"], ["style"], ["LayoutOrder"] = 1}]
      171 GETUPVAL                         R16 5
      172 GETTABLEKS                       R16 R16 K33 ["Icon"]
      174 GETTABLEKS                       R16 R16 K53 ["ClockSpinReverse"]
      176 SETTABLEKS                       R16 R15 K34 ["name"]
      178 GETUPVAL                         R16 6
      179 GETTABLEKS                       R16 R16 K21 ["Small"]
      181 SETTABLEKS                       R16 R15 K17 ["size"]
      183 GETUPVAL                         R16 7
      184 GETTABLEKS                       R16 R16 K54 ["Regular"]
      186 SETTABLEKS                       R16 R15 K35 ["variant"]
      188 GETTABLEKS                       R16 R1 K40 ["Color"]
      190 GETTABLEKS                       R16 R16 K55 ["Content"]
      192 GETTABLEKS                       R16 R16 K56 ["Default"]
      194 SETTABLEKS                       R16 R15 K36 ["style"]
      196 CALL                             R13 2 1
      197 SETTABLEKS                       R13 R12 K50 ["HistoryIcon"]
      199 GETUPVAL                         R13 2
      200 GETUPVAL                         R14 0
      201 GETTABLEKS                       R14 R14 K22 ["Text"]
      203 DUPTABLE                         R15 K27 [{["tag"] = "auto-xy text-body-small content-muted", ["Text"], ["TextWrapped"] = False, ["LayoutOrder"] = 2}]
      204 GETTABLEKS                       R17 R0 K3 ["completed"]
      206 FASTCALL1                        TOSTRING R17 ; [+2]
      207 GETIMPORT                        R16 K46 [tostring]
      209 CALL                             R16 1 1
      210 SETTABLEKS                       R16 R15 K22 ["Text"]
      212 CALL                             R13 2 1
      213 SETTABLEKS                       R13 R12 K51 ["CompletedCount"]
      215 CALL                             R9 3 1
      216 SETTABLEKS                       R9 R8 K57 ["CompletedSection"]
      218 GETTABLEKS                       R9 R0 K58 ["showMCPStatus"]
      220 JUMPIF                           R9 ; [+8]
      221 GETIMPORT                        R9 K60 [next]
      223 MOVE                             R10 R8
      224 CALL                             R9 1 1
      225 JUMPIFNOTEQKNIL                  R9 ; [+3]
      227 LOADNIL                          R9
      228 RETURN                           R9 1
      229 GETTABLEKS                       R10 R0 K61 ["isPanelOpen"]
      231 JUMPIFNOT                        R10 ; [+2]
      232 LOADK                            R9 K62 ["row items-center gap-xsmall auto-xy padding-xsmall radius-small bg-shift-300"]
      233 JUMP                             ; [+1]
      234 LOADK                            R9 K63 ["row items-center gap-xsmall auto-xy padding-xsmall radius-small"]
      235 GETTABLEKS                       R10 R0 K58 ["showMCPStatus"]
      237 JUMPIF                           R10 ; [+23]
      238 GETUPVAL                         R10 2
      239 GETUPVAL                         R11 0
      240 GETTABLEKS                       R11 R11 K6 ["View"]
      242 DUPTABLE                         R12 K65 [{["tag"] = "row align-x-right size-full-full padding-right-small"}]
      243 DUPTABLE                         R13 K67 [{"Container"}]
      244 GETUPVAL                         R14 2
      245 GETUPVAL                         R15 0
      246 GETTABLEKS                       R15 R15 K22 ["Text"]
      248 DUPTABLE                         R16 K72 [{["tag"], ["Text"] = "", ["onActivated"], ["testId"] = "--status-bar-queue-button"}]
      249 SETTABLEKS                       R9 R16 K7 ["tag"]
      251 GETTABLEKS                       R17 R0 K73 ["onOpenQueue"]
      253 SETTABLEKS                       R17 R16 K69 ["onActivated"]
      255 MOVE                             R17 R8
      256 CALL                             R14 3 1
      257 SETTABLEKS                       R14 R13 K66 ["Container"]
      259 CALL                             R10 3 -1
      260 RETURN                           R10 -1
      261 GETUPVAL                         R10 2
      262 GETUPVAL                         R11 0
      263 GETTABLEKS                       R11 R11 K6 ["View"]
      265 DUPTABLE                         R12 K75 [{["tag"] = "row align-x-right items-center gap-small size-full-full padding-right-small"}]
      266 DUPTABLE                         R13 K77 [{"Container", "MCPStatusContainer"}]
      267 GETIMPORT                        R15 K60 [next]
      269 MOVE                             R16 R8
      270 CALL                             R15 1 1
      271 JUMPIFEQKNIL                     R15 ; [+15]
      273 GETUPVAL                         R14 2
      274 GETUPVAL                         R15 0
      275 GETTABLEKS                       R15 R15 K22 ["Text"]
      277 DUPTABLE                         R16 K78 [{["tag"], ["Text"] = "", ["onActivated"], ["LayoutOrder"] = 1, ["testId"] = "--status-bar-queue-button"}]
      278 SETTABLEKS                       R9 R16 K7 ["tag"]
      280 GETTABLEKS                       R17 R0 K73 ["onOpenQueue"]
      282 SETTABLEKS                       R17 R16 K69 ["onActivated"]
      284 MOVE                             R17 R8
      285 CALL                             R14 3 1
      286 JUMP                             ; [+1]
      287 LOADNIL                          R14
      288 SETTABLEKS                       R14 R13 K66 ["Container"]
      290 GETUPVAL                         R14 2
      291 GETUPVAL                         R15 8
      292 DUPTABLE                         R16 K79 [{["LayoutOrder"] = 2}]
      293 CALL                             R14 2 1
      294 SETTABLEKS                       R14 R13 K76 ["MCPStatusContainer"]
      296 CALL                             R10 3 -1
      297 RETURN                           R10 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["FooterStatusBarQueue"]
        2 DUPTABLE                         R3 K7 [{["Id"] = "FooterStatusBarQueue", ["InitialEnabled"] = True, ["Modal"] = False, ["StatusBar"] = True}]
        3 NAMECALL                         R0 R0 K8 ["CreateQWidgetPluginGui"]
        5 CALL                             R0 3 1
        6 GETIMPORT                        R1 K12 [Enum.ZIndexBehavior.Sibling]
        8 SETTABLEKS                       R1 R0 K10 ["ZIndexBehavior"]
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["queueStatusBarSignals"]
        3 GETTABLEKS                       R0 R0 K1 ["setIsPanelOpen"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["getFFlagMCPClientCountAsASetting"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K4 ["useSignalState"]
       19 GETTABLEKS                       R6 R0 K5 ["queueStatusBarSignals"]
       21 GETTABLEKS                       R6 R6 K6 ["getCompleted"]
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R6 R6 K4 ["useSignalState"]
       27 GETTABLEKS                       R7 R0 K5 ["queueStatusBarSignals"]
       29 GETTABLEKS                       R7 R7 K7 ["getTotal"]
       31 CALL                             R6 1 1
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K4 ["useSignalState"]
       35 GETTABLEKS                       R8 R0 K5 ["queueStatusBarSignals"]
       37 GETTABLEKS                       R8 R8 K8 ["getErrors"]
       39 CALL                             R7 1 1
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K4 ["useSignalState"]
       43 GETTABLEKS                       R9 R0 K5 ["queueStatusBarSignals"]
       45 GETTABLEKS                       R9 R9 K9 ["getIsPanelOpen"]
       47 CALL                             R8 1 1
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R9 R9 K10 ["useEffect"]
       51 NEWCLOSURE                       R10 P0
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 NEWTABLE                         R11 0 1
       56 MOVE                             R12 R1
       57 SETLIST                          R11 R12 1 [1]
       59 CALL                             R9 2 0
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K11 ["useCallback"]
       63 NEWCLOSURE                       R10 P1
       64 CAPTURE                          VAL R0
       65 NEWTABLE                         R11 0 1
       67 GETTABLEKS                       R12 R0 K5 ["queueStatusBarSignals"]
       69 SETLIST                          R11 R12 1 [1]
       71 CALL                             R9 2 1
       72 JUMPIF                           R2 ; [+2]
       73 LOADNIL                          R10
       74 RETURN                           R10 1
       75 GETIMPORT                        R10 K13 [settings]
       77 CALL                             R10 0 1
       78 GETTABLEKS                       R10 R10 K14 ["Studio"]
       80 GETTABLEKS                       R10 R10 K15 ["Theme"]
       82 GETIMPORT                        R12 K19 [Enum.StudioStyleGuideColor.MainBackground]
       84 NAMECALL                         R10 R10 K20 ["GetColor"]
       86 CALL                             R10 2 1
       87 GETUPVAL                         R11 4
       88 GETTABLEKS                       R11 R11 K21 ["createPortal"]
       90 GETUPVAL                         R12 5
       91 LOADK                            R13 K22 ["Frame"]
       92 DUPTABLE                         R14 K28 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0}]
       93 GETIMPORT                        R15 K31 [UDim2.fromScale]
       95 LOADN                            R16 1
       96 LOADN                            R17 1
       97 CALL                             R15 2 1
       98 SETTABLEKS                       R15 R14 K23 ["Size"]
      100 SETTABLEKS                       R10 R14 K24 ["BackgroundColor3"]
      102 DUPTABLE                         R15 K33 [{"Provider"}]
      103 GETUPVAL                         R16 5
      104 GETUPVAL                         R17 6
      105 DUPTABLE                         R18 K36 [{"overlayGui", "plugin"}]
      106 SETTABLEKS                       R2 R18 K34 ["overlayGui"]
      108 JUMPIFNOT                        R4 ; [+2]
      109 MOVE                             R19 R1
      110 JUMP                             ; [+1]
      111 LOADNIL                          R19
      112 SETTABLEKS                       R19 R18 K35 ["plugin"]
      114 DUPTABLE                         R19 K38 [{"Content"}]
      115 GETUPVAL                         R20 5
      116 GETUPVAL                         R21 7
      117 DUPTABLE                         R22 K45 [{"completed", "total", "errors", "isPanelOpen", "onOpenQueue", "showMCPStatus"}]
      118 SETTABLEKS                       R5 R22 K39 ["completed"]
      120 SETTABLEKS                       R6 R22 K40 ["total"]
      122 SETTABLEKS                       R7 R22 K41 ["errors"]
      124 SETTABLEKS                       R8 R22 K42 ["isPanelOpen"]
      126 SETTABLEKS                       R9 R22 K43 ["onOpenQueue"]
      128 SETTABLEKS                       R4 R22 K44 ["showMCPStatus"]
      130 CALL                             R20 2 1
      131 SETTABLEKS                       R20 R19 K37 ["Content"]
      133 CALL                             R16 3 1
      134 SETTABLEKS                       R16 R15 K32 ["Provider"]
      136 CALL                             R12 3 1
      137 MOVE                             R13 R2
      138 CALL                             R11 2 -1
      139 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["BuilderIcons"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["ReactRoblox"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Packages"]
       46 GETTABLEKS                       R7 R7 K12 ["SignalsReact"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Packages"]
       53 GETTABLEKS                       R8 R8 K13 ["StudioFoundation"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Bin"]
       60 GETTABLEKS                       R9 R9 K15 ["Common"]
       62 GETTABLEKS                       R9 R9 K16 ["defineLuaFlags"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K17 ["Src"]
       69 GETTABLEKS                       R10 R10 K18 ["Components"]
       71 GETTABLEKS                       R10 R10 K19 ["MCPConnectionStatus"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K17 ["Src"]
       78 GETTABLEKS                       R11 R11 K20 ["Util"]
       80 GETTABLEKS                       R11 R11 K21 ["createQueueStatusSignals"]
       82 CALL                             R10 1 1
       83 GETTABLEKS                       R11 R2 K22 ["Enums"]
       85 GETTABLEKS                       R12 R7 K18 ["Components"]
       87 GETTABLEKS                       R12 R12 K23 ["FoundationProviderAdapter"]
       89 GETTABLEKS                       R13 R3 K24 ["ContextServices"]
       91 GETTABLEKS                       R13 R13 K25 ["Plugin"]
       93 GETTABLEKS                       R14 R4 K26 ["createElement"]
       95 GETTABLEKS                       R15 R11 K27 ["IconSize"]
       97 GETTABLEKS                       R16 R11 K28 ["IconVariant"]
       99 GETTABLEKS                       R17 R11 K29 ["ProgressShape"]
      101 GETTABLEKS                       R18 R11 K30 ["ProgressSize"]
      103 DUPCLOSURE                       R19 K31 [PROTO_2]
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R17
      108 CAPTURE                          VAL R18
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R9
      113 DUPCLOSURE                       R20 K32 [PROTO_6]
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R19
      122 GETTABLEKS                       R21 R4 K33 ["memo"]
      124 MOVE                             R22 R20
      125 CALL                             R21 1 -1
      126 RETURN                           R21 -1
