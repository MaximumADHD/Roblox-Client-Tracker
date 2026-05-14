PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["directionToAngle"]
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 0
        6 ADD                              R6 R3 R2
        7 NAMECALL                         R4 R4 K1 ["angleToDirection"]
        9 CALL                             R4 2 -1
       10 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["DEFAULT"]
        4 JUMPIFEQ                         R1 R2 ; [+13]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["DEFAULT"]
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R2 3
       12 SETTABLEKS                       R2 R1 K1 ["Icon"]
       14 GETUPVAL                         R1 5
       15 GETTABLEKS                       R1 R1 K2 ["NOT_SET"]
       17 SETUPVAL                         R1 4
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["MOVE"]
        4 JUMPIFEQ                         R1 R2 ; [+13]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["MOVE"]
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 2
       11 LOADK                            R2 K1 ["rbxasset://textures/advClosed-hand.png"]
       12 SETTABLEKS                       R2 R1 K2 ["Icon"]
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K3 ["NOT_SET"]
       17 SETUPVAL                         R1 3
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["isValid"]
        4 CALL                             R3 2 1
        5 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        7 LOADK                            R4 K1 ["The handle direction was not valid."]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["RESIZE"]
       15 JUMPIFNOTEQ                      R2 R3 ; [+4]
       17 GETUPVAL                         R2 3
       18 JUMPIFNOTEQ                      R2 R1 ; [+7]
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K4 ["RESIZE"]
       24 JUMPIFEQ                         R2 R3 ; [+11]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K4 ["RESIZE"]
       29 SETUPVAL                         R2 1
       30 GETUPVAL                         R2 4
       31 GETUPVAL                         R4 5
       32 GETTABLE                         R3 R4 R1
       33 SETTABLEKS                       R3 R2 K5 ["Icon"]
       35 SETUPVAL                         R1 3
       36 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["isValid"]
        4 CALL                             R3 2 1
        5 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        7 LOADK                            R4 K1 ["The handle direction was not valid."]
        8 GETIMPORT                        R2 K3 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K4 ["ROTATE"]
       15 JUMPIFNOTEQ                      R2 R3 ; [+4]
       17 GETUPVAL                         R2 3
       18 JUMPIFNOTEQ                      R2 R1 ; [+7]
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K4 ["ROTATE"]
       24 JUMPIFEQ                         R2 R3 ; [+11]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K4 ["ROTATE"]
       29 SETUPVAL                         R2 1
       30 GETUPVAL                         R2 4
       31 GETUPVAL                         R4 5
       32 GETTABLE                         R3 R4 R1
       33 SETTABLEKS                       R3 R2 K5 ["Icon"]
       35 SETUPVAL                         R1 3
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["setToDefaultIcon"]
        3 CALL                             R2 1 0
        4 LOADNIL                          R2
        5 SETUPVAL                         R2 1
        6 LOADNIL                          R2
        7 SETUPVAL                         R2 2
        8 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Cannot initialize MouseIconManager. Got a nil mouse."]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 0
       10 GETTABLEKS                       R4 R1 K3 ["Icon"]
       12 JUMPIFNOTEQKNIL                  R4 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       18 LOADK                            R4 K4 ["Cannot initialize MouseIconManager. The mouse icon was nil"]
       19 GETIMPORT                        R2 K2 [assert]
       21 CALL                             R2 2 0
       22 SETUPVAL                         R1 0
       23 GETTABLEKS                       R2 R1 K3 ["Icon"]
       25 SETUPVAL                         R2 1
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K5 ["DEFAULT"]
       29 SETUPVAL                         R2 2
       30 GETUPVAL                         R2 5
       31 GETTABLEKS                       R2 R2 K6 ["NOT_SET"]
       33 SETUPVAL                         R2 4
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["Parent"]
        9 GETTABLEKS                       R2 R2 K5 ["Enum"]
       11 GETTABLEKS                       R2 R2 K6 ["Direction"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 GETTABLEKS                       R3 R1 K7 ["E"]
       18 LOADK                            R4 K8 ["rbxasset://textures/StudioUIEditor/icon_resize2.png"]
       19 SETTABLE                         R4 R2 R3
       20 GETTABLEKS                       R3 R1 K9 ["SE"]
       22 LOADK                            R4 K10 ["rbxasset://textures/StudioUIEditor/icon_resize3.png"]
       23 SETTABLE                         R4 R2 R3
       24 GETTABLEKS                       R3 R1 K11 ["S"]
       26 LOADK                            R4 K12 ["rbxasset://textures/StudioUIEditor/icon_resize4.png"]
       27 SETTABLE                         R4 R2 R3
       28 GETTABLEKS                       R3 R1 K13 ["SW"]
       30 LOADK                            R4 K14 ["rbxasset://textures/StudioUIEditor/icon_resize1.png"]
       31 SETTABLE                         R4 R2 R3
       32 GETTABLEKS                       R3 R1 K15 ["W"]
       34 LOADK                            R4 K8 ["rbxasset://textures/StudioUIEditor/icon_resize2.png"]
       35 SETTABLE                         R4 R2 R3
       36 GETTABLEKS                       R3 R1 K16 ["NW"]
       38 LOADK                            R4 K10 ["rbxasset://textures/StudioUIEditor/icon_resize3.png"]
       39 SETTABLE                         R4 R2 R3
       40 GETTABLEKS                       R3 R1 K17 ["N"]
       42 LOADK                            R4 K12 ["rbxasset://textures/StudioUIEditor/icon_resize4.png"]
       43 SETTABLE                         R4 R2 R3
       44 GETTABLEKS                       R3 R1 K18 ["NE"]
       46 LOADK                            R4 K14 ["rbxasset://textures/StudioUIEditor/icon_resize1.png"]
       47 SETTABLE                         R4 R2 R3
       48 NEWTABLE                         R3 8 0
       50 GETTABLEKS                       R4 R1 K7 ["E"]
       52 LOADK                            R5 K19 ["rbxasset://textures/StudioUIEditor/icon_rotate1.png"]
       53 SETTABLE                         R5 R3 R4
       54 GETTABLEKS                       R4 R1 K9 ["SE"]
       56 LOADK                            R5 K20 ["rbxasset://textures/StudioUIEditor/icon_rotate2.png"]
       57 SETTABLE                         R5 R3 R4
       58 GETTABLEKS                       R4 R1 K11 ["S"]
       60 LOADK                            R5 K21 ["rbxasset://textures/StudioUIEditor/icon_rotate3.png"]
       61 SETTABLE                         R5 R3 R4
       62 GETTABLEKS                       R4 R1 K13 ["SW"]
       64 LOADK                            R5 K22 ["rbxasset://textures/StudioUIEditor/icon_rotate4.png"]
       65 SETTABLE                         R5 R3 R4
       66 GETTABLEKS                       R4 R1 K15 ["W"]
       68 LOADK                            R5 K23 ["rbxasset://textures/StudioUIEditor/icon_rotate5.png"]
       69 SETTABLE                         R5 R3 R4
       70 GETTABLEKS                       R4 R1 K16 ["NW"]
       72 LOADK                            R5 K24 ["rbxasset://textures/StudioUIEditor/icon_rotate6.png"]
       73 SETTABLE                         R5 R3 R4
       74 GETTABLEKS                       R4 R1 K17 ["N"]
       76 LOADK                            R5 K25 ["rbxasset://textures/StudioUIEditor/icon_rotate7.png"]
       77 SETTABLE                         R5 R3 R4
       78 GETTABLEKS                       R4 R1 K18 ["NE"]
       80 LOADK                            R5 K26 ["rbxasset://textures/StudioUIEditor/icon_rotate8.png"]
       81 SETTABLE                         R5 R3 R4
       82 NEWTABLE                         R4 4 0
       84 LOADN                            R5 0
       85 SETTABLEKS                       R5 R4 K27 ["DEFAULT"]
       87 LOADN                            R5 1
       88 SETTABLEKS                       R5 R4 K28 ["MOVE"]
       90 LOADN                            R5 2
       91 SETTABLEKS                       R5 R4 K29 ["RESIZE"]
       93 LOADN                            R5 3
       94 SETTABLEKS                       R5 R4 K30 ["ROTATE"]
       96 LOADNIL                          R5
       97 GETTABLEKS                       R6 R4 K27 ["DEFAULT"]
       99 GETTABLEKS                       R7 R1 K31 ["NOT_SET"]
      101 LOADNIL                          R8
      102 DUPCLOSURE                       R9 K32 [PROTO_0]
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R9 R0 K33 ["calcMouseIconDirection"]
      106 NEWCLOSURE                       R9 P1
      107 CAPTURE                          REF R6
      108 CAPTURE                          VAL R4
      109 CAPTURE                          REF R8
      110 CAPTURE                          REF R5
      111 CAPTURE                          REF R7
      112 CAPTURE                          VAL R1
      113 SETTABLEKS                       R9 R0 K34 ["setToDefaultIcon"]
      115 NEWCLOSURE                       R9 P2
      116 CAPTURE                          REF R6
      117 CAPTURE                          VAL R4
      118 CAPTURE                          REF R8
      119 CAPTURE                          REF R7
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R9 R0 K35 ["setToMoveIcon"]
      123 NEWCLOSURE                       R9 P3
      124 CAPTURE                          VAL R1
      125 CAPTURE                          REF R6
      126 CAPTURE                          VAL R4
      127 CAPTURE                          REF R7
      128 CAPTURE                          REF R8
      129 CAPTURE                          VAL R2
      130 SETTABLEKS                       R9 R0 K36 ["setToResizeIcon"]
      132 NEWCLOSURE                       R9 P4
      133 CAPTURE                          VAL R1
      134 CAPTURE                          REF R6
      135 CAPTURE                          VAL R4
      136 CAPTURE                          REF R7
      137 CAPTURE                          REF R8
      138 CAPTURE                          VAL R3
      139 SETTABLEKS                       R9 R0 K37 ["setToRotateIcon"]
      141 NEWCLOSURE                       R9 P5
      142 CAPTURE                          VAL R0
      143 CAPTURE                          REF R8
      144 CAPTURE                          REF R5
      145 SETTABLEKS                       R9 R0 K38 ["Off"]
      147 NEWCLOSURE                       R9 P6
      148 CAPTURE                          REF R8
      149 CAPTURE                          REF R5
      150 CAPTURE                          REF R6
      151 CAPTURE                          VAL R4
      152 CAPTURE                          REF R7
      153 CAPTURE                          VAL R1
      154 SETTABLEKS                       R9 R0 K39 ["On"]
      156 CLOSEUPVALS                      R5
      157 RETURN                           R0 1
