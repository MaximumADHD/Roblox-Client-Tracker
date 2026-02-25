PROTO_0:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isPinned"]
        3 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isPinned"]
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Pin"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+6]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 DUPCLOSURE                       R3 K1 [PROTO_0]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K2 ["Unpin"]
       13 JUMPIFNOTEQ                      R0 R1 ; [+6]
       15 GETUPVAL                         R1 1
       16 GETUPVAL                         R2 2
       17 DUPCLOSURE                       R3 K3 [PROTO_1]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K4 ["Rename"]
       23 JUMPIFNOTEQ                      R0 R1 ; [+5]
       25 GETUPVAL                         R1 3
       26 LOADB                            R2 1
       27 CALL                             R1 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K5 ["Delete"]
       32 JUMPIFNOTEQ                      R0 R1 ; [+4]
       34 GETUPVAL                         R1 4
       35 GETUPVAL                         R2 2
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setIsOpen"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K4 [{"Unpin", "Pin", "EditName", "DeleteThread"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["ThreadsMenu"]
        3 LOADK                            R4 K0 ["Unpin"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Unpin"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["ThreadsMenu"]
       11 LOADK                            R4 K1 ["Pin"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Pin"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["ThreadsMenu"]
       19 LOADK                            R4 K2 ["EditName"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["EditName"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K5 ["ThreadsMenu"]
       27 LOADK                            R4 K3 ["DeleteThread"]
       28 NAMECALL                         R1 R1 K6 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["DeleteThread"]
       33 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R0 0 3
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+21]
        4 DUPTABLE                         R1 K3 [{"id", "icon", "text"}]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K4 ["Unpin"]
        8 SETTABLEKS                       R2 R1 K0 ["id"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K5 ["Enums"]
       13 GETTABLEKS                       R3 R4 K6 ["IconName"]
       15 GETTABLEKS                       R2 R3 K7 ["PinSlash"]
       17 SETTABLEKS                       R2 R1 K1 ["icon"]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K4 ["Unpin"]
       22 SETTABLEKS                       R2 R1 K2 ["text"]
       24 JUMP                             ; [+20]
       25 DUPTABLE                         R1 K3 [{"id", "icon", "text"}]
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K8 ["Pin"]
       29 SETTABLEKS                       R2 R1 K0 ["id"]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R4 R5 K5 ["Enums"]
       34 GETTABLEKS                       R3 R4 K6 ["IconName"]
       36 GETTABLEKS                       R2 R3 K8 ["Pin"]
       38 SETTABLEKS                       R2 R1 K1 ["icon"]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R2 R3 K8 ["Pin"]
       43 SETTABLEKS                       R2 R1 K2 ["text"]
       45 DUPTABLE                         R2 K3 [{"id", "icon", "text"}]
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R3 R4 K9 ["Rename"]
       49 SETTABLEKS                       R3 R2 K0 ["id"]
       51 GETUPVAL                         R6 2
       52 GETTABLEKS                       R5 R6 K5 ["Enums"]
       54 GETTABLEKS                       R4 R5 K6 ["IconName"]
       56 GETTABLEKS                       R3 R4 K10 ["Pencil"]
       58 SETTABLEKS                       R3 R2 K1 ["icon"]
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R3 R4 K11 ["EditName"]
       63 SETTABLEKS                       R3 R2 K2 ["text"]
       65 DUPTABLE                         R3 K3 [{"id", "icon", "text"}]
       66 GETUPVAL                         R5 1
       67 GETTABLEKS                       R4 R5 K12 ["Delete"]
       69 SETTABLEKS                       R4 R3 K0 ["id"]
       71 GETUPVAL                         R7 2
       72 GETTABLEKS                       R6 R7 K5 ["Enums"]
       74 GETTABLEKS                       R5 R6 K6 ["IconName"]
       76 GETTABLEKS                       R4 R5 K13 ["TrashCan"]
       78 SETTABLEKS                       R4 R3 K1 ["icon"]
       80 GETUPVAL                         R5 3
       81 GETTABLEKS                       R4 R5 K14 ["DeleteThread"]
       83 SETTABLEKS                       R4 R3 K2 ["text"]
       85 SETLIST                          R0 R1 3 [1]
       87 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R0 K0 ["thread"]
        6 GETTABLEKS                       R4 R3 K1 ["threadId"]
        8 GETTABLEKS                       R5 R3 K2 ["isPinned"]
       10 GETUPVAL                         R7 2
       11 GETTABLEKS                       R6 R7 K3 ["useState"]
       13 LOADB                            R7 0
       14 CALL                             R6 1 2
       15 GETUPVAL                         R9 2
       16 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R7
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R10 0 3
       26 MOVE                             R11 R4
       27 MOVE                             R12 R1
       28 MOVE                             R13 R2
       29 SETLIST                          R10 R11 3 [1]
       31 CALL                             R8 2 1
       32 GETUPVAL                         R10 2
       33 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       35 NEWCLOSURE                       R10 P1
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R11 0 1
       39 GETTABLEKS                       R12 R0 K5 ["setIsOpen"]
       41 SETLIST                          R11 R12 1 [1]
       43 CALL                             R9 2 1
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R10 R11 K6 ["useMemo"]
       47 DUPCLOSURE                       R11 K7 [PROTO_4]
       48 CAPTURE                          UPVAL U4
       49 NEWTABLE                         R12 0 1
       51 GETUPVAL                         R14 4
       52 GETTABLEKS                       R13 R14 K8 ["locale"]
       54 SETLIST                          R12 R13 1 [1]
       56 CALL                             R10 2 1
       57 GETUPVAL                         R12 2
       58 GETTABLEKS                       R11 R12 K6 ["useMemo"]
       60 NEWCLOSURE                       R12 P3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R10
       65 NEWTABLE                         R13 0 2
       67 MOVE                             R14 R5
       68 MOVE                             R15 R10
       69 SETLIST                          R13 R14 2 [1]
       71 CALL                             R11 2 1
       72 GETUPVAL                         R12 6
       73 GETUPVAL                         R13 7
       74 DUPTABLE                         R14 K18 [{"isOpen", "items", "size", "align", "onPressedOutside", "onActivated", "width", "LayoutOrder", "testId"}]
       75 GETTABLEKS                       R15 R0 K9 ["isOpen"]
       77 SETTABLEKS                       R15 R14 K9 ["isOpen"]
       79 SETTABLEKS                       R11 R14 K10 ["items"]
       81 GETUPVAL                         R18 5
       82 GETTABLEKS                       R17 R18 K19 ["Enums"]
       84 GETTABLEKS                       R16 R17 K20 ["InputSize"]
       86 GETTABLEKS                       R15 R16 K21 ["Small"]
       88 SETTABLEKS                       R15 R14 K11 ["size"]
       90 GETUPVAL                         R18 5
       91 GETTABLEKS                       R17 R18 K19 ["Enums"]
       93 GETTABLEKS                       R16 R17 K22 ["PopoverAlign"]
       95 GETTABLEKS                       R15 R16 K23 ["End"]
       97 SETTABLEKS                       R15 R14 K12 ["align"]
       99 SETTABLEKS                       R9 R14 K13 ["onPressedOutside"]
      101 SETTABLEKS                       R8 R14 K14 ["onActivated"]
      103 GETUPVAL                         R15 8
      104 SETTABLEKS                       R15 R14 K15 ["width"]
      106 GETTABLEKS                       R15 R0 K16 ["LayoutOrder"]
      108 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      110 GETUPVAL                         R17 9
      111 GETTABLEKS                       R16 R17 K24 ["ThreadOptionsMenu"]
      113 GETTABLEKS                       R15 R16 K25 ["Container"]
      115 SETTABLEKS                       R15 R14 K17 ["testId"]
      117 GETUPVAL                         R16 10
      118 GETTABLEKS                       R15 R16 K26 ["assign"]
      120 DUPTABLE                         R16 K28 [{"RenameThreadDialog"}]
      121 MOVE                             R17 R6
      122 JUMPIFNOT                        R17 ; [+18]
      123 GETUPVAL                         R17 6
      124 GETUPVAL                         R18 11
      125 DUPTABLE                         R19 K30 [{"threadId", "title", "setIsOpen"}]
      126 GETTABLEKS                       R21 R0 K0 ["thread"]
      128 GETTABLEKS                       R20 R21 K1 ["threadId"]
      130 SETTABLEKS                       R20 R19 K1 ["threadId"]
      132 GETTABLEKS                       R21 R0 K0 ["thread"]
      134 GETTABLEKS                       R20 R21 K29 ["title"]
      136 SETTABLEKS                       R20 R19 K29 ["title"]
      138 SETTABLEKS                       R7 R19 K5 ["setIsOpen"]
      140 CALL                             R17 2 1
      141 SETTABLEKS                       R17 R16 K27 ["RenameThreadDialog"]
      143 GETTABLEKS                       R17 R0 K31 ["children"]
      145 CALL                             R15 2 -1
      146 CALL                             R12 -1 -1
      147 RETURN                           R12 -1

PROTO_7:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+3]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["isOpen"]
        5 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["isOpen"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 1
       14 GETTABLEKS                       R6 R0 K1 ["isOpen"]
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 0
       19 JUMPIF                           R1 ; [+3]
       20 GETTABLEKS                       R3 R0 K3 ["children"]
       22 RETURN                           R3 1
       23 GETUPVAL                         R3 1
       24 GETUPVAL                         R4 2
       25 DUPTABLE                         R5 K7 [{"thread", "isOpen", "setIsOpen", "LayoutOrder"}]
       26 GETTABLEKS                       R6 R0 K4 ["thread"]
       28 SETTABLEKS                       R6 R5 K4 ["thread"]
       30 GETTABLEKS                       R6 R0 K1 ["isOpen"]
       32 SETTABLEKS                       R6 R5 K1 ["isOpen"]
       34 GETTABLEKS                       R6 R0 K5 ["setIsOpen"]
       36 SETTABLEKS                       R6 R5 K5 ["setIsOpen"]
       38 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       40 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       42 GETTABLEKS                       R6 R0 K3 ["children"]
       44 CALL                             R3 3 -1
       45 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["ThreadsWindow"]
       34 GETTABLEKS                       R5 R6 K12 ["RenameThreadDialog"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K14 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Resources"]
       48 GETTABLEKS                       R8 R9 K16 ["Localization"]
       50 GETTABLEKS                       R7 R8 K17 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K18 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K19 ["Hooks"]
       62 GETTABLEKS                       R9 R10 K20 ["useEditThread"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K19 ["Hooks"]
       69 GETTABLEKS                       R10 R11 K21 ["useRemoveThread"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R2 K22 ["Menu"]
       74 GETTABLEKS                       R11 R3 K23 ["createElement"]
       76 GETIMPORT                        R12 K26 [UDim.new]
       78 LOADN                            R13 0
       79 LOADN                            R14 200
       80 CALL                             R12 2 1
       81 DUPTABLE                         R13 K31 [{"Pin", "Unpin", "Rename", "Delete"}]
       82 LOADK                            R14 K32 ["pin"]
       83 SETTABLEKS                       R14 R13 K27 ["Pin"]
       85 LOADK                            R14 K33 ["unpin"]
       86 SETTABLEKS                       R14 R13 K28 ["Unpin"]
       88 LOADK                            R14 K34 ["rename"]
       89 SETTABLEKS                       R14 R13 K29 ["Rename"]
       91 LOADK                            R14 K35 ["delete"]
       92 SETTABLEKS                       R14 R13 K30 ["Delete"]
       94 DUPCLOSURE                       R14 K36 [PROTO_6]
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R4
      107 DUPCLOSURE                       R15 K37 [PROTO_9]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R14
      111 RETURN                           R15 1
