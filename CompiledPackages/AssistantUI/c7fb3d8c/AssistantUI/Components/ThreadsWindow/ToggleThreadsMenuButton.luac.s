PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["Context"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["wasLoadedFromPersistence"]
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K1 ["get"]
       11 CALL                             R0 0 1
       12 GETTABLEKS                       R1 R0 K2 ["conversationPersistence"]
       14 JUMPIF                           R1 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R1 K3 ["requestLoad"]
       18 DUPTABLE                         R3 K5 [{"scope"}]
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R5 R6 K6 ["SCOPE_TYPES"]
       22 GETTABLEKS                       R4 R5 K7 ["Conversation"]
       24 SETTABLEKS                       R4 R3 K4 ["scope"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

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
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R4 R5 K0 ["useContext"]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["Context"]
        8 CALL                             R4 1 1
        9 GETTABLEKS                       R5 R4 K2 ["threadId"]
       11 MOVE                             R1 R3
       12 GETTABLEKS                       R6 R3 K3 ["threads"]
       14 GETTABLE                         R2 R6 R5
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K4 ["Hooks"]
       18 GETTABLEKS                       R3 R4 K5 ["useTokens"]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K6 ["useState"]
       24 LOADB                            R5 0
       25 CALL                             R4 1 2
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K7 ["useCallback"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R5
       31 NEWTABLE                         R8 0 0
       33 CALL                             R6 2 1
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K8 ["useEffect"]
       37 NEWCLOSURE                       R8 P1
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 NEWTABLE                         R9 0 2
       44 GETTABLEKS                       R10 R1 K9 ["wasLoadedFromPersistence"]
       46 MOVE                             R11 R4
       47 SETLIST                          R9 R10 2 [1]
       49 CALL                             R7 2 0
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K10 ["useMemo"]
       53 DUPCLOSURE                       R8 K11 [PROTO_4]
       54 CAPTURE                          UPVAL U6
       55 NEWTABLE                         R9 0 1
       57 GETUPVAL                         R11 6
       58 GETTABLEKS                       R10 R11 K12 ["locale"]
       60 SETLIST                          R9 R10 1 [1]
       62 CALL                             R7 2 1
       63 GETUPVAL                         R8 7
       64 CALL                             R8 0 1
       65 GETUPVAL                         R9 8
       66 GETUPVAL                         R11 9
       67 GETTABLEKS                       R10 R11 K13 ["Root"]
       69 DUPTABLE                         R11 K15 [{"isOpen"}]
       70 SETTABLEKS                       R4 R11 K14 ["isOpen"]
       72 DUPTABLE                         R12 K18 [{"Anchor", "ThreadsMenuPopover"}]
       73 GETUPVAL                         R13 8
       74 GETUPVAL                         R15 9
       75 GETTABLEKS                       R14 R15 K16 ["Anchor"]
       77 DUPTABLE                         R15 K20 [{"LayoutOrder"}]
       78 GETTABLEKS                       R16 R0 K19 ["LayoutOrder"]
       80 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
       82 DUPTABLE                         R16 K22 [{"ToggleThreadsMenuButton"}]
       83 GETUPVAL                         R17 8
       84 GETUPVAL                         R18 10
       85 DUPTABLE                         R19 K30 [{"trailing", "text", "size", "variant", "isChecked", "onActivated", "LayoutOrder", "testId"}]
       86 GETUPVAL                         R23 3
       87 GETTABLEKS                       R22 R23 K31 ["Enums"]
       89 GETTABLEKS                       R21 R22 K32 ["IconName"]
       91 GETTABLEKS                       R20 R21 K33 ["ChevronLargeDown"]
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
      109 GETUPVAL                         R23 3
      110 GETTABLEKS                       R22 R23 K31 ["Enums"]
      112 GETTABLEKS                       R21 R22 K36 ["ChipSize"]
      114 GETTABLEKS                       R20 R21 K37 ["Medium"]
      116 SETTABLEKS                       R20 R19 K25 ["size"]
      118 GETUPVAL                         R23 3
      119 GETTABLEKS                       R22 R23 K31 ["Enums"]
      121 GETTABLEKS                       R21 R22 K38 ["ChipVariant"]
      123 GETTABLEKS                       R20 R21 K39 ["Utility"]
      125 SETTABLEKS                       R20 R19 K26 ["variant"]
      127 SETTABLEKS                       R4 R19 K27 ["isChecked"]
      129 SETTABLEKS                       R6 R19 K28 ["onActivated"]
      131 MOVE                             R20 R8
      132 CALL                             R20 0 1
      133 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      135 GETUPVAL                         R22 11
      136 GETTABLEKS                       R21 R22 K40 ["Header"]
      138 GETTABLEKS                       R20 R21 K41 ["ToggleThreadsMenu"]
      140 SETTABLEKS                       R20 R19 K29 ["testId"]
      142 CALL                             R17 2 1
      143 SETTABLEKS                       R17 R16 K21 ["ToggleThreadsMenuButton"]
      145 CALL                             R13 3 1
      146 SETTABLEKS                       R13 R12 K16 ["Anchor"]
      148 MOVE                             R13 R4
      149 JUMPIFNOT                        R13 ; [+61]
      150 GETUPVAL                         R13 8
      151 GETUPVAL                         R15 9
      152 GETTABLEKS                       R14 R15 K42 ["Content"]
      154 DUPTABLE                         R15 K47 [{"hasArrow", "backgroundStyle", "side", "onPressedOutside"}]
      155 LOADB                            R16 0
      156 SETTABLEKS                       R16 R15 K43 ["hasArrow"]
      158 GETTABLEKS                       R17 R3 K48 ["Color"]
      160 GETTABLEKS                       R16 R17 K49 ["None"]
      162 SETTABLEKS                       R16 R15 K44 ["backgroundStyle"]
      164 DUPTABLE                         R16 K52 [{"position", "offset"}]
      165 GETUPVAL                         R20 3
      166 GETTABLEKS                       R19 R20 K31 ["Enums"]
      168 GETTABLEKS                       R18 R19 K53 ["PopoverSide"]
      170 GETTABLEKS                       R17 R18 K54 ["Bottom"]
      172 SETTABLEKS                       R17 R16 K50 ["position"]
      174 GETTABLEKS                       R20 R3 K56 ["Padding"]
      176 GETTABLEKS                       R19 R20 K57 ["Small"]
      178 MULK                             R18 R19 K55 [2]
      179 GETTABLEKS                       R20 R3 K58 ["Stroke"]
      181 GETTABLEKS                       R19 R20 K59 ["Standard"]
      183 ADD                              R17 R18 R19
      184 SETTABLEKS                       R17 R16 K51 ["offset"]
      186 SETTABLEKS                       R16 R15 K45 ["side"]
      188 SETTABLEKS                       R6 R15 K46 ["onPressedOutside"]
      190 DUPTABLE                         R16 K62 [{"UIListLayout", "ThreadsMenu"}]
      191 GETUPVAL                         R17 8
      192 LOADK                            R18 K60 ["UIListLayout"]
      193 DUPTABLE                         R19 K65 [{"FillDirection", "HorizontalFlex"}]
      194 GETIMPORT                        R20 K68 [Enum.FillDirection.Vertical]
      196 SETTABLEKS                       R20 R19 K63 ["FillDirection"]
      198 GETIMPORT                        R20 K71 [Enum.UIFlexAlignment.Fill]
      200 SETTABLEKS                       R20 R19 K64 ["HorizontalFlex"]
      202 CALL                             R17 2 1
      203 SETTABLEKS                       R17 R16 K60 ["UIListLayout"]
      205 GETUPVAL                         R17 8
      206 GETUPVAL                         R18 12
      207 CALL                             R17 1 1
      208 SETTABLEKS                       R17 R16 K61 ["ThreadsMenu"]
      210 CALL                             R13 3 1
      211 SETTABLEKS                       R13 R12 K17 ["ThreadsMenuPopover"]
      213 CALL                             R9 3 -1
      214 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R7 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Components"]
       46 GETTABLEKS                       R8 R9 K15 ["Contexts"]
       48 GETTABLEKS                       R7 R8 K16 ["ThreadIdContext"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K14 ["Components"]
       55 GETTABLEKS                       R9 R10 K17 ["ThreadsWindow"]
       57 GETTABLEKS                       R8 R9 K18 ["ThreadsMenu"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R11 R0 K19 ["Resources"]
       64 GETTABLEKS                       R10 R11 K20 ["Localization"]
       66 GETTABLEKS                       R9 R10 K21 ["Translator"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K22 ["Types"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       78 GETTABLEKS                       R11 R12 K24 ["useConversation"]
       80 CALL                             R10 1 1
       81 GETTABLEKS                       R11 R2 K25 ["Chip"]
       83 GETTABLEKS                       R12 R2 K26 ["Popover"]
       85 GETTABLEKS                       R13 R4 K27 ["createNextOrder"]
       87 GETTABLEKS                       R14 R3 K28 ["createElement"]
       89 DUPCLOSURE                       R15 K29 [PROTO_0]
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R6
       93 DUPCLOSURE                       R16 K30 [PROTO_5]
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R7
      107 RETURN                           R16 1
