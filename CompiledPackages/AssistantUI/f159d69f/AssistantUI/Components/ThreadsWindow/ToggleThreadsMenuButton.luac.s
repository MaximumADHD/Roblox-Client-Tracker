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
        9 GETTABLEKS                       R0 R0 K1 ["listSessionsPage"]
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

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
       37 LOADB                            R8 1
       38 CALL                             R7 1 1
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       42 NEWCLOSURE                       R9 P0
       43 CAPTURE                          VAL R6
       44 NEWTABLE                         R10 0 0
       46 CALL                             R8 2 1
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       50 NEWCLOSURE                       R10 P1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R7
       54 NEWTABLE                         R11 0 3
       56 GETTABLEKS                       R12 R7 K9 ["listSessionsPage"]
       58 GETTABLEKS                       R13 R1 K10 ["threadLoadState"]
       60 MOVE                             R14 R5
       61 SETLIST                          R11 R12 3 [1]
       63 CALL                             R9 2 0
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R9 R9 K11 ["useMemo"]
       67 DUPCLOSURE                       R10 K12 [PROTO_4]
       68 CAPTURE                          UPVAL U7
       69 NEWTABLE                         R11 0 1
       71 GETUPVAL                         R12 7
       72 GETTABLEKS                       R12 R12 K13 ["locale"]
       74 SETLIST                          R11 R12 1 [1]
       76 CALL                             R9 2 1
       77 GETUPVAL                         R10 8
       78 CALL                             R10 0 1
       79 GETUPVAL                         R11 9
       80 GETUPVAL                         R12 10
       81 GETTABLEKS                       R12 R12 K14 ["Root"]
       83 DUPTABLE                         R13 K16 [{"isOpen"}]
       84 SETTABLEKS                       R5 R13 K15 ["isOpen"]
       86 DUPTABLE                         R14 K19 [{"Anchor", "ThreadsMenuPopover"}]
       87 GETUPVAL                         R15 9
       88 GETUPVAL                         R16 10
       89 GETTABLEKS                       R16 R16 K17 ["Anchor"]
       91 DUPTABLE                         R17 K21 [{"LayoutOrder"}]
       92 GETTABLEKS                       R18 R0 K20 ["LayoutOrder"]
       94 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
       96 DUPTABLE                         R18 K23 [{"ToggleThreadsMenuButton"}]
       97 GETUPVAL                         R19 9
       98 GETUPVAL                         R20 11
       99 DUPTABLE                         R21 K31 [{"trailing", "text", "size", "variant", "isChecked", "onActivated", "LayoutOrder", "testId"}]
      100 GETUPVAL                         R22 4
      101 GETTABLEKS                       R22 R22 K32 ["Enums"]
      103 GETTABLEKS                       R22 R22 K33 ["IconName"]
      105 GETTABLEKS                       R22 R22 K34 ["ChevronLargeDown"]
      107 SETTABLEKS                       R22 R21 K24 ["trailing"]
      109 JUMPIF                           R3 ; [+2]
      110 LOADK                            R22 K35 [""]
      111 JUMP                             ; [+30]
      112 JUMPIFNOT                        R2 ; [+9]
      113 GETTABLEKS                       R24 R2 K36 ["title"]
      115 LENGTH                           R23 R24
      116 LOADN                            R24 0
      117 JUMPIFNOTLT                      R24 R23 ; [+4]
      119 GETTABLEKS                       R22 R2 K36 ["title"]
      121 JUMP                             ; [+20]
      122 GETUPVAL                         R23 12
      123 GETTABLEKS                       R23 R23 K37 ["FFlagAssistantUntitledChatPlaceholder"]
      125 JUMPIFNOT                        R23 ; [+14]
      126 JUMPIFNOT                        R2 ; [+13]
      127 GETUPVAL                         R23 13
      128 GETTABLEKS                       R23 R23 K38 ["getThreadMetadata"]
      130 GETTABLEKS                       R24 R2 K2 ["threadId"]
      132 CALL                             R23 1 1
      133 GETTABLEKS                       R23 R23 K39 ["isNewThread"]
      135 JUMPIF                           R23 ; [+4]
      136 GETUPVAL                         R22 12
      137 GETTABLEKS                       R22 R22 K40 ["FStringAssistantUntitledChatPlaceholder"]
      139 JUMP                             ; [+2]
      140 GETTABLEKS                       R22 R9 K41 ["NewThread"]
      142 SETTABLEKS                       R22 R21 K25 ["text"]
      144 GETUPVAL                         R22 4
      145 GETTABLEKS                       R22 R22 K32 ["Enums"]
      147 GETTABLEKS                       R22 R22 K42 ["ChipSize"]
      149 GETTABLEKS                       R22 R22 K43 ["Medium"]
      151 SETTABLEKS                       R22 R21 K26 ["size"]
      153 GETUPVAL                         R22 4
      154 GETTABLEKS                       R22 R22 K32 ["Enums"]
      156 GETTABLEKS                       R22 R22 K44 ["ChipVariant"]
      158 GETTABLEKS                       R22 R22 K45 ["Utility"]
      160 SETTABLEKS                       R22 R21 K27 ["variant"]
      162 SETTABLEKS                       R5 R21 K28 ["isChecked"]
      164 SETTABLEKS                       R8 R21 K29 ["onActivated"]
      166 MOVE                             R22 R10
      167 CALL                             R22 0 1
      168 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      170 GETUPVAL                         R22 14
      171 GETTABLEKS                       R22 R22 K46 ["Header"]
      173 GETTABLEKS                       R22 R22 K47 ["ToggleThreadsMenu"]
      175 SETTABLEKS                       R22 R21 K30 ["testId"]
      177 CALL                             R19 2 1
      178 SETTABLEKS                       R19 R18 K22 ["ToggleThreadsMenuButton"]
      180 CALL                             R15 3 1
      181 SETTABLEKS                       R15 R14 K17 ["Anchor"]
      183 MOVE                             R15 R5
      184 JUMPIFNOT                        R15 ; [+55]
      185 GETUPVAL                         R15 9
      186 GETUPVAL                         R16 10
      187 GETTABLEKS                       R16 R16 K48 ["Content"]
      189 DUPTABLE                         R17 K54 [{["hasArrow"] = False, ["backgroundStyle"], ["side"], ["onPressedOutside"]}]
      190 GETTABLEKS                       R18 R4 K55 ["Color"]
      192 GETTABLEKS                       R18 R18 K56 ["None"]
      194 SETTABLEKS                       R18 R17 K51 ["backgroundStyle"]
      196 DUPTABLE                         R18 K59 [{"position", "offset"}]
      197 GETUPVAL                         R19 4
      198 GETTABLEKS                       R19 R19 K32 ["Enums"]
      200 GETTABLEKS                       R19 R19 K60 ["PopoverSide"]
      202 GETTABLEKS                       R19 R19 K61 ["Bottom"]
      204 SETTABLEKS                       R19 R18 K57 ["position"]
      206 GETTABLEKS                       R19 R4 K62 ["Padding"]
      208 GETTABLEKS                       R19 R19 K63 ["XSmall"]
      210 SETTABLEKS                       R19 R18 K58 ["offset"]
      212 SETTABLEKS                       R18 R17 K52 ["side"]
      214 SETTABLEKS                       R8 R17 K53 ["onPressedOutside"]
      216 DUPTABLE                         R18 K66 [{"UIListLayout", "ThreadsMenu"}]
      217 GETUPVAL                         R19 9
      218 LOADK                            R20 K64 ["UIListLayout"]
      219 DUPTABLE                         R21 K69 [{"FillDirection", "HorizontalFlex"}]
      220 GETIMPORT                        R22 K72 [Enum.FillDirection.Vertical]
      222 SETTABLEKS                       R22 R21 K67 ["FillDirection"]
      224 GETIMPORT                        R22 K75 [Enum.UIFlexAlignment.Fill]
      226 SETTABLEKS                       R22 R21 K68 ["HorizontalFlex"]
      228 CALL                             R19 2 1
      229 SETTABLEKS                       R19 R18 K64 ["UIListLayout"]
      231 GETUPVAL                         R19 9
      232 GETUPVAL                         R20 15
      233 DUPTABLE                         R21 K77 [{"setThreadsMenuOpen"}]
      234 SETTABLEKS                       R6 R21 K76 ["setThreadsMenuOpen"]
      236 CALL                             R19 2 1
      237 SETTABLEKS                       R19 R18 K65 ["ThreadsMenu"]
      239 CALL                             R15 3 1
      240 SETTABLEKS                       R15 R14 K18 ["ThreadsMenuPopover"]
      242 CALL                             R11 3 -1
      243 RETURN                           R11 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Components"]
       44 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K15 ["SessionThreadReadyContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Util"]
       53 GETTABLEKS                       R8 R8 K16 ["TestIds"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K13 ["Components"]
       60 GETTABLEKS                       R9 R9 K14 ["Contexts"]
       62 GETTABLEKS                       R9 R9 K17 ["ThreadIdContext"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K13 ["Components"]
       69 GETTABLEKS                       R10 R10 K18 ["ThreadsWindow"]
       71 GETTABLEKS                       R10 R10 K19 ["ThreadsMenu"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K20 ["Resources"]
       78 GETTABLEKS                       R11 R11 K21 ["Localization"]
       80 GETTABLEKS                       R11 R11 K22 ["Translator"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K23 ["Types"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K24 ["Hooks"]
       92 GETTABLEKS                       R13 R13 K25 ["useAcpSessionHistory"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K24 ["Hooks"]
       99 GETTABLEKS                       R14 R14 K26 ["useCloseOnWidgetHidden"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K24 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K27 ["useConversation"]
      108 CALL                             R14 1 1
      109 GETTABLEKS                       R15 R3 K28 ["Chip"]
      111 GETTABLEKS                       R16 R3 K29 ["Popover"]
      113 GETTABLEKS                       R17 R5 K30 ["createNextOrder"]
      115 GETTABLEKS                       R18 R4 K31 ["createElement"]
      117 DUPCLOSURE                       R19 K32 [PROTO_0]
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R8
      121 DUPCLOSURE                       R20 K33 [PROTO_5]
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R9
      138 RETURN                           R20 1
