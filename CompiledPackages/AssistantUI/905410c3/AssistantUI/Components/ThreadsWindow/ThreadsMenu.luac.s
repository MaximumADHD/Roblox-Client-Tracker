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
       68 DUPTABLE                         R16 K21 [{"LeadingIcon", "Text", "LoadingIcon", "ThreadOptionsMenu"}]
       69 GETTABLEKS                       R17 R0 K22 ["leadingIcon"]
       71 JUMPIFNOT                        R17 ; [+21]
       72 GETUPVAL                         R17 3
       73 GETUPVAL                         R18 5
       74 DUPTABLE                         R19 K25 [{"name", "size", "LayoutOrder"}]
       75 GETTABLEKS                       R20 R0 K22 ["leadingIcon"]
       77 SETTABLEKS                       R20 R19 K23 ["name"]
       79 GETUPVAL                         R23 1
       80 GETTABLEKS                       R22 R23 K26 ["Enums"]
       82 GETTABLEKS                       R21 R22 K27 ["IconSize"]
       84 GETTABLEKS                       R20 R21 K28 ["Medium"]
       86 SETTABLEKS                       R20 R19 K24 ["size"]
       88 MOVE                             R20 R8
       89 CALL                             R20 0 1
       90 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
       92 CALL                             R17 2 1
       93 SETTABLEKS                       R17 R16 K17 ["LeadingIcon"]
       95 GETUPVAL                         R17 3
       96 GETUPVAL                         R18 6
       97 DUPTABLE                         R19 K29 [{"tag", "Text", "LayoutOrder"}]
       98 NEWTABLE                         R20 4 0
      100 LOADB                            R21 1
      101 SETTABLEKS                       R21 R20 K30 ["fill auto-y content-emphasis text-align-x-left text-truncate-split"]
      103 NOT                              R21 R7
      104 SETTABLEKS                       R21 R20 K31 ["text-body-medium"]
      106 SETTABLEKS                       R7 R20 K32 ["text-caption-medium"]
      108 SETTABLEKS                       R20 R19 K4 ["tag"]
      110 GETTABLEKS                       R20 R0 K33 ["text"]
      112 SETTABLEKS                       R20 R19 K18 ["Text"]
      114 MOVE                             R20 R8
      115 CALL                             R20 0 1
      116 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      118 CALL                             R17 2 1
      119 SETTABLEKS                       R17 R16 K18 ["Text"]
      121 GETTABLEKS                       R17 R0 K34 ["isGenerating"]
      123 JUMPIFNOT                        R17 ; [+17]
      124 GETUPVAL                         R17 3
      125 GETUPVAL                         R18 7
      126 DUPTABLE                         R19 K35 [{"size", "LayoutOrder"}]
      127 GETUPVAL                         R23 1
      128 GETTABLEKS                       R22 R23 K26 ["Enums"]
      130 GETTABLEKS                       R21 R22 K27 ["IconSize"]
      132 GETTABLEKS                       R20 R21 K36 ["Small"]
      134 SETTABLEKS                       R20 R19 K24 ["size"]
      136 MOVE                             R20 R8
      137 CALL                             R20 0 1
      138 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      140 CALL                             R17 2 1
      141 SETTABLEKS                       R17 R16 K19 ["LoadingIcon"]
      143 GETTABLEKS                       R17 R0 K16 ["thread"]
      145 JUMPIFNOT                        R17 ; [+75]
      146 GETUPVAL                         R17 3
      147 GETUPVAL                         R18 8
      148 DUPTABLE                         R19 K39 [{"thread", "isGenerating", "isOpen", "setIsOpen", "LayoutOrder"}]
      149 GETTABLEKS                       R20 R0 K16 ["thread"]
      151 SETTABLEKS                       R20 R19 K16 ["thread"]
      153 GETTABLEKS                       R20 R0 K34 ["isGenerating"]
      155 SETTABLEKS                       R20 R19 K34 ["isGenerating"]
      157 SETTABLEKS                       R4 R19 K37 ["isOpen"]
      159 SETTABLEKS                       R5 R19 K38 ["setIsOpen"]
      161 MOVE                             R20 R8
      162 CALL                             R20 0 1
      163 SETTABLEKS                       R20 R19 K5 ["LayoutOrder"]
      165 DUPTABLE                         R20 K41 [{"OptionsButton"}]
      166 JUMPIF                           R1 ; [+2]
      167 MOVE                             R21 R4
      168 JUMPIFNOT                        R21 ; [+49]
      169 GETUPVAL                         R21 3
      170 GETUPVAL                         R22 9
      171 DUPTABLE                         R23 K45 [{"icon", "size", "variant", "isCircular", "onActivated", "LayoutOrder", "testId"}]
      172 GETUPVAL                         R27 1
      173 GETTABLEKS                       R26 R27 K26 ["Enums"]
      175 GETTABLEKS                       R25 R26 K46 ["IconName"]
      177 GETTABLEKS                       R24 R25 K47 ["ThreeDotsVertical"]
      179 SETTABLEKS                       R24 R23 K42 ["icon"]
      181 GETUPVAL                         R27 1
      182 GETTABLEKS                       R26 R27 K26 ["Enums"]
      184 GETTABLEKS                       R25 R26 K48 ["InputSize"]
      186 GETTABLEKS                       R24 R25 K49 ["XSmall"]
      188 SETTABLEKS                       R24 R23 K24 ["size"]
      190 GETUPVAL                         R27 1
      191 GETTABLEKS                       R26 R27 K26 ["Enums"]
      193 GETTABLEKS                       R25 R26 K50 ["ButtonVariant"]
      195 GETTABLEKS                       R24 R25 K51 ["Utility"]
      197 SETTABLEKS                       R24 R23 K43 ["variant"]
      199 LOADB                            R24 1
      200 SETTABLEKS                       R24 R23 K44 ["isCircular"]
      202 NEWCLOSURE                       R24 P1
      203 CAPTURE                          VAL R5
      204 SETTABLEKS                       R24 R23 K10 ["onActivated"]
      206 MOVE                             R24 R8
      207 CALL                             R24 0 1
      208 SETTABLEKS                       R24 R23 K5 ["LayoutOrder"]
      210 GETUPVAL                         R26 10
      211 GETTABLEKS                       R25 R26 K52 ["ThreadEntry"]
      213 GETTABLEKS                       R24 R25 K40 ["OptionsButton"]
      215 SETTABLEKS                       R24 R23 K12 ["testId"]
      217 CALL                             R21 2 1
      218 SETTABLEKS                       R21 R20 K40 ["OptionsButton"]
      220 CALL                             R17 3 1
      221 SETTABLEKS                       R17 R16 K20 ["ThreadOptionsMenu"]
      223 CALL                             R13 3 1
      224 SETTABLEKS                       R13 R12 K8 ["Background"]
      226 CALL                             R9 3 -1
      227 RETURN                           R9 -1

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
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K0 ["useContext"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R5 R6 K1 ["Context"]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R5 R4 K3 ["allThreadInputStates"]
       20 GETUPVAL                         R6 4
       21 CALL                             R6 0 1
       22 GETUPVAL                         R9 5
       23 GETTABLEKS                       R8 R9 K4 ["Hooks"]
       25 GETTABLEKS                       R7 R8 K5 ["useTokens"]
       27 CALL                             R7 0 1
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R8 R9 K6 ["useCallback"]
       31 NEWCLOSURE                       R9 P0
       32 CAPTURE                          VAL R6
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R10 0 2
       37 MOVE                             R11 R6
       38 GETTABLEKS                       R12 R0 K7 ["setThreadsMenuOpen"]
       40 SETLIST                          R10 R11 2 [1]
       42 CALL                             R8 2 1
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R9 R10 K6 ["useCallback"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          VAL R8
       49 CAPTURE                          UPVAL U8
       50 NEWTABLE                         R11 0 1
       52 MOVE                             R12 R8
       53 SETLIST                          R11 R12 1 [1]
       55 CALL                             R9 2 1
       56 GETUPVAL                         R11 1
       57 GETTABLEKS                       R10 R11 K8 ["useMemo"]
       59 DUPCLOSURE                       R11 K9 [PROTO_10]
       60 CAPTURE                          UPVAL U9
       61 NEWTABLE                         R12 0 1
       63 GETUPVAL                         R14 9
       64 GETTABLEKS                       R13 R14 K10 ["locale"]
       66 SETLIST                          R12 R13 1 [1]
       68 CALL                             R10 2 1
       69 GETUPVAL                         R12 1
       70 GETTABLEKS                       R11 R12 K11 ["useRef"]
       72 LOADNIL                          R12
       73 CALL                             R11 1 1
       74 GETUPVAL                         R13 1
       75 GETTABLEKS                       R12 R13 K12 ["useBinding"]
       77 GETIMPORT                        R13 K15 [Vector2.new]
       79 CALL                             R13 0 -1
       80 CALL                             R12 -1 2
       81 GETUPVAL                         R15 1
       82 GETTABLEKS                       R14 R15 K6 ["useCallback"]
       84 NEWCLOSURE                       R15 P3
       85 CAPTURE                          VAL R13
       86 NEWTABLE                         R16 0 1
       88 MOVE                             R17 R13
       89 SETLIST                          R16 R17 1 [1]
       91 CALL                             R14 2 1
       92 GETUPVAL                         R15 10
       93 CALL                             R15 0 1
       94 DUPTABLE                         R16 K17 [{"AddThreadButton"}]
       95 GETUPVAL                         R17 11
       96 GETUPVAL                         R18 12
       97 DUPTABLE                         R19 K24 [{"text", "leadingIcon", "isSelected", "onActivated", "LayoutOrder", "testId"}]
       98 GETTABLEKS                       R20 R10 K25 ["NewThread"]
      100 SETTABLEKS                       R20 R19 K18 ["text"]
      102 GETUPVAL                         R23 5
      103 GETTABLEKS                       R22 R23 K26 ["Enums"]
      105 GETTABLEKS                       R21 R22 K27 ["IconName"]
      107 GETTABLEKS                       R20 R21 K28 ["PencilSquare"]
      109 SETTABLEKS                       R20 R19 K19 ["leadingIcon"]
      111 LOADB                            R20 0
      112 SETTABLEKS                       R20 R19 K20 ["isSelected"]
      114 SETTABLEKS                       R9 R19 K21 ["onActivated"]
      116 MOVE                             R20 R15
      117 CALL                             R20 0 1
      118 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      120 GETUPVAL                         R22 13
      121 GETTABLEKS                       R21 R22 K29 ["ThreadsMenu"]
      123 GETTABLEKS                       R20 R21 K16 ["AddThreadButton"]
      125 SETTABLEKS                       R20 R19 K23 ["testId"]
      127 CALL                             R17 2 1
      128 SETTABLEKS                       R17 R16 K16 ["AddThreadButton"]
      130 GETUPVAL                         R17 14
      131 MOVE                             R18 R1
      132 CALL                             R17 1 1
      133 NEWTABLE                         R18 0 0
      135 MOVE                             R19 R17
      136 LOADNIL                          R20
      137 LOADNIL                          R21
      138 FORGPREP                         R19
      139 GETTABLEKS                       R25 R23 K30 ["threads"]
      141 LENGTH                           R24 R25
      142 LOADN                            R25 0
      143 JUMPIFNOTLT                      R25 R24 ; [+111]
      145 GETIMPORT                        R24 K32 [next]
      147 MOVE                             R25 R18
      148 CALL                             R24 1 1
      149 JUMPIFNOTEQKNIL                  R24 ; [+20]
      151 GETUPVAL                         R24 11
      152 GETUPVAL                         R25 15
      153 DUPTABLE                         R26 K34 [{"tag", "LayoutOrder"}]
      154 LOADK                            R27 K35 ["size-full-0 auto-y padding-y-small"]
      155 SETTABLEKS                       R27 R26 K33 ["tag"]
      157 MOVE                             R27 R15
      158 CALL                             R27 0 1
      159 SETTABLEKS                       R27 R26 K22 ["LayoutOrder"]
      161 DUPTABLE                         R27 K37 [{"Divider"}]
      162 GETUPVAL                         R28 11
      163 GETUPVAL                         R29 16
      164 CALL                             R28 1 1
      165 SETTABLEKS                       R28 R27 K36 ["Divider"]
      167 CALL                             R24 3 1
      168 SETTABLEKS                       R24 R18 K36 ["Divider"]
      170 LOADK                            R25 K38 ["ThreadHeader_%*"]
      171 GETTABLEKS                       R27 R23 K39 ["title"]
      173 NAMECALL                         R25 R25 K40 ["format"]
      175 CALL                             R25 2 1
      176 MOVE                             R24 R25
      177 GETUPVAL                         R25 11
      178 GETUPVAL                         R26 12
      179 DUPTABLE                         R27 K42 [{"isHeader", "text", "LayoutOrder"}]
      180 LOADB                            R28 1
      181 SETTABLEKS                       R28 R27 K41 ["isHeader"]
      183 GETTABLEKS                       R28 R23 K39 ["title"]
      185 SETTABLEKS                       R28 R27 K18 ["text"]
      187 MOVE                             R28 R15
      188 CALL                             R28 0 1
      189 SETTABLEKS                       R28 R27 K22 ["LayoutOrder"]
      191 CALL                             R25 2 1
      192 SETTABLE                         R25 R18 R24
      193 GETTABLEKS                       R24 R23 K30 ["threads"]
      195 LOADNIL                          R25
      196 LOADNIL                          R26
      197 FORGPREP                         R24
      198 GETTABLEKS                       R29 R28 K2 ["threadId"]
      200 JUMPIFEQ                         R29 R3 ; [+2]
      202 LOADB                            R30 0 +1
      203 LOADB                            R30 1
      204 GETTABLE                         R31 R5 R29
      205 JUMPIFNOT                        R31 ; [+3]
      206 GETTABLEKS                       R32 R31 K43 ["reasonDisabled"]
      208 JUMP                             ; [+1]
      209 LOADNIL                          R32
      210 MOVE                             R33 R32
      211 JUMPIFNOT                        R33 ; [+9]
      212 GETTABLEKS                       R34 R32 K43 ["reasonDisabled"]
      214 GETUPVAL                         R36 17
      215 GETTABLEKS                       R35 R36 K44 ["Generation"]
      217 JUMPIFEQ                         R34 R35 ; [+2]
      219 LOADB                            R33 0 +1
      220 LOADB                            R33 1
      221 GETUPVAL                         R34 11
      222 GETUPVAL                         R35 12
      223 DUPTABLE                         R36 K47 [{"text", "thread", "isSelected", "isGenerating", "onActivated", "LayoutOrder", "testId"}]
      224 GETTABLEKS                       R37 R28 K39 ["title"]
      226 SETTABLEKS                       R37 R36 K18 ["text"]
      228 SETTABLEKS                       R28 R36 K45 ["thread"]
      230 SETTABLEKS                       R30 R36 K20 ["isSelected"]
      232 SETTABLEKS                       R33 R36 K46 ["isGenerating"]
      234 NEWCLOSURE                       R37 P4
      235 CAPTURE                          VAL R8
      236 CAPTURE                          VAL R29
      237 CAPTURE                          UPVAL U8
      238 SETTABLEKS                       R37 R36 K21 ["onActivated"]
      240 MOVE                             R37 R15
      241 CALL                             R37 0 1
      242 SETTABLEKS                       R37 R36 K22 ["LayoutOrder"]
      244 GETUPVAL                         R39 13
      245 GETTABLEKS                       R38 R39 K29 ["ThreadsMenu"]
      247 GETTABLEKS                       R37 R38 K48 ["ExistingThreadButton"]
      249 SETTABLEKS                       R37 R36 K23 ["testId"]
      251 CALL                             R34 2 1
      252 SETTABLE                         R34 R18 R29
      253 FORGLOOP                         R24 2 ; [-56]
      255 FORGLOOP                         R19 2 ; [-117]
      257 GETUPVAL                         R20 18
      258 GETTABLEKS                       R19 R20 K49 ["assign"]
      260 DUPTABLE                         R20 K51 [{"UIListLayout"}]
      261 GETUPVAL                         R21 11
      262 LOADK                            R22 K50 ["UIListLayout"]
      263 NEWTABLE                         R23 4 0
      265 GETIMPORT                        R24 K55 [Enum.FillDirection.Vertical]
      267 SETTABLEKS                       R24 R23 K53 ["FillDirection"]
      269 GETIMPORT                        R24 K57 [Enum.SortOrder.LayoutOrder]
      271 SETTABLEKS                       R24 R23 K56 ["SortOrder"]
      273 GETIMPORT                        R24 K59 [UDim.new]
      275 LOADN                            R25 0
      276 GETTABLEKS                       R27 R7 K60 ["Gap"]
      278 GETTABLEKS                       R26 R27 K61 ["XXSmall"]
      280 CALL                             R24 2 1
      281 SETTABLEKS                       R24 R23 K62 ["Padding"]
      283 GETUPVAL                         R26 1
      284 GETTABLEKS                       R25 R26 K63 ["Change"]
      286 GETTABLEKS                       R24 R25 K64 ["AbsoluteContentSize"]
      288 SETTABLE                         R14 R23 R24
      289 CALL                             R21 2 1
      290 SETTABLEKS                       R21 R20 K50 ["UIListLayout"]
      292 MOVE                             R21 R16
      293 MOVE                             R22 R18
      294 CALL                             R19 3 1
      295 GETUPVAL                         R20 11
      296 GETUPVAL                         R21 15
      297 DUPTABLE                         R22 K65 [{"tag", "testId"}]
      298 LOADK                            R23 K66 ["size-full-0 auto-y padding-x-small"]
      299 SETTABLEKS                       R23 R22 K33 ["tag"]
      301 GETUPVAL                         R25 13
      302 GETTABLEKS                       R24 R25 K29 ["ThreadsMenu"]
      304 GETTABLEKS                       R23 R24 K67 ["Container"]
      306 SETTABLEKS                       R23 R22 K23 ["testId"]
      308 DUPTABLE                         R23 K69 [{"ScrollView"}]
      309 GETUPVAL                         R24 11
      310 GETUPVAL                         R25 19
      311 DUPTABLE                         R26 K73 [{"tag", "scroll", "Size", "scrollingFrameRef"}]
      312 LOADK                            R27 K74 ["col bg-surface-200 radius-large padding-y-small stroke-standard stroke-default"]
      313 SETTABLEKS                       R27 R26 K33 ["tag"]
      315 DUPTABLE                         R27 K78 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      316 GETIMPORT                        R28 K81 [Enum.AutomaticSize.Y]
      318 SETTABLEKS                       R28 R27 K75 ["AutomaticCanvasSize"]
      320 GETIMPORT                        R28 K84 [UDim2.fromScale]
      322 LOADN                            R29 0
      323 LOADN                            R30 0
      324 CALL                             R28 2 1
      325 SETTABLEKS                       R28 R27 K76 ["CanvasSize"]
      327 GETIMPORT                        R28 K85 [Enum.ScrollingDirection.Y]
      329 SETTABLEKS                       R28 R27 K77 ["ScrollingDirection"]
      331 SETTABLEKS                       R27 R26 K70 ["scroll"]
      333 NEWCLOSURE                       R29 P5
      334 CAPTURE                          VAL R7
      335 NAMECALL                         R27 R12 K86 ["map"]
      337 CALL                             R27 2 1
      338 SETTABLEKS                       R27 R26 K71 ["Size"]
      340 SETTABLEKS                       R11 R26 K72 ["scrollingFrameRef"]
      342 MOVE                             R27 R19
      343 CALL                             R24 3 1
      344 SETTABLEKS                       R24 R23 K68 ["ScrollView"]
      346 CALL                             R20 3 -1
      347 RETURN                           R20 -1

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
       35 GETTABLEKS                       R8 R0 K12 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["Contexts"]
       39 GETTABLEKS                       R6 R7 K14 ["InputStateContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R8 K15 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Parent"]
       53 GETTABLEKS                       R8 R9 K16 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Util"]
       60 GETTABLEKS                       R9 R10 K17 ["TestIds"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R12 R0 K12 ["Components"]
       67 GETTABLEKS                       R11 R12 K13 ["Contexts"]
       69 GETTABLEKS                       R10 R11 K18 ["ThreadIdContext"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R13 R0 K12 ["Components"]
       76 GETTABLEKS                       R12 R13 K19 ["ThreadsWindow"]
       78 GETTABLEKS                       R11 R12 K20 ["ThreadOptionsMenu"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R14 R0 K21 ["Resources"]
       85 GETTABLEKS                       R13 R14 K22 ["Localization"]
       87 GETTABLEKS                       R12 R13 K23 ["Translator"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K24 ["Types"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R15 R0 K6 ["Util"]
       99 GETTABLEKS                       R14 R15 K25 ["createNewThread"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R16 R0 K26 ["Hooks"]
      106 GETTABLEKS                       R15 R16 K27 ["useConversation"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R17 R0 K26 ["Hooks"]
      113 GETTABLEKS                       R16 R17 K28 ["useSwitchThread"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R18 R0 K29 ["Flags"]
      120 GETTABLEKS                       R17 R18 K30 ["FFlagAssistantMultipleChatPersistence"]
      122 CALL                             R16 1 1
      123 GETTABLEKS                       R17 R4 K31 ["Divider"]
      125 GETTABLEKS                       R18 R4 K32 ["Icon"]
      127 GETTABLEKS                       R19 R4 K33 ["IconButton"]
      129 GETTABLEKS                       R20 R4 K34 ["Loading"]
      131 GETTABLEKS                       R21 R4 K35 ["ScrollView"]
      133 GETTABLEKS                       R22 R4 K36 ["Text"]
      135 GETTABLEKS                       R23 R4 K37 ["View"]
      137 GETTABLEKS                       R24 R7 K38 ["createNextOrder"]
      139 GETTABLEKS                       R25 R6 K39 ["createElement"]
      141 GETTABLEKS                       R26 R5 K40 ["InputDisabledReasons"]
      143 GETTABLEKS                       R27 R1 K41 ["METADATA_TYPES"]
      145 DUPCLOSURE                       R28 K42 [PROTO_3]
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R27
      151 DUPCLOSURE                       R29 K43 [PROTO_7]
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R24
      155 CAPTURE                          VAL R25
      156 CAPTURE                          VAL R23
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R8
      163 DUPCLOSURE                       R30 K44 [PROTO_14]
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R25
      176 CAPTURE                          VAL R29
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R28
      179 CAPTURE                          VAL R23
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R26
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R21
      184 RETURN                           R30 1
