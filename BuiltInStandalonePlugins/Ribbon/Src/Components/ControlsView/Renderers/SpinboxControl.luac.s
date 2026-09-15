PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Select"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Setting"]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R2 R1 K1 ["Setting"]
        4 JUMPIF                           R2 ; [+11]
        5 GETTABLEKS                       R2 R0 K2 ["Warn"]
        7 LOADK                            R3 K3 ["Missing Setting field for Spinbox with id %*"]
        8 GETTABLEKS                       R5 R1 K4 ["Id"]
       10 NAMECALL                         R3 R3 K5 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["toString"]
       19 GETTABLEKS                       R3 R1 K1 ["Setting"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R4 R0 K7 ["Items"]
       24 GETTABLEKS                       R4 R4 K8 ["Settings"]
       26 GETTABLE                         R3 R4 R2
       27 JUMPIF                           R3 ; [+12]
       28 GETTABLEKS                       R4 R0 K2 ["Warn"]
       30 LOADK                            R5 K9 ["Missing Setting %* for Spinbox with id %*"]
       31 MOVE                             R7 R2
       32 GETTABLEKS                       R8 R1 K4 ["Id"]
       34 NAMECALL                         R5 R5 K5 ["format"]
       36 CALL                             R5 3 1
       37 CALL                             R4 1 0
       38 LOADNIL                          R4
       39 RETURN                           R4 1
       40 GETTABLEKS                       R5 R3 K10 ["Value"]
       42 FASTCALL1                        TYPEOF R5 ; [+2]
       43 GETIMPORT                        R4 K12 [typeof]
       45 CALL                             R4 1 1
       46 JUMPIFEQKS                       R4 K13 ["number"] ; [+15]
       48 GETTABLEKS                       R4 R0 K2 ["Warn"]
       50 LOADK                            R5 K14 ["Setting %* has an invalid value %* for Spinbox with id %*"]
       51 MOVE                             R7 R2
       52 GETTABLEKS                       R8 R3 K10 ["Value"]
       54 GETTABLEKS                       R9 R1 K4 ["Id"]
       56 NAMECALL                         R5 R5 K5 ["format"]
       58 CALL                             R5 4 1
       59 CALL                             R4 1 0
       60 LOADNIL                          R4
       61 RETURN                           R4 1
       62 GETTABLEKS                       R4 R3 K15 ["Range"]
       64 JUMPIF                           R4 ; [+12]
       65 GETTABLEKS                       R5 R0 K2 ["Warn"]
       67 LOADK                            R6 K16 ["Setting %* has an invalid Range field for Spinbox with id %*"]
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R9 R1 K4 ["Id"]
       71 NAMECALL                         R6 R6 K5 ["format"]
       73 CALL                             R6 3 1
       74 CALL                             R5 1 0
       75 LOADNIL                          R5
       76 RETURN                           R5 1
       77 GETTABLEKS                       R6 R3 K17 ["Visible"]
       79 JUMPIFEQKNIL                     R6 ; [+5]
       81 GETTABLEKS                       R6 R3 K17 ["Visible"]
       83 JUMPIFNOTEQKB                    R6 TRUE ; [+3]
       85 LOADB                            R5 1
       86 JUMP                             ; [+1]
       87 LOADB                            R5 0
       88 GETTABLEKS                       R7 R3 K18 ["Enabled"]
       90 JUMPIFEQKNIL                     R7 ; [+5]
       92 GETTABLEKS                       R7 R3 K18 ["Enabled"]
       94 JUMPIFNOTEQKB                    R7 TRUE ; [+3]
       96 LOADB                            R6 1
       97 JUMP                             ; [+1]
       98 LOADB                            R6 0
       99 GETUPVAL                         R7 1
      100 GETUPVAL                         R8 2
      101 DUPTABLE                         R9 K30 [{"Uri", "Disabled", "Visible", "Increment", "LayoutOrder", "Maximum", "Minimum", "Precision", "Icon", "FormatStringKey", "Value", "IsShort", "OnValueChanged"}]
      102 GETUPVAL                         R10 0
      103 GETTABLEKS                       R10 R10 K31 ["child"]
      105 GETTABLEKS                       R11 R0 K32 ["WidgetUri"]
      107 GETTABLEKS                       R12 R1 K4 ["Id"]
      109 CALL                             R10 2 1
      110 SETTABLEKS                       R10 R9 K19 ["Uri"]
      112 NOT                              R10 R6
      113 SETTABLEKS                       R10 R9 K20 ["Disabled"]
      115 SETTABLEKS                       R5 R9 K17 ["Visible"]
      117 GETTABLEKS                       R10 R4 K21 ["Increment"]
      119 SETTABLEKS                       R10 R9 K21 ["Increment"]
      121 GETTABLEKS                       R10 R0 K22 ["LayoutOrder"]
      123 SETTABLEKS                       R10 R9 K22 ["LayoutOrder"]
      125 GETTABLEKS                       R11 R4 K23 ["Maximum"]
      127 ORK                              R10 R11 K33 [∞]
      128 SETTABLEKS                       R10 R9 K23 ["Maximum"]
      130 GETTABLEKS                       R11 R4 K24 ["Minimum"]
      132 ORK                              R10 R11 K34 [0]
      133 SETTABLEKS                       R10 R9 K24 ["Minimum"]
      135 GETTABLEKS                       R10 R4 K25 ["Precision"]
      137 SETTABLEKS                       R10 R9 K25 ["Precision"]
      139 GETTABLEKS                       R10 R1 K26 ["Icon"]
      141 JUMPIF                           R10 ; [+2]
      142 GETTABLEKS                       R10 R3 K26 ["Icon"]
      144 SETTABLEKS                       R10 R9 K26 ["Icon"]
      146 GETTABLEKS                       R10 R4 K27 ["FormatStringKey"]
      148 SETTABLEKS                       R10 R9 K27 ["FormatStringKey"]
      150 GETTABLEKS                       R10 R3 K10 ["Value"]
      152 SETTABLEKS                       R10 R9 K10 ["Value"]
      154 GETTABLEKS                       R10 R1 K28 ["IsShort"]
      156 SETTABLEKS                       R10 R9 K28 ["IsShort"]
      158 NEWCLOSURE                       R10 P0
      159 CAPTURE                          VAL R0
      160 CAPTURE                          VAL R1
      161 SETTABLEKS                       R10 R9 K29 ["OnValueChanged"]
      163 CALL                             R7 2 -1
      164 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["StudioUri"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Components"]
       33 GETTABLEKS                       R6 R6 K14 ["RibbonSpinbox"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Components"]
       42 GETTABLEKS                       R7 R7 K15 ["ControlsView"]
       44 GETTABLEKS                       R7 R7 K16 ["ControlProps"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K12 ["Src"]
       51 GETTABLEKS                       R8 R8 K17 ["Types"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K18 [PROTO_1]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 RETURN                           R8 1
