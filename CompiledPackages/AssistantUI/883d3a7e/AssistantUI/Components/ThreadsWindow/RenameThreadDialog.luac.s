PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setIsOpen"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["title"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K0 ["threadId"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 4
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"Cancel", "Rename", "RenameThreadDialogTitle"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["ThreadsMenu"]
        3 LOADK                            R4 K0 ["Cancel"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Cancel"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["ThreadsMenu"]
       11 LOADK                            R4 K1 ["Rename"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Rename"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["ThreadsMenu"]
       19 LOADK                            R4 K2 ["RenameThreadDialogTitle"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["RenameThreadDialogTitle"]
       25 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Vector2.new]
        3 LOADN                            R3 244
        4 GETTABLEKS                       R5 R0 K3 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R5 K4 ["Y"]
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 LOADK                            R3 K1 ["TextBox"]
        8 LOADB                            R4 1
        9 NAMECALL                         R1 R0 K2 ["FindFirstChildWhichIsA"]
       11 CALL                             R1 3 1
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 0
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K0 ["current"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K3 ["focus"]
       21 CALL                             R2 0 0
       22 NAMECALL                         R2 R1 K4 ["CaptureFocus"]
       24 CALL                             R2 1 0
       25 LOADN                            R2 1
       26 SETTABLEKS                       R2 R1 K5 ["SelectionStart"]
       28 GETTABLEKS                       R4 R1 K7 ["Text"]
       30 LENGTH                           R3 R4
       31 ADDK                             R2 R3 K6 [1]
       32 SETTABLEKS                       R2 R1 K8 ["CursorPosition"]
       34 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R2 2
        4 DUPTABLE                         R3 K3 [{"tag", "onAbsoluteSizeChanged", "testId"}]
        5 LOADK                            R4 K4 ["col size-full-0 auto-y bg-surface-100 padding-large gap-medium"]
        6 SETTABLEKS                       R4 R3 K0 ["tag"]
        8 GETUPVAL                         R4 3
        9 SETTABLEKS                       R4 R3 K1 ["onAbsoluteSizeChanged"]
       11 GETUPVAL                         R6 4
       12 GETTABLEKS                       R5 R6 K5 ["RenameThreadDialog"]
       14 GETTABLEKS                       R4 R5 K6 ["Container"]
       16 SETTABLEKS                       R4 R3 K2 ["testId"]
       18 DUPTABLE                         R4 K9 [{"Input", "BottomBar"}]
       19 GETUPVAL                         R5 1
       20 GETUPVAL                         R6 5
       21 DUPTABLE                         R7 K19 [{"text", "placeholder", "label", "hasError", "width", "onChanged", "onReturnPressed", "LayoutOrder", "ref", "testId"}]
       22 GETUPVAL                         R8 6
       23 SETTABLEKS                       R8 R7 K10 ["text"]
       25 GETUPVAL                         R9 7
       26 GETTABLEKS                       R8 R9 K20 ["title"]
       28 SETTABLEKS                       R8 R7 K11 ["placeholder"]
       30 LOADK                            R8 K21 [""]
       31 SETTABLEKS                       R8 R7 K12 ["label"]
       33 GETUPVAL                         R9 8
       34 NOT                              R8 R9
       35 SETTABLEKS                       R8 R7 K13 ["hasError"]
       37 GETIMPORT                        R8 K24 [UDim.new]
       39 LOADN                            R9 1
       40 LOADN                            R10 0
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K14 ["width"]
       44 GETUPVAL                         R8 9
       45 SETTABLEKS                       R8 R7 K15 ["onChanged"]
       47 GETUPVAL                         R8 10
       48 SETTABLEKS                       R8 R7 K16 ["onReturnPressed"]
       50 MOVE                             R8 R0
       51 CALL                             R8 0 1
       52 SETTABLEKS                       R8 R7 K17 ["LayoutOrder"]
       54 GETUPVAL                         R8 11
       55 SETTABLEKS                       R8 R7 K18 ["ref"]
       57 GETUPVAL                         R10 4
       58 GETTABLEKS                       R9 R10 K5 ["RenameThreadDialog"]
       60 GETTABLEKS                       R8 R9 K7 ["Input"]
       62 SETTABLEKS                       R8 R7 K2 ["testId"]
       64 CALL                             R5 2 1
       65 SETTABLEKS                       R5 R4 K7 ["Input"]
       67 GETUPVAL                         R5 1
       68 GETUPVAL                         R6 2
       69 DUPTABLE                         R7 K25 [{"tag", "LayoutOrder"}]
       70 LOADK                            R8 K26 ["row size-full-0 auto-y gap-small align-x-right align-y-center"]
       71 SETTABLEKS                       R8 R7 K0 ["tag"]
       73 MOVE                             R8 R0
       74 CALL                             R8 0 1
       75 SETTABLEKS                       R8 R7 K17 ["LayoutOrder"]
       77 DUPTABLE                         R8 K31 [{"CharacterLimit", "Space", "Cancel", "Rename"}]
       78 GETUPVAL                         R9 1
       79 GETUPVAL                         R10 12
       80 DUPTABLE                         R11 K33 [{"tag", "Text", "LayoutOrder"}]
       81 NEWTABLE                         R12 4 0
       83 LOADB                            R13 1
       84 SETTABLEKS                       R13 R12 K34 ["auto-xy text-caption-medium"]
       86 GETUPVAL                         R13 8
       87 SETTABLEKS                       R13 R12 K35 ["content-muted"]
       89 GETUPVAL                         R14 8
       90 NOT                              R13 R14
       91 SETTABLEKS                       R13 R12 K36 ["content-alert"]
       93 SETTABLEKS                       R12 R11 K0 ["tag"]
       95 LOADK                            R13 K37 ["%* / %*"]
       96 GETUPVAL                         R16 6
       97 LENGTH                           R15 R16
       98 GETUPVAL                         R17 13
       99 GETTABLEKS                       R16 R17 K38 ["MAX_THREAD_NAME_LENGTH"]
      101 NAMECALL                         R13 R13 K39 ["format"]
      103 CALL                             R13 3 1
      104 MOVE                             R12 R13
      105 SETTABLEKS                       R12 R11 K32 ["Text"]
      107 MOVE                             R12 R0
      108 CALL                             R12 0 1
      109 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
      111 CALL                             R9 2 1
      112 SETTABLEKS                       R9 R8 K27 ["CharacterLimit"]
      114 GETUPVAL                         R9 1
      115 GETUPVAL                         R10 2
      116 DUPTABLE                         R11 K25 [{"tag", "LayoutOrder"}]
      117 LOADK                            R12 K40 ["fill"]
      118 SETTABLEKS                       R12 R11 K0 ["tag"]
      120 MOVE                             R12 R0
      121 CALL                             R12 0 1
      122 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
      124 CALL                             R9 2 1
      125 SETTABLEKS                       R9 R8 K28 ["Space"]
      127 GETUPVAL                         R9 1
      128 GETUPVAL                         R10 14
      129 DUPTABLE                         R11 K44 [{"text", "variant", "size", "onActivated", "LayoutOrder"}]
      130 GETUPVAL                         R13 15
      131 GETTABLEKS                       R12 R13 K29 ["Cancel"]
      133 SETTABLEKS                       R12 R11 K10 ["text"]
      135 GETUPVAL                         R15 16
      136 GETTABLEKS                       R14 R15 K45 ["Enums"]
      138 GETTABLEKS                       R13 R14 K46 ["ButtonVariant"]
      140 GETTABLEKS                       R12 R13 K47 ["Utility"]
      142 SETTABLEKS                       R12 R11 K41 ["variant"]
      144 GETUPVAL                         R15 16
      145 GETTABLEKS                       R14 R15 K45 ["Enums"]
      147 GETTABLEKS                       R13 R14 K48 ["InputSize"]
      149 GETTABLEKS                       R12 R13 K49 ["Small"]
      151 SETTABLEKS                       R12 R11 K42 ["size"]
      153 GETUPVAL                         R12 17
      154 SETTABLEKS                       R12 R11 K43 ["onActivated"]
      156 MOVE                             R12 R0
      157 CALL                             R12 0 1
      158 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
      160 CALL                             R9 2 1
      161 SETTABLEKS                       R9 R8 K29 ["Cancel"]
      163 GETUPVAL                         R9 1
      164 GETUPVAL                         R10 14
      165 DUPTABLE                         R11 K51 [{"text", "variant", "size", "isDisabled", "onActivated", "LayoutOrder"}]
      166 GETUPVAL                         R13 15
      167 GETTABLEKS                       R12 R13 K30 ["Rename"]
      169 SETTABLEKS                       R12 R11 K10 ["text"]
      171 GETUPVAL                         R13 18
      172 JUMPIFNOT                        R13 ; [+8]
      173 GETUPVAL                         R15 16
      174 GETTABLEKS                       R14 R15 K45 ["Enums"]
      176 GETTABLEKS                       R13 R14 K46 ["ButtonVariant"]
      178 GETTABLEKS                       R12 R13 K52 ["SoftEmphasis"]
      180 JUMP                             ; [+7]
      181 GETUPVAL                         R15 16
      182 GETTABLEKS                       R14 R15 K45 ["Enums"]
      184 GETTABLEKS                       R13 R14 K46 ["ButtonVariant"]
      186 GETTABLEKS                       R12 R13 K47 ["Utility"]
      188 SETTABLEKS                       R12 R11 K41 ["variant"]
      190 GETUPVAL                         R15 16
      191 GETTABLEKS                       R14 R15 K45 ["Enums"]
      193 GETTABLEKS                       R13 R14 K48 ["InputSize"]
      195 GETTABLEKS                       R12 R13 K49 ["Small"]
      197 SETTABLEKS                       R12 R11 K42 ["size"]
      199 GETUPVAL                         R13 18
      200 NOT                              R12 R13
      201 SETTABLEKS                       R12 R11 K50 ["isDisabled"]
      203 GETUPVAL                         R12 10
      204 SETTABLEKS                       R12 R11 K43 ["onActivated"]
      206 MOVE                             R12 R0
      207 CALL                             R12 0 1
      208 SETTABLEKS                       R12 R11 K17 ["LayoutOrder"]
      210 CALL                             R9 2 1
      211 SETTABLEKS                       R9 R8 K30 ["Rename"]
      213 CALL                             R5 3 1
      214 SETTABLEKS                       R5 R4 K8 ["BottomBar"]
      216 CALL                             R1 3 -1
      217 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["show"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 LOADNIL                          R3
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K0 ["useState"]
        8 GETIMPORT                        R5 K3 [Vector2.new]
       10 LOADN                            R6 244
       11 LOADN                            R7 1
       12 CALL                             R5 2 -1
       13 CALL                             R4 -1 2
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K0 ["useState"]
       17 GETTABLEKS                       R7 R0 K4 ["title"]
       19 CALL                             R6 1 2
       20 LENGTH                           R9 R6
       21 GETUPVAL                         R11 3
       22 GETTABLEKS                       R10 R11 K5 ["MAX_THREAD_NAME_LENGTH"]
       24 JUMPIFLE                         R9 R10 ; [+2]
       26 LOADB                            R8 0 +1
       27 LOADB                            R8 1
       28 LOADB                            R9 0
       29 GETTABLEKS                       R10 R0 K4 ["title"]
       31 JUMPIFEQ                         R6 R10 ; [+15]
       33 LOADB                            R9 0
       34 JUMPIFEQKS                       R6 K6 [""] ; [+12]
       36 MOVE                             R9 R8
       37 JUMPIFNOT                        R9 ; [+9]
       38 GETIMPORT                        R10 K9 [string.find]
       40 MOVE                             R11 R6
       41 LOADK                            R12 K10 ["\n"]
       42 CALL                             R10 2 1
       43 JUMPIFEQKNIL                     R10 ; [+2]
       45 LOADB                            R9 0 +1
       46 LOADB                            R9 1
       47 GETUPVAL                         R11 2
       48 GETTABLEKS                       R10 R11 K11 ["useCallback"]
       50 NEWCLOSURE                       R11 P0
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R12 0 1
       54 GETTABLEKS                       R13 R0 K12 ["setIsOpen"]
       56 SETLIST                          R12 R13 1 [1]
       58 CALL                             R10 2 1
       59 GETUPVAL                         R12 2
       60 GETTABLEKS                       R11 R12 K11 ["useCallback"]
       62 NEWCLOSURE                       R12 P1
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R10
       68 NEWTABLE                         R13 0 5
       70 MOVE                             R14 R6
       71 MOVE                             R15 R9
       72 MOVE                             R16 R1
       73 GETTABLEKS                       R17 R0 K13 ["threadId"]
       75 MOVE                             R18 R10
       76 SETLIST                          R13 R14 5 [1]
       78 CALL                             R11 2 1
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R12 R13 K14 ["useMemo"]
       82 DUPCLOSURE                       R13 K15 [PROTO_3]
       83 CAPTURE                          UPVAL U4
       84 NEWTABLE                         R14 0 1
       86 GETUPVAL                         R16 4
       87 GETTABLEKS                       R15 R16 K16 ["locale"]
       89 SETLIST                          R14 R15 1 [1]
       91 CALL                             R12 2 1
       92 GETUPVAL                         R14 2
       93 GETTABLEKS                       R13 R14 K11 ["useCallback"]
       95 NEWCLOSURE                       R14 P3
       96 CAPTURE                          VAL R5
       97 NEWTABLE                         R15 0 0
       99 CALL                             R13 2 1
      100 GETUPVAL                         R15 2
      101 GETTABLEKS                       R14 R15 K17 ["useRef"]
      103 LOADB                            R15 0
      104 CALL                             R14 1 1
      105 GETUPVAL                         R16 2
      106 GETTABLEKS                       R15 R16 K11 ["useCallback"]
      108 NEWCLOSURE                       R16 P4
      109 CAPTURE                          VAL R14
      110 CAPTURE                          REF R3
      111 NEWTABLE                         R17 0 0
      113 CALL                             R15 2 1
      114 GETUPVAL                         R17 2
      115 GETTABLEKS                       R16 R17 K14 ["useMemo"]
      117 NEWCLOSURE                       R17 P5
      118 CAPTURE                          UPVAL U5
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          VAL R13
      122 CAPTURE                          UPVAL U8
      123 CAPTURE                          UPVAL U9
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R0
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R15
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          UPVAL U3
      132 CAPTURE                          UPVAL U11
      133 CAPTURE                          VAL R12
      134 CAPTURE                          UPVAL U12
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R9
      137 NEWTABLE                         R18 0 7
      139 GETTABLEKS                       R19 R0 K4 ["title"]
      141 MOVE                             R20 R9
      142 MOVE                             R21 R6
      143 MOVE                             R22 R11
      144 MOVE                             R23 R10
      145 MOVE                             R24 R13
      146 MOVE                             R25 R15
      147 SETLIST                          R18 R19 7 [1]
      149 CALL                             R16 2 1
      150 MOVE                             R17 R2
      151 DUPTABLE                         R18 K23 [{"Contents", "Size", "Title", "Modal", "onHide"}]
      152 SETTABLEKS                       R16 R18 K18 ["Contents"]
      154 SETTABLEKS                       R4 R18 K19 ["Size"]
      156 GETTABLEKS                       R19 R12 K24 ["RenameThreadDialogTitle"]
      158 SETTABLEKS                       R19 R18 K20 ["Title"]
      160 LOADB                            R19 0
      161 SETTABLEKS                       R19 R18 K21 ["Modal"]
      163 SETTABLEKS                       R10 R18 K22 ["onHide"]
      165 CALL                             R17 1 1
      166 MOVE                             R3 R17
      167 GETUPVAL                         R18 2
      168 GETTABLEKS                       R17 R18 K25 ["useEffect"]
      170 NEWCLOSURE                       R18 P6
      171 CAPTURE                          REF R3
      172 NEWTABLE                         R19 0 1
      174 GETTABLEKS                       R20 R3 K26 ["show"]
      176 SETLIST                          R19 R20 1 [1]
      178 CALL                             R17 2 0
      179 GETTABLEKS                       R17 R3 K27 ["root"]
      181 CLOSEUPVALS                      R3
      182 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R5 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R6 K10 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Util"]
       37 GETTABLEKS                       R6 R7 K12 ["TestIds"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Resources"]
       44 GETTABLEKS                       R8 R9 K14 ["Localization"]
       46 GETTABLEKS                       R7 R8 K15 ["Translator"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Types"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       58 GETTABLEKS                       R9 R10 K18 ["useEditThread"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R11 R0 K17 ["Hooks"]
       65 GETTABLEKS                       R10 R11 K19 ["useGetDialogWidget"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R2 K20 ["Button"]
       70 GETTABLEKS                       R11 R2 K21 ["Text"]
       72 GETTABLEKS                       R12 R2 K22 ["TextInput"]
       74 GETTABLEKS                       R13 R2 K23 ["View"]
       76 GETTABLEKS                       R14 R4 K24 ["createNextOrder"]
       78 GETTABLEKS                       R15 R3 K25 ["createElement"]
       80 DUPCLOSURE                       R16 K26 [PROTO_8]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R15
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R2
       94 RETURN                           R16 1
