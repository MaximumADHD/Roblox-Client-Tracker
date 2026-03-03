PROTO_0:
        0 GETIMPORT                        R0 K3 [Enum.PropertyStatus.Ok]
        2 LOADK                            R1 K4 [""]
        3 RETURN                           R0 2

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["OnValidate"]
        5 JUMPIF                           R2 ; [+10]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["DefaultValidation"]
        9 GETTABLEKS                       R5 R1 K3 ["Schema"]
       11 GETTABLEKS                       R4 R5 K4 ["Type"]
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
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R8 R9 K13 ["None"]
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
        3 JUMPIFEQKN                       R0 K0 [∞] ; [+7]
        5 JUMPIFEQKN                       R0 K1 [-∞] ; [+5]
        7 GETIMPORT                        R1 K5 [Enum.PropertyStatus.Ok]
        9 LOADK                            R2 K6 [""]
       10 RETURN                           R1 2
       11 GETIMPORT                        R1 K8 [Enum.PropertyStatus.Error]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K9 ["props"]
       16 GETTABLEKS                       R2 R3 K10 ["Localization"]
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
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K6 ["props"]
       11 GETTABLEKS                       R4 R5 K7 ["Localization"]
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
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K6 ["props"]
       33 GETTABLEKS                       R4 R5 K7 ["Localization"]
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
       19 DUPTABLE                         R1 K6 [{"SingleSelectButton", "Slider"}]
       20 LOADN                            R2 170
       21 SETTABLEKS                       R2 R1 K5 ["SingleSelectButton"]
       23 LOADN                            R2 170
       24 SETTABLEKS                       R2 R1 K2 ["Slider"]
       26 SETTABLEKS                       R1 R0 K7 ["DefaultMinWidths"]
       28 DUPTABLE                         R1 K12 [{"Compact", "Expanded", "Status", "Tooltip"}]
       29 LOADB                            R2 0
       30 SETTABLEKS                       R2 R1 K8 ["Compact"]
       32 LOADB                            R2 0
       33 SETTABLEKS                       R2 R1 K9 ["Expanded"]
       35 GETIMPORT                        R2 K16 [Enum.PropertyStatus.Ok]
       37 SETTABLEKS                       R2 R1 K10 ["Status"]
       39 LOADK                            R2 K17 [""]
       40 SETTABLEKS                       R2 R1 K11 ["Tooltip"]
       42 SETTABLEKS                       R1 R0 K18 ["state"]
       44 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["OnValidate"]
        4 GETTABLEKS                       R3 R1 K2 ["Tooltip"]
        6 GETTABLEKS                       R4 R1 K3 ["Label"]
        8 GETTABLEKS                       R5 R1 K4 ["ItemChildren"]
       10 GETTABLEKS                       R6 R1 K5 ["Style"]
       12 JUMPIFEQKNIL                     R5 ; [+17]
       14 GETTABLEKS                       R12 R6 K6 ["FormItem"]
       16 GETTABLEKS                       R11 R12 K7 ["Arrow"]
       18 GETTABLEKS                       R10 R11 K8 ["Size"]
       20 GETTABLEKS                       R9 R10 K9 ["X"]
       22 GETTABLEKS                       R8 R9 K10 ["Offset"]
       24 GETTABLEKS                       R10 R6 K6 ["FormItem"]
       26 GETTABLEKS                       R9 R10 K11 ["Spacing"]
       28 ADD                              R7 R8 R9
       29 JUMP                             ; [+1]
       30 LOADN                            R7 0
       31 GETTABLEKS                       R10 R6 K6 ["FormItem"]
       33 GETTABLEKS                       R9 R10 K12 ["DepthPadding"]
       35 GETTABLEKS                       R11 R1 K14 ["Depth"]
       37 ORK                              R10 R11 K13 [0]
       38 MUL                              R8 R9 R10
       39 JUMPIF                           R2 ; [+8]
       40 GETTABLEKS                       R11 R0 K15 ["DefaultValidation"]
       42 GETTABLEKS                       R13 R1 K16 ["Schema"]
       44 GETTABLEKS                       R12 R13 K17 ["Type"]
       46 GETTABLE                         R10 R11 R12
       47 JUMPIFNOT                        R10 ; [+10]
       48 GETTABLEKS                       R11 R6 K6 ["FormItem"]
       50 GETTABLEKS                       R10 R11 K18 ["StatusIconSize"]
       52 GETTABLEKS                       R12 R6 K6 ["FormItem"]
       54 GETTABLEKS                       R11 R12 K11 ["Spacing"]
       56 ADD                              R9 R10 R11
       57 JUMP                             ; [+1]
       58 LOADN                            R9 0
       59 JUMPIFNOT                        R4 ; [+19]
       60 GETUPVAL                         R10 0
       61 MOVE                             R12 R4
       62 GETTABLEKS                       R14 R6 K6 ["FormItem"]
       64 GETTABLEKS                       R13 R14 K19 ["FontSize"]
       66 GETTABLEKS                       R15 R6 K6 ["FormItem"]
       68 GETTABLEKS                       R14 R15 K20 ["Font"]
       70 GETIMPORT                        R15 K23 [Vector2.new]
       72 LOADK                            R16 K24 [∞]
       73 LOADK                            R17 K24 [∞]
       74 CALL                             R15 2 -1
       75 NAMECALL                         R10 R10 K25 ["GetTextSize"]
       77 CALL                             R10 -1 1
       78 JUMP                             ; [+1]
       79 LOADN                            R10 0
       80 JUMPIFNOT                        R3 ; [+10]
       81 GETTABLEKS                       R13 R6 K6 ["FormItem"]
       83 GETTABLEKS                       R12 R13 K26 ["HelpIconSize"]
       85 GETTABLEKS                       R14 R6 K6 ["FormItem"]
       87 GETTABLEKS                       R13 R14 K11 ["Spacing"]
       89 ADD                              R11 R12 R13
       90 JUMP                             ; [+1]
       91 LOADN                            R11 0
       92 ADD                              R16 R7 R8
       93 ADD                              R15 R16 R9
       94 GETTABLEKS                       R16 R10 K9 ["X"]
       96 ADD                              R14 R15 R16
       97 ADD                              R13 R14 R11
       98 JUMPIFNOTEQKNIL                  R5 ; [+6]
      100 GETTABLEKS                       R15 R6 K6 ["FormItem"]
      102 GETTABLEKS                       R14 R15 K27 ["Padding"]
      104 JUMP                             ; [+4]
      105 GETTABLEKS                       R15 R6 K6 ["FormItem"]
      107 GETTABLEKS                       R14 R15 K28 ["WithChildrenPadding"]
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
        7 GETTABLEKS                       R5 R1 K3 ["Schema"]
        9 GETTABLEKS                       R4 R5 K4 ["Type"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIFNOT                        R2 ; [+18]
       13 DUPTABLE                         R5 K6 [{"Compact"}]
       14 GETTABLEKS                       R9 R1 K8 ["FormWidth"]
       16 ORK                              R8 R9 K7 [∞]
       17 GETTABLEKS                       R10 R1 K9 ["LabelWidth"]
       19 GETTABLEKS                       R9 R10 K10 ["Offset"]
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
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["OnLabelWidthChanged"]
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
       18 GETTABLEKS                       R8 R2 K4 ["Schema"]
       20 GETTABLEKS                       R7 R8 K5 ["Type"]
       22 GETTABLE                         R5 R6 R7
       23 JUMPIF                           R5 ; [+1]
       24 GETUPVAL                         R5 0
       25 MOVE                             R6 R5
       26 MOVE                             R7 R3
       27 GETTABLEKS                       R8 R2 K4 ["Schema"]
       29 CALL                             R6 2 2
       30 GETIMPORT                        R8 K9 [Enum.PropertyStatus.Error]
       32 JUMPIFNOTEQ                      R6 R8 ; [+22]
       34 GETTABLEKS                       R9 R0 K10 ["state"]
       36 GETTABLEKS                       R8 R9 K1 ["Value"]
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
       55 GETTABLEKS                       R9 R0 K10 ["state"]
       57 GETTABLEKS                       R8 R9 K15 ["status"]
       59 JUMPIFNOTEQ                      R6 R8 ; [+12]
       61 GETTABLEKS                       R9 R0 K10 ["state"]
       63 GETTABLEKS                       R8 R9 K8 ["Error"]
       65 JUMPIFNOTEQ                      R7 R8 ; [+6]
       67 GETTABLEKS                       R9 R0 K10 ["state"]
       69 GETTABLEKS                       R8 R9 K1 ["Value"]
       71 JUMPIFNOT                        R8 ; [+13]
       72 DUPTABLE                         R10 K12 [{"Status", "Error", "Value"}]
       73 SETTABLEKS                       R6 R10 K11 ["Status"]
       75 SETTABLEKS                       R7 R10 K8 ["Error"]
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R11 R12 K16 ["None"]
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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLE                         R2 R3 R4
        3 GETTABLEKS                       R1 R2 K0 ["Value"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 2
        9 GETUPVAL                         R2 0
       10 CALL                             R1 1 1
       11 GETUPVAL                         R3 1
       12 GETTABLE                         R2 R1 R3
       13 SETTABLEKS                       R0 R2 K0 ["Value"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R2 R3 K1 ["OnChildrenChanged"]
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
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R2 R3 K1 ["OnChildrenChanged"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R2 R3 K1 ["OnChildrenChanged"]
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
       10 GETTABLEKS                       R5 R0 K3 ["state"]
       12 GETTABLEKS                       R4 R5 K4 ["Compact"]
       14 JUMPIFNOT                        R4 ; [+3]
       15 GETIMPORT                        R3 K8 [Enum.FillDirection.Vertical]
       17 JUMP                             ; [+2]
       18 GETIMPORT                        R3 K10 [Enum.FillDirection.Horizontal]
       20 GETTABLEKS                       R4 R1 K11 ["Style"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K12 ["new"]
       25 CALL                             R5 0 1
       26 GETTABLEKS                       R7 R0 K3 ["state"]
       28 GETTABLEKS                       R6 R7 K13 ["Status"]
       30 GETTABLEKS                       R10 R4 K14 ["FormItem"]
       32 GETTABLEKS                       R9 R10 K15 ["DepthPadding"]
       34 GETTABLEKS                       R11 R1 K17 ["Depth"]
       36 ORK                              R10 R11 K16 [0]
       37 MUL                              R8 R9 R10
       38 JUMPIFNOTEQKNIL                  R2 ; [+6]
       40 GETTABLEKS                       R10 R4 K14 ["FormItem"]
       42 GETTABLEKS                       R9 R10 K18 ["Padding"]
       44 JUMP                             ; [+4]
       45 GETTABLEKS                       R10 R4 K14 ["FormItem"]
       47 GETTABLEKS                       R9 R10 K19 ["WithChildrenPadding"]
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
       68 GETTABLEKS                       R12 R1 K26 ["LabelWidth"]
       70 GETTABLEKS                       R11 R12 K27 ["Scale"]
       72 SUBRK                            R10 R25 K11 ["Style"]
       73 GETTABLEKS                       R14 R1 K26 ["LabelWidth"]
       75 GETTABLEKS                       R13 R14 K28 ["Offset"]
       77 MINUS                            R12 R13
       78 GETTABLEKS                       R14 R4 K14 ["FormItem"]
       80 GETTABLEKS                       R13 R14 K29 ["Spacing"]
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
      129 GETTABLEKS                       R15 R4 K14 ["FormItem"]
      131 GETTABLEKS                       R14 R15 K41 ["StatusIconSize"]
      133 GETTABLEKS                       R16 R4 K14 ["FormItem"]
      135 GETTABLEKS                       R15 R16 K42 ["HelpIconSize"]
      137 ADD                              R13 R14 R15
      138 LOADN                            R15 3
      139 GETTABLEKS                       R17 R4 K14 ["FormItem"]
      141 GETTABLEKS                       R16 R17 K29 ["Spacing"]
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
      158 GETTABLEKS                       R17 R4 K14 ["FormItem"]
      160 GETTABLEKS                       R16 R17 K42 ["HelpIconSize"]
      162 MINUS                            R15 R16
      163 LOADN                            R17 2
      164 GETTABLEKS                       R19 R4 K14 ["FormItem"]
      166 GETTABLEKS                       R18 R19 K29 ["Spacing"]
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
      179 GETTABLEKS                       R17 R4 K14 ["FormItem"]
      181 GETTABLEKS                       R16 R17 K42 ["HelpIconSize"]
      183 MINUS                            R15 R16
      184 LOADN                            R17 2
      185 GETTABLEKS                       R19 R4 K14 ["FormItem"]
      187 GETTABLEKS                       R18 R19 K29 ["Spacing"]
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
      208 JUMP                             ; [+518]
      209 GETUPVAL                         R14 1
      210 GETTABLEKS                       R13 R14 K47 ["createElement"]
      212 GETUPVAL                         R14 2
      213 DUPTABLE                         R15 K53 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
      214 GETIMPORT                        R16 K55 [Enum.AutomaticSize.Y]
      216 SETTABLEKS                       R16 R15 K48 ["AutomaticSize"]
      218 MOVE                             R16 R3
      219 JUMPIF                           R16 ; [+2]
      220 GETIMPORT                        R16 K10 [Enum.FillDirection.Horizontal]
      222 SETTABLEKS                       R16 R15 K2 ["Layout"]
      224 JUMPIFNOT                        R2 ; [+9]
      225 GETTABLEKS                       R18 R0 K3 ["state"]
      227 GETTABLEKS                       R17 R18 K56 ["Expanded"]
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
      253 GETTABLEKS                       R17 R4 K14 ["FormItem"]
      255 GETTABLEKS                       R16 R17 K29 ["Spacing"]
      257 SETTABLEKS                       R16 R15 K29 ["Spacing"]
      259 DUPTABLE                         R16 K64 [{"Container", "Property"}]
      260 JUMPIFNOT                        R12 ; [+313]
      261 JUMPIFEQKS                       R12 K39 [""] ; [+312]
      263 GETUPVAL                         R18 1
      264 GETTABLEKS                       R17 R18 K47 ["createElement"]
      266 GETUPVAL                         R18 2
      267 DUPTABLE                         R19 K65 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Padding", "Spacing"}]
      268 GETIMPORT                        R20 K59 [Enum.HorizontalAlignment.Left]
      270 SETTABLEKS                       R20 R19 K51 ["HorizontalAlignment"]
      272 GETIMPORT                        R20 K10 [Enum.FillDirection.Horizontal]
      274 SETTABLEKS                       R20 R19 K2 ["Layout"]
      276 LOADN                            R20 1
      277 SETTABLEKS                       R20 R19 K49 ["LayoutOrder"]
      279 GETIMPORT                        R21 K8 [Enum.FillDirection.Vertical]
      281 JUMPIFNOTEQ                      R3 R21 ; [+10]
      283 GETIMPORT                        R20 K21 [UDim2.new]
      285 LOADN                            R21 1
      286 LOADN                            R22 0
      287 LOADN                            R23 0
      288 GETTABLEKS                       R24 R1 K30 ["LabelHeight"]
      290 CALL                             R20 4 1
      291 JUMP                             ; [+11]
      292 GETIMPORT                        R20 K21 [UDim2.new]
      294 GETTABLEKS                       R21 R1 K26 ["LabelWidth"]
      296 GETIMPORT                        R22 K24 [UDim.new]
      298 LOADN                            R23 0
      299 GETTABLEKS                       R24 R1 K30 ["LabelHeight"]
      301 CALL                             R22 2 -1
      302 CALL                             R20 -1 1
      303 SETTABLEKS                       R20 R19 K50 ["Size"]
      305 DUPTABLE                         R20 K66 [{"Left"}]
      306 SETTABLEKS                       R7 R20 K58 ["Left"]
      308 SETTABLEKS                       R20 R19 K18 ["Padding"]
      310 GETTABLEKS                       R21 R4 K14 ["FormItem"]
      312 GETTABLEKS                       R20 R21 K29 ["Spacing"]
      314 SETTABLEKS                       R20 R19 K29 ["Spacing"]
      316 DUPTABLE                         R20 K69 [{"Arrow", "StatusIcon", "Label", "HelpIcon"}]
      317 JUMPIFEQKNIL                     R2 ; [+60]
      319 GETUPVAL                         R22 1
      320 GETTABLEKS                       R21 R22 K47 ["createElement"]
      322 GETUPVAL                         R22 2
      323 DUPTABLE                         R23 K71 [{"HorizontalAlignment", "LayoutOrder", "OnClick", "Size", "VerticalAlignment"}]
      324 GETIMPORT                        R24 K59 [Enum.HorizontalAlignment.Left]
      326 SETTABLEKS                       R24 R23 K51 ["HorizontalAlignment"]
      328 NAMECALL                         R24 R5 K57 ["getNextOrder"]
      330 CALL                             R24 1 1
      331 SETTABLEKS                       R24 R23 K49 ["LayoutOrder"]
      333 NEWCLOSURE                       R24 P0
      334 CAPTURE                          VAL R0
      335 SETTABLEKS                       R24 R23 K70 ["OnClick"]
      337 GETTABLEKS                       R26 R4 K14 ["FormItem"]
      339 GETTABLEKS                       R25 R26 K67 ["Arrow"]
      341 GETTABLEKS                       R24 R25 K50 ["Size"]
      343 SETTABLEKS                       R24 R23 K50 ["Size"]
      345 GETIMPORT                        R24 K61 [Enum.VerticalAlignment.Top]
      347 SETTABLEKS                       R24 R23 K52 ["VerticalAlignment"]
      349 DUPTABLE                         R24 K73 [{"Image"}]
      350 GETUPVAL                         R26 1
      351 GETTABLEKS                       R25 R26 K47 ["createElement"]
      353 GETUPVAL                         R26 3
      354 DUPTABLE                         R27 K75 [{"Style", "StyleModifier"}]
      355 GETTABLEKS                       R29 R4 K14 ["FormItem"]
      357 GETTABLEKS                       R28 R29 K67 ["Arrow"]
      359 SETTABLEKS                       R28 R27 K11 ["Style"]
      361 GETTABLEKS                       R30 R0 K3 ["state"]
      363 GETTABLEKS                       R29 R30 K56 ["Expanded"]
      365 JUMPIFNOT                        R29 ; [+4]
      366 GETUPVAL                         R29 4
      367 GETTABLEKS                       R28 R29 K76 ["Selected"]
      369 JUMPIF                           R28 ; [+1]
      370 LOADNIL                          R28
      371 SETTABLEKS                       R28 R27 K74 ["StyleModifier"]
      373 CALL                             R25 2 1
      374 SETTABLEKS                       R25 R24 K72 ["Image"]
      376 CALL                             R21 3 1
      377 JUMP                             ; [+1]
      378 LOADNIL                          R21
      379 SETTABLEKS                       R21 R20 K67 ["Arrow"]
      381 JUMPIFNOT                        R9 ; [+70]
      382 GETUPVAL                         R22 1
      383 GETTABLEKS                       R21 R22 K47 ["createElement"]
      385 GETUPVAL                         R22 2
      386 DUPTABLE                         R23 K77 [{"LayoutOrder", "Size"}]
      387 NAMECALL                         R24 R5 K57 ["getNextOrder"]
      389 CALL                             R24 1 1
      390 SETTABLEKS                       R24 R23 K49 ["LayoutOrder"]
      392 GETIMPORT                        R24 K79 [UDim2.fromOffset]
      394 GETTABLEKS                       R26 R4 K14 ["FormItem"]
      396 GETTABLEKS                       R25 R26 K41 ["StatusIconSize"]
      398 GETTABLEKS                       R27 R4 K14 ["FormItem"]
      400 GETTABLEKS                       R26 R27 K41 ["StatusIconSize"]
      402 CALL                             R24 2 1
      403 SETTABLEKS                       R24 R23 K50 ["Size"]
      405 DUPTABLE                         R24 K80 [{"Image", "Tooltip"}]
      406 GETUPVAL                         R26 1
      407 GETTABLEKS                       R25 R26 K47 ["createElement"]
      409 GETUPVAL                         R26 3
      410 DUPTABLE                         R27 K81 [{"Style"}]
      411 DUPTABLE                         R28 K73 [{"Image"}]
      412 SETTABLEKS                       R9 R28 K72 ["Image"]
      414 SETTABLEKS                       R28 R27 K11 ["Style"]
      416 CALL                             R25 2 1
      417 SETTABLEKS                       R25 R24 K72 ["Image"]
      419 GETTABLEKS                       R27 R0 K3 ["state"]
      421 GETTABLEKS                       R26 R27 K32 ["Error"]
      423 JUMPIFNOT                        R26 ; [+23]
      424 GETTABLEKS                       R27 R0 K3 ["state"]
      426 GETTABLEKS                       R26 R27 K32 ["Error"]
      428 JUMPIFEQKS                       R26 K39 [""] ; [+18]
      430 GETUPVAL                         R26 1
      431 GETTABLEKS                       R25 R26 K47 ["createElement"]
      433 GETUPVAL                         R26 5
      434 DUPTABLE                         R27 K84 [{"Text", "TextXAlignment"}]
      435 GETTABLEKS                       R29 R0 K3 ["state"]
      437 GETTABLEKS                       R28 R29 K32 ["Error"]
      439 SETTABLEKS                       R28 R27 K82 ["Text"]
      441 GETIMPORT                        R28 K85 [Enum.TextXAlignment.Left]
      443 SETTABLEKS                       R28 R27 K83 ["TextXAlignment"]
      445 CALL                             R25 2 1
      446 JUMP                             ; [+1]
      447 LOADNIL                          R25
      448 SETTABLEKS                       R25 R24 K38 ["Tooltip"]
      450 CALL                             R21 3 1
      451 JUMP                             ; [+1]
      452 LOADNIL                          R21
      453 SETTABLEKS                       R21 R20 K68 ["StatusIcon"]
      455 GETUPVAL                         R22 1
      456 GETTABLEKS                       R21 R22 K47 ["createElement"]
      458 GETUPVAL                         R22 2
      459 DUPTABLE                         R23 K77 [{"LayoutOrder", "Size"}]
      460 NAMECALL                         R24 R5 K57 ["getNextOrder"]
      462 CALL                             R24 1 1
      463 SETTABLEKS                       R24 R23 K49 ["LayoutOrder"]
      465 SETTABLEKS                       R11 R23 K50 ["Size"]
      467 DUPTABLE                         R24 K87 [{"LabelText"}]
      468 GETUPVAL                         R26 1
      469 GETTABLEKS                       R25 R26 K47 ["createElement"]
      471 GETUPVAL                         R26 6
      472 DUPTABLE                         R27 K90 [{"Text", "TextXAlignment", "Font", "TextSize"}]
      473 SETTABLEKS                       R12 R27 K82 ["Text"]
      475 GETIMPORT                        R28 K85 [Enum.TextXAlignment.Left]
      477 SETTABLEKS                       R28 R27 K83 ["TextXAlignment"]
      479 GETUPVAL                         R29 7
      480 CALL                             R29 0 1
      481 JUMPIFNOT                        R29 ; [+5]
      482 GETTABLEKS                       R29 R4 K14 ["FormItem"]
      484 GETTABLEKS                       R28 R29 K88 ["Font"]
      486 JUMP                             ; [+1]
      487 LOADNIL                          R28
      488 SETTABLEKS                       R28 R27 K88 ["Font"]
      490 GETUPVAL                         R29 7
      491 CALL                             R29 0 1
      492 JUMPIFNOT                        R29 ; [+5]
      493 GETTABLEKS                       R29 R4 K14 ["FormItem"]
      495 GETTABLEKS                       R28 R29 K89 ["TextSize"]
      497 JUMP                             ; [+1]
      498 LOADNIL                          R28
      499 SETTABLEKS                       R28 R27 K89 ["TextSize"]
      501 CALL                             R25 2 1
      502 SETTABLEKS                       R25 R24 K86 ["LabelText"]
      504 CALL                             R21 3 1
      505 SETTABLEKS                       R21 R20 K45 ["Label"]
      507 JUMPIFNOT                        R10 ; [+61]
      508 GETUPVAL                         R22 1
      509 GETTABLEKS                       R21 R22 K47 ["createElement"]
      511 GETUPVAL                         R22 2
      512 DUPTABLE                         R23 K77 [{"LayoutOrder", "Size"}]
      513 NAMECALL                         R24 R5 K57 ["getNextOrder"]
      515 CALL                             R24 1 1
      516 SETTABLEKS                       R24 R23 K49 ["LayoutOrder"]
      518 GETIMPORT                        R24 K79 [UDim2.fromOffset]
      520 GETTABLEKS                       R26 R4 K14 ["FormItem"]
      522 GETTABLEKS                       R25 R26 K42 ["HelpIconSize"]
      524 GETTABLEKS                       R27 R4 K14 ["FormItem"]
      526 GETTABLEKS                       R26 R27 K42 ["HelpIconSize"]
      528 CALL                             R24 2 1
      529 SETTABLEKS                       R24 R23 K50 ["Size"]
      531 DUPTABLE                         R24 K80 [{"Image", "Tooltip"}]
      532 GETUPVAL                         R26 1
      533 GETTABLEKS                       R25 R26 K47 ["createElement"]
      535 GETUPVAL                         R26 3
      536 DUPTABLE                         R27 K81 [{"Style"}]
      537 DUPTABLE                         R28 K92 [{"Image", "Color"}]
      538 SETTABLEKS                       R10 R28 K72 ["Image"]
      540 GETTABLEKS                       R30 R4 K14 ["FormItem"]
      542 GETTABLEKS                       R29 R30 K93 ["IconColor"]
      544 SETTABLEKS                       R29 R28 K91 ["Color"]
      546 SETTABLEKS                       R28 R27 K11 ["Style"]
      548 CALL                             R25 2 1
      549 SETTABLEKS                       R25 R24 K72 ["Image"]
      551 GETUPVAL                         R26 1
      552 GETTABLEKS                       R25 R26 K47 ["createElement"]
      554 GETUPVAL                         R26 5
      555 DUPTABLE                         R27 K84 [{"Text", "TextXAlignment"}]
      556 GETTABLEKS                       R28 R1 K38 ["Tooltip"]
      558 SETTABLEKS                       R28 R27 K82 ["Text"]
      560 GETIMPORT                        R28 K85 [Enum.TextXAlignment.Left]
      562 SETTABLEKS                       R28 R27 K83 ["TextXAlignment"]
      564 CALL                             R25 2 1
      565 SETTABLEKS                       R25 R24 K38 ["Tooltip"]
      567 CALL                             R21 3 1
      568 JUMP                             ; [+1]
      569 LOADNIL                          R21
      570 SETTABLEKS                       R21 R20 K40 ["HelpIcon"]
      572 CALL                             R17 3 1
      573 JUMP                             ; [+1]
      574 LOADNIL                          R17
      575 SETTABLEKS                       R17 R16 K62 ["Container"]
      577 GETUPVAL                         R18 1
      578 GETTABLEKS                       R17 R18 K47 ["createElement"]
      580 GETUPVAL                         R18 2
      581 DUPTABLE                         R19 K96 [{"AnchorPoint", "AutomaticSize", "HorizontalAlignment", "LayoutOrder", "Padding", "Position", "Size", "VerticalAlignment"}]
      582 GETIMPORT                        R20 K98 [Vector2.new]
      584 LOADN                            R21 0
      585 LOADK                            R22 K99 [0.5]
      586 CALL                             R20 2 1
      587 SETTABLEKS                       R20 R19 K94 ["AnchorPoint"]
      589 GETTABLEKS                       R21 R1 K22 ["Height"]
      591 JUMPIFNOT                        R21 ; [+2]
      592 LOADNIL                          R20
      593 JUMP                             ; [+2]
      594 GETIMPORT                        R20 K55 [Enum.AutomaticSize.Y]
      596 SETTABLEKS                       R20 R19 K48 ["AutomaticSize"]
      598 GETIMPORT                        R20 K59 [Enum.HorizontalAlignment.Left]
      600 SETTABLEKS                       R20 R19 K51 ["HorizontalAlignment"]
      602 LOADN                            R20 3
      603 SETTABLEKS                       R20 R19 K49 ["LayoutOrder"]
      605 GETIMPORT                        R21 K8 [Enum.FillDirection.Vertical]
      607 JUMPIFNOTEQ                      R3 R21 ; [+5]
      609 DUPTABLE                         R20 K66 [{"Left"}]
      610 SETTABLEKS                       R7 R20 K58 ["Left"]
      612 JUMP                             ; [+1]
      613 LOADNIL                          R20
      614 SETTABLEKS                       R20 R19 K18 ["Padding"]
      616 GETIMPORT                        R20 K44 [UDim2.fromScale]
      618 LOADN                            R21 0
      619 LOADK                            R22 K99 [0.5]
      620 CALL                             R20 2 1
      621 SETTABLEKS                       R20 R19 K95 ["Position"]
      623 GETIMPORT                        R21 K8 [Enum.FillDirection.Vertical]
      625 JUMPIFNOTEQ                      R3 R21 ; [+15]
      627 GETIMPORT                        R20 K21 [UDim2.new]
      629 LOADN                            R21 1
      630 LOADN                            R22 0
      631 LOADN                            R23 0
      632 GETTABLEKS                       R24 R1 K22 ["Height"]
      634 JUMPIF                           R24 ; [+4]
      635 GETTABLEKS                       R24 R1 K30 ["LabelHeight"]
      637 JUMPIF                           R24 ; [+1]
      638 LOADN                            R24 0
      639 CALL                             R20 4 1
      640 JUMP                             ; [+1]
      641 MOVE                             R20 R8
      642 SETTABLEKS                       R20 R19 K50 ["Size"]
      644 GETUPVAL                         R21 8
      645 CALL                             R21 0 1
      646 JUMPIFNOT                        R21 ; [+3]
      647 GETIMPORT                        R20 K101 [Enum.VerticalAlignment.Center]
      649 JUMP                             ; [+2]
      650 GETIMPORT                        R20 K61 [Enum.VerticalAlignment.Top]
      652 SETTABLEKS                       R20 R19 K52 ["VerticalAlignment"]
      654 DUPTABLE                         R20 K103 [{"PropertyCell"}]
      655 GETUPVAL                         R22 1
      656 GETTABLEKS                       R21 R22 K47 ["createElement"]
      658 GETUPVAL                         R22 9
      659 DUPTABLE                         R23 K111 [{"AutomaticSize", "CustomValidation", "Disabled", "HasError", "OnChanged", "Renderers", "Size", "Schema", "Value"}]
      660 GETTABLEKS                       R25 R1 K22 ["Height"]
      662 JUMPIFNOT                        R25 ; [+2]
      663 LOADNIL                          R24
      664 JUMP                             ; [+2]
      665 GETIMPORT                        R24 K55 [Enum.AutomaticSize.Y]
      667 SETTABLEKS                       R24 R23 K48 ["AutomaticSize"]
      669 LOADB                            R24 1
      670 SETTABLEKS                       R24 R23 K104 ["CustomValidation"]
      672 GETTABLEKS                       R24 R1 K105 ["Disabled"]
      674 SETTABLEKS                       R24 R23 K105 ["Disabled"]
      676 GETIMPORT                        R25 K33 [Enum.PropertyStatus.Error]
      678 JUMPIFEQ                         R6 R25 ; [+2]
      680 LOADB                            R24 0 +1
      681 LOADB                            R24 1
      682 SETTABLEKS                       R24 R23 K106 ["HasError"]
      684 GETTABLEKS                       R24 R0 K107 ["OnChanged"]
      686 SETTABLEKS                       R24 R23 K107 ["OnChanged"]
      688 GETTABLEKS                       R24 R1 K108 ["Renderers"]
      690 SETTABLEKS                       R24 R23 K108 ["Renderers"]
      692 GETIMPORT                        R24 K21 [UDim2.new]
      694 LOADN                            R25 1
      695 LOADN                            R26 0
      696 LOADN                            R27 0
      697 GETTABLEKS                       R28 R1 K22 ["Height"]
      699 JUMPIF                           R28 ; [+4]
      700 GETTABLEKS                       R28 R1 K30 ["LabelHeight"]
      702 JUMPIF                           R28 ; [+1]
      703 LOADN                            R28 0
      704 CALL                             R24 4 1
      705 SETTABLEKS                       R24 R23 K50 ["Size"]
      707 GETTABLEKS                       R24 R1 K109 ["Schema"]
      709 SETTABLEKS                       R24 R23 K109 ["Schema"]
      711 GETTABLEKS                       R25 R0 K3 ["state"]
      713 GETTABLEKS                       R24 R25 K110 ["Value"]
      715 JUMPIF                           R24 ; [+2]
      716 GETTABLEKS                       R24 R1 K110 ["Value"]
      718 SETTABLEKS                       R24 R23 K110 ["Value"]
      720 CALL                             R21 2 1
      721 SETTABLEKS                       R21 R20 K102 ["PropertyCell"]
      723 CALL                             R17 3 1
      724 SETTABLEKS                       R17 R16 K63 ["Property"]
      726 CALL                             R13 3 1
      727 JUMPIFNOT                        R2 ; [+200]
      728 JUMPIFNOTEQKNIL                  R13 ; [+4]
      730 NEWTABLE                         R14 0 0
      732 JUMP                             ; [+5]
      733 NEWTABLE                         R14 0 1
      735 MOVE                             R15 R13
      736 SETLIST                          R14 R15 1 [1]
      738 MOVE                             R15 R2
      739 LOADNIL                          R16
      740 LOADNIL                          R17
      741 FORGPREP                         R15
      742 GETTABLEKS                       R20 R19 K45 ["Label"]
      744 GETUPVAL                         R22 1
      745 GETTABLEKS                       R21 R22 K47 ["createElement"]
      747 GETUPVAL                         R22 10
      748 DUPTABLE                         R23 K119 [{"Children", "ItemChildren", "Depth", "Disabled", "FormWidth", "Height", "Hidden", "Layout", "LayoutOrder", "Label", "LabelHeight", "LabelWidth", "Localization", "MinWidth", "OnLabelWidthChanged", "OnChanged", "OnChildrenChanged", "OnValidate", "Renderers", "Schema", "Style", "Tooltip", "Value"}]
      749 GETTABLEKS                       R24 R19 K112 ["Children"]
      751 SETTABLEKS                       R24 R23 K112 ["Children"]
      753 GETTABLEKS                       R24 R19 K112 ["Children"]
      755 SETTABLEKS                       R24 R23 K1 ["ItemChildren"]
      757 GETTABLEKS                       R25 R1 K17 ["Depth"]
      759 JUMPIF                           R25 ; [+2]
      760 LOADN                            R24 1
      761 JUMP                             ; [+3]
      762 GETTABLEKS                       R25 R1 K17 ["Depth"]
      764 ADDK                             R24 R25 K25 [1]
      765 SETTABLEKS                       R24 R23 K17 ["Depth"]
      767 GETTABLEKS                       R24 R19 K105 ["Disabled"]
      769 SETTABLEKS                       R24 R23 K105 ["Disabled"]
      771 GETTABLEKS                       R24 R1 K120 ["FormWidt"]
      773 SETTABLEKS                       R24 R23 K113 ["FormWidth"]
      775 GETTABLEKS                       R24 R19 K22 ["Height"]
      777 SETTABLEKS                       R24 R23 K22 ["Height"]
      779 GETTABLEKS                       R24 R1 K46 ["Hidden"]
      781 JUMPIF                           R24 ; [+5]
      782 GETTABLEKS                       R26 R0 K3 ["state"]
      784 GETTABLEKS                       R25 R26 K56 ["Expanded"]
      786 NOT                              R24 R25
      787 SETTABLEKS                       R24 R23 K46 ["Hidden"]
      789 GETTABLEKS                       R24 R19 K2 ["Layout"]
      791 SETTABLEKS                       R24 R23 K2 ["Layout"]
      793 NAMECALL                         R24 R5 K57 ["getNextOrder"]
      795 CALL                             R24 1 1
      796 SETTABLEKS                       R24 R23 K49 ["LayoutOrder"]
      798 GETTABLEKS                       R24 R19 K45 ["Label"]
      800 SETTABLEKS                       R24 R23 K45 ["Label"]
      802 GETTABLEKS                       R24 R1 K30 ["LabelHeight"]
      804 SETTABLEKS                       R24 R23 K30 ["LabelHeight"]
      806 GETTABLEKS                       R24 R1 K26 ["LabelWidth"]
      808 SETTABLEKS                       R24 R23 K26 ["LabelWidth"]
      810 GETTABLEKS                       R24 R1 K114 ["Localization"]
      812 SETTABLEKS                       R24 R23 K114 ["Localization"]
      814 GETTABLEKS                       R24 R19 K115 ["MinWidth"]
      816 SETTABLEKS                       R24 R23 K115 ["MinWidth"]
      818 GETTABLEKS                       R24 R1 K116 ["OnLabelWidthChanged"]
      820 SETTABLEKS                       R24 R23 K116 ["OnLabelWidthChanged"]
      822 NEWCLOSURE                       R24 P1
      823 CAPTURE                          VAL R2
      824 CAPTURE                          VAL R18
      825 CAPTURE                          UPVAL U11
      826 CAPTURE                          VAL R1
      827 SETTABLEKS                       R24 R23 K107 ["OnChanged"]
      829 NEWCLOSURE                       R24 P2
      830 CAPTURE                          UPVAL U11
      831 CAPTURE                          VAL R2
      832 CAPTURE                          VAL R18
      833 CAPTURE                          VAL R1
      834 SETTABLEKS                       R24 R23 K117 ["OnChildrenChanged"]
      836 GETTABLEKS                       R24 R19 K121 ["Validate"]
      838 SETTABLEKS                       R24 R23 K118 ["OnValidate"]
      840 GETTABLEKS                       R24 R1 K108 ["Renderers"]
      842 SETTABLEKS                       R24 R23 K108 ["Renderers"]
      844 GETTABLEKS                       R24 R19 K109 ["Schema"]
      846 SETTABLEKS                       R24 R23 K109 ["Schema"]
      848 GETTABLEKS                       R24 R1 K11 ["Style"]
      850 SETTABLEKS                       R24 R23 K11 ["Style"]
      852 GETTABLEKS                       R24 R19 K38 ["Tooltip"]
      854 SETTABLEKS                       R24 R23 K38 ["Tooltip"]
      856 GETTABLEKS                       R24 R19 K110 ["Value"]
      858 SETTABLEKS                       R24 R23 K110 ["Value"]
      860 CALL                             R21 2 1
      861 SETTABLE                         R21 R14 R20
      862 FORGLOOP                         R15 2 ; [-121]
      864 GETUPVAL                         R16 1
      865 GETTABLEKS                       R15 R16 K47 ["createElement"]
      867 GETUPVAL                         R16 2
      868 DUPTABLE                         R17 K122 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding", "Size", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
      869 GETIMPORT                        R18 K55 [Enum.AutomaticSize.Y]
      871 SETTABLEKS                       R18 R17 K48 ["AutomaticSize"]
      873 GETIMPORT                        R18 K8 [Enum.FillDirection.Vertical]
      875 SETTABLEKS                       R18 R17 K2 ["Layout"]
      877 GETTABLEKS                       R18 R1 K49 ["LayoutOrder"]
      879 SETTABLEKS                       R18 R17 K49 ["LayoutOrder"]
      881 GETTABLEKS                       R19 R1 K46 ["Hidden"]
      883 JUMPIF                           R19 ; [+5]
      884 GETTABLEKS                       R20 R0 K3 ["state"]
      886 GETTABLEKS                       R19 R20 K56 ["Expanded"]
      888 JUMPIF                           R19 ; [+2]
      889 LOADN                            R18 0
      890 JUMP                             ; [+1]
      891 LOADNIL                          R18
      892 SETTABLEKS                       R18 R17 K18 ["Padding"]
      894 GETIMPORT                        R18 K44 [UDim2.fromScale]
      896 LOADN                            R19 1
      897 LOADN                            R20 0
      898 CALL                             R18 2 1
      899 SETTABLEKS                       R18 R17 K50 ["Size"]
      901 GETTABLEKS                       R19 R1 K46 ["Hidden"]
      903 JUMPIF                           R19 ; [+5]
      904 GETTABLEKS                       R20 R0 K3 ["state"]
      906 GETTABLEKS                       R19 R20 K56 ["Expanded"]
      908 JUMPIF                           R19 ; [+2]
      909 LOADN                            R18 0
      910 JUMP                             ; [+4]
      911 GETTABLEKS                       R19 R4 K14 ["FormItem"]
      913 GETTABLEKS                       R18 R19 K29 ["Spacing"]
      915 SETTABLEKS                       R18 R17 K29 ["Spacing"]
      917 GETIMPORT                        R18 K124 [Enum.HorizontalAlignment.Right]
      919 SETTABLEKS                       R18 R17 K51 ["HorizontalAlignment"]
      921 GETIMPORT                        R18 K61 [Enum.VerticalAlignment.Top]
      923 SETTABLEKS                       R18 R17 K52 ["VerticalAlignment"]
      925 MOVE                             R18 R14
      926 CALL                             R15 3 -1
      927 RETURN                           R15 -1
      928 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 LOADK                            R4 K6 ["UI"]
       10 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       12 CALL                             R2 2 1
       13 GETTABLEKS                       R1 R2 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R4 R1 K8 ["Parent"]
       19 GETTABLEKS                       R3 R4 K11 ["Roact"]
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
       48 GETTABLEKS                       R12 R1 K6 ["UI"]
       50 GETTABLEKS                       R11 R12 K18 ["Components"]
       52 GETTABLEKS                       R10 R11 K19 ["Image"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K10 [require]
       57 GETTABLEKS                       R13 R1 K6 ["UI"]
       59 GETTABLEKS                       R12 R13 K18 ["Components"]
       61 GETTABLEKS                       R11 R12 K20 ["Pane"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K10 [require]
       66 GETTABLEKS                       R14 R1 K6 ["UI"]
       68 GETTABLEKS                       R13 R14 K18 ["Components"]
       70 GETTABLEKS                       R12 R13 K21 ["PropertyCell"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K10 [require]
       75 GETTABLEKS                       R15 R1 K6 ["UI"]
       77 GETTABLEKS                       R14 R15 K18 ["Components"]
       79 GETTABLEKS                       R13 R14 K22 ["TextLabel"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K10 [require]
       84 GETTABLEKS                       R16 R1 K6 ["UI"]
       86 GETTABLEKS                       R15 R16 K18 ["Components"]
       88 GETTABLEKS                       R14 R15 K23 ["Tooltip"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K10 [require]
       93 GETTABLEKS                       R16 R1 K24 ["SharedFlags"]
       95 GETTABLEKS                       R15 R16 K25 ["getFFlagDevFrameworkAdjustTextFontSize"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K10 [require]
      100 GETTABLEKS                       R17 R1 K24 ["SharedFlags"]
      102 GETTABLEKS                       R16 R17 K26 ["getFFlagDevFrameworkFormAlignment"]
      104 CALL                             R15 1 1
      105 DUPCLOSURE                       R16 K27 [PROTO_0]
      106 GETTABLEKS                       R17 R2 K28 ["PureComponent"]
      108 LOADK                            R19 K29 ["FormItem"]
      109 NAMECALL                         R17 R17 K30 ["extend"]
      111 CALL                             R17 2 1
      112 DUPCLOSURE                       R18 K31 [PROTO_4]
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R8
      116 SETTABLEKS                       R18 R17 K32 ["init"]
      118 DUPCLOSURE                       R18 K33 [PROTO_5]
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R18 R17 K34 ["updateRequiredWidth"]
      122 DUPCLOSURE                       R18 K35 [PROTO_6]
      123 SETTABLEKS                       R18 R17 K36 ["checkCompact"]
      125 DUPCLOSURE                       R18 K37 [PROTO_7]
      126 SETTABLEKS                       R18 R17 K38 ["didMount"]
      128 DUPCLOSURE                       R18 K39 [PROTO_8]
      129 SETTABLEKS                       R18 R17 K40 ["willUnmount"]
      131 DUPCLOSURE                       R18 K41 [PROTO_9]
      132 CAPTURE                          VAL R16
      133 CAPTURE                          VAL R2
      134 SETTABLEKS                       R18 R17 K42 ["didUpdate"]
      136 DUPCLOSURE                       R18 K43 [PROTO_14]
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R4
      149 SETTABLEKS                       R18 R17 K44 ["render"]
      151 RETURN                           R17 1
