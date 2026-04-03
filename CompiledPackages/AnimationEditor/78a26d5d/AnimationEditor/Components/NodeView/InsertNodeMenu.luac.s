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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createConnectedParameterAsync"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["visibleMenuState"]
        6 GETTABLEKS                       R1 R2 K2 ["sourcePinInfo"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["visibleMenuState"]
       11 GETTABLEKS                       R2 R3 K3 ["targetPinPosition"]
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 CALL                             R0 4 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["log"]
        3 LOADK                            R3 K1 ["Inserting an additional instance of parameter "]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R1 R1 K2 ["info"]
        7 CALL                             R1 3 0
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K3 ["visibleMenuState"]
       11 JUMPIFNOTEQKNIL                  R1 ; [+9]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["log"]
       16 LOADK                            R3 K4 ["No insertNodeContext.visibleMenuState"]
       17 NAMECALL                         R1 R1 K5 ["warn"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K6 ["close"]
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
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R1 R2 K0 ["log"]
       42 LOADK                            R4 K14 ["Unexpected menu item id: "]
       43 FASTCALL1                        TOSTRING R0 ; [+3]
       44 MOVE                             R6 R0
       45 GETIMPORT                        R5 K16 [tostring]
       47 CALL                             R5 1 1
       48 CONCAT                           R3 R4 R5
       49 NAMECALL                         R1 R1 K5 ["warn"]
       51 CALL                             R1 2 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R5 2
       54 GETTABLEKS                       R4 R5 K3 ["visibleMenuState"]
       56 GETTABLEKS                       R3 R4 K17 ["sourcePinInfo"]
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

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["visibleMenuState"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADB                            R0 0
        6 RETURN                           R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["visibleMenuState"]
       10 GETTABLEKS                       R0 R1 K1 ["sourcePinInfo"]
       12 JUMPIFNOTEQKNIL                  R0 ; [+3]
       14 LOADB                            R1 0
       15 RETURN                           R1 1
       16 GETTABLEKS                       R2 R0 K2 ["sourcePinDataType"]
       18 JUMPIFEQKS                       R2 K3 ["Parameter"] ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R7 R8 K0 ["animationParameters"]
        9 GETTABLE                         R6 R7 R4
       10 JUMPIFNOT                        R6 ; [+5]
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R7 R8 K0 ["animationParameters"]
       14 GETTABLE                         R6 R7 R4
       15 SETTABLE                         R6 R0 R4
       16 FORGLOOP                         R1 1 ; [-11]
       18 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["log"]
        3 LOADK                            R2 K1 ["Inserting node of type {}"]
        4 GETUPVAL                         R4 1
        5 FASTCALL1                        TOSTRING R4 ; [+2]
        6 GETIMPORT                        R3 K3 [tostring]
        8 CALL                             R3 1 1
        9 NAMECALL                         R0 R0 K4 ["info"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K5 ["visibleMenuState"]
       15 JUMPIFNOTEQKNIL                  R0 ; [+9]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R0 R1 K0 ["log"]
       20 LOADK                            R2 K6 ["No insertNodeContext.visibleMenuState"]
       21 NAMECALL                         R0 R0 K7 ["warn"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 1
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R1 R2 K8 ["PARAMETER_NODE_CLASSNAME"]
       29 JUMPIFNOTEQ                      R0 R1 ; [+45]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R3 R4 K5 ["visibleMenuState"]
       34 GETTABLEKS                       R2 R3 K9 ["sourcePinInfo"]
       36 JUMPIFNOTEQKNIL                  R2 ; [+2]
       38 LOADB                            R1 0 +1
       39 LOADB                            R1 1
       40 FASTCALL2K                       ASSERT R1 K10 ; [+4]
       42 LOADK                            R2 K10 ["Expected sourcePinInfo"]
       43 GETIMPORT                        R0 K12 [assert]
       45 CALL                             R0 2 0
       46 GETUPVAL                         R1 4
       47 GETTABLEKS                       R0 R1 K13 ["createConnectedParameterAsync"]
       49 GETUPVAL                         R3 2
       50 GETTABLEKS                       R2 R3 K5 ["visibleMenuState"]
       52 GETTABLEKS                       R1 R2 K9 ["sourcePinInfo"]
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R3 R4 K5 ["visibleMenuState"]
       57 GETTABLEKS                       R2 R3 K14 ["targetPinPosition"]
       59 GETUPVAL                         R6 2
       60 GETTABLEKS                       R5 R6 K5 ["visibleMenuState"]
       62 GETTABLEKS                       R4 R5 K9 ["sourcePinInfo"]
       64 GETTABLEKS                       R3 R4 K15 ["sourcePinName"]
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R6 R7 K5 ["visibleMenuState"]
       69 GETTABLEKS                       R5 R6 K9 ["sourcePinInfo"]
       71 GETTABLEKS                       R4 R5 K16 ["sourcePinValue"]
       73 CALL                             R0 4 0
       74 JUMP                             ; [+58]
       75 GETUPVAL                         R1 1
       76 FASTCALL1                        TYPE R1 ; [+2]
       77 GETIMPORT                        R0 K18 [type]
       79 CALL                             R0 1 1
       80 JUMPIFNOTEQKS                    R0 K19 ["number"] ; [+39]
       82 GETIMPORT                        R0 K22 [Enum.AnimationNodeType]
       84 GETUPVAL                         R2 1
       85 NAMECALL                         R0 R0 K23 ["FromValue"]
       87 CALL                             R0 2 1
       88 JUMPIFEQKNIL                     R0 ; [+17]
       90 GETUPVAL                         R2 4
       91 GETTABLEKS                       R1 R2 K24 ["createNodeAsync"]
       93 MOVE                             R2 R0
       94 GETUPVAL                         R5 2
       95 GETTABLEKS                       R4 R5 K5 ["visibleMenuState"]
       97 GETTABLEKS                       R3 R4 K14 ["targetPinPosition"]
       99 GETUPVAL                         R6 2
      100 GETTABLEKS                       R5 R6 K5 ["visibleMenuState"]
      102 GETTABLEKS                       R4 R5 K9 ["sourcePinInfo"]
      104 CALL                             R1 3 0
      105 JUMP                             ; [+27]
      106 GETUPVAL                         R2 0
      107 GETTABLEKS                       R1 R2 K0 ["log"]
      109 LOADK                            R4 K25 ["Could not convert id to Enum.AnimationNodeType: "]
      110 GETUPVAL                         R6 1
      111 FASTCALL1                        TOSTRING R6 ; [+2]
      112 GETIMPORT                        R5 K3 [tostring]
      114 CALL                             R5 1 1
      115 CONCAT                           R3 R4 R5
      116 NAMECALL                         R1 R1 K7 ["warn"]
      118 CALL                             R1 2 0
      119 JUMP                             ; [+13]
      120 GETUPVAL                         R1 0
      121 GETTABLEKS                       R0 R1 K0 ["log"]
      123 LOADK                            R3 K26 ["Unexpected node id type: "]
      124 GETUPVAL                         R5 1
      125 FASTCALL1                        TYPEOF R5 ; [+2]
      126 GETIMPORT                        R4 K28 [typeof]
      128 CALL                             R4 1 1
      129 CONCAT                           R2 R3 R4
      130 NAMECALL                         R0 R0 K7 ["warn"]
      132 CALL                             R0 2 0
      133 GETUPVAL                         R1 0
      134 GETTABLEKS                       R0 R1 K29 ["close"]
      136 CALL                             R0 0 0
      137 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_10:
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
       46 GETUPVAL                         R11 2
       47 GETTABLEKS                       R10 R11 K14 ["PARAMETER_NODE_CLASSNAME"]
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

PROTO_11:
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
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K7 ["formatName"]
       17 GETTABLEKS                       R6 R2 K6 ["Type"]
       19 GETTABLEKS                       R5 R6 K8 ["Name"]
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

PROTO_12:
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
       84 GETUPVAL                         R10 1
       85 GETTABLEKS                       R9 R10 K30 ["hasGraphOutput"]
       87 CALL                             R9 0 -1
       88 CALL                             R7 -1 1
       89 SETLIST                          R6 R7 1 [1]
       91 SETTABLEKS                       R6 R5 K0 ["items"]
       93 SETLIST                          R0 R1 5 [1]
       95 GETUPVAL                         R4 2
       96 GETTABLEKS                       R3 R4 K31 ["Utility"]
       98 GETTABLEKS                       R2 R3 K32 ["Flags"]
      100 GETTABLEKS                       R1 R2 K33 ["FoundationBaseMenuSubmenuSupport"]
      102 JUMPIFNOT                        R1 ; [+21]
      103 NEWTABLE                         R1 0 1
      105 DUPTABLE                         R2 K36 [{"id", "text", "items"}]
      106 LOADK                            R3 K37 ["insertNode"]
      107 SETTABLEKS                       R3 R2 K34 ["id"]
      109 GETUPVAL                         R3 3
      110 LOADK                            R5 K38 ["Common"]
      111 LOADK                            R6 K39 ["AnimationEditor"]
      112 LOADK                            R7 K40 ["Menu"]
      113 LOADK                            R8 K41 ["InsertNode"]
      114 NAMECALL                         R3 R3 K42 ["getExternalText"]
      116 CALL                             R3 5 1
      117 SETTABLEKS                       R3 R2 K35 ["text"]
      119 SETTABLEKS                       R0 R2 K0 ["items"]
      121 SETLIST                          R1 R2 1 [1]
      123 RETURN                           R1 1
      124 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["useContext"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["useContext"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K3 ["useContext"]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R5 R6 K4 ["Context"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R5 R6 K5 ["useSignalState"]
       32 GETTABLEKS                       R6 R4 K6 ["observeGraphNodeMap"]
       34 CALL                             R5 1 1
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R6 R7 K7 ["useCallback"]
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R8 0 4
       44 GETTABLEKS                       R9 R0 K8 ["log"]
       46 GETTABLEKS                       R10 R0 K9 ["close"]
       48 GETTABLEKS                       R11 R3 K10 ["visibleMenuState"]
       50 GETTABLEKS                       R12 R4 K11 ["createConnectedParameterAsync"]
       52 SETLIST                          R8 R9 4 [1]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R7 R8 K12 ["useMemo"]
       58 NEWCLOSURE                       R8 P1
       59 CAPTURE                          VAL R3
       60 NEWTABLE                         R9 0 1
       62 GETTABLEKS                       R10 R3 K10 ["visibleMenuState"]
       64 SETLIST                          R9 R10 1 [1]
       66 CALL                             R7 2 1
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R8 R9 K12 ["useMemo"]
       70 NEWCLOSURE                       R9 P2
       71 CAPTURE                          VAL R5
       72 NEWTABLE                         R10 0 1
       74 MOVE                             R11 R5
       75 SETLIST                          R10 R11 1 [1]
       77 CALL                             R8 2 1
       78 GETUPVAL                         R10 1
       79 GETTABLEKS                       R9 R10 K12 ["useMemo"]
       81 NEWCLOSURE                       R10 P3
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R2
       84 NEWTABLE                         R11 0 2
       86 MOVE                             R12 R8
       87 GETTABLEKS                       R13 R2 K13 ["animationParameters"]
       89 SETLIST                          R11 R12 2 [1]
       91 CALL                             R9 2 1
       92 GETUPVAL                         R11 1
       93 GETTABLEKS                       R10 R11 K7 ["useCallback"]
       95 NEWCLOSURE                       R11 P4
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R3
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          VAL R4
      100 NEWTABLE                         R12 0 5
      102 GETTABLEKS                       R13 R0 K8 ["log"]
      104 GETTABLEKS                       R14 R0 K9 ["close"]
      106 GETTABLEKS                       R15 R4 K14 ["createNodeAsync"]
      108 GETTABLEKS                       R16 R4 K11 ["createConnectedParameterAsync"]
      110 GETTABLEKS                       R17 R3 K10 ["visibleMenuState"]
      112 SETLIST                          R12 R13 5 [1]
      114 CALL                             R10 2 1
      115 GETUPVAL                         R12 1
      116 GETTABLEKS                       R11 R12 K12 ["useMemo"]
      118 NEWCLOSURE                       R12 P5
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R6
      121 CAPTURE                          UPVAL U6
      122 NEWTABLE                         R13 0 2
      124 MOVE                             R14 R9
      125 MOVE                             R15 R6
      126 SETLIST                          R13 R14 2 [1]
      128 CALL                             R11 2 1
      129 DUPCLOSURE                       R12 K15 [PROTO_11]
      130 CAPTURE                          UPVAL U7
      131 CAPTURE                          UPVAL U8
      132 GETUPVAL                         R14 1
      133 GETTABLEKS                       R13 R14 K12 ["useMemo"]
      135 NEWCLOSURE                       R14 P7
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R4
      138 CAPTURE                          UPVAL U9
      139 CAPTURE                          VAL R1
      140 NEWTABLE                         R15 0 2
      142 MOVE                             R16 R1
      143 GETTABLEKS                       R17 R4 K16 ["hasGraphOutput"]
      145 CALL                             R17 0 -1
      146 SETLIST                          R15 R16 -1 [1]
      148 CALL                             R13 2 1
      149 GETTABLEKS                       R14 R0 K17 ["isOpen"]
      151 JUMPIF                           R14 ; [+2]
      152 LOADNIL                          R14
      153 RETURN                           R14 1
      154 GETUPVAL                         R15 1
      155 GETTABLEKS                       R14 R15 K18 ["createElement"]
      157 GETUPVAL                         R16 9
      158 GETTABLEKS                       R15 R16 K19 ["Menu"]
      160 DUPTABLE                         R16 K24 [{"isOpen", "items", "onActivated", "onPressedOutside", "size"}]
      161 GETTABLEKS                       R17 R0 K17 ["isOpen"]
      163 SETTABLEKS                       R17 R16 K17 ["isOpen"]
      165 JUMPIFNOT                        R7 ; [+2]
      166 MOVE                             R17 R11
      167 JUMP                             ; [+1]
      168 MOVE                             R17 R13
      169 SETTABLEKS                       R17 R16 K20 ["items"]
      171 SETTABLEKS                       R10 R16 K21 ["onActivated"]
      173 GETTABLEKS                       R17 R0 K9 ["close"]
      175 SETTABLEKS                       R17 R16 K22 ["onPressedOutside"]
      177 GETUPVAL                         R20 9
      178 GETTABLEKS                       R19 R20 K25 ["Enums"]
      180 GETTABLEKS                       R18 R19 K26 ["InputSize"]
      182 GETTABLEKS                       R17 R18 K27 ["XSmall"]
      184 SETTABLEKS                       R17 R16 K23 ["size"]
      186 CALL                             R14 2 -1
      187 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationNodeWrapper"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R4 K9 ["AnimationParameterContext"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["Constants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["Framework"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Contexts"]
       46 GETTABLEKS                       R7 R8 K14 ["InsertNodeContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Contexts"]
       53 GETTABLEKS                       R8 R9 K15 ["NativeGraphContext"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R11 R0 K6 ["Util"]
       60 GETTABLEKS                       R10 R11 K16 ["Nodes"]
       62 GETTABLEKS                       R9 R10 K17 ["NodeNameFormattingUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K11 ["Parent"]
       69 GETTABLEKS                       R10 R11 K18 ["React"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R12 R0 K11 ["Parent"]
       76 GETTABLEKS                       R11 R12 K19 ["SignalsReact"]
       78 CALL                             R10 1 1
       79 DUPCLOSURE                       R11 K20 [PROTO_0]
       80 DUPCLOSURE                       R12 K21 [PROTO_1]
       81 DUPCLOSURE                       R13 K22 [PROTO_13]
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R4
       92 RETURN                           R13 1
