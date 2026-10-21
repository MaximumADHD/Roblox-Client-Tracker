PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GetFFlagOverrides"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETIMPORT                        R2 K4 [warn]
       15 LOADK                            R3 K5 ["Failed to get FFlagOverrides:"]
       16 MOVE                             R4 R1
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 1
       19 NEWTABLE                         R3 0 0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetFFlagOverrides"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+5]
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K1 ["Please enter a flag name"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K2 ["join"]
       10 GETUPVAL                         R1 3
       11 NEWTABLE                         R2 1 0
       13 GETUPVAL                         R3 0
       14 GETUPVAL                         R4 4
       15 SETTABLE                         R4 R2 R3
       16 CALL                             R0 2 1
       17 GETUPVAL                         R1 5
       18 MOVE                             R3 R0
       19 NAMECALL                         R1 R1 K3 ["JSONEncode"]
       21 CALL                             R1 2 1
       22 GETIMPORT                        R2 K5 [pcall]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U6
       26 CAPTURE                          VAL R1
       27 CALL                             R2 1 2
       28 JUMPIFNOT                        R2 ; [+17]
       29 GETUPVAL                         R4 1
       30 LOADK                            R5 K6 ["Set %* = %*"]
       31 GETUPVAL                         R7 0
       32 GETUPVAL                         R8 4
       33 NAMECALL                         R5 R5 K7 ["format"]
       35 CALL                             R5 3 1
       36 CALL                             R4 1 0
       37 GETUPVAL                         R4 7
       38 LOADK                            R5 K0 [""]
       39 CALL                             R4 1 0
       40 GETUPVAL                         R4 8
       41 LOADK                            R5 K0 [""]
       42 CALL                             R4 1 0
       43 GETUPVAL                         R4 9
       44 CALL                             R4 0 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R4 1
       47 LOADK                            R5 K8 ["Error: %*"]
       48 MOVE                             R7 R3
       49 NAMECALL                         R5 R5 K7 ["format"]
       51 CALL                             R5 2 1
       52 CALL                             R4 1 0
       53 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [tostring]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["createElement"]
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K6 [{["tag"] = "auto-xy content-default text-body-small", ["Text"]}]
       10 LOADK                            R6 K7 ["%*: %*"]
       11 MOVE                             R8 R1
       12 MOVE                             R9 R2
       13 NAMECALL                         R6 R6 K8 ["format"]
       15 CALL                             R6 3 1
       16 SETTABLEKS                       R6 R5 K5 ["Text"]
       18 CALL                             R3 2 -1
       19 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 NEWTABLE                         R1 0 0
        5 CALL                             R0 1 2
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["useState"]
        9 LOADK                            R3 K1 [""]
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K0 ["useState"]
       14 LOADK                            R5 K1 [""]
       15 CALL                             R4 1 2
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K0 ["useState"]
       19 LOADK                            R7 K1 [""]
       20 CALL                             R6 1 2
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       24 NEWCLOSURE                       R9 P0
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R10 0 0
       29 CALL                             R8 2 1
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K3 ["useEffect"]
       33 NEWCLOSURE                       R10 P1
       34 CAPTURE                          VAL R8
       35 NEWTABLE                         R11 0 0
       37 CALL                             R9 2 0
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K2 ["useCallback"]
       41 NEWCLOSURE                       R10 P2
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R7
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R4
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R8
       52 NEWTABLE                         R11 0 4
       54 MOVE                             R12 R2
       55 MOVE                             R13 R4
       56 MOVE                             R14 R0
       57 MOVE                             R15 R8
       58 SETLIST                          R11 R12 4 [1]
       60 CALL                             R9 2 1
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K4 ["createElement"]
       64 GETUPVAL                         R11 4
       65 DUPTABLE                         R12 K7 [{["tag"] = "col size-full-0 auto-y gap-medium"}]
       66 DUPTABLE                         R13 K11 [{"Form", "Status", "CurrentOverrides"}]
       67 GETUPVAL                         R14 0
       68 GETTABLEKS                       R14 R14 K4 ["createElement"]
       70 GETUPVAL                         R15 4
       71 DUPTABLE                         R16 K15 [{["tag"] = "row size-full-0 auto-y gap-small align-y-bottom", ["LayoutOrder"] = 1}]
       72 DUPTABLE                         R17 K19 [{"Name", "Value", "Submit"}]
       73 GETUPVAL                         R18 0
       74 GETTABLEKS                       R18 R18 K4 ["createElement"]
       76 GETUPVAL                         R19 5
       77 DUPTABLE                         R20 K28 [{["text"], ["size"], ["label"] = "Flag Name", ["placeholder"] = "DFFlagMyFlag", ["onChanged"], ["width"], ["LayoutOrder"] = 1}]
       78 SETTABLEKS                       R2 R20 K20 ["text"]
       80 GETUPVAL                         R21 6
       81 GETTABLEKS                       R21 R21 K29 ["Small"]
       83 SETTABLEKS                       R21 R20 K21 ["size"]
       85 SETTABLEKS                       R3 R20 K26 ["onChanged"]
       87 GETIMPORT                        R21 K32 [UDim.new]
       89 LOADK                            R22 K33 [0.4]
       90 LOADN                            R23 0
       91 CALL                             R21 2 1
       92 SETTABLEKS                       R21 R20 K27 ["width"]
       94 CALL                             R18 2 1
       95 SETTABLEKS                       R18 R17 K16 ["Name"]
       97 GETUPVAL                         R18 0
       98 GETTABLEKS                       R18 R18 K4 ["createElement"]
      100 GETUPVAL                         R19 5
      101 DUPTABLE                         R20 K36 [{["text"], ["size"], ["label"] = "Value", ["placeholder"] = "true", ["onChanged"], ["width"], ["LayoutOrder"] = 2}]
      102 SETTABLEKS                       R4 R20 K20 ["text"]
      104 GETUPVAL                         R21 6
      105 GETTABLEKS                       R21 R21 K29 ["Small"]
      107 SETTABLEKS                       R21 R20 K21 ["size"]
      109 SETTABLEKS                       R5 R20 K26 ["onChanged"]
      111 GETIMPORT                        R21 K32 [UDim.new]
      113 LOADK                            R22 K33 [0.4]
      114 LOADN                            R23 0
      115 CALL                             R21 2 1
      116 SETTABLEKS                       R21 R20 K27 ["width"]
      118 CALL                             R18 2 1
      119 SETTABLEKS                       R18 R17 K17 ["Value"]
      121 GETUPVAL                         R18 0
      122 GETTABLEKS                       R18 R18 K4 ["createElement"]
      124 GETUPVAL                         R19 7
      125 DUPTABLE                         R20 K40 [{["text"] = "Add", ["size"], ["onActivated"], ["LayoutOrder"] = 3}]
      126 GETUPVAL                         R21 8
      127 GETTABLEKS                       R21 R21 K29 ["Small"]
      129 SETTABLEKS                       R21 R20 K21 ["size"]
      131 SETTABLEKS                       R9 R20 K38 ["onActivated"]
      133 CALL                             R18 2 1
      134 SETTABLEKS                       R18 R17 K18 ["Submit"]
      136 CALL                             R14 3 1
      137 SETTABLEKS                       R14 R13 K8 ["Form"]
      139 JUMPIFEQKS                       R6 K1 [""] ; [+10]
      141 GETUPVAL                         R14 0
      142 GETTABLEKS                       R14 R14 K4 ["createElement"]
      144 GETUPVAL                         R15 9
      145 DUPTABLE                         R16 K43 [{["tag"] = "auto-xy content-default text-body-small", ["Text"], ["LayoutOrder"] = 2}]
      146 SETTABLEKS                       R6 R16 K42 ["Text"]
      148 CALL                             R14 2 1
      149 JUMP                             ; [+1]
      150 LOADNIL                          R14
      151 SETTABLEKS                       R14 R13 K9 ["Status"]
      153 GETUPVAL                         R14 0
      154 GETTABLEKS                       R14 R14 K4 ["createElement"]
      156 GETUPVAL                         R15 4
      157 DUPTABLE                         R16 K45 [{["tag"] = "col size-full-0 auto-y bg-surface-100 radius-medium padding-small gap-xsmall", ["LayoutOrder"] = 3}]
      158 GETUPVAL                         R17 2
      159 GETTABLEKS                       R17 R17 K46 ["join"]
      161 DUPTABLE                         R18 K48 [{"Header"}]
      162 GETUPVAL                         R19 0
      163 GETTABLEKS                       R19 R19 K4 ["createElement"]
      165 GETUPVAL                         R20 9
      166 DUPTABLE                         R21 K52 [{["tag"] = "auto-xy content-emphasis text-body-small", ["Text"] = "Current Overrides:", ["LayoutOrder"] = 0}]
      167 CALL                             R19 2 1
      168 SETTABLEKS                       R19 R18 K47 ["Header"]
      170 GETUPVAL                         R19 2
      171 GETTABLEKS                       R19 R19 K53 ["map"]
      173 MOVE                             R20 R0
      174 DUPCLOSURE                       R21 K54 [PROTO_5]
      175 CAPTURE                          UPVAL U0
      176 CAPTURE                          UPVAL U9
      177 CALL                             R19 2 -1
      178 CALL                             R17 -1 -1
      179 CALL                             R14 -1 1
      180 SETTABLEKS                       R14 R13 K10 ["CurrentOverrides"]
      182 CALL                             R10 3 -1
      183 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["FlagEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Dash"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["Foundation"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R5 K14 ["Button"]
       32 GETTABLEKS                       R7 R5 K15 ["Text"]
       34 GETTABLEKS                       R8 R5 K16 ["TextInput"]
       36 GETTABLEKS                       R9 R5 K17 ["View"]
       38 GETTABLEKS                       R10 R5 K18 ["Enums"]
       40 GETTABLEKS                       R10 R10 K19 ["ButtonSize"]
       42 GETTABLEKS                       R11 R5 K18 ["Enums"]
       44 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       46 GETIMPORT                        R12 K10 [require]
       48 GETTABLEKS                       R13 R1 K21 ["Settings"]
       50 CALL                             R12 1 1
       51 DUPTABLE                         R13 K27 [{["name"] = "Overrides", ["summary"] = "View and set FFlagOverrides. EnableLocalFlagLuaApis must be enabled.", ["story"]}]
       52 DUPCLOSURE                       R14 K28 [PROTO_6]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R12
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R7
       63 SETTABLEKS                       R14 R13 K26 ["story"]
       65 RETURN                           R13 1
