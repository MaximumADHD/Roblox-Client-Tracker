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
       37 GETTABLEKS                       R8 R7 K5 ["ephemeral"]
       39 JUMPIF                           R8 ; [+20]
       40 GETTABLEKS                       R8 R7 K6 ["isPinned"]
       42 JUMPIFNOT                        R8 ; [+9]
       43 GETTABLEKS                       R9 R0 K1 ["threads"]
       45 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       47 MOVE                             R10 R7
       48 GETIMPORT                        R8 K9 [table.insert]
       50 CALL                             R8 2 0
       51 JUMP                             ; [+8]
       52 GETTABLEKS                       R9 R1 K1 ["threads"]
       54 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       56 MOVE                             R10 R7
       57 GETIMPORT                        R8 K9 [table.insert]
       59 CALL                             R8 2 0
       60 FORGLOOP                         R3 2 ; [-24]
       62 NEWTABLE                         R3 0 2
       64 MOVE                             R6 R0
       65 MOVE                             R7 R1
       66 SETLIST                          R3 R6 2 [1]
       68 LOADNIL                          R4
       69 LOADNIL                          R5
       70 FORGPREP                         R3
       71 GETIMPORT                        R8 K11 [table.sort]
       73 GETTABLEKS                       R9 R7 K1 ["threads"]
       75 DUPCLOSURE                       R10 K12 [PROTO_1]
       76 CALL                             R8 2 0
       77 FORGLOOP                         R3 2 ; [-7]
       79 NEWTABLE                         R3 0 2
       81 MOVE                             R4 R0
       82 MOVE                             R5 R1
       83 SETLIST                          R3 R4 2 [1]
       85 RETURN                           R3 1

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
       20 NEWTABLE                         R4 0 2
       22 MOVE                             R5 R0
       23 MOVE                             R6 R1
       24 SETLIST                          R4 R5 2 [1]
       26 CALL                             R2 2 1
       27 RETURN                           R2 1

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
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["GenerateGUID"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K1 [{"NewThread"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["ThreadsMenu"]
        3 LOADK                            R4 K0 ["NewThread"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["NewThread"]
        9 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteContentSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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
       18 GETTABLEKS                       R4 R2 K4 ["setThreadId"]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K5 ["Hooks"]
       23 GETTABLEKS                       R5 R6 K6 ["useTokens"]
       25 CALL                             R5 0 1
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K7 ["useCallback"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R8 0 1
       34 MOVE                             R9 R4
       35 SETLIST                          R8 R9 1 [1]
       37 CALL                             R6 2 1
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R7 R8 K8 ["useMemo"]
       41 DUPCLOSURE                       R8 K9 [PROTO_9]
       42 CAPTURE                          UPVAL U5
       43 NEWTABLE                         R9 0 1
       45 GETUPVAL                         R11 5
       46 GETTABLEKS                       R10 R11 K10 ["locale"]
       48 SETLIST                          R9 R10 1 [1]
       50 CALL                             R7 2 1
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R8 R9 K11 ["useRef"]
       54 LOADNIL                          R9
       55 CALL                             R8 1 1
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R9 R10 K12 ["useBinding"]
       59 GETIMPORT                        R10 K15 [Vector2.new]
       61 CALL                             R10 0 -1
       62 CALL                             R9 -1 2
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R11 R12 K7 ["useCallback"]
       66 NEWCLOSURE                       R12 P2
       67 CAPTURE                          VAL R10
       68 NEWTABLE                         R13 0 1
       70 MOVE                             R14 R10
       71 SETLIST                          R13 R14 1 [1]
       73 CALL                             R11 2 1
       74 GETUPVAL                         R12 6
       75 CALL                             R12 0 1
       76 DUPTABLE                         R13 K17 [{"AddThreadButton"}]
       77 GETUPVAL                         R14 7
       78 GETUPVAL                         R15 8
       79 DUPTABLE                         R16 K24 [{"text", "leadingIcon", "isSelected", "onActivated", "LayoutOrder", "testId"}]
       80 GETTABLEKS                       R17 R7 K25 ["NewThread"]
       82 SETTABLEKS                       R17 R16 K18 ["text"]
       84 GETUPVAL                         R20 3
       85 GETTABLEKS                       R19 R20 K26 ["Enums"]
       87 GETTABLEKS                       R18 R19 K27 ["IconName"]
       89 GETTABLEKS                       R17 R18 K28 ["PencilSquare"]
       91 SETTABLEKS                       R17 R16 K19 ["leadingIcon"]
       93 LOADB                            R17 0
       94 SETTABLEKS                       R17 R16 K20 ["isSelected"]
       96 SETTABLEKS                       R6 R16 K21 ["onActivated"]
       98 MOVE                             R17 R12
       99 CALL                             R17 0 1
      100 SETTABLEKS                       R17 R16 K22 ["LayoutOrder"]
      102 GETUPVAL                         R19 9
      103 GETTABLEKS                       R18 R19 K29 ["ThreadsMenu"]
      105 GETTABLEKS                       R17 R18 K16 ["AddThreadButton"]
      107 SETTABLEKS                       R17 R16 K23 ["testId"]
      109 CALL                             R14 2 1
      110 SETTABLEKS                       R14 R13 K16 ["AddThreadButton"]
      112 GETUPVAL                         R14 10
      113 MOVE                             R15 R1
      114 CALL                             R14 1 1
      115 NEWTABLE                         R15 0 0
      117 MOVE                             R16 R14
      118 LOADNIL                          R17
      119 LOADNIL                          R18
      120 FORGPREP                         R16
      121 GETTABLEKS                       R22 R20 K30 ["threads"]
      123 LENGTH                           R21 R22
      124 LOADN                            R22 0
      125 JUMPIFNOTLT                      R22 R21 ; [+91]
      127 GETIMPORT                        R21 K32 [next]
      129 MOVE                             R22 R15
      130 CALL                             R21 1 1
      131 JUMPIFNOTEQKNIL                  R21 ; [+20]
      133 GETUPVAL                         R21 7
      134 GETUPVAL                         R22 11
      135 DUPTABLE                         R23 K34 [{"tag", "LayoutOrder"}]
      136 LOADK                            R24 K35 ["size-full-0 auto-y padding-y-small"]
      137 SETTABLEKS                       R24 R23 K33 ["tag"]
      139 MOVE                             R24 R12
      140 CALL                             R24 0 1
      141 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      143 DUPTABLE                         R24 K37 [{"Divider"}]
      144 GETUPVAL                         R25 7
      145 GETUPVAL                         R26 12
      146 CALL                             R25 1 1
      147 SETTABLEKS                       R25 R24 K36 ["Divider"]
      149 CALL                             R21 3 1
      150 SETTABLEKS                       R21 R15 K36 ["Divider"]
      152 LOADK                            R22 K38 ["ThreadHeader_%*"]
      153 GETTABLEKS                       R24 R20 K39 ["title"]
      155 NAMECALL                         R22 R22 K40 ["format"]
      157 CALL                             R22 2 1
      158 MOVE                             R21 R22
      159 GETUPVAL                         R22 7
      160 GETUPVAL                         R23 8
      161 DUPTABLE                         R24 K42 [{"isHeader", "text", "LayoutOrder"}]
      162 LOADB                            R25 1
      163 SETTABLEKS                       R25 R24 K41 ["isHeader"]
      165 GETTABLEKS                       R25 R20 K39 ["title"]
      167 SETTABLEKS                       R25 R24 K18 ["text"]
      169 MOVE                             R25 R12
      170 CALL                             R25 0 1
      171 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      173 CALL                             R22 2 1
      174 SETTABLE                         R22 R15 R21
      175 GETTABLEKS                       R21 R20 K30 ["threads"]
      177 LOADNIL                          R22
      178 LOADNIL                          R23
      179 FORGPREP                         R21
      180 GETTABLEKS                       R26 R25 K3 ["threadId"]
      182 JUMPIFEQ                         R26 R3 ; [+2]
      184 LOADB                            R27 0 +1
      185 LOADB                            R27 1
      186 GETUPVAL                         R28 7
      187 GETUPVAL                         R29 8
      188 DUPTABLE                         R30 K44 [{"text", "thread", "isSelected", "onActivated", "LayoutOrder", "testId"}]
      189 GETTABLEKS                       R31 R25 K39 ["title"]
      191 SETTABLEKS                       R31 R30 K18 ["text"]
      193 SETTABLEKS                       R25 R30 K43 ["thread"]
      195 SETTABLEKS                       R27 R30 K20 ["isSelected"]
      197 NEWCLOSURE                       R31 P3
      198 CAPTURE                          VAL R4
      199 CAPTURE                          VAL R26
      200 SETTABLEKS                       R31 R30 K21 ["onActivated"]
      202 MOVE                             R31 R12
      203 CALL                             R31 0 1
      204 SETTABLEKS                       R31 R30 K22 ["LayoutOrder"]
      206 GETUPVAL                         R33 9
      207 GETTABLEKS                       R32 R33 K29 ["ThreadsMenu"]
      209 GETTABLEKS                       R31 R32 K45 ["ExistingThreadButton"]
      211 SETTABLEKS                       R31 R30 K23 ["testId"]
      213 CALL                             R28 2 1
      214 SETTABLE                         R28 R15 R26
      215 FORGLOOP                         R21 2 ; [-36]
      217 FORGLOOP                         R16 2 ; [-97]
      219 GETUPVAL                         R17 13
      220 GETTABLEKS                       R16 R17 K46 ["assign"]
      222 DUPTABLE                         R17 K48 [{"UIListLayout"}]
      223 GETUPVAL                         R18 7
      224 LOADK                            R19 K47 ["UIListLayout"]
      225 NEWTABLE                         R20 4 0
      227 GETIMPORT                        R21 K52 [Enum.FillDirection.Vertical]
      229 SETTABLEKS                       R21 R20 K50 ["FillDirection"]
      231 GETIMPORT                        R21 K54 [Enum.SortOrder.LayoutOrder]
      233 SETTABLEKS                       R21 R20 K53 ["SortOrder"]
      235 GETIMPORT                        R21 K56 [UDim.new]
      237 LOADN                            R22 0
      238 GETTABLEKS                       R24 R5 K57 ["Gap"]
      240 GETTABLEKS                       R23 R24 K58 ["XXSmall"]
      242 CALL                             R21 2 1
      243 SETTABLEKS                       R21 R20 K59 ["Padding"]
      245 GETUPVAL                         R23 0
      246 GETTABLEKS                       R22 R23 K60 ["Change"]
      248 GETTABLEKS                       R21 R22 K61 ["AbsoluteContentSize"]
      250 SETTABLE                         R11 R20 R21
      251 CALL                             R18 2 1
      252 SETTABLEKS                       R18 R17 K47 ["UIListLayout"]
      254 MOVE                             R18 R13
      255 MOVE                             R19 R15
      256 CALL                             R16 3 1
      257 GETUPVAL                         R17 7
      258 GETUPVAL                         R18 11
      259 DUPTABLE                         R19 K62 [{"tag", "testId"}]
      260 LOADK                            R20 K63 ["size-full-0 auto-y padding-x-small"]
      261 SETTABLEKS                       R20 R19 K33 ["tag"]
      263 GETUPVAL                         R22 9
      264 GETTABLEKS                       R21 R22 K29 ["ThreadsMenu"]
      266 GETTABLEKS                       R20 R21 K64 ["Container"]
      268 SETTABLEKS                       R20 R19 K23 ["testId"]
      270 DUPTABLE                         R20 K66 [{"ScrollView"}]
      271 GETUPVAL                         R21 7
      272 GETUPVAL                         R22 14
      273 DUPTABLE                         R23 K70 [{"tag", "scroll", "Size", "scrollingFrameRef"}]
      274 LOADK                            R24 K71 ["col bg-surface-200 radius-large padding-y-small stroke-standard stroke-default"]
      275 SETTABLEKS                       R24 R23 K33 ["tag"]
      277 DUPTABLE                         R24 K75 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      278 GETIMPORT                        R25 K78 [Enum.AutomaticSize.Y]
      280 SETTABLEKS                       R25 R24 K72 ["AutomaticCanvasSize"]
      282 GETIMPORT                        R25 K81 [UDim2.fromScale]
      284 LOADN                            R26 0
      285 LOADN                            R27 0
      286 CALL                             R25 2 1
      287 SETTABLEKS                       R25 R24 K73 ["CanvasSize"]
      289 GETIMPORT                        R25 K82 [Enum.ScrollingDirection.Y]
      291 SETTABLEKS                       R25 R24 K74 ["ScrollingDirection"]
      293 SETTABLEKS                       R24 R23 K67 ["scroll"]
      295 NEWCLOSURE                       R26 P4
      296 CAPTURE                          VAL R5
      297 NAMECALL                         R24 R9 K83 ["map"]
      299 CALL                             R24 2 1
      300 SETTABLEKS                       R24 R23 K68 ["Size"]
      302 SETTABLEKS                       R8 R23 K69 ["scrollingFrameRef"]
      304 MOVE                             R24 R16
      305 CALL                             R21 3 1
      306 SETTABLEKS                       R21 R20 K65 ["ScrollView"]
      308 CALL                             R17 3 -1
      309 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R0 K10 ["Components"]
       17 GETTABLEKS                       R4 R5 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R4 K12 ["ConversationContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R5 R0 K13 ["Parent"]
       26 GETTABLEKS                       R4 R5 K14 ["Dash"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K13 ["Parent"]
       33 GETTABLEKS                       R5 R6 K15 ["Foundation"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K13 ["Parent"]
       40 GETTABLEKS                       R6 R7 K16 ["React"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R8 R0 K13 ["Parent"]
       47 GETTABLEKS                       R7 R8 K17 ["ReactUtils"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R9 R0 K18 ["Util"]
       54 GETTABLEKS                       R8 R9 K19 ["TestIds"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R11 R0 K10 ["Components"]
       61 GETTABLEKS                       R10 R11 K11 ["Contexts"]
       63 GETTABLEKS                       R9 R10 K20 ["ThreadIdContext"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R12 R0 K10 ["Components"]
       70 GETTABLEKS                       R11 R12 K21 ["ThreadsWindow"]
       72 GETTABLEKS                       R10 R11 K22 ["ThreadOptionsMenu"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R13 R0 K23 ["Resources"]
       79 GETTABLEKS                       R12 R13 K24 ["Localization"]
       81 GETTABLEKS                       R11 R12 K25 ["Translator"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K9 [require]
       86 GETTABLEKS                       R12 R0 K26 ["Types"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R14 R0 K27 ["Flags"]
       93 GETTABLEKS                       R13 R14 K28 ["FFlagAssistantMultipleChatSupport"]
       95 CALL                             R12 1 1
       96 GETTABLEKS                       R13 R4 K29 ["Divider"]
       98 GETTABLEKS                       R14 R4 K30 ["Icon"]
      100 GETTABLEKS                       R15 R4 K31 ["IconButton"]
      102 GETTABLEKS                       R16 R4 K32 ["ScrollView"]
      104 GETTABLEKS                       R17 R4 K33 ["Text"]
      106 GETTABLEKS                       R18 R4 K34 ["View"]
      108 GETTABLEKS                       R19 R6 K35 ["createNextOrder"]
      110 GETTABLEKS                       R20 R5 K36 ["createElement"]
      112 DUPCLOSURE                       R21 K37 [PROTO_3]
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R12
      116 DUPCLOSURE                       R22 K38 [PROTO_7]
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R19
      120 CAPTURE                          VAL R20
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R7
      127 DUPCLOSURE                       R23 K39 [PROTO_13]
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R8
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R22
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R21
      139 CAPTURE                          VAL R18
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R16
      143 RETURN                           R23 1
