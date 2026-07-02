PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetCanAutoUpdateAsync"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.cancel]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["UpdateManagerBridge"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETIMPORT                        R1 K4 [task.defer]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R0 K5 ["CanAutoUpdateNotification"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R2 R2 K6 ["Connect"]
       18 CALL                             R2 2 1
       19 NEWCLOSURE                       R3 P2
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UpdateState"]
        4 GETIMPORT                        R3 K3 [Enum.UpdateState.UpdateInProgress]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Actions"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["Util"]
        8 GETTABLEKS                       R1 R1 K3 ["StudioUri"]
       10 GETTABLEKS                       R1 R1 K4 ["fromAction"]
       12 LOADK                            R2 K5 ["UpdateManager"]
       13 LOADK                            R3 K6 ["Continue"]
       14 CALL                             R1 2 1
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R0 K7 ["ActivateAsync"]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K8 ["UpdateState"]
       22 GETIMPORT                        R3 K11 [Enum.UpdateState.UpdateAvailable]
       24 JUMPIFNOTEQ                      R2 R3 ; [+4]
       26 GETUPVAL                         R2 3
       27 LOADB                            R3 1
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BrowserService"]
        3 JUMPIF                           R0 ; [+1]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 -1
        7 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 NAMECALL                         R2 R2 K1 ["get"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 LOADB                            R4 0
       13 CALL                             R3 1 2
       14 MOVE                             R5 R3
       15 JUMPIFNOT                        R5 ; [+8]
       16 GETTABLEKS                       R6 R0 K2 ["UpdateState"]
       18 GETIMPORT                        R7 K5 [Enum.UpdateState.UpdateInProgress]
       20 JUMPIFEQ                         R6 R7 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 GETUPVAL                         R6 3
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R8 0 1
       30 MOVE                             R9 R2
       31 SETLIST                          R8 R9 1 [1]
       33 CALL                             R6 2 0
       34 MOVE                             R6 R5
       35 JUMPIF                           R6 ; [+8]
       36 GETTABLEKS                       R7 R0 K2 ["UpdateState"]
       38 GETIMPORT                        R8 K7 [Enum.UpdateState.UpdateFailed]
       40 JUMPIFEQ                         R7 R8 ; [+2]
       42 LOADB                            R6 0 +1
       43 LOADB                            R6 1
       44 GETUPVAL                         R7 2
       45 LOADB                            R8 0
       46 CALL                             R7 1 2
       47 GETUPVAL                         R9 3
       48 NEWCLOSURE                       R10 P1
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R11 0 1
       53 GETTABLEKS                       R12 R0 K2 ["UpdateState"]
       55 SETLIST                          R11 R12 1 [1]
       57 CALL                             R9 2 0
       58 GETUPVAL                         R9 4
       59 GETTABLEKS                       R9 R9 K8 ["createElement"]
       61 LOADK                            R10 K9 ["Frame"]
       62 NEWTABLE                         R11 8 0
       64 GETIMPORT                        R12 K12 [UDim2.fromOffset]
       66 LOADN                            R13 320
       67 LOADN                            R14 0
       68 CALL                             R12 2 1
       69 SETTABLEKS                       R12 R11 K13 ["Size"]
       71 LOADN                            R12 0
       72 SETTABLEKS                       R12 R11 K14 ["BorderSizePixel"]
       74 GETIMPORT                        R12 K17 [Enum.AutomaticSize.Y]
       76 SETTABLEKS                       R12 R11 K15 ["AutomaticSize"]
       78 LOADN                            R12 1
       79 SETTABLEKS                       R12 R11 K18 ["BackgroundTransparency"]
       81 GETUPVAL                         R12 4
       82 GETTABLEKS                       R12 R12 K19 ["Tag"]
       84 LOADK                            R13 K20 ["X-FitY X-Column X-Middle X-Center X-Clip"]
       85 SETTABLE                         R13 R11 R12
       86 DUPTABLE                         R12 K22 [{"DialogInner"}]
       87 GETUPVAL                         R13 4
       88 GETTABLEKS                       R13 R13 K8 ["createElement"]
       90 GETUPVAL                         R14 5
       91 DUPTABLE                         R15 K27 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1}]
       92 DUPTABLE                         R16 K29 [{"DialogBody"}]
       93 GETUPVAL                         R17 4
       94 GETTABLEKS                       R17 R17 K8 ["createElement"]
       96 GETUPVAL                         R18 5
       97 DUPTABLE                         R19 K31 [{["tag"] = "col gap-small size-full-0 auto-y padding-medium", ["BackgroundTransparency"] = 1}]
       98 DUPTABLE                         R20 K35 [{"DialogTitle", "DialogContent", "DialogActions"}]
       99 GETUPVAL                         R21 4
      100 GETTABLEKS                       R21 R21 K8 ["createElement"]
      102 GETUPVAL                         R22 5
      103 DUPTABLE                         R23 K36 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"] = 1}]
      104 DUPTABLE                         R24 K38 [{"Title"}]
      105 GETUPVAL                         R25 4
      106 GETTABLEKS                       R25 R25 K8 ["createElement"]
      108 GETUPVAL                         R26 6
      109 DUPTABLE                         R27 K41 [{["tag"] = "size-full-0 auto-y text-title-small text-wrap text-align-x-left content-inverse-emphasis", ["Text"]}]
      110 LOADK                            R30 K37 ["Title"]
      111 GETTABLEKS                       R31 R0 K2 ["UpdateState"]
      113 GETTABLEKS                       R31 R31 K42 ["Name"]
      115 NAMECALL                         R28 R1 K43 ["getText"]
      117 CALL                             R28 3 1
      118 SETTABLEKS                       R28 R27 K40 ["Text"]
      120 CALL                             R25 2 1
      121 SETTABLEKS                       R25 R24 K37 ["Title"]
      123 CALL                             R21 3 1
      124 SETTABLEKS                       R21 R20 K32 ["DialogTitle"]
      126 GETUPVAL                         R21 4
      127 GETTABLEKS                       R21 R21 K8 ["createElement"]
      129 GETUPVAL                         R22 5
      130 DUPTABLE                         R23 K46 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"] = 2, ["Visible"]}]
      131 SETTABLEKS                       R6 R23 K45 ["Visible"]
      133 DUPTABLE                         R24 K48 [{"DialogText"}]
      134 GETUPVAL                         R25 4
      135 GETTABLEKS                       R25 R25 K8 ["createElement"]
      137 GETUPVAL                         R26 6
      138 DUPTABLE                         R27 K52 [{["Text"], ["RichText"] = True, ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left text-align-y-top content-inverse-default"}]
      139 LOADK                            R30 K53 ["Tooltip"]
      140 GETTABLEKS                       R31 R0 K2 ["UpdateState"]
      142 GETTABLEKS                       R31 R31 K42 ["Name"]
      144 NAMECALL                         R28 R1 K43 ["getText"]
      146 CALL                             R28 3 1
      147 SETTABLEKS                       R28 R27 K40 ["Text"]
      149 CALL                             R25 2 1
      150 SETTABLEKS                       R25 R24 K47 ["DialogText"]
      152 CALL                             R21 3 1
      153 SETTABLEKS                       R21 R20 K33 ["DialogContent"]
      155 GETUPVAL                         R21 4
      156 GETTABLEKS                       R21 R21 K8 ["createElement"]
      158 GETUPVAL                         R22 5
      159 DUPTABLE                         R23 K56 [{["tag"] = "row align-x-right gap-small size-full-0 auto-y padding-top-small", ["Visible"] = True, ["LayoutOrder"] = 3}]
      160 DUPTABLE                         R24 K59 [{"Continue", "ReleaseNotes"}]
      161 GETUPVAL                         R25 4
      162 GETTABLEKS                       R25 R25 K8 ["createElement"]
      164 GETUPVAL                         R26 7
      165 DUPTABLE                         R27 K66 [{["LayoutOrder"] = 1, ["Visible"], ["fillBehavior"], ["text"], ["size"], ["variant"], ["isLoading"], ["onActivated"]}]
      166 NOT                              R28 R5
      167 SETTABLEKS                       R28 R27 K45 ["Visible"]
      169 GETUPVAL                         R28 8
      170 GETTABLEKS                       R28 R28 K67 ["FillBehavior"]
      172 GETTABLEKS                       R28 R28 K68 ["Fit"]
      174 SETTABLEKS                       R28 R27 K60 ["fillBehavior"]
      176 LOADK                            R30 K69 ["Action"]
      177 LOADK                            R31 K57 ["Continue"]
      178 NAMECALL                         R28 R1 K43 ["getText"]
      180 CALL                             R28 3 1
      181 SETTABLEKS                       R28 R27 K61 ["text"]
      183 GETUPVAL                         R28 8
      184 GETTABLEKS                       R28 R28 K70 ["InputSize"]
      186 GETTABLEKS                       R28 R28 K71 ["XSmall"]
      188 SETTABLEKS                       R28 R27 K62 ["size"]
      190 GETUPVAL                         R28 8
      191 GETTABLEKS                       R28 R28 K72 ["ButtonVariant"]
      193 GETTABLEKS                       R28 R28 K73 ["Emphasis"]
      195 SETTABLEKS                       R28 R27 K63 ["variant"]
      197 SETTABLEKS                       R7 R27 K64 ["isLoading"]
      199 NEWCLOSURE                       R28 P2
      200 CAPTURE                          VAL R2
      201 CAPTURE                          UPVAL U9
      202 CAPTURE                          VAL R0
      203 CAPTURE                          VAL R8
      204 SETTABLEKS                       R28 R27 K65 ["onActivated"]
      206 CALL                             R25 2 1
      207 SETTABLEKS                       R25 R24 K57 ["Continue"]
      209 GETUPVAL                         R25 4
      210 GETTABLEKS                       R25 R25 K8 ["createElement"]
      212 GETUPVAL                         R26 7
      213 DUPTABLE                         R27 K74 [{["LayoutOrder"] = 2, ["Visible"] = True, ["fillBehavior"], ["text"], ["size"], ["variant"], ["onActivated"]}]
      214 GETUPVAL                         R28 8
      215 GETTABLEKS                       R28 R28 K67 ["FillBehavior"]
      217 GETTABLEKS                       R28 R28 K68 ["Fit"]
      219 SETTABLEKS                       R28 R27 K60 ["fillBehavior"]
      221 LOADK                            R30 K69 ["Action"]
      222 LOADK                            R31 K75 ["ViewReleaseNotes"]
      223 NAMECALL                         R28 R1 K43 ["getText"]
      225 CALL                             R28 3 1
      226 SETTABLEKS                       R28 R27 K61 ["text"]
      228 GETUPVAL                         R28 8
      229 GETTABLEKS                       R28 R28 K70 ["InputSize"]
      231 GETTABLEKS                       R28 R28 K71 ["XSmall"]
      233 SETTABLEKS                       R28 R27 K62 ["size"]
      235 GETUPVAL                         R28 8
      236 GETTABLEKS                       R28 R28 K72 ["ButtonVariant"]
      238 GETTABLEKS                       R28 R28 K76 ["Link"]
      240 SETTABLEKS                       R28 R27 K63 ["variant"]
      242 NEWCLOSURE                       R28 P3
      243 CAPTURE                          VAL R0
      244 CAPTURE                          UPVAL U10
      245 CAPTURE                          UPVAL U11
      246 SETTABLEKS                       R28 R27 K65 ["onActivated"]
      248 CALL                             R25 2 1
      249 SETTABLEKS                       R25 R24 K58 ["ReleaseNotes"]
      251 CALL                             R21 3 1
      252 SETTABLEKS                       R21 R20 K34 ["DialogActions"]
      254 CALL                             R17 3 1
      255 SETTABLEKS                       R17 R16 K28 ["DialogBody"]
      257 CALL                             R13 3 1
      258 SETTABLEKS                       R13 R12 K21 ["DialogInner"]
      260 CALL                             R9 3 -1
      261 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K11 [game]
       30 LOADK                            R6 K12 ["BrowserService"]
       31 NAMECALL                         R4 R4 K13 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["SharedFlags"]
       40 GETTABLEKS                       R6 R6 K16 ["getFStringLatestReleaseNotesURL"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R1 K17 ["useEffect"]
       45 GETTABLEKS                       R7 R1 K18 ["useState"]
       47 GETTABLEKS                       R8 R2 K19 ["Button"]
       49 GETTABLEKS                       R9 R2 K20 ["Enums"]
       51 GETTABLEKS                       R10 R2 K21 ["Text"]
       53 GETTABLEKS                       R11 R2 K22 ["View"]
       55 GETTABLEKS                       R12 R3 K23 ["ContextServices"]
       57 GETTABLEKS                       R13 R12 K24 ["Localization"]
       59 GETTABLEKS                       R14 R12 K25 ["Plugin"]
       61 DUPCLOSURE                       R15 K26 [PROTO_7]
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R14
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R5
       74 RETURN                           R15 1
