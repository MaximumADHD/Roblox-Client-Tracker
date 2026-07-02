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
        2 DUPTABLE                         R3 K5 [{[1], ["action"] = "establish_TC", ["upsellEntrySurface"] = "collab_dialog"}]
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R4 R4 K6 ["GetUserId"]
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R4 R3 K0 ["userId"]
        9 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 3
       13 GETIMPORT                        R1 K9 [pcall]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R0
       18 CALL                             R1 1 2
       19 JUMPIF                           R1 ; [+10]
       20 GETIMPORT                        R3 K11 [warn]
       22 LOADK                            R5 K12 ["OpenUrl failed: "]
       23 FASTCALL1                        TOSTRING R2 ; [+3]
       24 MOVE                             R7 R2
       25 GETIMPORT                        R6 K14 [tostring]
       27 CALL                             R6 1 1
       28 CONCAT                           R4 R5 R6
       29 CALL                             R3 1 0
       30 GETUPVAL                         R0 5
       31 GETTABLEKS                       R0 R0 K15 ["onClose"]
       33 CALL                             R0 0 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K5 [{[1], ["action"] = "get_consent", ["upsellEntrySurface"] = "collab_dialog"}]
        3 GETUPVAL                         R4 2
        4 NAMECALL                         R4 R4 K6 ["GetUserId"]
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R4 R3 K0 ["userId"]
        9 NAMECALL                         R0 R0 K7 ["logRobloxTelemetryEvent"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 3
       13 GETIMPORT                        R1 K9 [pcall]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          VAL R0
       18 CALL                             R1 1 2
       19 JUMPIF                           R1 ; [+10]
       20 GETIMPORT                        R3 K11 [warn]
       22 LOADK                            R5 K12 ["OpenUrl failed: "]
       23 FASTCALL1                        TOSTRING R2 ; [+3]
       24 MOVE                             R7 R2
       25 GETIMPORT                        R6 K14 [tostring]
       27 CALL                             R6 1 1
       28 CONCAT                           R4 R5 R6
       29 CALL                             R3 1 0
       30 GETUPVAL                         R0 5
       31 GETTABLEKS                       R0 R0 K15 ["onClose"]
       33 CALL                             R0 0 0
       34 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R1 K2 ["Localization"]
        8 GETTABLEKS                       R4 R1 K3 ["Design"]
       10 NAMECALL                         R5 R4 K4 ["get"]
       12 CALL                             R5 1 1
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K5 ["createElement"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K6 ["UI"]
       19 GETTABLEKS                       R7 R7 K7 ["Dialog"]
       21 DUPTABLE                         R8 K18 [{["Title"] = "", ["Enabled"] = True, ["Modal"], ["Resizable"] = False, ["Size"], ["MinSize"], ["OnClose"]}]
       22 GETUPVAL                         R10 3
       23 NOT                              R9 R10
       24 SETTABLEKS                       R9 R8 K12 ["Modal"]
       26 GETIMPORT                        R9 K20 [Vector2.new]
       28 LOADN                            R10 350
       29 LOADN                            R11 200
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K15 ["Size"]
       33 GETIMPORT                        R9 K20 [Vector2.new]
       35 LOADN                            R10 350
       36 LOADN                            R11 200
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K16 ["MinSize"]
       40 GETTABLEKS                       R9 R1 K21 ["onClose"]
       42 SETTABLEKS                       R9 R8 K17 ["OnClose"]
       44 DUPTABLE                         R9 K24 [{"StyleLink", "MainView"}]
       45 JUMPIFNOT                        R5 ; [+9]
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K5 ["createElement"]
       49 LOADK                            R11 K22 ["StyleLink"]
       50 DUPTABLE                         R12 K26 [{"StyleSheet"}]
       51 SETTABLEKS                       R5 R12 K25 ["StyleSheet"]
       53 CALL                             R10 2 1
       54 JUMPIF                           R10 ; [+1]
       55 LOADNIL                          R10
       56 SETTABLEKS                       R10 R9 K22 ["StyleLink"]
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R10 R10 K5 ["createElement"]
       61 GETUPVAL                         R11 4
       62 GETTABLEKS                       R11 R11 K27 ["View"]
       64 DUPTABLE                         R12 K30 [{["tag"] = "col gap-large size-full-full padding-large radius-none bg-surface-200"}]
       65 DUPTABLE                         R13 K35 [{"UpsellTitle", "UpsellBody", "Spacer", "Footer"}]
       66 GETUPVAL                         R14 1
       67 GETTABLEKS                       R14 R14 K5 ["createElement"]
       69 GETUPVAL                         R15 4
       70 GETTABLEKS                       R15 R15 K36 ["Text"]
       72 DUPTABLE                         R16 K39 [{["tag"] = "size-0-0 auto-xy text-title-medium text-wrap text-align-x-left text-align-y-center", ["LayoutOrder"], ["Text"]}]
       73 NAMECALL                         R17 R2 K40 ["getNextOrder"]
       75 CALL                             R17 1 1
       76 SETTABLEKS                       R17 R16 K38 ["LayoutOrder"]
       78 LOADK                            R19 K41 ["UpsellDialog"]
       79 LOADK                            R20 K42 ["title"]
       80 NAMECALL                         R17 R3 K43 ["getText"]
       82 CALL                             R17 3 1
       83 SETTABLEKS                       R17 R16 K36 ["Text"]
       85 CALL                             R14 2 1
       86 SETTABLEKS                       R14 R13 K31 ["UpsellTitle"]
       88 GETUPVAL                         R14 1
       89 GETTABLEKS                       R14 R14 K5 ["createElement"]
       91 GETUPVAL                         R15 5
       92 DUPTABLE                         R16 K45 [{["LayoutOrder"], ["tag"] = "flex-y-fill size-0-0 auto-xy text-body-small text-wrap text-align-x-left", ["Text"]}]
       93 NAMECALL                         R17 R2 K40 ["getNextOrder"]
       95 CALL                             R17 1 1
       96 SETTABLEKS                       R17 R16 K38 ["LayoutOrder"]
       98 LOADK                            R19 K41 ["UpsellDialog"]
       99 LOADK                            R20 K46 ["description"]
      100 NAMECALL                         R17 R3 K43 ["getText"]
      102 CALL                             R17 3 1
      103 SETTABLEKS                       R17 R16 K36 ["Text"]
      105 CALL                             R14 2 1
      106 SETTABLEKS                       R14 R13 K32 ["UpsellBody"]
      108 GETUPVAL                         R14 1
      109 GETTABLEKS                       R14 R14 K5 ["createElement"]
      111 GETUPVAL                         R15 4
      112 GETTABLEKS                       R15 R15 K27 ["View"]
      114 DUPTABLE                         R16 K48 [{["tag"] = "fill", ["LayoutOrder"]}]
      115 NAMECALL                         R17 R2 K40 ["getNextOrder"]
      117 CALL                             R17 1 1
      118 SETTABLEKS                       R17 R16 K38 ["LayoutOrder"]
      120 CALL                             R14 2 1
      121 SETTABLEKS                       R14 R13 K33 ["Spacer"]
      123 GETUPVAL                         R14 1
      124 GETTABLEKS                       R14 R14 K5 ["createElement"]
      126 GETUPVAL                         R15 6
      127 DUPTABLE                         R16 K50 [{["tag"] = "row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      128 NAMECALL                         R17 R2 K40 ["getNextOrder"]
      130 CALL                             R17 1 1
      131 SETTABLEKS                       R17 R16 K38 ["LayoutOrder"]
      133 DUPTABLE                         R17 K53 [{"Spacer", "TrustedConnectionsButton", "VPCButton"}]
      134 GETUPVAL                         R18 1
      135 GETTABLEKS                       R18 R18 K5 ["createElement"]
      137 GETUPVAL                         R19 4
      138 GETTABLEKS                       R19 R19 K27 ["View"]
      140 DUPTABLE                         R20 K48 [{["tag"] = "fill", ["LayoutOrder"]}]
      141 NAMECALL                         R21 R2 K40 ["getNextOrder"]
      143 CALL                             R21 1 1
      144 SETTABLEKS                       R21 R20 K38 ["LayoutOrder"]
      146 CALL                             R18 2 1
      147 SETTABLEKS                       R18 R17 K33 ["Spacer"]
      149 GETUPVAL                         R18 1
      150 GETTABLEKS                       R18 R18 K5 ["createElement"]
      152 GETUPVAL                         R19 4
      153 GETTABLEKS                       R19 R19 K54 ["Button"]
      155 DUPTABLE                         R20 K59 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      156 LOADK                            R23 K41 ["UpsellDialog"]
      157 LOADK                            R24 K51 ["TrustedConnectionsButton"]
      158 NAMECALL                         R21 R3 K43 ["getText"]
      160 CALL                             R21 3 1
      161 SETTABLEKS                       R21 R20 K55 ["text"]
      163 GETUPVAL                         R21 4
      164 GETTABLEKS                       R21 R21 K60 ["Enums"]
      166 GETTABLEKS                       R21 R21 K61 ["ButtonVariant"]
      168 GETTABLEKS                       R21 R21 K62 ["Emphasis"]
      170 SETTABLEKS                       R21 R20 K56 ["variant"]
      172 NEWCLOSURE                       R21 P0
      173 CAPTURE                          UPVAL U7
      174 CAPTURE                          UPVAL U8
      175 CAPTURE                          UPVAL U9
      176 CAPTURE                          UPVAL U10
      177 CAPTURE                          UPVAL U11
      178 CAPTURE                          VAL R1
      179 SETTABLEKS                       R21 R20 K57 ["onActivated"]
      181 GETUPVAL                         R21 4
      182 GETTABLEKS                       R21 R21 K60 ["Enums"]
      184 GETTABLEKS                       R21 R21 K63 ["InputSize"]
      186 GETTABLEKS                       R21 R21 K64 ["Small"]
      188 SETTABLEKS                       R21 R20 K58 ["size"]
      190 NAMECALL                         R21 R2 K40 ["getNextOrder"]
      192 CALL                             R21 1 1
      193 SETTABLEKS                       R21 R20 K38 ["LayoutOrder"]
      195 CALL                             R18 2 1
      196 SETTABLEKS                       R18 R17 K51 ["TrustedConnectionsButton"]
      198 GETUPVAL                         R18 1
      199 GETTABLEKS                       R18 R18 K5 ["createElement"]
      201 GETUPVAL                         R19 4
      202 GETTABLEKS                       R19 R19 K54 ["Button"]
      204 DUPTABLE                         R20 K59 [{"text", "variant", "onActivated", "size", "LayoutOrder"}]
      205 LOADK                            R23 K41 ["UpsellDialog"]
      206 LOADK                            R24 K65 ["ParentalConsentButton"]
      207 NAMECALL                         R21 R3 K43 ["getText"]
      209 CALL                             R21 3 1
      210 SETTABLEKS                       R21 R20 K55 ["text"]
      212 GETUPVAL                         R21 4
      213 GETTABLEKS                       R21 R21 K60 ["Enums"]
      215 GETTABLEKS                       R21 R21 K61 ["ButtonVariant"]
      217 GETTABLEKS                       R21 R21 K66 ["Standard"]
      219 SETTABLEKS                       R21 R20 K56 ["variant"]
      221 NEWCLOSURE                       R21 P1
      222 CAPTURE                          UPVAL U7
      223 CAPTURE                          UPVAL U8
      224 CAPTURE                          UPVAL U9
      225 CAPTURE                          UPVAL U12
      226 CAPTURE                          UPVAL U11
      227 CAPTURE                          VAL R1
      228 SETTABLEKS                       R21 R20 K57 ["onActivated"]
      230 GETUPVAL                         R21 4
      231 GETTABLEKS                       R21 R21 K60 ["Enums"]
      233 GETTABLEKS                       R21 R21 K63 ["InputSize"]
      235 GETTABLEKS                       R21 R21 K64 ["Small"]
      237 SETTABLEKS                       R21 R20 K58 ["size"]
      239 NAMECALL                         R21 R2 K40 ["getNextOrder"]
      241 CALL                             R21 1 1
      242 SETTABLEKS                       R21 R20 K38 ["LayoutOrder"]
      244 CALL                             R18 2 1
      245 SETTABLEKS                       R18 R17 K52 ["VPCButton"]
      247 CALL                             R14 3 1
      248 SETTABLEKS                       R14 R13 K34 ["Footer"]
      250 CALL                             R10 3 1
      251 SETTABLEKS                       R10 R9 K23 ["MainView"]
      253 CALL                             R6 3 -1
      254 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["DebugBuiltInPluginModalsNotBlocking"]
       12 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R0 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["React"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R3 K12 ["View"]
       31 GETTABLEKS                       R5 R3 K13 ["Text"]
       33 GETIMPORT                        R6 K8 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Packages"]
       37 GETTABLEKS                       R7 R7 K14 ["Framework"]
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
       64 GETTABLEKS                       R15 R0 K23 ["Src"]
       66 GETTABLEKS                       R15 R15 K18 ["Util"]
       68 GETTABLEKS                       R15 R15 K24 ["Telemetry"]
       70 GETTABLEKS                       R15 R15 K25 ["CTAClickedEvent"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K8 [require]
       75 GETTABLEKS                       R16 R0 K9 ["Packages"]
       77 GETTABLEKS                       R16 R16 K26 ["TelemetryProtocol"]
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
