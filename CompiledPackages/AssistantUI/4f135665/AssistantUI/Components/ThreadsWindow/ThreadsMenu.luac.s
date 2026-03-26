PROTO_0:
        0 DUPTABLE                         R0 K2 [{"Pinned", "ThreadHistory"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["ThreadsMenu"]
        3 LOADK                            R4 K0 ["Pinned"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Pinned"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["ThreadsMenu"]
       11 LOADK                            R4 K1 ["ThreadHistory"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["ThreadHistory"]
       17 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["updatedAt"]
        2 GETTABLEKS                       R3 R1 K0 ["updatedAt"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["updatedAt"]
        8 GETTABLEKS                       R4 R1 K0 ["updatedAt"]
       10 JUMPIFLT                         R4 R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K1 ["title"]
       17 GETTABLEKS                       R3 R1 K1 ["title"]
       19 JUMPIFEQ                         R2 R3 ; [+10]
       21 GETTABLEKS                       R3 R0 K2 ["threadId"]
       23 GETTABLEKS                       R4 R1 K2 ["threadId"]
       25 JUMPIFLT                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1
       30 GETTABLEKS                       R3 R0 K2 ["threadId"]
       32 GETTABLEKS                       R4 R1 K2 ["threadId"]
       34 JUMPIFLT                         R3 R4 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 DUPTABLE                         R0 K2 [{"title", "threads"}]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K3 ["Pinned"]
        9 SETTABLEKS                       R1 R0 K0 ["title"]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K1 ["threads"]
       15 DUPTABLE                         R1 K2 [{"title", "threads"}]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K4 ["ThreadHistory"]
       19 SETTABLEKS                       R2 R1 K0 ["title"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K1 ["threads"]
       25 GETUPVAL                         R3 2
       26 CALL                             R3 0 1
       27 JUMPIFNOT                        R3 ; [+4]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K1 ["threads"]
       31 JUMP                             ; [+1]
       32 GETUPVAL                         R2 0
       33 MOVE                             R3 R2
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 FORGPREP                         R3
       37 GETUPVAL                         R9 3
       38 GETTABLEKS                       R8 R9 K5 ["getContentMetadata"]
       40 GETTABLEKS                       R9 R7 K6 ["threadId"]
       42 CALL                             R8 1 1
       43 GETTABLEKS                       R9 R8 K7 ["type"]
       45 GETUPVAL                         R11 4
       46 GETTABLEKS                       R10 R11 K8 ["Thread"]
       48 JUMPIFNOTEQ                      R9 R10 ; [+4]
       50 GETTABLEKS                       R9 R8 K9 ["isNewThread"]
       52 JUMPIF                           R9 ; [+20]
       53 GETTABLEKS                       R9 R7 K10 ["isPinned"]
       55 JUMPIFNOT                        R9 ; [+9]
       56 GETTABLEKS                       R10 R0 K1 ["threads"]
       58 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       60 MOVE                             R11 R7
       61 GETIMPORT                        R9 K13 [table.insert]
       63 CALL                             R9 2 0
       64 JUMP                             ; [+8]
       65 GETTABLEKS                       R10 R1 K1 ["threads"]
       67 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       69 MOVE                             R11 R7
       70 GETIMPORT                        R9 K13 [table.insert]
       72 CALL                             R9 2 0
       73 FORGLOOP                         R3 2 ; [-37]
       75 NEWTABLE                         R3 0 2
       77 MOVE                             R6 R0
       78 MOVE                             R7 R1
       79 SETLIST                          R3 R6 2 [1]
       81 LOADNIL                          R4
       82 LOADNIL                          R5
       83 FORGPREP                         R3
       84 GETIMPORT                        R8 K15 [table.sort]
       86 GETTABLEKS                       R9 R7 K1 ["threads"]
       88 DUPCLOSURE                       R10 K16 [PROTO_1]
       89 CALL                             R8 2 0
       90 FORGLOOP                         R3 2 ; [-7]
       92 NEWTABLE                         R3 0 2
       94 MOVE                             R4 R0
       95 MOVE                             R5 R1
       96 SETLIST                          R3 R4 2 [1]
       98 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 NEWTABLE                         R4 0 2
       24 MOVE                             R5 R0
       25 MOVE                             R6 R1
       26 SETLIST                          R4 R5 2 [1]
       28 CALL                             R2 2 1
       29 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Enums"]
        3 GETTABLEKS                       R1 R2 K1 ["ControlState"]
        5 GETUPVAL                         R2 1
        6 LOADB                            R3 0
        7 GETTABLEKS                       R4 R1 K2 ["Initialize"]
        9 JUMPIFEQ                         R0 R4 ; [+12]
       11 LOADB                            R3 0
       12 GETTABLEKS                       R4 R1 K3 ["Default"]
       14 JUMPIFEQ                         R0 R4 ; [+7]
       16 GETTABLEKS                       R4 R1 K4 ["Disabled"]
       18 JUMPIFNOTEQ                      R0 R4 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_5]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K0 ["useState"]
       17 LOADB                            R5 0
       18 CALL                             R4 1 2
       19 GETTABLEKS                       R8 R0 K2 ["isSelected"]
       21 NOT                              R7 R8
       22 NOT                              R6 R7
       23 GETTABLEKS                       R9 R0 K3 ["isHeader"]
       25 NOT                              R8 R9
       26 NOT                              R7 R8
       27 GETUPVAL                         R8 2
       28 CALL                             R8 0 1
       29 GETUPVAL                         R9 3
       30 GETUPVAL                         R10 4
       31 DUPTABLE                         R11 K6 [{"tag", "LayoutOrder"}]
       32 LOADK                            R12 K7 ["size-full-0 auto-y padding-x-small"]
       33 SETTABLEKS                       R12 R11 K4 ["tag"]
       35 GETTABLEKS                       R12 R0 K5 ["LayoutOrder"]
       37 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       39 DUPTABLE                         R12 K9 [{"Background"}]
       40 GETUPVAL                         R13 3
       41 GETUPVAL                         R14 4
       42 DUPTABLE                         R15 K13 [{"tag", "onActivated", "onStateChanged", "testId"}]
       43 NEWTABLE                         R16 2 0
       45 LOADB                            R17 1
       46 SETTABLEKS                       R17 R16 K14 ["row size-full-1000 auto-y padding-x-medium padding-y-small radius-medium gap-medium align-y-center"]
       48 SETTABLEKS                       R6 R16 K15 ["bg-action-soft-emphasis"]
       50 SETTABLEKS                       R16 R15 K4 ["tag"]
       52 GETTABLEKS                       R16 R0 K10 ["onActivated"]
       54 SETTABLEKS                       R16 R15 K10 ["onActivated"]
       56 GETTABLEKS                       R17 R0 K16 ["thread"]
       58 JUMPIFNOT                        R17 ; [+2]
       59 MOVE                             R16 R3
       60 JUMP                             ; [+1]
       61 LOADNIL                          R16
       62 SETTABLEKS                       R16 R15 K11 ["onStateChanged"]
       64 GETTABLEKS                       R16 R0 K12 ["testId"]
       66 SETTABLEKS                       R16 R15 K12 ["testId"]
       68 DUPTABLE                         R16 K20 [{"LeadingIcon", "Text", "ThreadOptionsMenu"}]
       69 GETTABLEKS                       R17 R0 K21 ["leadingIcon"]
       71 JUMPIFNOT                        R17 ; [+21]
       72 GETUPVAL                         R17 3
       73 GETUPVAL                         R18 5
       74 DUPTABLE                         R19 K24 [{"name", "size", "LayoutOrder"}]
       75 GETTABLEKS                       R20 R0 K21 ["leadingIcon"]
       77 SETTABLEKS                       R20 R19 K22 ["name"]
       79 GETUPVAL                         R23 1
       80 GETTABLEKS                       R22 R23 K25 ["Enums"]
       82 GETTABLEKS                       R21 R22 K26 ["IconSize"]
       84 GETTABLEKS                       R20 R21 K27 ["Medium"]
       86 SETTABLEKS                       R20 R19 K23 ["size"]
       88 MOVE                             R20 R8
       89 CALL                             R20 0 1
       90 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
       92 CALL                             R17 2 1
       93 SETTABLEKS                       R17 R16 K17 ["LeadingIcon"]
       95 GETUPVAL                         R17 3
       96 GETUPVAL                         R18 6
       97 DUPTABLE                         R19 K28 [{"tag", "Text", "LayoutOrder"}]
       98 NEWTABLE                         R20 4 0
      100 LOADB                            R21 1
      101 SETTABLEKS                       R21 R20 K29 ["fill auto-y content-emphasis text-align-x-left text-truncate-split"]
      103 NOT                              R21 R7
      104 SETTABLEKS                       R21 R20 K30 ["text-body-medium"]
      106 SETTABLEKS                       R7 R20 K31 ["text-caption-medium"]
      108 SETTABLEKS                       R20 R19 K4 ["tag"]
      110 GETTABLEKS                       R20 R0 K32 ["text"]
      112 SETTABLEKS                       R20 R19 K18 ["Text"]
      114 MOVE                             R20 R8
      115 CALL                             R20 0 1
      116 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      118 CALL                             R17 2 1
      119 SETTABLEKS                       R17 R16 K18 ["Text"]
      121 GETTABLEKS                       R17 R0 K16 ["thread"]
      123 JUMPIFNOT                        R17 ; [+71]
      124 GETUPVAL                         R17 3
      125 GETUPVAL                         R18 7
      126 DUPTABLE                         R19 K35 [{"thread", "isOpen", "setIsOpen", "LayoutOrder"}]
      127 GETTABLEKS                       R20 R0 K16 ["thread"]
      129 SETTABLEKS                       R20 R19 K16 ["thread"]
      131 SETTABLEKS                       R4 R19 K33 ["isOpen"]
      133 SETTABLEKS                       R5 R19 K34 ["setIsOpen"]
      135 MOVE                             R20 R8
      136 CALL                             R20 0 1
      137 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      139 DUPTABLE                         R20 K37 [{"OptionsButton"}]
      140 JUMPIF                           R1 ; [+2]
      141 MOVE                             R21 R4
      142 JUMPIFNOT                        R21 ; [+49]
      143 GETUPVAL                         R21 3
      144 GETUPVAL                         R22 8
      145 DUPTABLE                         R23 K41 [{"icon", "size", "variant", "isCircular", "onActivated", "LayoutOrder", "testId"}]
      146 GETUPVAL                         R27 1
      147 GETTABLEKS                       R26 R27 K25 ["Enums"]
      149 GETTABLEKS                       R25 R26 K42 ["IconName"]
      151 GETTABLEKS                       R24 R25 K43 ["ThreeDotsVertical"]
      153 SETTABLEKS                       R24 R23 K38 ["icon"]
      155 GETUPVAL                         R27 1
      156 GETTABLEKS                       R26 R27 K25 ["Enums"]
      158 GETTABLEKS                       R25 R26 K44 ["InputSize"]
      160 GETTABLEKS                       R24 R25 K45 ["XSmall"]
      162 SETTABLEKS                       R24 R23 K23 ["size"]
      164 GETUPVAL                         R27 1
      165 GETTABLEKS                       R26 R27 K25 ["Enums"]
      167 GETTABLEKS                       R25 R26 K46 ["ButtonVariant"]
      169 GETTABLEKS                       R24 R25 K47 ["Utility"]
      171 SETTABLEKS                       R24 R23 K39 ["variant"]
      173 LOADB                            R24 1
      174 SETTABLEKS                       R24 R23 K40 ["isCircular"]
      176 NEWCLOSURE                       R24 P1
      177 CAPTURE                          VAL R5
      178 SETTABLEKS                       R24 R23 K10 ["onActivated"]
      180 MOVE                             R24 R8
      181 CALL                             R24 0 1
      182 SETTABLEKS                       R24 R23 K5 ["LayoutOrder"]
      184 GETUPVAL                         R26 9
      185 GETTABLEKS                       R25 R26 K48 ["ThreadEntry"]
      187 GETTABLEKS                       R24 R25 K36 ["OptionsButton"]
      189 SETTABLEKS                       R24 R23 K12 ["testId"]
      191 CALL                             R21 2 1
      192 SETTABLEKS                       R21 R20 K36 ["OptionsButton"]
      194 CALL                             R17 3 1
      195 SETTABLEKS                       R17 R16 K19 ["ThreadOptionsMenu"]
      197 CALL                             R13 3 1
      198 SETTABLEKS                       R13 R12 K8 ["Background"]
      200 CALL                             R9 3 -1
      201 RETURN                           R9 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["FocusInput"]
        7 NAMECALL                         R2 R2 K1 ["Fire"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K2 ["setThreadsMenuOpen"]
       13 LOADB                            R3 0
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K0 ["ThreadSwitchSource"]
        7 GETTABLEKS                       R3 R4 K1 ["ThreadsMenuNew"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R0 K1 [{"NewThread"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["ThreadsMenu"]
        3 LOADK                            R4 K0 ["NewThread"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["NewThread"]
        9 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteContentSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["ThreadSwitchSource"]
        5 GETTABLEKS                       R2 R3 K1 ["ThreadsMenu"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["Y"]
        2 LOADN                            R4 2
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K1 ["Padding"]
        6 GETTABLEKS                       R5 R6 K2 ["Small"]
        8 MUL                              R3 R4 R5
        9 ADD                              R1 R2 R3
       10 GETIMPORT                        R2 K5 [UDim2.new]
       12 LOADN                            R3 1
       13 LOADN                            R4 0
       14 LOADN                            R5 0
       15 FASTCALL2K                       MATH_MIN R1 K6 ; [+5]
       17 MOVE                             R7 R1
       18 LOADK                            R8 K6 [300]
       19 GETIMPORT                        R6 K9 [math.min]
       21 CALL                             R6 2 1
       22 CALL                             R2 4 -1
       23 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["threadId"]
       11 GETUPVAL                         R4 3
       12 CALL                             R4 0 1
       13 GETUPVAL                         R7 4
       14 GETTABLEKS                       R6 R7 K3 ["Hooks"]
       16 GETTABLEKS                       R5 R6 K4 ["useTokens"]
       18 CALL                             R5 0 1
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K5 ["useCallback"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R8 0 2
       28 MOVE                             R9 R4
       29 GETTABLEKS                       R10 R0 K6 ["setThreadsMenuOpen"]
       31 SETLIST                          R8 R9 2 [1]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K5 ["useCallback"]
       37 NEWCLOSURE                       R8 P1
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R6
       40 CAPTURE                          UPVAL U7
       41 NEWTABLE                         R9 0 1
       43 MOVE                             R10 R6
       44 SETLIST                          R9 R10 1 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R9 1
       48 GETTABLEKS                       R8 R9 K7 ["useMemo"]
       50 DUPCLOSURE                       R9 K8 [PROTO_10]
       51 CAPTURE                          UPVAL U8
       52 NEWTABLE                         R10 0 1
       54 GETUPVAL                         R12 8
       55 GETTABLEKS                       R11 R12 K9 ["locale"]
       57 SETLIST                          R10 R11 1 [1]
       59 CALL                             R8 2 1
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R9 R10 K10 ["useRef"]
       63 LOADNIL                          R10
       64 CALL                             R9 1 1
       65 GETUPVAL                         R11 1
       66 GETTABLEKS                       R10 R11 K11 ["useBinding"]
       68 GETIMPORT                        R11 K14 [Vector2.new]
       70 CALL                             R11 0 -1
       71 CALL                             R10 -1 2
       72 GETUPVAL                         R13 1
       73 GETTABLEKS                       R12 R13 K5 ["useCallback"]
       75 NEWCLOSURE                       R13 P3
       76 CAPTURE                          VAL R11
       77 NEWTABLE                         R14 0 1
       79 MOVE                             R15 R11
       80 SETLIST                          R14 R15 1 [1]
       82 CALL                             R12 2 1
       83 GETUPVAL                         R13 9
       84 CALL                             R13 0 1
       85 DUPTABLE                         R14 K16 [{"AddThreadButton"}]
       86 GETUPVAL                         R15 10
       87 GETUPVAL                         R16 11
       88 DUPTABLE                         R17 K23 [{"text", "leadingIcon", "isSelected", "onActivated", "LayoutOrder", "testId"}]
       89 GETTABLEKS                       R18 R8 K24 ["NewThread"]
       91 SETTABLEKS                       R18 R17 K17 ["text"]
       93 GETUPVAL                         R21 4
       94 GETTABLEKS                       R20 R21 K25 ["Enums"]
       96 GETTABLEKS                       R19 R20 K26 ["IconName"]
       98 GETTABLEKS                       R18 R19 K27 ["PencilSquare"]
      100 SETTABLEKS                       R18 R17 K18 ["leadingIcon"]
      102 LOADB                            R18 0
      103 SETTABLEKS                       R18 R17 K19 ["isSelected"]
      105 SETTABLEKS                       R7 R17 K20 ["onActivated"]
      107 MOVE                             R18 R13
      108 CALL                             R18 0 1
      109 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      111 GETUPVAL                         R20 12
      112 GETTABLEKS                       R19 R20 K28 ["ThreadsMenu"]
      114 GETTABLEKS                       R18 R19 K15 ["AddThreadButton"]
      116 SETTABLEKS                       R18 R17 K22 ["testId"]
      118 CALL                             R15 2 1
      119 SETTABLEKS                       R15 R14 K15 ["AddThreadButton"]
      121 GETUPVAL                         R15 13
      122 MOVE                             R16 R1
      123 CALL                             R15 1 1
      124 NEWTABLE                         R16 0 0
      126 MOVE                             R17 R15
      127 LOADNIL                          R18
      128 LOADNIL                          R19
      129 FORGPREP                         R17
      130 GETTABLEKS                       R23 R21 K29 ["threads"]
      132 LENGTH                           R22 R23
      133 LOADN                            R23 0
      134 JUMPIFNOTLT                      R23 R22 ; [+92]
      136 GETIMPORT                        R22 K31 [next]
      138 MOVE                             R23 R16
      139 CALL                             R22 1 1
      140 JUMPIFNOTEQKNIL                  R22 ; [+20]
      142 GETUPVAL                         R22 10
      143 GETUPVAL                         R23 14
      144 DUPTABLE                         R24 K33 [{"tag", "LayoutOrder"}]
      145 LOADK                            R25 K34 ["size-full-0 auto-y padding-y-small"]
      146 SETTABLEKS                       R25 R24 K32 ["tag"]
      148 MOVE                             R25 R13
      149 CALL                             R25 0 1
      150 SETTABLEKS                       R25 R24 K21 ["LayoutOrder"]
      152 DUPTABLE                         R25 K36 [{"Divider"}]
      153 GETUPVAL                         R26 10
      154 GETUPVAL                         R27 15
      155 CALL                             R26 1 1
      156 SETTABLEKS                       R26 R25 K35 ["Divider"]
      158 CALL                             R22 3 1
      159 SETTABLEKS                       R22 R16 K35 ["Divider"]
      161 LOADK                            R23 K37 ["ThreadHeader_%*"]
      162 GETTABLEKS                       R25 R21 K38 ["title"]
      164 NAMECALL                         R23 R23 K39 ["format"]
      166 CALL                             R23 2 1
      167 MOVE                             R22 R23
      168 GETUPVAL                         R23 10
      169 GETUPVAL                         R24 11
      170 DUPTABLE                         R25 K41 [{"isHeader", "text", "LayoutOrder"}]
      171 LOADB                            R26 1
      172 SETTABLEKS                       R26 R25 K40 ["isHeader"]
      174 GETTABLEKS                       R26 R21 K38 ["title"]
      176 SETTABLEKS                       R26 R25 K17 ["text"]
      178 MOVE                             R26 R13
      179 CALL                             R26 0 1
      180 SETTABLEKS                       R26 R25 K21 ["LayoutOrder"]
      182 CALL                             R23 2 1
      183 SETTABLE                         R23 R16 R22
      184 GETTABLEKS                       R22 R21 K29 ["threads"]
      186 LOADNIL                          R23
      187 LOADNIL                          R24
      188 FORGPREP                         R22
      189 GETTABLEKS                       R27 R26 K2 ["threadId"]
      191 JUMPIFEQ                         R27 R3 ; [+2]
      193 LOADB                            R28 0 +1
      194 LOADB                            R28 1
      195 GETUPVAL                         R29 10
      196 GETUPVAL                         R30 11
      197 DUPTABLE                         R31 K43 [{"text", "thread", "isSelected", "onActivated", "LayoutOrder", "testId"}]
      198 GETTABLEKS                       R32 R26 K38 ["title"]
      200 SETTABLEKS                       R32 R31 K17 ["text"]
      202 SETTABLEKS                       R26 R31 K42 ["thread"]
      204 SETTABLEKS                       R28 R31 K19 ["isSelected"]
      206 NEWCLOSURE                       R32 P4
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R27
      209 CAPTURE                          UPVAL U7
      210 SETTABLEKS                       R32 R31 K20 ["onActivated"]
      212 MOVE                             R32 R13
      213 CALL                             R32 0 1
      214 SETTABLEKS                       R32 R31 K21 ["LayoutOrder"]
      216 GETUPVAL                         R34 12
      217 GETTABLEKS                       R33 R34 K28 ["ThreadsMenu"]
      219 GETTABLEKS                       R32 R33 K44 ["ExistingThreadButton"]
      221 SETTABLEKS                       R32 R31 K22 ["testId"]
      223 CALL                             R29 2 1
      224 SETTABLE                         R29 R16 R27
      225 FORGLOOP                         R22 2 ; [-37]
      227 FORGLOOP                         R17 2 ; [-98]
      229 GETUPVAL                         R18 16
      230 GETTABLEKS                       R17 R18 K45 ["assign"]
      232 DUPTABLE                         R18 K47 [{"UIListLayout"}]
      233 GETUPVAL                         R19 10
      234 LOADK                            R20 K46 ["UIListLayout"]
      235 NEWTABLE                         R21 4 0
      237 GETIMPORT                        R22 K51 [Enum.FillDirection.Vertical]
      239 SETTABLEKS                       R22 R21 K49 ["FillDirection"]
      241 GETIMPORT                        R22 K53 [Enum.SortOrder.LayoutOrder]
      243 SETTABLEKS                       R22 R21 K52 ["SortOrder"]
      245 GETIMPORT                        R22 K55 [UDim.new]
      247 LOADN                            R23 0
      248 GETTABLEKS                       R25 R5 K56 ["Gap"]
      250 GETTABLEKS                       R24 R25 K57 ["XXSmall"]
      252 CALL                             R22 2 1
      253 SETTABLEKS                       R22 R21 K58 ["Padding"]
      255 GETUPVAL                         R24 1
      256 GETTABLEKS                       R23 R24 K59 ["Change"]
      258 GETTABLEKS                       R22 R23 K60 ["AbsoluteContentSize"]
      260 SETTABLE                         R12 R21 R22
      261 CALL                             R19 2 1
      262 SETTABLEKS                       R19 R18 K46 ["UIListLayout"]
      264 MOVE                             R19 R14
      265 MOVE                             R20 R16
      266 CALL                             R17 3 1
      267 GETUPVAL                         R18 10
      268 GETUPVAL                         R19 14
      269 DUPTABLE                         R20 K61 [{"tag", "testId"}]
      270 LOADK                            R21 K62 ["size-full-0 auto-y padding-x-small"]
      271 SETTABLEKS                       R21 R20 K32 ["tag"]
      273 GETUPVAL                         R23 12
      274 GETTABLEKS                       R22 R23 K28 ["ThreadsMenu"]
      276 GETTABLEKS                       R21 R22 K63 ["Container"]
      278 SETTABLEKS                       R21 R20 K22 ["testId"]
      280 DUPTABLE                         R21 K65 [{"ScrollView"}]
      281 GETUPVAL                         R22 10
      282 GETUPVAL                         R23 17
      283 DUPTABLE                         R24 K69 [{"tag", "scroll", "Size", "scrollingFrameRef"}]
      284 LOADK                            R25 K70 ["col bg-surface-200 radius-large padding-y-small stroke-standard stroke-default"]
      285 SETTABLEKS                       R25 R24 K32 ["tag"]
      287 DUPTABLE                         R25 K74 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      288 GETIMPORT                        R26 K77 [Enum.AutomaticSize.Y]
      290 SETTABLEKS                       R26 R25 K71 ["AutomaticCanvasSize"]
      292 GETIMPORT                        R26 K80 [UDim2.fromScale]
      294 LOADN                            R27 0
      295 LOADN                            R28 0
      296 CALL                             R26 2 1
      297 SETTABLEKS                       R26 R25 K72 ["CanvasSize"]
      299 GETIMPORT                        R26 K81 [Enum.ScrollingDirection.Y]
      301 SETTABLEKS                       R26 R25 K73 ["ScrollingDirection"]
      303 SETTABLEKS                       R25 R24 K66 ["scroll"]
      305 NEWCLOSURE                       R27 P5
      306 CAPTURE                          VAL R5
      307 NAMECALL                         R25 R10 K82 ["map"]
      309 CALL                             R25 2 1
      310 SETTABLEKS                       R25 R24 K67 ["Size"]
      312 SETTABLEKS                       R9 R24 K68 ["scrollingFrameRef"]
      314 MOVE                             R25 R17
      315 CALL                             R22 3 1
      316 SETTABLEKS                       R22 R21 K64 ["ScrollView"]
      318 CALL                             R18 3 -1
      319 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentIdGenerator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Events"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K8 ["Parent"]
       30 GETTABLEKS                       R5 R6 K11 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K8 ["Parent"]
       37 GETTABLEKS                       R6 R7 K12 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K8 ["Parent"]
       44 GETTABLEKS                       R7 R8 K13 ["ReactUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K6 ["Util"]
       51 GETTABLEKS                       R8 R9 K14 ["TestIds"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R11 R0 K15 ["Components"]
       58 GETTABLEKS                       R10 R11 K16 ["Contexts"]
       60 GETTABLEKS                       R9 R10 K17 ["ThreadIdContext"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R12 R0 K15 ["Components"]
       67 GETTABLEKS                       R11 R12 K18 ["ThreadsWindow"]
       69 GETTABLEKS                       R10 R11 K19 ["ThreadOptionsMenu"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R13 R0 K20 ["Resources"]
       76 GETTABLEKS                       R12 R13 K21 ["Localization"]
       78 GETTABLEKS                       R11 R12 K22 ["Translator"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K23 ["Types"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R14 R0 K6 ["Util"]
       90 GETTABLEKS                       R13 R14 K24 ["createNewThread"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R15 R0 K25 ["Hooks"]
       97 GETTABLEKS                       R14 R15 K26 ["useConversation"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R16 R0 K25 ["Hooks"]
      104 GETTABLEKS                       R15 R16 K27 ["useSwitchThread"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R17 R0 K28 ["Flags"]
      111 GETTABLEKS                       R16 R17 K29 ["FFlagAssistantMultipleChatSupport"]
      113 CALL                             R15 1 1
      114 GETTABLEKS                       R16 R4 K30 ["Divider"]
      116 GETTABLEKS                       R17 R4 K31 ["Icon"]
      118 GETTABLEKS                       R18 R4 K32 ["IconButton"]
      120 GETTABLEKS                       R19 R4 K33 ["ScrollView"]
      122 GETTABLEKS                       R20 R4 K34 ["Text"]
      124 GETTABLEKS                       R21 R4 K35 ["View"]
      126 GETTABLEKS                       R22 R6 K36 ["createNextOrder"]
      128 GETTABLEKS                       R23 R5 K37 ["createElement"]
      130 GETTABLEKS                       R24 R1 K38 ["METADATA_TYPES"]
      132 DUPCLOSURE                       R25 K39 [PROTO_3]
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R24
      138 DUPCLOSURE                       R26 K40 [PROTO_7]
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R22
      142 CAPTURE                          VAL R23
      143 CAPTURE                          VAL R21
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R7
      149 DUPCLOSURE                       R27 K41 [PROTO_14]
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R5
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R23
      161 CAPTURE                          VAL R26
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R25
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R19
      168 RETURN                           R27 1
