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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onSizeChanged"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["sendClickedTelemetry"]
        9 LOADK                            R1 K2 ["establish_TC"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K3 ["hideDialog"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["openLink"]
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["sendClickedTelemetry"]
        9 LOADK                            R1 K2 ["get_consent"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K3 ["hideDialog"]
       14 CALL                             R0 0 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 GETUPVAL                         R2 1
        3 FASTCALL1                        ASSERT R2 ; [+2]
        4 GETIMPORT                        R1 K1 [assert]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 CALL                             R1 0 1
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       12 GETTABLEKS                       R2 R2 K3 ["useTokens"]
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 4
       16 NAMECALL                         R3 R3 K4 ["use"]
       18 CALL                             R3 1 1
       19 LOADK                            R6 K5 ["EstablishTrustDialog"]
       20 LOADK                            R7 K6 ["PrimaryButton"]
       21 NAMECALL                         R4 R3 K7 ["getText"]
       23 CALL                             R4 3 1
       24 LOADK                            R7 K5 ["EstablishTrustDialog"]
       25 LOADK                            R8 K8 ["SecondaryButton"]
       26 NAMECALL                         R5 R3 K7 ["getText"]
       28 CALL                             R5 3 1
       29 GETUPVAL                         R6 5
       30 MOVE                             R9 R4
       31 MOVE                             R10 R5
       32 CONCAT                           R8 R9 R10
       33 GETTABLEKS                       R9 R2 K9 ["Typography"]
       35 GETTABLEKS                       R9 R9 K10 ["TitleSmall"]
       37 GETTABLEKS                       R9 R9 K11 ["FontSize"]
       39 GETIMPORT                        R10 K15 [Enum.Font.BuilderSansBold]
       41 GETIMPORT                        R11 K18 [Vector2.new]
       43 LOADK                            R12 K19 [∞]
       44 LOADN                            R13 1
       45 CALL                             R11 2 -1
       46 NAMECALL                         R6 R6 K20 ["GetTextSize"]
       48 CALL                             R6 -1 1
       49 GETUPVAL                         R7 6
       50 GETUPVAL                         R8 3
       51 GETTABLEKS                       R8 R8 K21 ["View"]
       53 DUPTABLE                         R9 K28 [{["tag"] = "component-dialog-view col flex-y-between gap-small auto-y padding-x-large padding-y-medium bg-surface-200", ["onAbsoluteSizeChanged"], ["testId"] = "--dialog", ["Size"]}]
       54 NEWCLOSURE                       R10 P0
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R10 R9 K24 ["onAbsoluteSizeChanged"]
       58 GETIMPORT                        R10 K31 [UDim2.fromOffset]
       60 GETTABLEKS                       R14 R6 K33 ["X"]
       62 FASTCALL1                        MATH_CEIL R14 ; [+2]
       63 GETIMPORT                        R13 K36 [math.ceil]
       65 CALL                             R13 1 1
       66 ADDK                             R12 R13 K32 [64]
       67 FASTCALL2K                       MATH_MAX R12 K37 ; [+4]
       69 LOADK                            R13 K37 [350]
       70 GETIMPORT                        R11 K39 [math.max]
       72 CALL                             R11 2 1
       73 LOADN                            R12 0
       74 CALL                             R10 2 1
       75 SETTABLEKS                       R10 R9 K27 ["Size"]
       77 DUPTABLE                         R10 K42 [{"TextRow", "ButtonGroup"}]
       78 GETUPVAL                         R11 6
       79 GETUPVAL                         R12 3
       80 GETTABLEKS                       R12 R12 K21 ["View"]
       82 DUPTABLE                         R13 K45 [{["tag"] = "row flex-x-between items-start gap-medium size-full-0 auto-y padding-bottom-medium", ["LayoutOrder"]}]
       83 MOVE                             R14 R1
       84 CALL                             R14 0 1
       85 SETTABLEKS                       R14 R13 K44 ["LayoutOrder"]
       87 DUPTABLE                         R14 K47 [{"TextColumn"}]
       88 GETUPVAL                         R15 6
       89 GETUPVAL                         R16 3
       90 GETTABLEKS                       R16 R16 K21 ["View"]
       92 DUPTABLE                         R17 K49 [{["tag"] = "col fill gap-medium auto-y", ["LayoutOrder"]}]
       93 MOVE                             R18 R1
       94 CALL                             R18 0 1
       95 SETTABLEKS                       R18 R17 K44 ["LayoutOrder"]
       97 DUPTABLE                         R18 K52 [{"Title", "Description"}]
       98 GETUPVAL                         R19 6
       99 GETUPVAL                         R20 3
      100 GETTABLEKS                       R20 R20 K53 ["Text"]
      102 DUPTABLE                         R21 K57 [{["tag"] = "size-full-0 auto-y text-wrap text-align-x-left text-align-y-center", ["fontStyle"], ["Text"], ["LayoutOrder"], ["testId"] = "--dialog-title"}]
      103 GETTABLEKS                       R22 R2 K9 ["Typography"]
      105 GETTABLEKS                       R22 R22 K58 ["TitleMedium"]
      107 SETTABLEKS                       R22 R21 K55 ["fontStyle"]
      109 LOADK                            R24 K5 ["EstablishTrustDialog"]
      110 LOADK                            R25 K50 ["Title"]
      111 NAMECALL                         R22 R3 K7 ["getText"]
      113 CALL                             R22 3 1
      114 SETTABLEKS                       R22 R21 K53 ["Text"]
      116 MOVE                             R22 R1
      117 CALL                             R22 0 1
      118 SETTABLEKS                       R22 R21 K44 ["LayoutOrder"]
      120 CALL                             R19 2 1
      121 SETTABLEKS                       R19 R18 K50 ["Title"]
      123 GETUPVAL                         R19 6
      124 GETUPVAL                         R20 3
      125 GETTABLEKS                       R20 R20 K53 ["Text"]
      127 DUPTABLE                         R21 K61 [{["tag"] = "grow size-full-0 auto-y text-wrap text-align-x-left text-align-y-top", ["fontStyle"], ["Text"], ["LayoutOrder"], ["testId"] = "--dialog-description"}]
      128 GETTABLEKS                       R22 R2 K9 ["Typography"]
      130 GETTABLEKS                       R22 R22 K62 ["BodySmall"]
      132 SETTABLEKS                       R22 R21 K55 ["fontStyle"]
      134 LOADK                            R24 K5 ["EstablishTrustDialog"]
      135 LOADK                            R25 K63 ["Body"]
      136 NAMECALL                         R22 R3 K7 ["getText"]
      138 CALL                             R22 3 1
      139 SETTABLEKS                       R22 R21 K53 ["Text"]
      141 MOVE                             R22 R1
      142 CALL                             R22 0 1
      143 SETTABLEKS                       R22 R21 K44 ["LayoutOrder"]
      145 CALL                             R19 2 1
      146 SETTABLEKS                       R19 R18 K51 ["Description"]
      148 CALL                             R15 3 1
      149 SETTABLEKS                       R15 R14 K46 ["TextColumn"]
      151 CALL                             R11 3 1
      152 SETTABLEKS                       R11 R10 K40 ["TextRow"]
      154 GETUPVAL                         R11 6
      155 GETUPVAL                         R12 3
      156 GETTABLEKS                       R12 R12 K21 ["View"]
      158 DUPTABLE                         R13 K65 [{["tag"], ["LayoutOrder"], ["testId"] = "--dialog-button-group"}]
      159 NEWTABLE                         R14 1 0
      161 LOADB                            R15 1
      162 SETTABLEKS                       R15 R14 K66 ["row align-x-right items-stretch gap-small size-full-0 auto-y"]
      164 SETTABLEKS                       R14 R13 K22 ["tag"]
      166 MOVE                             R14 R1
      167 CALL                             R14 0 1
      168 SETTABLEKS                       R14 R13 K44 ["LayoutOrder"]
      170 DUPTABLE                         R14 K68 [{"PrimaryAndSecondary"}]
      171 GETUPVAL                         R15 6
      172 GETUPVAL                         R16 3
      173 GETTABLEKS                       R16 R16 K21 ["View"]
      175 DUPTABLE                         R17 K70 [{["tag"] = "row flex-x-between items-stretch gap-small auto-xy", ["LayoutOrder"]}]
      176 MOVE                             R18 R1
      177 CALL                             R18 0 1
      178 SETTABLEKS                       R18 R17 K44 ["LayoutOrder"]
      180 DUPTABLE                         R18 K73 [{"Primary", "Secondary"}]
      181 GETUPVAL                         R19 6
      182 GETUPVAL                         R20 3
      183 GETTABLEKS                       R20 R20 K21 ["View"]
      185 DUPTABLE                         R21 K75 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      186 MOVE                             R22 R1
      187 CALL                             R22 0 1
      188 SETTABLEKS                       R22 R21 K44 ["LayoutOrder"]
      190 DUPTABLE                         R22 K77 [{"Button"}]
      191 GETUPVAL                         R23 6
      192 GETUPVAL                         R24 3
      193 GETTABLEKS                       R24 R24 K76 ["Button"]
      195 DUPTABLE                         R25 K84 [{["text"], ["variant"], ["size"], ["fillBehavior"], ["onActivated"], ["testId"] = "--dialog-button-primary"}]
      196 LOADK                            R28 K5 ["EstablishTrustDialog"]
      197 LOADK                            R29 K6 ["PrimaryButton"]
      198 NAMECALL                         R26 R3 K7 ["getText"]
      200 CALL                             R26 3 1
      201 SETTABLEKS                       R26 R25 K78 ["text"]
      203 GETUPVAL                         R26 3
      204 GETTABLEKS                       R26 R26 K85 ["Enums"]
      206 GETTABLEKS                       R26 R26 K86 ["ButtonVariant"]
      208 GETTABLEKS                       R26 R26 K87 ["Emphasis"]
      210 SETTABLEKS                       R26 R25 K79 ["variant"]
      212 GETUPVAL                         R26 3
      213 GETTABLEKS                       R26 R26 K85 ["Enums"]
      215 GETTABLEKS                       R26 R26 K88 ["InputSize"]
      217 GETTABLEKS                       R26 R26 K89 ["XSmall"]
      219 SETTABLEKS                       R26 R25 K80 ["size"]
      221 GETUPVAL                         R26 3
      222 GETTABLEKS                       R26 R26 K85 ["Enums"]
      224 GETTABLEKS                       R26 R26 K90 ["FillBehavior"]
      226 GETTABLEKS                       R26 R26 K91 ["Fill"]
      228 SETTABLEKS                       R26 R25 K81 ["fillBehavior"]
      230 NEWCLOSURE                       R26 P1
      231 CAPTURE                          UPVAL U7
      232 CAPTURE                          UPVAL U8
      233 CAPTURE                          VAL R0
      234 SETTABLEKS                       R26 R25 K82 ["onActivated"]
      236 CALL                             R23 2 1
      237 SETTABLEKS                       R23 R22 K76 ["Button"]
      239 CALL                             R19 3 1
      240 SETTABLEKS                       R19 R18 K71 ["Primary"]
      242 GETUPVAL                         R19 6
      243 GETUPVAL                         R20 3
      244 GETTABLEKS                       R20 R20 K21 ["View"]
      246 DUPTABLE                         R21 K75 [{["tag"] = "auto-xy", ["LayoutOrder"]}]
      247 MOVE                             R22 R1
      248 CALL                             R22 0 1
      249 SETTABLEKS                       R22 R21 K44 ["LayoutOrder"]
      251 DUPTABLE                         R22 K77 [{"Button"}]
      252 GETUPVAL                         R23 6
      253 GETUPVAL                         R24 3
      254 GETTABLEKS                       R24 R24 K76 ["Button"]
      256 DUPTABLE                         R25 K93 [{["text"], ["variant"], ["size"], ["fillBehavior"], ["onActivated"], ["testId"] = "--dialog-button-secondary"}]
      257 LOADK                            R28 K5 ["EstablishTrustDialog"]
      258 LOADK                            R29 K8 ["SecondaryButton"]
      259 NAMECALL                         R26 R3 K7 ["getText"]
      261 CALL                             R26 3 1
      262 SETTABLEKS                       R26 R25 K78 ["text"]
      264 GETUPVAL                         R26 3
      265 GETTABLEKS                       R26 R26 K85 ["Enums"]
      267 GETTABLEKS                       R26 R26 K86 ["ButtonVariant"]
      269 GETTABLEKS                       R26 R26 K94 ["Standard"]
      271 SETTABLEKS                       R26 R25 K79 ["variant"]
      273 GETUPVAL                         R26 3
      274 GETTABLEKS                       R26 R26 K85 ["Enums"]
      276 GETTABLEKS                       R26 R26 K88 ["InputSize"]
      278 GETTABLEKS                       R26 R26 K89 ["XSmall"]
      280 SETTABLEKS                       R26 R25 K80 ["size"]
      282 GETUPVAL                         R26 3
      283 GETTABLEKS                       R26 R26 K85 ["Enums"]
      285 GETTABLEKS                       R26 R26 K90 ["FillBehavior"]
      287 GETTABLEKS                       R26 R26 K91 ["Fill"]
      289 SETTABLEKS                       R26 R25 K81 ["fillBehavior"]
      291 NEWCLOSURE                       R26 P2
      292 CAPTURE                          UPVAL U7
      293 CAPTURE                          UPVAL U9
      294 CAPTURE                          VAL R0
      295 SETTABLEKS                       R26 R25 K82 ["onActivated"]
      297 CALL                             R23 2 1
      298 SETTABLEKS                       R23 R22 K76 ["Button"]
      300 CALL                             R19 3 1
      301 SETTABLEKS                       R19 R18 K72 ["Secondary"]
      303 CALL                             R15 3 1
      304 SETTABLEKS                       R15 R14 K67 ["PrimaryAndSecondary"]
      306 CALL                             R11 3 1
      307 SETTABLEKS                       R11 R10 K41 ["ButtonGroup"]
      309 CALL                             R7 3 -1
      310 RETURN                           R7 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["skipTelemetry"]
        6 JUMPIF                           R0 ; [+18]
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R2 3
        9 DUPTABLE                         R3 K7 [{["telemetryType"] = "load", ["upsellEntrySurface"] = "start_page_establish_TC_dialog", ["userId"], ["studioSid"]}]
       10 GETUPVAL                         R4 4
       11 NAMECALL                         R4 R4 K8 ["GetUserId"]
       13 CALL                             R4 1 1
       14 SETTABLEKS                       R4 R3 K5 ["userId"]
       16 GETUPVAL                         R4 5
       17 NAMECALL                         R4 R4 K9 ["GetSessionId"]
       19 CALL                             R4 1 1
       20 SETTABLEKS                       R4 R3 K6 ["studioSid"]
       22 NAMECALL                         R0 R0 K10 ["log"]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K7 [{[1] = "click", ["upsellEntrySurface"] = "start_page_establish_TC_dialog", ["userId"], ["studioSid"], ["action"]}]
        3 GETUPVAL                         R5 2
        4 NAMECALL                         R5 R5 K8 ["GetUserId"]
        6 CALL                             R5 1 1
        7 SETTABLEKS                       R5 R4 K4 ["userId"]
        9 GETUPVAL                         R5 3
       10 NAMECALL                         R5 R5 K9 ["GetSessionId"]
       12 CALL                             R5 1 1
       13 SETTABLEKS                       R5 R4 K5 ["studioSid"]
       15 SETTABLEKS                       R0 R4 K6 ["action"]
       17 NAMECALL                         R1 R1 K10 ["log"]
       19 CALL                             R1 3 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 1
        1 LOADK                            R2 K0 ["StartPage_EstablishTrustDialog"]
        2 DUPTABLE                         R3 K8 [{["Id"] = "StartPage_EstablishTrustDialog", ["InitialEnabled"] = True, ["Modal"] = True, ["Size"], ["DisableTitleBar"] = False}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K5 ["Size"]
        6 NAMECALL                         R0 R0 K9 ["CreateQWidgetPluginGui"]
        8 CALL                             R0 3 1
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 5
       14 GETTABLEKS                       R0 R0 K10 ["createRoot"]
       16 GETUPVAL                         R1 0
       17 CALL                             R0 1 1
       18 SETUPVAL                         R0 4
       19 GETUPVAL                         R0 6
       20 GETUPVAL                         R1 4
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

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
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K4 ["X"]
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K5 ["Y"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["WidgetRef"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["WidgetRef"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["current"]
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["WidgetRef"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["WidgetRef"]
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
       26 GETUPVAL                         R6 6
       27 GETTABLEKS                       R6 R6 K4 ["useState"]
       29 LOADB                            R7 0
       30 CALL                             R6 1 2
       31 GETUPVAL                         R8 6
       32 GETTABLEKS                       R8 R8 K5 ["useCallback"]
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
       49 GETUPVAL                         R9 6
       50 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       52 NEWCLOSURE                       R10 P1
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R11 0 1
       56 MOVE                             R12 R7
       57 SETLIST                          R11 R12 1 [1]
       59 CALL                             R9 2 1
       60 GETUPVAL                         R10 6
       61 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       63 NEWCLOSURE                       R11 P2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          UPVAL U9
       68 NEWTABLE                         R12 0 0
       70 CALL                             R10 2 1
       71 GETUPVAL                         R11 6
       72 GETTABLEKS                       R11 R11 K4 ["useState"]
       74 GETIMPORT                        R12 K9 [Vector2.new]
       76 LOADN                            R13 1
       77 LOADN                            R14 1
       78 CALL                             R12 2 -1
       79 CALL                             R11 -1 2
       80 GETUPVAL                         R13 6
       81 GETTABLEKS                       R13 R13 K4 ["useState"]
       83 LOADNIL                          R14
       84 CALL                             R13 1 2
       85 GETUPVAL                         R15 6
       86 GETTABLEKS                       R15 R15 K4 ["useState"]
       88 LOADNIL                          R16
       89 CALL                             R15 1 2
       90 GETUPVAL                         R17 6
       91 GETTABLEKS                       R17 R17 K10 ["useEffect"]
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
      109 GETUPVAL                         R17 6
      110 GETTABLEKS                       R17 R17 K10 ["useEffect"]
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
      125 GETUPVAL                         R17 6
      126 GETTABLEKS                       R17 R17 K10 ["useEffect"]
      128 NEWCLOSURE                       R18 P5
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R9
      131 NEWTABLE                         R19 0 2
      133 MOVE                             R20 R13
      134 MOVE                             R21 R9
      135 SETLIST                          R19 R20 2 [1]
      137 CALL                             R17 2 0
      138 GETUPVAL                         R17 6
      139 GETTABLEKS                       R17 R17 K10 ["useEffect"]
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
      159 GETUPVAL                         R22 14
      160 GETTABLEKS                       R22 R22 K8 ["new"]
      162 MOVE                             R23 R13
      163 CALL                             R22 1 1
      164 MOVE                             R23 R1
      165 MOVE                             R24 R3
      166 SETLIST                          R20 R21 4 [1]
      168 GETUPVAL                         R21 6
      169 GETTABLEKS                       R21 R21 K13 ["createElement"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactRoblox"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Util"]
       48 GETTABLEKS                       R7 R7 K14 ["Telemetry"]
       50 GETTABLEKS                       R7 R7 K15 ["TelemetryContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K12 ["Src"]
       57 GETTABLEKS                       R8 R8 K13 ["Util"]
       59 GETTABLEKS                       R8 R8 K16 ["Services"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K12 ["Src"]
       66 GETTABLEKS                       R9 R9 K13 ["Util"]
       68 GETTABLEKS                       R9 R9 K14 ["Telemetry"]
       70 GETTABLEKS                       R9 R9 K17 ["StudioSafetyUpsellBannerShownEvent"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K12 ["Src"]
       77 GETTABLEKS                       R10 R10 K13 ["Util"]
       79 GETTABLEKS                       R10 R10 K14 ["Telemetry"]
       81 GETTABLEKS                       R10 R10 K18 ["StudioSafetyUpsellClickedEvent"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K12 ["Src"]
       88 GETTABLEKS                       R11 R11 K19 ["SharedFlags"]
       90 GETTABLEKS                       R11 R11 K20 ["getFStringStartPageSetupTrustedConnectionsLink"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K12 ["Src"]
       97 GETTABLEKS                       R12 R12 K19 ["SharedFlags"]
       99 GETTABLEKS                       R12 R12 K21 ["getFStringStartPageVerifyParentalConsentLink"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K12 ["Src"]
      106 GETTABLEKS                       R13 R13 K19 ["SharedFlags"]
      108 GETTABLEKS                       R13 R13 K22 ["getFFlagLuaStartPageVerifyAgeBanner"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K12 ["Src"]
      115 GETTABLEKS                       R14 R14 K19 ["SharedFlags"]
      117 GETTABLEKS                       R14 R14 K23 ["getFFlagStartPageEstablishTrustBanner"]
      119 CALL                             R13 1 1
      120 CALL                             R13 0 1
      121 GETTABLEKS                       R14 R1 K24 ["ContextServices"]
      123 GETTABLEKS                       R14 R14 K25 ["Localization"]
      125 GETTABLEKS                       R15 R1 K24 ["ContextServices"]
      127 GETTABLEKS                       R15 R15 K26 ["Design"]
      129 GETTABLEKS                       R16 R1 K24 ["ContextServices"]
      131 GETTABLEKS                       R16 R16 K27 ["Focus"]
      133 GETTABLEKS                       R17 R5 K28 ["Components"]
      135 GETTABLEKS                       R17 R17 K29 ["FoundationProviderAdapter"]
      137 GETTABLEKS                       R18 R1 K24 ["ContextServices"]
      139 GETTABLEKS                       R18 R18 K30 ["Plugin"]
      141 GETTABLEKS                       R19 R1 K24 ["ContextServices"]
      143 GETTABLEKS                       R19 R19 K31 ["provide"]
      145 GETTABLEKS                       R20 R1 K13 ["Util"]
      147 GETTABLEKS                       R20 R20 K32 ["counter"]
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
      166 CAPTURE                          VAL R12
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R14
      171 CAPTURE                          REF R26
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R11
      176 NEWCLOSURE                       R28 P2
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R14
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R18
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R23
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R9
      188 CAPTURE                          VAL R4
      189 CAPTURE                          REF R25
      190 CAPTURE                          VAL R19
      191 CAPTURE                          VAL R16
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R27
      195 CLOSEUPVALS                      R25
      196 RETURN                           R28 1
