PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETUPVAL                         R2 0
        5 GETTABLE                         R1 R2 R0
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R1 2 1
       11 JUMPIFNOTEQKNIL                  R1 ; [+10]
       13 GETIMPORT                        R2 K1 [error]
       15 LOADK                            R4 K2 ["Could not find %*"]
       16 MOVE                             R6 R0
       17 NAMECALL                         R4 R4 K3 ["format"]
       19 CALL                             R4 2 1
       20 MOVE                             R3 R4
       21 CALL                             R2 1 0
       22 JUMPIFNOTEQKNIL                  R1 ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       28 LOADK                            R4 K4 ["Luau"]
       29 GETIMPORT                        R2 K6 [assert]
       31 CALL                             R2 2 0
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K7 ["getVerticesFromWrap"]
       35 GETIMPORT                        R3 K11 [Enum.CageType.Outer]
       37 MOVE                             R4 R1
       38 CALL                             R2 2 1
       39 GETUPVAL                         R3 0
       40 SETTABLE                         R2 R3 R0
       41 GETIMPORT                        R3 K14 [table.freeze]
       43 MOVE                             R4 R2
       44 CALL                             R3 1 -1
       45 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETUPVAL                         R2 0
        5 GETTABLE                         R1 R2 R0
        6 RETURN                           R1 1
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 0
       10 SETTABLE                         R1 R2 R0
       11 RETURN                           R1 1

PROTO_2:
        0 LOADN                            R5 2
        1 MOVE                             R9 R1
        2 NAMECALL                         R7 R0 K0 ["Dot"]
        4 CALL                             R7 2 1
        5 MOVE                             R10 R1
        6 NAMECALL                         R8 R1 K0 ["Dot"]
        8 CALL                             R8 2 1
        9 DIV                              R6 R7 R8
       10 MUL                              R4 R5 R6
       11 MUL                              R3 R4 R1
       12 SUB                              R2 R0 R3
       13 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R3
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          VAL R4
       11 DUPCLOSURE                       R7 K0 [PROTO_2]
       12 GETTABLEKS                       R8 R0 K1 ["PrimaryPart"]
       14 GETTABLEKS                       R8 R8 K2 ["CFrame"]
       16 GETTABLEKS                       R9 R8 K3 ["RightVector"]
       18 MOVE                             R10 R1
       19 LOADNIL                          R11
       20 LOADNIL                          R12
       21 FORGPREP                         R10
       22 MOVE                             R15 R5
       23 MOVE                             R16 R13
       24 CALL                             R15 1 1
       25 GETUPVAL                         R16 0
       26 MOVE                             R17 R0
       27 MOVE                             R18 R13
       28 CALL                             R16 2 1
       29 JUMPIFEQKNIL                     R16 ; [+97]
       31 GETTABLEKS                       R17 R16 K4 ["CageOriginWorld"]
       33 MOVE                             R18 R14
       34 LOADNIL                          R19
       35 LOADNIL                          R20
       36 FORGPREP                         R18
       37 MOVE                             R23 R22
       38 LOADNIL                          R24
       39 LOADNIL                          R25
       40 FORGPREP                         R23
       41 GETTABLEKS                       R28 R27 K5 ["side"]
       43 JUMPIFNOTEQ                      R28 R2 ; [+79]
       45 GETUPVAL                         R28 0
       46 MOVE                             R29 R0
       47 GETTABLEKS                       R30 R27 K6 ["targetName"]
       49 CALL                             R28 2 1
       50 JUMPIFEQKNIL                     R28 ; [+72]
       52 GETTABLEKS                       R29 R28 K4 ["CageOriginWorld"]
       54 GETTABLE                         R30 R15 R21
       55 JUMPIFEQKNIL                     R30 ; [+67]
       57 GETIMPORT                        R33 K8 [CFrame.new]
       59 MOVE                             R34 R30
       60 CALL                             R33 1 -1
       61 NAMECALL                         R31 R17 K9 ["ToWorldSpace"]
       63 CALL                             R31 -1 1
       64 GETTABLEKS                       R35 R8 K10 ["Position"]
       66 SUB                              R34 R31 R35
       67 GETTABLEKS                       R34 R34 K10 ["Position"]
       69 LOADN                            R37 2
       70 MOVE                             R41 R9
       71 NAMECALL                         R39 R34 K11 ["Dot"]
       73 CALL                             R39 2 1
       74 MOVE                             R42 R9
       75 NAMECALL                         R40 R9 K11 ["Dot"]
       77 CALL                             R40 2 1
       78 DIV                              R38 R39 R40
       79 MUL                              R36 R37 R38
       80 MUL                              R35 R36 R9
       81 SUB                              R33 R34 R35
       82 GETTABLEKS                       R34 R8 K10 ["Position"]
       84 ADD                              R32 R33 R34
       85 GETIMPORT                        R35 K8 [CFrame.new]
       87 MOVE                             R36 R32
       88 CALL                             R35 1 -1
       89 NAMECALL                         R33 R29 K12 ["ToObjectSpace"]
       91 CALL                             R33 -1 1
       92 GETTABLEKS                       R33 R33 K10 ["Position"]
       94 MOVE                             R34 R5
       95 GETTABLEKS                       R35 R27 K6 ["targetName"]
       97 CALL                             R34 1 1
       98 GETTABLEKS                       R36 R27 K13 ["vertex"]
      100 GETTABLE                         R35 R34 R36
      101 JUMPIFEQKNIL                     R35 ; [+21]
      103 SUB                              R36 R35 R33
      104 GETTABLEKS                       R36 R36 K14 ["Magnitude"]
      106 LOADK                            R37 K15 [0.01]
      107 JUMPIFLE                         R36 R37 ; [+15]
      109 GETTABLEKS                       R38 R27 K6 ["targetName"]
      111 GETTABLE                         R39 R4 R38
      112 JUMPIFEQKNIL                     R39 ; [+3]
      114 GETTABLE                         R37 R4 R38
      115 JUMP                             ; [+4]
      116 NEWTABLE                         R39 0 0
      118 SETTABLE                         R39 R4 R38
      119 MOVE                             R37 R39
      120 GETTABLEKS                       R38 R27 K13 ["vertex"]
      122 SETTABLE                         R33 R37 R38
      123 FORGLOOP                         R23 2 ; [-83]
      125 FORGLOOP                         R18 2 ; [-89]
      127 FORGLOOP                         R10 2 ; [-106]
      129 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["LuaMeshEditingModule"]
       13 GETTABLEKS                       R2 R2 K8 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["EditingTools"]
       31 GETTABLEKS                       R4 R4 K12 ["CageEditingTool"]
       33 GETTABLEKS                       R4 R4 K13 ["findWrapTargetWithName"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Packages"]
       40 GETTABLEKS                       R5 R5 K7 ["LuaMeshEditingModule"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R4 R4 K14 ["Util"]
       45 GETTABLEKS                       R4 R4 K15 ["WrapUtil"]
       47 DUPCLOSURE                       R5 K16 [PROTO_3]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 RETURN                           R5 1
