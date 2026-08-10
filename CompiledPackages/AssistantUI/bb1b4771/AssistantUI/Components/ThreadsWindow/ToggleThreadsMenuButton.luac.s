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
       28 CALL                             R7 0 -1
       29 CALL                             R6 -1 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       33 NEWCLOSURE                       R8 P0
       34 CAPTURE                          VAL R5
       35 NEWTABLE                         R9 0 0
       37 CALL                             R7 2 1
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R8 R8 K8 ["useEffect"]
       41 NEWCLOSURE                       R9 P1
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R6
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U7
       48 NEWTABLE                         R10 0 3
       50 GETTABLEKS                       R11 R6 K9 ["listSessionsPage"]
       52 GETTABLEKS                       R12 R1 K10 ["threadLoadState"]
       54 MOVE                             R13 R4
       55 SETLIST                          R10 R11 3 [1]
       57 CALL                             R8 2 0
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K11 ["useMemo"]
       61 DUPCLOSURE                       R9 K12 [PROTO_4]
       62 CAPTURE                          UPVAL U8
       63 NEWTABLE                         R10 0 1
       65 GETUPVAL                         R11 8
       66 GETTABLEKS                       R11 R11 K13 ["locale"]
       68 SETLIST                          R10 R11 1 [1]
       70 CALL                             R8 2 1
       71 GETUPVAL                         R9 9
       72 CALL                             R9 0 1
       73 GETUPVAL                         R10 10
       74 GETUPVAL                         R11 11
       75 GETTABLEKS                       R11 R11 K14 ["Root"]
       77 DUPTABLE                         R12 K16 [{"isOpen"}]
       78 SETTABLEKS                       R4 R12 K15 ["isOpen"]
       80 DUPTABLE                         R13 K19 [{"Anchor", "ThreadsMenuPopover"}]
       81 GETUPVAL                         R14 10
       82 GETUPVAL                         R15 11
       83 GETTABLEKS                       R15 R15 K17 ["Anchor"]
       85 DUPTABLE                         R16 K21 [{"LayoutOrder"}]
       86 GETTABLEKS                       R17 R0 K20 ["LayoutOrder"]
       88 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
       90 DUPTABLE                         R17 K23 [{"ToggleThreadsMenuButton"}]
       91 GETUPVAL                         R18 10
       92 GETUPVAL                         R19 12
       93 DUPTABLE                         R20 K31 [{"trailing", "text", "size", "variant", "isChecked", "onActivated", "LayoutOrder", "testId"}]
       94 GETUPVAL                         R21 3
       95 GETTABLEKS                       R21 R21 K32 ["Enums"]
       97 GETTABLEKS                       R21 R21 K33 ["IconName"]
       99 GETTABLEKS                       R21 R21 K34 ["ChevronLargeDown"]
      101 SETTABLEKS                       R21 R20 K24 ["trailing"]
      103 JUMPIFNOT                        R2 ; [+9]
      104 GETTABLEKS                       R23 R2 K35 ["title"]
      106 LENGTH                           R22 R23
      107 LOADN                            R23 0
      108 JUMPIFNOTLT                      R23 R22 ; [+4]
      110 GETTABLEKS                       R21 R2 K35 ["title"]
      112 JUMP                             ; [+2]
      113 GETTABLEKS                       R21 R8 K36 ["NewThread"]
      115 SETTABLEKS                       R21 R20 K25 ["text"]
      117 GETUPVAL                         R21 3
      118 GETTABLEKS                       R21 R21 K32 ["Enums"]
      120 GETTABLEKS                       R21 R21 K37 ["ChipSize"]
      122 GETTABLEKS                       R21 R21 K38 ["Medium"]
      124 SETTABLEKS                       R21 R20 K26 ["size"]
      126 GETUPVAL                         R21 3
      127 GETTABLEKS                       R21 R21 K32 ["Enums"]
      129 GETTABLEKS                       R21 R21 K39 ["ChipVariant"]
      131 GETTABLEKS                       R21 R21 K40 ["Utility"]
      133 SETTABLEKS                       R21 R20 K27 ["variant"]
      135 SETTABLEKS                       R4 R20 K28 ["isChecked"]
      137 SETTABLEKS                       R7 R20 K29 ["onActivated"]
      139 MOVE                             R21 R9
      140 CALL                             R21 0 1
      141 SETTABLEKS                       R21 R20 K20 ["LayoutOrder"]
      143 GETUPVAL                         R21 13
      144 GETTABLEKS                       R21 R21 K41 ["Header"]
      146 GETTABLEKS                       R21 R21 K42 ["ToggleThreadsMenu"]
      148 SETTABLEKS                       R21 R20 K30 ["testId"]
      150 CALL                             R18 2 1
      151 SETTABLEKS                       R18 R17 K22 ["ToggleThreadsMenuButton"]
      153 CALL                             R14 3 1
      154 SETTABLEKS                       R14 R13 K17 ["Anchor"]
      156 MOVE                             R14 R4
      157 JUMPIFNOT                        R14 ; [+55]
      158 GETUPVAL                         R14 10
      159 GETUPVAL                         R15 11
      160 GETTABLEKS                       R15 R15 K43 ["Content"]
      162 DUPTABLE                         R16 K49 [{["hasArrow"] = False, ["backgroundStyle"], ["side"], ["onPressedOutside"]}]
      163 GETTABLEKS                       R17 R3 K50 ["Color"]
      165 GETTABLEKS                       R17 R17 K51 ["None"]
      167 SETTABLEKS                       R17 R16 K46 ["backgroundStyle"]
      169 DUPTABLE                         R17 K54 [{"position", "offset"}]
      170 GETUPVAL                         R18 3
      171 GETTABLEKS                       R18 R18 K32 ["Enums"]
      173 GETTABLEKS                       R18 R18 K55 ["PopoverSide"]
      175 GETTABLEKS                       R18 R18 K56 ["Bottom"]
      177 SETTABLEKS                       R18 R17 K52 ["position"]
      179 GETTABLEKS                       R18 R3 K57 ["Padding"]
      181 GETTABLEKS                       R18 R18 K58 ["XSmall"]
      183 SETTABLEKS                       R18 R17 K53 ["offset"]
      185 SETTABLEKS                       R17 R16 K47 ["side"]
      187 SETTABLEKS                       R7 R16 K48 ["onPressedOutside"]
      189 DUPTABLE                         R17 K61 [{"UIListLayout", "ThreadsMenu"}]
      190 GETUPVAL                         R18 10
      191 LOADK                            R19 K59 ["UIListLayout"]
      192 DUPTABLE                         R20 K64 [{"FillDirection", "HorizontalFlex"}]
      193 GETIMPORT                        R21 K67 [Enum.FillDirection.Vertical]
      195 SETTABLEKS                       R21 R20 K62 ["FillDirection"]
      197 GETIMPORT                        R21 K70 [Enum.UIFlexAlignment.Fill]
      199 SETTABLEKS                       R21 R20 K63 ["HorizontalFlex"]
      201 CALL                             R18 2 1
      202 SETTABLEKS                       R18 R17 K59 ["UIListLayout"]
      204 GETUPVAL                         R18 10
      205 GETUPVAL                         R19 14
      206 DUPTABLE                         R20 K72 [{"setThreadsMenuOpen"}]
      207 SETTABLEKS                       R5 R20 K71 ["setThreadsMenuOpen"]
      209 CALL                             R18 2 1
      210 SETTABLEKS                       R18 R17 K60 ["ThreadsMenu"]
      212 CALL                             R14 3 1
      213 SETTABLEKS                       R14 R13 K18 ["ThreadsMenuPopover"]
      215 CALL                             R10 3 -1
      216 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["FlagUtils"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R1 K9 ["getIsAssistantHarnessSplit"]
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Util"]
       25 GETTABLEKS                       R5 R5 K11 ["Persistence"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R0 K7 ["Parent"]
       32 GETTABLEKS                       R6 R6 K12 ["React"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R0 K7 ["Parent"]
       39 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Util"]
       46 GETTABLEKS                       R8 R8 K14 ["TestIds"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K5 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Components"]
       53 GETTABLEKS                       R9 R9 K16 ["Contexts"]
       55 GETTABLEKS                       R9 R9 K17 ["ThreadIdContext"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R10 R0 K15 ["Components"]
       62 GETTABLEKS                       R10 R10 K18 ["ThreadsWindow"]
       64 GETTABLEKS                       R10 R10 K19 ["ThreadsMenu"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K5 [require]
       69 GETTABLEKS                       R11 R0 K20 ["Resources"]
       71 GETTABLEKS                       R11 R11 K21 ["Localization"]
       73 GETTABLEKS                       R11 R11 K22 ["Translator"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K5 [require]
       78 GETTABLEKS                       R12 R0 K23 ["Types"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K5 [require]
       83 GETTABLEKS                       R13 R0 K24 ["Hooks"]
       85 GETTABLEKS                       R13 R13 K25 ["useAcpSessionHistory"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K5 [require]
       90 GETTABLEKS                       R14 R0 K24 ["Hooks"]
       92 GETTABLEKS                       R14 R14 K26 ["useConversation"]
       94 CALL                             R13 1 1
       95 GETTABLEKS                       R14 R2 K27 ["Chip"]
       97 GETTABLEKS                       R15 R2 K28 ["Popover"]
       99 GETTABLEKS                       R16 R6 K29 ["createNextOrder"]
      101 GETTABLEKS                       R17 R5 K30 ["createElement"]
      103 DUPCLOSURE                       R18 K31 [PROTO_0]
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R8
      107 DUPCLOSURE                       R19 K32 [PROTO_5]
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R8
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R15
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R9
      123 RETURN                           R19 1
