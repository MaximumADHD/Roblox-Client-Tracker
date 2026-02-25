PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R9 0
        5 GETTABLEKS                       R8 R9 K0 ["allProperties"]
        7 GETTABLE                         R7 R8 R6
        8 JUMPIFNOT                        R7 ; [+5]
        9 GETTABLE                         R8 R7 R1
       10 JUMPIFEQKNIL                     R8 ; [+3]
       12 LOADB                            R8 1
       13 RETURN                           R8 1
       14 FORGLOOP                         R2 2 ; [-11]
       16 LOADB                            R2 0
       17 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CanMatchAnyClass"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["possiblePropertyTypes"]
        7 GETTABLE                         R1 R2 R0
        8 JUMPIFNOTEQKNIL                  R1 ; [+31]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["DoesNotExist"]
       13 RETURN                           R1 1
       14 JUMP                             ; [+25]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K3 ["PossibleClasses"]
       18 MOVE                             R3 R2
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R9 R10 K4 ["allProperties"]
       25 GETTABLE                         R8 R9 R7
       26 JUMPIFNOT                        R8 ; [+5]
       27 GETTABLE                         R9 R8 R0
       28 JUMPIFEQKNIL                     R9 ; [+3]
       30 LOADB                            R1 1
       31 JUMP                             ; [+3]
       32 FORGLOOP                         R3 2 ; [-11]
       34 LOADB                            R1 0
       35 JUMPIF                           R1 ; [+4]
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R1 R2 K5 ["DoesNotExistOnType"]
       39 RETURN                           R1 1
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R2 R3 K6 ["Value"]
       43 JUMPIFNOTEQ                      R2 R0 ; [+2]
       45 LOADB                            R1 0 +1
       46 LOADB                            R1 1
       47 LOADB                            R2 0
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K7 ["Properties"]
       51 GETTABLE                         R3 R4 R0
       52 JUMPIFEQKNIL                     R3 ; [+2]
       54 MOVE                             R2 R1
       55 JUMPIFNOT                        R2 ; [+4]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R3 R4 K8 ["AlreadyDefined"]
       59 RETURN                           R3 1
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R3 R4 K9 ["None"]
       63 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["CanMatchAnyClass"]
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["possiblePropertyTypes"]
        7 GETTABLE                         R2 R3 R0
        8 JUMPIFNOTEQKNIL                  R2 ; [+31]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["DoesNotExist"]
       13 JUMP                             ; [+49]
       14 JUMP                             ; [+25]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K3 ["PossibleClasses"]
       18 MOVE                             R4 R3
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 GETUPVAL                         R11 1
       23 GETTABLEKS                       R10 R11 K4 ["allProperties"]
       25 GETTABLE                         R9 R10 R8
       26 JUMPIFNOT                        R9 ; [+5]
       27 GETTABLE                         R10 R9 R0
       28 JUMPIFEQKNIL                     R10 ; [+3]
       30 LOADB                            R2 1
       31 JUMP                             ; [+3]
       32 FORGLOOP                         R4 2 ; [-11]
       34 LOADB                            R2 0
       35 JUMPIF                           R2 ; [+4]
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R1 R2 K5 ["DoesNotExistOnType"]
       39 JUMP                             ; [+23]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R3 R4 K6 ["Value"]
       43 JUMPIFNOTEQ                      R3 R0 ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 LOADB                            R3 0
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R5 R6 K7 ["Properties"]
       51 GETTABLE                         R4 R5 R0
       52 JUMPIFEQKNIL                     R4 ; [+2]
       54 MOVE                             R3 R2
       55 JUMPIFNOT                        R3 ; [+4]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R1 R4 K8 ["AlreadyDefined"]
       59 JUMP                             ; [+3]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R1 R4 K9 ["None"]
       63 GETUPVAL                         R2 4
       64 DUPTABLE                         R3 K12 [{"text", "error"}]
       65 SETTABLEKS                       R0 R3 K10 ["text"]
       67 SETTABLEKS                       R1 R3 K11 ["error"]
       69 CALL                             R2 1 0
       70 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["CanMatchAnyClass"]
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["possiblePropertyTypes"]
        7 GETTABLE                         R2 R3 R0
        8 JUMPIFNOTEQKNIL                  R2 ; [+31]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["DoesNotExist"]
       13 JUMP                             ; [+49]
       14 JUMP                             ; [+25]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K3 ["PossibleClasses"]
       18 MOVE                             R4 R3
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 GETUPVAL                         R11 1
       23 GETTABLEKS                       R10 R11 K4 ["allProperties"]
       25 GETTABLE                         R9 R10 R8
       26 JUMPIFNOT                        R9 ; [+5]
       27 GETTABLE                         R10 R9 R0
       28 JUMPIFEQKNIL                     R10 ; [+3]
       30 LOADB                            R2 1
       31 JUMP                             ; [+3]
       32 FORGLOOP                         R4 2 ; [-11]
       34 LOADB                            R2 0
       35 JUMPIF                           R2 ; [+4]
       36 GETUPVAL                         R2 2
       37 GETTABLEKS                       R1 R2 K5 ["DoesNotExistOnType"]
       39 JUMP                             ; [+23]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R3 R4 K6 ["Value"]
       43 JUMPIFNOTEQ                      R3 R0 ; [+2]
       45 LOADB                            R2 0 +1
       46 LOADB                            R2 1
       47 LOADB                            R3 0
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R5 R6 K7 ["Properties"]
       51 GETTABLE                         R4 R5 R0
       52 JUMPIFEQKNIL                     R4 ; [+2]
       54 MOVE                             R3 R2
       55 JUMPIFNOT                        R3 ; [+4]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R1 R4 K8 ["AlreadyDefined"]
       59 JUMP                             ; [+3]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R1 R4 K9 ["None"]
       63 GETUPVAL                         R2 4
       64 DUPTABLE                         R3 K12 [{"text", "error"}]
       65 SETTABLEKS                       R0 R3 K10 ["text"]
       67 SETTABLEKS                       R1 R3 K11 ["error"]
       69 CALL                             R2 1 0
       70 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["CanMatchAnyClass"]
        3 JUMPIFNOT                        R3 ; [+11]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["possiblePropertyTypes"]
        7 GETTABLE                         R3 R4 R0
        8 JUMPIFNOTEQKNIL                  R3 ; [+31]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K2 ["DoesNotExist"]
       13 JUMP                             ; [+49]
       14 JUMP                             ; [+25]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K3 ["PossibleClasses"]
       18 MOVE                             R5 R4
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETUPVAL                         R12 1
       23 GETTABLEKS                       R11 R12 K4 ["allProperties"]
       25 GETTABLE                         R10 R11 R9
       26 JUMPIFNOT                        R10 ; [+5]
       27 GETTABLE                         R11 R10 R0
       28 JUMPIFEQKNIL                     R11 ; [+3]
       30 LOADB                            R3 1
       31 JUMP                             ; [+3]
       32 FORGLOOP                         R5 2 ; [-11]
       34 LOADB                            R3 0
       35 JUMPIF                           R3 ; [+4]
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R2 R3 K5 ["DoesNotExistOnType"]
       39 JUMP                             ; [+23]
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R4 R5 K6 ["Value"]
       43 JUMPIFNOTEQ                      R4 R0 ; [+2]
       45 LOADB                            R3 0 +1
       46 LOADB                            R3 1
       47 LOADB                            R4 0
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K7 ["Properties"]
       51 GETTABLE                         R5 R6 R0
       52 JUMPIFEQKNIL                     R5 ; [+2]
       54 MOVE                             R4 R3
       55 JUMPIFNOT                        R4 ; [+4]
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R2 R5 K8 ["AlreadyDefined"]
       59 JUMP                             ; [+3]
       60 GETUPVAL                         R5 2
       61 GETTABLEKS                       R2 R5 K9 ["None"]
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R3 R4 K9 ["None"]
       66 JUMPIFNOTEQ                      R2 R3 ; [+12]
       68 GETUPVAL                         R4 3
       69 GETTABLEKS                       R3 R4 K6 ["Value"]
       71 JUMPIFEQ                         R3 R0 ; [+7]
       73 GETUPVAL                         R4 3
       74 GETTABLEKS                       R3 R4 K10 ["OnChanged"]
       76 MOVE                             R4 R0
       77 CALL                             R3 1 0
       78 RETURN                           R0 0
       79 GETUPVAL                         R4 3
       80 GETTABLEKS                       R3 R4 K6 ["Value"]
       82 GETUPVAL                         R6 0
       83 GETTABLEKS                       R5 R6 K0 ["CanMatchAnyClass"]
       85 JUMPIFNOT                        R5 ; [+11]
       86 GETUPVAL                         R7 1
       87 GETTABLEKS                       R6 R7 K1 ["possiblePropertyTypes"]
       89 GETTABLE                         R5 R6 R3
       90 JUMPIFNOTEQKNIL                  R5 ; [+31]
       92 GETUPVAL                         R5 2
       93 GETTABLEKS                       R4 R5 K2 ["DoesNotExist"]
       95 JUMP                             ; [+49]
       96 JUMP                             ; [+25]
       97 GETUPVAL                         R7 0
       98 GETTABLEKS                       R6 R7 K3 ["PossibleClasses"]
      100 MOVE                             R7 R6
      101 LOADNIL                          R8
      102 LOADNIL                          R9
      103 FORGPREP                         R7
      104 GETUPVAL                         R14 1
      105 GETTABLEKS                       R13 R14 K4 ["allProperties"]
      107 GETTABLE                         R12 R13 R11
      108 JUMPIFNOT                        R12 ; [+5]
      109 GETTABLE                         R13 R12 R3
      110 JUMPIFEQKNIL                     R13 ; [+3]
      112 LOADB                            R5 1
      113 JUMP                             ; [+3]
      114 FORGLOOP                         R7 2 ; [-11]
      116 LOADB                            R5 0
      117 JUMPIF                           R5 ; [+4]
      118 GETUPVAL                         R5 2
      119 GETTABLEKS                       R4 R5 K5 ["DoesNotExistOnType"]
      121 JUMP                             ; [+23]
      122 GETUPVAL                         R7 3
      123 GETTABLEKS                       R6 R7 K6 ["Value"]
      125 JUMPIFNOTEQ                      R6 R3 ; [+2]
      127 LOADB                            R5 0 +1
      128 LOADB                            R5 1
      129 LOADB                            R6 0
      130 GETUPVAL                         R9 0
      131 GETTABLEKS                       R8 R9 K7 ["Properties"]
      133 GETTABLE                         R7 R8 R3
      134 JUMPIFEQKNIL                     R7 ; [+2]
      136 MOVE                             R6 R5
      137 JUMPIFNOT                        R6 ; [+4]
      138 GETUPVAL                         R7 2
      139 GETTABLEKS                       R4 R7 K8 ["AlreadyDefined"]
      141 JUMP                             ; [+3]
      142 GETUPVAL                         R7 2
      143 GETTABLEKS                       R4 R7 K9 ["None"]
      145 GETUPVAL                         R5 4
      146 DUPTABLE                         R6 K13 [{"text", "error"}]
      147 SETTABLEKS                       R3 R6 K11 ["text"]
      149 SETTABLEKS                       R4 R6 K12 ["error"]
      151 CALL                             R5 1 0
      152 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Value"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["CanMatchAnyClass"]
        6 JUMPIFNOT                        R2 ; [+11]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["possiblePropertyTypes"]
       10 GETTABLE                         R2 R3 R0
       11 JUMPIFNOTEQKNIL                  R2 ; [+31]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R1 R2 K3 ["DoesNotExist"]
       16 JUMP                             ; [+49]
       17 JUMP                             ; [+25]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K4 ["PossibleClasses"]
       21 MOVE                             R4 R3
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 GETUPVAL                         R11 2
       26 GETTABLEKS                       R10 R11 K5 ["allProperties"]
       28 GETTABLE                         R9 R10 R8
       29 JUMPIFNOT                        R9 ; [+5]
       30 GETTABLE                         R10 R9 R0
       31 JUMPIFEQKNIL                     R10 ; [+3]
       33 LOADB                            R2 1
       34 JUMP                             ; [+3]
       35 FORGLOOP                         R4 2 ; [-11]
       37 LOADB                            R2 0
       38 JUMPIF                           R2 ; [+4]
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R1 R2 K6 ["DoesNotExistOnType"]
       42 JUMP                             ; [+23]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R3 R4 K0 ["Value"]
       46 JUMPIFNOTEQ                      R3 R0 ; [+2]
       48 LOADB                            R2 0 +1
       49 LOADB                            R2 1
       50 LOADB                            R3 0
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R5 R6 K7 ["Properties"]
       54 GETTABLE                         R4 R5 R0
       55 JUMPIFEQKNIL                     R4 ; [+2]
       57 MOVE                             R3 R2
       58 JUMPIFNOT                        R3 ; [+4]
       59 GETUPVAL                         R4 3
       60 GETTABLEKS                       R1 R4 K8 ["AlreadyDefined"]
       62 JUMP                             ; [+3]
       63 GETUPVAL                         R4 3
       64 GETTABLEKS                       R1 R4 K9 ["None"]
       66 GETUPVAL                         R2 4
       67 DUPTABLE                         R3 K12 [{"text", "error"}]
       68 SETTABLEKS                       R0 R3 K10 ["text"]
       70 SETTABLEKS                       R1 R3 K11 ["error"]
       72 CALL                             R2 1 0
       73 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R2 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["Value"]
        4 JUMPIFEQ                         R0 R3 ; [+9]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K1 ["Properties"]
        9 GETTABLE                         R3 R4 R0
       10 JUMPIFEQKNIL                     R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["CanMatchAnyClass"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["getPropertyNames"]
        9 LOADK                            R3 K2 [""]
       10 CALL                             R2 1 1
       11 MOVE                             R1 R2
       12 JUMP                             ; [+24]
       13 NEWTABLE                         R2 0 0
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R3 R6 K3 ["PossibleClasses"]
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R8 R9 K1 ["getPropertyNames"]
       24 MOVE                             R9 R7
       25 CALL                             R8 1 3
       26 FORGPREP                         R8
       27 LOADB                            R13 1
       28 SETTABLE                         R13 R2 R12
       29 FORGLOOP                         R8 2 ; [-3]
       31 FORGLOOP                         R3 2 ; [-11]
       33 GETUPVAL                         R3 2
       34 MOVE                             R4 R2
       35 CALL                             R3 1 1
       36 MOVE                             R1 R3
       37 GETUPVAL                         R2 3
       38 MOVE                             R3 R1
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U0
       42 CALL                             R2 2 1
       43 GETUPVAL                         R3 5
       44 MOVE                             R4 R2
       45 MOVE                             R5 R0
       46 CALL                             R3 2 -1
       47 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getPropertySchema"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Value"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["Schema"]
        2 GETTABLEKS                       R1 R2 K1 ["StyleRuleInfo"]
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R2 K2 ["Localization"]
        8 JUMPIF                           R1 ; [+57]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K3 ["createElement"]
       12 GETUPVAL                         R5 2
       13 NEWTABLE                         R6 0 0
       15 DUPTABLE                         R7 K5 [{"Input"}]
       16 GETUPVAL                         R9 1
       17 GETTABLEKS                       R8 R9 K3 ["createElement"]
       19 GETUPVAL                         R9 3
       20 NEWTABLE                         R10 8 0
       22 LOADB                            R11 1
       23 SETTABLEKS                       R11 R10 K6 ["Disabled"]
       25 GETTABLEKS                       R12 R0 K7 ["AutomaticSize"]
       27 JUMPIFNOT                        R12 ; [+10]
       28 GETIMPORT                        R11 K10 [UDim2.new]
       30 LOADN                            R12 1
       31 LOADN                            R13 0
       32 LOADN                            R14 0
       33 GETTABLEKS                       R16 R0 K12 ["MinimumHeight"]
       35 ORK                              R15 R16 K11 [24]
       36 CALL                             R11 4 1
       37 JUMP                             ; [+5]
       38 GETIMPORT                        R11 K14 [UDim2.fromScale]
       40 LOADN                            R12 1
       41 LOADN                            R13 1
       42 CALL                             R11 2 1
       43 SETTABLEKS                       R11 R10 K15 ["Size"]
       45 GETTABLEKS                       R11 R0 K16 ["Value"]
       47 SETTABLEKS                       R11 R10 K17 ["Text"]
       49 LOADK                            R13 K18 ["Table"]
       50 LOADK                            R14 K19 ["PropertyNamePlaceholder"]
       51 NAMECALL                         R11 R3 K20 ["getText"]
       53 CALL                             R11 3 1
       54 SETTABLEKS                       R11 R10 K21 ["PlaceholderText"]
       56 GETUPVAL                         R12 1
       57 GETTABLEKS                       R11 R12 K22 ["Tag"]
       59 LOADK                            R12 K23 ["PropertyCellDisabled"]
       60 SETTABLE                         R12 R10 R11
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K4 ["Input"]
       64 CALL                             R4 3 -1
       65 RETURN                           R4 -1
       66 JUMPIFNOTEQKNIL                  R1 ; [+2]
       68 LOADB                            R5 0 +1
       69 LOADB                            R5 1
       70 FASTCALL2K                       ASSERT R5 K24 ; [+4]
       72 LOADK                            R6 K24 ["expecting valid StyleRuleInfo"]
       73 GETIMPORT                        R4 K26 [assert]
       75 CALL                             R4 2 0
       76 GETUPVAL                         R4 4
       77 DUPTABLE                         R5 K29 [{"text", "error"}]
       78 GETTABLEKS                       R6 R0 K16 ["Value"]
       80 SETTABLEKS                       R6 R5 K27 ["text"]
       82 GETUPVAL                         R7 5
       83 GETTABLEKS                       R6 R7 K30 ["None"]
       85 SETTABLEKS                       R6 R5 K28 ["error"]
       87 CALL                             R4 1 2
       88 NEWCLOSURE                       R6 P0
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U6
       91 CAPTURE                          UPVAL U5
       92 CAPTURE                          VAL R0
       93 NEWCLOSURE                       R7 P1
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R5
       99 NEWCLOSURE                       R8 P2
      100 CAPTURE                          VAL R1
      101 CAPTURE                          UPVAL U6
      102 CAPTURE                          UPVAL U5
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R5
      105 NEWCLOSURE                       R9 P3
      106 CAPTURE                          VAL R1
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R5
      111 GETUPVAL                         R10 7
      112 NEWCLOSURE                       R11 P4
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R1
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          VAL R5
      118 NEWTABLE                         R12 0 2
      120 GETTABLEKS                       R13 R0 K0 ["Schema"]
      122 GETTABLEKS                       R14 R0 K16 ["Value"]
      124 SETLIST                          R12 R13 2 [1]
      126 CALL                             R10 2 0
      127 NEWCLOSURE                       R10 P5
      128 CAPTURE                          VAL R1
      129 CAPTURE                          UPVAL U6
      130 CAPTURE                          UPVAL U8
      131 CAPTURE                          UPVAL U9
      132 CAPTURE                          VAL R0
      133 CAPTURE                          UPVAL U10
      134 GETUPVAL                         R12 6
      135 GETTABLEKS                       R11 R12 K31 ["getPossiblePropertyTypes"]
      137 GETTABLEKS                       R12 R4 K27 ["text"]
      139 CALL                             R11 1 1
      140 NEWTABLE                         R12 0 0
      142 LENGTH                           R13 R11
      143 LOADN                            R14 0
      144 JUMPIFNOTLT                      R14 R13 ; [+11]
      146 MOVE                             R14 R12
      147 GETIMPORT                        R15 K34 [table.concat]
      149 MOVE                             R16 R11
      150 LOADK                            R17 K35 [", "]
      151 CALL                             R15 2 -1
      152 FASTCALL                         TABLE_INSERT ; [+2]
      153 GETIMPORT                        R13 K37 [table.insert]
      155 CALL                             R13 -1 0
      156 GETTABLEKS                       R13 R1 K38 ["CanMatchAnyClass"]
      158 JUMPIF                           R13 ; [+25]
      159 GETUPVAL                         R13 9
      160 GETTABLEKS                       R14 R1 K39 ["PossibleClasses"]
      162 NEWCLOSURE                       R15 P6
      163 CAPTURE                          UPVAL U6
      164 CAPTURE                          VAL R0
      165 CALL                             R13 2 1
      166 GETIMPORT                        R14 K34 [table.concat]
      168 MOVE                             R15 R13
      169 LOADK                            R16 K35 [", "]
      170 CALL                             R14 2 1
      171 MOVE                             R16 R12
      172 LOADK                            R19 K40 ["Label"]
      173 LOADK                            R20 K41 ["PropertyAppliesTo"]
      174 DUPTABLE                         R21 K43 [{"classList"}]
      175 SETTABLEKS                       R14 R21 K42 ["classList"]
      177 NAMECALL                         R17 R3 K20 ["getText"]
      179 CALL                             R17 4 -1
      180 FASTCALL                         TABLE_INSERT ; [+2]
      181 GETIMPORT                        R15 K37 [table.insert]
      183 CALL                             R15 -1 0
      184 GETTABLEKS                       R14 R4 K28 ["error"]
      186 GETUPVAL                         R16 5
      187 GETTABLEKS                       R15 R16 K30 ["None"]
      189 JUMPIFNOTEQ                      R14 R15 ; [+2]
      191 LOADB                            R13 0 +1
      192 LOADB                            R13 1
      193 GETUPVAL                         R14 11
      194 MOVE                             R15 R3
      195 GETTABLEKS                       R16 R4 K28 ["error"]
      197 DUPTABLE                         R17 K45 [{"type"}]
      198 GETIMPORT                        R18 K34 [table.concat]
      200 GETTABLEKS                       R19 R1 K39 ["PossibleClasses"]
      202 LOADK                            R20 K35 [", "]
      203 CALL                             R18 2 1
      204 SETTABLEKS                       R18 R17 K44 ["type"]
      206 CALL                             R14 3 1
      207 GETUPVAL                         R16 1
      208 GETTABLEKS                       R15 R16 K3 ["createElement"]
      210 GETUPVAL                         R16 2
      211 NEWTABLE                         R17 0 0
      213 DUPTABLE                         R18 K47 [{"Input", "Tooltip"}]
      214 GETUPVAL                         R20 1
      215 GETTABLEKS                       R19 R20 K3 ["createElement"]
      217 GETUPVAL                         R20 3
      218 NEWTABLE                         R21 16 0
      220 GETTABLEKS                       R22 R0 K6 ["Disabled"]
      222 SETTABLEKS                       R22 R21 K6 ["Disabled"]
      224 DUPTABLE                         R22 K49 [{"ItemHeight"}]
      225 GETTABLEKS                       R24 R0 K0 ["Schema"]
      227 GETTABLEKS                       R23 R24 K48 ["ItemHeight"]
      229 SETTABLEKS                       R23 R22 K48 ["ItemHeight"]
      231 SETTABLEKS                       R22 R21 K50 ["DropdownMenuProps"]
      233 SETTABLEKS                       R8 R21 K51 ["OnTextChanged"]
      235 SETTABLEKS                       R9 R21 K52 ["OnFocusLost"]
      237 GETTABLEKS                       R23 R0 K7 ["AutomaticSize"]
      239 JUMPIFNOT                        R23 ; [+10]
      240 GETIMPORT                        R22 K10 [UDim2.new]
      242 LOADN                            R23 1
      243 LOADN                            R24 0
      244 LOADN                            R25 0
      245 GETTABLEKS                       R27 R0 K12 ["MinimumHeight"]
      247 ORK                              R26 R27 K11 [24]
      248 CALL                             R22 4 1
      249 JUMP                             ; [+5]
      250 GETIMPORT                        R22 K14 [UDim2.fromScale]
      252 LOADN                            R23 1
      253 LOADN                            R24 1
      254 CALL                             R22 2 1
      255 SETTABLEKS                       R22 R21 K15 ["Size"]
      257 GETTABLEKS                       R22 R4 K27 ["text"]
      259 SETTABLEKS                       R22 R21 K17 ["Text"]
      261 SETTABLEKS                       R10 R21 K53 ["GetAutocompleteItems"]
      263 LOADK                            R24 K18 ["Table"]
      264 LOADK                            R25 K19 ["PropertyNamePlaceholder"]
      265 NAMECALL                         R22 R3 K20 ["getText"]
      267 CALL                             R22 3 1
      268 SETTABLEKS                       R22 R21 K21 ["PlaceholderText"]
      270 GETUPVAL                         R23 1
      271 GETTABLEKS                       R22 R23 K22 ["Tag"]
      273 JUMPIFNOT                        R13 ; [+6]
      274 GETTABLEKS                       R25 R0 K0 ["Schema"]
      276 GETTABLEKS                       R24 R25 K55 ["ErrorStyle"]
      278 ORK                              R23 R24 K54 ["PropertyCellError"]
      279 JUMP                             ; [+1]
      280 LOADNIL                          R23
      281 SETTABLE                         R23 R21 R22
      282 CALL                             R19 2 1
      283 SETTABLEKS                       R19 R18 K4 ["Input"]
      285 LOADB                            R19 0
      286 GETTABLEKS                       R21 R4 K27 ["text"]
      288 LENGTH                           R20 R21
      289 LOADN                            R21 0
      290 JUMPIFNOTLT                      R21 R20 ; [+20]
      292 GETUPVAL                         R20 1
      293 GETTABLEKS                       R19 R20 K3 ["createElement"]
      295 GETUPVAL                         R20 12
      296 DUPTABLE                         R21 K57 [{"Text", "MaxWidth"}]
      297 JUMPIFNOT                        R13 ; [+2]
      298 MOVE                             R22 R14
      299 JUMP                             ; [+5]
      300 GETIMPORT                        R22 K34 [table.concat]
      302 MOVE                             R23 R12
      303 LOADK                            R24 K58 ["\n"]
      304 CALL                             R22 2 1
      305 SETTABLEKS                       R22 R21 K17 ["Text"]
      307 GETUPVAL                         R22 13
      308 SETTABLEKS                       R22 R21 K56 ["MaxWidth"]
      310 CALL                             R19 2 1
      311 SETTABLEKS                       R19 R18 K46 ["Tooltip"]
      313 CALL                             R15 3 -1
      314 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["useState"]
       18 GETTABLEKS                       R3 R1 K8 ["useEffect"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R6 R0 K5 ["Packages"]
       24 GETTABLEKS                       R5 R6 K9 ["Framework"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R6 R4 K10 ["UI"]
       29 GETTABLEKS                       R5 R6 K11 ["Tooltip"]
       31 GETTABLEKS                       R7 R4 K10 ["UI"]
       33 GETTABLEKS                       R6 R7 K12 ["Pane"]
       35 GETTABLEKS                       R8 R4 K10 ["UI"]
       37 GETTABLEKS                       R7 R8 K13 ["TextInput"]
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R10 R0 K5 ["Packages"]
       43 GETTABLEKS                       R9 R10 K14 ["Dash"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R8 K15 ["filter"]
       48 GETTABLEKS                       R10 R8 K16 ["keys"]
       50 GETIMPORT                        R11 K4 [require]
       52 GETIMPORT                        R13 K1 [script]
       54 GETTABLEKS                       R12 R13 K17 ["localizePropertyNameError"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K4 [require]
       59 GETTABLEKS                       R15 R0 K18 ["Src"]
       61 GETTABLEKS                       R14 R15 K19 ["Renderers"]
       63 GETTABLEKS                       R13 R14 K20 ["RendererTypes"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K4 [require]
       68 GETTABLEKS                       R16 R0 K18 ["Src"]
       70 GETTABLEKS                       R15 R16 K21 ["Util"]
       72 GETTABLEKS                       R14 R15 K22 ["getAutocompleteItems"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K4 [require]
       77 GETTABLEKS                       R17 R0 K18 ["Src"]
       79 GETTABLEKS                       R16 R17 K23 ["Enums"]
       81 GETTABLEKS                       R15 R16 K24 ["PropertyNameValidationError"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K4 [require]
       86 GETTABLEKS                       R18 R0 K18 ["Src"]
       88 GETTABLEKS                       R17 R18 K21 ["Util"]
       90 GETTABLEKS                       R16 R17 K25 ["StyleSchema"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K4 [require]
       95 GETTABLEKS                       R19 R0 K18 ["Src"]
       97 GETTABLEKS                       R18 R19 K26 ["Hooks"]
       99 GETTABLEKS                       R17 R18 K27 ["useFrameworkContext"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K4 [require]
      104 GETTABLEKS                       R20 R0 K18 ["Src"]
      106 GETTABLEKS                       R19 R20 K28 ["Resources"]
      108 GETTABLEKS                       R18 R19 K29 ["PluginStyles"]
      110 CALL                             R17 1 1
      111 LOADK                            R20 K30 ["TooltipMaxWidth"]
      112 NAMECALL                         R18 R17 K31 ["GetAttribute"]
      114 CALL                             R18 2 1
      115 GETIMPORT                        R19 K4 [require]
      117 GETTABLEKS                       R21 R0 K18 ["Src"]
      119 GETTABLEKS                       R20 R21 K32 ["Types"]
      121 CALL                             R19 1 1
      122 DUPCLOSURE                       R20 K33 [PROTO_0]
      123 CAPTURE                          VAL R15
      124 DUPCLOSURE                       R21 K34 [PROTO_9]
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R18
      139 RETURN                           R21 1
