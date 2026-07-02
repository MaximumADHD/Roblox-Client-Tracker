PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Size"]
        2 GETTABLEKS                       R3 R1 K0 ["Size"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+25]
        6 GETTABLEKS                       R2 R0 K1 ["Count"]
        8 GETTABLEKS                       R3 R1 K1 ["Count"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+10]
       12 GETTABLEKS                       R3 R0 K2 ["Id"]
       14 GETTABLEKS                       R4 R1 K2 ["Id"]
       16 JUMPIFLT                         R4 R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 GETTABLEKS                       R3 R0 K1 ["Count"]
       23 GETTABLEKS                       R4 R1 K1 ["Count"]
       25 JUMPIFLT                         R4 R3 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1
       30 GETTABLEKS                       R3 R0 K0 ["Size"]
       32 GETTABLEKS                       R4 R1 K0 ["Size"]
       34 JUMPIFLT                         R4 R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isCli"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1
        8 NEWTABLE                         R0 0 0
       10 NEWTABLE                         R1 0 0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K1 ["fetchTextureSizes"]
       15 CALL                             R2 0 1
       16 GETIMPORT                        R3 K3 [pairs]
       18 GETIMPORT                        R4 K5 [game]
       20 GETTABLEKS                       R4 R4 K6 ["Workspace"]
       22 NAMECALL                         R4 R4 K7 ["GetDescendants"]
       24 CALL                             R4 1 -1
       25 CALL                             R3 -1 3
       26 FORGPREP_NEXT                    R3
       27 GETTABLEKS                       R8 R7 K8 ["ClassName"]
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R10 R10 K9 ["INSTANCE_PROPERTIES_TO_PARSE"]
       32 GETTABLE                         R9 R10 R8
       33 JUMPIFNOT                        R9 ; [+35]
       34 GETIMPORT                        R10 K11 [ipairs]
       36 MOVE                             R11 R9
       37 CALL                             R10 1 3
       38 FORGPREP_INEXT                   R10
       39 GETTABLE                         R15 R7 R14
       40 JUMPIFNOT                        R15 ; [+26]
       41 LENGTH                           R16 R15
       42 LOADN                            R17 0
       43 JUMPIFNOTLT                      R17 R16 ; [+23]
       45 GETTABLE                         R16 R0 R15
       46 JUMPIFNOTEQKNIL                  R16 ; [+10]
       48 LOADN                            R16 1
       49 SETTABLE                         R16 R0 R15
       50 NEWTABLE                         R16 0 1
       52 MOVE                             R17 R7
       53 SETLIST                          R16 R17 1 [1]
       55 SETTABLE                         R16 R1 R15
       56 JUMP                             ; [+10]
       57 GETTABLE                         R17 R0 R15
       58 ADDK                             R16 R17 K12 [1]
       59 SETTABLE                         R16 R0 R15
       60 GETTABLE                         R17 R1 R15
       61 FASTCALL2                        TABLE_INSERT R17 R7 ; [+4]
       63 MOVE                             R18 R7
       64 GETIMPORT                        R16 K15 [table.insert]
       66 CALL                             R16 2 0
       67 FORGLOOP                         R10 2 [inext] ; [-29]
       69 FORGLOOP                         R3 2 ; [-43]
       71 NEWTABLE                         R3 0 0
       73 GETIMPORT                        R4 K3 [pairs]
       75 MOVE                             R5 R0
       76 CALL                             R4 1 3
       77 FORGPREP_NEXT                    R4
       78 LOADNIL                          R9
       79 LOADNIL                          R10
       80 GETIMPORT                        R11 K18 [string.match]
       82 MOVE                             R12 R7
       83 LOADK                            R13 K19 ["%d"]
       84 CALL                             R11 2 1
       85 JUMPIFNOTEQKNIL                  R11 ; [+4]
       87 MOVE                             R10 R7
       88 MOVE                             R9 R10
       89 JUMP                             ; [+9]
       90 GETUPVAL                         R11 3
       91 GETTABLEKS                       R11 R11 K20 ["parseIdFromTextureAlias"]
       93 MOVE                             R12 R7
       94 CALL                             R11 1 1
       95 MOVE                             R10 R11
       96 LOADK                            R11 K21 ["rbxassetid://"]
       97 MOVE                             R12 R10
       98 CONCAT                           R9 R11 R12
       99 DUPTABLE                         R13 K29 [{["Texture"], ["Id"], ["Size"], ["Count"], ["Instances"], ["ZoomedInstanceIndex"] = 0}]
      100 SETTABLEKS                       R9 R13 K22 ["Texture"]
      102 SETTABLEKS                       R10 R13 K23 ["Id"]
      104 GETTABLE                         R15 R2 R10
      105 JUMPIFNOT                        R15 ; [+2]
      106 GETTABLE                         R14 R2 R10
      107 JUMPIF                           R14 ; [+1]
      108 LOADN                            R14 0
      109 SETTABLEKS                       R14 R13 K24 ["Size"]
      111 SETTABLEKS                       R8 R13 K25 ["Count"]
      113 GETTABLE                         R14 R1 R7
      114 SETTABLEKS                       R14 R13 K26 ["Instances"]
      116 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
      118 MOVE                             R12 R3
      119 GETIMPORT                        R11 K15 [table.insert]
      121 CALL                             R11 2 0
      122 FORGLOOP                         R4 2 ; [-45]
      124 GETIMPORT                        R4 K31 [table.sort]
      126 MOVE                             R5 R3
      127 DUPCLOSURE                       R6 K32 [PROTO_0]
      128 CALL                             R4 2 0
      129 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETIMPORT                        R3 K3 [game]
        4 GETTABLEKS                       R3 R3 K4 ["Workspace"]
        6 NAMECALL                         R3 R3 K5 ["GetDescendants"]
        8 CALL                             R3 1 -1
        9 CALL                             R2 -1 3
       10 FORGPREP_NEXT                    R2
       11 GETTABLEKS                       R7 R6 K6 ["ClassName"]
       13 GETUPVAL                         R9 0
       14 GETTABLEKS                       R9 R9 K7 ["INSTANCE_PROPERTIES_TO_PARSE"]
       16 GETTABLE                         R8 R9 R7
       17 JUMPIFNOT                        R8 ; [+26]
       18 GETIMPORT                        R9 K9 [ipairs]
       20 MOVE                             R10 R8
       21 CALL                             R9 1 3
       22 FORGPREP_INEXT                   R9
       23 GETTABLE                         R14 R6 R13
       24 GETUPVAL                         R15 1
       25 GETTABLEKS                       R15 R15 K10 ["doesTextureAliasContainId"]
       27 MOVE                             R16 R14
       28 CALL                             R15 1 1
       29 JUMPIFNOT                        R15 ; [+9]
       30 GETUPVAL                         R15 1
       31 GETTABLEKS                       R15 R15 K11 ["parseIdFromTextureAlias"]
       33 MOVE                             R16 R14
       34 CALL                             R15 1 1
       35 JUMPIFNOTEQ                      R15 R0 ; [+3]
       37 SETTABLE                         R1 R6 R13
       38 JUMP                             ; [+3]
       39 JUMPIFNOTEQ                      R14 R0 ; [+2]
       41 SETTABLE                         R1 R6 R13
       42 FORGLOOP                         R9 2 [inext] ; [-20]
       44 FORGLOOP                         R2 2 ; [-34]
       46 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["BasePart"]
        2 NAMECALL                         R1 R0 K1 ["IsA"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+5]
        6 LOADK                            R3 K0 ["BasePart"]
        7 NAMECALL                         R1 R0 K2 ["FindFirstAncestorWhichIsA"]
        9 CALL                             R1 2 1
       10 MOVE                             R0 R1
       11 LOADK                            R4 K3 ["Model"]
       12 NAMECALL                         R2 R0 K1 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+4]
       16 NAMECALL                         R1 R0 K4 ["GetModelCFrame"]
       18 CALL                             R1 1 1
       19 JUMPIF                           R1 ; [+2]
       20 GETTABLEKS                       R1 R0 K5 ["CFrame"]
       22 SETUPVAL                         R1 1
       23 LOADK                            R4 K3 ["Model"]
       24 NAMECALL                         R2 R0 K1 ["IsA"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+4]
       28 NAMECALL                         R1 R0 K6 ["GetExtentsSize"]
       30 CALL                             R1 1 1
       31 JUMPIF                           R1 ; [+2]
       32 GETTABLEKS                       R1 R0 K7 ["Size"]
       34 SETUPVAL                         R1 2
       35 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETIMPORT                        R4 K1 [pcall]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          REF R2
        7 CAPTURE                          REF R3
        8 CALL                             R4 1 2
        9 JUMPIF                           R4 ; [+3]
       10 LOADNIL                          R6
       11 CLOSEUPVALS                      R2
       12 RETURN                           R6 1
       13 MOVE                             R8 R2
       14 MOVE                             R9 R3
       15 NAMECALL                         R6 R0 K2 ["zoomToExtents"]
       17 CALL                             R6 3 0
       18 LOADB                            R6 1
       19 CLOSEUPVALS                      R2
       20 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [script]
        5 GETTABLEKS                       R1 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETIMPORT                        R3 K1 [script]
       15 GETTABLEKS                       R3 R3 K2 ["Parent"]
       17 GETTABLEKS                       R3 R3 K5 ["Stats"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R3 K8 ["Utils"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R3 K9 ["Constants"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R7 R1 K10 ["Packages"]
       38 GETTABLEKS                       R7 R7 K11 ["TestLoader"]
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K12 [PROTO_1]
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R7 R0 K13 ["fetchAllTexturesFromWorkspace"]
       48 DUPCLOSURE                       R7 K14 [PROTO_2]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R7 R0 K15 ["replaceAllTexturesWithId"]
       53 DUPCLOSURE                       R7 K16 [PROTO_4]
       54 SETTABLEKS                       R7 R0 K17 ["zoomToExtentsAndSelectInstance"]
       56 RETURN                           R0 1
