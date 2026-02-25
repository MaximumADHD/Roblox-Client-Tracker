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
        8 LOADK                            R6 K3 ["Table"]
        9 LOADK                            R7 K4 ["PropertyNamePlaceholder"]
       10 NAMECALL                         R4 R3 K5 ["getText"]
       12 CALL                             R4 3 1
       13 GETUPVAL                         R5 1
       14 JUMPIFNOT                        R5 ; [+33]
       15 JUMPIFNOT                        R1 ; [+32]
       16 GETTABLEKS                       R5 R1 K6 ["Instance"]
       18 JUMPIFNOT                        R5 ; [+29]
       19 GETTABLEKS                       R5 R1 K6 ["Instance"]
       21 LOADK                            R7 K7 ["StyleRule"]
       22 NAMECALL                         R5 R5 K8 ["IsA"]
       24 CALL                             R5 2 1
       25 JUMPIFNOT                        R5 ; [+22]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R5 R6 K9 ["getQueryTypeFromSelector"]
       29 GETTABLEKS                       R7 R1 K6 ["Instance"]
       31 GETTABLEKS                       R6 R7 K10 ["Selector"]
       33 CALL                             R5 1 1
       34 JUMPIFNOT                        R5 ; [+13]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R7 R8 K11 ["Type"]
       38 GETTABLEKS                       R6 R7 K12 ["Pseudo"]
       40 JUMPIFNOTEQ                      R5 R6 ; [+7]
       42 LOADK                            R8 K3 ["Table"]
       43 LOADK                            R9 K13 ["ConditionNamePlaceholder"]
       44 NAMECALL                         R6 R3 K5 ["getText"]
       46 CALL                             R6 3 1
       47 MOVE                             R4 R6
       48 JUMPIF                           R1 ; [+52]
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R5 R6 K14 ["createElement"]
       52 GETUPVAL                         R6 4
       53 NEWTABLE                         R7 0 0
       55 DUPTABLE                         R8 K16 [{"Input"}]
       56 GETUPVAL                         R10 3
       57 GETTABLEKS                       R9 R10 K14 ["createElement"]
       59 GETUPVAL                         R10 5
       60 NEWTABLE                         R11 8 0
       62 LOADB                            R12 1
       63 SETTABLEKS                       R12 R11 K17 ["Disabled"]
       65 GETTABLEKS                       R13 R0 K18 ["AutomaticSize"]
       67 JUMPIFNOT                        R13 ; [+10]
       68 GETIMPORT                        R12 K21 [UDim2.new]
       70 LOADN                            R13 1
       71 LOADN                            R14 0
       72 LOADN                            R15 0
       73 GETTABLEKS                       R17 R0 K23 ["MinimumHeight"]
       75 ORK                              R16 R17 K22 [24]
       76 CALL                             R12 4 1
       77 JUMP                             ; [+5]
       78 GETIMPORT                        R12 K25 [UDim2.fromScale]
       80 LOADN                            R13 1
       81 LOADN                            R14 1
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K26 ["Size"]
       85 GETTABLEKS                       R12 R0 K27 ["Value"]
       87 SETTABLEKS                       R12 R11 K28 ["Text"]
       89 SETTABLEKS                       R4 R11 K29 ["PlaceholderText"]
       91 GETUPVAL                         R13 3
       92 GETTABLEKS                       R12 R13 K30 ["Tag"]
       94 LOADK                            R13 K31 ["PropertyCellDisabled"]
       95 SETTABLE                         R13 R11 R12
       96 CALL                             R9 2 1
       97 SETTABLEKS                       R9 R8 K15 ["Input"]
       99 CALL                             R5 3 -1
      100 RETURN                           R5 -1
      101 JUMPIFNOTEQKNIL                  R1 ; [+2]
      103 LOADB                            R6 0 +1
      104 LOADB                            R6 1
      105 FASTCALL2K                       ASSERT R6 K32 ; [+4]
      107 LOADK                            R7 K32 ["expecting valid StyleRuleInfo"]
      108 GETIMPORT                        R5 K34 [assert]
      110 CALL                             R5 2 0
      111 GETUPVAL                         R5 6
      112 DUPTABLE                         R6 K37 [{"text", "error"}]
      113 GETTABLEKS                       R7 R0 K27 ["Value"]
      115 SETTABLEKS                       R7 R6 K35 ["text"]
      117 GETUPVAL                         R8 7
      118 GETTABLEKS                       R7 R8 K38 ["None"]
      120 SETTABLEKS                       R7 R6 K36 ["error"]
      122 CALL                             R5 1 2
      123 NEWCLOSURE                       R7 P0
      124 CAPTURE                          VAL R1
      125 CAPTURE                          UPVAL U8
      126 CAPTURE                          UPVAL U7
      127 CAPTURE                          VAL R0
      128 NEWCLOSURE                       R8 P1
      129 CAPTURE                          VAL R1
      130 CAPTURE                          UPVAL U8
      131 CAPTURE                          UPVAL U7
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R6
      134 NEWCLOSURE                       R9 P2
      135 CAPTURE                          VAL R1
      136 CAPTURE                          UPVAL U8
      137 CAPTURE                          UPVAL U7
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R6
      140 NEWCLOSURE                       R10 P3
      141 CAPTURE                          VAL R1
      142 CAPTURE                          UPVAL U8
      143 CAPTURE                          UPVAL U7
      144 CAPTURE                          VAL R0
      145 CAPTURE                          VAL R6
      146 GETUPVAL                         R11 9
      147 NEWCLOSURE                       R12 P4
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R1
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          VAL R6
      153 NEWTABLE                         R13 0 2
      155 GETTABLEKS                       R14 R0 K0 ["Schema"]
      157 GETTABLEKS                       R15 R0 K27 ["Value"]
      159 SETLIST                          R13 R14 2 [1]
      161 CALL                             R11 2 0
      162 NEWCLOSURE                       R11 P5
      163 CAPTURE                          VAL R1
      164 CAPTURE                          UPVAL U8
      165 CAPTURE                          UPVAL U10
      166 CAPTURE                          UPVAL U11
      167 CAPTURE                          VAL R0
      168 CAPTURE                          UPVAL U12
      169 GETUPVAL                         R13 8
      170 GETTABLEKS                       R12 R13 K39 ["getPossiblePropertyTypes"]
      172 GETTABLEKS                       R13 R5 K35 ["text"]
      174 CALL                             R12 1 1
      175 NEWTABLE                         R13 0 0
      177 LENGTH                           R14 R12
      178 LOADN                            R15 0
      179 JUMPIFNOTLT                      R15 R14 ; [+11]
      181 MOVE                             R15 R13
      182 GETIMPORT                        R16 K42 [table.concat]
      184 MOVE                             R17 R12
      185 LOADK                            R18 K43 [", "]
      186 CALL                             R16 2 -1
      187 FASTCALL                         TABLE_INSERT ; [+2]
      188 GETIMPORT                        R14 K45 [table.insert]
      190 CALL                             R14 -1 0
      191 GETTABLEKS                       R14 R1 K46 ["CanMatchAnyClass"]
      193 JUMPIF                           R14 ; [+25]
      194 GETUPVAL                         R14 11
      195 GETTABLEKS                       R15 R1 K47 ["PossibleClasses"]
      197 NEWCLOSURE                       R16 P6
      198 CAPTURE                          UPVAL U8
      199 CAPTURE                          VAL R0
      200 CALL                             R14 2 1
      201 GETIMPORT                        R15 K42 [table.concat]
      203 MOVE                             R16 R14
      204 LOADK                            R17 K43 [", "]
      205 CALL                             R15 2 1
      206 MOVE                             R17 R13
      207 LOADK                            R20 K48 ["Label"]
      208 LOADK                            R21 K49 ["PropertyAppliesTo"]
      209 DUPTABLE                         R22 K51 [{"classList"}]
      210 SETTABLEKS                       R15 R22 K50 ["classList"]
      212 NAMECALL                         R18 R3 K5 ["getText"]
      214 CALL                             R18 4 -1
      215 FASTCALL                         TABLE_INSERT ; [+2]
      216 GETIMPORT                        R16 K45 [table.insert]
      218 CALL                             R16 -1 0
      219 GETTABLEKS                       R15 R5 K36 ["error"]
      221 GETUPVAL                         R17 7
      222 GETTABLEKS                       R16 R17 K38 ["None"]
      224 JUMPIFNOTEQ                      R15 R16 ; [+2]
      226 LOADB                            R14 0 +1
      227 LOADB                            R14 1
      228 GETUPVAL                         R15 13
      229 MOVE                             R16 R3
      230 GETTABLEKS                       R17 R5 K36 ["error"]
      232 DUPTABLE                         R18 K53 [{"type"}]
      233 GETIMPORT                        R19 K42 [table.concat]
      235 GETTABLEKS                       R20 R1 K47 ["PossibleClasses"]
      237 LOADK                            R21 K43 [", "]
      238 CALL                             R19 2 1
      239 SETTABLEKS                       R19 R18 K52 ["type"]
      241 CALL                             R15 3 1
      242 GETUPVAL                         R17 3
      243 GETTABLEKS                       R16 R17 K14 ["createElement"]
      245 GETUPVAL                         R17 4
      246 NEWTABLE                         R18 0 0
      248 DUPTABLE                         R19 K55 [{"Input", "Tooltip"}]
      249 GETUPVAL                         R21 3
      250 GETTABLEKS                       R20 R21 K14 ["createElement"]
      252 GETUPVAL                         R21 5
      253 NEWTABLE                         R22 16 0
      255 GETTABLEKS                       R23 R0 K17 ["Disabled"]
      257 SETTABLEKS                       R23 R22 K17 ["Disabled"]
      259 DUPTABLE                         R23 K57 [{"ItemHeight"}]
      260 GETTABLEKS                       R25 R0 K0 ["Schema"]
      262 GETTABLEKS                       R24 R25 K56 ["ItemHeight"]
      264 SETTABLEKS                       R24 R23 K56 ["ItemHeight"]
      266 SETTABLEKS                       R23 R22 K58 ["DropdownMenuProps"]
      268 SETTABLEKS                       R9 R22 K59 ["OnTextChanged"]
      270 SETTABLEKS                       R10 R22 K60 ["OnFocusLost"]
      272 GETTABLEKS                       R24 R0 K18 ["AutomaticSize"]
      274 JUMPIFNOT                        R24 ; [+10]
      275 GETIMPORT                        R23 K21 [UDim2.new]
      277 LOADN                            R24 1
      278 LOADN                            R25 0
      279 LOADN                            R26 0
      280 GETTABLEKS                       R28 R0 K23 ["MinimumHeight"]
      282 ORK                              R27 R28 K22 [24]
      283 CALL                             R23 4 1
      284 JUMP                             ; [+5]
      285 GETIMPORT                        R23 K25 [UDim2.fromScale]
      287 LOADN                            R24 1
      288 LOADN                            R25 1
      289 CALL                             R23 2 1
      290 SETTABLEKS                       R23 R22 K26 ["Size"]
      292 GETTABLEKS                       R23 R5 K35 ["text"]
      294 SETTABLEKS                       R23 R22 K28 ["Text"]
      296 SETTABLEKS                       R11 R22 K61 ["GetAutocompleteItems"]
      298 SETTABLEKS                       R4 R22 K29 ["PlaceholderText"]
      300 GETUPVAL                         R24 3
      301 GETTABLEKS                       R23 R24 K30 ["Tag"]
      303 JUMPIFNOT                        R14 ; [+6]
      304 GETTABLEKS                       R26 R0 K0 ["Schema"]
      306 GETTABLEKS                       R25 R26 K63 ["ErrorStyle"]
      308 ORK                              R24 R25 K62 ["PropertyCellError"]
      309 JUMP                             ; [+1]
      310 LOADNIL                          R24
      311 SETTABLE                         R24 R22 R23
      312 CALL                             R20 2 1
      313 SETTABLEKS                       R20 R19 K15 ["Input"]
      315 LOADB                            R20 0
      316 GETTABLEKS                       R22 R5 K35 ["text"]
      318 LENGTH                           R21 R22
      319 LOADN                            R22 0
      320 JUMPIFNOTLT                      R22 R21 ; [+20]
      322 GETUPVAL                         R21 3
      323 GETTABLEKS                       R20 R21 K14 ["createElement"]
      325 GETUPVAL                         R21 14
      326 DUPTABLE                         R22 K65 [{"Text", "MaxWidth"}]
      327 JUMPIFNOT                        R14 ; [+2]
      328 MOVE                             R23 R15
      329 JUMP                             ; [+5]
      330 GETIMPORT                        R23 K42 [table.concat]
      332 MOVE                             R24 R13
      333 LOADK                            R25 K66 ["\n"]
      334 CALL                             R23 2 1
      335 SETTABLEKS                       R23 R22 K28 ["Text"]
      337 GETUPVAL                         R23 15
      338 SETTABLEKS                       R23 R22 K64 ["MaxWidth"]
      340 CALL                             R20 2 1
      341 SETTABLEKS                       R20 R19 K54 ["Tooltip"]
      343 CALL                             R16 3 -1
      344 RETURN                           R16 -1

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
      106 GETTABLEKS                       R19 R20 K21 ["Util"]
      108 GETTABLEKS                       R18 R19 K28 ["StyleQueryHelpers"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K4 [require]
      113 GETTABLEKS                       R21 R0 K18 ["Src"]
      115 GETTABLEKS                       R20 R21 K29 ["Resources"]
      117 GETTABLEKS                       R19 R20 K30 ["PluginStyles"]
      119 CALL                             R18 1 1
      120 LOADK                            R21 K31 ["TooltipMaxWidth"]
      121 NAMECALL                         R19 R18 K32 ["GetAttribute"]
      123 CALL                             R19 2 1
      124 GETIMPORT                        R20 K4 [require]
      126 GETTABLEKS                       R23 R0 K18 ["Src"]
      128 GETTABLEKS                       R22 R23 K33 ["Flags"]
      130 GETTABLEKS                       R21 R22 K34 ["getFFlagStyleEditorQueries"]
      132 CALL                             R20 1 1
      133 CALL                             R20 0 1
      134 GETIMPORT                        R21 K4 [require]
      136 GETTABLEKS                       R23 R0 K18 ["Src"]
      138 GETTABLEKS                       R22 R23 K35 ["Types"]
      140 CALL                             R21 1 1
      141 DUPCLOSURE                       R22 K36 [PROTO_0]
      142 CAPTURE                          VAL R15
      143 DUPCLOSURE                       R23 K37 [PROTO_9]
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R10
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R11
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R19
      160 RETURN                           R23 1
