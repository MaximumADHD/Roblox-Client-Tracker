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
        6 LOADK                            R2 K3 ["%* %*"]
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R0
        9 NAMECALL                         R2 R2 K4 ["format"]
       11 CALL                             R2 3 1
       12 MOVE                             R1 R2
       13 RETURN                           R1 1

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
       26 OR                               R5 R3 R4
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R8 0 2
       34 GETTABLEKS                       R9 R0 K3 ["completed"]
       36 GETTABLEKS                       R10 R0 K2 ["total"]
       38 SETLIST                          R8 R9 2 [1]
       40 CALL                             R6 2 1
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       44 NEWCLOSURE                       R8 P1
       45 CAPTURE                          VAL R2
       46 NEWTABLE                         R9 0 1
       48 MOVE                             R10 R2
       49 SETLIST                          R9 R10 1 [1]
       51 CALL                             R7 2 1
       52 NEWTABLE                         R8 8 0
       54 JUMPIFNOT                        R5 ; [+82]
       55 JUMPIFNOT                        R3 ; [+30]
       56 GETUPVAL                         R9 2
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K6 ["Progress"]
       60 DUPTABLE                         R11 K12 [{["shape"], ["size"], ["value"], ["LayoutOrder"] = 1}]
       61 GETUPVAL                         R12 3
       62 GETTABLEKS                       R12 R12 K13 ["Circle"]
       64 SETTABLEKS                       R12 R11 K7 ["shape"]
       66 GETUPVAL                         R12 4
       67 GETTABLEKS                       R12 R12 K14 ["Small"]
       69 SETTABLEKS                       R12 R11 K8 ["size"]
       71 SETTABLEKS                       R6 R11 K9 ["value"]
       73 CALL                             R9 2 1
       74 SETTABLEKS                       R9 R8 K15 ["ProgressIndicator"]
       76 GETUPVAL                         R9 2
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K16 ["Text"]
       80 DUPTABLE                         R11 K22 [{["tag"] = "auto-xy text-body-small content-muted", ["Text"], ["TextWrapped"] = False, ["LayoutOrder"] = 2}]
       81 SETTABLEKS                       R7 R11 K16 ["Text"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K23 ["TaskCountText"]
       86 JUMPIFNOT                        R4 ; [+83]
       87 GETUPVAL                         R9 2
       88 GETUPVAL                         R10 0
       89 GETTABLEKS                       R10 R10 K24 ["Icon"]
       91 DUPTABLE                         R11 K29 [{["name"], ["size"], ["variant"], ["style"], ["LayoutOrder"] = 3}]
       92 GETUPVAL                         R12 5
       93 GETTABLEKS                       R12 R12 K24 ["Icon"]
       95 GETTABLEKS                       R12 R12 K30 ["CircleX"]
       97 SETTABLEKS                       R12 R11 K25 ["name"]
       99 GETUPVAL                         R12 6
      100 GETTABLEKS                       R12 R12 K14 ["Small"]
      102 SETTABLEKS                       R12 R11 K8 ["size"]
      104 GETUPVAL                         R12 7
      105 GETTABLEKS                       R12 R12 K31 ["Filled"]
      107 SETTABLEKS                       R12 R11 K26 ["variant"]
      109 GETTABLEKS                       R12 R1 K32 ["Color"]
      111 GETTABLEKS                       R12 R12 K33 ["System"]
      113 GETTABLEKS                       R12 R12 K34 ["Alert"]
      115 SETTABLEKS                       R12 R11 K27 ["style"]
      117 CALL                             R9 2 1
      118 SETTABLEKS                       R9 R8 K35 ["ErrorIcon"]
      120 GETUPVAL                         R9 2
      121 GETUPVAL                         R10 0
      122 GETTABLEKS                       R10 R10 K16 ["Text"]
      124 DUPTABLE                         R11 K38 [{["tag"] = "auto-xy text-body-small", ["Text"], ["TextWrapped"] = False, ["LayoutOrder"] = 4}]
      125 GETTABLEKS                       R13 R0 K4 ["errors"]
      127 FASTCALL1                        TOSTRING R13 ; [+2]
      128 GETIMPORT                        R12 K40 [tostring]
      130 CALL                             R12 1 1
      131 SETTABLEKS                       R12 R11 K16 ["Text"]
      133 CALL                             R9 2 1
      134 SETTABLEKS                       R9 R8 K41 ["ErrorCount"]
      136 JUMP                             ; [+33]
      137 GETUPVAL                         R9 2
      138 GETUPVAL                         R10 0
      139 GETTABLEKS                       R10 R10 K24 ["Icon"]
      141 DUPTABLE                         R11 K42 [{["name"], ["size"], ["variant"], ["style"], ["LayoutOrder"] = 1}]
      142 GETUPVAL                         R12 5
      143 GETTABLEKS                       R12 R12 K24 ["Icon"]
      145 GETTABLEKS                       R12 R12 K43 ["ClockSpinReverse"]
      147 SETTABLEKS                       R12 R11 K25 ["name"]
      149 GETUPVAL                         R12 6
      150 GETTABLEKS                       R12 R12 K14 ["Small"]
      152 SETTABLEKS                       R12 R11 K8 ["size"]
      154 GETUPVAL                         R12 7
      155 GETTABLEKS                       R12 R12 K44 ["Regular"]
      157 SETTABLEKS                       R12 R11 K26 ["variant"]
      159 GETTABLEKS                       R12 R1 K32 ["Color"]
      161 GETTABLEKS                       R12 R12 K45 ["Content"]
      163 GETTABLEKS                       R12 R12 K46 ["Default"]
      165 SETTABLEKS                       R12 R11 K27 ["style"]
      167 CALL                             R9 2 1
      168 SETTABLEKS                       R9 R8 K47 ["HistoryIcon"]
      170 GETTABLEKS                       R10 R0 K48 ["isPanelOpen"]
      172 JUMPIFNOT                        R10 ; [+2]
      173 LOADK                            R9 K49 ["row auto-xy radius-small padding-xsmall gap-xsmall items-center bg-shift-300"]
      174 JUMP                             ; [+1]
      175 LOADK                            R9 K50 ["row auto-xy radius-small padding-xsmall gap-xsmall items-center"]
      176 GETUPVAL                         R10 2
      177 GETUPVAL                         R11 0
      178 GETTABLEKS                       R11 R11 K51 ["View"]
      180 DUPTABLE                         R12 K53 [{["tag"] = "row align-x-right size-full-full padding-right-small"}]
      181 DUPTABLE                         R13 K55 [{"Container"}]
      182 GETUPVAL                         R14 2
      183 GETUPVAL                         R15 0
      184 GETTABLEKS                       R15 R15 K16 ["Text"]
      186 DUPTABLE                         R16 K60 [{["tag"], ["Text"] = "", ["onActivated"], ["testId"] = "--status-bar-queue-button"}]
      187 SETTABLEKS                       R9 R16 K17 ["tag"]
      189 GETTABLEKS                       R17 R0 K61 ["onOpenQueue"]
      191 SETTABLEKS                       R17 R16 K57 ["onActivated"]
      193 MOVE                             R17 R8
      194 CALL                             R14 3 1
      195 SETTABLEKS                       R14 R13 K54 ["Container"]
      197 CALL                             R10 3 -1
      198 RETURN                           R10 -1

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
