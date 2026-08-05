PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["solo"] ; [+6]
        2 MOVE                             R4 R2
        3 MOVE                             R5 R2
        4 MOVE                             R6 R2
        5 MOVE                             R7 R2
        6 RETURN                           R4 4
        7 JUMPIFNOTEQKS                    R0 K1 ["outgoing"] ; [+20]
        9 JUMPIFNOTEQKS                    R1 K2 ["first"] ; [+6]
       11 MOVE                             R4 R2
       12 MOVE                             R5 R2
       13 MOVE                             R6 R3
       14 MOVE                             R7 R2
       15 RETURN                           R4 4
       16 JUMPIFNOTEQKS                    R1 K3 ["middle"] ; [+6]
       18 MOVE                             R4 R2
       19 MOVE                             R5 R3
       20 MOVE                             R6 R3
       21 MOVE                             R7 R2
       22 RETURN                           R4 4
       23 MOVE                             R4 R2
       24 MOVE                             R5 R3
       25 MOVE                             R6 R2
       26 MOVE                             R7 R2
       27 RETURN                           R4 4
       28 JUMPIFNOTEQKS                    R1 K2 ["first"] ; [+6]
       30 MOVE                             R4 R2
       31 MOVE                             R5 R2
       32 MOVE                             R6 R2
       33 MOVE                             R7 R3
       34 RETURN                           R4 4
       35 JUMPIFNOTEQKS                    R1 K3 ["middle"] ; [+6]
       37 MOVE                             R4 R3
       38 MOVE                             R5 R2
       39 MOVE                             R6 R2
       40 MOVE                             R7 R3
       41 RETURN                           R4 4
       42 MOVE                             R4 R3
       43 MOVE                             R5 R2
       44 MOVE                             R6 R2
       45 MOVE                             R7 R2
       46 RETURN                           R4 4

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["outgoing"] ; [+3]
        2 LOADK                            R5 K1 ["bg-system-emphasis"]
        3 JUMP                             ; [+1]
        4 LOADK                            R5 K2 ["bg-shift-300"]
        5 JUMPIFNOTEQKS                    R1 K0 ["outgoing"] ; [+3]
        7 LOADK                            R6 K3 ["content-inverse-emphasis"]
        8 JUMP                             ; [+1]
        9 LOADK                            R6 K4 ["content-emphasis"]
       10 GETTABLEKS                       R11 R0 K5 ["Size"]
       12 GETTABLEKS                       R11 R11 K6 ["Size_500"]
       14 GETTABLEKS                       R12 R0 K7 ["Radius"]
       16 GETTABLEKS                       R12 R12 K8 ["XSmall"]
       18 JUMPIFNOTEQKS                    R4 K9 ["solo"] ; [+6]
       20 MOVE                             R7 R11
       21 MOVE                             R8 R11
       22 MOVE                             R9 R11
       23 MOVE                             R10 R11
       24 JUMP                             ; [+39]
       25 JUMPIFNOTEQKS                    R1 K0 ["outgoing"] ; [+20]
       27 JUMPIFNOTEQKS                    R4 K10 ["first"] ; [+6]
       29 MOVE                             R7 R11
       30 MOVE                             R8 R11
       31 MOVE                             R9 R12
       32 MOVE                             R10 R11
       33 JUMP                             ; [+30]
       34 JUMPIFNOTEQKS                    R4 K11 ["middle"] ; [+6]
       36 MOVE                             R7 R11
       37 MOVE                             R8 R12
       38 MOVE                             R9 R12
       39 MOVE                             R10 R11
       40 JUMP                             ; [+23]
       41 MOVE                             R7 R11
       42 MOVE                             R8 R12
       43 MOVE                             R9 R11
       44 MOVE                             R10 R11
       45 JUMP                             ; [+18]
       46 JUMPIFNOTEQKS                    R4 K10 ["first"] ; [+6]
       48 MOVE                             R7 R11
       49 MOVE                             R8 R11
       50 MOVE                             R9 R11
       51 MOVE                             R10 R12
       52 JUMP                             ; [+11]
       53 JUMPIFNOTEQKS                    R4 K11 ["middle"] ; [+6]
       55 MOVE                             R7 R12
       56 MOVE                             R8 R11
       57 MOVE                             R9 R11
       58 MOVE                             R10 R12
       59 JUMP                             ; [+4]
       60 MOVE                             R7 R12
       61 MOVE                             R8 R11
       62 MOVE                             R9 R11
       63 MOVE                             R10 R11
       64 GETUPVAL                         R11 0
       65 GETUPVAL                         R12 1
       66 GETTABLEKS                       R12 R12 K12 ["View"]
       68 DUPTABLE                         R13 K18 [{["testId"] = "--appkit-chat-message", ["LayoutOrder"], ["AutomaticSize"], ["Size"], ["tag"]}]
       69 SETTABLEKS                       R3 R13 K15 ["LayoutOrder"]
       71 GETIMPORT                        R14 K21 [Enum.AutomaticSize.XY]
       73 SETTABLEKS                       R14 R13 K16 ["AutomaticSize"]
       75 GETIMPORT                        R14 K24 [UDim2.fromOffset]
       77 LOADN                            R15 0
       78 LOADN                            R16 0
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K5 ["Size"]
       82 LOADK                            R15 K25 ["%* padding-y-small padding-x-medium"]
       83 MOVE                             R17 R5
       84 NAMECALL                         R15 R15 K26 ["format"]
       86 CALL                             R15 2 1
       87 MOVE                             R14 R15
       88 SETTABLEKS                       R14 R13 K17 ["tag"]
       90 DUPTABLE                         R14 K30 [{"Corner", "Constraint", "Text"}]
       91 GETUPVAL                         R15 0
       92 LOADK                            R16 K31 ["UICorner"]
       93 DUPTABLE                         R17 K36 [{"TopLeftRadius", "TopRightRadius", "BottomRightRadius", "BottomLeftRadius"}]
       94 GETIMPORT                        R18 K39 [UDim.new]
       96 LOADN                            R19 0
       97 MOVE                             R20 R7
       98 CALL                             R18 2 1
       99 SETTABLEKS                       R18 R17 K32 ["TopLeftRadius"]
      101 GETIMPORT                        R18 K39 [UDim.new]
      103 LOADN                            R19 0
      104 MOVE                             R20 R8
      105 CALL                             R18 2 1
      106 SETTABLEKS                       R18 R17 K33 ["TopRightRadius"]
      108 GETIMPORT                        R18 K39 [UDim.new]
      110 LOADN                            R19 0
      111 MOVE                             R20 R9
      112 CALL                             R18 2 1
      113 SETTABLEKS                       R18 R17 K34 ["BottomRightRadius"]
      115 GETIMPORT                        R18 K39 [UDim.new]
      117 LOADN                            R19 0
      118 MOVE                             R20 R10
      119 CALL                             R18 2 1
      120 SETTABLEKS                       R18 R17 K35 ["BottomLeftRadius"]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K27 ["Corner"]
      125 GETUPVAL                         R15 0
      126 LOADK                            R16 K40 ["UISizeConstraint"]
      127 DUPTABLE                         R17 K42 [{"MaxSize"}]
      128 GETIMPORT                        R18 K44 [Vector2.new]
      130 LOADN                            R19 300
      131 LOADK                            R20 K45 [∞]
      132 CALL                             R18 2 1
      133 SETTABLEKS                       R18 R17 K41 ["MaxSize"]
      135 CALL                             R15 2 1
      136 SETTABLEKS                       R15 R14 K28 ["Constraint"]
      138 GETUPVAL                         R15 0
      139 GETUPVAL                         R16 1
      140 GETTABLEKS                       R16 R16 K29 ["Text"]
      142 DUPTABLE                         R17 K46 [{"Text", "AutomaticSize", "Size", "tag"}]
      143 SETTABLEKS                       R2 R17 K29 ["Text"]
      145 GETIMPORT                        R18 K21 [Enum.AutomaticSize.XY]
      147 SETTABLEKS                       R18 R17 K16 ["AutomaticSize"]
      149 GETIMPORT                        R18 K24 [UDim2.fromOffset]
      151 LOADN                            R19 0
      152 LOADN                            R20 0
      153 CALL                             R18 2 1
      154 SETTABLEKS                       R18 R17 K5 ["Size"]
      156 LOADK                            R19 K47 ["text-body-medium %* text-wrap text-align-x-left"]
      157 MOVE                             R21 R6
      158 NAMECALL                         R19 R19 K26 ["format"]
      160 CALL                             R19 2 1
      161 MOVE                             R18 R19
      162 SETTABLEKS                       R18 R17 K17 ["tag"]
      164 CALL                             R15 2 1
      165 SETTABLEKS                       R15 R14 K29 ["Text"]
      167 CALL                             R11 3 -1
      168 RETURN                           R11 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["View"]
        4 DUPTABLE                         R4 K4 [{["Size"], ["tag"] = "row align-x-center align-y-center radius-circle bg-shift-300"}]
        5 GETIMPORT                        R5 K7 [UDim2.fromOffset]
        7 MOVE                             R6 R1
        8 MOVE                             R7 R1
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K1 ["Size"]
       12 DUPTABLE                         R5 K9 [{"Initials"}]
       13 JUMPIFEQKNIL                     R0 ; [+23]
       15 JUMPIFEQKS                       R0 K10 [""] ; [+21]
       17 GETUPVAL                         R6 0
       18 GETUPVAL                         R7 1
       19 GETTABLEKS                       R7 R7 K11 ["Text"]
       21 DUPTABLE                         R8 K13 [{["Text"], ["tag"] = "text-caption-large content-default"}]
       22 GETIMPORT                        R9 K16 [string.upper]
       24 LOADN                            R12 1
       25 LOADN                            R13 2
       26 FASTCALL3                        STRING_SUB R0 R12 R13
       28 MOVE                             R11 R0
       29 GETIMPORT                        R10 K18 [string.sub]
       31 CALL                             R10 3 1
       32 CALL                             R9 1 1
       33 SETTABLEKS                       R9 R8 K11 ["Text"]
       35 CALL                             R6 2 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 SETTABLEKS                       R6 R5 K8 ["Initials"]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1

PROTO_3:
        0 JUMPIFEQKNIL                     R0 ; [+14]
        2 GETUPVAL                         R5 0
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K0 ["Avatar"]
        6 DUPTABLE                         R7 K4 [{"userId", "size", "userPresence"}]
        7 SETTABLEKS                       R0 R7 K1 ["userId"]
        9 SETTABLEKS                       R2 R7 K2 ["size"]
       11 SETTABLEKS                       R4 R7 K3 ["userPresence"]
       13 CALL                             R5 2 -1
       14 RETURN                           R5 -1
       15 GETUPVAL                         R5 2
       16 MOVE                             R6 R1
       17 MOVE                             R7 R3
       18 CALL                             R5 2 -1
       19 RETURN                           R5 -1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETIMPORT                        R1 K2 [string.lower]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K4 [string.find]
       10 MOVE                             R3 R1
       11 LOADK                            R4 K5 ["online"]
       12 LOADN                            R5 1
       13 LOADB                            R6 1
       14 CALL                             R2 4 1
       15 JUMPIF                           R2 ; [+8]
       16 GETIMPORT                        R2 K4 [string.find]
       18 MOVE                             R3 R1
       19 LOADK                            R4 K6 ["active"]
       20 LOADN                            R5 1
       21 LOADB                            R6 1
       22 CALL                             R2 4 1
       23 JUMPIFNOT                        R2 ; [+8]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K7 ["Enums"]
       27 GETTABLEKS                       R2 R2 K8 ["UserPresence"]
       29 GETTABLEKS                       R2 R2 K9 ["Active"]
       31 RETURN                           R2 1
       32 GETIMPORT                        R2 K4 [string.find]
       34 MOVE                             R3 R1
       35 LOADK                            R4 K10 ["away"]
       36 LOADN                            R5 1
       37 LOADB                            R6 1
       38 CALL                             R2 4 1
       39 JUMPIFNOT                        R2 ; [+8]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K7 ["Enums"]
       43 GETTABLEKS                       R2 R2 K8 ["UserPresence"]
       45 GETTABLEKS                       R2 R2 K11 ["Away"]
       47 RETURN                           R2 1
       48 GETIMPORT                        R2 K4 [string.find]
       50 MOVE                             R3 R1
       51 LOADK                            R4 K12 ["experience"]
       52 LOADN                            R5 1
       53 LOADB                            R6 1
       54 CALL                             R2 4 1
       55 JUMPIF                           R2 ; [+8]
       56 GETIMPORT                        R2 K4 [string.find]
       58 MOVE                             R3 R1
       59 LOADK                            R4 K13 ["playing"]
       60 LOADN                            R5 1
       61 LOADB                            R6 1
       62 CALL                             R2 4 1
       63 JUMPIFNOT                        R2 ; [+8]
       64 GETUPVAL                         R2 0
       65 GETTABLEKS                       R2 R2 K7 ["Enums"]
       67 GETTABLEKS                       R2 R2 K8 ["UserPresence"]
       69 GETTABLEKS                       R2 R2 K14 ["InExperience"]
       71 RETURN                           R2 1
       72 LOADNIL                          R2
       73 RETURN                           R2 1

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADK                            R9 K0 ["action_%*"]
        7 MOVE                             R11 R6
        8 NAMECALL                         R9 R9 K1 ["format"]
       10 CALL                             R9 2 1
       11 MOVE                             R8 R9
       12 GETUPVAL                         R9 0
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R10 R10 K2 ["IconButton"]
       16 DUPTABLE                         R11 K12 [{["testId"], ["icon"], ["onActivated"], ["isCircular"] = True, ["isDisabled"], ["variant"], ["size"], ["LayoutOrder"]}]
       17 LOADK                            R13 K13 ["--appkit-chat-action-%*"]
       18 MOVE                             R15 R6
       19 NAMECALL                         R13 R13 K1 ["format"]
       21 CALL                             R13 2 1
       22 MOVE                             R12 R13
       23 SETTABLEKS                       R12 R11 K3 ["testId"]
       25 GETTABLEKS                       R12 R7 K4 ["icon"]
       27 SETTABLEKS                       R12 R11 K4 ["icon"]
       29 GETTABLEKS                       R12 R7 K5 ["onActivated"]
       31 JUMPIF                           R12 ; [+1]
       32 DUPCLOSURE                       R12 K14 [PROTO_5]
       33 SETTABLEKS                       R12 R11 K5 ["onActivated"]
       35 GETTABLEKS                       R12 R7 K8 ["isDisabled"]
       37 SETTABLEKS                       R12 R11 K8 ["isDisabled"]
       39 GETUPVAL                         R12 1
       40 GETTABLEKS                       R12 R12 K15 ["Enums"]
       42 GETTABLEKS                       R12 R12 K16 ["ButtonVariant"]
       44 GETTABLEKS                       R12 R12 K17 ["Utility"]
       46 SETTABLEKS                       R12 R11 K9 ["variant"]
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R12 R12 K15 ["Enums"]
       51 GETTABLEKS                       R12 R12 K18 ["InputSize"]
       53 GETTABLEKS                       R12 R12 K19 ["Small"]
       55 SETTABLEKS                       R12 R11 K10 ["size"]
       57 SETTABLEKS                       R6 R11 K11 ["LayoutOrder"]
       59 CALL                             R9 2 1
       60 SETTABLE                         R9 R2 R8
       61 FORGLOOP                         R3 2 ; [-56]
       63 GETUPVAL                         R3 0
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R4 R4 K20 ["View"]
       67 DUPTABLE                         R5 K26 [{["testId"] = "--appkit-chat-actions", ["AutomaticSize"], ["Size"], ["tag"] = "row align-y-center gap-xsmall padding-y-xxsmall"}]
       68 GETIMPORT                        R6 K29 [Enum.AutomaticSize.XY]
       70 SETTABLEKS                       R6 R5 K22 ["AutomaticSize"]
       72 GETIMPORT                        R6 K32 [UDim2.fromOffset]
       74 LOADN                            R7 0
       75 LOADN                            R8 0
       76 CALL                             R6 2 1
       77 SETTABLEKS                       R6 R5 K23 ["Size"]
       79 MOVE                             R6 R2
       80 CALL                             R3 3 -1
       81 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R0 K2 ["isOutgoing"]
        8 JUMPIFEQKB                       R3 TRUE ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 GETTABLEKS                       R4 R0 K3 ["isPrompt"]
       14 JUMPIFEQKB                       R4 TRUE ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 JUMPIFNOT                        R2 ; [+2]
       19 LOADK                            R4 K4 ["outgoing"]
       20 JUMP                             ; [+1]
       21 LOADK                            R4 K5 ["incoming"]
       22 GETTABLEKS                       R5 R1 K6 ["Size"]
       24 GETTABLEKS                       R5 R5 K7 ["Size_800"]
       26 GETTABLEKS                       R7 R0 K8 ["messages"]
       28 LENGTH                           R6 R7
       29 JUMPIFNOT                        R3 ; [+177]
       30 JUMPIF                           R2 ; [+176]
       31 NEWTABLE                         R7 0 0
       33 GETTABLEKS                       R8 R0 K8 ["messages"]
       35 LOADNIL                          R9
       36 LOADNIL                          R10
       37 FORGPREP                         R8
       38 LOADK                            R14 K9 ["line_%*"]
       39 MOVE                             R16 R11
       40 NAMECALL                         R14 R14 K10 ["format"]
       42 CALL                             R14 2 1
       43 MOVE                             R13 R14
       44 GETUPVAL                         R14 1
       45 GETUPVAL                         R15 0
       46 GETTABLEKS                       R15 R15 K11 ["Text"]
       48 DUPTABLE                         R16 K16 [{["Text"], ["LayoutOrder"], ["Size"], ["AutomaticSize"], ["tag"] = "text-body-medium content-emphasis text-wrap text-align-x-left"}]
       49 SETTABLEKS                       R12 R16 K11 ["Text"]
       51 SETTABLEKS                       R11 R16 K12 ["LayoutOrder"]
       53 GETIMPORT                        R17 K19 [UDim2.new]
       55 LOADN                            R18 1
       56 LOADN                            R19 0
       57 LOADN                            R20 0
       58 LOADN                            R21 0
       59 CALL                             R17 4 1
       60 SETTABLEKS                       R17 R16 K6 ["Size"]
       62 GETIMPORT                        R17 K22 [Enum.AutomaticSize.Y]
       64 SETTABLEKS                       R17 R16 K13 ["AutomaticSize"]
       66 CALL                             R14 2 1
       67 SETTABLE                         R14 R7 R13
       68 FORGLOOP                         R8 2 ; [-31]
       70 DUPTABLE                         R8 K24 [{"Body"}]
       71 GETUPVAL                         R9 1
       72 GETUPVAL                         R10 0
       73 GETTABLEKS                       R10 R10 K25 ["View"]
       75 DUPTABLE                         R11 K29 [{["LayoutOrder"] = 1, ["Size"], ["AutomaticSize"], ["tag"] = "padding-right-xxlarge", ["layout"]}]
       76 GETIMPORT                        R12 K19 [UDim2.new]
       78 LOADN                            R13 1
       79 LOADN                            R14 0
       80 LOADN                            R15 0
       81 LOADN                            R16 0
       82 CALL                             R12 4 1
       83 SETTABLEKS                       R12 R11 K6 ["Size"]
       85 GETIMPORT                        R12 K22 [Enum.AutomaticSize.Y]
       87 SETTABLEKS                       R12 R11 K13 ["AutomaticSize"]
       89 DUPTABLE                         R12 K34 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
       90 GETIMPORT                        R13 K36 [Enum.FillDirection.Vertical]
       92 SETTABLEKS                       R13 R12 K30 ["FillDirection"]
       94 GETIMPORT                        R13 K38 [Enum.HorizontalAlignment.Left]
       96 SETTABLEKS                       R13 R12 K31 ["HorizontalAlignment"]
       98 GETIMPORT                        R13 K39 [Enum.SortOrder.LayoutOrder]
      100 SETTABLEKS                       R13 R12 K32 ["SortOrder"]
      102 GETIMPORT                        R13 K41 [UDim.new]
      104 LOADN                            R14 0
      105 GETTABLEKS                       R15 R1 K42 ["Gap"]
      107 GETTABLEKS                       R15 R15 K43 ["XSmall"]
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K33 ["Padding"]
      112 SETTABLEKS                       R12 R11 K28 ["layout"]
      114 MOVE                             R12 R7
      115 CALL                             R9 3 1
      116 SETTABLEKS                       R9 R8 K23 ["Body"]
      118 GETTABLEKS                       R9 R0 K44 ["actions"]
      120 JUMPIFEQKNIL                     R9 ; [+36]
      122 GETTABLEKS                       R10 R0 K44 ["actions"]
      124 LENGTH                           R9 R10
      125 LOADN                            R10 0
      126 JUMPIFNOTLT                      R10 R9 ; [+30]
      128 GETUPVAL                         R9 1
      129 GETUPVAL                         R10 0
      130 GETTABLEKS                       R10 R10 K25 ["View"]
      132 DUPTABLE                         R11 K46 [{["LayoutOrder"] = 2, ["AutomaticSize"], ["Size"]}]
      133 GETIMPORT                        R12 K22 [Enum.AutomaticSize.Y]
      135 SETTABLEKS                       R12 R11 K13 ["AutomaticSize"]
      137 GETIMPORT                        R12 K19 [UDim2.new]
      139 LOADN                            R13 1
      140 LOADN                            R14 0
      141 LOADN                            R15 0
      142 LOADN                            R16 0
      143 CALL                             R12 4 1
      144 SETTABLEKS                       R12 R11 K6 ["Size"]
      146 DUPTABLE                         R12 K48 [{"Toolbar"}]
      147 GETUPVAL                         R13 2
      148 MOVE                             R14 R1
      149 GETTABLEKS                       R15 R0 K44 ["actions"]
      151 CALL                             R13 2 1
      152 SETTABLEKS                       R13 R12 K47 ["Toolbar"]
      154 CALL                             R9 3 1
      155 SETTABLEKS                       R9 R8 K49 ["Actions"]
      157 GETUPVAL                         R9 1
      158 GETUPVAL                         R10 0
      159 GETTABLEKS                       R10 R10 K25 ["View"]
      161 DUPTABLE                         R11 K52 [{["testId"] = "--appkit-chat-bubble", ["LayoutOrder"], ["Size"], ["AutomaticSize"], ["layout"]}]
      162 GETTABLEKS                       R12 R0 K12 ["LayoutOrder"]
      164 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
      166 GETIMPORT                        R12 K19 [UDim2.new]
      168 LOADN                            R13 1
      169 LOADN                            R14 0
      170 LOADN                            R15 0
      171 LOADN                            R16 0
      172 CALL                             R12 4 1
      173 SETTABLEKS                       R12 R11 K6 ["Size"]
      175 GETIMPORT                        R12 K22 [Enum.AutomaticSize.Y]
      177 SETTABLEKS                       R12 R11 K13 ["AutomaticSize"]
      179 DUPTABLE                         R12 K34 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
      180 GETIMPORT                        R13 K36 [Enum.FillDirection.Vertical]
      182 SETTABLEKS                       R13 R12 K30 ["FillDirection"]
      184 GETIMPORT                        R13 K38 [Enum.HorizontalAlignment.Left]
      186 SETTABLEKS                       R13 R12 K31 ["HorizontalAlignment"]
      188 GETIMPORT                        R13 K39 [Enum.SortOrder.LayoutOrder]
      190 SETTABLEKS                       R13 R12 K32 ["SortOrder"]
      192 GETIMPORT                        R13 K41 [UDim.new]
      194 LOADN                            R14 0
      195 GETTABLEKS                       R15 R1 K42 ["Gap"]
      197 GETTABLEKS                       R15 R15 K43 ["XSmall"]
      199 CALL                             R13 2 1
      200 SETTABLEKS                       R13 R12 K33 ["Padding"]
      202 SETTABLEKS                       R12 R11 K28 ["layout"]
      204 MOVE                             R12 R8
      205 CALL                             R9 3 -1
      206 RETURN                           R9 -1
      207 NEWTABLE                         R7 0 0
      209 GETTABLEKS                       R8 R0 K8 ["messages"]
      211 LOADNIL                          R9
      212 LOADNIL                          R10
      213 FORGPREP                         R8
      214 JUMPIFNOTEQKN                    R6 K26 [1] ; [+3]
      216 LOADK                            R13 K53 ["solo"]
      217 JUMP                             ; [+9]
      218 JUMPIFNOTEQKN                    R11 K26 [1] ; [+3]
      220 LOADK                            R13 K54 ["first"]
      221 JUMP                             ; [+5]
      222 JUMPIFNOTEQ                      R11 R6 ; [+3]
      224 LOADK                            R13 K55 ["last"]
      225 JUMP                             ; [+1]
      226 LOADK                            R13 K56 ["middle"]
      227 LOADK                            R15 K57 ["msg_%*"]
      228 MOVE                             R17 R11
      229 NAMECALL                         R15 R15 K10 ["format"]
      231 CALL                             R15 2 1
      232 MOVE                             R14 R15
      233 GETUPVAL                         R15 3
      234 MOVE                             R16 R1
      235 MOVE                             R17 R4
      236 MOVE                             R18 R12
      237 MOVE                             R19 R11
      238 MOVE                             R20 R13
      239 CALL                             R15 5 1
      240 SETTABLE                         R15 R7 R14
      241 FORGLOOP                         R8 2 ; [-28]
      243 GETUPVAL                         R8 1
      244 GETUPVAL                         R9 0
      245 GETTABLEKS                       R9 R9 K25 ["View"]
      247 DUPTABLE                         R10 K58 [{"Size", "AutomaticSize", "layout"}]
      248 GETIMPORT                        R11 K19 [UDim2.new]
      250 LOADN                            R12 1
      251 LOADN                            R13 0
      252 LOADN                            R14 0
      253 LOADN                            R15 0
      254 CALL                             R11 4 1
      255 SETTABLEKS                       R11 R10 K6 ["Size"]
      257 GETIMPORT                        R11 K22 [Enum.AutomaticSize.Y]
      259 SETTABLEKS                       R11 R10 K13 ["AutomaticSize"]
      261 DUPTABLE                         R11 K34 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
      262 GETIMPORT                        R12 K36 [Enum.FillDirection.Vertical]
      264 SETTABLEKS                       R12 R11 K30 ["FillDirection"]
      266 JUMPIFNOT                        R2 ; [+3]
      267 GETIMPORT                        R12 K60 [Enum.HorizontalAlignment.Right]
      269 JUMP                             ; [+2]
      270 GETIMPORT                        R12 K38 [Enum.HorizontalAlignment.Left]
      272 SETTABLEKS                       R12 R11 K31 ["HorizontalAlignment"]
      274 GETIMPORT                        R12 K39 [Enum.SortOrder.LayoutOrder]
      276 SETTABLEKS                       R12 R11 K32 ["SortOrder"]
      278 GETIMPORT                        R12 K41 [UDim.new]
      280 LOADN                            R13 0
      281 GETTABLEKS                       R14 R1 K42 ["Gap"]
      283 GETTABLEKS                       R14 R14 K61 ["XXSmall"]
      285 CALL                             R12 2 1
      286 SETTABLEKS                       R12 R11 K33 ["Padding"]
      288 SETTABLEKS                       R11 R10 K28 ["layout"]
      290 MOVE                             R11 R7
      291 CALL                             R8 3 1
      292 JUMPIFNOT                        R2 ; [+104]
      293 DUPTABLE                         R9 K63 [{"Stack"}]
      294 GETUPVAL                         R10 1
      295 GETUPVAL                         R11 0
      296 GETTABLEKS                       R11 R11 K25 ["View"]
      298 DUPTABLE                         R12 K64 [{["LayoutOrder"] = 1, ["Size"], ["AutomaticSize"]}]
      299 GETIMPORT                        R13 K19 [UDim2.new]
      301 LOADN                            R14 1
      302 LOADN                            R15 0
      303 LOADN                            R16 0
      304 LOADN                            R17 0
      305 CALL                             R13 4 1
      306 SETTABLEKS                       R13 R12 K6 ["Size"]
      308 GETIMPORT                        R13 K22 [Enum.AutomaticSize.Y]
      310 SETTABLEKS                       R13 R12 K13 ["AutomaticSize"]
      312 DUPTABLE                         R13 K66 [{"Bubbles"}]
      313 SETTABLEKS                       R8 R13 K65 ["Bubbles"]
      315 CALL                             R10 3 1
      316 SETTABLEKS                       R10 R9 K62 ["Stack"]
      318 GETTABLEKS                       R10 R0 K67 ["status"]
      320 JUMPIFEQKNIL                     R10 ; [+26]
      322 GETUPVAL                         R10 1
      323 GETUPVAL                         R11 0
      324 GETTABLEKS                       R11 R11 K11 ["Text"]
      326 DUPTABLE                         R12 K69 [{["Text"], ["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["tag"] = "text-body-small content-default text-align-x-right padding-right-medium"}]
      327 GETTABLEKS                       R13 R0 K67 ["status"]
      329 SETTABLEKS                       R13 R12 K11 ["Text"]
      331 GETIMPORT                        R13 K19 [UDim2.new]
      333 LOADN                            R14 1
      334 LOADN                            R15 0
      335 LOADN                            R16 0
      336 LOADN                            R17 0
      337 CALL                             R13 4 1
      338 SETTABLEKS                       R13 R12 K6 ["Size"]
      340 GETIMPORT                        R13 K22 [Enum.AutomaticSize.Y]
      342 SETTABLEKS                       R13 R12 K13 ["AutomaticSize"]
      344 CALL                             R10 2 1
      345 SETTABLEKS                       R10 R9 K70 ["Status"]
      347 GETUPVAL                         R10 1
      348 GETUPVAL                         R11 0
      349 GETTABLEKS                       R11 R11 K25 ["View"]
      351 DUPTABLE                         R12 K52 [{["testId"] = "--appkit-chat-bubble", ["LayoutOrder"], ["Size"], ["AutomaticSize"], ["layout"]}]
      352 GETTABLEKS                       R13 R0 K12 ["LayoutOrder"]
      354 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      356 GETIMPORT                        R13 K19 [UDim2.new]
      358 LOADN                            R14 1
      359 LOADN                            R15 0
      360 LOADN                            R16 0
      361 LOADN                            R17 0
      362 CALL                             R13 4 1
      363 SETTABLEKS                       R13 R12 K6 ["Size"]
      365 GETIMPORT                        R13 K22 [Enum.AutomaticSize.Y]
      367 SETTABLEKS                       R13 R12 K13 ["AutomaticSize"]
      369 DUPTABLE                         R13 K34 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
      370 GETIMPORT                        R14 K36 [Enum.FillDirection.Vertical]
      372 SETTABLEKS                       R14 R13 K30 ["FillDirection"]
      374 GETIMPORT                        R14 K60 [Enum.HorizontalAlignment.Right]
      376 SETTABLEKS                       R14 R13 K31 ["HorizontalAlignment"]
      378 GETIMPORT                        R14 K39 [Enum.SortOrder.LayoutOrder]
      380 SETTABLEKS                       R14 R13 K32 ["SortOrder"]
      382 GETIMPORT                        R14 K41 [UDim.new]
      384 LOADN                            R15 0
      385 GETTABLEKS                       R16 R1 K42 ["Gap"]
      387 GETTABLEKS                       R16 R16 K43 ["XSmall"]
      389 CALL                             R14 2 1
      390 SETTABLEKS                       R14 R13 K33 ["Padding"]
      392 SETTABLEKS                       R13 R12 K28 ["layout"]
      394 MOVE                             R13 R9
      395 CALL                             R10 3 -1
      396 RETURN                           R10 -1
      397 DUPTABLE                         R9 K66 [{"Bubbles"}]
      398 GETUPVAL                         R10 1
      399 GETUPVAL                         R11 0
      400 GETTABLEKS                       R11 R11 K25 ["View"]
      402 DUPTABLE                         R12 K71 [{["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"]}]
      403 GETIMPORT                        R13 K19 [UDim2.new]
      405 LOADN                            R14 1
      406 LOADN                            R15 0
      407 LOADN                            R16 0
      408 LOADN                            R17 0
      409 CALL                             R13 4 1
      410 SETTABLEKS                       R13 R12 K6 ["Size"]
      412 GETIMPORT                        R13 K22 [Enum.AutomaticSize.Y]
      414 SETTABLEKS                       R13 R12 K13 ["AutomaticSize"]
      416 DUPTABLE                         R13 K63 [{"Stack"}]
      417 SETTABLEKS                       R8 R13 K62 ["Stack"]
      419 CALL                             R10 3 1
      420 SETTABLEKS                       R10 R9 K65 ["Bubbles"]
      422 GETTABLEKS                       R10 R0 K72 ["displayName"]
      424 JUMPIFEQKNIL                     R10 ; [+26]
      426 GETUPVAL                         R10 1
      427 GETUPVAL                         R11 0
      428 GETTABLEKS                       R11 R11 K11 ["Text"]
      430 DUPTABLE                         R12 K74 [{["Text"], ["LayoutOrder"] = 1, ["Size"], ["AutomaticSize"], ["tag"] = "text-body-small content-default text-align-x-left padding-left-medium"}]
      431 GETTABLEKS                       R13 R0 K72 ["displayName"]
      433 SETTABLEKS                       R13 R12 K11 ["Text"]
      435 GETIMPORT                        R13 K19 [UDim2.new]
      437 LOADN                            R14 1
      438 LOADN                            R15 0
      439 LOADN                            R16 0
      440 LOADN                            R17 0
      441 CALL                             R13 4 1
      442 SETTABLEKS                       R13 R12 K6 ["Size"]
      444 GETIMPORT                        R13 K22 [Enum.AutomaticSize.Y]
      446 SETTABLEKS                       R13 R12 K13 ["AutomaticSize"]
      448 CALL                             R10 2 1
      449 SETTABLEKS                       R10 R9 K75 ["Name"]
      451 GETUPVAL                         R10 1
      452 GETUPVAL                         R11 0
      453 GETTABLEKS                       R11 R11 K25 ["View"]
      455 DUPTABLE                         R12 K52 [{["testId"] = "--appkit-chat-bubble", ["LayoutOrder"], ["Size"], ["AutomaticSize"], ["layout"]}]
      456 GETTABLEKS                       R13 R0 K12 ["LayoutOrder"]
      458 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      460 GETIMPORT                        R13 K19 [UDim2.new]
      462 LOADN                            R14 1
      463 LOADN                            R15 0
      464 LOADN                            R16 0
      465 LOADN                            R17 0
      466 CALL                             R13 4 1
      467 SETTABLEKS                       R13 R12 K6 ["Size"]
      469 GETIMPORT                        R13 K22 [Enum.AutomaticSize.Y]
      471 SETTABLEKS                       R13 R12 K13 ["AutomaticSize"]
      473 DUPTABLE                         R13 K77 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      474 GETIMPORT                        R14 K79 [Enum.FillDirection.Horizontal]
      476 SETTABLEKS                       R14 R13 K30 ["FillDirection"]
      478 GETIMPORT                        R14 K81 [Enum.VerticalAlignment.Bottom]
      480 SETTABLEKS                       R14 R13 K76 ["VerticalAlignment"]
      482 GETIMPORT                        R14 K39 [Enum.SortOrder.LayoutOrder]
      484 SETTABLEKS                       R14 R13 K32 ["SortOrder"]
      486 GETIMPORT                        R14 K41 [UDim.new]
      488 LOADN                            R15 0
      489 GETTABLEKS                       R16 R1 K42 ["Gap"]
      491 GETTABLEKS                       R16 R16 K82 ["Small"]
      493 CALL                             R14 2 1
      494 SETTABLEKS                       R14 R13 K33 ["Padding"]
      496 SETTABLEKS                       R13 R12 K28 ["layout"]
      498 DUPTABLE                         R13 K84 [{"Avatar", "Body"}]
      499 GETUPVAL                         R14 1
      500 GETUPVAL                         R15 0
      501 GETTABLEKS                       R15 R15 K25 ["View"]
      503 DUPTABLE                         R16 K85 [{["LayoutOrder"] = 1, ["Size"]}]
      504 GETIMPORT                        R17 K87 [UDim2.fromOffset]
      506 MOVE                             R18 R5
      507 MOVE                             R19 R5
      508 CALL                             R17 2 1
      509 SETTABLEKS                       R17 R16 K6 ["Size"]
      511 DUPTABLE                         R17 K89 [{"Inner"}]
      512 GETTABLEKS                       R19 R0 K90 ["userId"]
      514 GETTABLEKS                       R20 R0 K91 ["avatarInitials"]
      516 GETUPVAL                         R21 0
      517 GETTABLEKS                       R21 R21 K92 ["Enums"]
      519 GETTABLEKS                       R21 R21 K93 ["InputSize"]
      521 GETTABLEKS                       R21 R21 K82 ["Small"]
      523 GETTABLEKS                       R22 R0 K94 ["userPresence"]
      525 JUMPIF                           R22 ; [+7]
      526 GETUPVAL                         R22 4
      527 GETTABLEKS                       R23 R0 K95 ["avatarStatus"]
      529 JUMPIF                           R23 ; [+2]
      530 GETTABLEKS                       R23 R0 K67 ["status"]
      532 CALL                             R22 1 1
      533 JUMPIFEQKNIL                     R19 ; [+15]
      535 GETUPVAL                         R23 1
      536 GETUPVAL                         R24 0
      537 GETTABLEKS                       R24 R24 K83 ["Avatar"]
      539 DUPTABLE                         R25 K97 [{"userId", "size", "userPresence"}]
      540 SETTABLEKS                       R19 R25 K90 ["userId"]
      542 SETTABLEKS                       R21 R25 K96 ["size"]
      544 SETTABLEKS                       R22 R25 K94 ["userPresence"]
      546 CALL                             R23 2 1
      547 MOVE                             R18 R23
      548 JUMP                             ; [+5]
      549 GETUPVAL                         R23 5
      550 MOVE                             R24 R20
      551 MOVE                             R25 R5
      552 CALL                             R23 2 1
      553 MOVE                             R18 R23
      554 SETTABLEKS                       R18 R17 K88 ["Inner"]
      556 CALL                             R14 3 1
      557 SETTABLEKS                       R14 R13 K83 ["Avatar"]
      559 GETUPVAL                         R14 1
      560 GETUPVAL                         R15 0
      561 GETTABLEKS                       R15 R15 K25 ["View"]
      563 DUPTABLE                         R16 K98 [{["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["layout"]}]
      564 GETIMPORT                        R17 K19 [UDim2.new]
      566 LOADN                            R18 1
      567 GETTABLEKS                       R21 R1 K42 ["Gap"]
      569 GETTABLEKS                       R21 R21 K82 ["Small"]
      571 ADD                              R20 R5 R21
      572 MINUS                            R19 R20
      573 LOADN                            R20 0
      574 LOADN                            R21 0
      575 CALL                             R17 4 1
      576 SETTABLEKS                       R17 R16 K6 ["Size"]
      578 GETIMPORT                        R17 K22 [Enum.AutomaticSize.Y]
      580 SETTABLEKS                       R17 R16 K13 ["AutomaticSize"]
      582 DUPTABLE                         R17 K34 [{"FillDirection", "HorizontalAlignment", "SortOrder", "Padding"}]
      583 GETIMPORT                        R18 K36 [Enum.FillDirection.Vertical]
      585 SETTABLEKS                       R18 R17 K30 ["FillDirection"]
      587 GETIMPORT                        R18 K38 [Enum.HorizontalAlignment.Left]
      589 SETTABLEKS                       R18 R17 K31 ["HorizontalAlignment"]
      591 GETIMPORT                        R18 K39 [Enum.SortOrder.LayoutOrder]
      593 SETTABLEKS                       R18 R17 K32 ["SortOrder"]
      595 GETIMPORT                        R18 K41 [UDim.new]
      597 LOADN                            R19 0
      598 GETTABLEKS                       R20 R1 K42 ["Gap"]
      600 GETTABLEKS                       R20 R20 K43 ["XSmall"]
      602 CALL                             R18 2 1
      603 SETTABLEKS                       R18 R17 K33 ["Padding"]
      605 SETTABLEKS                       R17 R16 K28 ["layout"]
      607 MOVE                             R17 R9
      608 CALL                             R14 3 1
      609 SETTABLEKS                       R14 R13 K23 ["Body"]
      611 CALL                             R10 3 -1
      612 RETURN                           R10 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 GETTABLEKS                       R4 R0 K2 ["actions"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.ChatBubble must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R3 R1 K12 ["createElement"]
       30 DUPCLOSURE                       R4 K13 [PROTO_0]
       31 DUPCLOSURE                       R5 K14 [PROTO_1]
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 DUPCLOSURE                       R6 K15 [PROTO_2]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 DUPCLOSURE                       R7 K16 [PROTO_3]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R6
       41 DUPCLOSURE                       R8 K17 [PROTO_4]
       42 CAPTURE                          VAL R2
       43 DUPCLOSURE                       R9 K18 [PROTO_6]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 DUPCLOSURE                       R10 K19 [PROTO_7]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R6
       53 DUPCLOSURE                       R11 K20 [PROTO_8]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R9
       56 DUPTABLE                         R12 K25 [{"ChatBubble", "avatarFor", "InitialsAvatar", "ChatBubbleActions"}]
       57 SETTABLEKS                       R10 R12 K21 ["ChatBubble"]
       59 SETTABLEKS                       R7 R12 K22 ["avatarFor"]
       61 SETTABLEKS                       R6 R12 K23 ["InitialsAvatar"]
       63 SETTABLEKS                       R11 R12 K24 ["ChatBubbleActions"]
       65 RETURN                           R12 1
