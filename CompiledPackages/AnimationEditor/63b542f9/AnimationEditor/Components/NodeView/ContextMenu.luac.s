PROTO_0:
        0 LOADK                            R2 K0 ["existing_parameter_"]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^existing_parameter_(.+)$"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_2:
        0 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["StudioUri"]
        5 GETTABLEKS                       R0 R0 K2 ["fromAction"]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 2
        9 MOVE                             R5 R0
       10 MOVE                             R6 R1
       11 SETLIST                          R4 R5 2 [1]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createConnectedParameterAsync"]
        3 DUPTABLE                         R1 K5 [{"sourcePinInfo", "pinPosition", "parameterName", "existingValue"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K6 ["visibleMenuState"]
        7 GETTABLEKS                       R2 R2 K1 ["sourcePinInfo"]
        9 SETTABLEKS                       R2 R1 K1 ["sourcePinInfo"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K6 ["visibleMenuState"]
       14 GETTABLEKS                       R2 R2 K7 ["targetPinPosition"]
       16 SETTABLEKS                       R2 R1 K2 ["pinPosition"]
       18 GETUPVAL                         R2 2
       19 SETTABLEKS                       R2 R1 K3 ["parameterName"]
       21 GETUPVAL                         R2 3
       22 SETTABLEKS                       R2 R1 K4 ["existingValue"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["log"]
        3 LOADK                            R3 K1 ["Inserting an additional instance of parameter "]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R1 R1 K2 ["info"]
        7 CALL                             R1 3 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K3 ["visibleMenuState"]
       11 JUMPIFNOTEQKNIL                  R1 ; [+9]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["log"]
       16 LOADK                            R3 K4 ["No insertNodeContext.visibleMenuState"]
       17 NAMECALL                         R1 R1 K5 ["warn"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["close"]
       24 CALL                             R1 0 0
       25 FASTCALL1                        TYPE R0 ; [+3]
       26 MOVE                             R2 R0
       27 GETIMPORT                        R1 K8 [type]
       29 CALL                             R1 1 1
       30 JUMPIFEQKS                       R1 K9 ["number"] ; [+8]
       32 GETIMPORT                        R2 K12 [string.match]
       34 MOVE                             R3 R0
       35 LOADK                            R4 K13 ["^existing_parameter_(.+)$"]
       36 CALL                             R2 2 1
       37 MOVE                             R1 R2
       38 JUMPIF                           R1 ; [+14]
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R1 R1 K0 ["log"]
       42 LOADK                            R4 K14 ["Unexpected menu item id: "]
       43 FASTCALL1                        TOSTRING R0 ; [+3]
       44 MOVE                             R6 R0
       45 GETIMPORT                        R5 K16 [tostring]
       47 CALL                             R5 1 1
       48 CONCAT                           R3 R4 R5
       49 NAMECALL                         R1 R1 K5 ["warn"]
       51 CALL                             R1 2 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R3 2
       54 GETTABLEKS                       R3 R3 K3 ["visibleMenuState"]
       56 GETTABLEKS                       R3 R3 K17 ["sourcePinInfo"]
       58 JUMPIFNOTEQKNIL                  R3 ; [+2]
       60 LOADB                            R2 0 +1
       61 LOADB                            R2 1
       62 FASTCALL2K                       ASSERT R2 K18 ; [+4]
       64 LOADK                            R3 K18 ["Expected sourcePinInfo"]
       65 GETIMPORT                        R1 K20 [assert]
       67 CALL                             R1 2 0
       68 GETIMPORT                        R1 K23 [task.spawn]
       70 NEWCLOSURE                       R2 P0
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          UPVAL U4
       75 CALL                             R1 1 0
       76 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["visibleMenuState"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADB                            R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["visibleMenuState"]
       10 GETTABLEKS                       R0 R0 K1 ["sourcePinInfo"]
       12 JUMPIFNOTEQKNIL                  R0 ; [+3]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETTABLEKS                       R2 R0 K2 ["sourcePinDataType"]
       18 JUMPIFEQKS                       R2 K3 ["Parameter"] ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["visibleMenuState"]
        3 JUMPIFNOT                        R0 ; [+17]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["visibleMenuState"]
        7 GETTABLEKS                       R0 R0 K1 ["sourcePinInfo"]
        9 JUMPIFNOT                        R0 ; [+11]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["visibleMenuState"]
       13 GETTABLEKS                       R1 R1 K1 ["sourcePinInfo"]
       15 GETTABLEKS                       R1 R1 K2 ["sourcePinDataType"]
       17 JUMPIFEQKS                       R1 K3 ["Animation"] ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 0
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R6 R5 K0 ["name"]
       13 JUMPIFNOT                        R6 ; [+12]
       14 GETTABLE                         R7 R0 R6
       15 JUMPIF                           R7 ; [+10]
       16 GETTABLEKS                       R8 R5 K1 ["nodeType"]
       18 FASTCALL1                        TYPE R8 ; [+2]
       19 GETIMPORT                        R7 K3 [type]
       21 CALL                             R7 1 1
       22 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+3]
       24 LOADB                            R7 1
       25 SETTABLE                         R7 R0 R6
       26 FORGLOOP                         R1 2 ; [-16]
       28 RETURN                           R0 1

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R7 R7 K0 ["animationParameters"]
        9 GETTABLE                         R6 R7 R4
       10 JUMPIFNOT                        R6 ; [+5]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K0 ["animationParameters"]
       14 GETTABLE                         R6 R7 R4
       15 SETTABLE                         R6 R0 R4
       16 FORGLOOP                         R1 1 ; [-11]
       18 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["log"]
        3 LOADK                            R2 K1 ["Inserting node of type {}"]
        4 GETUPVAL                         R4 1
        5 FASTCALL1                        TOSTRING R4 ; [+2]
        6 GETIMPORT                        R3 K3 [tostring]
        8 CALL                             R3 1 1
        9 NAMECALL                         R0 R0 K4 ["info"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K5 ["visibleMenuState"]
       15 JUMPIFNOTEQKNIL                  R0 ; [+9]
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K0 ["log"]
       20 LOADK                            R2 K6 ["No insertNodeContext.visibleMenuState"]
       21 NAMECALL                         R0 R0 K7 ["warn"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 1
       26 FASTCALL1                        TYPEOF R1 ; [+2]
       27 GETIMPORT                        R0 K9 [typeof]
       29 CALL                             R0 1 1
       30 JUMPIFNOTEQKS                    R0 K10 ["string"] ; [+13]
       32 GETUPVAL                         R0 3
       33 LOADNIL                          R1
       34 LOADNIL                          R2
       35 FORGPREP                         R0
       36 GETTABLEKS                       R5 R4 K11 ["tryActivate"]
       38 GETUPVAL                         R6 1
       39 CALL                             R5 1 1
       40 JUMPIFNOT                        R5 ; [+1]
       41 RETURN                           R0 0
       42 FORGLOOP                         R0 2 ; [-7]
       44 GETUPVAL                         R0 1
       45 GETUPVAL                         R1 4
       46 GETTABLEKS                       R1 R1 K12 ["PARAMETER_NODE_CLASSNAME"]
       48 JUMPIFNOTEQ                      R0 R1 ; [+54]
       50 GETUPVAL                         R2 2
       51 GETTABLEKS                       R2 R2 K5 ["visibleMenuState"]
       53 GETTABLEKS                       R2 R2 K13 ["sourcePinInfo"]
       55 JUMPIFNOTEQKNIL                  R2 ; [+2]
       57 LOADB                            R1 0 +1
       58 LOADB                            R1 1
       59 FASTCALL2K                       ASSERT R1 K14 ; [+4]
       61 LOADK                            R2 K14 ["Expected sourcePinInfo"]
       62 GETIMPORT                        R0 K16 [assert]
       64 CALL                             R0 2 0
       65 GETUPVAL                         R0 5
       66 GETTABLEKS                       R0 R0 K17 ["createConnectedParameterAsync"]
       68 DUPTABLE                         R1 K21 [{"sourcePinInfo", "pinPosition", "parameterName", "existingValue"}]
       69 GETUPVAL                         R2 2
       70 GETTABLEKS                       R2 R2 K5 ["visibleMenuState"]
       72 GETTABLEKS                       R2 R2 K13 ["sourcePinInfo"]
       74 SETTABLEKS                       R2 R1 K13 ["sourcePinInfo"]
       76 GETUPVAL                         R2 2
       77 GETTABLEKS                       R2 R2 K5 ["visibleMenuState"]
       79 GETTABLEKS                       R2 R2 K22 ["targetPinPosition"]
       81 SETTABLEKS                       R2 R1 K18 ["pinPosition"]
       83 GETUPVAL                         R2 2
       84 GETTABLEKS                       R2 R2 K5 ["visibleMenuState"]
       86 GETTABLEKS                       R2 R2 K13 ["sourcePinInfo"]
       88 GETTABLEKS                       R2 R2 K23 ["sourcePinName"]
       90 SETTABLEKS                       R2 R1 K19 ["parameterName"]
       92 GETUPVAL                         R2 2
       93 GETTABLEKS                       R2 R2 K5 ["visibleMenuState"]
       95 GETTABLEKS                       R2 R2 K13 ["sourcePinInfo"]
       97 GETTABLEKS                       R2 R2 K24 ["sourcePinValue"]
       99 SETTABLEKS                       R2 R1 K20 ["existingValue"]
      101 CALL                             R0 1 0
      102 JUMP                             ; [+58]
      103 GETUPVAL                         R1 1
      104 FASTCALL1                        TYPE R1 ; [+2]
      105 GETIMPORT                        R0 K26 [type]
      107 CALL                             R0 1 1
      108 JUMPIFNOTEQKS                    R0 K27 ["number"] ; [+39]
      110 GETIMPORT                        R0 K30 [Enum.AnimationNodeType]
      112 GETUPVAL                         R2 1
      113 NAMECALL                         R0 R0 K31 ["FromValue"]
      115 CALL                             R0 2 1
      116 JUMPIFEQKNIL                     R0 ; [+17]
      118 GETUPVAL                         R1 5
      119 GETTABLEKS                       R1 R1 K32 ["createNodeAsync"]
      121 MOVE                             R2 R0
      122 GETUPVAL                         R3 2
      123 GETTABLEKS                       R3 R3 K5 ["visibleMenuState"]
      125 GETTABLEKS                       R3 R3 K22 ["targetPinPosition"]
      127 GETUPVAL                         R4 2
      128 GETTABLEKS                       R4 R4 K5 ["visibleMenuState"]
      130 GETTABLEKS                       R4 R4 K13 ["sourcePinInfo"]
      132 CALL                             R1 3 0
      133 JUMP                             ; [+27]
      134 GETUPVAL                         R1 0
      135 GETTABLEKS                       R1 R1 K0 ["log"]
      137 LOADK                            R4 K33 ["Could not convert id to Enum.AnimationNodeType: "]
      138 GETUPVAL                         R6 1
      139 FASTCALL1                        TOSTRING R6 ; [+2]
      140 GETIMPORT                        R5 K3 [tostring]
      142 CALL                             R5 1 1
      143 CONCAT                           R3 R4 R5
      144 NAMECALL                         R1 R1 K7 ["warn"]
      146 CALL                             R1 2 0
      147 JUMP                             ; [+13]
      148 GETUPVAL                         R0 0
      149 GETTABLEKS                       R0 R0 K0 ["log"]
      151 LOADK                            R3 K34 ["Unexpected node id type: "]
      152 GETUPVAL                         R5 1
      153 FASTCALL1                        TYPEOF R5 ; [+2]
      154 GETIMPORT                        R4 K9 [typeof]
      156 CALL                             R4 1 1
      157 CONCAT                           R2 R3 R4
      158 NAMECALL                         R0 R0 K7 ["warn"]
      160 CALL                             R0 2 0
      161 GETUPVAL                         R0 0
      162 GETTABLEKS                       R0 R0 K35 ["close"]
      164 CALL                             R0 0 0
      165 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 MOVE                             R7 R0
        7 GETIMPORT                        R8 K2 [table.freeze]
        9 DUPTABLE                         R9 K7 [{"id", "text", "isDisabled", "onActivated"}]
       10 LOADK                            R11 K8 ["existing_parameter_"]
       11 MOVE                             R12 R4
       12 CONCAT                           R10 R11 R12
       13 SETTABLEKS                       R10 R9 K3 ["id"]
       15 SETTABLEKS                       R4 R9 K4 ["text"]
       17 LOADB                            R10 0
       18 SETTABLEKS                       R10 R9 K5 ["isDisabled"]
       20 GETUPVAL                         R10 1
       21 MOVE                             R11 R4
       22 MOVE                             R12 R5
       23 CALL                             R10 2 1
       24 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       26 CALL                             R8 1 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R6 K10 [table.insert]
       30 CALL                             R6 -1 0
       31 FORGLOOP                         R1 2 ; [-26]
       33 NEWTABLE                         R1 0 0
       35 MOVE                             R3 R1
       36 GETIMPORT                        R4 K2 [table.freeze]
       38 DUPTABLE                         R5 K12 [{"items"}]
       39 GETIMPORT                        R6 K2 [table.freeze]
       41 NEWTABLE                         R7 0 1
       43 GETIMPORT                        R8 K2 [table.freeze]
       45 DUPTABLE                         R9 K13 [{"id", "text", "isDisabled"}]
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R10 R10 K14 ["PARAMETER_NODE_CLASSNAME"]
       49 SETTABLEKS                       R10 R9 K3 ["id"]
       51 LOADK                            R10 K15 ["New Parameter"]
       52 SETTABLEKS                       R10 R9 K4 ["text"]
       54 LOADB                            R10 0
       55 SETTABLEKS                       R10 R9 K5 ["isDisabled"]
       57 CALL                             R8 1 -1
       58 SETLIST                          R7 R8 -1 [1]
       60 CALL                             R6 1 1
       61 SETTABLEKS                       R6 R5 K11 ["items"]
       63 CALL                             R4 1 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R2 K10 [table.insert]
       67 CALL                             R2 -1 0
       68 GETIMPORT                        R2 K17 [next]
       70 MOVE                             R3 R0
       71 CALL                             R2 1 1
       72 JUMPIFNOT                        R2 ; [+15]
       73 MOVE                             R3 R1
       74 GETIMPORT                        R4 K2 [table.freeze]
       76 DUPTABLE                         R5 K12 [{"items"}]
       77 GETIMPORT                        R6 K2 [table.freeze]
       79 MOVE                             R7 R0
       80 CALL                             R6 1 1
       81 SETTABLEKS                       R6 R5 K11 ["items"]
       83 CALL                             R4 1 -1
       84 FASTCALL                         TABLE_INSERT ; [+2]
       85 GETIMPORT                        R2 K10 [table.insert]
       87 CALL                             R2 -1 0
       88 GETIMPORT                        R2 K2 [table.freeze]
       90 MOVE                             R3 R1
       91 CALL                             R2 1 -1
       92 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetAnimationNodeDefinition"]
        4 CALL                             R2 2 1
        5 DUPTABLE                         R3 K4 [{"id", "text", "isDisabled"}]
        6 GETTABLEKS                       R4 R0 K5 ["Value"]
        8 SETTABLEKS                       R4 R3 K1 ["id"]
       10 JUMPIFNOT                        R2 ; [+12]
       11 GETTABLEKS                       R5 R2 K6 ["Type"]
       13 JUMPIFNOT                        R5 ; [+9]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K7 ["formatName"]
       17 GETTABLEKS                       R5 R2 K6 ["Type"]
       19 GETTABLEKS                       R5 R5 K8 ["Name"]
       21 CALL                             R4 1 1
       22 JUMP                             ; [+1]
       23 LOADK                            R4 K9 ["No Definition Type"]
       24 SETTABLEKS                       R4 R3 K2 ["text"]
       26 MOVE                             R4 R1
       27 JUMPIF                           R4 ; [+4]
       28 JUMPIFEQKNIL                     R2 ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 SETTABLEKS                       R4 R3 K3 ["isDisabled"]
       34 RETURN                           R3 1

PROTO_16:
        0 NEWTABLE                         R0 0 5
        2 DUPTABLE                         R1 K1 [{"items"}]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 0
        6 GETIMPORT                        R4 K5 [Enum.AnimationNodeType.ClipNode]
        8 CALL                             R3 1 1
        9 SETLIST                          R2 R3 1 [1]
       11 SETTABLEKS                       R2 R1 K0 ["items"]
       13 DUPTABLE                         R2 K1 [{"items"}]
       14 NEWTABLE                         R3 0 4
       16 GETUPVAL                         R4 0
       17 GETIMPORT                        R5 K7 [Enum.AnimationNodeType.SelectNode]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 0
       21 GETIMPORT                        R6 K9 [Enum.AnimationNodeType.PrioritySelectNode]
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 0
       25 GETIMPORT                        R7 K11 [Enum.AnimationNodeType.SequenceNode]
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 0
       29 GETIMPORT                        R8 K13 [Enum.AnimationNodeType.RandomSequenceNode]
       31 CALL                             R7 1 1
       32 SETLIST                          R3 R4 4 [1]
       34 SETTABLEKS                       R3 R2 K0 ["items"]
       36 DUPTABLE                         R3 K1 [{"items"}]
       37 NEWTABLE                         R4 0 5
       39 GETUPVAL                         R5 0
       40 GETIMPORT                        R6 K15 [Enum.AnimationNodeType.OverNode]
       42 CALL                             R5 1 1
       43 GETUPVAL                         R6 0
       44 GETIMPORT                        R7 K17 [Enum.AnimationNodeType.AddNode]
       46 CALL                             R6 1 1
       47 GETUPVAL                         R7 0
       48 GETIMPORT                        R8 K19 [Enum.AnimationNodeType.SubtractNode]
       50 CALL                             R7 1 1
       51 GETUPVAL                         R8 0
       52 GETIMPORT                        R9 K21 [Enum.AnimationNodeType.Blend1DNode]
       54 CALL                             R8 1 1
       55 GETUPVAL                         R9 0
       56 GETIMPORT                        R10 K23 [Enum.AnimationNodeType.Blend2DNode]
       58 CALL                             R9 1 1
       59 SETLIST                          R4 R5 5 [1]
       61 SETTABLEKS                       R4 R3 K0 ["items"]
       63 DUPTABLE                         R4 K1 [{"items"}]
       64 NEWTABLE                         R5 0 2
       66 GETUPVAL                         R6 0
       67 GETIMPORT                        R7 K25 [Enum.AnimationNodeType.MaskNode]
       69 CALL                             R6 1 1
       70 GETUPVAL                         R7 0
       71 GETIMPORT                        R8 K27 [Enum.AnimationNodeType.SpeedNode]
       73 CALL                             R7 1 1
       74 SETLIST                          R5 R6 2 [1]
       76 SETTABLEKS                       R5 R4 K0 ["items"]
       78 DUPTABLE                         R5 K1 [{"items"}]
       79 NEWTABLE                         R6 0 1
       81 GETUPVAL                         R7 0
       82 GETIMPORT                        R8 K29 [Enum.AnimationNodeType.GraphOutput]
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R9 R9 K30 ["hasGraphOutput"]
       87 CALL                             R9 0 -1
       88 CALL                             R7 -1 1
       89 SETLIST                          R6 R7 1 [1]
       91 SETTABLEKS                       R6 R5 K0 ["items"]
       93 SETLIST                          R0 R1 5 [1]
       95 RETURN                           R0 1

PROTO_17:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K1 [{"items"}]
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+41]
        6 NEWTABLE                         R2 0 2
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K4 [{"id", "text", "items"}]
       10 LOADK                            R5 K5 ["insertNode"]
       11 SETTABLEKS                       R5 R4 K2 ["id"]
       13 GETUPVAL                         R5 2
       14 LOADK                            R7 K6 ["Common"]
       15 LOADK                            R8 K7 ["AnimationEditor"]
       16 LOADK                            R9 K8 ["Menu"]
       17 LOADK                            R10 K9 ["InsertNode"]
       18 NAMECALL                         R5 R5 K10 ["getExternalText"]
       20 CALL                             R5 5 1
       21 SETTABLEKS                       R5 R4 K3 ["text"]
       23 GETUPVAL                         R5 3
       24 SETTABLEKS                       R5 R4 K0 ["items"]
       26 CALL                             R3 1 1
       27 DUPTABLE                         R4 K4 [{"id", "text", "items"}]
       28 LOADK                            R5 K11 ["insertParameter"]
       29 SETTABLEKS                       R5 R4 K2 ["id"]
       31 GETUPVAL                         R5 2
       32 LOADK                            R7 K6 ["Common"]
       33 LOADK                            R8 K7 ["AnimationEditor"]
       34 LOADK                            R9 K8 ["Menu"]
       35 LOADK                            R10 K12 ["InsertParameter"]
       36 NAMECALL                         R5 R5 K10 ["getExternalText"]
       38 CALL                             R5 5 1
       39 SETTABLEKS                       R5 R4 K3 ["text"]
       41 GETUPVAL                         R5 4
       42 SETTABLEKS                       R5 R4 K0 ["items"]
       44 SETLIST                          R2 R3 2 [1]
       46 JUMP                             ; [+23]
       47 NEWTABLE                         R2 0 1
       49 GETUPVAL                         R3 1
       50 DUPTABLE                         R4 K4 [{"id", "text", "items"}]
       51 LOADK                            R5 K5 ["insertNode"]
       52 SETTABLEKS                       R5 R4 K2 ["id"]
       54 GETUPVAL                         R5 2
       55 LOADK                            R7 K6 ["Common"]
       56 LOADK                            R8 K7 ["AnimationEditor"]
       57 LOADK                            R9 K8 ["Menu"]
       58 LOADK                            R10 K9 ["InsertNode"]
       59 NAMECALL                         R5 R5 K10 ["getExternalText"]
       61 CALL                             R5 5 1
       62 SETTABLEKS                       R5 R4 K3 ["text"]
       64 GETUPVAL                         R5 3
       65 SETTABLEKS                       R5 R4 K0 ["items"]
       67 CALL                             R3 1 -1
       68 SETLIST                          R2 R3 -1 [1]
       70 SETTABLEKS                       R2 R1 K0 ["items"]
       72 DUPTABLE                         R2 K1 [{"items"}]
       73 NEWTABLE                         R3 0 2
       75 GETUPVAL                         R4 5
       76 GETTABLEKS                       R4 R4 K13 ["duplicate"]
       78 GETTABLEKS                       R4 R4 K14 ["menuItem"]
       80 GETUPVAL                         R5 5
       81 GETTABLEKS                       R5 R5 K15 ["delete"]
       83 GETTABLEKS                       R5 R5 K14 ["menuItem"]
       85 SETLIST                          R3 R4 2 [1]
       87 SETTABLEKS                       R3 R2 K0 ["items"]
       89 DUPTABLE                         R3 K1 [{"items"}]
       90 NEWTABLE                         R4 0 1
       92 DUPTABLE                         R5 K17 [{"id", "text", "onActivated"}]
       93 LOADK                            R6 K18 ["frameSelection"]
       94 SETTABLEKS                       R6 R5 K2 ["id"]
       96 GETUPVAL                         R6 2
       97 LOADK                            R8 K6 ["Common"]
       98 LOADK                            R9 K7 ["AnimationEditor"]
       99 LOADK                            R10 K8 ["Menu"]
      100 LOADK                            R11 K19 ["FrameSelection"]
      101 NAMECALL                         R6 R6 K10 ["getExternalText"]
      103 CALL                             R6 5 1
      104 SETTABLEKS                       R6 R5 K3 ["text"]
      106 GETUPVAL                         R6 6
      107 SETTABLEKS                       R6 R5 K16 ["onActivated"]
      109 SETLIST                          R4 R5 1 [1]
      111 SETTABLEKS                       R4 R3 K0 ["items"]
      113 SETLIST                          R0 R1 3 [1]
      115 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K3 ["useContext"]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K4 ["Context"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R5 5
       30 GETTABLEKS                       R5 R5 K5 ["useSignalState"]
       32 GETTABLEKS                       R6 R4 K6 ["observeGraphNodeMap"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R6 6
       36 CALL                             R6 0 1
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 NEWTABLE                         R9 0 4
       46 GETTABLEKS                       R10 R0 K8 ["log"]
       48 GETTABLEKS                       R11 R0 K9 ["close"]
       50 GETTABLEKS                       R12 R3 K10 ["visibleMenuState"]
       52 GETTABLEKS                       R13 R4 K11 ["createConnectedParameterAsync"]
       54 SETLIST                          R9 R10 4 [1]
       56 CALL                             R7 2 1
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K12 ["useMemo"]
       60 NEWCLOSURE                       R9 P1
       61 CAPTURE                          VAL R3
       62 NEWTABLE                         R10 0 1
       64 GETTABLEKS                       R11 R3 K10 ["visibleMenuState"]
       66 SETLIST                          R10 R11 1 [1]
       68 CALL                             R8 2 1
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K12 ["useMemo"]
       72 NEWCLOSURE                       R10 P2
       73 CAPTURE                          VAL R3
       74 NEWTABLE                         R11 0 1
       76 GETTABLEKS                       R12 R3 K10 ["visibleMenuState"]
       78 SETLIST                          R11 R12 1 [1]
       80 CALL                             R9 2 1
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R10 R10 K12 ["useMemo"]
       84 NEWCLOSURE                       R11 P3
       85 CAPTURE                          VAL R5
       86 NEWTABLE                         R12 0 1
       88 MOVE                             R13 R5
       89 SETLIST                          R12 R13 1 [1]
       91 CALL                             R10 2 1
       92 GETUPVAL                         R11 1
       93 GETTABLEKS                       R11 R11 K12 ["useMemo"]
       95 NEWCLOSURE                       R12 P4
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R2
       98 NEWTABLE                         R13 0 2
      100 MOVE                             R14 R10
      101 GETTABLEKS                       R15 R2 K13 ["animationParameters"]
      103 SETLIST                          R13 R14 2 [1]
      105 CALL                             R11 2 1
      106 DUPTABLE                         R12 K16 [{"duplicate", "delete"}]
      107 GETUPVAL                         R13 7
      108 GETUPVAL                         R14 8
      109 LOADK                            R15 K17 ["Common"]
      110 LOADK                            R16 K18 ["Duplicate"]
      111 CALL                             R14 2 -1
      112 CALL                             R13 -1 1
      113 SETTABLEKS                       R13 R12 K14 ["duplicate"]
      115 GETUPVAL                         R13 7
      116 GETUPVAL                         R14 8
      117 LOADK                            R15 K17 ["Common"]
      118 LOADK                            R16 K19 ["Delete"]
      119 CALL                             R14 2 -1
      120 CALL                             R13 -1 1
      121 SETTABLEKS                       R13 R12 K15 ["delete"]
      123 GETUPVAL                         R13 9
      124 GETTABLEKS                       R13 R13 K20 ["useEventCallback"]
      126 NEWCLOSURE                       R14 P5
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R12
      130 CAPTURE                          UPVAL U10
      131 CAPTURE                          VAL R4
      132 CALL                             R13 1 1
      133 GETUPVAL                         R14 1
      134 GETTABLEKS                       R14 R14 K12 ["useMemo"]
      136 NEWCLOSURE                       R15 P6
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R7
      139 CAPTURE                          UPVAL U10
      140 NEWTABLE                         R16 0 2
      142 MOVE                             R17 R11
      143 MOVE                             R18 R7
      144 SETLIST                          R16 R17 2 [1]
      146 CALL                             R14 2 1
      147 GETUPVAL                         R16 11
      148 CALL                             R16 0 1
      149 JUMPIFNOT                        R16 ; [+5]
      150 GETUPVAL                         R15 12
      151 GETTABLEKS                       R16 R0 K9 ["close"]
      153 CALL                             R15 1 1
      154 JUMP                             ; [+1]
      155 LOADNIL                          R15
      156 DUPCLOSURE                       R16 K21 [PROTO_15]
      157 CAPTURE                          UPVAL U13
      158 CAPTURE                          UPVAL U14
      159 GETUPVAL                         R17 1
      160 GETTABLEKS                       R17 R17 K12 ["useMemo"]
      162 NEWCLOSURE                       R18 P8
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R4
      165 NEWTABLE                         R19 0 1
      167 GETTABLEKS                       R20 R4 K22 ["hasGraphOutput"]
      169 CALL                             R20 0 -1
      170 SETLIST                          R19 R20 -1 [1]
      172 CALL                             R17 2 1
      173 GETUPVAL                         R18 1
      174 GETTABLEKS                       R18 R18 K12 ["useMemo"]
      176 NEWCLOSURE                       R19 P9
      177 CAPTURE                          UPVAL U11
      178 CAPTURE                          UPVAL U15
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R6
      184 NEWTABLE                         R20 0 7
      186 MOVE                             R21 R17
      187 MOVE                             R22 R15
      188 MOVE                             R23 R1
      189 GETTABLEKS                       R24 R4 K22 ["hasGraphOutput"]
      191 CALL                             R24 0 1
      192 MOVE                             R25 R6
      193 GETTABLEKS                       R26 R12 K14 ["duplicate"]
      195 GETTABLEKS                       R26 R26 K23 ["menuItem"]
      197 GETTABLEKS                       R27 R12 K15 ["delete"]
      199 GETTABLEKS                       R27 R27 K23 ["menuItem"]
      201 SETLIST                          R20 R21 7 [1]
      203 CALL                             R18 2 1
      204 GETTABLEKS                       R19 R0 K24 ["isOpen"]
      206 JUMPIF                           R19 ; [+2]
      207 LOADNIL                          R19
      208 RETURN                           R19 1
      209 GETUPVAL                         R19 1
      210 GETTABLEKS                       R19 R19 K25 ["createElement"]
      212 GETUPVAL                         R20 16
      213 GETTABLEKS                       R20 R20 K26 ["Menu"]
      215 DUPTABLE                         R21 K31 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
      216 GETTABLEKS                       R22 R0 K24 ["isOpen"]
      218 SETTABLEKS                       R22 R21 K24 ["isOpen"]
      220 JUMPIFNOT                        R8 ; [+2]
      221 MOVE                             R22 R14
      222 JUMP                             ; [+4]
      223 JUMPIFNOT                        R9 ; [+2]
      224 MOVE                             R22 R17
      225 JUMP                             ; [+1]
      226 MOVE                             R22 R18
      227 SETTABLEKS                       R22 R21 K27 ["items"]
      229 SETTABLEKS                       R13 R21 K28 ["onActivated"]
      231 GETTABLEKS                       R22 R0 K9 ["close"]
      233 SETTABLEKS                       R22 R21 K29 ["onPressedOutside"]
      235 GETUPVAL                         R22 16
      236 GETTABLEKS                       R22 R22 K32 ["Enums"]
      238 GETTABLEKS                       R22 R22 K33 ["InputSize"]
      240 GETTABLEKS                       R22 R22 K34 ["XSmall"]
      242 SETTABLEKS                       R22 R21 K30 ["size"]
      244 CALL                             R19 2 -1
      245 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationNodeWrapper"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["AnimationParameterContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["Constants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Framework"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K14 ["InsertNodeContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Contexts"]
       53 GETTABLEKS                       R8 R8 K15 ["NativeGraphContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K6 ["Util"]
       60 GETTABLEKS                       R9 R9 K16 ["Nodes"]
       62 GETTABLEKS                       R9 R9 K17 ["NodeNameFormattingUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K11 ["Parent"]
       69 GETTABLEKS                       R10 R10 K18 ["React"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K11 ["Parent"]
       76 GETTABLEKS                       R11 R11 K19 ["ReactUtils"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K11 ["Parent"]
       83 GETTABLEKS                       R12 R12 K20 ["SignalsReact"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K21 ["Flags"]
       90 GETTABLEKS                       R13 R13 K22 ["getFFlagAnimGraphInsertParameterContextMenu"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K23 ["Hooks"]
       97 GETTABLEKS                       R14 R14 K24 ["useActionMenuItem"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K25 ["Components"]
      104 GETTABLEKS                       R15 R15 K26 ["NodeView"]
      106 GETTABLEKS                       R15 R15 K27 ["MenuActions"]
      108 GETTABLEKS                       R15 R15 K28 ["useFrameSelection"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K5 [require]
      113 GETTABLEKS                       R16 R0 K23 ["Hooks"]
      115 GETTABLEKS                       R16 R16 K29 ["useParameterMenuItems"]
      117 CALL                             R15 1 1
      118 DUPCLOSURE                       R16 K30 [PROTO_0]
      119 DUPCLOSURE                       R17 K31 [PROTO_1]
      120 DUPCLOSURE                       R18 K32 [PROTO_2]
      121 DUPCLOSURE                       R19 K33 [PROTO_4]
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R5
      124 DUPCLOSURE                       R20 K34 [PROTO_18]
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R4
      142 RETURN                           R20 1
