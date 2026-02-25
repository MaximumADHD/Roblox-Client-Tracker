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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["Context"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R1 K2 ["threadId"]
       11 GETTABLEKS                       R3 R1 K3 ["setThreadId"]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R5 R6 K4 ["Hooks"]
       16 GETTABLEKS                       R4 R5 K5 ["useTokens"]
       18 CALL                             R4 0 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K6 ["useCallback"]
       22 NEWCLOSURE                       R6 P0
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R7 0 1
       27 MOVE                             R8 R3
       28 SETLIST                          R7 R8 1 [1]
       30 CALL                             R5 2 1
       31 GETUPVAL                         R7 1
       32 GETTABLEKS                       R6 R7 K7 ["useMemo"]
       34 DUPCLOSURE                       R7 K8 [PROTO_9]
       35 CAPTURE                          UPVAL U5
       36 NEWTABLE                         R8 0 1
       38 GETUPVAL                         R10 5
       39 GETTABLEKS                       R9 R10 K9 ["locale"]
       41 SETLIST                          R8 R9 1 [1]
       43 CALL                             R6 2 1
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R7 R8 K10 ["useRef"]
       47 LOADNIL                          R8
       48 CALL                             R7 1 1
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R8 R9 K11 ["useBinding"]
       52 GETIMPORT                        R9 K14 [Vector2.new]
       54 CALL                             R9 0 -1
       55 CALL                             R8 -1 2
       56 GETUPVAL                         R11 1
       57 GETTABLEKS                       R10 R11 K6 ["useCallback"]
       59 NEWCLOSURE                       R11 P2
       60 CAPTURE                          VAL R9
       61 NEWTABLE                         R12 0 1
       63 MOVE                             R13 R9
       64 SETLIST                          R12 R13 1 [1]
       66 CALL                             R10 2 1
       67 GETUPVAL                         R11 6
       68 CALL                             R11 0 1
       69 DUPTABLE                         R12 K16 [{"AddThreadButton"}]
       70 GETUPVAL                         R13 7
       71 GETUPVAL                         R14 8
       72 DUPTABLE                         R15 K23 [{"text", "leadingIcon", "isSelected", "onActivated", "LayoutOrder", "testId"}]
       73 GETTABLEKS                       R16 R6 K24 ["NewThread"]
       75 SETTABLEKS                       R16 R15 K17 ["text"]
       77 GETUPVAL                         R19 3
       78 GETTABLEKS                       R18 R19 K25 ["Enums"]
       80 GETTABLEKS                       R17 R18 K26 ["IconName"]
       82 GETTABLEKS                       R16 R17 K27 ["PencilSquare"]
       84 SETTABLEKS                       R16 R15 K18 ["leadingIcon"]
       86 LOADB                            R16 0
       87 SETTABLEKS                       R16 R15 K19 ["isSelected"]
       89 SETTABLEKS                       R5 R15 K20 ["onActivated"]
       91 MOVE                             R16 R11
       92 CALL                             R16 0 1
       93 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
       95 GETUPVAL                         R18 9
       96 GETTABLEKS                       R17 R18 K28 ["ThreadsMenu"]
       98 GETTABLEKS                       R16 R17 K15 ["AddThreadButton"]
      100 SETTABLEKS                       R16 R15 K22 ["testId"]
      102 CALL                             R13 2 1
      103 SETTABLEKS                       R13 R12 K15 ["AddThreadButton"]
      105 GETUPVAL                         R13 10
      106 MOVE                             R14 R0
      107 CALL                             R13 1 1
      108 NEWTABLE                         R14 0 0
      110 MOVE                             R15 R13
      111 LOADNIL                          R16
      112 LOADNIL                          R17
      113 FORGPREP                         R15
      114 GETTABLEKS                       R21 R19 K29 ["threads"]
      116 LENGTH                           R20 R21
      117 LOADN                            R21 0
      118 JUMPIFNOTLT                      R21 R20 ; [+91]
      120 GETIMPORT                        R20 K31 [next]
      122 MOVE                             R21 R14
      123 CALL                             R20 1 1
      124 JUMPIFNOTEQKNIL                  R20 ; [+20]
      126 GETUPVAL                         R20 7
      127 GETUPVAL                         R21 11
      128 DUPTABLE                         R22 K33 [{"tag", "LayoutOrder"}]
      129 LOADK                            R23 K34 ["size-full-0 auto-y padding-y-small"]
      130 SETTABLEKS                       R23 R22 K32 ["tag"]
      132 MOVE                             R23 R11
      133 CALL                             R23 0 1
      134 SETTABLEKS                       R23 R22 K21 ["LayoutOrder"]
      136 DUPTABLE                         R23 K36 [{"Divider"}]
      137 GETUPVAL                         R24 7
      138 GETUPVAL                         R25 12
      139 CALL                             R24 1 1
      140 SETTABLEKS                       R24 R23 K35 ["Divider"]
      142 CALL                             R20 3 1
      143 SETTABLEKS                       R20 R14 K35 ["Divider"]
      145 LOADK                            R21 K37 ["ThreadHeader_%*"]
      146 GETTABLEKS                       R23 R19 K38 ["title"]
      148 NAMECALL                         R21 R21 K39 ["format"]
      150 CALL                             R21 2 1
      151 MOVE                             R20 R21
      152 GETUPVAL                         R21 7
      153 GETUPVAL                         R22 8
      154 DUPTABLE                         R23 K41 [{"isHeader", "text", "LayoutOrder"}]
      155 LOADB                            R24 1
      156 SETTABLEKS                       R24 R23 K40 ["isHeader"]
      158 GETTABLEKS                       R24 R19 K38 ["title"]
      160 SETTABLEKS                       R24 R23 K17 ["text"]
      162 MOVE                             R24 R11
      163 CALL                             R24 0 1
      164 SETTABLEKS                       R24 R23 K21 ["LayoutOrder"]
      166 CALL                             R21 2 1
      167 SETTABLE                         R21 R14 R20
      168 GETTABLEKS                       R20 R19 K29 ["threads"]
      170 LOADNIL                          R21
      171 LOADNIL                          R22
      172 FORGPREP                         R20
      173 GETTABLEKS                       R25 R24 K2 ["threadId"]
      175 JUMPIFEQ                         R25 R2 ; [+2]
      177 LOADB                            R26 0 +1
      178 LOADB                            R26 1
      179 GETUPVAL                         R27 7
      180 GETUPVAL                         R28 8
      181 DUPTABLE                         R29 K43 [{"text", "thread", "isSelected", "onActivated", "LayoutOrder", "testId"}]
      182 GETTABLEKS                       R30 R24 K38 ["title"]
      184 SETTABLEKS                       R30 R29 K17 ["text"]
      186 SETTABLEKS                       R24 R29 K42 ["thread"]
      188 SETTABLEKS                       R26 R29 K19 ["isSelected"]
      190 NEWCLOSURE                       R30 P3
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R25
      193 SETTABLEKS                       R30 R29 K20 ["onActivated"]
      195 MOVE                             R30 R11
      196 CALL                             R30 0 1
      197 SETTABLEKS                       R30 R29 K21 ["LayoutOrder"]
      199 GETUPVAL                         R32 9
      200 GETTABLEKS                       R31 R32 K28 ["ThreadsMenu"]
      202 GETTABLEKS                       R30 R31 K44 ["ExistingThreadButton"]
      204 SETTABLEKS                       R30 R29 K22 ["testId"]
      206 CALL                             R27 2 1
      207 SETTABLE                         R27 R14 R25
      208 FORGLOOP                         R20 2 ; [-36]
      210 FORGLOOP                         R15 2 ; [-97]
      212 GETUPVAL                         R16 13
      213 GETTABLEKS                       R15 R16 K45 ["assign"]
      215 DUPTABLE                         R16 K47 [{"UIListLayout"}]
      216 GETUPVAL                         R17 7
      217 LOADK                            R18 K46 ["UIListLayout"]
      218 NEWTABLE                         R19 4 0
      220 GETIMPORT                        R20 K51 [Enum.FillDirection.Vertical]
      222 SETTABLEKS                       R20 R19 K49 ["FillDirection"]
      224 GETIMPORT                        R20 K53 [Enum.SortOrder.LayoutOrder]
      226 SETTABLEKS                       R20 R19 K52 ["SortOrder"]
      228 GETIMPORT                        R20 K55 [UDim.new]
      230 LOADN                            R21 0
      231 GETTABLEKS                       R23 R4 K56 ["Gap"]
      233 GETTABLEKS                       R22 R23 K57 ["XXSmall"]
      235 CALL                             R20 2 1
      236 SETTABLEKS                       R20 R19 K58 ["Padding"]
      238 GETUPVAL                         R22 1
      239 GETTABLEKS                       R21 R22 K59 ["Change"]
      241 GETTABLEKS                       R20 R21 K60 ["AbsoluteContentSize"]
      243 SETTABLE                         R10 R19 R20
      244 CALL                             R17 2 1
      245 SETTABLEKS                       R17 R16 K46 ["UIListLayout"]
      247 MOVE                             R17 R12
      248 MOVE                             R18 R14
      249 CALL                             R15 3 1
      250 GETUPVAL                         R16 7
      251 GETUPVAL                         R17 11
      252 DUPTABLE                         R18 K61 [{"tag", "testId"}]
      253 LOADK                            R19 K62 ["size-full-0 auto-y padding-x-small"]
      254 SETTABLEKS                       R19 R18 K32 ["tag"]
      256 GETUPVAL                         R21 9
      257 GETTABLEKS                       R20 R21 K28 ["ThreadsMenu"]
      259 GETTABLEKS                       R19 R20 K63 ["Container"]
      261 SETTABLEKS                       R19 R18 K22 ["testId"]
      263 DUPTABLE                         R19 K65 [{"ScrollView"}]
      264 GETUPVAL                         R20 7
      265 GETUPVAL                         R21 14
      266 DUPTABLE                         R22 K69 [{"tag", "scroll", "Size", "scrollingFrameRef"}]
      267 LOADK                            R23 K70 ["col bg-surface-200 radius-large padding-y-small stroke-standard stroke-default"]
      268 SETTABLEKS                       R23 R22 K32 ["tag"]
      270 DUPTABLE                         R23 K74 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      271 GETIMPORT                        R24 K77 [Enum.AutomaticSize.Y]
      273 SETTABLEKS                       R24 R23 K71 ["AutomaticCanvasSize"]
      275 GETIMPORT                        R24 K80 [UDim2.fromScale]
      277 LOADN                            R25 0
      278 LOADN                            R26 0
      279 CALL                             R24 2 1
      280 SETTABLEKS                       R24 R23 K72 ["CanvasSize"]
      282 GETIMPORT                        R24 K81 [Enum.ScrollingDirection.Y]
      284 SETTABLEKS                       R24 R23 K73 ["ScrollingDirection"]
      286 SETTABLEKS                       R23 R22 K66 ["scroll"]
      288 NEWCLOSURE                       R25 P4
      289 CAPTURE                          VAL R4
      290 NAMECALL                         R23 R8 K82 ["map"]
      292 CALL                             R23 2 1
      293 SETTABLEKS                       R23 R22 K67 ["Size"]
      295 SETTABLEKS                       R7 R22 K68 ["scrollingFrameRef"]
      297 MOVE                             R23 R15
      298 CALL                             R20 3 1
      299 SETTABLEKS                       R20 R19 K64 ["ScrollView"]
      301 CALL                             R16 3 -1
      302 RETURN                           R16 -1

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
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K12 ["Foundation"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Parent"]
       31 GETTABLEKS                       R5 R6 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Parent"]
       38 GETTABLEKS                       R6 R7 K14 ["ReactUtils"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R0 K15 ["Util"]
       45 GETTABLEKS                       R7 R8 K16 ["TestIds"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R10 R0 K17 ["Components"]
       52 GETTABLEKS                       R9 R10 K18 ["Contexts"]
       54 GETTABLEKS                       R8 R9 K19 ["ThreadIdContext"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R11 R0 K17 ["Components"]
       61 GETTABLEKS                       R10 R11 K20 ["ThreadsWindow"]
       63 GETTABLEKS                       R9 R10 K21 ["ThreadOptionsMenu"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R12 R0 K22 ["Resources"]
       70 GETTABLEKS                       R11 R12 K23 ["Localization"]
       72 GETTABLEKS                       R10 R11 K24 ["Translator"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R0 K25 ["Types"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R13 R0 K26 ["Hooks"]
       84 GETTABLEKS                       R12 R13 K27 ["useConversation"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R14 R0 K28 ["Flags"]
       91 GETTABLEKS                       R13 R14 K29 ["FFlagAssistantMultipleChatSupport"]
       93 CALL                             R12 1 1
       94 GETTABLEKS                       R13 R3 K30 ["Divider"]
       96 GETTABLEKS                       R14 R3 K31 ["Icon"]
       98 GETTABLEKS                       R15 R3 K32 ["IconButton"]
      100 GETTABLEKS                       R16 R3 K33 ["ScrollView"]
      102 GETTABLEKS                       R17 R3 K34 ["Text"]
      104 GETTABLEKS                       R18 R3 K35 ["View"]
      106 GETTABLEKS                       R19 R5 K36 ["createNextOrder"]
      108 GETTABLEKS                       R20 R4 K37 ["createElement"]
      110 DUPCLOSURE                       R21 K38 [PROTO_3]
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R12
      114 DUPCLOSURE                       R22 K39 [PROTO_7]
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R19
      118 CAPTURE                          VAL R20
      119 CAPTURE                          VAL R18
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R6
      125 DUPCLOSURE                       R23 K40 [PROTO_13]
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R9
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R21
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R16
      141 RETURN                           R23 1
