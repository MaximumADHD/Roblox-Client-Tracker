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
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R4
       12 NEWTABLE                         R7 0 0
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       18 DUPCLOSURE                       R7 K3 [PROTO_1]
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 NEWTABLE                         R8 0 0
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       27 NEWCLOSURE                       R8 P2
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R9 0 1
       32 MOVE                             R10 R2
       33 SETLIST                          R9 R10 1 [1]
       35 CALL                             R7 2 1
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K1 ["useCallback"]
       39 NEWCLOSURE                       R9 P3
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R10 0 0
       43 CALL                             R8 2 1
       44 GETUPVAL                         R9 4
       45 GETUPVAL                         R10 5
       46 DUPTABLE                         R11 K14 [{"isOpen", "items", "size", "width", "side", "align", "onPressedOutside", "onActivated", "LayoutOrder", "testId"}]
       47 SETTABLEKS                       R3 R11 K4 ["isOpen"]
       49 SETTABLEKS                       R6 R11 K5 ["items"]
       51 GETUPVAL                         R12 6
       52 GETTABLEKS                       R12 R12 K15 ["Enums"]
       54 GETTABLEKS                       R12 R12 K16 ["InputSize"]
       56 GETTABLEKS                       R12 R12 K17 ["XSmall"]
       58 SETTABLEKS                       R12 R11 K6 ["size"]
       60 GETIMPORT                        R12 K20 [UDim.new]
       62 LOADN                            R13 0
       63 LOADN                            R14 90
       64 CALL                             R12 2 1
       65 SETTABLEKS                       R12 R11 K7 ["width"]
       67 GETUPVAL                         R12 6
       68 GETTABLEKS                       R12 R12 K15 ["Enums"]
       70 GETTABLEKS                       R12 R12 K21 ["PopoverSide"]
       72 GETTABLEKS                       R12 R12 K22 ["Bottom"]
       74 SETTABLEKS                       R12 R11 K8 ["side"]
       76 GETUPVAL                         R12 6
       77 GETTABLEKS                       R12 R12 K15 ["Enums"]
       79 GETTABLEKS                       R12 R12 K23 ["PopoverAlign"]
       81 GETTABLEKS                       R12 R12 K24 ["Start"]
       83 SETTABLEKS                       R12 R11 K9 ["align"]
       85 SETTABLEKS                       R5 R11 K10 ["onPressedOutside"]
       87 SETTABLEKS                       R7 R11 K11 ["onActivated"]
       89 GETTABLEKS                       R12 R0 K12 ["LayoutOrder"]
       91 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       93 GETUPVAL                         R12 7
       94 GETTABLEKS                       R12 R12 K25 ["InputArea"]
       96 GETTABLEKS                       R12 R12 K26 ["AssistantModeDropdownMenu"]
       98 SETTABLEKS                       R12 R11 K13 ["testId"]
      100 DUPTABLE                         R12 K28 [{"AssistantModeDropdownAnchor"}]
      101 GETUPVAL                         R13 4
      102 GETUPVAL                         R14 8
      103 DUPTABLE                         R15 K33 [{"trailing", "text", "size", "variant", "isChecked", "testId", "onActivated"}]
      104 GETUPVAL                         R16 6
      105 GETTABLEKS                       R16 R16 K15 ["Enums"]
      107 GETTABLEKS                       R16 R16 K34 ["IconName"]
      109 GETTABLEKS                       R16 R16 K35 ["ChevronSmallDown"]
      111 SETTABLEKS                       R16 R15 K29 ["trailing"]
      113 SETTABLEKS                       R1 R15 K30 ["text"]
      115 GETUPVAL                         R16 6
      116 GETTABLEKS                       R16 R16 K15 ["Enums"]
      118 GETTABLEKS                       R16 R16 K36 ["ChipSize"]
      120 GETTABLEKS                       R16 R16 K37 ["Small"]
      122 SETTABLEKS                       R16 R15 K6 ["size"]
      124 GETUPVAL                         R16 6
      125 GETTABLEKS                       R16 R16 K15 ["Enums"]
      127 GETTABLEKS                       R16 R16 K38 ["ChipVariant"]
      129 GETTABLEKS                       R16 R16 K39 ["Standard"]
      131 SETTABLEKS                       R16 R15 K31 ["variant"]
      133 SETTABLEKS                       R3 R15 K32 ["isChecked"]
      135 GETUPVAL                         R16 7
      136 GETTABLEKS                       R16 R16 K25 ["InputArea"]
      138 GETTABLEKS                       R16 R16 K40 ["AssistantModeDropdown"]
      140 SETTABLEKS                       R16 R15 K13 ["testId"]
      142 SETTABLEKS                       R8 R15 K11 ["onActivated"]
      144 CALL                             R13 2 1
      145 SETTABLEKS                       R13 R12 K27 ["AssistantModeDropdownAnchor"]
      147 CALL                             R9 3 -1
      148 RETURN                           R9 -1

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
       42 GETTABLEKS                       R7 R0 K14 ["Resources"]
       44 GETTABLEKS                       R7 R7 K15 ["Localization"]
       46 GETTABLEKS                       R7 R7 K16 ["Translator"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R1 K17 ["Chip"]
       51 GETTABLEKS                       R8 R1 K18 ["Menu"]
       53 GETTABLEKS                       R9 R2 K19 ["createElement"]
       55 DUPCLOSURE                       R10 K20 [PROTO_5]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R7
       65 GETTABLEKS                       R11 R2 K21 ["memo"]
       67 MOVE                             R12 R10
       68 CALL                             R11 1 -1
       69 RETURN                           R11 -1
