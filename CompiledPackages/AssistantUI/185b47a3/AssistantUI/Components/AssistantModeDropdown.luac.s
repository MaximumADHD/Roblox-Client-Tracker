PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getAssistantModeOrdered"]
        5 CALL                             R1 0 3
        6 FORGPREP                         R1
        7 DUPTABLE                         R8 K3 [{"id", "text"}]
        8 SETTABLEKS                       R5 R8 K1 ["id"]
       10 GETUPVAL                         R9 1
       11 LOADK                            R11 K4 ["AssistantMode"]
       12 MOVE                             R12 R5
       13 NAMECALL                         R9 R9 K5 ["getText"]
       15 CALL                             R9 3 1
       16 SETTABLEKS                       R9 R8 K2 ["text"]
       18 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       20 MOVE                             R7 R0
       21 GETIMPORT                        R6 K8 [table.insert]
       23 CALL                             R6 2 0
       24 FORGLOOP                         R1 2 ; [-18]
       26 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_3]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 2
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["useState"]
        5 LOADB                            R4 0
        6 CALL                             R3 1 2
        7 GETUPVAL                         R5 2
        8 MOVE                             R6 R4
        9 CALL                             R5 1 0
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R4
       15 NEWTABLE                         R7 0 0
       17 CALL                             R5 2 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       21 DUPCLOSURE                       R7 K3 [PROTO_1]
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 NEWTABLE                         R8 0 0
       26 CALL                             R6 2 1
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       30 NEWCLOSURE                       R8 P2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R9 0 1
       35 MOVE                             R10 R2
       36 SETLIST                          R9 R10 1 [1]
       38 CALL                             R7 2 1
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K1 ["useCallback"]
       42 NEWCLOSURE                       R9 P3
       43 CAPTURE                          VAL R4
       44 NEWTABLE                         R10 0 0
       46 CALL                             R8 2 1
       47 GETUPVAL                         R9 5
       48 GETUPVAL                         R10 6
       49 DUPTABLE                         R11 K14 [{"isOpen", "items", "size", "width", "side", "align", "onPressedOutside", "onActivated", "LayoutOrder", "testId"}]
       50 SETTABLEKS                       R3 R11 K4 ["isOpen"]
       52 SETTABLEKS                       R6 R11 K5 ["items"]
       54 GETUPVAL                         R12 7
       55 GETTABLEKS                       R12 R12 K15 ["Enums"]
       57 GETTABLEKS                       R12 R12 K16 ["InputSize"]
       59 GETTABLEKS                       R12 R12 K17 ["XSmall"]
       61 SETTABLEKS                       R12 R11 K6 ["size"]
       63 GETIMPORT                        R12 K20 [UDim.new]
       65 LOADN                            R13 0
       66 LOADN                            R14 90
       67 CALL                             R12 2 1
       68 SETTABLEKS                       R12 R11 K7 ["width"]
       70 GETUPVAL                         R12 7
       71 GETTABLEKS                       R12 R12 K15 ["Enums"]
       73 GETTABLEKS                       R12 R12 K21 ["PopoverSide"]
       75 GETTABLEKS                       R12 R12 K22 ["Bottom"]
       77 SETTABLEKS                       R12 R11 K8 ["side"]
       79 GETUPVAL                         R12 7
       80 GETTABLEKS                       R12 R12 K15 ["Enums"]
       82 GETTABLEKS                       R12 R12 K23 ["PopoverAlign"]
       84 GETTABLEKS                       R12 R12 K24 ["Start"]
       86 SETTABLEKS                       R12 R11 K9 ["align"]
       88 SETTABLEKS                       R5 R11 K10 ["onPressedOutside"]
       90 SETTABLEKS                       R7 R11 K11 ["onActivated"]
       92 GETTABLEKS                       R12 R0 K12 ["LayoutOrder"]
       94 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       96 GETUPVAL                         R12 8
       97 GETTABLEKS                       R12 R12 K25 ["InputArea"]
       99 GETTABLEKS                       R12 R12 K26 ["AssistantModeDropdownMenu"]
      101 SETTABLEKS                       R12 R11 K13 ["testId"]
      103 DUPTABLE                         R12 K28 [{"AssistantModeDropdownAnchor"}]
      104 GETUPVAL                         R13 5
      105 GETUPVAL                         R14 9
      106 DUPTABLE                         R15 K33 [{"trailing", "text", "size", "variant", "isChecked", "testId", "onActivated"}]
      107 GETUPVAL                         R16 7
      108 GETTABLEKS                       R16 R16 K15 ["Enums"]
      110 GETTABLEKS                       R16 R16 K34 ["IconName"]
      112 GETTABLEKS                       R16 R16 K35 ["ChevronSmallDown"]
      114 SETTABLEKS                       R16 R15 K29 ["trailing"]
      116 SETTABLEKS                       R1 R15 K30 ["text"]
      118 GETUPVAL                         R16 7
      119 GETTABLEKS                       R16 R16 K15 ["Enums"]
      121 GETTABLEKS                       R16 R16 K36 ["ChipSize"]
      123 GETTABLEKS                       R16 R16 K37 ["Small"]
      125 SETTABLEKS                       R16 R15 K6 ["size"]
      127 GETUPVAL                         R16 7
      128 GETTABLEKS                       R16 R16 K15 ["Enums"]
      130 GETTABLEKS                       R16 R16 K38 ["ChipVariant"]
      132 GETTABLEKS                       R16 R16 K39 ["Standard"]
      134 SETTABLEKS                       R16 R15 K31 ["variant"]
      136 SETTABLEKS                       R3 R15 K32 ["isChecked"]
      138 GETUPVAL                         R16 8
      139 GETTABLEKS                       R16 R16 K25 ["InputArea"]
      141 GETTABLEKS                       R16 R16 K40 ["AssistantModeDropdown"]
      143 SETTABLEKS                       R16 R15 K13 ["testId"]
      145 SETTABLEKS                       R8 R15 K11 ["onActivated"]
      147 CALL                             R13 2 1
      148 SETTABLEKS                       R13 R12 K27 ["AssistantModeDropdownAnchor"]
      150 CALL                             R9 3 -1
      151 RETURN                           R9 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["TestIds"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       37 GETTABLEKS                       R6 R6 K13 ["useAssistantMode"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K12 ["Hooks"]
       44 GETTABLEKS                       R7 R7 K14 ["useCloseOnWidgetHidden"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K15 ["Resources"]
       51 GETTABLEKS                       R8 R8 K16 ["Localization"]
       53 GETTABLEKS                       R8 R8 K17 ["Translator"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R1 K18 ["Chip"]
       58 GETTABLEKS                       R9 R1 K19 ["Menu"]
       60 GETTABLEKS                       R10 R2 K20 ["createElement"]
       62 DUPCLOSURE                       R11 K21 [PROTO_5]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R8
       73 GETTABLEKS                       R12 R2 K22 ["memo"]
       75 MOVE                             R13 R11
       76 CALL                             R12 1 -1
       77 RETURN                           R12 -1
