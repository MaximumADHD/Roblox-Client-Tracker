PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R5 K3 [{"userId", "action", "upsellEntrySurface"}]
        3 GETUPVAL                         R6 2
        4 NAMECALL                         R6 R6 K4 ["GetUserId"]
        6 CALL                             R6 1 1
        7 SETTABLEKS                       R6 R5 K0 ["userId"]
        9 SETTABLEKS                       R0 R5 K1 ["action"]
       11 SETTABLEKS                       R1 R5 K2 ["upsellEntrySurface"]
       13 NAMECALL                         R2 R2 K5 ["logRobloxTelemetryEvent"]
       15 CALL                             R2 3 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+10]
        7 GETIMPORT                        R3 K3 [warn]
        9 LOADK                            R5 K4 ["OpenUrl failed: "]
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R7 R2
       12 GETIMPORT                        R6 K6 [tostring]
       14 CALL                             R6 1 1
       15 CONCAT                           R4 R5 R6
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{"userId", "action", "upsellEntrySurface"}]
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R4 R4 K4 ["GetUserId"]
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R4 R3 K0 ["userId"]
        9 LOADK                            R4 K5 ["establish_TC"]
       10 SETTABLEKS                       R4 R3 K1 ["action"]
       12 LOADK                            R4 K6 ["collab_dialog"]
       13 SETTABLEKS                       R4 R3 K2 ["upsellEntrySurface"]
       15 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       17 CALL                             R0 3 0
       18 GETUPVAL                         R0 3
       19 GETIMPORT                        R1 K9 [pcall]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 CALL                             R1 1 2
       25 JUMPIF                           R1 ; [+10]
       26 GETIMPORT                        R3 K11 [warn]
       28 LOADK                            R5 K12 ["OpenUrl failed: "]
       29 FASTCALL1                        TOSTRING R2 ; [+3]
       30 MOVE                             R7 R2
       31 GETIMPORT                        R6 K14 [tostring]
       33 CALL                             R6 1 1
       34 CONCAT                           R4 R5 R6
       35 CALL                             R3 1 0
       36 GETUPVAL                         R1 5
       37 GETTABLEKS                       R0 R1 K15 ["onClose"]
       39 CALL                             R0 0 0
       40 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{"userId", "action", "upsellEntrySurface"}]
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R4 R4 K4 ["GetUserId"]
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R4 R3 K0 ["userId"]
        9 LOADK                            R4 K5 ["get_consent"]
       10 SETTABLEKS                       R4 R3 K1 ["action"]
       12 LOADK                            R4 K6 ["collab_dialog"]
       13 SETTABLEKS                       R4 R3 K2 ["upsellEntrySurface"]
       15 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       17 CALL                             R0 3 0
       18 GETUPVAL                         R0 3
       19 GETIMPORT                        R1 K9 [pcall]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R0
       24 CALL                             R1 1 2
       25 JUMPIF                           R1 ; [+10]
       26 GETIMPORT                        R3 K11 [warn]
       28 LOADK                            R5 K12 ["OpenUrl failed: "]
       29 FASTCALL1                        TOSTRING R2 ; [+3]
       30 MOVE                             R7 R2
       31 GETIMPORT                        R6 K14 [tostring]
       33 CALL                             R6 1 1
       34 CONCAT                           R4 R5 R6
       35 CALL                             R3 1 0
       36 GETUPVAL                         R1 5
       37 GETTABLEKS                       R0 R1 K15 ["onClose"]
       39 CALL                             R0 0 0
       40 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["new"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R1 K2 ["Localization"]
        8 GETTABLEKS                       R4 R1 K3 ["Design"]
       10 NAMECALL                         R5 R4 K4 ["get"]
       12 CALL                             R5 1 1
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K5 ["createElement"]
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R8 R9 K6 ["UI"]
       19 GETTABLEKS                       R7 R8 K7 ["Dialog"]
       21 DUPTABLE                         R8 K15 [{"Title", "Enabled", "Modal", "Resizable", "Size", "MinSize", "OnClose"}]
       22 LOADK                            R9 K16 [""]
       23 SETTABLEKS                       R9 R8 K8 ["Title"]
       25 LOADB                            R9 1
       26 SETTABLEKS                       R9 R8 K9 ["Enabled"]
       28 GETUPVAL                         R10 3
       29 NOT                              R9 R10
       30 SETTABLEKS                       R9 R8 K10 ["Modal"]
       32 LOADB                            R9 0
       33 SETTABLEKS                       R9 R8 K11 ["Resizable"]
       35 GETIMPORT                        R9 K18 [Vector2.new]
       37 LOADN                            R10 94
       38 LOADN                            R11 200
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K12 ["Size"]
       42 GETIMPORT                        R9 K18 [Vector2.new]
       44 LOADN                            R10 94
       45 LOADN                            R11 200
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K13 ["MinSize"]
       49 GETTABLEKS                       R9 R1 K19 ["onClose"]
       51 SETTABLEKS                       R9 R8 K14 ["OnClose"]
       53 DUPTABLE                         R9 K22 [{"StyleLink", "MainView"}]
       54 JUMPIFNOT                        R5 ; [+9]
       55 GETUPVAL                         R11 1
       56 GETTABLEKS                       R10 R11 K5 ["createElement"]
       58 LOADK                            R11 K20 ["StyleLink"]
       59 DUPTABLE                         R12 K24 [{"StyleSheet"}]
       60 SETTABLEKS                       R5 R12 K23 ["StyleSheet"]
       62 CALL                             R10 2 1
       63 JUMPIF                           R10 ; [+1]
       64 LOADNIL                          R10
       65 SETTABLEKS                       R10 R9 K20 ["StyleLink"]
       67 GETUPVAL                         R11 1
       68 GETTABLEKS                       R10 R11 K5 ["createElement"]
       70 GETUPVAL                         R12 4
       71 GETTABLEKS                       R11 R12 K25 ["View"]
       73 DUPTABLE                         R12 K27 [{"tag"}]
       74 LOADK                            R13 K28 ["size-full-full col gap-large padding-large bg-surface-200 radius-none"]
       75 SETTABLEKS                       R13 R12 K26 ["tag"]
       77 DUPTABLE                         R13 K33 [{"UpsellTitle", "UpsellBody", "Spacer", "Footer"}]
       78 GETUPVAL                         R15 1
       79 GETTABLEKS                       R14 R15 K5 ["createElement"]
       81 GETUPVAL                         R16 4
       82 GETTABLEKS                       R15 R16 K34 ["Text"]
       84 DUPTABLE                         R16 K36 [{"tag", "LayoutOrder", "Text"}]
       85 LOADK                            R17 K37 ["auto-xy size-0-0  text-align-y-center text-align-x-left text-title-medium text-wrap"]
       86 SETTABLEKS                       R17 R16 K26 ["tag"]
       88 NAMECALL                         R17 R2 K38 ["getNextOrder"]
       90 CALL                             R17 1 1
       91 SETTABLEKS                       R17 R16 K35 ["LayoutOrder"]
       93 LOADK                            R19 K39 ["UpsellDialog"]
       94 LOADK                            R20 K40 ["title"]
       95 NAMECALL                         R17 R3 K41 ["getText"]
       97 CALL                             R17 3 1
       98 SETTABLEKS                       R17 R16 K34 ["Text"]
      100 CALL                             R14 2 1
      101 SETTABLEKS                       R14 R13 K29 ["UpsellTitle"]
      103 GETUPVAL                         R15 1
      104 GETTABLEKS                       R14 R15 K5 ["createElement"]
      106 GETUPVAL                         R15 5
      107 DUPTABLE                         R16 K42 [{"LayoutOrder", "tag", "Text"}]
      108 NAMECALL                         R17 R2 K38 ["getNextOrder"]
      110 CALL                             R17 1 1
      111 SETTABLEKS                       R17 R16 K35 ["LayoutOrder"]
      113 LOADK                            R17 K43 ["auto-xy size-0-0 text-align-x-left text-body-small text-wrap flex-y-fill"]
      114 SETTABLEKS                       R17 R16 K26 ["tag"]
      116 LOADK                            R19 K39 ["UpsellDialog"]
      117 LOADK                            R20 K44 ["description"]
      118 NAMECALL                         R17 R3 K41 ["getText"]
      120 CALL                             R17 3 1
      121 SETTABLEKS                       R17 R16 K34 ["Text"]
      123 CALL                             R14 2 1
      124 SETTABLEKS                       R14 R13 K30 ["UpsellBody"]
      126 GETUPVAL                         R15 1
      127 GETTABLEKS                       R14 R15 K5 ["createElement"]
      129 GETUPVAL                         R16 4
      130 GETTABLEKS                       R15 R16 K25 ["View"]
      132 DUPTABLE                         R16 K45 [{"tag", "LayoutOrder"}]
      133 LOADK                            R17 K46 ["fill"]
      134 SETTABLEKS                       R17 R16 K26 ["tag"]
      136 NAMECALL                         R17 R2 K38 ["getNextOrder"]
      138 CALL                             R17 1 1
      139 SETTABLEKS                       R17 R16 K35 ["LayoutOrder"]
      141 CALL                             R14 2 1
      142 SETTABLEKS                       R14 R13 K31 ["Spacer"]
      144 GETUPVAL                         R15 1
      145 GETTABLEKS                       R14 R15 K5 ["createElement"]
      147 GETUPVAL                         R15 6
      148 DUPTABLE                         R16 K45 [{"tag", "LayoutOrder"}]
      149 LOADK                            R17 K47 ["size-full-0 auto-y row gap-small"]
      150 SETTABLEKS                       R17 R16 K26 ["tag"]
      152 NAMECALL                         R17 R2 K38 ["getNextOrder"]
      154 CALL                             R17 1 1
      155 SETTABLEKS                       R17 R16 K35 ["LayoutOrder"]
      157 DUPTABLE                         R17 K50 [{"Spacer", "TrustedConnectionsButton", "VPCButton"}]
      158 GETUPVAL                         R19 1
      159 GETTABLEKS                       R18 R19 K5 ["createElement"]
      161 GETUPVAL                         R20 4
      162 GETTABLEKS                       R19 R20 K25 ["View"]
      164 DUPTABLE                         R20 K45 [{"tag", "LayoutOrder"}]
      165 LOADK                            R21 K46 ["fill"]
      166 SETTABLEKS                       R21 R20 K26 ["tag"]
      168 NAMECALL                         R21 R2 K38 ["getNextOrder"]
      170 CALL                             R21 1 1
      171 SETTABLEKS                       R21 R20 K35 ["LayoutOrder"]
      173 CALL                             R18 2 1
      174 SETTABLEKS                       R18 R17 K31 ["Spacer"]
      176 GETUPVAL                         R19 1
      177 GETTABLEKS                       R18 R19 K5 ["createElement"]
      179 GETUPVAL                         R20 4
      180 GETTABLEKS                       R19 R20 K51 ["Button"]
      182 DUPTABLE                         R20 K56 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      183 LOADK                            R23 K39 ["UpsellDialog"]
      184 LOADK                            R24 K48 ["TrustedConnectionsButton"]
      185 NAMECALL                         R21 R3 K41 ["getText"]
      187 CALL                             R21 3 1
      188 SETTABLEKS                       R21 R20 K52 ["text"]
      190 GETUPVAL                         R24 4
      191 GETTABLEKS                       R23 R24 K57 ["Enums"]
      193 GETTABLEKS                       R22 R23 K58 ["ButtonVariant"]
      195 GETTABLEKS                       R21 R22 K59 ["Emphasis"]
      197 SETTABLEKS                       R21 R20 K53 ["variant"]
      199 NEWCLOSURE                       R21 P0
      200 CAPTURE                          UPVAL U7
      201 CAPTURE                          UPVAL U8
      202 CAPTURE                          UPVAL U9
      203 CAPTURE                          UPVAL U10
      204 CAPTURE                          UPVAL U11
      205 CAPTURE                          VAL R1
      206 SETTABLEKS                       R21 R20 K54 ["onActivated"]
      208 GETUPVAL                         R24 4
      209 GETTABLEKS                       R23 R24 K57 ["Enums"]
      211 GETTABLEKS                       R22 R23 K60 ["InputSize"]
      213 GETTABLEKS                       R21 R22 K61 ["Small"]
      215 SETTABLEKS                       R21 R20 K55 ["size"]
      217 NAMECALL                         R21 R2 K38 ["getNextOrder"]
      219 CALL                             R21 1 1
      220 SETTABLEKS                       R21 R20 K35 ["LayoutOrder"]
      222 CALL                             R18 2 1
      223 SETTABLEKS                       R18 R17 K48 ["TrustedConnectionsButton"]
      225 GETUPVAL                         R19 1
      226 GETTABLEKS                       R18 R19 K5 ["createElement"]
      228 GETUPVAL                         R20 4
      229 GETTABLEKS                       R19 R20 K51 ["Button"]
      231 DUPTABLE                         R20 K56 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      232 LOADK                            R23 K39 ["UpsellDialog"]
      233 LOADK                            R24 K62 ["ParentalConsentButton"]
      234 NAMECALL                         R21 R3 K41 ["getText"]
      236 CALL                             R21 3 1
      237 SETTABLEKS                       R21 R20 K52 ["text"]
      239 GETUPVAL                         R24 4
      240 GETTABLEKS                       R23 R24 K57 ["Enums"]
      242 GETTABLEKS                       R22 R23 K58 ["ButtonVariant"]
      244 GETTABLEKS                       R21 R22 K63 ["Standard"]
      246 SETTABLEKS                       R21 R20 K53 ["variant"]
      248 NEWCLOSURE                       R21 P1
      249 CAPTURE                          UPVAL U7
      250 CAPTURE                          UPVAL U8
      251 CAPTURE                          UPVAL U9
      252 CAPTURE                          UPVAL U12
      253 CAPTURE                          UPVAL U11
      254 CAPTURE                          VAL R1
      255 SETTABLEKS                       R21 R20 K54 ["onActivated"]
      257 GETUPVAL                         R24 4
      258 GETTABLEKS                       R23 R24 K57 ["Enums"]
      260 GETTABLEKS                       R22 R23 K60 ["InputSize"]
      262 GETTABLEKS                       R21 R22 K61 ["Small"]
      264 SETTABLEKS                       R21 R20 K55 ["size"]
      266 NAMECALL                         R21 R2 K38 ["getNextOrder"]
      268 CALL                             R21 1 1
      269 SETTABLEKS                       R21 R20 K35 ["LayoutOrder"]
      271 CALL                             R18 2 1
      272 SETTABLEKS                       R18 R17 K49 ["VPCButton"]
      274 CALL                             R14 3 1
      275 SETTABLEKS                       R14 R13 K32 ["Footer"]
      277 CALL                             R10 3 1
      278 SETTABLEKS                       R10 R9 K21 ["MainView"]
      280 CALL                             R6 3 -1
      281 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["DebugBuiltInPluginModalsNotBlocking"]
       12 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R0 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R0 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["Foundation"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["View"]
       31 GETTABLEKS                       R5 R3 K13 ["Text"]
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Packages"]
       37 GETTABLEKS                       R7 R8 K14 ["Framework"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R6 K15 ["ContextServices"]
       42 GETTABLEKS                       R8 R7 K16 ["withContext"]
       44 GETTABLEKS                       R9 R7 K17 ["Localization"]
       46 GETTABLEKS                       R10 R6 K18 ["Util"]
       48 GETTABLEKS                       R11 R10 K19 ["LayoutOrderIterator"]
       50 GETIMPORT                        R12 K4 [game]
       52 LOADK                            R14 K20 ["BrowserService"]
       53 NAMECALL                         R12 R12 K21 ["GetService"]
       55 CALL                             R12 2 1
       56 GETIMPORT                        R13 K4 [game]
       58 LOADK                            R15 K22 ["StudioService"]
       59 NAMECALL                         R13 R13 K21 ["GetService"]
       61 CALL                             R13 2 1
       62 GETIMPORT                        R14 K8 [require]
       64 GETTABLEKS                       R18 R0 K23 ["Src"]
       66 GETTABLEKS                       R17 R18 K18 ["Util"]
       68 GETTABLEKS                       R16 R17 K24 ["Telemetry"]
       70 GETTABLEKS                       R15 R16 K25 ["CTAClickedEvent"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K8 [require]
       75 GETTABLEKS                       R17 R0 K9 ["Packages"]
       77 GETTABLEKS                       R16 R17 K26 ["TelemetryProtocol"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R16 R15 K27 ["new"]
       82 CALL                             R16 0 1
       83 GETTABLEKS                       R17 R2 K28 ["PureComponent"]
       85 LOADK                            R19 K29 ["UpsellDialog"]
       86 NAMECALL                         R17 R17 K30 ["extend"]
       88 CALL                             R17 2 1
       89 GETIMPORT                        R18 K4 [game]
       91 LOADK                            R20 K31 ["StartVPCLink"]
       92 LOADK                            R21 K32 ["https://www.roblox.com/my/account?creatorCollaboration"]
       93 NAMECALL                         R18 R18 K33 ["DefineFastString"]
       95 CALL                             R18 3 1
       96 GETIMPORT                        R19 K4 [game]
       98 LOADK                            R21 K34 ["TrustedConnectionsHelpdeskLink"]
       99 LOADK                            R22 K35 ["https://help.roblox.com/hc/en-us/articles/37725513985812-Unlocking-Trusted-Connections-Expressive-Chat-Features-Party-Voice-chat-without-filters"]
      100 NAMECALL                         R19 R19 K33 ["DefineFastString"]
      102 CALL                             R19 3 1
      103 DUPCLOSURE                       R20 K36 [PROTO_0]
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R13
      107 DUPCLOSURE                       R21 K37 [PROTO_2]
      108 CAPTURE                          VAL R12
      109 DUPCLOSURE                       R22 K38 [PROTO_5]
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R19
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R18
      123 SETTABLEKS                       R22 R17 K39 ["render"]
      125 MOVE                             R22 R8
      126 DUPTABLE                         R23 K41 [{"Localization", "Design"}]
      127 SETTABLEKS                       R9 R23 K17 ["Localization"]
      129 GETTABLEKS                       R24 R7 K40 ["Design"]
      131 SETTABLEKS                       R24 R23 K40 ["Design"]
      133 CALL                             R22 1 1
      134 MOVE                             R23 R17
      135 CALL                             R22 1 1
      136 MOVE                             R17 R22
      137 RETURN                           R17 1
