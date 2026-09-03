PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useContext"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["threadId"]
       11 MOVE                             R3 R0
       12 GETTABLEKS                       R5 R0 K3 ["threads"]
       14 GETTABLE                         R4 R5 R2
       15 RETURN                           R3 2

PROTO_1:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["threadLoadState"]
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K1 ["listSessionsPage"]
       14 LOADNIL                          R1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 4
       18 GETTABLEKS                       R0 R0 K2 ["getCoordinator"]
       20 CALL                             R0 0 1
       21 GETTABLEKS                       R1 R0 K3 ["requestLoad"]
       23 DUPTABLE                         R2 K5 [{"scope"}]
       24 GETUPVAL                         R3 5
       25 GETTABLEKS                       R3 R3 K6 ["ScopeTypes"]
       27 GETTABLEKS                       R3 R3 K7 ["Threads"]
       29 SETTABLEKS                       R3 R2 K4 ["scope"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"NewThread"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["ThreadsMenu"]
        3 LOADK                            R4 K0 ["NewThread"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["NewThread"]
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["useContext"]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K1 ["Context"]
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R5 R4 K2 ["threadId"]
       11 MOVE                             R1 R3
       12 GETTABLEKS                       R6 R3 K3 ["threads"]
       14 GETTABLE                         R2 R6 R5
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K0 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K1 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K4 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K5 ["useTokens"]
       27 CALL                             R4 0 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K6 ["useState"]
       31 LOADB                            R6 0
       32 CALL                             R5 1 2
       33 GETUPVAL                         R7 5
       34 MOVE                             R8 R6
       35 CALL                             R7 1 0
       36 GETUPVAL                         R7 6
       37 GETUPVAL                         R8 7
       38 CALL                             R8 0 -1
       39 CALL                             R7 -1 1
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       43 NEWCLOSURE                       R9 P0
       44 CAPTURE                          VAL R6
       45 NEWTABLE                         R10 0 0
       47 CALL                             R8 2 1
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       51 NEWCLOSURE                       R10 P1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          VAL R7
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U9
       58 NEWTABLE                         R11 0 3
       60 GETTABLEKS                       R12 R7 K9 ["listSessionsPage"]
       62 GETTABLEKS                       R13 R1 K10 ["threadLoadState"]
       64 MOVE                             R14 R5
       65 SETLIST                          R11 R12 3 [1]
       67 CALL                             R9 2 0
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K11 ["useMemo"]
       71 DUPCLOSURE                       R10 K12 [PROTO_4]
       72 CAPTURE                          UPVAL U10
       73 NEWTABLE                         R11 0 1
       75 GETUPVAL                         R12 10
       76 GETTABLEKS                       R12 R12 K13 ["locale"]
       78 SETLIST                          R11 R12 1 [1]
       80 CALL                             R9 2 1
       81 GETUPVAL                         R10 11
       82 CALL                             R10 0 1
       83 GETUPVAL                         R11 12
       84 GETUPVAL                         R12 13
       85 GETTABLEKS                       R12 R12 K14 ["Root"]
       87 DUPTABLE                         R13 K16 [{"isOpen"}]
       88 SETTABLEKS                       R5 R13 K15 ["isOpen"]
       90 DUPTABLE                         R14 K19 [{"Anchor", "ThreadsMenuPopover"}]
       91 GETUPVAL                         R15 12
       92 GETUPVAL                         R16 13
       93 GETTABLEKS                       R16 R16 K17 ["Anchor"]
       95 DUPTABLE                         R17 K21 [{"LayoutOrder"}]
       96 GETTABLEKS                       R18 R0 K20 ["LayoutOrder"]
       98 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      100 DUPTABLE                         R18 K23 [{"ToggleThreadsMenuButton"}]
      101 GETUPVAL                         R19 12
      102 GETUPVAL                         R20 14
      103 DUPTABLE                         R21 K31 [{"trailing", "text", "size", "variant", "isChecked", "onActivated", "LayoutOrder", "testId"}]
      104 GETUPVAL                         R22 4
      105 GETTABLEKS                       R22 R22 K32 ["Enums"]
      107 GETTABLEKS                       R22 R22 K33 ["IconName"]
      109 GETTABLEKS                       R22 R22 K34 ["ChevronLargeDown"]
      111 SETTABLEKS                       R22 R21 K24 ["trailing"]
      113 JUMPIF                           R3 ; [+2]
      114 LOADK                            R22 K35 [""]
      115 JUMP                             ; [+30]
      116 JUMPIFNOT                        R2 ; [+9]
      117 GETTABLEKS                       R24 R2 K36 ["title"]
      119 LENGTH                           R23 R24
      120 LOADN                            R24 0
      121 JUMPIFNOTLT                      R24 R23 ; [+4]
      123 GETTABLEKS                       R22 R2 K36 ["title"]
      125 JUMP                             ; [+20]
      126 GETUPVAL                         R23 15
      127 GETTABLEKS                       R23 R23 K37 ["FFlagAssistantUntitledChatPlaceholder"]
      129 JUMPIFNOT                        R23 ; [+14]
      130 JUMPIFNOT                        R2 ; [+13]
      131 GETUPVAL                         R23 16
      132 GETTABLEKS                       R23 R23 K38 ["getThreadMetadata"]
      134 GETTABLEKS                       R24 R2 K2 ["threadId"]
      136 CALL                             R23 1 1
      137 GETTABLEKS                       R23 R23 K39 ["isNewThread"]
      139 JUMPIF                           R23 ; [+4]
      140 GETUPVAL                         R22 15
      141 GETTABLEKS                       R22 R22 K40 ["FStringAssistantUntitledChatPlaceholder"]
      143 JUMP                             ; [+2]
      144 GETTABLEKS                       R22 R9 K41 ["NewThread"]
      146 SETTABLEKS                       R22 R21 K25 ["text"]
      148 GETUPVAL                         R22 4
      149 GETTABLEKS                       R22 R22 K32 ["Enums"]
      151 GETTABLEKS                       R22 R22 K42 ["ChipSize"]
      153 GETTABLEKS                       R22 R22 K43 ["Medium"]
      155 SETTABLEKS                       R22 R21 K26 ["size"]
      157 GETUPVAL                         R22 4
      158 GETTABLEKS                       R22 R22 K32 ["Enums"]
      160 GETTABLEKS                       R22 R22 K44 ["ChipVariant"]
      162 GETTABLEKS                       R22 R22 K45 ["Utility"]
      164 SETTABLEKS                       R22 R21 K27 ["variant"]
      166 SETTABLEKS                       R5 R21 K28 ["isChecked"]
      168 SETTABLEKS                       R8 R21 K29 ["onActivated"]
      170 MOVE                             R22 R10
      171 CALL                             R22 0 1
      172 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      174 GETUPVAL                         R22 17
      175 GETTABLEKS                       R22 R22 K46 ["Header"]
      177 GETTABLEKS                       R22 R22 K47 ["ToggleThreadsMenu"]
      179 SETTABLEKS                       R22 R21 K30 ["testId"]
      181 CALL                             R19 2 1
      182 SETTABLEKS                       R19 R18 K22 ["ToggleThreadsMenuButton"]
      184 CALL                             R15 3 1
      185 SETTABLEKS                       R15 R14 K17 ["Anchor"]
      187 MOVE                             R15 R5
      188 JUMPIFNOT                        R15 ; [+55]
      189 GETUPVAL                         R15 12
      190 GETUPVAL                         R16 13
      191 GETTABLEKS                       R16 R16 K48 ["Content"]
      193 DUPTABLE                         R17 K54 [{["hasArrow"] = False, ["backgroundStyle"], ["side"], ["onPressedOutside"]}]
      194 GETTABLEKS                       R18 R4 K55 ["Color"]
      196 GETTABLEKS                       R18 R18 K56 ["None"]
      198 SETTABLEKS                       R18 R17 K51 ["backgroundStyle"]
      200 DUPTABLE                         R18 K59 [{"position", "offset"}]
      201 GETUPVAL                         R19 4
      202 GETTABLEKS                       R19 R19 K32 ["Enums"]
      204 GETTABLEKS                       R19 R19 K60 ["PopoverSide"]
      206 GETTABLEKS                       R19 R19 K61 ["Bottom"]
      208 SETTABLEKS                       R19 R18 K57 ["position"]
      210 GETTABLEKS                       R19 R4 K62 ["Padding"]
      212 GETTABLEKS                       R19 R19 K63 ["XSmall"]
      214 SETTABLEKS                       R19 R18 K58 ["offset"]
      216 SETTABLEKS                       R18 R17 K52 ["side"]
      218 SETTABLEKS                       R8 R17 K53 ["onPressedOutside"]
      220 DUPTABLE                         R18 K66 [{"UIListLayout", "ThreadsMenu"}]
      221 GETUPVAL                         R19 12
      222 LOADK                            R20 K64 ["UIListLayout"]
      223 DUPTABLE                         R21 K69 [{"FillDirection", "HorizontalFlex"}]
      224 GETIMPORT                        R22 K72 [Enum.FillDirection.Vertical]
      226 SETTABLEKS                       R22 R21 K67 ["FillDirection"]
      228 GETIMPORT                        R22 K75 [Enum.UIFlexAlignment.Fill]
      230 SETTABLEKS                       R22 R21 K68 ["HorizontalFlex"]
      232 CALL                             R19 2 1
      233 SETTABLEKS                       R19 R18 K64 ["UIListLayout"]
      235 GETUPVAL                         R19 12
      236 GETUPVAL                         R20 18
      237 DUPTABLE                         R21 K77 [{"setThreadsMenuOpen"}]
      238 SETTABLEKS                       R6 R21 K76 ["setThreadsMenuOpen"]
      240 CALL                             R19 2 1
      241 SETTABLEKS                       R19 R18 K65 ["ThreadsMenu"]
      243 CALL                             R15 3 1
      244 SETTABLEKS                       R15 R14 K18 ["ThreadsMenuPopover"]
      246 CALL                             R11 3 -1
      247 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentIdGenerator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["FlagUtils"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Flags"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Parent"]
       28 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R5 R2 K12 ["getIsAssistantHarnessSplit"]
       33 GETIMPORT                        R6 K5 [require]
       35 GETTABLEKS                       R7 R0 K6 ["Util"]
       37 GETTABLEKS                       R7 R7 K13 ["Persistence"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R0 K10 ["Parent"]
       44 GETTABLEKS                       R8 R8 K14 ["React"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K10 ["Parent"]
       51 GETTABLEKS                       R9 R9 K15 ["ReactUtils"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Components"]
       58 GETTABLEKS                       R10 R10 K17 ["Contexts"]
       60 GETTABLEKS                       R10 R10 K18 ["SessionThreadReadyContext"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R11 R0 K6 ["Util"]
       67 GETTABLEKS                       R11 R11 K19 ["TestIds"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R12 R0 K16 ["Components"]
       74 GETTABLEKS                       R12 R12 K17 ["Contexts"]
       76 GETTABLEKS                       R12 R12 K20 ["ThreadIdContext"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K5 [require]
       81 GETTABLEKS                       R13 R0 K16 ["Components"]
       83 GETTABLEKS                       R13 R13 K21 ["ThreadsWindow"]
       85 GETTABLEKS                       R13 R13 K22 ["ThreadsMenu"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K5 [require]
       90 GETTABLEKS                       R14 R0 K23 ["Resources"]
       92 GETTABLEKS                       R14 R14 K24 ["Localization"]
       94 GETTABLEKS                       R14 R14 K25 ["Translator"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K5 [require]
       99 GETTABLEKS                       R15 R0 K26 ["Types"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K5 [require]
      104 GETTABLEKS                       R16 R0 K27 ["Hooks"]
      106 GETTABLEKS                       R16 R16 K28 ["useAcpSessionHistory"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K5 [require]
      111 GETTABLEKS                       R17 R0 K27 ["Hooks"]
      113 GETTABLEKS                       R17 R17 K29 ["useCloseOnWidgetHidden"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K5 [require]
      118 GETTABLEKS                       R18 R0 K27 ["Hooks"]
      120 GETTABLEKS                       R18 R18 K30 ["useConversation"]
      122 CALL                             R17 1 1
      123 GETTABLEKS                       R18 R4 K31 ["Chip"]
      125 GETTABLEKS                       R19 R4 K32 ["Popover"]
      127 GETTABLEKS                       R20 R8 K33 ["createNextOrder"]
      129 GETTABLEKS                       R21 R7 K34 ["createElement"]
      131 DUPCLOSURE                       R22 K35 [PROTO_0]
      132 CAPTURE                          VAL R17
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R11
      135 DUPCLOSURE                       R23 K36 [PROTO_5]
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R14
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R20
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R18
      151 CAPTURE                          VAL R3
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R12
      155 RETURN                           R23 1
