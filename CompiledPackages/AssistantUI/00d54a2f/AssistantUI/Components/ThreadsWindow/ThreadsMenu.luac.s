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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["FocusInput"]
        6 NAMECALL                         R1 R1 K1 ["Fire"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["setThreadsMenuOpen"]
       12 LOADB                            R2 0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

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
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

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
       11 GETTABLEKS                       R4 R2 K3 ["setThreadId"]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K4 ["Hooks"]
       16 GETTABLEKS                       R5 R6 K5 ["useTokens"]
       18 CALL                             R5 0 1
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K6 ["useCallback"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R8 0 2
       28 MOVE                             R9 R4
       29 GETTABLEKS                       R10 R0 K7 ["setThreadsMenuOpen"]
       31 SETLIST                          R8 R9 2 [1]
       33 CALL                             R6 2 1
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R7 R8 K6 ["useCallback"]
       37 NEWCLOSURE                       R8 P1
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          VAL R6
       40 NEWTABLE                         R9 0 1
       42 MOVE                             R10 R6
       43 SETLIST                          R9 R10 1 [1]
       45 CALL                             R7 2 1
       46 GETUPVAL                         R9 1
       47 GETTABLEKS                       R8 R9 K8 ["useMemo"]
       49 DUPCLOSURE                       R9 K9 [PROTO_10]
       50 CAPTURE                          UPVAL U6
       51 NEWTABLE                         R10 0 1
       53 GETUPVAL                         R12 6
       54 GETTABLEKS                       R11 R12 K10 ["locale"]
       56 SETLIST                          R10 R11 1 [1]
       58 CALL                             R8 2 1
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R9 R10 K11 ["useRef"]
       62 LOADNIL                          R10
       63 CALL                             R9 1 1
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R10 R11 K12 ["useBinding"]
       67 GETIMPORT                        R11 K15 [Vector2.new]
       69 CALL                             R11 0 -1
       70 CALL                             R10 -1 2
       71 GETUPVAL                         R13 1
       72 GETTABLEKS                       R12 R13 K6 ["useCallback"]
       74 NEWCLOSURE                       R13 P3
       75 CAPTURE                          VAL R11
       76 NEWTABLE                         R14 0 1
       78 MOVE                             R15 R11
       79 SETLIST                          R14 R15 1 [1]
       81 CALL                             R12 2 1
       82 GETUPVAL                         R13 7
       83 CALL                             R13 0 1
       84 DUPTABLE                         R14 K17 [{"AddThreadButton"}]
       85 GETUPVAL                         R15 8
       86 GETUPVAL                         R16 9
       87 DUPTABLE                         R17 K24 [{"text", "leadingIcon", "isSelected", "onActivated", "LayoutOrder", "testId"}]
       88 GETTABLEKS                       R18 R8 K25 ["NewThread"]
       90 SETTABLEKS                       R18 R17 K18 ["text"]
       92 GETUPVAL                         R21 3
       93 GETTABLEKS                       R20 R21 K26 ["Enums"]
       95 GETTABLEKS                       R19 R20 K27 ["IconName"]
       97 GETTABLEKS                       R18 R19 K28 ["PencilSquare"]
       99 SETTABLEKS                       R18 R17 K19 ["leadingIcon"]
      101 LOADB                            R18 0
      102 SETTABLEKS                       R18 R17 K20 ["isSelected"]
      104 SETTABLEKS                       R7 R17 K21 ["onActivated"]
      106 MOVE                             R18 R13
      107 CALL                             R18 0 1
      108 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
      110 GETUPVAL                         R20 10
      111 GETTABLEKS                       R19 R20 K29 ["ThreadsMenu"]
      113 GETTABLEKS                       R18 R19 K16 ["AddThreadButton"]
      115 SETTABLEKS                       R18 R17 K23 ["testId"]
      117 CALL                             R15 2 1
      118 SETTABLEKS                       R15 R14 K16 ["AddThreadButton"]
      120 GETUPVAL                         R15 11
      121 MOVE                             R16 R1
      122 CALL                             R15 1 1
      123 NEWTABLE                         R16 0 0
      125 MOVE                             R17 R15
      126 LOADNIL                          R18
      127 LOADNIL                          R19
      128 FORGPREP                         R17
      129 GETTABLEKS                       R23 R21 K30 ["threads"]
      131 LENGTH                           R22 R23
      132 LOADN                            R23 0
      133 JUMPIFNOTLT                      R23 R22 ; [+91]
      135 GETIMPORT                        R22 K32 [next]
      137 MOVE                             R23 R16
      138 CALL                             R22 1 1
      139 JUMPIFNOTEQKNIL                  R22 ; [+20]
      141 GETUPVAL                         R22 8
      142 GETUPVAL                         R23 12
      143 DUPTABLE                         R24 K34 [{"tag", "LayoutOrder"}]
      144 LOADK                            R25 K35 ["size-full-0 auto-y padding-y-small"]
      145 SETTABLEKS                       R25 R24 K33 ["tag"]
      147 MOVE                             R25 R13
      148 CALL                             R25 0 1
      149 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      151 DUPTABLE                         R25 K37 [{"Divider"}]
      152 GETUPVAL                         R26 8
      153 GETUPVAL                         R27 13
      154 CALL                             R26 1 1
      155 SETTABLEKS                       R26 R25 K36 ["Divider"]
      157 CALL                             R22 3 1
      158 SETTABLEKS                       R22 R16 K36 ["Divider"]
      160 LOADK                            R23 K38 ["ThreadHeader_%*"]
      161 GETTABLEKS                       R25 R21 K39 ["title"]
      163 NAMECALL                         R23 R23 K40 ["format"]
      165 CALL                             R23 2 1
      166 MOVE                             R22 R23
      167 GETUPVAL                         R23 8
      168 GETUPVAL                         R24 9
      169 DUPTABLE                         R25 K42 [{"isHeader", "text", "LayoutOrder"}]
      170 LOADB                            R26 1
      171 SETTABLEKS                       R26 R25 K41 ["isHeader"]
      173 GETTABLEKS                       R26 R21 K39 ["title"]
      175 SETTABLEKS                       R26 R25 K18 ["text"]
      177 MOVE                             R26 R13
      178 CALL                             R26 0 1
      179 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      181 CALL                             R23 2 1
      182 SETTABLE                         R23 R16 R22
      183 GETTABLEKS                       R22 R21 K30 ["threads"]
      185 LOADNIL                          R23
      186 LOADNIL                          R24
      187 FORGPREP                         R22
      188 GETTABLEKS                       R27 R26 K2 ["threadId"]
      190 JUMPIFEQ                         R27 R3 ; [+2]
      192 LOADB                            R28 0 +1
      193 LOADB                            R28 1
      194 GETUPVAL                         R29 8
      195 GETUPVAL                         R30 9
      196 DUPTABLE                         R31 K44 [{"text", "thread", "isSelected", "onActivated", "LayoutOrder", "testId"}]
      197 GETTABLEKS                       R32 R26 K39 ["title"]
      199 SETTABLEKS                       R32 R31 K18 ["text"]
      201 SETTABLEKS                       R26 R31 K43 ["thread"]
      203 SETTABLEKS                       R28 R31 K20 ["isSelected"]
      205 NEWCLOSURE                       R32 P4
      206 CAPTURE                          VAL R6
      207 CAPTURE                          VAL R27
      208 SETTABLEKS                       R32 R31 K21 ["onActivated"]
      210 MOVE                             R32 R13
      211 CALL                             R32 0 1
      212 SETTABLEKS                       R32 R31 K22 ["LayoutOrder"]
      214 GETUPVAL                         R34 10
      215 GETTABLEKS                       R33 R34 K29 ["ThreadsMenu"]
      217 GETTABLEKS                       R32 R33 K45 ["ExistingThreadButton"]
      219 SETTABLEKS                       R32 R31 K23 ["testId"]
      221 CALL                             R29 2 1
      222 SETTABLE                         R29 R16 R27
      223 FORGLOOP                         R22 2 ; [-36]
      225 FORGLOOP                         R17 2 ; [-97]
      227 GETUPVAL                         R18 14
      228 GETTABLEKS                       R17 R18 K46 ["assign"]
      230 DUPTABLE                         R18 K48 [{"UIListLayout"}]
      231 GETUPVAL                         R19 8
      232 LOADK                            R20 K47 ["UIListLayout"]
      233 NEWTABLE                         R21 4 0
      235 GETIMPORT                        R22 K52 [Enum.FillDirection.Vertical]
      237 SETTABLEKS                       R22 R21 K50 ["FillDirection"]
      239 GETIMPORT                        R22 K54 [Enum.SortOrder.LayoutOrder]
      241 SETTABLEKS                       R22 R21 K53 ["SortOrder"]
      243 GETIMPORT                        R22 K56 [UDim.new]
      245 LOADN                            R23 0
      246 GETTABLEKS                       R25 R5 K57 ["Gap"]
      248 GETTABLEKS                       R24 R25 K58 ["XXSmall"]
      250 CALL                             R22 2 1
      251 SETTABLEKS                       R22 R21 K59 ["Padding"]
      253 GETUPVAL                         R24 1
      254 GETTABLEKS                       R23 R24 K60 ["Change"]
      256 GETTABLEKS                       R22 R23 K61 ["AbsoluteContentSize"]
      258 SETTABLE                         R12 R21 R22
      259 CALL                             R19 2 1
      260 SETTABLEKS                       R19 R18 K47 ["UIListLayout"]
      262 MOVE                             R19 R14
      263 MOVE                             R20 R16
      264 CALL                             R17 3 1
      265 GETUPVAL                         R18 8
      266 GETUPVAL                         R19 12
      267 DUPTABLE                         R20 K62 [{"tag", "testId"}]
      268 LOADK                            R21 K63 ["size-full-0 auto-y padding-x-small"]
      269 SETTABLEKS                       R21 R20 K33 ["tag"]
      271 GETUPVAL                         R23 10
      272 GETTABLEKS                       R22 R23 K29 ["ThreadsMenu"]
      274 GETTABLEKS                       R21 R22 K64 ["Container"]
      276 SETTABLEKS                       R21 R20 K23 ["testId"]
      278 DUPTABLE                         R21 K66 [{"ScrollView"}]
      279 GETUPVAL                         R22 8
      280 GETUPVAL                         R23 15
      281 DUPTABLE                         R24 K70 [{"tag", "scroll", "Size", "scrollingFrameRef"}]
      282 LOADK                            R25 K71 ["col bg-surface-200 radius-large padding-y-small stroke-standard stroke-default"]
      283 SETTABLEKS                       R25 R24 K33 ["tag"]
      285 DUPTABLE                         R25 K75 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      286 GETIMPORT                        R26 K78 [Enum.AutomaticSize.Y]
      288 SETTABLEKS                       R26 R25 K72 ["AutomaticCanvasSize"]
      290 GETIMPORT                        R26 K81 [UDim2.fromScale]
      292 LOADN                            R27 0
      293 LOADN                            R28 0
      294 CALL                             R26 2 1
      295 SETTABLEKS                       R26 R25 K73 ["CanvasSize"]
      297 GETIMPORT                        R26 K82 [Enum.ScrollingDirection.Y]
      299 SETTABLEKS                       R26 R25 K74 ["ScrollingDirection"]
      301 SETTABLEKS                       R25 R24 K67 ["scroll"]
      303 NEWCLOSURE                       R27 P5
      304 CAPTURE                          VAL R5
      305 NAMECALL                         R25 R10 K83 ["map"]
      307 CALL                             R25 2 1
      308 SETTABLEKS                       R25 R24 K68 ["Size"]
      310 SETTABLEKS                       R9 R24 K69 ["scrollingFrameRef"]
      312 MOVE                             R25 R17
      313 CALL                             R22 3 1
      314 SETTABLEKS                       R22 R21 K65 ["ScrollView"]
      316 CALL                             R18 3 -1
      317 RETURN                           R18 -1

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
      102 GETTABLEKS                       R16 R0 K27 ["Flags"]
      104 GETTABLEKS                       R15 R16 K28 ["FFlagAssistantMultipleChatSupport"]
      106 CALL                             R14 1 1
      107 GETTABLEKS                       R15 R4 K29 ["Divider"]
      109 GETTABLEKS                       R16 R4 K30 ["Icon"]
      111 GETTABLEKS                       R17 R4 K31 ["IconButton"]
      113 GETTABLEKS                       R18 R4 K32 ["ScrollView"]
      115 GETTABLEKS                       R19 R4 K33 ["Text"]
      117 GETTABLEKS                       R20 R4 K34 ["View"]
      119 GETTABLEKS                       R21 R6 K35 ["createNextOrder"]
      121 GETTABLEKS                       R22 R5 K36 ["createElement"]
      123 GETTABLEKS                       R23 R1 K37 ["METADATA_TYPES"]
      125 DUPCLOSURE                       R24 K38 [PROTO_3]
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R23
      131 DUPCLOSURE                       R25 K39 [PROTO_7]
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R21
      135 CAPTURE                          VAL R22
      136 CAPTURE                          VAL R20
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R7
      142 DUPCLOSURE                       R26 K40 [PROTO_14]
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R22
      152 CAPTURE                          VAL R25
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R24
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R18
      159 RETURN                           R26 1
