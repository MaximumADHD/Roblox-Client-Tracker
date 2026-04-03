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
       14 JUMPIFNOT                        R5 ; [+30]
       15 JUMPIFNOT                        R1 ; [+29]
       16 GETTABLEKS                       R5 R1 K6 ["Instance"]
       18 JUMPIFNOT                        R5 ; [+26]
       19 GETTABLEKS                       R5 R1 K6 ["Instance"]
       21 LOADK                            R7 K7 ["StyleRule"]
       22 NAMECALL                         R5 R5 K8 ["IsA"]
       24 CALL                             R5 2 1
       25 JUMPIFNOT                        R5 ; [+19]
       26 GETTABLEKS                       R6 R1 K9 ["PossibleClasses"]
       28 LENGTH                           R5 R6
       29 JUMPIFNOTEQKN                    R5 K10 [1] ; [+15]
       31 GETTABLEKS                       R6 R1 K9 ["PossibleClasses"]
       33 GETTABLEN                        R5 R6 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R6 R7 K11 ["ClassName"]
       37 JUMPIFNOTEQ                      R5 R6 ; [+7]
       39 LOADK                            R7 K3 ["Table"]
       40 LOADK                            R8 K12 ["ConditionNamePlaceholder"]
       41 NAMECALL                         R5 R3 K5 ["getText"]
       43 CALL                             R5 3 1
       44 MOVE                             R4 R5
       45 JUMPIF                           R1 ; [+52]
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R5 R6 K13 ["createElement"]
       49 GETUPVAL                         R6 4
       50 NEWTABLE                         R7 0 0
       52 DUPTABLE                         R8 K15 [{"Input"}]
       53 GETUPVAL                         R10 3
       54 GETTABLEKS                       R9 R10 K13 ["createElement"]
       56 GETUPVAL                         R10 5
       57 NEWTABLE                         R11 8 0
       59 LOADB                            R12 1
       60 SETTABLEKS                       R12 R11 K16 ["Disabled"]
       62 GETTABLEKS                       R13 R0 K17 ["AutomaticSize"]
       64 JUMPIFNOT                        R13 ; [+10]
       65 GETIMPORT                        R12 K20 [UDim2.new]
       67 LOADN                            R13 1
       68 LOADN                            R14 0
       69 LOADN                            R15 0
       70 GETTABLEKS                       R17 R0 K22 ["MinimumHeight"]
       72 ORK                              R16 R17 K21 [24]
       73 CALL                             R12 4 1
       74 JUMP                             ; [+5]
       75 GETIMPORT                        R12 K24 [UDim2.fromScale]
       77 LOADN                            R13 1
       78 LOADN                            R14 1
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K25 ["Size"]
       82 GETTABLEKS                       R12 R0 K26 ["Value"]
       84 SETTABLEKS                       R12 R11 K27 ["Text"]
       86 SETTABLEKS                       R4 R11 K28 ["PlaceholderText"]
       88 GETUPVAL                         R13 3
       89 GETTABLEKS                       R12 R13 K29 ["Tag"]
       91 LOADK                            R13 K30 ["PropertyCellDisabled"]
       92 SETTABLE                         R13 R11 R12
       93 CALL                             R9 2 1
       94 SETTABLEKS                       R9 R8 K14 ["Input"]
       96 CALL                             R5 3 -1
       97 RETURN                           R5 -1
       98 JUMPIFNOTEQKNIL                  R1 ; [+2]
      100 LOADB                            R6 0 +1
      101 LOADB                            R6 1
      102 FASTCALL2K                       ASSERT R6 K31 ; [+4]
      104 LOADK                            R7 K31 ["expecting valid StyleRuleInfo"]
      105 GETIMPORT                        R5 K33 [assert]
      107 CALL                             R5 2 0
      108 GETUPVAL                         R5 6
      109 DUPTABLE                         R6 K36 [{"text", "error"}]
      110 GETTABLEKS                       R7 R0 K26 ["Value"]
      112 SETTABLEKS                       R7 R6 K34 ["text"]
      114 GETUPVAL                         R8 7
      115 GETTABLEKS                       R7 R8 K37 ["None"]
      117 SETTABLEKS                       R7 R6 K35 ["error"]
      119 CALL                             R5 1 2
      120 NEWCLOSURE                       R7 P0
      121 CAPTURE                          VAL R1
      122 CAPTURE                          UPVAL U8
      123 CAPTURE                          UPVAL U7
      124 CAPTURE                          VAL R0
      125 NEWCLOSURE                       R8 P1
      126 CAPTURE                          VAL R1
      127 CAPTURE                          UPVAL U8
      128 CAPTURE                          UPVAL U7
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R6
      131 NEWCLOSURE                       R9 P2
      132 CAPTURE                          VAL R1
      133 CAPTURE                          UPVAL U8
      134 CAPTURE                          UPVAL U7
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R6
      137 NEWCLOSURE                       R10 P3
      138 CAPTURE                          VAL R1
      139 CAPTURE                          UPVAL U8
      140 CAPTURE                          UPVAL U7
      141 CAPTURE                          VAL R0
      142 CAPTURE                          VAL R6
      143 GETUPVAL                         R11 9
      144 NEWCLOSURE                       R12 P4
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R1
      147 CAPTURE                          UPVAL U8
      148 CAPTURE                          UPVAL U7
      149 CAPTURE                          VAL R6
      150 NEWTABLE                         R13 0 2
      152 GETTABLEKS                       R14 R0 K0 ["Schema"]
      154 GETTABLEKS                       R15 R0 K26 ["Value"]
      156 SETLIST                          R13 R14 2 [1]
      158 CALL                             R11 2 0
      159 NEWCLOSURE                       R11 P5
      160 CAPTURE                          VAL R1
      161 CAPTURE                          UPVAL U8
      162 CAPTURE                          UPVAL U10
      163 CAPTURE                          UPVAL U11
      164 CAPTURE                          VAL R0
      165 CAPTURE                          UPVAL U12
      166 GETUPVAL                         R13 8
      167 GETTABLEKS                       R12 R13 K38 ["getPossiblePropertyTypes"]
      169 GETTABLEKS                       R13 R5 K34 ["text"]
      171 CALL                             R12 1 1
      172 NEWTABLE                         R13 0 0
      174 LENGTH                           R14 R12
      175 LOADN                            R15 0
      176 JUMPIFNOTLT                      R15 R14 ; [+11]
      178 MOVE                             R15 R13
      179 GETIMPORT                        R16 K41 [table.concat]
      181 MOVE                             R17 R12
      182 LOADK                            R18 K42 [", "]
      183 CALL                             R16 2 -1
      184 FASTCALL                         TABLE_INSERT ; [+2]
      185 GETIMPORT                        R14 K44 [table.insert]
      187 CALL                             R14 -1 0
      188 GETTABLEKS                       R14 R1 K45 ["CanMatchAnyClass"]
      190 JUMPIF                           R14 ; [+25]
      191 GETUPVAL                         R14 11
      192 GETTABLEKS                       R15 R1 K9 ["PossibleClasses"]
      194 NEWCLOSURE                       R16 P6
      195 CAPTURE                          UPVAL U8
      196 CAPTURE                          VAL R0
      197 CALL                             R14 2 1
      198 GETIMPORT                        R15 K41 [table.concat]
      200 MOVE                             R16 R14
      201 LOADK                            R17 K42 [", "]
      202 CALL                             R15 2 1
      203 MOVE                             R17 R13
      204 LOADK                            R20 K46 ["Label"]
      205 LOADK                            R21 K47 ["PropertyAppliesTo"]
      206 DUPTABLE                         R22 K49 [{"classList"}]
      207 SETTABLEKS                       R15 R22 K48 ["classList"]
      209 NAMECALL                         R18 R3 K5 ["getText"]
      211 CALL                             R18 4 -1
      212 FASTCALL                         TABLE_INSERT ; [+2]
      213 GETIMPORT                        R16 K44 [table.insert]
      215 CALL                             R16 -1 0
      216 GETTABLEKS                       R15 R5 K35 ["error"]
      218 GETUPVAL                         R17 7
      219 GETTABLEKS                       R16 R17 K37 ["None"]
      221 JUMPIFNOTEQ                      R15 R16 ; [+2]
      223 LOADB                            R14 0 +1
      224 LOADB                            R14 1
      225 GETUPVAL                         R15 13
      226 MOVE                             R16 R3
      227 GETTABLEKS                       R17 R5 K35 ["error"]
      229 DUPTABLE                         R18 K51 [{"type"}]
      230 GETIMPORT                        R19 K41 [table.concat]
      232 GETTABLEKS                       R20 R1 K9 ["PossibleClasses"]
      234 LOADK                            R21 K42 [", "]
      235 CALL                             R19 2 1
      236 SETTABLEKS                       R19 R18 K50 ["type"]
      238 CALL                             R15 3 1
      239 GETUPVAL                         R17 3
      240 GETTABLEKS                       R16 R17 K13 ["createElement"]
      242 GETUPVAL                         R17 4
      243 NEWTABLE                         R18 0 0
      245 DUPTABLE                         R19 K53 [{"Input", "Tooltip"}]
      246 GETUPVAL                         R21 3
      247 GETTABLEKS                       R20 R21 K13 ["createElement"]
      249 GETUPVAL                         R21 5
      250 NEWTABLE                         R22 16 0
      252 GETTABLEKS                       R23 R0 K16 ["Disabled"]
      254 SETTABLEKS                       R23 R22 K16 ["Disabled"]
      256 DUPTABLE                         R23 K55 [{"ItemHeight"}]
      257 GETTABLEKS                       R25 R0 K0 ["Schema"]
      259 GETTABLEKS                       R24 R25 K54 ["ItemHeight"]
      261 SETTABLEKS                       R24 R23 K54 ["ItemHeight"]
      263 SETTABLEKS                       R23 R22 K56 ["DropdownMenuProps"]
      265 SETTABLEKS                       R9 R22 K57 ["OnTextChanged"]
      267 SETTABLEKS                       R10 R22 K58 ["OnFocusLost"]
      269 GETTABLEKS                       R24 R0 K17 ["AutomaticSize"]
      271 JUMPIFNOT                        R24 ; [+10]
      272 GETIMPORT                        R23 K20 [UDim2.new]
      274 LOADN                            R24 1
      275 LOADN                            R25 0
      276 LOADN                            R26 0
      277 GETTABLEKS                       R28 R0 K22 ["MinimumHeight"]
      279 ORK                              R27 R28 K21 [24]
      280 CALL                             R23 4 1
      281 JUMP                             ; [+5]
      282 GETIMPORT                        R23 K24 [UDim2.fromScale]
      284 LOADN                            R24 1
      285 LOADN                            R25 1
      286 CALL                             R23 2 1
      287 SETTABLEKS                       R23 R22 K25 ["Size"]
      289 GETTABLEKS                       R23 R5 K34 ["text"]
      291 SETTABLEKS                       R23 R22 K27 ["Text"]
      293 SETTABLEKS                       R11 R22 K59 ["GetAutocompleteItems"]
      295 SETTABLEKS                       R4 R22 K28 ["PlaceholderText"]
      297 GETUPVAL                         R24 3
      298 GETTABLEKS                       R23 R24 K29 ["Tag"]
      300 JUMPIFNOT                        R14 ; [+6]
      301 GETTABLEKS                       R26 R0 K0 ["Schema"]
      303 GETTABLEKS                       R25 R26 K61 ["ErrorStyle"]
      305 ORK                              R24 R25 K60 ["PropertyCellError"]
      306 JUMP                             ; [+1]
      307 LOADNIL                          R24
      308 SETTABLE                         R24 R22 R23
      309 CALL                             R20 2 1
      310 SETTABLEKS                       R20 R19 K14 ["Input"]
      312 LOADB                            R20 0
      313 GETTABLEKS                       R22 R5 K34 ["text"]
      315 LENGTH                           R21 R22
      316 LOADN                            R22 0
      317 JUMPIFNOTLT                      R22 R21 ; [+20]
      319 GETUPVAL                         R21 3
      320 GETTABLEKS                       R20 R21 K13 ["createElement"]
      322 GETUPVAL                         R21 14
      323 DUPTABLE                         R22 K63 [{"Text", "MaxWidth"}]
      324 JUMPIFNOT                        R14 ; [+2]
      325 MOVE                             R23 R15
      326 JUMP                             ; [+5]
      327 GETIMPORT                        R23 K41 [table.concat]
      329 MOVE                             R24 R13
      330 LOADK                            R25 K64 ["\n"]
      331 CALL                             R23 2 1
      332 SETTABLEKS                       R23 R22 K27 ["Text"]
      334 GETUPVAL                         R23 15
      335 SETTABLEKS                       R23 R22 K62 ["MaxWidth"]
      337 CALL                             R20 2 1
      338 SETTABLEKS                       R20 R19 K52 ["Tooltip"]
      340 CALL                             R16 3 -1
      341 RETURN                           R16 -1

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
      130 GETTABLEKS                       R21 R22 K34 ["getFFlagStyleQuery"]
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
