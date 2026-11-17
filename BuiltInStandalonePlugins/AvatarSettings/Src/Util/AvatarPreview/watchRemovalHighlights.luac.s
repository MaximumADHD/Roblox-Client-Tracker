PROTO_0:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 NAMECALL                         R5 R4 K0 ["Disconnect"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 GETIMPORT                        R0 K3 [table.clear]
       13 GETUPVAL                         R1 1
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 LOADB                            R0 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 JUMPIFNOTEQ                      R1 R2 ; [+7]
        7 GETUPVAL                         R0 3
        8 GETIMPORT                        R2 K1 [game]
       10 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
       12 CALL                             R0 2 1
       13 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETIMPORT                        R2 K1 [game]
        6 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        8 CALL                             R0 2 1
        9 JUMPIF                           R0 ; [+16]
       10 LOADB                            R0 0
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 2
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 FORGPREP                         R0
       16 NAMECALL                         R5 R4 K3 ["Disconnect"]
       18 CALL                             R5 1 0
       19 FORGLOOP                         R0 2 ; [-4]
       21 GETIMPORT                        R0 K6 [table.clear]
       23 GETUPVAL                         R1 2
       24 CALL                             R0 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 3
       27 ADDK                             R0 R0 K7 [1]
       28 SETUPVAL                         R0 3
       29 GETUPVAL                         R0 3
       30 GETUPVAL                         R1 4
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U1
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["IsDescendantOf"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+37]
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETIMPORT                        R3 K2 [game]
       11 NAMECALL                         R1 R1 K0 ["IsDescendantOf"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+16]
       15 LOADB                            R1 0
       16 SETUPVAL                         R1 1
       17 GETUPVAL                         R1 2
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 FORGPREP                         R1
       21 NAMECALL                         R6 R5 K3 ["Disconnect"]
       23 CALL                             R6 1 0
       24 FORGLOOP                         R1 2 ; [-4]
       26 GETIMPORT                        R1 K6 [table.clear]
       28 GETUPVAL                         R2 2
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 3
       32 ADDK                             R1 R1 K7 [1]
       33 SETUPVAL                         R1 3
       34 GETUPVAL                         R1 3
       35 GETUPVAL                         R2 4
       36 NEWCLOSURE                       R3 P0
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U0
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["Accessory"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+10]
        5 LOADK                            R3 K2 ["Humanoid"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+5]
       10 LOADK                            R3 K3 ["WrapLayer"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+37]
       15 GETUPVAL                         R1 0
       16 JUMPIF                           R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 GETIMPORT                        R3 K5 [game]
       21 NAMECALL                         R1 R1 K6 ["IsDescendantOf"]
       23 CALL                             R1 2 1
       24 JUMPIF                           R1 ; [+16]
       25 LOADB                            R1 0
       26 SETUPVAL                         R1 0
       27 GETUPVAL                         R1 2
       28 LOADNIL                          R2
       29 LOADNIL                          R3
       30 FORGPREP                         R1
       31 NAMECALL                         R6 R5 K7 ["Disconnect"]
       33 CALL                             R6 1 0
       34 FORGLOOP                         R1 2 ; [-4]
       36 GETIMPORT                        R1 K10 [table.clear]
       38 GETUPVAL                         R2 2
       39 CALL                             R1 1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R1 3
       42 ADDK                             R1 R1 K11 [1]
       43 SETUPVAL                         R1 3
       44 GETUPVAL                         R1 3
       45 GETUPVAL                         R2 4
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U1
       51 CALL                             R2 1 0
       52 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+15]
        7 LOADB                            R0 0
        8 SETUPVAL                         R0 1
        9 GETUPVAL                         R0 2
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 NAMECALL                         R5 R4 K3 ["Disconnect"]
       15 CALL                             R5 1 0
       16 FORGLOOP                         R0 2 ; [-4]
       18 GETIMPORT                        R0 K6 [table.clear]
       20 GETUPVAL                         R1 2
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R3 1
        1 LOADN                            R4 0
        2 NEWTABLE                         R5 0 0
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          REF R3
        6 CAPTURE                          VAL R5
        7 NEWCLOSURE                       R7 P1
        8 CAPTURE                          REF R3
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R5
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R1
       13 MOVE                             R9 R5
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R10 R10 K0 ["connectInvalidated"]
       17 NEWCLOSURE                       R11 P2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          REF R3
       20 CAPTURE                          VAL R5
       21 CAPTURE                          REF R4
       22 CAPTURE                          VAL R1
       23 CALL                             R10 1 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R8 K3 [table.insert]
       27 CALL                             R8 -1 0
       28 MOVE                             R9 R5
       29 GETTABLEKS                       R10 R0 K4 ["DescendantAdded"]
       31 NEWCLOSURE                       R12 P3
       32 CAPTURE                          REF R3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R5
       35 CAPTURE                          REF R4
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R10 R10 K5 ["Connect"]
       39 CALL                             R10 2 -1
       40 FASTCALL                         TABLE_INSERT ; [+2]
       41 GETIMPORT                        R8 K3 [table.insert]
       43 CALL                             R8 -1 0
       44 JUMPIFNOT                        R2 ; [+15]
       45 MOVE                             R8 R2
       46 LOADNIL                          R9
       47 LOADNIL                          R10
       48 FORGPREP                         R8
       49 MOVE                             R14 R5
       50 MOVE                             R17 R7
       51 NAMECALL                         R15 R12 K5 ["Connect"]
       53 CALL                             R15 2 -1
       54 FASTCALL                         TABLE_INSERT ; [+2]
       55 GETIMPORT                        R13 K3 [table.insert]
       57 CALL                             R13 -1 0
       58 FORGLOOP                         R8 2 ; [-10]
       60 MOVE                             R9 R5
       61 GETTABLEKS                       R10 R0 K6 ["AncestryChanged"]
       63 NEWCLOSURE                       R12 P4
       64 CAPTURE                          VAL R0
       65 CAPTURE                          REF R3
       66 CAPTURE                          VAL R5
       67 NAMECALL                         R10 R10 K5 ["Connect"]
       69 CALL                             R10 2 -1
       70 FASTCALL                         TABLE_INSERT ; [+2]
       71 GETIMPORT                        R8 K3 [table.insert]
       73 CALL                             R8 -1 0
       74 JUMPIF                           R3 ; [+1]
       75 JUMP                             ; [+30]
       76 GETIMPORT                        R10 K8 [game]
       78 NAMECALL                         R8 R0 K9 ["IsDescendantOf"]
       80 CALL                             R8 2 1
       81 JUMPIF                           R8 ; [+15]
       82 LOADB                            R3 0
       83 MOVE                             R8 R5
       84 LOADNIL                          R9
       85 LOADNIL                          R10
       86 FORGPREP                         R8
       87 NAMECALL                         R13 R12 K10 ["Disconnect"]
       89 CALL                             R13 1 0
       90 FORGLOOP                         R8 2 ; [-4]
       92 GETIMPORT                        R8 K12 [table.clear]
       94 MOVE                             R9 R5
       95 CALL                             R8 1 0
       96 JUMP                             ; [+9]
       97 ADDK                             R4 R4 K13 [1]
       98 MOVE                             R8 R4
       99 MOVE                             R9 R1
      100 NEWCLOSURE                       R10 P5
      101 CAPTURE                          REF R3
      102 CAPTURE                          REF R4
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R0
      105 CALL                             R9 1 0
      106 CLOSEUPVALS                      R3
      107 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPreview"]
       15 GETTABLEKS                       R2 R2 K9 ["removalHighlightResults"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K10 [PROTO_6]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
