PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioWidgetsService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 GETIMPORT                        R0 K1 [game]
        9 LOADK                            R2 K4 ["TextService"]
       10 NAMECALL                         R0 R0 K3 ["GetService"]
       12 CALL                             R0 2 1
       13 SETUPVAL                         R0 1
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onSizeChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["sendClickedTelemetry"]
        9 LOADK                            R1 K2 ["get_consent"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K3 ["hideDialog"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["sendClickedTelemetry"]
        9 LOADK                            R1 K2 ["establish_TC"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K3 ["hideDialog"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["Hooks"]
        5 GETTABLEKS                       R2 R3 K1 ["useTokens"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 NAMECALL                         R3 R3 K2 ["use"]
       11 CALL                             R3 1 1
       12 LOADK                            R6 K3 ["EstablishTrustDialog"]
       13 LOADK                            R7 K4 ["PrimaryButton"]
       14 NAMECALL                         R4 R3 K5 ["getText"]
       16 CALL                             R4 3 1
       17 LOADK                            R7 K3 ["EstablishTrustDialog"]
       18 LOADK                            R8 K6 ["SecondaryButton"]
       19 NAMECALL                         R5 R3 K5 ["getText"]
       21 CALL                             R5 3 1
       22 GETUPVAL                         R6 3
       23 MOVE                             R9 R4
       24 MOVE                             R10 R5
       25 CONCAT                           R8 R9 R10
       26 GETTABLEKS                       R11 R2 K7 ["Typography"]
       28 GETTABLEKS                       R10 R11 K8 ["TitleSmall"]
       30 GETTABLEKS                       R9 R10 K9 ["FontSize"]
       32 GETIMPORT                        R10 K13 [Enum.Font.BuilderSansBold]
       34 GETIMPORT                        R11 K16 [Vector2.new]
       36 LOADK                            R12 K17 [∞]
       37 LOADN                            R13 1
       38 CALL                             R11 2 -1
       39 NAMECALL                         R6 R6 K18 ["GetTextSize"]
       41 CALL                             R6 -1 1
       42 GETUPVAL                         R7 4
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R8 R9 K19 ["View"]
       46 DUPTABLE                         R9 K24 [{"tag", "onAbsoluteSizeChanged", "testId", "Size"}]
       47 LOADK                            R10 K25 ["component-dialog-view bg-surface-200 col flex-y-between auto-y gap-small padding-x-large padding-y-medium"]
       48 SETTABLEKS                       R10 R9 K20 ["tag"]
       50 NEWCLOSURE                       R10 P0
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R10 R9 K21 ["onAbsoluteSizeChanged"]
       54 LOADK                            R10 K26 ["--dialog"]
       55 SETTABLEKS                       R10 R9 K22 ["testId"]
       57 GETIMPORT                        R10 K29 [UDim2.fromOffset]
       59 GETTABLEKS                       R14 R6 K31 ["X"]
       61 FASTCALL1                        MATH_CEIL R14 ; [+2]
       62 GETIMPORT                        R13 K34 [math.ceil]
       64 CALL                             R13 1 1
       65 ADDK                             R12 R13 K30 [64]
       66 FASTCALL2K                       MATH_MAX R12 K35 ; [+4]
       68 LOADK                            R13 K35 [350]
       69 GETIMPORT                        R11 K37 [math.max]
       71 CALL                             R11 2 1
       72 LOADN                            R12 0
       73 CALL                             R10 2 1
       74 SETTABLEKS                       R10 R9 K23 ["Size"]
       76 DUPTABLE                         R10 K40 [{"TextRow", "ButtonGroup"}]
       77 GETUPVAL                         R11 4
       78 GETUPVAL                         R13 1
       79 GETTABLEKS                       R12 R13 K19 ["View"]
       81 DUPTABLE                         R13 K42 [{"tag", "LayoutOrder"}]
       82 LOADK                            R14 K43 ["row size-full-0 auto-y flex-x-between items-start gap-medium padding-bottom-medium"]
       83 SETTABLEKS                       R14 R13 K20 ["tag"]
       85 MOVE                             R14 R1
       86 CALL                             R14 0 1
       87 SETTABLEKS                       R14 R13 K41 ["LayoutOrder"]
       89 DUPTABLE                         R14 K45 [{"TextColumn"}]
       90 GETUPVAL                         R15 4
       91 GETUPVAL                         R17 1
       92 GETTABLEKS                       R16 R17 K19 ["View"]
       94 DUPTABLE                         R17 K42 [{"tag", "LayoutOrder"}]
       95 LOADK                            R18 K46 ["fill col auto-y gap-medium"]
       96 SETTABLEKS                       R18 R17 K20 ["tag"]
       98 MOVE                             R18 R1
       99 CALL                             R18 0 1
      100 SETTABLEKS                       R18 R17 K41 ["LayoutOrder"]
      102 DUPTABLE                         R18 K49 [{"Title", "Description"}]
      103 GETUPVAL                         R19 4
      104 GETUPVAL                         R21 1
      105 GETTABLEKS                       R20 R21 K50 ["Text"]
      107 DUPTABLE                         R21 K52 [{"tag", "fontStyle", "Text", "LayoutOrder", "testId"}]
      108 LOADK                            R22 K53 ["size-full-0 auto-y text-wrap text-align-x-left text-align-y-center"]
      109 SETTABLEKS                       R22 R21 K20 ["tag"]
      111 GETTABLEKS                       R23 R2 K7 ["Typography"]
      113 GETTABLEKS                       R22 R23 K54 ["TitleMedium"]
      115 SETTABLEKS                       R22 R21 K51 ["fontStyle"]
      117 LOADK                            R24 K3 ["EstablishTrustDialog"]
      118 LOADK                            R25 K47 ["Title"]
      119 NAMECALL                         R22 R3 K5 ["getText"]
      121 CALL                             R22 3 1
      122 SETTABLEKS                       R22 R21 K50 ["Text"]
      124 MOVE                             R22 R1
      125 CALL                             R22 0 1
      126 SETTABLEKS                       R22 R21 K41 ["LayoutOrder"]
      128 LOADK                            R22 K55 ["--dialog-title"]
      129 SETTABLEKS                       R22 R21 K22 ["testId"]
      131 CALL                             R19 2 1
      132 SETTABLEKS                       R19 R18 K47 ["Title"]
      134 GETUPVAL                         R19 4
      135 GETUPVAL                         R21 1
      136 GETTABLEKS                       R20 R21 K50 ["Text"]
      138 DUPTABLE                         R21 K52 [{"tag", "fontStyle", "Text", "LayoutOrder", "testId"}]
      139 LOADK                            R22 K56 ["size-full-0 auto-y text-wrap text-align-x-left text-align-y-top grow"]
      140 SETTABLEKS                       R22 R21 K20 ["tag"]
      142 GETTABLEKS                       R23 R2 K7 ["Typography"]
      144 GETTABLEKS                       R22 R23 K57 ["BodySmall"]
      146 SETTABLEKS                       R22 R21 K51 ["fontStyle"]
      148 LOADK                            R24 K3 ["EstablishTrustDialog"]
      149 LOADK                            R25 K58 ["Body"]
      150 NAMECALL                         R22 R3 K5 ["getText"]
      152 CALL                             R22 3 1
      153 SETTABLEKS                       R22 R21 K50 ["Text"]
      155 MOVE                             R22 R1
      156 CALL                             R22 0 1
      157 SETTABLEKS                       R22 R21 K41 ["LayoutOrder"]
      159 LOADK                            R22 K59 ["--dialog-description"]
      160 SETTABLEKS                       R22 R21 K22 ["testId"]
      162 CALL                             R19 2 1
      163 SETTABLEKS                       R19 R18 K48 ["Description"]
      165 CALL                             R15 3 1
      166 SETTABLEKS                       R15 R14 K44 ["TextColumn"]
      168 CALL                             R11 3 1
      169 SETTABLEKS                       R11 R10 K38 ["TextRow"]
      171 GETUPVAL                         R11 4
      172 GETUPVAL                         R13 1
      173 GETTABLEKS                       R12 R13 K19 ["View"]
      175 DUPTABLE                         R13 K60 [{"tag", "LayoutOrder", "testId"}]
      176 NEWTABLE                         R14 1 0
      178 LOADB                            R15 1
      179 SETTABLEKS                       R15 R14 K61 ["component-dialog-button-group row size-full-0 auto-y items-stretch gap-small align-x-right"]
      181 SETTABLEKS                       R14 R13 K20 ["tag"]
      183 MOVE                             R14 R1
      184 CALL                             R14 0 1
      185 SETTABLEKS                       R14 R13 K41 ["LayoutOrder"]
      187 LOADK                            R14 K62 ["--dialog-button-group"]
      188 SETTABLEKS                       R14 R13 K22 ["testId"]
      190 DUPTABLE                         R14 K64 [{"PrimaryAndSecondary"}]
      191 GETUPVAL                         R15 4
      192 GETUPVAL                         R17 1
      193 GETTABLEKS                       R16 R17 K19 ["View"]
      195 DUPTABLE                         R17 K42 [{"tag", "LayoutOrder"}]
      196 LOADK                            R18 K65 ["row auto-xy flex-x-between items-stretch gap-small"]
      197 SETTABLEKS                       R18 R17 K20 ["tag"]
      199 MOVE                             R18 R1
      200 CALL                             R18 0 1
      201 SETTABLEKS                       R18 R17 K41 ["LayoutOrder"]
      203 DUPTABLE                         R18 K68 [{"Primary", "Secondary"}]
      204 GETUPVAL                         R19 4
      205 GETUPVAL                         R21 1
      206 GETTABLEKS                       R20 R21 K19 ["View"]
      208 DUPTABLE                         R21 K42 [{"tag", "LayoutOrder"}]
      209 LOADK                            R22 K69 ["auto-xy"]
      210 SETTABLEKS                       R22 R21 K20 ["tag"]
      212 MOVE                             R22 R1
      213 CALL                             R22 0 1
      214 SETTABLEKS                       R22 R21 K41 ["LayoutOrder"]
      216 DUPTABLE                         R22 K71 [{"Button"}]
      217 GETUPVAL                         R23 4
      218 GETUPVAL                         R25 1
      219 GETTABLEKS                       R24 R25 K70 ["Button"]
      221 DUPTABLE                         R25 K77 [{"text", "variant", "size", "fillBehavior", "onActivated", "testId"}]
      222 LOADK                            R28 K3 ["EstablishTrustDialog"]
      223 LOADK                            R29 K4 ["PrimaryButton"]
      224 NAMECALL                         R26 R3 K5 ["getText"]
      226 CALL                             R26 3 1
      227 SETTABLEKS                       R26 R25 K72 ["text"]
      229 GETUPVAL                         R29 1
      230 GETTABLEKS                       R28 R29 K78 ["Enums"]
      232 GETTABLEKS                       R27 R28 K79 ["ButtonVariant"]
      234 GETTABLEKS                       R26 R27 K80 ["Emphasis"]
      236 SETTABLEKS                       R26 R25 K73 ["variant"]
      238 GETUPVAL                         R29 1
      239 GETTABLEKS                       R28 R29 K78 ["Enums"]
      241 GETTABLEKS                       R27 R28 K81 ["InputSize"]
      243 GETTABLEKS                       R26 R27 K82 ["XSmall"]
      245 SETTABLEKS                       R26 R25 K74 ["size"]
      247 GETUPVAL                         R29 1
      248 GETTABLEKS                       R28 R29 K78 ["Enums"]
      250 GETTABLEKS                       R27 R28 K83 ["FillBehavior"]
      252 GETTABLEKS                       R26 R27 K84 ["Fill"]
      254 SETTABLEKS                       R26 R25 K75 ["fillBehavior"]
      256 NEWCLOSURE                       R26 P1
      257 CAPTURE                          UPVAL U5
      258 CAPTURE                          UPVAL U6
      259 CAPTURE                          VAL R0
      260 SETTABLEKS                       R26 R25 K76 ["onActivated"]
      262 LOADK                            R26 K85 ["--dialog-button-primary"]
      263 SETTABLEKS                       R26 R25 K22 ["testId"]
      265 CALL                             R23 2 1
      266 SETTABLEKS                       R23 R22 K70 ["Button"]
      268 CALL                             R19 3 1
      269 SETTABLEKS                       R19 R18 K66 ["Primary"]
      271 GETUPVAL                         R19 4
      272 GETUPVAL                         R21 1
      273 GETTABLEKS                       R20 R21 K19 ["View"]
      275 DUPTABLE                         R21 K42 [{"tag", "LayoutOrder"}]
      276 LOADK                            R22 K69 ["auto-xy"]
      277 SETTABLEKS                       R22 R21 K20 ["tag"]
      279 MOVE                             R22 R1
      280 CALL                             R22 0 1
      281 SETTABLEKS                       R22 R21 K41 ["LayoutOrder"]
      283 DUPTABLE                         R22 K71 [{"Button"}]
      284 GETUPVAL                         R23 4
      285 GETUPVAL                         R25 1
      286 GETTABLEKS                       R24 R25 K70 ["Button"]
      288 DUPTABLE                         R25 K77 [{"text", "variant", "size", "fillBehavior", "onActivated", "testId"}]
      289 LOADK                            R28 K3 ["EstablishTrustDialog"]
      290 LOADK                            R29 K6 ["SecondaryButton"]
      291 NAMECALL                         R26 R3 K5 ["getText"]
      293 CALL                             R26 3 1
      294 SETTABLEKS                       R26 R25 K72 ["text"]
      296 GETUPVAL                         R29 1
      297 GETTABLEKS                       R28 R29 K78 ["Enums"]
      299 GETTABLEKS                       R27 R28 K79 ["ButtonVariant"]
      301 GETTABLEKS                       R26 R27 K86 ["Standard"]
      303 SETTABLEKS                       R26 R25 K73 ["variant"]
      305 GETUPVAL                         R29 1
      306 GETTABLEKS                       R28 R29 K78 ["Enums"]
      308 GETTABLEKS                       R27 R28 K81 ["InputSize"]
      310 GETTABLEKS                       R26 R27 K82 ["XSmall"]
      312 SETTABLEKS                       R26 R25 K74 ["size"]
      314 GETUPVAL                         R29 1
      315 GETTABLEKS                       R28 R29 K78 ["Enums"]
      317 GETTABLEKS                       R27 R28 K83 ["FillBehavior"]
      319 GETTABLEKS                       R26 R27 K84 ["Fill"]
      321 SETTABLEKS                       R26 R25 K75 ["fillBehavior"]
      323 NEWCLOSURE                       R26 P2
      324 CAPTURE                          UPVAL U5
      325 CAPTURE                          UPVAL U7
      326 CAPTURE                          VAL R0
      327 SETTABLEKS                       R26 R25 K76 ["onActivated"]
      329 LOADK                            R26 K87 ["--dialog-button-secondary"]
      330 SETTABLEKS                       R26 R25 K22 ["testId"]
      332 CALL                             R23 2 1
      333 SETTABLEKS                       R23 R22 K70 ["Button"]
      335 CALL                             R19 3 1
      336 SETTABLEKS                       R19 R18 K67 ["Secondary"]
      338 CALL                             R15 3 1
      339 SETTABLEKS                       R15 R14 K63 ["PrimaryAndSecondary"]
      341 CALL                             R11 3 1
      342 SETTABLEKS                       R11 R10 K39 ["ButtonGroup"]
      344 CALL                             R7 3 -1
      345 RETURN                           R7 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["skipTelemetry"]
        6 JUMPIF                           R0 ; [+24]
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 3
        9 DUPTABLE                         R3 K5 [{"telemetryType", "upsellEntrySurface", "userId", "studioSid"}]
       10 LOADK                            R4 K6 ["load"]
       11 SETTABLEKS                       R4 R3 K1 ["telemetryType"]
       13 LOADK                            R4 K7 ["start_page_establish_TC_dialog"]
       14 SETTABLEKS                       R4 R3 K2 ["upsellEntrySurface"]
       16 GETUPVAL                         R4 4
       17 NAMECALL                         R4 R4 K8 ["GetUserId"]
       19 CALL                             R4 1 1
       20 SETTABLEKS                       R4 R3 K3 ["userId"]
       22 GETUPVAL                         R4 5
       23 NAMECALL                         R4 R4 K9 ["GetSessionId"]
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K4 ["studioSid"]
       28 NAMECALL                         R0 R0 K10 ["log"]
       30 CALL                             R0 3 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K5 [{"telemetryType", "upsellEntrySurface", "userId", "studioSid", "action"}]
        3 LOADK                            R5 K6 ["click"]
        4 SETTABLEKS                       R5 R4 K0 ["telemetryType"]
        6 LOADK                            R5 K7 ["start_page_establish_TC_dialog"]
        7 SETTABLEKS                       R5 R4 K1 ["upsellEntrySurface"]
        9 GETUPVAL                         R5 2
       10 NAMECALL                         R5 R5 K8 ["GetUserId"]
       12 CALL                             R5 1 1
       13 SETTABLEKS                       R5 R4 K2 ["userId"]
       15 GETUPVAL                         R5 3
       16 NAMECALL                         R5 R5 K9 ["GetSessionId"]
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R4 K3 ["studioSid"]
       21 SETTABLEKS                       R0 R4 K4 ["action"]
       23 NAMECALL                         R1 R1 K10 ["log"]
       25 CALL                             R1 3 0
       26 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 1
        1 LOADK                            R2 K0 ["StartPage_EstablishTrustDialog"]
        2 DUPTABLE                         R3 K6 [{"Id", "InitialEnabled", "Modal", "Size", "DisableTitleBar"}]
        3 LOADK                            R4 K0 ["StartPage_EstablishTrustDialog"]
        4 SETTABLEKS                       R4 R3 K1 ["Id"]
        6 LOADB                            R4 1
        7 SETTABLEKS                       R4 R3 K2 ["InitialEnabled"]
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K3 ["Modal"]
       12 GETUPVAL                         R4 2
       13 SETTABLEKS                       R4 R3 K4 ["Size"]
       15 LOADB                            R4 0
       16 SETTABLEKS                       R4 R3 K5 ["DisableTitleBar"]
       18 NAMECALL                         R0 R0 K7 ["CreateQWidgetPluginGui"]
       20 CALL                             R0 3 1
       21 SETUPVAL                         R0 0
       22 GETUPVAL                         R0 3
       23 GETUPVAL                         R1 0
       24 CALL                             R0 1 0
       25 GETUPVAL                         R1 5
       26 GETTABLEKS                       R0 R1 K8 ["createRoot"]
       28 GETUPVAL                         R1 0
       29 CALL                             R0 1 1
       30 SETUPVAL                         R0 4
       31 GETUPVAL                         R0 6
       32 GETUPVAL                         R1 4
       33 CALL                             R0 1 0
       34 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K3 ["Destroy"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 2
       13 NAMECALL                         R0 R0 K4 ["unmount"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 3
       17 LOADNIL                          R1
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 4
       20 LOADNIL                          R1
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETIMPORT                        R2 K2 [task.spawn]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          REF R1
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CALL                             R2 1 1
       13 NEWCLOSURE                       R3 P1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          REF R0
       16 CAPTURE                          REF R1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U4
       19 CLOSEUPVALS                      R0
       20 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        7 GETUPVAL                         R0 0
        8 LOADK                            R2 K1 ["PluginGui"]
        9 NAMECALL                         R0 R0 K2 ["IsA"]
       11 CALL                             R0 2 1
       12 JUMPIFNOT                        R0 ; [+16]
       13 GETUPVAL                         R0 2
       14 JUMPIFNOT                        R0 ; [+14]
       15 GETUPVAL                         R0 2
       16 GETUPVAL                         R2 0
       17 NAMECALL                         R0 R0 K3 ["GetWidgetFromPluginGui"]
       19 CALL                             R0 2 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K4 ["X"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R3 R4 K5 ["Y"]
       26 NAMECALL                         R0 R0 K6 ["SetFixedSize"]
       28 CALL                             R0 3 0
       29 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 0
        3 LOADK                            R2 K0 ["PluginGui"]
        4 NAMECALL                         R0 R0 K1 ["IsA"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K2 ["BindToClose"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 0
        3 LOADK                            R2 K0 ["PluginGui"]
        4 NAMECALL                         R0 R0 K1 ["IsA"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R0 0
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 NAMECALL                         R0 R0 K2 ["BindToClose"]
       13 CALL                             R0 2 0
       14 NEWCLOSURE                       R0 P1
       15 CAPTURE                          UPVAL U0
       16 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["WidgetRef"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["WidgetRef"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["current"]
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["WidgetRef"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["WidgetRef"]
        7 GETUPVAL                         R1 1
        8 SETTABLEKS                       R1 R0 K1 ["current"]
       10 NEWCLOSURE                       R0 P0
       11 CAPTURE                          UPVAL U0
       12 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 GETUPVAL                         R2 1
        3 FASTCALL1                        ASSERT R2 ; [+2]
        4 GETIMPORT                        R1 K1 [assert]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 NAMECALL                         R1 R1 K2 ["use"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 3
       12 NAMECALL                         R2 R2 K2 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 4
       16 NAMECALL                         R3 R3 K2 ["use"]
       18 CALL                             R3 1 1
       19 NAMECALL                         R4 R3 K3 ["get"]
       21 CALL                             R4 1 1
       22 GETUPVAL                         R5 5
       23 NAMECALL                         R5 R5 K2 ["use"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R7 6
       27 GETTABLEKS                       R6 R7 K4 ["useState"]
       29 LOADB                            R7 0
       30 CALL                             R6 1 2
       31 GETUPVAL                         R9 6
       32 GETTABLEKS                       R8 R9 K5 ["useCallback"]
       34 NEWCLOSURE                       R9 P0
       35 CAPTURE                          VAL R7
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R5
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U9
       41 NEWTABLE                         R10 0 2
       43 MOVE                             R11 R7
       44 GETTABLEKS                       R12 R0 K6 ["skipTelemetry"]
       46 SETLIST                          R10 R11 2 [1]
       48 CALL                             R8 2 1
       49 GETUPVAL                         R10 6
       50 GETTABLEKS                       R9 R10 K5 ["useCallback"]
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R11 0 1
       56 MOVE                             R12 R7
       57 SETLIST                          R11 R12 1 [1]
       59 CALL                             R9 2 1
       60 GETUPVAL                         R11 6
       61 GETTABLEKS                       R10 R11 K5 ["useCallback"]
       63 NEWCLOSURE                       R11 P2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          UPVAL U9
       68 NEWTABLE                         R12 0 0
       70 CALL                             R10 2 1
       71 GETUPVAL                         R12 6
       72 GETTABLEKS                       R11 R12 K4 ["useState"]
       74 GETIMPORT                        R12 K9 [Vector2.new]
       76 LOADN                            R13 1
       77 LOADN                            R14 1
       78 CALL                             R12 2 -1
       79 CALL                             R11 -1 2
       80 GETUPVAL                         R14 6
       81 GETTABLEKS                       R13 R14 K4 ["useState"]
       83 LOADNIL                          R14
       84 CALL                             R13 1 2
       85 GETUPVAL                         R16 6
       86 GETTABLEKS                       R15 R16 K4 ["useState"]
       88 LOADNIL                          R16
       89 CALL                             R15 1 2
       90 GETUPVAL                         R18 6
       91 GETTABLEKS                       R17 R18 K10 ["useEffect"]
       93 NEWCLOSURE                       R18 P3
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R14
       97 CAPTURE                          UPVAL U11
       98 CAPTURE                          VAL R16
       99 NEWTABLE                         R19 0 5
      101 MOVE                             R20 R4
      102 LOADK                            R21 K11 ["StartPage_EstablishTrustDialog"]
      103 MOVE                             R22 R11
      104 MOVE                             R23 R14
      105 MOVE                             R24 R16
      106 SETLIST                          R19 R20 5 [1]
      108 CALL                             R17 2 0
      109 GETUPVAL                         R18 6
      110 GETTABLEKS                       R17 R18 K10 ["useEffect"]
      112 NEWCLOSURE                       R18 P4
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R6
      115 CAPTURE                          UPVAL U12
      116 CAPTURE                          VAL R11
      117 NEWTABLE                         R19 0 3
      119 MOVE                             R20 R13
      120 MOVE                             R21 R6
      121 MOVE                             R22 R11
      122 SETLIST                          R19 R20 3 [1]
      124 CALL                             R17 2 0
      125 GETUPVAL                         R18 6
      126 GETTABLEKS                       R17 R18 K10 ["useEffect"]
      128 NEWCLOSURE                       R18 P5
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R9
      131 NEWTABLE                         R19 0 2
      133 MOVE                             R20 R13
      134 MOVE                             R21 R9
      135 SETLIST                          R19 R20 2 [1]
      137 CALL                             R17 2 0
      138 GETUPVAL                         R18 6
      139 GETTABLEKS                       R17 R18 K10 ["useEffect"]
      141 NEWCLOSURE                       R18 P6
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R13
      144 NEWTABLE                         R19 0 2
      146 GETTABLEKS                       R20 R0 K12 ["WidgetRef"]
      148 MOVE                             R21 R13
      149 SETLIST                          R19 R20 2 [1]
      151 CALL                             R17 2 0
      152 JUMPIFNOT                        R15 ; [+45]
      153 JUMPIFNOT                        R13 ; [+44]
      154 JUMPIFNOT                        R6 ; [+39]
      155 GETUPVAL                         R19 13
      156 NEWTABLE                         R20 0 4
      158 MOVE                             R21 R2
      159 GETUPVAL                         R23 14
      160 GETTABLEKS                       R22 R23 K8 ["new"]
      162 MOVE                             R23 R13
      163 CALL                             R22 1 1
      164 MOVE                             R23 R1
      165 MOVE                             R24 R3
      166 SETLIST                          R20 R21 4 [1]
      168 GETUPVAL                         R22 6
      169 GETTABLEKS                       R21 R22 K13 ["createElement"]
      171 GETUPVAL                         R22 15
      172 DUPTABLE                         R23 K15 [{"overlayGui"}]
      173 SETTABLEKS                       R13 R23 K14 ["overlayGui"]
      175 DUPTABLE                         R24 K17 [{"View"}]
      176 GETUPVAL                         R25 16
      177 GETUPVAL                         R26 17
      178 DUPTABLE                         R27 K21 [{"onSizeChanged", "hideDialog", "sendClickedTelemetry"}]
      179 SETTABLEKS                       R12 R27 K18 ["onSizeChanged"]
      181 SETTABLEKS                       R9 R27 K19 ["hideDialog"]
      183 SETTABLEKS                       R10 R27 K20 ["sendClickedTelemetry"]
      185 CALL                             R25 2 1
      186 SETTABLEKS                       R25 R24 K16 ["View"]
      188 CALL                             R21 3 -1
      189 CALL                             R19 -1 -1
      190 NAMECALL                         R17 R15 K22 ["render"]
      192 CALL                             R17 -1 0
      193 JUMP                             ; [+4]
      194 LOADNIL                          R19
      195 NAMECALL                         R17 R15 K22 ["render"]
      197 CALL                             R17 2 0
      198 MOVE                             R17 R8
      199 MOVE                             R18 R9
      200 MOVE                             R19 R6
      201 RETURN                           R17 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["ReactRoblox"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R10 R0 K12 ["Src"]
       46 GETTABLEKS                       R9 R10 K13 ["Util"]
       48 GETTABLEKS                       R8 R9 K14 ["Telemetry"]
       50 GETTABLEKS                       R7 R8 K15 ["TelemetryContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K12 ["Src"]
       57 GETTABLEKS                       R9 R10 K13 ["Util"]
       59 GETTABLEKS                       R8 R9 K16 ["Services"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R12 R0 K12 ["Src"]
       66 GETTABLEKS                       R11 R12 K13 ["Util"]
       68 GETTABLEKS                       R10 R11 K14 ["Telemetry"]
       70 GETTABLEKS                       R9 R10 K17 ["StudioSafetyUpsellBannerShownEvent"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R13 R0 K12 ["Src"]
       77 GETTABLEKS                       R12 R13 K13 ["Util"]
       79 GETTABLEKS                       R11 R12 K14 ["Telemetry"]
       81 GETTABLEKS                       R10 R11 K18 ["StudioSafetyUpsellClickedEvent"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K12 ["Src"]
       88 GETTABLEKS                       R12 R13 K19 ["SharedFlags"]
       90 GETTABLEKS                       R11 R12 K20 ["getFStringStartPageSetupTrustedConnectionsLink"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R14 R0 K12 ["Src"]
       97 GETTABLEKS                       R13 R14 K19 ["SharedFlags"]
       99 GETTABLEKS                       R12 R13 K21 ["getFStringStartPageVerifyParentalConsentLink"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R15 R0 K12 ["Src"]
      106 GETTABLEKS                       R14 R15 K19 ["SharedFlags"]
      108 GETTABLEKS                       R13 R14 K22 ["getFFlagLuaStartPageVerifyAgeBanner"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R16 R0 K12 ["Src"]
      115 GETTABLEKS                       R15 R16 K19 ["SharedFlags"]
      117 GETTABLEKS                       R14 R15 K23 ["getFFlagStartPageEstablishTrustBanner"]
      119 CALL                             R13 1 1
      120 CALL                             R13 0 1
      121 GETTABLEKS                       R15 R1 K24 ["ContextServices"]
      123 GETTABLEKS                       R14 R15 K25 ["Localization"]
      125 GETTABLEKS                       R16 R1 K24 ["ContextServices"]
      127 GETTABLEKS                       R15 R16 K26 ["Design"]
      129 GETTABLEKS                       R17 R1 K24 ["ContextServices"]
      131 GETTABLEKS                       R16 R17 K27 ["Focus"]
      133 GETTABLEKS                       R18 R5 K28 ["Components"]
      135 GETTABLEKS                       R17 R18 K29 ["FoundationProviderAdapter"]
      137 GETTABLEKS                       R19 R1 K24 ["ContextServices"]
      139 GETTABLEKS                       R18 R19 K30 ["Plugin"]
      141 GETTABLEKS                       R20 R1 K24 ["ContextServices"]
      143 GETTABLEKS                       R19 R20 K31 ["provide"]
      145 GETTABLEKS                       R21 R1 K13 ["Util"]
      147 GETTABLEKS                       R20 R21 K32 ["counter"]
      149 GETTABLEKS                       R21 R3 K33 ["createElement"]
      151 GETTABLEKS                       R22 R7 K34 ["RbxAnalyticsService"]
      153 GETTABLEKS                       R23 R7 K35 ["StudioService"]
      155 GETTABLEKS                       R24 R7 K36 ["StartPageManager"]
      157 LOADNIL                          R25
      158 LOADNIL                          R26
      159 GETIMPORT                        R27 K38 [pcall]
      161 NEWCLOSURE                       R28 P0
      162 CAPTURE                          REF R25
      163 CAPTURE                          REF R26
      164 CALL                             R27 1 0
      165 NEWCLOSURE                       R27 P1
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R14
      169 CAPTURE                          REF R26
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R24
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R11
      174 NEWCLOSURE                       R28 P2
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R15
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R8
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R4
      187 CAPTURE                          REF R25
      188 CAPTURE                          VAL R19
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R17
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R27
      193 CLOSEUPVALS                      R25
      194 RETURN                           R28 1
