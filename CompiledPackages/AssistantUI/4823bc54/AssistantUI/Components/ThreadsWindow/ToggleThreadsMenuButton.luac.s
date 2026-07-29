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
        9 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantHarnessSplit"]
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K2 ["listSessionsPage"]
       15 LOADNIL                          R1
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 4
       19 GETTABLEKS                       R0 R0 K3 ["getCoordinator"]
       21 CALL                             R0 0 1
       22 GETTABLEKS                       R1 R0 K4 ["requestLoad"]
       24 DUPTABLE                         R2 K6 [{"scope"}]
       25 GETUPVAL                         R3 5
       26 GETTABLEKS                       R3 R3 K7 ["ScopeTypes"]
       28 GETTABLEKS                       R3 R3 K8 ["Threads"]
       30 SETTABLEKS                       R3 R2 K5 ["scope"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

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
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K4 ["Hooks"]
       18 GETTABLEKS                       R3 R3 K5 ["useTokens"]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K6 ["useState"]
       24 LOADB                            R5 0
       25 CALL                             R4 1 2
       26 GETUPVAL                         R6 4
       27 GETUPVAL                         R7 5
       28 GETTABLEKS                       R7 R7 K7 ["FFlagAssistantHarnessSplit"]
       30 CALL                             R6 1 1
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       34 NEWCLOSURE                       R8 P0
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R9 0 0
       38 CALL                             R7 2 1
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K9 ["useEffect"]
       42 NEWCLOSURE                       R9 P1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          VAL R6
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 NEWTABLE                         R10 0 3
       51 GETTABLEKS                       R11 R6 K10 ["listSessionsPage"]
       53 GETTABLEKS                       R12 R1 K11 ["threadLoadState"]
       55 MOVE                             R13 R4
       56 SETLIST                          R10 R11 3 [1]
       58 CALL                             R8 2 0
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K12 ["useMemo"]
       62 DUPCLOSURE                       R9 K13 [PROTO_4]
       63 CAPTURE                          UPVAL U8
       64 NEWTABLE                         R10 0 1
       66 GETUPVAL                         R11 8
       67 GETTABLEKS                       R11 R11 K14 ["locale"]
       69 SETLIST                          R10 R11 1 [1]
       71 CALL                             R8 2 1
       72 GETUPVAL                         R9 9
       73 CALL                             R9 0 1
       74 GETUPVAL                         R10 10
       75 GETUPVAL                         R11 11
       76 GETTABLEKS                       R11 R11 K15 ["Root"]
       78 DUPTABLE                         R12 K17 [{"isOpen"}]
       79 SETTABLEKS                       R4 R12 K16 ["isOpen"]
       81 DUPTABLE                         R13 K20 [{"Anchor", "ThreadsMenuPopover"}]
       82 GETUPVAL                         R14 10
       83 GETUPVAL                         R15 11
       84 GETTABLEKS                       R15 R15 K18 ["Anchor"]
       86 DUPTABLE                         R16 K22 [{"LayoutOrder"}]
       87 GETTABLEKS                       R17 R0 K21 ["LayoutOrder"]
       89 SETTABLEKS                       R17 R16 K21 ["LayoutOrder"]
       91 DUPTABLE                         R17 K24 [{"ToggleThreadsMenuButton"}]
       92 GETUPVAL                         R18 10
       93 GETUPVAL                         R19 12
       94 DUPTABLE                         R20 K32 [{"trailing", "text", "size", "variant", "isChecked", "onActivated", "LayoutOrder", "testId"}]
       95 GETUPVAL                         R21 3
       96 GETTABLEKS                       R21 R21 K33 ["Enums"]
       98 GETTABLEKS                       R21 R21 K34 ["IconName"]
      100 GETTABLEKS                       R21 R21 K35 ["ChevronLargeDown"]
      102 SETTABLEKS                       R21 R20 K25 ["trailing"]
      104 JUMPIFNOT                        R2 ; [+9]
      105 GETTABLEKS                       R23 R2 K36 ["title"]
      107 LENGTH                           R22 R23
      108 LOADN                            R23 0
      109 JUMPIFNOTLT                      R23 R22 ; [+4]
      111 GETTABLEKS                       R21 R2 K36 ["title"]
      113 JUMP                             ; [+2]
      114 GETTABLEKS                       R21 R8 K37 ["NewThread"]
      116 SETTABLEKS                       R21 R20 K26 ["text"]
      118 GETUPVAL                         R21 3
      119 GETTABLEKS                       R21 R21 K33 ["Enums"]
      121 GETTABLEKS                       R21 R21 K38 ["ChipSize"]
      123 GETTABLEKS                       R21 R21 K39 ["Medium"]
      125 SETTABLEKS                       R21 R20 K27 ["size"]
      127 GETUPVAL                         R21 3
      128 GETTABLEKS                       R21 R21 K33 ["Enums"]
      130 GETTABLEKS                       R21 R21 K40 ["ChipVariant"]
      132 GETTABLEKS                       R21 R21 K41 ["Utility"]
      134 SETTABLEKS                       R21 R20 K28 ["variant"]
      136 SETTABLEKS                       R4 R20 K29 ["isChecked"]
      138 SETTABLEKS                       R7 R20 K30 ["onActivated"]
      140 MOVE                             R21 R9
      141 CALL                             R21 0 1
      142 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
      144 GETUPVAL                         R21 13
      145 GETTABLEKS                       R21 R21 K42 ["Header"]
      147 GETTABLEKS                       R21 R21 K43 ["ToggleThreadsMenu"]
      149 SETTABLEKS                       R21 R20 K31 ["testId"]
      151 CALL                             R18 2 1
      152 SETTABLEKS                       R18 R17 K23 ["ToggleThreadsMenuButton"]
      154 CALL                             R14 3 1
      155 SETTABLEKS                       R14 R13 K18 ["Anchor"]
      157 MOVE                             R14 R4
      158 JUMPIFNOT                        R14 ; [+55]
      159 GETUPVAL                         R14 10
      160 GETUPVAL                         R15 11
      161 GETTABLEKS                       R15 R15 K44 ["Content"]
      163 DUPTABLE                         R16 K50 [{["hasArrow"] = False, ["backgroundStyle"], ["side"], ["onPressedOutside"]}]
      164 GETTABLEKS                       R17 R3 K51 ["Color"]
      166 GETTABLEKS                       R17 R17 K52 ["None"]
      168 SETTABLEKS                       R17 R16 K47 ["backgroundStyle"]
      170 DUPTABLE                         R17 K55 [{"position", "offset"}]
      171 GETUPVAL                         R18 3
      172 GETTABLEKS                       R18 R18 K33 ["Enums"]
      174 GETTABLEKS                       R18 R18 K56 ["PopoverSide"]
      176 GETTABLEKS                       R18 R18 K57 ["Bottom"]
      178 SETTABLEKS                       R18 R17 K53 ["position"]
      180 GETTABLEKS                       R18 R3 K58 ["Padding"]
      182 GETTABLEKS                       R18 R18 K59 ["XSmall"]
      184 SETTABLEKS                       R18 R17 K54 ["offset"]
      186 SETTABLEKS                       R17 R16 K48 ["side"]
      188 SETTABLEKS                       R7 R16 K49 ["onPressedOutside"]
      190 DUPTABLE                         R17 K62 [{"UIListLayout", "ThreadsMenu"}]
      191 GETUPVAL                         R18 10
      192 LOADK                            R19 K60 ["UIListLayout"]
      193 DUPTABLE                         R20 K65 [{"FillDirection", "HorizontalFlex"}]
      194 GETIMPORT                        R21 K68 [Enum.FillDirection.Vertical]
      196 SETTABLEKS                       R21 R20 K63 ["FillDirection"]
      198 GETIMPORT                        R21 K71 [Enum.UIFlexAlignment.Fill]
      200 SETTABLEKS                       R21 R20 K64 ["HorizontalFlex"]
      202 CALL                             R18 2 1
      203 SETTABLEKS                       R18 R17 K60 ["UIListLayout"]
      205 GETUPVAL                         R18 10
      206 GETUPVAL                         R19 14
      207 DUPTABLE                         R20 K73 [{"setThreadsMenuOpen"}]
      208 SETTABLEKS                       R5 R20 K72 ["setThreadsMenuOpen"]
      210 CALL                             R18 2 1
      211 SETTABLEKS                       R18 R17 K61 ["ThreadsMenu"]
      213 CALL                             R14 3 1
      214 SETTABLEKS                       R14 R13 K19 ["ThreadsMenuPopover"]
      216 CALL                             R10 3 -1
      217 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["Persistence"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K7 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Util"]
       44 GETTABLEKS                       R7 R7 K13 ["TestIds"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K14 ["Components"]
       51 GETTABLEKS                       R8 R8 K15 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K16 ["ThreadIdContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Components"]
       60 GETTABLEKS                       R9 R9 K17 ["ThreadsWindow"]
       62 GETTABLEKS                       R9 R9 K18 ["ThreadsMenu"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Resources"]
       69 GETTABLEKS                       R10 R10 K20 ["Localization"]
       71 GETTABLEKS                       R10 R10 K21 ["Translator"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K22 ["Types"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       83 GETTABLEKS                       R12 R12 K24 ["useAcpSessionHistory"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       90 GETTABLEKS                       R13 R13 K25 ["useConversation"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R2 K26 ["Chip"]
       95 GETTABLEKS                       R14 R2 K27 ["Popover"]
       97 GETTABLEKS                       R15 R5 K28 ["createNextOrder"]
       99 GETTABLEKS                       R16 R4 K29 ["createElement"]
      101 DUPCLOSURE                       R17 K30 [PROTO_0]
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R7
      105 DUPCLOSURE                       R18 K31 [PROTO_5]
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R9
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R14
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R8
      121 RETURN                           R18 1
