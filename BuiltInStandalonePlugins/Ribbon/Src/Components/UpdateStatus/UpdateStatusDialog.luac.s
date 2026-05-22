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
       66 LOADN                            R13 64
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
       91 DUPTABLE                         R15 K25 [{"tag", "LayoutOrder", "BackgroundTransparency"}]
       92 LOADK                            R16 K26 ["size-full-0 auto-y"]
       93 SETTABLEKS                       R16 R15 K23 ["tag"]
       95 LOADN                            R16 1
       96 SETTABLEKS                       R16 R15 K24 ["LayoutOrder"]
       98 LOADN                            R16 1
       99 SETTABLEKS                       R16 R15 K18 ["BackgroundTransparency"]
      101 DUPTABLE                         R16 K28 [{"DialogBody"}]
      102 GETUPVAL                         R17 4
      103 GETTABLEKS                       R17 R17 K8 ["createElement"]
      105 GETUPVAL                         R18 5
      106 DUPTABLE                         R19 K29 [{"tag", "BackgroundTransparency"}]
      107 LOADK                            R20 K30 ["size-full-0 auto-y col padding-medium gap-small"]
      108 SETTABLEKS                       R20 R19 K23 ["tag"]
      110 LOADN                            R20 1
      111 SETTABLEKS                       R20 R19 K18 ["BackgroundTransparency"]
      113 DUPTABLE                         R20 K34 [{"DialogTitle", "DialogContent", "DialogActions"}]
      114 GETUPVAL                         R21 4
      115 GETTABLEKS                       R21 R21 K8 ["createElement"]
      117 GETUPVAL                         R22 5
      118 DUPTABLE                         R23 K35 [{"tag", "LayoutOrder"}]
      119 LOADK                            R24 K26 ["size-full-0 auto-y"]
      120 SETTABLEKS                       R24 R23 K23 ["tag"]
      122 LOADN                            R24 1
      123 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      125 DUPTABLE                         R24 K37 [{"Title"}]
      126 GETUPVAL                         R25 4
      127 GETTABLEKS                       R25 R25 K8 ["createElement"]
      129 GETUPVAL                         R26 6
      130 DUPTABLE                         R27 K39 [{"tag", "Text"}]
      131 LOADK                            R28 K40 ["size-full-0 auto-y content-inverse-emphasis text-wrap text-align-x-left text-title-small"]
      132 SETTABLEKS                       R28 R27 K23 ["tag"]
      134 LOADK                            R30 K36 ["Title"]
      135 GETTABLEKS                       R31 R0 K2 ["UpdateState"]
      137 GETTABLEKS                       R31 R31 K41 ["Name"]
      139 NAMECALL                         R28 R1 K42 ["getText"]
      141 CALL                             R28 3 1
      142 SETTABLEKS                       R28 R27 K38 ["Text"]
      144 CALL                             R25 2 1
      145 SETTABLEKS                       R25 R24 K36 ["Title"]
      147 CALL                             R21 3 1
      148 SETTABLEKS                       R21 R20 K31 ["DialogTitle"]
      150 GETUPVAL                         R21 4
      151 GETTABLEKS                       R21 R21 K8 ["createElement"]
      153 GETUPVAL                         R22 5
      154 DUPTABLE                         R23 K44 [{"tag", "LayoutOrder", "Visible"}]
      155 LOADK                            R24 K26 ["size-full-0 auto-y"]
      156 SETTABLEKS                       R24 R23 K23 ["tag"]
      158 LOADN                            R24 2
      159 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      161 SETTABLEKS                       R6 R23 K43 ["Visible"]
      163 DUPTABLE                         R24 K46 [{"DialogText"}]
      164 GETUPVAL                         R25 4
      165 GETTABLEKS                       R25 R25 K8 ["createElement"]
      167 GETUPVAL                         R26 6
      168 DUPTABLE                         R27 K48 [{"Text", "RichText", "tag"}]
      169 LOADK                            R30 K49 ["Tooltip"]
      170 GETTABLEKS                       R31 R0 K2 ["UpdateState"]
      172 GETTABLEKS                       R31 R31 K41 ["Name"]
      174 NAMECALL                         R28 R1 K42 ["getText"]
      176 CALL                             R28 3 1
      177 SETTABLEKS                       R28 R27 K38 ["Text"]
      179 LOADB                            R28 1
      180 SETTABLEKS                       R28 R27 K47 ["RichText"]
      182 LOADK                            R28 K50 ["text-wrap text-align-x-left text-align-y-top auto-y size-full-0 text-body-small content-inverse-default"]
      183 SETTABLEKS                       R28 R27 K23 ["tag"]
      185 CALL                             R25 2 1
      186 SETTABLEKS                       R25 R24 K45 ["DialogText"]
      188 CALL                             R21 3 1
      189 SETTABLEKS                       R21 R20 K32 ["DialogContent"]
      191 GETUPVAL                         R21 4
      192 GETTABLEKS                       R21 R21 K8 ["createElement"]
      194 GETUPVAL                         R22 5
      195 DUPTABLE                         R23 K51 [{"tag", "Visible", "LayoutOrder"}]
      196 LOADK                            R24 K52 ["row gap-small auto-y size-full-0 padding-top-small align-x-right"]
      197 SETTABLEKS                       R24 R23 K23 ["tag"]
      199 LOADB                            R24 1
      200 SETTABLEKS                       R24 R23 K43 ["Visible"]
      202 LOADN                            R24 3
      203 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      205 DUPTABLE                         R24 K55 [{"Continue", "ReleaseNotes"}]
      206 GETUPVAL                         R25 4
      207 GETTABLEKS                       R25 R25 K8 ["createElement"]
      209 GETUPVAL                         R26 7
      210 DUPTABLE                         R27 K62 [{"LayoutOrder", "Visible", "fillBehavior", "text", "size", "variant", "isLoading", "onActivated"}]
      211 LOADN                            R28 1
      212 SETTABLEKS                       R28 R27 K24 ["LayoutOrder"]
      214 NOT                              R28 R5
      215 SETTABLEKS                       R28 R27 K43 ["Visible"]
      217 GETUPVAL                         R28 8
      218 GETTABLEKS                       R28 R28 K63 ["FillBehavior"]
      220 GETTABLEKS                       R28 R28 K64 ["Fit"]
      222 SETTABLEKS                       R28 R27 K56 ["fillBehavior"]
      224 LOADK                            R30 K65 ["Action"]
      225 LOADK                            R31 K53 ["Continue"]
      226 NAMECALL                         R28 R1 K42 ["getText"]
      228 CALL                             R28 3 1
      229 SETTABLEKS                       R28 R27 K57 ["text"]
      231 GETUPVAL                         R28 8
      232 GETTABLEKS                       R28 R28 K66 ["InputSize"]
      234 GETTABLEKS                       R28 R28 K67 ["XSmall"]
      236 SETTABLEKS                       R28 R27 K58 ["size"]
      238 GETUPVAL                         R28 8
      239 GETTABLEKS                       R28 R28 K68 ["ButtonVariant"]
      241 GETTABLEKS                       R28 R28 K69 ["Emphasis"]
      243 SETTABLEKS                       R28 R27 K59 ["variant"]
      245 SETTABLEKS                       R7 R27 K60 ["isLoading"]
      247 NEWCLOSURE                       R28 P2
      248 CAPTURE                          VAL R2
      249 CAPTURE                          UPVAL U9
      250 CAPTURE                          VAL R0
      251 CAPTURE                          VAL R8
      252 SETTABLEKS                       R28 R27 K61 ["onActivated"]
      254 CALL                             R25 2 1
      255 SETTABLEKS                       R25 R24 K53 ["Continue"]
      257 GETUPVAL                         R25 4
      258 GETTABLEKS                       R25 R25 K8 ["createElement"]
      260 GETUPVAL                         R26 7
      261 DUPTABLE                         R27 K70 [{"LayoutOrder", "Visible", "fillBehavior", "text", "size", "variant", "onActivated"}]
      262 LOADN                            R28 2
      263 SETTABLEKS                       R28 R27 K24 ["LayoutOrder"]
      265 LOADB                            R28 1
      266 SETTABLEKS                       R28 R27 K43 ["Visible"]
      268 GETUPVAL                         R28 8
      269 GETTABLEKS                       R28 R28 K63 ["FillBehavior"]
      271 GETTABLEKS                       R28 R28 K64 ["Fit"]
      273 SETTABLEKS                       R28 R27 K56 ["fillBehavior"]
      275 LOADK                            R30 K65 ["Action"]
      276 LOADK                            R31 K71 ["ViewReleaseNotes"]
      277 NAMECALL                         R28 R1 K42 ["getText"]
      279 CALL                             R28 3 1
      280 SETTABLEKS                       R28 R27 K57 ["text"]
      282 GETUPVAL                         R28 8
      283 GETTABLEKS                       R28 R28 K66 ["InputSize"]
      285 GETTABLEKS                       R28 R28 K67 ["XSmall"]
      287 SETTABLEKS                       R28 R27 K58 ["size"]
      289 GETUPVAL                         R28 8
      290 GETTABLEKS                       R28 R28 K68 ["ButtonVariant"]
      292 GETTABLEKS                       R28 R28 K72 ["Link"]
      294 SETTABLEKS                       R28 R27 K59 ["variant"]
      296 NEWCLOSURE                       R28 P3
      297 CAPTURE                          VAL R0
      298 CAPTURE                          UPVAL U10
      299 CAPTURE                          UPVAL U11
      300 SETTABLEKS                       R28 R27 K61 ["onActivated"]
      302 CALL                             R25 2 1
      303 SETTABLEKS                       R25 R24 K54 ["ReleaseNotes"]
      305 CALL                             R21 3 1
      306 SETTABLEKS                       R21 R20 K33 ["DialogActions"]
      308 CALL                             R17 3 1
      309 SETTABLEKS                       R17 R16 K27 ["DialogBody"]
      311 CALL                             R13 3 1
      312 SETTABLEKS                       R13 R12 K21 ["DialogInner"]
      314 CALL                             R9 3 -1
      315 RETURN                           R9 -1

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
