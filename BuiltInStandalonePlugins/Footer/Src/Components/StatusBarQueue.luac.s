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
       65 DUPTABLE                         R11 K11 [{["tag"] = "row auto-xy items-center gap-xsmall padding-x-xsmall", ["LayoutOrder"] = 1}]
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
      105 DUPTABLE                         R11 K29 [{["tag"] = "row auto-xy items-center gap-xsmall padding-x-xsmall", ["LayoutOrder"] = 2}]
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
      164 DUPTABLE                         R11 K49 [{["tag"] = "row auto-xy items-center gap-xsmall padding-x-xsmall", ["LayoutOrder"] = 3}]
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
      218 GETIMPORT                        R9 K59 [next]
      220 MOVE                             R10 R8
      221 CALL                             R9 1 1
      222 JUMPIFNOTEQKNIL                  R9 ; [+3]
      224 LOADNIL                          R9
      225 RETURN                           R9 1
      226 GETTABLEKS                       R10 R0 K60 ["isPanelOpen"]
      228 JUMPIFNOT                        R10 ; [+2]
      229 LOADK                            R9 K61 ["row auto-xy radius-small padding-xsmall gap-xsmall items-center bg-shift-300"]
      230 JUMP                             ; [+1]
      231 LOADK                            R9 K62 ["row auto-xy radius-small padding-xsmall gap-xsmall items-center"]
      232 GETUPVAL                         R10 2
      233 GETUPVAL                         R11 0
      234 GETTABLEKS                       R11 R11 K6 ["View"]
      236 DUPTABLE                         R12 K64 [{["tag"] = "row align-x-right size-full-full padding-right-small"}]
      237 DUPTABLE                         R13 K66 [{"Container"}]
      238 GETUPVAL                         R14 2
      239 GETUPVAL                         R15 0
      240 GETTABLEKS                       R15 R15 K22 ["Text"]
      242 DUPTABLE                         R16 K71 [{["tag"], ["Text"] = "", ["onActivated"], ["testId"] = "--status-bar-queue-button"}]
      243 SETTABLEKS                       R9 R16 K7 ["tag"]
      245 GETTABLEKS                       R17 R0 K72 ["onOpenQueue"]
      247 SETTABLEKS                       R17 R16 K68 ["onActivated"]
      249 MOVE                             R17 R8
      250 CALL                             R14 3 1
      251 SETTABLEKS                       R14 R13 K65 ["Container"]
      253 CALL                             R10 3 -1
      254 RETURN                           R10 -1

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
       13 GETTABLEKS                       R4 R4 K3 ["useSignalState"]
       15 GETTABLEKS                       R5 R0 K4 ["queueStatusBarSignals"]
       17 GETTABLEKS                       R5 R5 K5 ["getCompleted"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K3 ["useSignalState"]
       23 GETTABLEKS                       R6 R0 K4 ["queueStatusBarSignals"]
       25 GETTABLEKS                       R6 R6 K6 ["getTotal"]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K3 ["useSignalState"]
       31 GETTABLEKS                       R7 R0 K4 ["queueStatusBarSignals"]
       33 GETTABLEKS                       R7 R7 K7 ["getErrors"]
       35 CALL                             R6 1 1
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K3 ["useSignalState"]
       39 GETTABLEKS                       R8 R0 K4 ["queueStatusBarSignals"]
       41 GETTABLEKS                       R8 R8 K8 ["getIsPanelOpen"]
       43 CALL                             R7 1 1
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K9 ["useEffect"]
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R10 0 1
       52 MOVE                             R11 R1
       53 SETLIST                          R10 R11 1 [1]
       55 CALL                             R8 2 0
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K10 ["useCallback"]
       59 NEWCLOSURE                       R9 P1
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R10 0 1
       63 GETTABLEKS                       R11 R0 K4 ["queueStatusBarSignals"]
       65 SETLIST                          R10 R11 1 [1]
       67 CALL                             R8 2 1
       68 JUMPIF                           R2 ; [+2]
       69 LOADNIL                          R9
       70 RETURN                           R9 1
       71 GETIMPORT                        R9 K12 [settings]
       73 CALL                             R9 0 1
       74 GETTABLEKS                       R9 R9 K13 ["Studio"]
       76 GETTABLEKS                       R9 R9 K14 ["Theme"]
       78 GETIMPORT                        R11 K18 [Enum.StudioStyleGuideColor.MainBackground]
       80 NAMECALL                         R9 R9 K19 ["GetColor"]
       82 CALL                             R9 2 1
       83 GETUPVAL                         R10 3
       84 GETTABLEKS                       R10 R10 K20 ["createPortal"]
       86 GETUPVAL                         R11 4
       87 LOADK                            R12 K21 ["Frame"]
       88 DUPTABLE                         R13 K27 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0}]
       89 GETIMPORT                        R14 K30 [UDim2.fromScale]
       91 LOADN                            R15 1
       92 LOADN                            R16 1
       93 CALL                             R14 2 1
       94 SETTABLEKS                       R14 R13 K22 ["Size"]
       96 SETTABLEKS                       R9 R13 K23 ["BackgroundColor3"]
       98 DUPTABLE                         R14 K32 [{"Provider"}]
       99 GETUPVAL                         R15 4
      100 GETUPVAL                         R16 5
      101 DUPTABLE                         R17 K34 [{"overlayGui"}]
      102 SETTABLEKS                       R2 R17 K33 ["overlayGui"]
      104 DUPTABLE                         R18 K36 [{"Content"}]
      105 GETUPVAL                         R19 4
      106 GETUPVAL                         R20 6
      107 DUPTABLE                         R21 K42 [{"completed", "total", "errors", "isPanelOpen", "onOpenQueue"}]
      108 SETTABLEKS                       R4 R21 K37 ["completed"]
      110 SETTABLEKS                       R5 R21 K38 ["total"]
      112 SETTABLEKS                       R6 R21 K39 ["errors"]
      114 SETTABLEKS                       R7 R21 K40 ["isPanelOpen"]
      116 SETTABLEKS                       R8 R21 K41 ["onOpenQueue"]
      118 CALL                             R19 2 1
      119 SETTABLEKS                       R19 R18 K35 ["Content"]
      121 CALL                             R15 3 1
      122 SETTABLEKS                       R15 R14 K31 ["Provider"]
      124 CALL                             R11 3 1
      125 MOVE                             R12 R2
      126 CALL                             R10 2 -1
      127 RETURN                           R10 -1

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
       58 GETTABLEKS                       R9 R0 K14 ["Src"]
       60 GETTABLEKS                       R9 R9 K15 ["Util"]
       62 GETTABLEKS                       R9 R9 K16 ["createQueueStatusSignals"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R2 K17 ["Enums"]
       67 GETTABLEKS                       R10 R7 K18 ["Components"]
       69 GETTABLEKS                       R10 R10 K19 ["FoundationProviderAdapter"]
       71 GETTABLEKS                       R11 R3 K20 ["ContextServices"]
       73 GETTABLEKS                       R11 R11 K21 ["Plugin"]
       75 GETTABLEKS                       R12 R4 K22 ["createElement"]
       77 GETTABLEKS                       R13 R9 K23 ["IconSize"]
       79 GETTABLEKS                       R14 R9 K24 ["IconVariant"]
       81 GETTABLEKS                       R15 R9 K25 ["ProgressShape"]
       83 GETTABLEKS                       R16 R9 K26 ["ProgressSize"]
       85 DUPCLOSURE                       R17 K27 [PROTO_2]
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R15
       90 CAPTURE                          VAL R16
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R14
       94 DUPCLOSURE                       R18 K28 [PROTO_6]
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R17
      102 GETTABLEKS                       R19 R4 K29 ["memo"]
      104 MOVE                             R20 R18
      105 CALL                             R19 1 -1
      106 RETURN                           R19 -1
