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
        9 GETTABLEKS                       R0 R0 K1 ["getCoordinator"]
       11 CALL                             R0 0 1
       12 GETTABLEKS                       R1 R0 K2 ["requestLoad"]
       14 DUPTABLE                         R2 K4 [{"scope"}]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["ScopeTypes"]
       18 GETTABLEKS                       R3 R3 K6 ["Threads"]
       20 SETTABLEKS                       R3 R2 K3 ["scope"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

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
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R5
       31 NEWTABLE                         R8 0 0
       33 CALL                             R6 2 1
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       37 NEWCLOSURE                       R8 P1
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 NEWTABLE                         R9 0 2
       44 GETTABLEKS                       R10 R1 K9 ["threadLoadState"]
       46 MOVE                             R11 R4
       47 SETLIST                          R9 R10 2 [1]
       49 CALL                             R7 2 0
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       53 DUPCLOSURE                       R8 K11 [PROTO_4]
       54 CAPTURE                          UPVAL U6
       55 NEWTABLE                         R9 0 1
       57 GETUPVAL                         R10 6
       58 GETTABLEKS                       R10 R10 K12 ["locale"]
       60 SETLIST                          R9 R10 1 [1]
       62 CALL                             R7 2 1
       63 GETUPVAL                         R8 7
       64 CALL                             R8 0 1
       65 GETUPVAL                         R9 8
       66 GETUPVAL                         R10 9
       67 GETTABLEKS                       R10 R10 K13 ["Root"]
       69 DUPTABLE                         R11 K15 [{"isOpen"}]
       70 SETTABLEKS                       R4 R11 K14 ["isOpen"]
       72 DUPTABLE                         R12 K18 [{"Anchor", "ThreadsMenuPopover"}]
       73 GETUPVAL                         R13 8
       74 GETUPVAL                         R14 9
       75 GETTABLEKS                       R14 R14 K16 ["Anchor"]
       77 DUPTABLE                         R15 K20 [{"LayoutOrder"}]
       78 GETTABLEKS                       R16 R0 K19 ["LayoutOrder"]
       80 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
       82 DUPTABLE                         R16 K22 [{"ToggleThreadsMenuButton"}]
       83 GETUPVAL                         R17 8
       84 GETUPVAL                         R18 10
       85 DUPTABLE                         R19 K30 [{"trailing", "text", "size", "variant", "isChecked", "onActivated", "LayoutOrder", "testId"}]
       86 GETUPVAL                         R20 3
       87 GETTABLEKS                       R20 R20 K31 ["Enums"]
       89 GETTABLEKS                       R20 R20 K32 ["IconName"]
       91 GETTABLEKS                       R20 R20 K33 ["ChevronLargeDown"]
       93 SETTABLEKS                       R20 R19 K23 ["trailing"]
       95 JUMPIFNOT                        R2 ; [+9]
       96 GETTABLEKS                       R22 R2 K34 ["title"]
       98 LENGTH                           R21 R22
       99 LOADN                            R22 0
      100 JUMPIFNOTLT                      R22 R21 ; [+4]
      102 GETTABLEKS                       R20 R2 K34 ["title"]
      104 JUMP                             ; [+2]
      105 GETTABLEKS                       R20 R7 K35 ["NewThread"]
      107 SETTABLEKS                       R20 R19 K24 ["text"]
      109 GETUPVAL                         R20 3
      110 GETTABLEKS                       R20 R20 K31 ["Enums"]
      112 GETTABLEKS                       R20 R20 K36 ["ChipSize"]
      114 GETTABLEKS                       R20 R20 K37 ["Medium"]
      116 SETTABLEKS                       R20 R19 K25 ["size"]
      118 GETUPVAL                         R20 3
      119 GETTABLEKS                       R20 R20 K31 ["Enums"]
      121 GETTABLEKS                       R20 R20 K38 ["ChipVariant"]
      123 GETTABLEKS                       R20 R20 K39 ["Utility"]
      125 SETTABLEKS                       R20 R19 K26 ["variant"]
      127 SETTABLEKS                       R4 R19 K27 ["isChecked"]
      129 SETTABLEKS                       R6 R19 K28 ["onActivated"]
      131 MOVE                             R20 R8
      132 CALL                             R20 0 1
      133 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      135 GETUPVAL                         R20 11
      136 GETTABLEKS                       R20 R20 K40 ["Header"]
      138 GETTABLEKS                       R20 R20 K41 ["ToggleThreadsMenu"]
      140 SETTABLEKS                       R20 R19 K29 ["testId"]
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K21 ["ToggleThreadsMenuButton"]
      145 CALL                             R13 3 1
      146 SETTABLEKS                       R13 R12 K16 ["Anchor"]
      148 MOVE                             R13 R4
      149 JUMPIFNOT                        R13 ; [+58]
      150 GETUPVAL                         R13 8
      151 GETUPVAL                         R14 9
      152 GETTABLEKS                       R14 R14 K42 ["Content"]
      154 DUPTABLE                         R15 K47 [{"hasArrow", "backgroundStyle", "side", "onPressedOutside"}]
      155 LOADB                            R16 0
      156 SETTABLEKS                       R16 R15 K43 ["hasArrow"]
      158 GETTABLEKS                       R16 R3 K48 ["Color"]
      160 GETTABLEKS                       R16 R16 K49 ["None"]
      162 SETTABLEKS                       R16 R15 K44 ["backgroundStyle"]
      164 DUPTABLE                         R16 K52 [{"position", "offset"}]
      165 GETUPVAL                         R17 3
      166 GETTABLEKS                       R17 R17 K31 ["Enums"]
      168 GETTABLEKS                       R17 R17 K53 ["PopoverSide"]
      170 GETTABLEKS                       R17 R17 K54 ["Bottom"]
      172 SETTABLEKS                       R17 R16 K50 ["position"]
      174 GETTABLEKS                       R17 R3 K55 ["Padding"]
      176 GETTABLEKS                       R17 R17 K56 ["XSmall"]
      178 SETTABLEKS                       R17 R16 K51 ["offset"]
      180 SETTABLEKS                       R16 R15 K45 ["side"]
      182 SETTABLEKS                       R6 R15 K46 ["onPressedOutside"]
      184 DUPTABLE                         R16 K59 [{"UIListLayout", "ThreadsMenu"}]
      185 GETUPVAL                         R17 8
      186 LOADK                            R18 K57 ["UIListLayout"]
      187 DUPTABLE                         R19 K62 [{"FillDirection", "HorizontalFlex"}]
      188 GETIMPORT                        R20 K65 [Enum.FillDirection.Vertical]
      190 SETTABLEKS                       R20 R19 K60 ["FillDirection"]
      192 GETIMPORT                        R20 K68 [Enum.UIFlexAlignment.Fill]
      194 SETTABLEKS                       R20 R19 K61 ["HorizontalFlex"]
      196 CALL                             R17 2 1
      197 SETTABLEKS                       R17 R16 K57 ["UIListLayout"]
      199 GETUPVAL                         R17 8
      200 GETUPVAL                         R18 12
      201 DUPTABLE                         R19 K70 [{"setThreadsMenuOpen"}]
      202 SETTABLEKS                       R5 R19 K69 ["setThreadsMenuOpen"]
      204 CALL                             R17 2 1
      205 SETTABLEKS                       R17 R16 K58 ["ThreadsMenu"]
      207 CALL                             R13 3 1
      208 SETTABLEKS                       R13 R12 K17 ["ThreadsMenuPopover"]
      210 CALL                             R9 3 -1
      211 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Persistence"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Util"]
       39 GETTABLEKS                       R6 R6 K12 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["Contexts"]
       48 GETTABLEKS                       R7 R7 K15 ["ThreadIdContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K13 ["Components"]
       55 GETTABLEKS                       R8 R8 K16 ["ThreadsWindow"]
       57 GETTABLEKS                       R8 R8 K17 ["ThreadsMenu"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["Resources"]
       64 GETTABLEKS                       R9 R9 K19 ["Localization"]
       66 GETTABLEKS                       R9 R9 K20 ["Translator"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K21 ["Types"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K22 ["Hooks"]
       78 GETTABLEKS                       R11 R11 K23 ["useConversation"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R1 K24 ["Chip"]
       83 GETTABLEKS                       R12 R1 K25 ["Popover"]
       85 GETTABLEKS                       R13 R4 K26 ["createNextOrder"]
       87 GETTABLEKS                       R14 R3 K27 ["createElement"]
       89 DUPCLOSURE                       R15 K28 [PROTO_0]
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R6
       93 DUPCLOSURE                       R16 K29 [PROTO_5]
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R7
      107 RETURN                           R16 1
