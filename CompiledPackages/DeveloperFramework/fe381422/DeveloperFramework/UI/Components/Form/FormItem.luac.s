PROTO_0:
        0 GETIMPORT                        R0 K3 [Enum.PropertyStatus.Ok]
        2 LOADK                            R1 K4 [""]
        3 RETURN                           R0 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnValidate"]
        5 JUMPIF                           R2 ; [+10]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["DefaultValidation"]
        9 GETTABLEKS                       R4 R1 K3 ["Schema"]
       11 GETTABLEKS                       R4 R4 K4 ["Type"]
       13 GETTABLE                         R2 R3 R4
       14 JUMPIF                           R2 ; [+1]
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R2
       17 MOVE                             R4 R0
       18 GETTABLEKS                       R5 R1 K3 ["Schema"]
       20 CALL                             R3 2 2
       21 GETIMPORT                        R5 K8 [Enum.PropertyStatus.Error]
       23 JUMPIFNOTEQ                      R3 R5 ; [+13]
       25 GETUPVAL                         R5 0
       26 DUPTABLE                         R7 K11 [{"Status", "Error", "Value"}]
       27 SETTABLEKS                       R3 R7 K9 ["Status"]
       29 SETTABLEKS                       R4 R7 K7 ["Error"]
       31 SETTABLEKS                       R0 R7 K10 ["Value"]
       33 NAMECALL                         R5 R5 K12 ["setState"]
       35 CALL                             R5 2 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R5 0
       38 DUPTABLE                         R7 K11 [{"Status", "Error", "Value"}]
       39 SETTABLEKS                       R3 R7 K9 ["Status"]
       41 SETTABLEKS                       R4 R7 K7 ["Error"]
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R8 R8 K13 ["None"]
       46 SETTABLEKS                       R8 R7 K10 ["Value"]
       48 NAMECALL                         R5 R5 K12 ["setState"]
       50 CALL                             R5 2 0
       51 GETTABLEKS                       R5 R1 K14 ["OnChanged"]
       53 MOVE                             R6 R0
       54 CALL                             R5 1 0
       55 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+10]
        1 JUMPIFNOTEQ                      R0 R0 ; [+9]
        3 JUMPIFEQKN                       R0 K0 [Infinity] ; [+7]
        5 JUMPIFEQKN                       R0 K1 [-Infinity] ; [+5]
        7 GETIMPORT                        R1 K5 [Enum.PropertyStatus.Ok]
        9 LOADK                            R2 K6 [""]
       10 RETURN                           R1 2
       11 GETIMPORT                        R1 K8 [Enum.PropertyStatus.Error]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K9 ["props"]
       16 GETTABLEKS                       R2 R2 K10 ["Localization"]
       18 GETUPVAL                         R4 1
       19 LOADK                            R5 K11 ["FormItem"]
       20 LOADK                            R6 K12 ["NaN"]
       21 NAMECALL                         R2 R2 K13 ["getProjectText"]
       23 CALL                             R2 4 -1
       24 RETURN                           R1 -1

PROTO_3:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [tonumber]
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+14]
        6 GETIMPORT                        R3 K5 [Enum.PropertyStatus.Error]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K6 ["props"]
       11 GETTABLEKS                       R4 R4 K7 ["Localization"]
       13 GETUPVAL                         R6 1
       14 LOADK                            R7 K8 ["FormItem"]
       15 LOADK                            R8 K9 ["NaN"]
       16 NAMECALL                         R4 R4 K10 ["getProjectText"]
       18 CALL                             R4 4 -1
       19 RETURN                           R3 -1
       20 GETTABLEKS                       R3 R1 K11 ["Max"]
       22 JUMPIFLT                         R3 R2 ; [+5]
       24 GETTABLEKS                       R3 R1 K12 ["Min"]
       26 JUMPIFNOTLT                      R2 R3 ; [+15]
       28 GETIMPORT                        R3 K5 [Enum.PropertyStatus.Error]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K6 ["props"]
       33 GETTABLEKS                       R4 R4 K7 ["Localization"]
       35 GETUPVAL                         R6 1
       36 LOADK                            R7 K8 ["FormItem"]
       37 LOADK                            R8 K13 ["OutOfRange"]
       38 NAMECALL                         R4 R4 K10 ["getProjectText"]
       40 CALL                             R4 4 -1
       41 RETURN                           R3 -1
       42 GETIMPORT                        R3 K15 [Enum.PropertyStatus.Ok]
       44 RETURN                           R3 1

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["OnChanged"]
        6 DUPTABLE                         R1 K3 [{"Number", "Slider"}]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["Number"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 SETTABLEKS                       R2 R1 K2 ["Slider"]
       17 SETTABLEKS                       R1 R0 K4 ["DefaultValidation"]
       19 DUPTABLE                         R1 K7 [{["SingleSelectButton"] = 170, ["Slider"] = 170}]
       20 SETTABLEKS                       R1 R0 K8 ["DefaultMinWidths"]
       22 DUPTABLE                         R1 K15 [{["Compact"] = False, ["Expanded"] = False, ["Status"], ["Tooltip"] = ""}]
       23 GETIMPORT                        R2 K19 [Enum.PropertyStatus.Ok]
       25 SETTABLEKS                       R2 R1 K12 ["Status"]
       27 SETTABLEKS                       R1 R0 K20 ["state"]
       29 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnValidate"]
        4 GETTABLEKS                       R3 R1 K2 ["Tooltip"]
        6 GETTABLEKS                       R4 R1 K3 ["Label"]
        8 GETTABLEKS                       R5 R1 K4 ["ItemChildren"]
       10 GETTABLEKS                       R6 R1 K5 ["Style"]
       12 JUMPIFEQKNIL                     R5 ; [+17]
       14 GETTABLEKS                       R8 R6 K6 ["FormItem"]
       16 GETTABLEKS                       R8 R8 K7 ["Arrow"]
       18 GETTABLEKS                       R8 R8 K8 ["Size"]
       20 GETTABLEKS                       R8 R8 K9 ["X"]
       22 GETTABLEKS                       R8 R8 K10 ["Offset"]
       24 GETTABLEKS                       R9 R6 K6 ["FormItem"]
       26 GETTABLEKS                       R9 R9 K11 ["Spacing"]
       28 ADD                              R7 R8 R9
       29 JUMP                             ; [+1]
       30 LOADN                            R7 0
       31 GETTABLEKS                       R9 R6 K6 ["FormItem"]
       33 GETTABLEKS                       R9 R9 K12 ["DepthPadding"]
       35 GETTABLEKS                       R11 R1 K14 ["Depth"]
       37 ORK                              R10 R11 K13 [0]
       38 MUL                              R8 R9 R10
       39 JUMPIF                           R2 ; [+8]
       40 GETTABLEKS                       R11 R0 K15 ["DefaultValidation"]
       42 GETTABLEKS                       R12 R1 K16 ["Schema"]
       44 GETTABLEKS                       R12 R12 K17 ["Type"]
       46 GETTABLE                         R10 R11 R12
       47 JUMPIFNOT                        R10 ; [+10]
       48 GETTABLEKS                       R10 R6 K6 ["FormItem"]
       50 GETTABLEKS                       R10 R10 K18 ["StatusIconSize"]
       52 GETTABLEKS                       R11 R6 K6 ["FormItem"]
       54 GETTABLEKS                       R11 R11 K11 ["Spacing"]
       56 ADD                              R9 R10 R11
       57 JUMP                             ; [+1]
       58 LOADN                            R9 0
       59 JUMPIFNOT                        R4 ; [+19]
       60 GETUPVAL                         R10 0
       61 MOVE                             R12 R4
       62 GETTABLEKS                       R13 R6 K6 ["FormItem"]
       64 GETTABLEKS                       R13 R13 K19 ["FontSize"]
       66 GETTABLEKS                       R14 R6 K6 ["FormItem"]
       68 GETTABLEKS                       R14 R14 K20 ["Font"]
       70 GETIMPORT                        R15 K23 [Vector2.new]
       72 LOADK                            R16 K24 [Infinity]
       73 LOADK                            R17 K24 [Infinity]
       74 CALL                             R15 2 -1
       75 NAMECALL                         R10 R10 K25 ["GetTextSize"]
       77 CALL                             R10 -1 1
       78 JUMP                             ; [+1]
       79 LOADN                            R10 0
       80 JUMPIFNOT                        R3 ; [+10]
       81 GETTABLEKS                       R12 R6 K6 ["FormItem"]
       83 GETTABLEKS                       R12 R12 K26 ["HelpIconSize"]
       85 GETTABLEKS                       R13 R6 K6 ["FormItem"]
       87 GETTABLEKS                       R13 R13 K11 ["Spacing"]
       89 ADD                              R11 R12 R13
       90 JUMP                             ; [+1]
       91 LOADN                            R11 0
       92 ADD                              R16 R7 R8
       93 ADD                              R15 R16 R9
       94 GETTABLEKS                       R16 R10 K9 ["X"]
       96 ADD                              R14 R15 R16
       97 ADD                              R13 R14 R11
       98 JUMPIFNOTEQKNIL                  R5 ; [+6]
      100 GETTABLEKS                       R14 R6 K6 ["FormItem"]
      102 GETTABLEKS                       R14 R14 K27 ["Padding"]
      104 JUMP                             ; [+4]
      105 GETTABLEKS                       R14 R6 K6 ["FormItem"]
      107 GETTABLEKS                       R14 R14 K28 ["WithChildrenPadding"]
      109 ADD                              R12 R13 R14
      110 GETTABLEKS                       R13 R1 K29 ["OnLabelWidthChanged"]
      112 GETTABLEKS                       R14 R0 K30 ["width"]
      114 MOVE                             R15 R12
      115 CALL                             R13 2 0
      116 SETTABLEKS                       R12 R0 K30 ["width"]
      118 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["MinWidth"]
        4 JUMPIF                           R2 ; [+7]
        5 GETTABLEKS                       R3 R0 K2 ["DefaultMinWidths"]
        7 GETTABLEKS                       R4 R1 K3 ["Schema"]
        9 GETTABLEKS                       R4 R4 K4 ["Type"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIFNOT                        R2 ; [+18]
       13 DUPTABLE                         R5 K6 [{"Compact"}]
       14 GETTABLEKS                       R9 R1 K8 ["FormWidth"]
       16 ORK                              R8 R9 K7 [Infinity]
       17 GETTABLEKS                       R9 R1 K9 ["LabelWidth"]
       19 GETTABLEKS                       R9 R9 K10 ["Offset"]
       21 SUB                              R7 R8 R9
       22 JUMPIFLT                         R7 R2 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 SETTABLEKS                       R6 R5 K5 ["Compact"]
       28 NAMECALL                         R3 R0 K11 ["setState"]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["updateRequiredWidth"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["checkCompact"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["OnLabelWidthChanged"]
        4 GETTABLEKS                       R2 R0 K2 ["width"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Value"]
        4 GETTABLEKS                       R4 R2 K2 ["OnValidate"]
        6 GETTABLEKS                       R5 R1 K1 ["Value"]
        8 JUMPIFNOTEQ                      R5 R3 ; [+5]
       10 GETTABLEKS                       R5 R1 K2 ["OnValidate"]
       12 JUMPIFEQ                         R5 R4 ; [+72]
       14 MOVE                             R5 R4
       15 JUMPIF                           R5 ; [+9]
       16 GETTABLEKS                       R6 R0 K3 ["DefaultValidation"]
       18 GETTABLEKS                       R7 R2 K4 ["Schema"]
       20 GETTABLEKS                       R7 R7 K5 ["Type"]
       22 GETTABLE                         R5 R6 R7
       23 JUMPIF                           R5 ; [+1]
       24 GETUPVAL                         R5 0
       25 MOVE                             R6 R5
       26 MOVE                             R7 R3
       27 GETTABLEKS                       R8 R2 K4 ["Schema"]
       29 CALL                             R6 2 2
       30 GETIMPORT                        R8 K9 [Enum.PropertyStatus.Error]
       32 JUMPIFNOTEQ                      R6 R8 ; [+22]
       34 GETTABLEKS                       R8 R0 K10 ["state"]
       36 GETTABLEKS                       R8 R8 K1 ["Value"]
       38 JUMPIF                           R8 ; [+16]
       39 DUPTABLE                         R10 K12 [{"Status", "Error", "Value"}]
       40 SETTABLEKS                       R6 R10 K11 ["Status"]
       42 SETTABLEKS                       R7 R10 K8 ["Error"]
       44 SETTABLEKS                       R3 R10 K1 ["Value"]
       46 NAMECALL                         R8 R0 K13 ["setState"]
       48 CALL                             R8 2 0
       49 GETTABLEKS                       R8 R2 K14 ["OnChanged"]
       51 GETTABLEKS                       R9 R1 K1 ["Value"]
       53 CALL                             R8 1 0
       54 JUMP                             ; [+30]
       55 GETTABLEKS                       R8 R0 K10 ["state"]
       57 GETTABLEKS                       R8 R8 K15 ["status"]
       59 JUMPIFNOTEQ                      R6 R8 ; [+12]
       61 GETTABLEKS                       R8 R0 K10 ["state"]
       63 GETTABLEKS                       R8 R8 K8 ["Error"]
       65 JUMPIFNOTEQ                      R7 R8 ; [+6]
       67 GETTABLEKS                       R8 R0 K10 ["state"]
       69 GETTABLEKS                       R8 R8 K1 ["Value"]
       71 JUMPIFNOT                        R8 ; [+13]
       72 DUPTABLE                         R10 K12 [{"Status", "Error", "Value"}]
       73 SETTABLEKS                       R6 R10 K11 ["Status"]
       75 SETTABLEKS                       R7 R10 K8 ["Error"]
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R11 R11 K16 ["None"]
       80 SETTABLEKS                       R11 R10 K1 ["Value"]
       82 NAMECALL                         R8 R0 K13 ["setState"]
       84 CALL                             R8 2 0
       85 GETTABLEKS                       R5 R1 K2 ["OnValidate"]
       87 JUMPIFNOTEQ                      R5 R4 ; [+25]
       89 GETTABLEKS                       R5 R1 K17 ["Tooltip"]
       91 GETTABLEKS                       R6 R2 K17 ["Tooltip"]
       93 JUMPIFNOTEQ                      R5 R6 ; [+19]
       95 GETTABLEKS                       R5 R1 K18 ["Label"]
       97 GETTABLEKS                       R6 R2 K18 ["Label"]
       99 JUMPIFNOTEQ                      R5 R6 ; [+13]
      101 GETTABLEKS                       R5 R1 K19 ["ItemChildren"]
      103 GETTABLEKS                       R6 R2 K19 ["ItemChildren"]
      105 JUMPIFNOTEQ                      R5 R6 ; [+7]
      107 GETTABLEKS                       R5 R1 K20 ["FormWidth"]
      109 GETTABLEKS                       R6 R2 K20 ["FormWidth"]
      111 JUMPIFEQ                         R5 R6 ; [+7]
      113 NAMECALL                         R5 R0 K21 ["updateRequiredWidth"]
      115 CALL                             R5 1 0
      116 NAMECALL                         R5 R0 K22 ["checkCompact"]
      118 CALL                             R5 1 0
      119 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K1 [{"Expanded"}]
        1 GETTABLEKS                       R3 R0 K0 ["Expanded"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["Expanded"]
        6 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_10]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 GETTABLEKS                       R1 R1 K0 ["Value"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 0
       10 CALL                             R1 1 1
       11 GETUPVAL                         R3 1
       12 GETTABLE                         R2 R1 R3
       13 SETTABLEKS                       R0 R2 K0 ["Value"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K1 ["OnChildrenChanged"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 2
        4 GETTABLE                         R2 R1 R3
        5 SETTABLEKS                       R0 R2 K0 ["Children"]
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["OnChildrenChanged"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K1 ["OnChildrenChanged"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ItemChildren"]
        4 GETTABLEKS                       R4 R1 K2 ["Layout"]
        6 JUMPIFNOT                        R4 ; [+3]
        7 GETTABLEKS                       R3 R1 K2 ["Layout"]
        9 JUMP                             ; [+10]
       10 GETTABLEKS                       R4 R0 K3 ["state"]
       12 GETTABLEKS                       R4 R4 K4 ["Compact"]
       14 JUMPIFNOT                        R4 ; [+3]
       15 GETIMPORT                        R3 K8 [Enum.FillDirection.Vertical]
       17 JUMP                             ; [+2]
       18 GETIMPORT                        R3 K10 [Enum.FillDirection.Horizontal]
       20 GETTABLEKS                       R4 R1 K11 ["Style"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K12 ["new"]
       25 CALL                             R5 0 1
       26 GETTABLEKS                       R6 R0 K3 ["state"]
       28 GETTABLEKS                       R6 R6 K13 ["Status"]
       30 GETTABLEKS                       R9 R4 K14 ["FormItem"]
       32 GETTABLEKS                       R9 R9 K15 ["DepthPadding"]
       34 GETTABLEKS                       R11 R1 K17 ["Depth"]
       36 ORK                              R10 R11 K16 [0]
       37 MUL                              R8 R9 R10
       38 JUMPIFNOTEQKNIL                  R2 ; [+6]
       40 GETTABLEKS                       R9 R4 K14 ["FormItem"]
       42 GETTABLEKS                       R9 R9 K18 ["Padding"]
       44 JUMP                             ; [+4]
       45 GETTABLEKS                       R9 R4 K14 ["FormItem"]
       47 GETTABLEKS                       R9 R9 K19 ["WithChildrenPadding"]
       49 ADD                              R7 R8 R9
       50 GETIMPORT                        R9 K8 [Enum.FillDirection.Vertical]
       52 JUMPIFNOTEQ                      R3 R9 ; [+11]
       54 GETIMPORT                        R8 K21 [UDim2.new]
       56 LOADN                            R9 1
       57 MINUS                            R10 R7
       58 LOADN                            R11 0
       59 GETTABLEKS                       R13 R1 K22 ["Height"]
       61 ORK                              R12 R13 K16 [0]
       62 CALL                             R8 4 1
       63 JUMP                             ; [+32]
       64 GETIMPORT                        R8 K21 [UDim2.new]
       66 GETIMPORT                        R9 K24 [UDim.new]
       68 GETTABLEKS                       R11 R1 K26 ["LabelWidth"]
       70 GETTABLEKS                       R11 R11 K27 ["Scale"]
       72 SUBRK                            R10 K25 [1] R11
       73 GETTABLEKS                       R13 R1 K26 ["LabelWidth"]
       75 GETTABLEKS                       R13 R13 K28 ["Offset"]
       77 MINUS                            R12 R13
       78 GETTABLEKS                       R13 R4 K14 ["FormItem"]
       80 GETTABLEKS                       R13 R13 K29 ["Spacing"]
       82 SUB                              R11 R12 R13
       83 CALL                             R9 2 1
       84 GETIMPORT                        R10 K24 [UDim.new]
       86 LOADN                            R11 0
       87 GETTABLEKS                       R12 R1 K22 ["Height"]
       89 JUMPIF                           R12 ; [+4]
       90 GETTABLEKS                       R12 R1 K30 ["LabelHeight"]
       92 JUMPIF                           R12 ; [+1]
       93 LOADN                            R12 0
       94 CALL                             R10 2 -1
       95 CALL                             R8 -1 1
       96 LOADNIL                          R9
       97 GETIMPORT                        R10 K33 [Enum.PropertyStatus.Error]
       99 JUMPIFNOTEQ                      R6 R10 ; [+6]
      101 GETTABLEKS                       R10 R4 K14 ["FormItem"]
      103 GETTABLEKS                       R9 R10 K34 ["StatusIconError"]
      105 JUMP                             ; [+8]
      106 GETIMPORT                        R10 K36 [Enum.PropertyStatus.Warning]
      108 JUMPIFNOTEQ                      R6 R10 ; [+5]
      110 GETTABLEKS                       R10 R4 K14 ["FormItem"]
      112 GETTABLEKS                       R9 R10 K37 ["StatusIconWarning"]
      114 LOADNIL                          R10
      115 GETTABLEKS                       R11 R1 K38 ["Tooltip"]
      117 JUMPIFNOT                        R11 ; [+8]
      118 GETTABLEKS                       R11 R1 K38 ["Tooltip"]
      120 JUMPIFEQKS                       R11 K39 [""] ; [+5]
      122 GETTABLEKS                       R11 R4 K14 ["FormItem"]
      124 GETTABLEKS                       R10 R11 K40 ["HelpIcon"]
      126 LOADNIL                          R11
      127 JUMPIFNOT                        R9 ; [+26]
      128 JUMPIFNOT                        R10 ; [+25]
      129 GETTABLEKS                       R14 R4 K14 ["FormItem"]
      131 GETTABLEKS                       R14 R14 K41 ["StatusIconSize"]
      133 GETTABLEKS                       R15 R4 K14 ["FormItem"]
      135 GETTABLEKS                       R15 R15 K42 ["HelpIconSize"]
      137 ADD                              R13 R14 R15
      138 LOADN                            R15 3
      139 GETTABLEKS                       R16 R4 K14 ["FormItem"]
      141 GETTABLEKS                       R16 R16 K29 ["Spacing"]
      143 MUL                              R14 R15 R16
      144 ADD                              R12 R13 R14
      145 GETIMPORT                        R13 K21 [UDim2.new]
      147 LOADN                            R14 1
      148 MINUS                            R15 R12
      149 LOADN                            R16 1
      150 LOADN                            R17 0
      151 CALL                             R13 4 1
      152 MOVE                             R11 R13
      153 JUMP                             ; [+48]
      154 JUMPIFNOT                        R9 ; [+20]
      155 GETIMPORT                        R12 K21 [UDim2.new]
      157 LOADN                            R13 1
      158 GETTABLEKS                       R16 R4 K14 ["FormItem"]
      160 GETTABLEKS                       R16 R16 K42 ["HelpIconSize"]
      162 MINUS                            R15 R16
      163 LOADN                            R17 2
      164 GETTABLEKS                       R18 R4 K14 ["FormItem"]
      166 GETTABLEKS                       R18 R18 K29 ["Spacing"]
      168 MUL                              R16 R17 R18
      169 SUB                              R14 R15 R16
      170 LOADN                            R15 1
      171 LOADN                            R16 0
      172 CALL                             R12 4 1
      173 MOVE                             R11 R12
      174 JUMP                             ; [+27]
      175 JUMPIFNOT                        R10 ; [+20]
      176 GETIMPORT                        R12 K21 [UDim2.new]
      178 LOADN                            R13 1
      179 GETTABLEKS                       R16 R4 K14 ["FormItem"]
      181 GETTABLEKS                       R16 R16 K42 ["HelpIconSize"]
      183 MINUS                            R15 R16
      184 LOADN                            R17 2
      185 GETTABLEKS                       R18 R4 K14 ["FormItem"]
      187 GETTABLEKS                       R18 R18 K29 ["Spacing"]
      189 MUL                              R16 R17 R18
      190 SUB                              R14 R15 R16
      191 LOADN                            R15 1
      192 LOADN                            R16 0
      193 CALL                             R12 4 1
      194 MOVE                             R11 R12
      195 JUMP                             ; [+6]
      196 GETIMPORT                        R12 K44 [UDim2.fromScale]
      198 LOADN                            R13 1
      199 LOADN                            R14 1
      200 CALL                             R12 2 1
      201 MOVE                             R11 R12
      202 GETTABLEKS                       R12 R1 K45 ["Label"]
      204 GETTABLEKS                       R14 R1 K46 ["Hidden"]
      206 JUMPIFNOT                        R14 ; [+2]
      207 LOADNIL                          R13
      208 JUMP                             ; [+493]
      209 GETUPVAL                         R13 1
      210 GETTABLEKS                       R13 R13 K47 ["createElement"]
      212 GETUPVAL                         R14 2
      213 DUPTABLE                         R15 K53 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
      214 GETIMPORT                        R16 K55 [Enum.AutomaticSize.Y]
      216 SETTABLEKS                       R16 R15 K48 ["AutomaticSize"]
      218 MOVE                             R16 R3
      219 JUMPIF                           R16 ; [+2]
      220 GETIMPORT                        R16 K10 [Enum.FillDirection.Horizontal]
      222 SETTABLEKS                       R16 R15 K2 ["Layout"]
      224 JUMPIFNOT                        R2 ; [+9]
      225 GETTABLEKS                       R17 R0 K3 ["state"]
      227 GETTABLEKS                       R17 R17 K56 ["Expanded"]
      229 JUMPIFNOT                        R17 ; [+4]
      230 NAMECALL                         R16 R5 K57 ["getNextOrder"]
      232 CALL                             R16 1 1
      233 JUMP                             ; [+2]
      234 GETTABLEKS                       R16 R1 K49 ["LayoutOrder"]
      236 SETTABLEKS                       R16 R15 K49 ["LayoutOrder"]
      238 GETIMPORT                        R16 K44 [UDim2.fromScale]
      240 LOADN                            R17 1
      241 LOADN                            R18 0
      242 CALL                             R16 2 1
      243 SETTABLEKS                       R16 R15 K50 ["Size"]
      245 GETIMPORT                        R16 K59 [Enum.HorizontalAlignment.Left]
      247 SETTABLEKS                       R16 R15 K51 ["HorizontalAlignment"]
      249 GETIMPORT                        R16 K61 [Enum.VerticalAlignment.Top]
      251 SETTABLEKS                       R16 R15 K52 ["VerticalAlignment"]
      253 GETTABLEKS                       R16 R4 K14 ["FormItem"]
      255 GETTABLEKS                       R16 R16 K29 ["Spacing"]
      257 SETTABLEKS                       R16 R15 K29 ["Spacing"]
      259 DUPTABLE                         R16 K64 [{"Container", "Property"}]
      260 JUMPIFNOT                        R12 ; [+300]
      261 JUMPIFEQKS                       R12 K39 [""] ; [+299]
      263 GETUPVAL                         R17 1
      264 GETTABLEKS                       R17 R17 K47 ["createElement"]
      266 GETUPVAL                         R18 2
      267 DUPTABLE                         R19 K65 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 1, ["Size"], ["Padding"], ["Spacing"]}]
      268 GETIMPORT                        R20 K59 [Enum.HorizontalAlignment.Left]
      270 SETTABLEKS                       R20 R19 K51 ["HorizontalAlignment"]
      272 GETIMPORT                        R20 K10 [Enum.FillDirection.Horizontal]
      274 SETTABLEKS                       R20 R19 K2 ["Layout"]
      276 GETIMPORT                        R21 K8 [Enum.FillDirection.Vertical]
      278 JUMPIFNOTEQ                      R3 R21 ; [+10]
      280 GETIMPORT                        R20 K21 [UDim2.new]
      282 LOADN                            R21 1
      283 LOADN                            R22 0
      284 LOADN                            R23 0
      285 GETTABLEKS                       R24 R1 K30 ["LabelHeight"]
      287 CALL                             R20 4 1
      288 JUMP                             ; [+11]
      289 GETIMPORT                        R20 K21 [UDim2.new]
      291 GETTABLEKS                       R21 R1 K26 ["LabelWidth"]
      293 GETIMPORT                        R22 K24 [UDim.new]
      295 LOADN                            R23 0
      296 GETTABLEKS                       R24 R1 K30 ["LabelHeight"]
      298 CALL                             R22 2 -1
      299 CALL                             R20 -1 1
      300 SETTABLEKS                       R20 R19 K50 ["Size"]
      302 DUPTABLE                         R20 K66 [{"Left"}]
      303 SETTABLEKS                       R7 R20 K58 ["Left"]
      305 SETTABLEKS                       R20 R19 K18 ["Padding"]
      307 GETTABLEKS                       R20 R4 K14 ["FormItem"]
      309 GETTABLEKS                       R20 R20 K29 ["Spacing"]
      311 SETTABLEKS                       R20 R19 K29 ["Spacing"]
      313 DUPTABLE                         R20 K69 [{"Arrow", "StatusIcon", "Label", "HelpIcon"}]
      314 JUMPIFEQKNIL                     R2 ; [+60]
      316 GETUPVAL                         R21 1
      317 GETTABLEKS                       R21 R21 K47 ["createElement"]
      319 GETUPVAL                         R22 2
      320 DUPTABLE                         R23 K71 [{"HorizontalAlignment", "LayoutOrder", "OnClick", "Size", "VerticalAlignment"}]
      321 GETIMPORT                        R24 K59 [Enum.HorizontalAlignment.Left]
      323 SETTABLEKS                       R24 R23 K51 ["HorizontalAlignment"]
      325 NAMECALL                         R24 R5 K57 ["getNextOrder"]
      327 CALL                             R24 1 1
      328 SETTABLEKS                       R24 R23 K49 ["LayoutOrder"]
      330 NEWCLOSURE                       R24 P0
      331 CAPTURE                          VAL R0
      332 SETTABLEKS                       R24 R23 K70 ["OnClick"]
      334 GETTABLEKS                       R24 R4 K14 ["FormItem"]
      336 GETTABLEKS                       R24 R24 K67 ["Arrow"]
      338 GETTABLEKS                       R24 R24 K50 ["Size"]
      340 SETTABLEKS                       R24 R23 K50 ["Size"]
      342 GETIMPORT                        R24 K61 [Enum.VerticalAlignment.Top]
      344 SETTABLEKS                       R24 R23 K52 ["VerticalAlignment"]
      346 DUPTABLE                         R24 K73 [{"Image"}]
      347 GETUPVAL                         R25 1
      348 GETTABLEKS                       R25 R25 K47 ["createElement"]
      350 GETUPVAL                         R26 3
      351 DUPTABLE                         R27 K75 [{"Style", "StyleModifier"}]
      352 GETTABLEKS                       R28 R4 K14 ["FormItem"]
      354 GETTABLEKS                       R28 R28 K67 ["Arrow"]
      356 SETTABLEKS                       R28 R27 K11 ["Style"]
      358 GETTABLEKS                       R29 R0 K3 ["state"]
      360 GETTABLEKS                       R29 R29 K56 ["Expanded"]
      362 JUMPIFNOT                        R29 ; [+4]
      363 GETUPVAL                         R28 4
      364 GETTABLEKS                       R28 R28 K76 ["Selected"]
      366 JUMPIF                           R28 ; [+1]
      367 LOADNIL                          R28
      368 SETTABLEKS                       R28 R27 K74 ["StyleModifier"]
      370 CALL                             R25 2 1
      371 SETTABLEKS                       R25 R24 K72 ["Image"]
      373 CALL                             R21 3 1
      374 JUMP                             ; [+1]
      375 LOADNIL                          R21
      376 SETTABLEKS                       R21 R20 K67 ["Arrow"]
      378 JUMPIFNOT                        R9 ; [+70]
      379 GETUPVAL                         R21 1
      380 GETTABLEKS                       R21 R21 K47 ["createElement"]
      382 GETUPVAL                         R22 2
      383 DUPTABLE                         R23 K77 [{"LayoutOrder", "Size"}]
      384 NAMECALL                         R24 R5 K57 ["getNextOrder"]
      386 CALL                             R24 1 1
      387 SETTABLEKS                       R24 R23 K49 ["LayoutOrder"]
      389 GETIMPORT                        R24 K79 [UDim2.fromOffset]
      391 GETTABLEKS                       R25 R4 K14 ["FormItem"]
      393 GETTABLEKS                       R25 R25 K41 ["StatusIconSize"]
      395 GETTABLEKS                       R26 R4 K14 ["FormItem"]
      397 GETTABLEKS                       R26 R26 K41 ["StatusIconSize"]
      399 CALL                             R24 2 1
      400 SETTABLEKS                       R24 R23 K50 ["Size"]
      402 DUPTABLE                         R24 K80 [{"Image", "Tooltip"}]
      403 GETUPVAL                         R25 1
      404 GETTABLEKS                       R25 R25 K47 ["createElement"]
      406 GETUPVAL                         R26 3
      407 DUPTABLE                         R27 K81 [{"Style"}]
      408 DUPTABLE                         R28 K73 [{"Image"}]
      409 SETTABLEKS                       R9 R28 K72 ["Image"]
      411 SETTABLEKS                       R28 R27 K11 ["Style"]
      413 CALL                             R25 2 1
      414 SETTABLEKS                       R25 R24 K72 ["Image"]
      416 GETTABLEKS                       R26 R0 K3 ["state"]
      418 GETTABLEKS                       R26 R26 K32 ["Error"]
      420 JUMPIFNOT                        R26 ; [+23]
      421 GETTABLEKS                       R26 R0 K3 ["state"]
      423 GETTABLEKS                       R26 R26 K32 ["Error"]
      425 JUMPIFEQKS                       R26 K39 [""] ; [+18]
      427 GETUPVAL                         R25 1
      428 GETTABLEKS                       R25 R25 K47 ["createElement"]
      430 GETUPVAL                         R26 5
      431 DUPTABLE                         R27 K84 [{"Text", "TextXAlignment"}]
      432 GETTABLEKS                       R28 R0 K3 ["state"]
      434 GETTABLEKS                       R28 R28 K32 ["Error"]
      436 SETTABLEKS                       R28 R27 K82 ["Text"]
      438 GETIMPORT                        R28 K85 [Enum.TextXAlignment.Left]
      440 SETTABLEKS                       R28 R27 K83 ["TextXAlignment"]
      442 CALL                             R25 2 1
      443 JUMP                             ; [+1]
      444 LOADNIL                          R25
      445 SETTABLEKS                       R25 R24 K38 ["Tooltip"]
      447 CALL                             R21 3 1
      448 JUMP                             ; [+1]
      449 LOADNIL                          R21
      450 SETTABLEKS                       R21 R20 K68 ["StatusIcon"]
      452 GETUPVAL                         R21 1
      453 GETTABLEKS                       R21 R21 K47 ["createElement"]
      455 GETUPVAL                         R22 2
      456 DUPTABLE                         R23 K77 [{"LayoutOrder", "Size"}]
      457 NAMECALL                         R24 R5 K57 ["getNextOrder"]
      459 CALL                             R24 1 1
      460 SETTABLEKS                       R24 R23 K49 ["LayoutOrder"]
      462 SETTABLEKS                       R11 R23 K50 ["Size"]
      464 DUPTABLE                         R24 K87 [{"LabelText"}]
      465 GETUPVAL                         R25 1
      466 GETTABLEKS                       R25 R25 K47 ["createElement"]
      468 GETUPVAL                         R26 6
      469 DUPTABLE                         R27 K90 [{"Text", "TextXAlignment", "Font", "TextSize"}]
      470 SETTABLEKS                       R12 R27 K82 ["Text"]
      472 GETIMPORT                        R28 K85 [Enum.TextXAlignment.Left]
      474 SETTABLEKS                       R28 R27 K83 ["TextXAlignment"]
      476 GETTABLEKS                       R28 R4 K14 ["FormItem"]
      478 GETTABLEKS                       R28 R28 K88 ["Font"]
      480 SETTABLEKS                       R28 R27 K88 ["Font"]
      482 GETTABLEKS                       R28 R4 K14 ["FormItem"]
      484 GETTABLEKS                       R28 R28 K89 ["TextSize"]
      486 SETTABLEKS                       R28 R27 K89 ["TextSize"]
      488 CALL                             R25 2 1
      489 SETTABLEKS                       R25 R24 K86 ["LabelText"]
      491 CALL                             R21 3 1
      492 SETTABLEKS                       R21 R20 K45 ["Label"]
      494 JUMPIFNOT                        R10 ; [+61]
      495 GETUPVAL                         R21 1
      496 GETTABLEKS                       R21 R21 K47 ["createElement"]
      498 GETUPVAL                         R22 2
      499 DUPTABLE                         R23 K77 [{"LayoutOrder", "Size"}]
      500 NAMECALL                         R24 R5 K57 ["getNextOrder"]
      502 CALL                             R24 1 1
      503 SETTABLEKS                       R24 R23 K49 ["LayoutOrder"]
      505 GETIMPORT                        R24 K79 [UDim2.fromOffset]
      507 GETTABLEKS                       R25 R4 K14 ["FormItem"]
      509 GETTABLEKS                       R25 R25 K42 ["HelpIconSize"]
      511 GETTABLEKS                       R26 R4 K14 ["FormItem"]
      513 GETTABLEKS                       R26 R26 K42 ["HelpIconSize"]
      515 CALL                             R24 2 1
      516 SETTABLEKS                       R24 R23 K50 ["Size"]
      518 DUPTABLE                         R24 K80 [{"Image", "Tooltip"}]
      519 GETUPVAL                         R25 1
      520 GETTABLEKS                       R25 R25 K47 ["createElement"]
      522 GETUPVAL                         R26 3
      523 DUPTABLE                         R27 K81 [{"Style"}]
      524 DUPTABLE                         R28 K92 [{"Image", "Color"}]
      525 SETTABLEKS                       R10 R28 K72 ["Image"]
      527 GETTABLEKS                       R29 R4 K14 ["FormItem"]
      529 GETTABLEKS                       R29 R29 K93 ["IconColor"]
      531 SETTABLEKS                       R29 R28 K91 ["Color"]
      533 SETTABLEKS                       R28 R27 K11 ["Style"]
      535 CALL                             R25 2 1
      536 SETTABLEKS                       R25 R24 K72 ["Image"]
      538 GETUPVAL                         R25 1
      539 GETTABLEKS                       R25 R25 K47 ["createElement"]
      541 GETUPVAL                         R26 5
      542 DUPTABLE                         R27 K84 [{"Text", "TextXAlignment"}]
      543 GETTABLEKS                       R28 R1 K38 ["Tooltip"]
      545 SETTABLEKS                       R28 R27 K82 ["Text"]
      547 GETIMPORT                        R28 K85 [Enum.TextXAlignment.Left]
      549 SETTABLEKS                       R28 R27 K83 ["TextXAlignment"]
      551 CALL                             R25 2 1
      552 SETTABLEKS                       R25 R24 K38 ["Tooltip"]
      554 CALL                             R21 3 1
      555 JUMP                             ; [+1]
      556 LOADNIL                          R21
      557 SETTABLEKS                       R21 R20 K40 ["HelpIcon"]
      559 CALL                             R17 3 1
      560 JUMP                             ; [+1]
      561 LOADNIL                          R17
      562 SETTABLEKS                       R17 R16 K62 ["Container"]
      564 GETUPVAL                         R17 1
      565 GETTABLEKS                       R17 R17 K47 ["createElement"]
      567 GETUPVAL                         R18 2
      568 DUPTABLE                         R19 K97 [{["AnchorPoint"], ["AutomaticSize"], ["HorizontalAlignment"], ["LayoutOrder"] = 3, ["Padding"], ["Position"], ["Size"], ["VerticalAlignment"]}]
      569 GETIMPORT                        R20 K99 [Vector2.new]
      571 LOADN                            R21 0
      572 LOADK                            R22 K100 [0.5]
      573 CALL                             R20 2 1
      574 SETTABLEKS                       R20 R19 K94 ["AnchorPoint"]
      576 GETTABLEKS                       R21 R1 K22 ["Height"]
      578 JUMPIFNOT                        R21 ; [+2]
      579 LOADNIL                          R20
      580 JUMP                             ; [+2]
      581 GETIMPORT                        R20 K55 [Enum.AutomaticSize.Y]
      583 SETTABLEKS                       R20 R19 K48 ["AutomaticSize"]
      585 GETIMPORT                        R20 K59 [Enum.HorizontalAlignment.Left]
      587 SETTABLEKS                       R20 R19 K51 ["HorizontalAlignment"]
      589 GETIMPORT                        R21 K8 [Enum.FillDirection.Vertical]
      591 JUMPIFNOTEQ                      R3 R21 ; [+5]
      593 DUPTABLE                         R20 K66 [{"Left"}]
      594 SETTABLEKS                       R7 R20 K58 ["Left"]
      596 JUMP                             ; [+1]
      597 LOADNIL                          R20
      598 SETTABLEKS                       R20 R19 K18 ["Padding"]
      600 GETIMPORT                        R20 K44 [UDim2.fromScale]
      602 LOADN                            R21 0
      603 LOADK                            R22 K100 [0.5]
      604 CALL                             R20 2 1
      605 SETTABLEKS                       R20 R19 K96 ["Position"]
      607 GETIMPORT                        R21 K8 [Enum.FillDirection.Vertical]
      609 JUMPIFNOTEQ                      R3 R21 ; [+15]
      611 GETIMPORT                        R20 K21 [UDim2.new]
      613 LOADN                            R21 1
      614 LOADN                            R22 0
      615 LOADN                            R23 0
      616 GETTABLEKS                       R24 R1 K22 ["Height"]
      618 JUMPIF                           R24 ; [+4]
      619 GETTABLEKS                       R24 R1 K30 ["LabelHeight"]
      621 JUMPIF                           R24 ; [+1]
      622 LOADN                            R24 0
      623 CALL                             R20 4 1
      624 JUMP                             ; [+1]
      625 MOVE                             R20 R8
      626 SETTABLEKS                       R20 R19 K50 ["Size"]
      628 GETIMPORT                        R20 K102 [Enum.VerticalAlignment.Center]
      630 SETTABLEKS                       R20 R19 K52 ["VerticalAlignment"]
      632 DUPTABLE                         R20 K104 [{"PropertyCell"}]
      633 GETUPVAL                         R21 1
      634 GETTABLEKS                       R21 R21 K47 ["createElement"]
      636 GETUPVAL                         R22 7
      637 DUPTABLE                         R23 K113 [{["AutomaticSize"], ["CustomValidation"] = True, ["Disabled"], ["HasError"], ["OnChanged"], ["Renderers"], ["Size"], ["Schema"], ["Value"]}]
      638 GETTABLEKS                       R25 R1 K22 ["Height"]
      640 JUMPIFNOT                        R25 ; [+2]
      641 LOADNIL                          R24
      642 JUMP                             ; [+2]
      643 GETIMPORT                        R24 K55 [Enum.AutomaticSize.Y]
      645 SETTABLEKS                       R24 R23 K48 ["AutomaticSize"]
      647 GETTABLEKS                       R24 R1 K107 ["Disabled"]
      649 SETTABLEKS                       R24 R23 K107 ["Disabled"]
      651 GETIMPORT                        R25 K33 [Enum.PropertyStatus.Error]
      653 JUMPIFEQ                         R6 R25 ; [+2]
      655 LOADB                            R24 0 +1
      656 LOADB                            R24 1
      657 SETTABLEKS                       R24 R23 K108 ["HasError"]
      659 GETTABLEKS                       R24 R0 K109 ["OnChanged"]
      661 SETTABLEKS                       R24 R23 K109 ["OnChanged"]
      663 GETTABLEKS                       R24 R1 K110 ["Renderers"]
      665 SETTABLEKS                       R24 R23 K110 ["Renderers"]
      667 GETIMPORT                        R24 K21 [UDim2.new]
      669 LOADN                            R25 1
      670 LOADN                            R26 0
      671 LOADN                            R27 0
      672 GETTABLEKS                       R28 R1 K22 ["Height"]
      674 JUMPIF                           R28 ; [+4]
      675 GETTABLEKS                       R28 R1 K30 ["LabelHeight"]
      677 JUMPIF                           R28 ; [+1]
      678 LOADN                            R28 0
      679 CALL                             R24 4 1
      680 SETTABLEKS                       R24 R23 K50 ["Size"]
      682 GETTABLEKS                       R24 R1 K111 ["Schema"]
      684 SETTABLEKS                       R24 R23 K111 ["Schema"]
      686 GETTABLEKS                       R24 R0 K3 ["state"]
      688 GETTABLEKS                       R24 R24 K112 ["Value"]
      690 JUMPIF                           R24 ; [+2]
      691 GETTABLEKS                       R24 R1 K112 ["Value"]
      693 SETTABLEKS                       R24 R23 K112 ["Value"]
      695 CALL                             R21 2 1
      696 SETTABLEKS                       R21 R20 K103 ["PropertyCell"]
      698 CALL                             R17 3 1
      699 SETTABLEKS                       R17 R16 K63 ["Property"]
      701 CALL                             R13 3 1
      702 JUMPIFNOT                        R2 ; [+200]
      703 JUMPIFNOTEQKNIL                  R13 ; [+4]
      705 NEWTABLE                         R14 0 0
      707 JUMP                             ; [+5]
      708 NEWTABLE                         R14 0 1
      710 MOVE                             R15 R13
      711 SETLIST                          R14 R15 1 [1]
      713 MOVE                             R15 R2
      714 LOADNIL                          R16
      715 LOADNIL                          R17
      716 FORGPREP                         R15
      717 GETTABLEKS                       R20 R19 K45 ["Label"]
      719 GETUPVAL                         R21 1
      720 GETTABLEKS                       R21 R21 K47 ["createElement"]
      722 GETUPVAL                         R22 8
      723 DUPTABLE                         R23 K121 [{"Children", "ItemChildren", "Depth", "Disabled", "FormWidth", "Height", "Hidden", "Layout", "LayoutOrder", "Label", "LabelHeight", "LabelWidth", "Localization", "MinWidth", "OnLabelWidthChanged", "OnChanged", "OnChildrenChanged", "OnValidate", "Renderers", "Schema", "Style", "Tooltip", "Value"}]
      724 GETTABLEKS                       R24 R19 K114 ["Children"]
      726 SETTABLEKS                       R24 R23 K114 ["Children"]
      728 GETTABLEKS                       R24 R19 K114 ["Children"]
      730 SETTABLEKS                       R24 R23 K1 ["ItemChildren"]
      732 GETTABLEKS                       R25 R1 K17 ["Depth"]
      734 JUMPIF                           R25 ; [+2]
      735 LOADN                            R24 1
      736 JUMP                             ; [+3]
      737 GETTABLEKS                       R25 R1 K17 ["Depth"]
      739 ADDK                             R24 R25 K25 [1]
      740 SETTABLEKS                       R24 R23 K17 ["Depth"]
      742 GETTABLEKS                       R24 R19 K107 ["Disabled"]
      744 SETTABLEKS                       R24 R23 K107 ["Disabled"]
      746 GETTABLEKS                       R24 R1 K122 ["FormWidt"]
      748 SETTABLEKS                       R24 R23 K115 ["FormWidth"]
      750 GETTABLEKS                       R24 R19 K22 ["Height"]
      752 SETTABLEKS                       R24 R23 K22 ["Height"]
      754 GETTABLEKS                       R24 R1 K46 ["Hidden"]
      756 JUMPIF                           R24 ; [+5]
      757 GETTABLEKS                       R25 R0 K3 ["state"]
      759 GETTABLEKS                       R25 R25 K56 ["Expanded"]
      761 NOT                              R24 R25
      762 SETTABLEKS                       R24 R23 K46 ["Hidden"]
      764 GETTABLEKS                       R24 R19 K2 ["Layout"]
      766 SETTABLEKS                       R24 R23 K2 ["Layout"]
      768 NAMECALL                         R24 R5 K57 ["getNextOrder"]
      770 CALL                             R24 1 1
      771 SETTABLEKS                       R24 R23 K49 ["LayoutOrder"]
      773 GETTABLEKS                       R24 R19 K45 ["Label"]
      775 SETTABLEKS                       R24 R23 K45 ["Label"]
      777 GETTABLEKS                       R24 R1 K30 ["LabelHeight"]
      779 SETTABLEKS                       R24 R23 K30 ["LabelHeight"]
      781 GETTABLEKS                       R24 R1 K26 ["LabelWidth"]
      783 SETTABLEKS                       R24 R23 K26 ["LabelWidth"]
      785 GETTABLEKS                       R24 R1 K116 ["Localization"]
      787 SETTABLEKS                       R24 R23 K116 ["Localization"]
      789 GETTABLEKS                       R24 R19 K117 ["MinWidth"]
      791 SETTABLEKS                       R24 R23 K117 ["MinWidth"]
      793 GETTABLEKS                       R24 R1 K118 ["OnLabelWidthChanged"]
      795 SETTABLEKS                       R24 R23 K118 ["OnLabelWidthChanged"]
      797 NEWCLOSURE                       R24 P1
      798 CAPTURE                          VAL R2
      799 CAPTURE                          VAL R18
      800 CAPTURE                          UPVAL U9
      801 CAPTURE                          VAL R1
      802 SETTABLEKS                       R24 R23 K109 ["OnChanged"]
      804 NEWCLOSURE                       R24 P2
      805 CAPTURE                          UPVAL U9
      806 CAPTURE                          VAL R2
      807 CAPTURE                          VAL R18
      808 CAPTURE                          VAL R1
      809 SETTABLEKS                       R24 R23 K119 ["OnChildrenChanged"]
      811 GETTABLEKS                       R24 R19 K123 ["Validate"]
      813 SETTABLEKS                       R24 R23 K120 ["OnValidate"]
      815 GETTABLEKS                       R24 R1 K110 ["Renderers"]
      817 SETTABLEKS                       R24 R23 K110 ["Renderers"]
      819 GETTABLEKS                       R24 R19 K111 ["Schema"]
      821 SETTABLEKS                       R24 R23 K111 ["Schema"]
      823 GETTABLEKS                       R24 R1 K11 ["Style"]
      825 SETTABLEKS                       R24 R23 K11 ["Style"]
      827 GETTABLEKS                       R24 R19 K38 ["Tooltip"]
      829 SETTABLEKS                       R24 R23 K38 ["Tooltip"]
      831 GETTABLEKS                       R24 R19 K112 ["Value"]
      833 SETTABLEKS                       R24 R23 K112 ["Value"]
      835 CALL                             R21 2 1
      836 SETTABLE                         R21 R14 R20
      837 FORGLOOP                         R15 2 ; [-121]
      839 GETUPVAL                         R15 1
      840 GETTABLEKS                       R15 R15 K47 ["createElement"]
      842 GETUPVAL                         R16 2
      843 DUPTABLE                         R17 K124 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding", "Size", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      844 GETIMPORT                        R18 K55 [Enum.AutomaticSize.Y]
      846 SETTABLEKS                       R18 R17 K48 ["AutomaticSize"]
      848 GETIMPORT                        R18 K8 [Enum.FillDirection.Vertical]
      850 SETTABLEKS                       R18 R17 K2 ["Layout"]
      852 GETTABLEKS                       R18 R1 K49 ["LayoutOrder"]
      854 SETTABLEKS                       R18 R17 K49 ["LayoutOrder"]
      856 GETTABLEKS                       R19 R1 K46 ["Hidden"]
      858 JUMPIF                           R19 ; [+5]
      859 GETTABLEKS                       R19 R0 K3 ["state"]
      861 GETTABLEKS                       R19 R19 K56 ["Expanded"]
      863 JUMPIF                           R19 ; [+2]
      864 LOADN                            R18 0
      865 JUMP                             ; [+1]
      866 LOADNIL                          R18
      867 SETTABLEKS                       R18 R17 K18 ["Padding"]
      869 GETIMPORT                        R18 K44 [UDim2.fromScale]
      871 LOADN                            R19 1
      872 LOADN                            R20 0
      873 CALL                             R18 2 1
      874 SETTABLEKS                       R18 R17 K50 ["Size"]
      876 GETTABLEKS                       R19 R1 K46 ["Hidden"]
      878 JUMPIF                           R19 ; [+5]
      879 GETTABLEKS                       R19 R0 K3 ["state"]
      881 GETTABLEKS                       R19 R19 K56 ["Expanded"]
      883 JUMPIF                           R19 ; [+2]
      884 LOADN                            R18 0
      885 JUMP                             ; [+4]
      886 GETTABLEKS                       R18 R4 K14 ["FormItem"]
      888 GETTABLEKS                       R18 R18 K29 ["Spacing"]
      890 SETTABLEKS                       R18 R17 K29 ["Spacing"]
      892 GETIMPORT                        R18 K126 [Enum.HorizontalAlignment.Right]
      894 SETTABLEKS                       R18 R17 K51 ["HorizontalAlignment"]
      896 GETIMPORT                        R18 K61 [Enum.VerticalAlignment.Top]
      898 SETTABLEKS                       R18 R17 K52 ["VerticalAlignment"]
      900 MOVE                             R18 R14
      901 CALL                             R15 3 -1
      902 RETURN                           R15 -1
      903 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R3 K11 ["Roact"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R1 K12 ["Util"]
       24 GETIMPORT                        R4 K10 [require]
       26 GETTABLEKS                       R5 R3 K13 ["deepCopy"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K10 [require]
       31 GETTABLEKS                       R6 R3 K14 ["LayoutOrderIterator"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K10 [require]
       36 GETTABLEKS                       R7 R3 K15 ["StyleModifier"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K10 [require]
       41 GETTABLEKS                       R8 R1 K16 ["Resources"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R7 K17 ["LOCALIZATION_PROJECT_NAME"]
       46 GETIMPORT                        R9 K10 [require]
       48 GETTABLEKS                       R10 R1 K6 ["UI"]
       50 GETTABLEKS                       R10 R10 K18 ["Components"]
       52 GETTABLEKS                       R10 R10 K19 ["Image"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K10 [require]
       57 GETTABLEKS                       R11 R1 K6 ["UI"]
       59 GETTABLEKS                       R11 R11 K18 ["Components"]
       61 GETTABLEKS                       R11 R11 K20 ["Pane"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K10 [require]
       66 GETTABLEKS                       R12 R1 K6 ["UI"]
       68 GETTABLEKS                       R12 R12 K18 ["Components"]
       70 GETTABLEKS                       R12 R12 K21 ["PropertyCell"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K10 [require]
       75 GETTABLEKS                       R13 R1 K6 ["UI"]
       77 GETTABLEKS                       R13 R13 K18 ["Components"]
       79 GETTABLEKS                       R13 R13 K22 ["TextLabel"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K10 [require]
       84 GETTABLEKS                       R14 R1 K6 ["UI"]
       86 GETTABLEKS                       R14 R14 K18 ["Components"]
       88 GETTABLEKS                       R14 R14 K23 ["Tooltip"]
       90 CALL                             R13 1 1
       91 DUPCLOSURE                       R14 K24 [PROTO_0]
       92 GETTABLEKS                       R15 R2 K25 ["PureComponent"]
       94 LOADK                            R17 K26 ["FormItem"]
       95 NAMECALL                         R15 R15 K27 ["extend"]
       97 CALL                             R15 2 1
       98 DUPCLOSURE                       R16 K28 [PROTO_4]
       99 CAPTURE                          VAL R14
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R8
      102 SETTABLEKS                       R16 R15 K29 ["init"]
      104 DUPCLOSURE                       R16 K30 [PROTO_5]
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R16 R15 K31 ["updateRequiredWidth"]
      108 DUPCLOSURE                       R16 K32 [PROTO_6]
      109 SETTABLEKS                       R16 R15 K33 ["checkCompact"]
      111 DUPCLOSURE                       R16 K34 [PROTO_7]
      112 SETTABLEKS                       R16 R15 K35 ["didMount"]
      114 DUPCLOSURE                       R16 K36 [PROTO_8]
      115 SETTABLEKS                       R16 R15 K37 ["willUnmount"]
      117 DUPCLOSURE                       R16 K38 [PROTO_9]
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R2
      120 SETTABLEKS                       R16 R15 K39 ["didUpdate"]
      122 DUPCLOSURE                       R16 K40 [PROTO_14]
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R4
      133 SETTABLEKS                       R16 R15 K41 ["render"]
      135 RETURN                           R15 1
