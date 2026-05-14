PROTO_0:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K5 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
        3 LOADK                            R5 K6 ["navigation"]
        4 SETTABLEKS                       R5 R4 K0 ["telemetryType"]
        6 LOADK                            R5 K7 ["page"]
        7 SETTABLEKS                       R5 R4 K1 ["telemetrySubtype"]
        9 LOADK                            R5 K8 ["menu"]
       10 SETTABLEKS                       R5 R4 K2 ["context"]
       12 GETIMPORT                        R5 K11 [string.match]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K12 ["TextKey"]
       17 LOADK                            R7 K13 ["%w+$"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K3 ["from"]
       21 GETIMPORT                        R5 K11 [string.match]
       23 GETTABLEKS                       R6 R0 K12 ["TextKey"]
       25 LOADK                            R7 K13 ["%w+$"]
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K4 ["to"]
       29 NAMECALL                         R1 R1 K14 ["log"]
       31 CALL                             R1 3 0
       32 GETUPVAL                         R1 3
       33 GETTABLEKS                       R1 R1 K15 ["restartAnimation"]
       35 CALL                             R1 0 0
       36 GETUPVAL                         R1 4
       37 MOVE                             R2 R0
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["restartAnimation"]
        3 CALL                             R1 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["Experiences"] ; [+5]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 JUMPIFNOTEQKS                    R0 K2 ["Templates"] ; [+5]
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R2 3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 JUMPIFNOTEQKS                    R0 K3 ["Recents"] ; [+4]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 4
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["restartAnimation"]
        3 CALL                             R1 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["Experiences"] ; [+5]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 JUMPIFNOTEQKS                    R0 K2 ["Templates"] ; [+5]
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R2 3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 JUMPIFNOTEQKS                    R0 K3 ["Recents"] ; [+4]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 4
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R2 1
        5 NAMECALL                         R0 R0 K0 ["setTutorialPopupClosed"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 1
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 3
       11 LOADK                            R6 K1 ["LuaStartPageIsPageMenuCollapsed"]
       12 LOADB                            R7 0
       13 CALL                             R5 2 2
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       17 NEWCLOSURE                       R8 P0
       18 CAPTURE                          VAL R6
       19 NEWTABLE                         R9 0 1
       21 MOVE                             R10 R6
       22 SETLIST                          R9 R10 1 [1]
       24 CALL                             R7 2 1
       25 GETUPVAL                         R8 5
       26 GETUPVAL                         R9 6
       27 GETTABLEKS                       R9 R9 K3 ["get"]
       29 CALL                             R9 0 -1
       30 CALL                             R8 -1 1
       31 GETUPVAL                         R9 5
       32 GETUPVAL                         R10 7
       33 GETTABLEKS                       R10 R10 K3 ["get"]
       35 CALL                             R10 0 -1
       36 CALL                             R9 -1 1
       37 DUPTABLE                         R10 K6 [{"showVerifyAge", "showAgeRestricted"}]
       38 SETTABLEKS                       R8 R10 K4 ["showVerifyAge"]
       40 SETTABLEKS                       R9 R10 K5 ["showAgeRestricted"]
       42 GETUPVAL                         R11 8
       43 CALL                             R11 0 1
       44 GETUPVAL                         R12 4
       45 GETTABLEKS                       R12 R12 K7 ["createElement"]
       47 GETUPVAL                         R13 9
       48 GETTABLEKS                       R13 R13 K8 ["Provider"]
       50 DUPTABLE                         R14 K10 [{"value"}]
       51 SETTABLEKS                       R10 R14 K9 ["value"]
       53 DUPTABLE                         R15 K13 [{"Wrapper", "TutorialPopup"}]
       54 GETUPVAL                         R16 4
       55 GETTABLEKS                       R16 R16 K7 ["createElement"]
       57 GETUPVAL                         R17 10
       58 DUPTABLE                         R18 K16 [{"LayoutOrder", "tag"}]
       59 MOVE                             R19 R11
       60 CALL                             R19 0 1
       61 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
       63 LOADK                            R19 K17 ["row size-full bg-surface-0"]
       64 SETTABLEKS                       R19 R18 K15 ["tag"]
       66 DUPTABLE                         R19 K21 [{"Menu", "Separator", "SafetyFAEUpsellContextScope"}]
       67 GETUPVAL                         R20 4
       68 GETTABLEKS                       R20 R20 K7 ["createElement"]
       70 GETUPVAL                         R21 11
       71 DUPTABLE                         R22 K27 [{"LayoutOrder", "pages", "selectedPage", "onPageSwap", "isCollapsed", "toggleIsCollapsed"}]
       72 MOVE                             R23 R11
       73 CALL                             R23 0 1
       74 SETTABLEKS                       R23 R22 K14 ["LayoutOrder"]
       76 GETUPVAL                         R23 12
       77 SETTABLEKS                       R23 R22 K22 ["pages"]
       79 SETTABLEKS                       R3 R22 K23 ["selectedPage"]
       81 NEWCLOSURE                       R23 P1
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U13
       84 CAPTURE                          VAL R3
       85 CAPTURE                          UPVAL U14
       86 CAPTURE                          VAL R4
       87 SETTABLEKS                       R23 R22 K24 ["onPageSwap"]
       89 SETTABLEKS                       R5 R22 K25 ["isCollapsed"]
       91 SETTABLEKS                       R7 R22 K26 ["toggleIsCollapsed"]
       93 CALL                             R20 2 1
       94 SETTABLEKS                       R20 R19 K18 ["Menu"]
       96 GETUPVAL                         R20 4
       97 GETTABLEKS                       R20 R20 K7 ["createElement"]
       99 GETUPVAL                         R21 15
      100 DUPTABLE                         R22 K29 [{"isVertical", "LayoutOrder"}]
      101 LOADB                            R23 1
      102 SETTABLEKS                       R23 R22 K28 ["isVertical"]
      104 MOVE                             R23 R11
      105 CALL                             R23 0 1
      106 SETTABLEKS                       R23 R22 K14 ["LayoutOrder"]
      108 CALL                             R20 2 1
      109 SETTABLEKS                       R20 R19 K19 ["Separator"]
      111 GETUPVAL                         R21 16
      112 JUMPIFNOT                        R21 ; [+40]
      113 GETUPVAL                         R20 4
      114 GETTABLEKS                       R20 R20 K7 ["createElement"]
      116 GETUPVAL                         R21 17
      117 GETTABLEKS                       R21 R21 K8 ["Provider"]
      119 LOADNIL                          R22
      120 DUPTABLE                         R23 K31 [{"Page"}]
      121 GETUPVAL                         R24 4
      122 GETTABLEKS                       R24 R24 K7 ["createElement"]
      124 GETUPVAL                         R25 10
      125 DUPTABLE                         R26 K16 [{"LayoutOrder", "tag"}]
      126 MOVE                             R27 R11
      127 CALL                             R27 0 1
      128 SETTABLEKS                       R27 R26 K14 ["LayoutOrder"]
      130 LOADK                            R27 K32 ["align-y-center align-x-center size-full fill"]
      131 SETTABLEKS                       R27 R26 K15 ["tag"]
      133 GETUPVAL                         R27 4
      134 GETTABLEKS                       R27 R27 K7 ["createElement"]
      136 GETTABLEKS                       R28 R3 K33 ["PageComponent"]
      138 DUPTABLE                         R29 K34 [{"onPageSwap"}]
      139 NEWCLOSURE                       R30 P2
      140 CAPTURE                          UPVAL U14
      141 CAPTURE                          VAL R4
      142 CAPTURE                          UPVAL U18
      143 CAPTURE                          UPVAL U19
      144 CAPTURE                          UPVAL U20
      145 SETTABLEKS                       R30 R29 K24 ["onPageSwap"]
      147 CALL                             R27 2 -1
      148 CALL                             R24 -1 1
      149 SETTABLEKS                       R24 R23 K30 ["Page"]
      151 CALL                             R20 3 1
      152 JUMP                             ; [+28]
      153 GETUPVAL                         R20 4
      154 GETTABLEKS                       R20 R20 K7 ["createElement"]
      156 GETUPVAL                         R21 10
      157 DUPTABLE                         R22 K16 [{"LayoutOrder", "tag"}]
      158 MOVE                             R23 R11
      159 CALL                             R23 0 1
      160 SETTABLEKS                       R23 R22 K14 ["LayoutOrder"]
      162 LOADK                            R23 K32 ["align-y-center align-x-center size-full fill"]
      163 SETTABLEKS                       R23 R22 K15 ["tag"]
      165 GETUPVAL                         R23 4
      166 GETTABLEKS                       R23 R23 K7 ["createElement"]
      168 GETTABLEKS                       R24 R3 K33 ["PageComponent"]
      170 DUPTABLE                         R25 K34 [{"onPageSwap"}]
      171 NEWCLOSURE                       R26 P3
      172 CAPTURE                          UPVAL U14
      173 CAPTURE                          VAL R4
      174 CAPTURE                          UPVAL U18
      175 CAPTURE                          UPVAL U19
      176 CAPTURE                          UPVAL U20
      177 SETTABLEKS                       R26 R25 K24 ["onPageSwap"]
      179 CALL                             R23 2 -1
      180 CALL                             R20 -1 1
      181 SETTABLEKS                       R20 R19 K20 ["SafetyFAEUpsellContextScope"]
      183 CALL                             R16 3 1
      184 SETTABLEKS                       R16 R15 K11 ["Wrapper"]
      186 JUMPIFNOT                        R1 ; [+24]
      187 GETUPVAL                         R17 21
      188 NAMECALL                         R17 R17 K35 ["getDaysSinceFirstUserLogin"]
      190 CALL                             R17 1 1
      191 LOADN                            R18 1
      192 JUMPIFNOTLE                      R17 R18 ; [+18]
      194 GETUPVAL                         R17 21
      195 NAMECALL                         R17 R17 K36 ["isTutorialPopupClosed"]
      197 CALL                             R17 1 1
      198 JUMPIF                           R17 ; [+12]
      199 GETUPVAL                         R16 4
      200 GETTABLEKS                       R16 R16 K7 ["createElement"]
      202 GETUPVAL                         R17 22
      203 DUPTABLE                         R18 K38 [{"onClose"}]
      204 NEWCLOSURE                       R19 P4
      205 CAPTURE                          VAL R2
      206 CAPTURE                          UPVAL U21
      207 SETTABLEKS                       R19 R18 K37 ["onClose"]
      209 CALL                             R16 2 1
      210 JUMP                             ; [+1]
      211 LOADNIL                          R16
      212 SETTABLEKS                       R16 R15 K12 ["TutorialPopup"]
      214 CALL                             R12 3 -1
      215 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["counter"]
       27 GETTABLEKS                       R5 R3 K12 ["UI"]
       29 GETTABLEKS                       R5 R5 K13 ["Hooks"]
       31 GETTABLEKS                       R6 R5 K14 ["useDialog"]
       33 GETIMPORT                        R7 K5 [require]
       35 GETTABLEKS                       R8 R0 K15 ["Src"]
       37 GETTABLEKS                       R8 R8 K10 ["Util"]
       39 GETTABLEKS                       R8 R8 K16 ["Foundation"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R7 K17 ["View"]
       44 GETIMPORT                        R9 K5 [require]
       46 GETTABLEKS                       R10 R0 K15 ["Src"]
       48 GETTABLEKS                       R10 R10 K10 ["Util"]
       50 GETTABLEKS                       R10 R10 K18 ["Telemetry"]
       52 GETTABLEKS                       R10 R10 K19 ["TelemetryContext"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R0 K15 ["Src"]
       59 GETTABLEKS                       R11 R11 K10 ["Util"]
       61 GETTABLEKS                       R11 R11 K18 ["Telemetry"]
       63 GETTABLEKS                       R11 R11 K20 ["StartPageTelemetryEvent"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K6 ["Packages"]
       70 GETTABLEKS                       R12 R12 K21 ["StudioFoundation"]
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R12 R11 K13 ["Hooks"]
       75 GETTABLEKS                       R12 R12 K22 ["usePluginSetting"]
       77 GETIMPORT                        R13 K5 [require]
       79 GETTABLEKS                       R14 R0 K15 ["Src"]
       81 GETTABLEKS                       R14 R14 K10 ["Util"]
       83 GETTABLEKS                       R14 R14 K23 ["AgeRestrictedDialog"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R15 R0 K15 ["Src"]
       90 GETTABLEKS                       R15 R15 K24 ["Contexts"]
       92 GETTABLEKS                       R15 R15 K25 ["SafetyFAEUpsellContext"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K5 [require]
       97 GETTABLEKS                       R16 R0 K15 ["Src"]
       99 GETTABLEKS                       R16 R16 K10 ["Util"]
      101 GETTABLEKS                       R16 R16 K26 ["VerifyAgeDialog"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K5 [require]
      106 GETTABLEKS                       R17 R0 K15 ["Src"]
      108 GETTABLEKS                       R17 R17 K16 ["Foundation"]
      110 GETTABLEKS                       R17 R17 K27 ["Components"]
      112 GETTABLEKS                       R17 R17 K28 ["PageMenu"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K5 [require]
      117 GETTABLEKS                       R18 R0 K15 ["Src"]
      119 GETTABLEKS                       R18 R18 K16 ["Foundation"]
      121 GETTABLEKS                       R18 R18 K27 ["Components"]
      123 GETTABLEKS                       R18 R18 K29 ["Pages"]
      125 CALL                             R17 1 1
      126 GETIMPORT                        R18 K5 [require]
      128 GETTABLEKS                       R19 R0 K15 ["Src"]
      130 GETTABLEKS                       R19 R19 K16 ["Foundation"]
      132 GETTABLEKS                       R19 R19 K27 ["Components"]
      134 GETTABLEKS                       R19 R19 K30 ["Separator"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K5 [require]
      139 GETTABLEKS                       R20 R0 K15 ["Src"]
      141 GETTABLEKS                       R20 R20 K16 ["Foundation"]
      143 GETTABLEKS                       R20 R20 K27 ["Components"]
      145 GETTABLEKS                       R20 R20 K31 ["TutorialPopup"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K5 [require]
      150 GETTABLEKS                       R21 R0 K15 ["Src"]
      152 GETTABLEKS                       R21 R21 K27 ["Components"]
      154 GETTABLEKS                       R21 R21 K32 ["Shimmer"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K5 [require]
      159 GETTABLEKS                       R22 R0 K15 ["Src"]
      161 GETTABLEKS                       R22 R22 K33 ["SharedFlags"]
      163 GETTABLEKS                       R22 R22 K34 ["getFFlagLuaStartPageVerifyAgeBanner"]
      165 CALL                             R21 1 1
      166 GETTABLEN                        R22 R17 1
      167 GETTABLEN                        R23 R17 2
      168 GETTABLEN                        R24 R17 3
      169 GETTABLEN                        R25 R17 4
      170 GETIMPORT                        R26 K5 [require]
      172 GETTABLEKS                       R27 R0 K15 ["Src"]
      174 GETTABLEKS                       R27 R27 K10 ["Util"]
      176 GETTABLEKS                       R27 R27 K35 ["Dialogs"]
      178 CALL                             R26 1 1
      179 GETIMPORT                        R27 K5 [require]
      181 GETTABLEKS                       R28 R0 K15 ["Src"]
      183 GETTABLEKS                       R28 R28 K10 ["Util"]
      185 GETTABLEKS                       R28 R28 K36 ["Services"]
      187 CALL                             R27 1 1
      188 GETTABLEKS                       R28 R27 K37 ["StartPageManager"]
      190 DUPCLOSURE                       R29 K38 [PROTO_6]
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R2
      193 CAPTURE                          VAL R23
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R6
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R26
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R16
      203 CAPTURE                          VAL R17
      204 CAPTURE                          VAL R10
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R14
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R25
      211 CAPTURE                          VAL R22
      212 CAPTURE                          VAL R28
      213 CAPTURE                          VAL R19
      214 RETURN                           R29 1
