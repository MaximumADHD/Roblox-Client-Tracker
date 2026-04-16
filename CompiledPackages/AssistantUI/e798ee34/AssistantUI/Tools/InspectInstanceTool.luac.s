PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R1
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 DUPTABLE                         R10 K3 [{"className", "path"}]
       10 GETTABLEKS                       R11 R7 K4 ["ClassName"]
       12 SETTABLEKS                       R11 R10 K1 ["className"]
       14 NAMECALL                         R11 R7 K5 ["GetFullName"]
       16 CALL                             R11 1 1
       17 SETTABLEKS                       R11 R10 K2 ["path"]
       19 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       21 MOVE                             R9 R2
       22 GETIMPORT                        R8 K8 [table.insert]
       24 CALL                             R8 2 0
       25 FORGLOOP                         R3 2 ; [-17]
       27 DUPTABLE                         R3 K12 [{"immediateChildren", "totalDescendants", "childrenCount"}]
       28 SETTABLEKS                       R2 R3 K9 ["immediateChildren"]
       30 NAMECALL                         R5 R0 K13 ["GetDescendants"]
       32 CALL                             R5 1 1
       33 LENGTH                           R4 R5
       34 SETTABLEKS                       R4 R3 K10 ["totalDescendants"]
       36 LENGTH                           R4 R1
       37 SETTABLEKS                       R4 R3 K11 ["childrenCount"]
       39 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetFullName"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["getValueRepresentation"]
        6 MOVE                             R2 R0
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K2 [typeof]
       15 CALL                             R1 1 1
       16 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+16]
       18 LENGTH                           R3 R0
       19 GETUPVAL                         R4 2
       20 JUMPIFNOTLE                      R3 R4 ; [+3]
       22 MOVE                             R2 R0
       23 RETURN                           R2 1
       24 LOADN                            R7 1
       25 GETUPVAL                         R8 2
       26 NAMECALL                         R5 R0 K4 ["sub"]
       28 CALL                             R5 3 1
       29 MOVE                             R3 R5
       30 LOADK                            R4 K5 ["... (truncated)"]
       31 CONCAT                           R2 R3 R4
       32 RETURN                           R2 1
       33 JUMPIFEQKS                       R1 K6 ["number"] ; [+3]
       35 JUMPIFNOTEQKS                    R1 K7 ["boolean"] ; [+2]
       37 RETURN                           R0 1
       38 JUMPIFNOTEQKS                    R1 K8 ["Instance"] ; [+11]
       40 GETIMPORT                        R2 K10 [pcall]
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          VAL R0
       44 CALL                             R2 1 2
       45 JUMPIFNOT                        R2 ; [+2]
       46 MOVE                             R4 R3
       47 RETURN                           R4 1
       48 LOADK                            R4 K11 ["[Destroyed Instance]"]
       49 RETURN                           R4 1
       50 JUMPIFNOTEQKS                    R1 K12 ["table"] ; [+16]
       52 GETIMPORT                        R2 K10 [pcall]
       54 NEWCLOSURE                       R3 P1
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          VAL R0
       57 CALL                             R2 1 2
       58 JUMPIFNOT                        R2 ; [+6]
       59 LENGTH                           R5 R3
       60 GETUPVAL                         R6 3
       61 JUMPIFNOTLE                      R5 R6 ; [+3]
       63 MOVE                             R4 R3
       64 RETURN                           R4 1
       65 LOADK                            R4 K13 ["[Complex Table]"]
       66 RETURN                           R4 1
       67 JUMPIFNOTEQKS                    R1 K14 ["CFrame"] ; [+37]
       69 GETTABLEKS                       R2 R0 K15 ["Position"]
       71 NAMECALL                         R3 R0 K16 ["GetComponents"]
       73 CALL                             R3 1 12
       74 DUPTABLE                         R15 K18 [{"Position", "Rotation"}]
       75 LOADK                            R17 K19 ["%*, %*, %*"]
       76 GETTABLEKS                       R19 R2 K20 ["X"]
       78 GETTABLEKS                       R20 R2 K21 ["Y"]
       80 GETTABLEKS                       R21 R2 K22 ["Z"]
       82 NAMECALL                         R17 R17 K23 ["format"]
       84 CALL                             R17 4 1
       85 MOVE                             R16 R17
       86 SETTABLEKS                       R16 R15 K15 ["Position"]
       88 LOADK                            R17 K24 ["%*, %*, %*, %*, %*, %*, %*, %*, %*"]
       89 MOVE                             R19 R6
       90 MOVE                             R20 R7
       91 MOVE                             R21 R8
       92 MOVE                             R22 R9
       93 MOVE                             R23 R10
       94 MOVE                             R24 R11
       95 MOVE                             R25 R12
       96 MOVE                             R26 R13
       97 MOVE                             R27 R14
       98 NAMECALL                         R17 R17 K23 ["format"]
      100 CALL                             R17 10 1
      101 MOVE                             R16 R17
      102 SETTABLEKS                       R16 R15 K17 ["Rotation"]
      104 RETURN                           R15 1
      105 JUMPIFNOTEQKS                    R1 K25 ["Vector3"] ; [+13]
      107 LOADK                            R3 K19 ["%*, %*, %*"]
      108 GETTABLEKS                       R5 R0 K20 ["X"]
      110 GETTABLEKS                       R6 R0 K21 ["Y"]
      112 GETTABLEKS                       R7 R0 K22 ["Z"]
      114 NAMECALL                         R3 R3 K23 ["format"]
      116 CALL                             R3 4 1
      117 MOVE                             R2 R3
      118 RETURN                           R2 1
      119 JUMPIFNOTEQKS                    R1 K26 ["Vector2"] ; [+11]
      121 LOADK                            R3 K27 ["%*, %*"]
      122 GETTABLEKS                       R5 R0 K20 ["X"]
      124 GETTABLEKS                       R6 R0 K21 ["Y"]
      126 NAMECALL                         R3 R3 K23 ["format"]
      128 CALL                             R3 3 1
      129 MOVE                             R2 R3
      130 RETURN                           R2 1
      131 JUMPIFNOTEQKS                    R1 K28 ["Color3"] ; [+13]
      133 LOADK                            R3 K19 ["%*, %*, %*"]
      134 GETTABLEKS                       R5 R0 K29 ["R"]
      136 GETTABLEKS                       R6 R0 K30 ["G"]
      138 GETTABLEKS                       R7 R0 K31 ["B"]
      140 NAMECALL                         R3 R3 K23 ["format"]
      142 CALL                             R3 4 1
      143 MOVE                             R2 R3
      144 RETURN                           R2 1
      145 FASTCALL1                        TOSTRING R0 ; [+3]
      146 MOVE                             R3 R0
      147 GETIMPORT                        R2 K33 [tostring]
      149 CALL                             R2 1 1
      150 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETTABLEKS                       R2 R0 K2 ["GetAttributes"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 2
        6 JUMPIFNOT                        R1 ; [+6]
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETIMPORT                        R3 K4 [next]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 JUMPIF                           R3 ; [+2]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 NEWTABLE                         R3 0 0
       17 GETIMPORT                        R4 K6 [pairs]
       19 MOVE                             R5 R2
       20 CALL                             R4 1 3
       21 FORGPREP_NEXT                    R4
       22 GETUPVAL                         R9 0
       23 MOVE                             R10 R8
       24 CALL                             R9 1 1
       25 SETTABLE                         R9 R3 R7
       26 FORGLOOP                         R4 2 ; [-5]
       28 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 FASTCALL1                        TYPEOF R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K1 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["CFrame"] ; [+14]
       10 MOVE                             R5 R0
       11 LOADK                            R6 K3 [".Position"]
       12 CONCAT                           R4 R5 R6
       13 GETTABLEKS                       R5 R3 K4 ["Position"]
       15 SETTABLE                         R5 R2 R4
       16 MOVE                             R5 R0
       17 LOADK                            R6 K5 [".Rotation"]
       18 CONCAT                           R4 R5 R6
       19 GETTABLEKS                       R5 R3 K6 ["Rotation"]
       21 SETTABLE                         R5 R2 R4
       22 RETURN                           R0 0
       23 SETTABLE                         R3 R2 R0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetPropertyNames"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 NEWTABLE                         R1 0 0
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        7 GETIMPORT                        R2 K2 [pcall]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 2
       13 JUMPIFNOT                        R2 ; [+1]
       14 JUMPIF                           R3 ; [+3]
       15 NEWTABLE                         R4 0 0
       17 RETURN                           R4 1
       18 NEWTABLE                         R4 0 0
       20 MOVE                             R5 R3
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 GETUPVAL                         R11 1
       25 GETTABLE                         R10 R11 R9
       26 JUMPIF                           R10 ; [+33]
       27 GETIMPORT                        R10 K2 [pcall]
       29 NEWCLOSURE                       R11 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R9
       32 CALL                             R10 1 2
       33 JUMPIFNOT                        R10 ; [+26]
       34 JUMPIFEQKNIL                     R11 ; [+25]
       36 GETUPVAL                         R12 2
       37 MOVE                             R13 R11
       38 CALL                             R12 1 1
       39 FASTCALL1                        TYPEOF R11 ; [+3]
       40 MOVE                             R14 R11
       41 GETIMPORT                        R13 K4 [typeof]
       43 CALL                             R13 1 1
       44 JUMPIFNOTEQKS                    R13 K5 ["CFrame"] ; [+14]
       46 MOVE                             R14 R9
       47 LOADK                            R15 K6 [".Position"]
       48 CONCAT                           R13 R14 R15
       49 GETTABLEKS                       R14 R12 K7 ["Position"]
       51 SETTABLE                         R14 R4 R13
       52 MOVE                             R14 R9
       53 LOADK                            R15 K8 [".Rotation"]
       54 CONCAT                           R13 R14 R15
       55 GETTABLEKS                       R14 R12 K9 ["Rotation"]
       57 SETTABLE                         R14 R4 R13
       58 JUMP                             ; [+1]
       59 SETTABLE                         R12 R4 R9
       60 FORGLOOP                         R5 2 ; [-37]
       62 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["UniqueId"]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R1
        5 CAPTURE                          VAL R0
        6 CALL                             R2 1 1
        7 JUMPIF                           R2 ; [+1]
        8 LOADNIL                          R1
        9 DUPTABLE                         R3 K8 [{"name", "className", "path", "uniqueId", "properties", "children"}]
       10 GETTABLEKS                       R4 R0 K9 ["Name"]
       12 SETTABLEKS                       R4 R3 K2 ["name"]
       14 GETTABLEKS                       R4 R0 K10 ["ClassName"]
       16 SETTABLEKS                       R4 R3 K3 ["className"]
       18 NAMECALL                         R4 R0 K11 ["GetFullName"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K4 ["path"]
       23 SETTABLEKS                       R1 R3 K5 ["uniqueId"]
       25 GETUPVAL                         R4 0
       26 MOVE                             R5 R0
       27 CALL                             R4 1 1
       28 SETTABLEKS                       R4 R3 K6 ["properties"]
       30 GETUPVAL                         R4 1
       31 MOVE                             R5 R0
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K7 ["children"]
       35 GETUPVAL                         R4 2
       36 MOVE                             R5 R0
       37 CALL                             R4 1 1
       38 JUMPIFNOT                        R4 ; [+2]
       39 SETTABLEKS                       R4 R3 K12 ["attributes"]
       41 CLOSEUPVALS                      R1
       42 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+11]
        7 LOADK                            R4 K2 ["Error encoding JSON: %*"]
        8 FASTCALL1                        TOSTRING R2 ; [+3]
        9 MOVE                             R7 R2
       10 GETIMPORT                        R6 K4 [tostring]
       12 CALL                             R6 1 1
       13 NAMECALL                         R4 R4 K5 ["format"]
       15 CALL                             R4 2 1
       16 MOVE                             R3 R4
       17 RETURN                           R3 1
       18 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R1 R0 K0 ["lower"]
        3 CALL                             R1 1 1
        4 LOADN                            R3 1
        5 LOADN                            R4 5
        6 NAMECALL                         R1 R1 K1 ["sub"]
        8 CALL                             R1 3 1
        9 JUMPIFNOTEQKS                    R1 K2 ["game."] ; [+6]
       11 LOADN                            R3 6
       12 NAMECALL                         R1 R0 K1 ["sub"]
       14 CALL                             R1 2 1
       15 MOVE                             R0 R1
       16 NEWTABLE                         R1 0 1
       18 GETIMPORT                        R2 K4 [game]
       20 SETLIST                          R1 R2 1 [1]
       22 LOADK                            R4 K5 ["."]
       23 NAMECALL                         R2 R0 K6 ["split"]
       25 CALL                             R2 2 3
       26 FORGPREP                         R2
       27 NEWTABLE                         R7 0 0
       29 MOVE                             R8 R1
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 FORGPREP                         R8
       33 NAMECALL                         R13 R12 K7 ["GetChildren"]
       35 CALL                             R13 1 3
       36 FORGPREP                         R13
       37 GETTABLEKS                       R18 R17 K8 ["Name"]
       39 NAMECALL                         R18 R18 K0 ["lower"]
       41 CALL                             R18 1 1
       42 NAMECALL                         R19 R6 K0 ["lower"]
       44 CALL                             R19 1 1
       45 JUMPIFNOTEQ                      R18 R19 ; [+8]
       47 FASTCALL2                        TABLE_INSERT R7 R17 ; [+5]
       49 MOVE                             R19 R7
       50 MOVE                             R20 R17
       51 GETIMPORT                        R18 K11 [table.insert]
       53 CALL                             R18 2 0
       54 FORGLOOP                         R13 2 ; [-18]
       56 FORGLOOP                         R8 2 ; [-24]
       58 MOVE                             R1 R7
       59 LENGTH                           R8 R1
       60 JUMPIFEQKN                       R8 K12 [0] ; [+3]
       62 FORGLOOP                         R2 2 ; [-36]
       64 RETURN                           R1 1

PROTO_14:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+5]
        3 NEWTABLE                         R1 0 0
        5 LOADK                            R2 K1 ["Error: Path cannot be empty"]
        6 RETURN                           R1 2
        7 GETIMPORT                        R1 K3 [pcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+4]
       13 JUMPIFNOT                        R2 ; [+3]
       14 MOVE                             R3 R2
       15 LOADNIL                          R4
       16 RETURN                           R3 2
       17 NEWTABLE                         R3 0 0
       19 LOADK                            R5 K4 ["Error: Could not find instances at path '%*'"]
       20 MOVE                             R7 R0
       21 NAMECALL                         R5 R5 K5 ["format"]
       23 CALL                             R5 2 1
       24 MOVE                             R4 R5
       25 RETURN                           R3 2

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["path"]
        3 CALL                             R1 1 2
        4 JUMPIFNOT                        R2 ; [+4]
        5 DUPTABLE                         R3 K2 [{"text"}]
        6 SETTABLEKS                       R2 R3 K1 ["text"]
        8 RETURN                           R3 1
        9 LENGTH                           R3 R1
       10 JUMPIFNOTEQKN                    R3 K3 [0] ; [+12]
       12 DUPTABLE                         R3 K2 [{"text"}]
       13 LOADK                            R5 K4 ["Error: Could not find any instances at path '%*'"]
       14 GETTABLEKS                       R7 R0 K0 ["path"]
       16 NAMECALL                         R5 R5 K5 ["format"]
       18 CALL                             R5 2 1
       19 MOVE                             R4 R5
       20 SETTABLEKS                       R4 R3 K1 ["text"]
       22 RETURN                           R3 1
       23 GETUPVAL                         R4 1
       24 CALL                             R4 0 1
       25 JUMPIFNOT                        R4 ; [+4]
       26 GETTABLEN                        R4 R1 1
       27 GETTABLEKS                       R3 R4 K6 ["Name"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 LENGTH                           R4 R1
       32 JUMPIFNOTEQKN                    R4 K7 [1] ; [+29]
       34 GETUPVAL                         R4 2
       35 GETTABLEN                        R5 R1 1
       36 CALL                             R4 1 1
       37 DUPTABLE                         R5 K9 [{"text", "instanceName"}]
       38 GETIMPORT                        R7 K11 [pcall]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R4
       43 CALL                             R7 1 2
       44 JUMPIF                           R7 ; [+11]
       45 LOADK                            R9 K12 ["Error encoding JSON: %*"]
       46 FASTCALL1                        TOSTRING R8 ; [+3]
       47 MOVE                             R12 R8
       48 GETIMPORT                        R11 K14 [tostring]
       50 CALL                             R11 1 1
       51 NAMECALL                         R9 R9 K5 ["format"]
       53 CALL                             R9 2 1
       54 MOVE                             R6 R9
       55 JUMP                             ; [+1]
       56 MOVE                             R6 R8
       57 SETTABLEKS                       R6 R5 K1 ["text"]
       59 SETTABLEKS                       R3 R5 K8 ["instanceName"]
       61 RETURN                           R5 1
       62 LENGTH                           R4 R1
       63 NEWTABLE                         R5 0 0
       65 LOADN                            R8 1
       66 GETUPVAL                         R11 4
       67 FASTCALL2                        MATH_MIN R4 R11 ; [+4]
       69 MOVE                             R10 R4
       70 GETIMPORT                        R9 K17 [math.min]
       72 CALL                             R9 2 1
       73 MOVE                             R6 R9
       74 LOADN                            R7 1
       75 FORNPREP                         R6
       76 GETUPVAL                         R11 2
       77 GETTABLE                         R12 R1 R8
       78 CALL                             R11 1 1
       79 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       81 MOVE                             R10 R5
       82 GETIMPORT                        R9 K20 [table.insert]
       84 CALL                             R9 2 0
       85 FORNLOOP                         R6
       86 LOADK                            R7 K21 ["Multiple instances found with path '%*'."]
       87 GETTABLEKS                       R9 R0 K0 ["path"]
       89 NAMECALL                         R7 R7 K5 ["format"]
       91 CALL                             R7 2 1
       92 MOVE                             R6 R7
       93 DUPTABLE                         R7 K27 [{"matches", "count", "totalFound", "note", "warning"}]
       94 SETTABLEKS                       R5 R7 K22 ["matches"]
       96 LENGTH                           R8 R5
       97 SETTABLEKS                       R8 R7 K23 ["count"]
       99 SETTABLEKS                       R4 R7 K24 ["totalFound"]
      101 GETUPVAL                         R9 4
      102 JUMPIFNOTLE                      R4 R9 ; [+9]
      104 LOADK                            R9 K28 ["%* All %* matches are included below."]
      105 MOVE                             R11 R6
      106 MOVE                             R12 R4
      107 NAMECALL                         R9 R9 K5 ["format"]
      109 CALL                             R9 3 1
      110 MOVE                             R8 R9
      111 JUMP                             ; [+1]
      112 MOVE                             R8 R6
      113 SETTABLEKS                       R8 R7 K25 ["note"]
      115 GETUPVAL                         R9 4
      116 JUMPIFNOTLT                      R9 R4 ; [+9]
      118 LOADK                            R9 K29 ["Found %* total matches, but only showing first %* due to output limits. Consider using a more specific path to narrow down results."]
      119 MOVE                             R11 R4
      120 GETUPVAL                         R12 4
      121 NAMECALL                         R9 R9 K5 ["format"]
      123 CALL                             R9 3 1
      124 MOVE                             R8 R9
      125 JUMP                             ; [+1]
      126 LOADNIL                          R8
      127 SETTABLEKS                       R8 R7 K26 ["warning"]
      129 DUPTABLE                         R8 K9 [{"text", "instanceName"}]
      130 GETIMPORT                        R10 K11 [pcall]
      132 NEWCLOSURE                       R11 P0
      133 CAPTURE                          UPVAL U3
      134 CAPTURE                          VAL R7
      135 CALL                             R10 1 2
      136 JUMPIF                           R10 ; [+11]
      137 LOADK                            R12 K12 ["Error encoding JSON: %*"]
      138 FASTCALL1                        TOSTRING R11 ; [+3]
      139 MOVE                             R15 R11
      140 GETIMPORT                        R14 K14 [tostring]
      142 CALL                             R14 1 1
      143 NAMECALL                         R12 R12 K5 ["format"]
      145 CALL                             R12 2 1
      146 MOVE                             R9 R12
      147 JUMP                             ; [+1]
      148 MOVE                             R9 R11
      149 SETTABLEKS                       R9 R8 K1 ["text"]
      151 SETTABLEKS                       R3 R8 K8 ["instanceName"]
      153 RETURN                           R8 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_17:
        0 LOADK                            R3 K0 ["."]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 LENGTH                           R4 R1
        5 GETTABLE                         R3 R1 R4
        6 OR                               R2 R3 R0
        7 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+19]
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R4 R1 K0 ["text"]
       11 NAMECALL                         R2 R2 K1 ["addText"]
       13 CALL                             R2 2 1
       14 DUPTABLE                         R4 K3 [{"instanceName"}]
       15 GETTABLEKS                       R5 R1 K2 ["instanceName"]
       17 SETTABLEKS                       R5 R4 K2 ["instanceName"]
       19 NAMECALL                         R2 R2 K4 ["setStructuredContent"]
       21 CALL                             R2 2 1
       22 NAMECALL                         R2 R2 K5 ["build"]
       24 CALL                             R2 1 -1
       25 RETURN                           R2 -1
       26 GETUPVAL                         R2 2
       27 CALL                             R2 0 1
       28 GETTABLEKS                       R4 R1 K0 ["text"]
       30 NAMECALL                         R2 R2 K1 ["addText"]
       32 CALL                             R2 2 1
       33 NAMECALL                         R2 R2 K5 ["build"]
       35 CALL                             R2 1 -1
       36 RETURN                           R2 -1

PROTO_19:
        0 DUPTABLE                         R0 K3 [{"type", "summary", "noExpand"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K5 ["InspectInstance"]
        8 LOADK                            R4 K6 ["Pending"]
        9 NAMECALL                         R1 R1 K7 ["getText"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["summary"]
       14 LOADB                            R1 1
       15 SETTABLEKS                       R1 R0 K2 ["noExpand"]
       17 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["InspectInstance"]
        2 LOADK                            R4 K1 ["Inspecting"]
        3 DUPTABLE                         R5 K3 [{"path"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["path"]
        7 NAMECALL                         R1 R1 K4 ["getText"]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K5 ["summary"]
       12 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R4 R0 K1 ["input"]
        2 GETTABLEKS                       R3 R4 K2 ["path"]
        4 ORK                              R2 R3 K0 [""]
        5 LOADK                            R5 K3 ["."]
        6 NAMECALL                         R3 R2 K4 ["split"]
        8 CALL                             R3 2 1
        9 LENGTH                           R5 R3
       10 GETTABLE                         R4 R3 R5
       11 OR                               R1 R4 R2
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["InspectInstance"]
        2 LOADK                            R4 K1 ["Inspected"]
        3 DUPTABLE                         R5 K3 [{"path"}]
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R7 R8 K5 ["instanceName"]
        7 ORK                              R6 R7 K4 [""]
        8 SETTABLEKS                       R6 R5 K2 ["path"]
       10 NAMECALL                         R1 R1 K6 ["getText"]
       12 CALL                             R1 4 1
       13 SETTABLEKS                       R1 R0 K7 ["summary"]
       15 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["InspectInstanceTool_inspect"]
        3 DUPCLOSURE                       R5 K2 [PROTO_16]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 DUPCLOSURE                       R3 K4 [PROTO_17]
        9 NEWCLOSURE                       R4 P2
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R5 R6 K5 ["define"]
       16 CALL                             R5 0 1
       17 GETUPVAL                         R8 4
       18 GETTABLEKS                       R7 R8 K6 ["InspectInstance"]
       20 NAMECALL                         R5 R5 K7 ["setName"]
       22 CALL                             R5 2 1
       23 LOADK                            R8 K8 ["Inspect a specific Roblox instance to get all its properties, attributes, and children summary.\nReturns detailed information about instances including all readable properties, custom attributes, \nand a comprehensive summary of immediate children and recursive child counts.\nIf multiple instances match the same path, all matches will be returned.\nUse this tool after using GameTree to explore specific instances in detail.\n\nSINGLE MATCH OUTPUT FORMAT:\n{\n  \"name\": \"MyPart\",\n  \"className\": \"Part\",\n  \"path\": \"Workspace.MyPart\",\n  \"uniqueId\": \"1234567890ABCDEF\",\n  \"properties\": {\n    \"Anchored\": true,\n    \"CanCollide\": true,\n    \"CFrame.Position\": \"0, 10, 0\",\n    \"CFrame.Rotation\": \"1, 0, 0, 0, 1, 0, 0, 0, 1\",\n    // ... all other readable properties\n  },\n  \"attributes\": {\n    \"CustomTag\": \"PlayerSpawn\",\n    \"SpawnDelay\": 5,\n    \"IsActive\": true\n  },\n  \"children\": {\n    \"immediateChildren\": [\n      {\n        \"className\": \"Part\",\n        \"path\": \"Workspace.MyPart.ChildPart\"\n      },\n      {\n        \"className\": \"Model\",\n        \"path\": \"Workspace.MyPart.ChildModel\"\n      }\n    ],\n    \"childrenCount\": 2,\n    \"totalDescendants\": 8\n  }\n}\n\nCHILDREN SUMMARY FIELDS:\n- immediateChildren: Array of direct children with className and path only (no name, childCount, or uniqueId)\n- childrenCount: Number of direct children\n- totalDescendants: Total count of all descendants (children, children's children, etc.)\n\nuniqueId is included for the main inspected instance when available. This is a unique identifier for each instance in the DataModel.\n\nMULTIPLE MATCHES OUTPUT FORMAT:\n{\n  \"matches\": [\n    { \n      \"name\": \"MyPart\", \n      \"className\": \"Part\", \n      \"path\": \"Workspace.MyPart\",\n      \"uniqueId\": \"RBX1234567890ABCDEF\",\n      \"properties\": {...}, \n      \"attributes\": {...},\n      \"children\": {...}\n    },\n    { \n      \"name\": \"MyPart\", \n      \"className\": \"MeshPart\", \n      \"path\": \"Workspace.MyPart\",\n      \"uniqueId\": \"RBX9876543210FEDCBA\",\n      \"properties\": {...}, \n      \"attributes\": {...},\n      \"children\": {...}\n    }\n  ],\n  \"count\": 2,\n  \"totalFound\": 2,\n  \"note\": \"Multiple instances found with path 'Workspace.MyPart'. All 2 matches are included below.\"\n}\n\nWHEN TOO MANY MATCHES (>"]
       24 GETUPVAL                         R9 5
       25 LOADK                            R10 K9 ["):\n{\n  \"matches\": [ /* first "]
       26 GETUPVAL                         R11 5
       27 LOADK                            R12 K10 [" matches with full details */ ],\n  \"count\": "]
       28 GETUPVAL                         R13 5
       29 LOADK                            R14 K11 [",\n  \"totalFound\": 45,\n  \"note\": \"Multiple instances found with path 'Workspace.Part'.\",\n  \"warning\": \"Found 45 total matches, but only showing first "]
       30 GETUPVAL                         R15 5
       31 LOADK                            R16 K12 [" due to output limits. Consider using a more specific path to narrow down results.\"\n}\n\nPATH SPECIFICATION:\n- Use dot notation: \"Workspace.Model.Part\"\n- Can include or omit \"game.\" prefix\n- Path must match instance hierarchy\n- If multiple instances have the same name at the same level, all will be returned\n- Maximum of "]
       32 GETUPVAL                         R17 5
       33 LOADK                            R18 K13 [" matches will be returned (with warning if more exist)\n\nEXAMPLES:\n- Inspect with children: InspectInstance(path: \"Workspace.Baseplate\")\n- Multiple matches: InspectInstance(path: \"Workspace.Part\") → Returns up to "]
       34 GETUPVAL                         R19 5
       35 LOADK                            R20 K14 [" Parts with children summary\n- Case-insensitive: InspectInstance(path: \"workspace.baseplate\")\n- Inspect script: InspectInstance(path: \"ServerScriptService.MainScript\")\n- Inspect GUI: InspectInstance(path: \"StarterGui.ScreenGui.Frame\")\n- With game prefix: InspectInstance(path: \"game.Workspace.Model\")\n\nCHILDREN SUMMARY USE CASES:\n- Understand instance hierarchy structure\n- Count total descendants for performance considerations\n- See immediate children for navigation purposes\n- Identify complex models with many nested children\n- Plan traversal strategies for large hierarchies\n"]
       36 CONCAT                           R7 R8 R20
       37 NAMECALL                         R5 R5 K15 ["setDescription"]
       39 CALL                             R5 2 1
       40 LOADK                            R7 K16 ["path"]
       41 DUPTABLE                         R8 K19 [{"type", "description"}]
       42 LOADK                            R9 K20 ["string"]
       43 SETTABLEKS                       R9 R8 K17 ["type"]
       45 LOADK                            R10 K21 ["Path to the instance(s) to inspect using dot notation (case-insensitive). Returns detailed properties, attributes, and children summary. If multiple instances match, up to %* will be returned with a warning if more exist. Example: 'Workspace.Model.Part' or 'workspace.model.part'"]
       46 GETUPVAL                         R12 5
       47 NAMECALL                         R10 R10 K22 ["format"]
       49 CALL                             R10 2 1
       50 MOVE                             R9 R10
       51 SETTABLEKS                       R9 R8 K18 ["description"]
       53 NAMECALL                         R5 R5 K23 ["addArgument"]
       55 CALL                             R5 3 1
       56 MOVE                             R7 R4
       57 NAMECALL                         R5 R5 K24 ["setHandler"]
       59 CALL                             R5 2 1
       60 NAMECALL                         R5 R5 K25 ["build"]
       62 CALL                             R5 1 1
       63 GETUPVAL                         R7 1
       64 CALL                             R7 0 1
       65 JUMPIFNOT                        R7 ; [+15]
       66 DUPTABLE                         R6 K29 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       67 DUPCLOSURE                       R7 K30 [PROTO_19]
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U7
       70 SETTABLEKS                       R7 R6 K26 ["transformInitialContent"]
       72 DUPCLOSURE                       R7 K31 [PROTO_21]
       73 CAPTURE                          UPVAL U7
       74 SETTABLEKS                       R7 R6 K27 ["getTransformPreExecuteFn"]
       76 DUPCLOSURE                       R7 K32 [PROTO_23]
       77 CAPTURE                          UPVAL U7
       78 SETTABLEKS                       R7 R6 K28 ["getTransformResultFn"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R6
       82 DUPTABLE                         R7 K36 [{"definition", "contentWidgets", "streamTransform"}]
       83 SETTABLEKS                       R5 R7 K33 ["definition"]
       85 GETUPVAL                         R9 1
       86 CALL                             R9 0 1
       87 JUMPIFNOT                        R9 ; [+6]
       88 NEWTABLE                         R8 0 1
       90 GETUPVAL                         R9 6
       91 SETLIST                          R8 R9 1 [1]
       93 JUMP                             ; [+1]
       94 LOADNIL                          R8
       95 SETTABLEKS                       R8 R7 K34 ["contentWidgets"]
       97 SETTABLEKS                       R6 R7 K35 ["streamTransform"]
       99 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["ReflectionService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R5 K12 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R7 R0 K13 ["Components"]
       30 GETTABLEKS                       R6 R7 K14 ["ContentWidgets"]
       32 GETTABLEKS                       R5 R6 K15 ["SummarizedContentWidget"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R7 R0 K16 ["Tools"]
       39 GETTABLEKS                       R6 R7 K17 ["ToolTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R8 R0 K18 ["Util"]
       46 GETTABLEKS                       R7 R8 K19 ["ToolUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R10 R0 K20 ["Resources"]
       53 GETTABLEKS                       R9 R10 K21 ["Localization"]
       55 GETTABLEKS                       R8 R9 K22 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R0 K23 ["Flags"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R11 R0 K23 ["Flags"]
       67 GETTABLEKS                       R10 R11 K24 ["FFlagAssistantToolResultSerialization"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R11 R8 K25 ["Shared"]
       72 GETTABLEKS                       R10 R11 K26 ["FFlagEnableSubagents"]
       74 GETTABLEKS                       R12 R3 K18 ["Util"]
       76 GETTABLEKS                       R11 R12 K27 ["ToolBuilder"]
       78 GETTABLEKS                       R13 R3 K18 ["Util"]
       80 GETTABLEKS                       R12 R13 K28 ["ToolResult"]
       82 GETTABLEKS                       R13 R5 K29 ["ToolNames"]
       84 GETIMPORT                        R14 K10 [require]
       86 GETTABLEKS                       R16 R0 K23 ["Flags"]
       88 GETTABLEKS                       R15 R16 K30 ["FIntInspectInstanceMaxJsonLength"]
       90 CALL                             R14 1 1
       91 CALL                             R14 0 1
       92 GETIMPORT                        R15 K10 [require]
       94 GETTABLEKS                       R17 R0 K23 ["Flags"]
       96 GETTABLEKS                       R16 R17 K31 ["FIntInspectInstanceMaxMatches"]
       98 CALL                             R15 1 1
       99 CALL                             R15 0 1
      100 GETIMPORT                        R16 K10 [require]
      102 GETTABLEKS                       R18 R0 K23 ["Flags"]
      104 GETTABLEKS                       R17 R18 K32 ["FIntInspectInstanceMaxStringLength"]
      106 CALL                             R16 1 1
      107 CALL                             R16 0 1
      108 DUPCLOSURE                       R17 K33 [PROTO_0]
      109 DUPCLOSURE                       R18 K34 [PROTO_3]
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R1
      115 DUPCLOSURE                       R19 K35 [PROTO_4]
      116 CAPTURE                          VAL R18
      117 DUPTABLE                         R20 K39 [{"Parent", "ClassName", "Name", "DataModel"}]
      118 LOADB                            R21 1
      119 SETTABLEKS                       R21 R20 K11 ["Parent"]
      121 LOADB                            R21 1
      122 SETTABLEKS                       R21 R20 K36 ["ClassName"]
      124 LOADB                            R21 1
      125 SETTABLEKS                       R21 R20 K37 ["Name"]
      127 LOADB                            R21 1
      128 SETTABLEKS                       R21 R20 K38 ["DataModel"]
      130 DUPCLOSURE                       R21 K40 [PROTO_5]
      131 CAPTURE                          VAL R18
      132 DUPCLOSURE                       R22 K41 [PROTO_8]
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R18
      136 DUPCLOSURE                       R23 K42 [PROTO_10]
      137 CAPTURE                          VAL R22
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R19
      140 DUPCLOSURE                       R24 K43 [PROTO_12]
      141 CAPTURE                          VAL R1
      142 DUPCLOSURE                       R25 K44 [PROTO_14]
      143 DUPCLOSURE                       R26 K45 [PROTO_15]
      144 CAPTURE                          VAL R25
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R23
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R15
      149 DUPCLOSURE                       R27 K46 [PROTO_24]
      150 CAPTURE                          VAL R26
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R15
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R7
      158 RETURN                           R27 1
