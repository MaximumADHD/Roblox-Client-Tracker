PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R1 K1 ["EventLogger"]
        6 GETTABLEKS                       R2 R3 K2 ["logThreadPinnedChanged"]
        8 DUPTABLE                         R3 K6 [{"conversationId", "threadId", "isPinned"}]
        9 GETUPVAL                         R4 1
       10 SETTABLEKS                       R4 R3 K3 ["conversationId"]
       12 GETUPVAL                         R4 2
       13 SETTABLEKS                       R4 R3 K4 ["threadId"]
       15 SETTABLEKS                       R0 R3 K5 ["isPinned"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isPinned"]
        3 GETTABLEKS                       R1 R0 K0 ["isPinned"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["get"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R4 R2 K2 ["EventLogger"]
       11 GETTABLEKS                       R3 R4 K3 ["logThreadPinnedChanged"]
       13 DUPTABLE                         R4 K6 [{"conversationId", "threadId", "isPinned"}]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K4 ["conversationId"]
       17 GETUPVAL                         R5 2
       18 SETTABLEKS                       R5 R4 K5 ["threadId"]
       20 SETTABLEKS                       R1 R4 K0 ["isPinned"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isPinned"]
        3 GETTABLEKS                       R1 R0 K0 ["isPinned"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["get"]
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R4 R2 K2 ["EventLogger"]
       11 GETTABLEKS                       R3 R4 K3 ["logThreadPinnedChanged"]
       13 DUPTABLE                         R4 K6 [{"conversationId", "threadId", "isPinned"}]
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K4 ["conversationId"]
       17 GETUPVAL                         R5 2
       18 SETTABLEKS                       R5 R4 K5 ["threadId"]
       20 SETTABLEKS                       R1 R4 K0 ["isPinned"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETUPVAL                         R3 3
        5 GETTABLEKS                       R2 R3 K0 ["Pin"]
        7 JUMPIFNOTEQ                      R0 R2 ; [+9]
        9 GETUPVAL                         R2 4
       10 GETUPVAL                         R3 2
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CALL                             R2 2 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R2 R3 K1 ["Unpin"]
       20 JUMPIFNOTEQ                      R0 R2 ; [+9]
       22 GETUPVAL                         R2 4
       23 GETUPVAL                         R3 2
       24 NEWCLOSURE                       R4 P2
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CALL                             R2 2 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R3 3
       31 GETTABLEKS                       R2 R3 K2 ["Rename"]
       33 JUMPIFNOTEQ                      R0 R2 ; [+5]
       35 GETUPVAL                         R2 5
       36 LOADB                            R3 1
       37 CALL                             R2 1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R3 3
       40 GETTABLEKS                       R2 R3 K3 ["Delete"]
       42 JUMPIFNOTEQ                      R0 R2 ; [+4]
       44 GETUPVAL                         R2 6
       45 GETUPVAL                         R3 2
       46 CALL                             R2 1 0
       47 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setIsOpen"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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
       13 GETTABLEKS                       R5 R0 K3 ["thread"]
       15 GETTABLEKS                       R6 R5 K4 ["threadId"]
       17 GETTABLEKS                       R7 R5 K5 ["isPinned"]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R8 R9 K6 ["useState"]
       22 LOADB                            R9 0
       23 CALL                             R8 1 2
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R10 R11 K7 ["useCallback"]
       27 NEWCLOSURE                       R11 P0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R6
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R9
       34 CAPTURE                          VAL R4
       35 NEWTABLE                         R12 0 4
       37 MOVE                             R13 R6
       38 MOVE                             R14 R3
       39 MOVE                             R15 R4
       40 MOVE                             R16 R2
       41 SETLIST                          R12 R13 4 [1]
       43 CALL                             R10 2 1
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R11 R12 K7 ["useCallback"]
       47 NEWCLOSURE                       R12 P1
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R13 0 1
       51 GETTABLEKS                       R14 R0 K8 ["setIsOpen"]
       53 SETLIST                          R13 R14 1 [1]
       55 CALL                             R11 2 1
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R12 R13 K9 ["useMemo"]
       59 DUPCLOSURE                       R13 K10 [PROTO_5]
       60 CAPTURE                          UPVAL U6
       61 NEWTABLE                         R14 0 1
       63 GETUPVAL                         R16 6
       64 GETTABLEKS                       R15 R16 K11 ["locale"]
       66 SETLIST                          R14 R15 1 [1]
       68 CALL                             R12 2 1
       69 GETUPVAL                         R14 0
       70 GETTABLEKS                       R13 R14 K9 ["useMemo"]
       72 NEWCLOSURE                       R14 P3
       73 CAPTURE                          VAL R7
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          VAL R12
       77 NEWTABLE                         R15 0 2
       79 MOVE                             R16 R7
       80 MOVE                             R17 R12
       81 SETLIST                          R15 R16 2 [1]
       83 CALL                             R13 2 1
       84 GETUPVAL                         R14 8
       85 GETUPVAL                         R15 9
       86 DUPTABLE                         R16 K21 [{"isOpen", "items", "size", "align", "onPressedOutside", "onActivated", "width", "LayoutOrder", "testId"}]
       87 GETTABLEKS                       R17 R0 K12 ["isOpen"]
       89 SETTABLEKS                       R17 R16 K12 ["isOpen"]
       91 SETTABLEKS                       R13 R16 K13 ["items"]
       93 GETUPVAL                         R20 7
       94 GETTABLEKS                       R19 R20 K22 ["Enums"]
       96 GETTABLEKS                       R18 R19 K23 ["InputSize"]
       98 GETTABLEKS                       R17 R18 K24 ["Small"]
      100 SETTABLEKS                       R17 R16 K14 ["size"]
      102 GETUPVAL                         R20 7
      103 GETTABLEKS                       R19 R20 K22 ["Enums"]
      105 GETTABLEKS                       R18 R19 K25 ["PopoverAlign"]
      107 GETTABLEKS                       R17 R18 K26 ["End"]
      109 SETTABLEKS                       R17 R16 K15 ["align"]
      111 SETTABLEKS                       R11 R16 K16 ["onPressedOutside"]
      113 SETTABLEKS                       R10 R16 K17 ["onActivated"]
      115 GETUPVAL                         R17 10
      116 SETTABLEKS                       R17 R16 K18 ["width"]
      118 GETTABLEKS                       R17 R0 K19 ["LayoutOrder"]
      120 SETTABLEKS                       R17 R16 K19 ["LayoutOrder"]
      122 GETUPVAL                         R19 11
      123 GETTABLEKS                       R18 R19 K27 ["ThreadOptionsMenu"]
      125 GETTABLEKS                       R17 R18 K28 ["Container"]
      127 SETTABLEKS                       R17 R16 K20 ["testId"]
      129 GETUPVAL                         R18 12
      130 GETTABLEKS                       R17 R18 K29 ["assign"]
      132 DUPTABLE                         R18 K31 [{"RenameThreadDialog"}]
      133 MOVE                             R19 R8
      134 JUMPIFNOT                        R19 ; [+18]
      135 GETUPVAL                         R19 8
      136 GETUPVAL                         R20 13
      137 DUPTABLE                         R21 K33 [{"threadId", "title", "setIsOpen"}]
      138 GETTABLEKS                       R23 R0 K3 ["thread"]
      140 GETTABLEKS                       R22 R23 K4 ["threadId"]
      142 SETTABLEKS                       R22 R21 K4 ["threadId"]
      144 GETTABLEKS                       R23 R0 K3 ["thread"]
      146 GETTABLEKS                       R22 R23 K32 ["title"]
      148 SETTABLEKS                       R22 R21 K32 ["title"]
      150 SETTABLEKS                       R9 R21 K8 ["setIsOpen"]
      152 CALL                             R19 2 1
      153 SETTABLEKS                       R19 R18 K30 ["RenameThreadDialog"]
      155 GETTABLEKS                       R19 R0 K34 ["children"]
      157 CALL                             R17 2 -1
      158 CALL                             R14 -1 -1
      159 RETURN                           R14 -1

PROTO_8:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+3]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["isOpen"]
        5 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
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
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["ThreadsWindow"]
       41 GETTABLEKS                       R6 R7 K14 ["RenameThreadDialog"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K12 ["Components"]
       48 GETTABLEKS                       R8 R9 K15 ["Contexts"]
       50 GETTABLEKS                       R7 R8 K16 ["SessionIdContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K17 ["Util"]
       57 GETTABLEKS                       R8 R9 K18 ["TestIds"]
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
       78 GETTABLEKS                       R11 R12 K24 ["useEditThread"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R13 R0 K23 ["Hooks"]
       85 GETTABLEKS                       R12 R13 K25 ["useRemoveThread"]
       87 CALL                             R11 1 1
       88 GETTABLEKS                       R12 R3 K26 ["Menu"]
       90 GETTABLEKS                       R13 R4 K27 ["createElement"]
       92 GETIMPORT                        R14 K30 [UDim.new]
       94 LOADN                            R15 0
       95 LOADN                            R16 200
       96 CALL                             R14 2 1
       97 DUPTABLE                         R15 K35 [{"Pin", "Unpin", "Rename", "Delete"}]
       98 LOADK                            R16 K36 ["pin"]
       99 SETTABLEKS                       R16 R15 K31 ["Pin"]
      101 LOADK                            R16 K37 ["unpin"]
      102 SETTABLEKS                       R16 R15 K32 ["Unpin"]
      104 LOADK                            R16 K38 ["rename"]
      105 SETTABLEKS                       R16 R15 K33 ["Rename"]
      107 LOADK                            R16 K39 ["delete"]
      108 SETTABLEKS                       R16 R15 K34 ["Delete"]
      110 DUPCLOSURE                       R16 K40 [PROTO_7]
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R5
      125 DUPCLOSURE                       R17 K41 [PROTO_10]
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R16
      129 RETURN                           R17 1
