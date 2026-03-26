PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setIsOpen"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["title"]
        2 GETUPVAL                         R2 0
        3 SETTABLEKS                       R2 R0 K0 ["title"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["get"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R4 R2 K2 ["EventLogger"]
       11 GETTABLEKS                       R3 R4 K3 ["logThreadRenamed"]
       13 DUPTABLE                         R4 K9 [{"conversationId", "threadId", "oldTitle", "newTitle", "namingSource"}]
       14 GETUPVAL                         R5 2
       15 SETTABLEKS                       R5 R4 K4 ["conversationId"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K5 ["threadId"]
       20 SETTABLEKS                       R5 R4 K5 ["threadId"]
       22 SETTABLEKS                       R1 R4 K6 ["oldTitle"]
       24 GETUPVAL                         R5 0
       25 SETTABLEKS                       R5 R4 K7 ["newTitle"]
       27 GETUPVAL                         R7 4
       28 GETTABLEKS                       R6 R7 K10 ["ThreadNamingSource"]
       30 GETTABLEKS                       R5 R6 K11 ["ManualRename"]
       32 SETTABLEKS                       R5 R4 K8 ["namingSource"]
       34 CALL                             R3 1 0
       35 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K0 ["threadId"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U6
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 7
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["sessionId"]
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 LOADNIL                          R5
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K3 ["useState"]
       17 GETIMPORT                        R7 K6 [Vector2.new]
       19 LOADN                            R8 244
       20 LOADN                            R9 1
       21 CALL                             R7 2 -1
       22 CALL                             R6 -1 2
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R8 R9 K3 ["useState"]
       26 GETTABLEKS                       R9 R0 K7 ["title"]
       28 CALL                             R8 1 2
       29 LENGTH                           R11 R8
       30 GETUPVAL                         R13 4
       31 GETTABLEKS                       R12 R13 K8 ["MAX_THREAD_NAME_LENGTH"]
       33 JUMPIFLE                         R11 R12 ; [+2]
       35 LOADB                            R10 0 +1
       36 LOADB                            R10 1
       37 LOADB                            R11 0
       38 GETTABLEKS                       R12 R0 K7 ["title"]
       40 JUMPIFEQ                         R8 R12 ; [+15]
       42 LOADB                            R11 0
       43 JUMPIFEQKS                       R8 K9 [""] ; [+12]
       45 MOVE                             R11 R10
       46 JUMPIFNOT                        R11 ; [+9]
       47 GETIMPORT                        R12 K12 [string.find]
       49 MOVE                             R13 R8
       50 LOADK                            R14 K13 ["\n"]
       51 CALL                             R12 2 1
       52 JUMPIFEQKNIL                     R12 ; [+2]
       54 LOADB                            R11 0 +1
       55 LOADB                            R11 1
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R12 R13 K14 ["useCallback"]
       59 NEWCLOSURE                       R13 P0
       60 CAPTURE                          VAL R0
       61 NEWTABLE                         R14 0 1
       63 GETTABLEKS                       R15 R0 K15 ["setIsOpen"]
       65 SETLIST                          R14 R15 1 [1]
       67 CALL                             R12 2 1
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R13 R14 K14 ["useCallback"]
       71 NEWCLOSURE                       R14 P1
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R8
       76 CAPTURE                          UPVAL U5
       77 CAPTURE                          VAL R2
       78 CAPTURE                          UPVAL U6
       79 CAPTURE                          VAL R12
       80 NEWTABLE                         R15 0 6
       82 MOVE                             R16 R8
       83 MOVE                             R17 R11
       84 MOVE                             R18 R3
       85 GETTABLEKS                       R19 R0 K16 ["threadId"]
       87 MOVE                             R20 R12
       88 MOVE                             R21 R2
       89 SETLIST                          R15 R16 6 [1]
       91 CALL                             R13 2 1
       92 GETUPVAL                         R15 0
       93 GETTABLEKS                       R14 R15 K17 ["useMemo"]
       95 DUPCLOSURE                       R15 K18 [PROTO_3]
       96 CAPTURE                          UPVAL U7
       97 NEWTABLE                         R16 0 1
       99 GETUPVAL                         R18 7
      100 GETTABLEKS                       R17 R18 K19 ["locale"]
      102 SETLIST                          R16 R17 1 [1]
      104 CALL                             R14 2 1
      105 GETUPVAL                         R16 0
      106 GETTABLEKS                       R15 R16 K14 ["useCallback"]
      108 NEWCLOSURE                       R16 P3
      109 CAPTURE                          VAL R7
      110 NEWTABLE                         R17 0 0
      112 CALL                             R15 2 1
      113 GETUPVAL                         R17 0
      114 GETTABLEKS                       R16 R17 K20 ["useRef"]
      116 LOADB                            R17 0
      117 CALL                             R16 1 1
      118 GETUPVAL                         R18 0
      119 GETTABLEKS                       R17 R18 K14 ["useCallback"]
      121 NEWCLOSURE                       R18 P4
      122 CAPTURE                          VAL R16
      123 CAPTURE                          REF R5
      124 NEWTABLE                         R19 0 0
      126 CALL                             R17 2 1
      127 GETUPVAL                         R19 0
      128 GETTABLEKS                       R18 R19 K17 ["useMemo"]
      130 NEWCLOSURE                       R19 P5
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          UPVAL U9
      133 CAPTURE                          UPVAL U10
      134 CAPTURE                          VAL R15
      135 CAPTURE                          UPVAL U11
      136 CAPTURE                          UPVAL U12
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R17
      143 CAPTURE                          UPVAL U13
      144 CAPTURE                          UPVAL U4
      145 CAPTURE                          UPVAL U14
      146 CAPTURE                          VAL R14
      147 CAPTURE                          UPVAL U15
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R11
      150 NEWTABLE                         R20 0 7
      152 GETTABLEKS                       R21 R0 K7 ["title"]
      154 MOVE                             R22 R11
      155 MOVE                             R23 R8
      156 MOVE                             R24 R13
      157 MOVE                             R25 R12
      158 MOVE                             R26 R15
      159 MOVE                             R27 R17
      160 SETLIST                          R20 R21 7 [1]
      162 CALL                             R18 2 1
      163 MOVE                             R19 R4
      164 DUPTABLE                         R20 K26 [{"Contents", "Size", "Title", "Modal", "onHide"}]
      165 SETTABLEKS                       R18 R20 K21 ["Contents"]
      167 SETTABLEKS                       R6 R20 K22 ["Size"]
      169 GETTABLEKS                       R21 R14 K27 ["RenameThreadDialogTitle"]
      171 SETTABLEKS                       R21 R20 K23 ["Title"]
      173 LOADB                            R21 1
      174 SETTABLEKS                       R21 R20 K24 ["Modal"]
      176 SETTABLEKS                       R12 R20 K25 ["onHide"]
      178 CALL                             R19 1 1
      179 MOVE                             R5 R19
      180 GETUPVAL                         R20 0
      181 GETTABLEKS                       R19 R20 K28 ["useEffect"]
      183 NEWCLOSURE                       R20 P6
      184 CAPTURE                          REF R5
      185 NEWTABLE                         R21 0 1
      187 GETTABLEKS                       R22 R5 K29 ["show"]
      189 SETLIST                          R21 R22 1 [1]
      191 CALL                             R19 2 0
      192 GETTABLEKS                       R19 R5 K30 ["root"]
      194 CLOSEUPVALS                      R5
      195 RETURN                           R19 1

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
       14 GETTABLEKS                       R4 R0 K7 ["Guest"]
       16 GETTABLEKS                       R3 R4 K8 ["Environment"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R6 K11 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R7 K12 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Components"]
       44 GETTABLEKS                       R8 R9 K14 ["Contexts"]
       46 GETTABLEKS                       R7 R8 K15 ["SessionIdContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Util"]
       53 GETTABLEKS                       R8 R9 K17 ["TestIds"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R11 R0 K18 ["Resources"]
       60 GETTABLEKS                       R10 R11 K19 ["Localization"]
       62 GETTABLEKS                       R9 R10 K20 ["Translator"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K21 ["Types"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K22 ["Hooks"]
       74 GETTABLEKS                       R11 R12 K23 ["useEditThread"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K22 ["Hooks"]
       81 GETTABLEKS                       R12 R13 K24 ["useGetDialogWidget"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R3 K25 ["Button"]
       86 GETTABLEKS                       R13 R3 K26 ["Text"]
       88 GETTABLEKS                       R14 R3 K27 ["TextInput"]
       90 GETTABLEKS                       R15 R3 K28 ["View"]
       92 GETTABLEKS                       R16 R5 K29 ["createNextOrder"]
       94 GETTABLEKS                       R17 R4 K30 ["createElement"]
       96 DUPCLOSURE                       R18 K31 [PROTO_8]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R3
      113 RETURN                           R18 1
