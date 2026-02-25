PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R1 R0 K2 ["conversation"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useContext"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K3 ["threadId"]
       18 MOVE                             R4 R3
       19 JUMPIFNOT                        R4 ; [+3]
       20 GETTABLEKS                       R5 R1 K4 ["threads"]
       22 GETTABLE                         R4 R5 R3
       23 RETURN                           R4 1

PROTO_1:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_1]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"NewThread"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["ThreadsMenu"]
        3 LOADK                            R4 K0 ["NewThread"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["NewThread"]
        9 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K2 ["conversation"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K0 ["useContext"]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K1 ["Context"]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R4 K3 ["threadId"]
       18 MOVE                             R1 R5
       19 JUMPIFNOT                        R1 ; [+3]
       20 GETTABLEKS                       R6 R3 K4 ["threads"]
       22 GETTABLE                         R1 R6 R5
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R3 R4 K5 ["Hooks"]
       26 GETTABLEKS                       R2 R3 K6 ["useTokens"]
       28 CALL                             R2 0 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K7 ["useState"]
       32 LOADB                            R4 0
       33 CALL                             R3 1 2
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R5 R6 K8 ["useCallback"]
       37 NEWCLOSURE                       R6 P0
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R7 0 0
       41 CALL                             R5 2 1
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K9 ["useMemo"]
       45 DUPCLOSURE                       R7 K10 [PROTO_3]
       46 CAPTURE                          UPVAL U4
       47 NEWTABLE                         R8 0 1
       49 GETUPVAL                         R10 4
       50 GETTABLEKS                       R9 R10 K11 ["locale"]
       52 SETLIST                          R8 R9 1 [1]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R7 5
       56 CALL                             R7 0 1
       57 GETUPVAL                         R8 6
       58 GETUPVAL                         R10 7
       59 GETTABLEKS                       R9 R10 K12 ["Root"]
       61 DUPTABLE                         R10 K14 [{"isOpen"}]
       62 SETTABLEKS                       R3 R10 K13 ["isOpen"]
       64 DUPTABLE                         R11 K17 [{"Anchor", "ThreadsMenuPopover"}]
       65 GETUPVAL                         R12 6
       66 GETUPVAL                         R14 7
       67 GETTABLEKS                       R13 R14 K15 ["Anchor"]
       69 DUPTABLE                         R14 K19 [{"LayoutOrder"}]
       70 GETTABLEKS                       R15 R0 K18 ["LayoutOrder"]
       72 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
       74 DUPTABLE                         R15 K21 [{"ToggleThreadsMenuButton"}]
       75 GETUPVAL                         R16 6
       76 GETUPVAL                         R17 8
       77 DUPTABLE                         R18 K28 [{"trailing", "text", "size", "isChecked", "onActivated", "LayoutOrder", "testId"}]
       78 GETUPVAL                         R22 3
       79 GETTABLEKS                       R21 R22 K29 ["Enums"]
       81 GETTABLEKS                       R20 R21 K30 ["IconName"]
       83 GETTABLEKS                       R19 R20 K31 ["ChevronLargeDown"]
       85 SETTABLEKS                       R19 R18 K22 ["trailing"]
       87 JUMPIFNOT                        R1 ; [+9]
       88 GETTABLEKS                       R21 R1 K32 ["title"]
       90 LENGTH                           R20 R21
       91 LOADN                            R21 0
       92 JUMPIFNOTLT                      R21 R20 ; [+4]
       94 GETTABLEKS                       R19 R1 K32 ["title"]
       96 JUMP                             ; [+2]
       97 GETTABLEKS                       R19 R6 K33 ["NewThread"]
       99 SETTABLEKS                       R19 R18 K23 ["text"]
      101 GETUPVAL                         R22 3
      102 GETTABLEKS                       R21 R22 K29 ["Enums"]
      104 GETTABLEKS                       R20 R21 K34 ["ChipSize"]
      106 GETTABLEKS                       R19 R20 K35 ["Medium"]
      108 SETTABLEKS                       R19 R18 K24 ["size"]
      110 SETTABLEKS                       R3 R18 K25 ["isChecked"]
      112 SETTABLEKS                       R5 R18 K26 ["onActivated"]
      114 MOVE                             R19 R7
      115 CALL                             R19 0 1
      116 SETTABLEKS                       R19 R18 K18 ["LayoutOrder"]
      118 GETUPVAL                         R21 9
      119 GETTABLEKS                       R20 R21 K36 ["Header"]
      121 GETTABLEKS                       R19 R20 K37 ["ToggleThreadsMenu"]
      123 SETTABLEKS                       R19 R18 K27 ["testId"]
      125 CALL                             R16 2 1
      126 SETTABLEKS                       R16 R15 K20 ["ToggleThreadsMenuButton"]
      128 CALL                             R12 3 1
      129 SETTABLEKS                       R12 R11 K15 ["Anchor"]
      131 MOVE                             R12 R3
      132 JUMPIFNOT                        R12 ; [+61]
      133 GETUPVAL                         R12 6
      134 GETUPVAL                         R14 7
      135 GETTABLEKS                       R13 R14 K38 ["Content"]
      137 DUPTABLE                         R14 K43 [{"hasArrow", "backgroundStyle", "side", "onPressedOutside"}]
      138 LOADB                            R15 0
      139 SETTABLEKS                       R15 R14 K39 ["hasArrow"]
      141 GETTABLEKS                       R16 R2 K44 ["Color"]
      143 GETTABLEKS                       R15 R16 K45 ["None"]
      145 SETTABLEKS                       R15 R14 K40 ["backgroundStyle"]
      147 DUPTABLE                         R15 K48 [{"position", "offset"}]
      148 GETUPVAL                         R19 3
      149 GETTABLEKS                       R18 R19 K29 ["Enums"]
      151 GETTABLEKS                       R17 R18 K49 ["PopoverSide"]
      153 GETTABLEKS                       R16 R17 K50 ["Bottom"]
      155 SETTABLEKS                       R16 R15 K46 ["position"]
      157 GETTABLEKS                       R19 R2 K52 ["Padding"]
      159 GETTABLEKS                       R18 R19 K53 ["Small"]
      161 MULK                             R17 R18 K51 [2]
      162 GETTABLEKS                       R19 R2 K54 ["Stroke"]
      164 GETTABLEKS                       R18 R19 K55 ["Standard"]
      166 ADD                              R16 R17 R18
      167 SETTABLEKS                       R16 R15 K47 ["offset"]
      169 SETTABLEKS                       R15 R14 K41 ["side"]
      171 SETTABLEKS                       R5 R14 K42 ["onPressedOutside"]
      173 DUPTABLE                         R15 K58 [{"UIListLayout", "ThreadsMenu"}]
      174 GETUPVAL                         R16 6
      175 LOADK                            R17 K56 ["UIListLayout"]
      176 DUPTABLE                         R18 K61 [{"FillDirection", "HorizontalFlex"}]
      177 GETIMPORT                        R19 K64 [Enum.FillDirection.Vertical]
      179 SETTABLEKS                       R19 R18 K59 ["FillDirection"]
      181 GETIMPORT                        R19 K67 [Enum.UIFlexAlignment.Fill]
      183 SETTABLEKS                       R19 R18 K60 ["HorizontalFlex"]
      185 CALL                             R16 2 1
      186 SETTABLEKS                       R16 R15 K56 ["UIListLayout"]
      188 GETUPVAL                         R16 6
      189 GETUPVAL                         R17 10
      190 CALL                             R16 1 1
      191 SETTABLEKS                       R16 R15 K57 ["ThreadsMenu"]
      193 CALL                             R12 3 1
      194 SETTABLEKS                       R12 R11 K16 ["ThreadsMenuPopover"]
      196 CALL                             R8 3 -1
      197 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ConversationContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R6 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K14 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Components"]
       48 GETTABLEKS                       R8 R9 K7 ["Contexts"]
       50 GETTABLEKS                       R7 R8 K15 ["ThreadIdContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Components"]
       57 GETTABLEKS                       R9 R10 K16 ["ThreadsWindow"]
       59 GETTABLEKS                       R8 R9 K17 ["ThreadsMenu"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R11 R0 K18 ["Resources"]
       66 GETTABLEKS                       R10 R11 K19 ["Localization"]
       68 GETTABLEKS                       R9 R10 K20 ["Translator"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K21 ["Types"]
       75 CALL                             R9 1 1
       76 GETTABLEKS                       R10 R2 K22 ["Chip"]
       78 GETTABLEKS                       R11 R2 K23 ["Popover"]
       80 GETTABLEKS                       R12 R4 K24 ["createNextOrder"]
       82 GETTABLEKS                       R13 R3 K25 ["createElement"]
       84 DUPCLOSURE                       R14 K26 [PROTO_0]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R6
       88 DUPCLOSURE                       R15 K27 [PROTO_4]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R7
      100 RETURN                           R15 1
