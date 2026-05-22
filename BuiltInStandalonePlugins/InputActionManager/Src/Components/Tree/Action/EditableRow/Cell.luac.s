PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["property"]
        3 JUMPIFNOTEQKS                    R0 K1 ["keyCode"] ; [+7]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["action"]
        8 GETTABLEKS                       R0 R0 K3 ["type"]
       10 RETURN                           R0 1
       11 GETIMPORT                        R0 K7 [Enum.InputActionType.Bool]
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K3 [{"id", "text", "icon"}]
        3 GETIMPORT                        R2 K7 [Enum.KeyCode.Unknown]
        5 GETTABLEKS                       R2 R2 K8 ["Value"]
        7 SETTABLEKS                       R2 R1 K0 ["id"]
        9 LOADK                            R2 K9 ["None"]
       10 SETTABLEKS                       R2 R1 K1 ["text"]
       12 LOADK                            R2 K10 ["circle-question"]
       13 SETTABLEKS                       R2 R1 K2 ["icon"]
       15 SETLIST                          R0 R1 1 [1]
       17 GETUPVAL                         R1 0
       18 JUMPIF                           R1 ; [+1]
       19 RETURN                           R0 1
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K11 ["schema"]
       24 GETTABLE                         R1 R2 R3
       25 JUMPIF                           R1 ; [+1]
       26 RETURN                           R0 1
       27 MOVE                             R2 R1
       28 LOADNIL                          R3
       29 LOADNIL                          R4
       30 FORGPREP                         R2
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K12 ["Name"]
       34 JUMPIFNOTEQ                      R5 R7 ; [+39]
       36 MOVE                             R7 R6
       37 LOADNIL                          R8
       38 LOADNIL                          R9
       39 FORGPREP                         R7
       40 GETIMPORT                        R12 K7 [Enum.KeyCode.Unknown]
       42 JUMPIFEQ                         R11 R12 ; [+29]
       44 GETIMPORT                        R12 K14 [xpcall]
       46 NEWCLOSURE                       R13 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R11
       49 DUPCLOSURE                       R14 K15 [PROTO_2]
       50 CALL                             R12 2 2
       51 DUPTABLE                         R16 K3 [{"id", "text", "icon"}]
       52 GETTABLEKS                       R17 R11 K8 ["Value"]
       54 SETTABLEKS                       R17 R16 K0 ["id"]
       56 GETTABLEKS                       R17 R11 K12 ["Name"]
       58 SETTABLEKS                       R17 R16 K1 ["text"]
       60 JUMPIFNOT                        R12 ; [+2]
       61 MOVE                             R17 R13
       62 JUMP                             ; [+1]
       63 LOADNIL                          R17
       64 SETTABLEKS                       R17 R16 K2 ["icon"]
       66 FASTCALL2                        TABLE_INSERT R0 R16 ; [+4]
       68 MOVE                             R15 R0
       69 GETIMPORT                        R14 K18 [table.insert]
       71 CALL                             R14 2 0
       72 FORGLOOP                         R7 2 ; [-33]
       74 FORGLOOP                         R2 2 ; [-44]
       76 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["binding"]
        3 JUMPIF                           R0 ; [+5]
        4 GETIMPORT                        R0 K4 [Enum.KeyCode.Unknown]
        6 GETTABLEKS                       R0 R0 K5 ["Value"]
        8 RETURN                           R0 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["binding"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K6 ["property"]
       15 GETTABLE                         R0 R1 R2
       16 JUMPIFNOT                        R0 ; [+3]
       17 GETTABLEKS                       R1 R0 K5 ["Value"]
       19 RETURN                           R1 1
       20 GETIMPORT                        R1 K4 [Enum.KeyCode.Unknown]
       22 GETTABLEKS                       R1 R1 K5 ["Value"]
       24 RETURN                           R1 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected id to be a number"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["binding"]
       18 JUMPIFNOT                        R1 ; [+35]
       19 GETIMPORT                        R1 K9 [Enum.KeyCode]
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K10 ["FromValue"]
       24 CALL                             R1 2 1
       25 NEWTABLE                         R2 0 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K11 ["property"]
       30 SETTABLE                         R1 R2 R3
       31 LOADK                            R6 K12 ["Invalid key code value: %*"]
       32 MOVE                             R8 R0
       33 NAMECALL                         R6 R6 K13 ["format"]
       35 CALL                             R6 2 1
       36 MOVE                             R5 R6
       37 FASTCALL2                        ASSERT R1 R5 ; [+4]
       39 MOVE                             R4 R1
       40 GETIMPORT                        R3 K5 [assert]
       42 CALL                             R3 2 0
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K14 ["updateBinding"]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K6 ["binding"]
       49 GETTABLEKS                       R4 R4 K15 ["uuid"]
       51 MOVE                             R5 R2
       52 CALL                             R3 2 0
       53 RETURN                           R0 0
       54 GETIMPORT                        R1 K9 [Enum.KeyCode]
       56 MOVE                             R3 R0
       57 NAMECALL                         R1 R1 K10 ["FromValue"]
       59 CALL                             R1 2 1
       60 DUPTABLE                         R2 K18 [{"name", "parentUuid"}]
       61 LOADK                            R4 K19 ["%*%*"]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K20 ["action"]
       65 GETTABLEKS                       R6 R6 K16 ["name"]
       67 GETUPVAL                         R7 0
       68 GETTABLEKS                       R7 R7 K21 ["schema"]
       70 NAMECALL                         R4 R4 K13 ["format"]
       72 CALL                             R4 3 1
       73 MOVE                             R3 R4
       74 SETTABLEKS                       R3 R2 K16 ["name"]
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R3 R3 K20 ["action"]
       79 GETTABLEKS                       R3 R3 K15 ["uuid"]
       81 SETTABLEKS                       R3 R2 K17 ["parentUuid"]
       83 GETUPVAL                         R3 0
       84 GETTABLEKS                       R3 R3 K11 ["property"]
       86 SETTABLE                         R1 R2 R3
       87 GETUPVAL                         R3 1
       88 GETTABLEKS                       R3 R3 K14 ["updateBinding"]
       90 LOADNIL                          R4
       91 MOVE                             R5 R2
       92 CALL                             R3 2 0
       93 GETUPVAL                         R3 0
       94 GETTABLEKS                       R3 R3 K22 ["onCreated"]
       96 JUMPIFNOT                        R3 ; [+4]
       97 GETUPVAL                         R3 0
       98 GETTABLEKS                       R3 R3 K22 ["onCreated"]
      100 CALL                             R3 0 0
      101 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["property"]
        3 JUMPIFNOTEQKS                    R0 K1 ["keyCode"] ; [+3]
        5 LOADB                            R0 1
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["property"]
       10 JUMPIFEQKS                       R0 K2 ["up"] ; [+26]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["property"]
       15 JUMPIFEQKS                       R0 K3 ["down"] ; [+21]
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K0 ["property"]
       20 JUMPIFEQKS                       R0 K4 ["left"] ; [+16]
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["property"]
       25 JUMPIFEQKS                       R0 K5 ["right"] ; [+11]
       27 GETUPVAL                         R0 0
       28 GETTABLEKS                       R0 R0 K0 ["property"]
       30 JUMPIFEQKS                       R0 K6 ["forward"] ; [+6]
       32 GETUPVAL                         R0 0
       33 GETTABLEKS                       R0 R0 K0 ["property"]
       35 JUMPIFNOTEQKS                    R0 K7 ["backward"] ; [+8]
       37 GETUPVAL                         R0 0
       38 GETTABLEKS                       R0 R0 K8 ["schema"]
       40 JUMPIFEQKS                       R0 K9 ["Touch"] ; [+3]
       42 LOADB                            R0 1
       43 RETURN                           R0 1
       44 GETUPVAL                         R0 0
       45 GETTABLEKS                       R0 R0 K10 ["binding"]
       47 JUMPIFNOTEQKNIL                  R0 ; [+3]
       49 LOADB                            R0 0
       50 RETURN                           R0 1
       51 GETUPVAL                         R0 0
       52 GETTABLEKS                       R0 R0 K10 ["binding"]
       54 GETTABLEKS                       R0 R0 K2 ["up"]
       56 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
       58 JUMPIFNOTEQ                      R0 R1 ; [+55]
       60 GETUPVAL                         R0 0
       61 GETTABLEKS                       R0 R0 K10 ["binding"]
       63 GETTABLEKS                       R0 R0 K3 ["down"]
       65 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
       67 JUMPIFNOTEQ                      R0 R1 ; [+46]
       69 GETUPVAL                         R0 0
       70 GETTABLEKS                       R0 R0 K10 ["binding"]
       72 GETTABLEKS                       R0 R0 K4 ["left"]
       74 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
       76 JUMPIFNOTEQ                      R0 R1 ; [+37]
       78 GETUPVAL                         R0 0
       79 GETTABLEKS                       R0 R0 K10 ["binding"]
       81 GETTABLEKS                       R0 R0 K5 ["right"]
       83 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
       85 JUMPIFNOTEQ                      R0 R1 ; [+28]
       87 GETUPVAL                         R0 0
       88 GETTABLEKS                       R0 R0 K10 ["binding"]
       90 GETTABLEKS                       R0 R0 K6 ["forward"]
       92 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
       94 JUMPIFNOTEQ                      R0 R1 ; [+19]
       96 GETUPVAL                         R0 0
       97 GETTABLEKS                       R0 R0 K10 ["binding"]
       99 GETTABLEKS                       R0 R0 K7 ["backward"]
      101 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
      103 JUMPIFNOTEQ                      R0 R1 ; [+10]
      105 GETUPVAL                         R0 0
      106 GETTABLEKS                       R0 R0 K10 ["binding"]
      108 GETTABLEKS                       R0 R0 K1 ["keyCode"]
      110 GETIMPORT                        R1 K14 [Enum.KeyCode.Unknown]
      112 JUMPIFEQ                         R0 R1 ; [+3]
      114 LOADB                            R0 1
      115 RETURN                           R0 1
      116 LOADB                            R0 0
      117 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R5 0 2
       21 GETTABLEKS                       R6 R0 K3 ["action"]
       23 GETTABLEKS                       R7 R0 K4 ["property"]
       25 SETLIST                          R5 R6 2 [1]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       31 NEWCLOSURE                       R5 P1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U3
       36 NEWTABLE                         R6 0 2
       38 GETTABLEKS                       R7 R0 K5 ["schema"]
       40 MOVE                             R8 R3
       41 SETLIST                          R6 R7 2 [1]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       47 NEWCLOSURE                       R6 P2
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R7 0 2
       51 GETTABLEKS                       R8 R0 K6 ["binding"]
       53 GETTABLEKS                       R9 R0 K4 ["property"]
       55 SETLIST                          R7 R8 2 [1]
       57 CALL                             R5 2 1
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       61 NEWCLOSURE                       R7 P3
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R1
       64 NEWTABLE                         R8 0 2
       66 GETTABLEKS                       R9 R0 K6 ["binding"]
       68 GETTABLEKS                       R10 R0 K4 ["property"]
       70 SETLIST                          R8 R9 2 [1]
       72 CALL                             R6 2 1
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       76 NEWCLOSURE                       R8 P4
       77 CAPTURE                          VAL R0
       78 NEWTABLE                         R9 0 3
       80 GETTABLEKS                       R10 R0 K4 ["property"]
       82 GETTABLEKS                       R11 R0 K6 ["binding"]
       84 GETTABLEKS                       R12 R0 K5 ["schema"]
       86 SETLIST                          R9 R10 3 [1]
       88 CALL                             R7 2 1
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R8 R8 K8 ["createElement"]
       92 GETUPVAL                         R9 4
       93 DUPTABLE                         R10 K11 [{"LayoutOrder", "tag"}]
       94 GETTABLEKS                       R11 R0 K9 ["LayoutOrder"]
       96 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       98 LOADK                            R11 K12 ["size-0-full columns-input align-y-center padding-left-xxsmall padding-right-xxsmall"]
       99 SETTABLEKS                       R11 R10 K10 ["tag"]
      101 DUPTABLE                         R11 K14 [{"Dropdown"}]
      102 MOVE                             R12 R7
      103 JUMPIFNOT                        R12 ; [+45]
      104 GETUPVAL                         R12 0
      105 GETTABLEKS                       R12 R12 K8 ["createElement"]
      107 GETUPVAL                         R13 5
      108 DUPTABLE                         R14 K23 [{"items", "label", "maxHeight", "onItemChanged", "size", "testId", "value", "width"}]
      109 SETTABLEKS                       R4 R14 K15 ["items"]
      111 LOADK                            R15 K24 [""]
      112 SETTABLEKS                       R15 R14 K16 ["label"]
      114 LOADN                            R15 200
      115 SETTABLEKS                       R15 R14 K17 ["maxHeight"]
      117 SETTABLEKS                       R6 R14 K18 ["onItemChanged"]
      119 GETUPVAL                         R15 6
      120 GETTABLEKS                       R15 R15 K25 ["Enums"]
      122 GETTABLEKS                       R15 R15 K26 ["InputSize"]
      124 GETTABLEKS                       R15 R15 K27 ["Small"]
      126 SETTABLEKS                       R15 R14 K19 ["size"]
      128 LOADK                            R16 K28 ["binding-cell-%*-%*"]
      129 GETTABLEKS                       R18 R0 K4 ["property"]
      131 GETTABLEKS                       R19 R0 K5 ["schema"]
      133 NAMECALL                         R16 R16 K29 ["format"]
      135 CALL                             R16 3 1
      136 MOVE                             R15 R16
      137 SETTABLEKS                       R15 R14 K20 ["testId"]
      139 SETTABLEKS                       R5 R14 K21 ["value"]
      141 GETIMPORT                        R15 K32 [UDim.new]
      143 LOADN                            R16 1
      144 LOADN                            R17 0
      145 CALL                             R15 2 1
      146 SETTABLEKS                       R15 R14 K22 ["width"]
      148 CALL                             R12 2 1
      149 SETTABLEKS                       R12 R11 K13 ["Dropdown"]
      151 CALL                             R8 3 -1
      152 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Utility"]
       23 GETTABLEKS                       R3 R3 K10 ["getBuilderIconForKeycode"]
       25 GETTABLEKS                       R4 R2 K11 ["Dropdown"]
       27 GETTABLEKS                       R4 R4 K12 ["Root"]
       29 GETTABLEKS                       R5 R2 K13 ["View"]
       31 GETIMPORT                        R6 K5 [require]
       33 GETTABLEKS                       R7 R0 K14 ["Src"]
       35 GETTABLEKS                       R7 R7 K15 ["Contexts"]
       37 GETTABLEKS                       R7 R7 K16 ["DatamodelReference"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Src"]
       44 GETTABLEKS                       R8 R8 K15 ["Contexts"]
       46 GETTABLEKS                       R8 R8 K17 ["SchemaKeyCodes"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K5 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Src"]
       53 GETTABLEKS                       R9 R9 K18 ["Types"]
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K19 [PROTO_7]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R2
       64 RETURN                           R9 1
