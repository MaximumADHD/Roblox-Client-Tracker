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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["UpdateState"]
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
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["Util"]
        8 GETTABLEKS                       R2 R3 K3 ["StudioUri"]
       10 GETTABLEKS                       R1 R2 K4 ["fromAction"]
       12 LOADK                            R2 K5 ["UpdateManager"]
       13 LOADK                            R3 K6 ["Continue"]
       14 CALL                             R1 2 1
       15 MOVE                             R4 R1
       16 NAMECALL                         R2 R0 K7 ["ActivateAsync"]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K8 ["UpdateState"]
       22 GETIMPORT                        R3 K11 [Enum.UpdateState.UpdateAvailable]
       24 JUMPIFNOTEQ                      R2 R3 ; [+4]
       26 GETUPVAL                         R2 3
       27 LOADB                            R3 1
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["BrowserService"]
        3 JUMPIF                           R0 ; [+1]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 -1
        7 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 -1
        2 FASTCALL                         ASSERT ; [+2]
        3 GETIMPORT                        R1 K1 [assert]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["use"]
        9 CALL                             R1 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K2 ["use"]
       13 CALL                             R2 0 1
       14 NAMECALL                         R2 R2 K3 ["get"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 3
       18 LOADB                            R4 0
       19 CALL                             R3 1 2
       20 MOVE                             R5 R3
       21 JUMPIFNOT                        R5 ; [+8]
       22 GETTABLEKS                       R6 R0 K4 ["UpdateState"]
       24 GETIMPORT                        R7 K7 [Enum.UpdateState.UpdateInProgress]
       26 JUMPIFEQ                         R6 R7 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 GETUPVAL                         R6 4
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 NEWTABLE                         R8 0 1
       36 MOVE                             R9 R2
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R6 2 0
       40 MOVE                             R6 R5
       41 JUMPIF                           R6 ; [+8]
       42 GETTABLEKS                       R7 R0 K4 ["UpdateState"]
       44 GETIMPORT                        R8 K9 [Enum.UpdateState.UpdateFailed]
       46 JUMPIFEQ                         R7 R8 ; [+2]
       48 LOADB                            R6 0 +1
       49 LOADB                            R6 1
       50 GETUPVAL                         R7 3
       51 LOADB                            R8 0
       52 CALL                             R7 1 2
       53 GETUPVAL                         R9 4
       54 NEWCLOSURE                       R10 P1
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R11 0 1
       59 GETTABLEKS                       R12 R0 K4 ["UpdateState"]
       61 SETLIST                          R11 R12 1 [1]
       63 CALL                             R9 2 0
       64 GETUPVAL                         R10 5
       65 GETTABLEKS                       R9 R10 K10 ["createElement"]
       67 LOADK                            R10 K11 ["Frame"]
       68 NEWTABLE                         R11 8 0
       70 GETIMPORT                        R12 K14 [UDim2.fromOffset]
       72 LOADN                            R13 64
       73 LOADN                            R14 0
       74 CALL                             R12 2 1
       75 SETTABLEKS                       R12 R11 K15 ["Size"]
       77 LOADN                            R12 0
       78 SETTABLEKS                       R12 R11 K16 ["BorderSizePixel"]
       80 GETIMPORT                        R12 K19 [Enum.AutomaticSize.Y]
       82 SETTABLEKS                       R12 R11 K17 ["AutomaticSize"]
       84 LOADN                            R12 1
       85 SETTABLEKS                       R12 R11 K20 ["BackgroundTransparency"]
       87 GETUPVAL                         R13 5
       88 GETTABLEKS                       R12 R13 K21 ["Tag"]
       90 LOADK                            R13 K22 ["X-FitY X-Column X-Middle X-Center X-Clip"]
       91 SETTABLE                         R13 R11 R12
       92 DUPTABLE                         R12 K24 [{"DialogInner"}]
       93 GETUPVAL                         R14 5
       94 GETTABLEKS                       R13 R14 K10 ["createElement"]
       96 GETUPVAL                         R14 6
       97 DUPTABLE                         R15 K27 [{"tag", "LayoutOrder", "BackgroundTransparency"}]
       98 LOADK                            R16 K28 ["size-full-0 auto-y"]
       99 SETTABLEKS                       R16 R15 K25 ["tag"]
      101 LOADN                            R16 1
      102 SETTABLEKS                       R16 R15 K26 ["LayoutOrder"]
      104 LOADN                            R16 1
      105 SETTABLEKS                       R16 R15 K20 ["BackgroundTransparency"]
      107 DUPTABLE                         R16 K30 [{"DialogBody"}]
      108 GETUPVAL                         R18 5
      109 GETTABLEKS                       R17 R18 K10 ["createElement"]
      111 GETUPVAL                         R18 6
      112 DUPTABLE                         R19 K31 [{"tag", "BackgroundTransparency"}]
      113 LOADK                            R20 K32 ["size-full-0 auto-y col padding-medium gap-small"]
      114 SETTABLEKS                       R20 R19 K25 ["tag"]
      116 LOADN                            R20 1
      117 SETTABLEKS                       R20 R19 K20 ["BackgroundTransparency"]
      119 DUPTABLE                         R20 K36 [{"DialogTitle", "DialogContent", "DialogActions"}]
      120 GETUPVAL                         R22 5
      121 GETTABLEKS                       R21 R22 K10 ["createElement"]
      123 GETUPVAL                         R22 6
      124 DUPTABLE                         R23 K37 [{"tag", "LayoutOrder"}]
      125 LOADK                            R24 K28 ["size-full-0 auto-y"]
      126 SETTABLEKS                       R24 R23 K25 ["tag"]
      128 LOADN                            R24 1
      129 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      131 DUPTABLE                         R24 K39 [{"Title"}]
      132 GETUPVAL                         R26 5
      133 GETTABLEKS                       R25 R26 K10 ["createElement"]
      135 GETUPVAL                         R26 7
      136 DUPTABLE                         R27 K41 [{"tag", "Text"}]
      137 LOADK                            R28 K42 ["size-full-0 auto-y content-inverse-emphasis text-wrap text-align-x-left text-title-small"]
      138 SETTABLEKS                       R28 R27 K25 ["tag"]
      140 LOADK                            R30 K38 ["Title"]
      141 GETTABLEKS                       R32 R0 K4 ["UpdateState"]
      143 GETTABLEKS                       R31 R32 K43 ["Name"]
      145 NAMECALL                         R28 R1 K44 ["getText"]
      147 CALL                             R28 3 1
      148 SETTABLEKS                       R28 R27 K40 ["Text"]
      150 CALL                             R25 2 1
      151 SETTABLEKS                       R25 R24 K38 ["Title"]
      153 CALL                             R21 3 1
      154 SETTABLEKS                       R21 R20 K33 ["DialogTitle"]
      156 GETUPVAL                         R22 5
      157 GETTABLEKS                       R21 R22 K10 ["createElement"]
      159 GETUPVAL                         R22 6
      160 DUPTABLE                         R23 K46 [{"tag", "LayoutOrder", "Visible"}]
      161 LOADK                            R24 K28 ["size-full-0 auto-y"]
      162 SETTABLEKS                       R24 R23 K25 ["tag"]
      164 LOADN                            R24 2
      165 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      167 SETTABLEKS                       R6 R23 K45 ["Visible"]
      169 DUPTABLE                         R24 K48 [{"DialogText"}]
      170 GETUPVAL                         R26 5
      171 GETTABLEKS                       R25 R26 K10 ["createElement"]
      173 GETUPVAL                         R26 7
      174 DUPTABLE                         R27 K50 [{"Text", "RichText", "tag"}]
      175 LOADK                            R30 K51 ["Tooltip"]
      176 GETTABLEKS                       R32 R0 K4 ["UpdateState"]
      178 GETTABLEKS                       R31 R32 K43 ["Name"]
      180 NAMECALL                         R28 R1 K44 ["getText"]
      182 CALL                             R28 3 1
      183 SETTABLEKS                       R28 R27 K40 ["Text"]
      185 LOADB                            R28 1
      186 SETTABLEKS                       R28 R27 K49 ["RichText"]
      188 LOADK                            R28 K52 ["text-wrap text-align-x-left text-align-y-top auto-y size-full-0 text-body-small content-inverse-default"]
      189 SETTABLEKS                       R28 R27 K25 ["tag"]
      191 CALL                             R25 2 1
      192 SETTABLEKS                       R25 R24 K47 ["DialogText"]
      194 CALL                             R21 3 1
      195 SETTABLEKS                       R21 R20 K34 ["DialogContent"]
      197 GETUPVAL                         R22 5
      198 GETTABLEKS                       R21 R22 K10 ["createElement"]
      200 GETUPVAL                         R22 6
      201 DUPTABLE                         R23 K53 [{"tag", "Visible", "LayoutOrder"}]
      202 LOADK                            R24 K54 ["row gap-small auto-y size-full-0 padding-top-small align-x-right"]
      203 SETTABLEKS                       R24 R23 K25 ["tag"]
      205 LOADB                            R24 1
      206 SETTABLEKS                       R24 R23 K45 ["Visible"]
      208 LOADN                            R24 3
      209 SETTABLEKS                       R24 R23 K26 ["LayoutOrder"]
      211 DUPTABLE                         R24 K57 [{"Continue", "ReleaseNotes"}]
      212 GETUPVAL                         R26 5
      213 GETTABLEKS                       R25 R26 K10 ["createElement"]
      215 GETUPVAL                         R26 8
      216 DUPTABLE                         R27 K64 [{"LayoutOrder", "Visible", "fillBehavior", "text", "size", "variant", "isLoading", "onActivated"}]
      217 LOADN                            R28 1
      218 SETTABLEKS                       R28 R27 K26 ["LayoutOrder"]
      220 NOT                              R28 R5
      221 SETTABLEKS                       R28 R27 K45 ["Visible"]
      223 GETUPVAL                         R30 9
      224 GETTABLEKS                       R29 R30 K65 ["FillBehavior"]
      226 GETTABLEKS                       R28 R29 K66 ["Fit"]
      228 SETTABLEKS                       R28 R27 K58 ["fillBehavior"]
      230 LOADK                            R30 K67 ["Action"]
      231 LOADK                            R31 K55 ["Continue"]
      232 NAMECALL                         R28 R1 K44 ["getText"]
      234 CALL                             R28 3 1
      235 SETTABLEKS                       R28 R27 K59 ["text"]
      237 GETUPVAL                         R30 9
      238 GETTABLEKS                       R29 R30 K68 ["InputSize"]
      240 GETTABLEKS                       R28 R29 K69 ["XSmall"]
      242 SETTABLEKS                       R28 R27 K60 ["size"]
      244 GETUPVAL                         R30 9
      245 GETTABLEKS                       R29 R30 K70 ["ButtonVariant"]
      247 GETTABLEKS                       R28 R29 K71 ["Emphasis"]
      249 SETTABLEKS                       R28 R27 K61 ["variant"]
      251 SETTABLEKS                       R7 R27 K62 ["isLoading"]
      253 NEWCLOSURE                       R28 P2
      254 CAPTURE                          VAL R2
      255 CAPTURE                          UPVAL U10
      256 CAPTURE                          VAL R0
      257 CAPTURE                          VAL R8
      258 SETTABLEKS                       R28 R27 K63 ["onActivated"]
      260 CALL                             R25 2 1
      261 SETTABLEKS                       R25 R24 K55 ["Continue"]
      263 GETUPVAL                         R26 5
      264 GETTABLEKS                       R25 R26 K10 ["createElement"]
      266 GETUPVAL                         R26 8
      267 DUPTABLE                         R27 K72 [{"LayoutOrder", "Visible", "fillBehavior", "text", "size", "variant", "onActivated"}]
      268 LOADN                            R28 2
      269 SETTABLEKS                       R28 R27 K26 ["LayoutOrder"]
      271 LOADB                            R28 1
      272 SETTABLEKS                       R28 R27 K45 ["Visible"]
      274 GETUPVAL                         R30 9
      275 GETTABLEKS                       R29 R30 K65 ["FillBehavior"]
      277 GETTABLEKS                       R28 R29 K66 ["Fit"]
      279 SETTABLEKS                       R28 R27 K58 ["fillBehavior"]
      281 LOADK                            R30 K67 ["Action"]
      282 LOADK                            R31 K73 ["ViewReleaseNotes"]
      283 NAMECALL                         R28 R1 K44 ["getText"]
      285 CALL                             R28 3 1
      286 SETTABLEKS                       R28 R27 K59 ["text"]
      288 GETUPVAL                         R30 9
      289 GETTABLEKS                       R29 R30 K68 ["InputSize"]
      291 GETTABLEKS                       R28 R29 K69 ["XSmall"]
      293 SETTABLEKS                       R28 R27 K60 ["size"]
      295 GETUPVAL                         R30 9
      296 GETTABLEKS                       R29 R30 K70 ["ButtonVariant"]
      298 GETTABLEKS                       R28 R29 K74 ["Link"]
      300 SETTABLEKS                       R28 R27 K61 ["variant"]
      302 NEWCLOSURE                       R28 P3
      303 CAPTURE                          VAL R0
      304 CAPTURE                          UPVAL U11
      305 CAPTURE                          UPVAL U12
      306 SETTABLEKS                       R28 R27 K63 ["onActivated"]
      308 CALL                             R25 2 1
      309 SETTABLEKS                       R25 R24 K56 ["ReleaseNotes"]
      311 CALL                             R21 3 1
      312 SETTABLEKS                       R21 R20 K35 ["DialogActions"]
      314 CALL                             R17 3 1
      315 SETTABLEKS                       R17 R16 K29 ["DialogBody"]
      317 CALL                             R13 3 1
      318 SETTABLEKS                       R13 R12 K23 ["DialogInner"]
      320 CALL                             R9 3 -1
      321 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K11 [game]
       30 LOADK                            R6 K12 ["BrowserService"]
       31 NAMECALL                         R4 R4 K13 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R8 R0 K14 ["Src"]
       38 GETTABLEKS                       R7 R8 K15 ["SharedFlags"]
       40 GETTABLEKS                       R6 R7 K16 ["getFeatureStudioBackgroundUpdates"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R9 R0 K14 ["Src"]
       47 GETTABLEKS                       R8 R9 K15 ["SharedFlags"]
       49 GETTABLEKS                       R7 R8 K17 ["getFStringLatestReleaseNotesURL"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R7 R1 K18 ["useEffect"]
       54 GETTABLEKS                       R8 R1 K19 ["useState"]
       56 GETTABLEKS                       R9 R2 K20 ["Button"]
       58 GETTABLEKS                       R10 R2 K21 ["Enums"]
       60 GETTABLEKS                       R11 R2 K22 ["Text"]
       62 GETTABLEKS                       R12 R2 K23 ["View"]
       64 GETTABLEKS                       R13 R3 K24 ["ContextServices"]
       66 GETTABLEKS                       R14 R13 K25 ["Localization"]
       68 GETTABLEKS                       R15 R13 K26 ["Plugin"]
       70 DUPCLOSURE                       R16 K27 [PROTO_7]
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R14
       73 CAPTURE                          VAL R15
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R6
       84 RETURN                           R16 1
